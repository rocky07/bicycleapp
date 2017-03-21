package com.forsfortis.bicycleapp.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.forsfortis.bicycleapp.services.ProductServices;
import com.forsfortis.bicycleapp.vo.BillingDetailsVo;
import com.forsfortis.bicycleapp.vo.Cart;
import com.forsfortis.bicycleapp.vo.ProductBrandVo;
import com.forsfortis.bicycleapp.vo.ProductCategoryVo;
import com.forsfortis.bicycleapp.vo.ProductImagesVo;
import com.forsfortis.bicycleapp.vo.ProductSizeVo;
import com.forsfortis.bicycleapp.vo.ProductVo;
import com.forsfortis.bicycleapp.vo.ShopingCartVo;

@Controller
public class ProductController {
	private static final String SHOPPING_CART = "cart";
	private static final String SHOPPING_CART_VALUES = "cartvalues";
	private static final String SHOPPING_CART_FORM = "cartform";
	private static final String CONFIG_FILE = "config.properties";
	@Autowired
	ProductServices productService;
	Properties configProp = new Properties();
	InputStream input = null;

	ProductController() {
		try {

			input = this.getClass().getClassLoader().getResourceAsStream(CONFIG_FILE);
			configProp.load(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void computeTotal(HttpSession httpSession) {
		final Object cartList = httpSession.getAttribute(SHOPPING_CART);
		Map<Integer, ShopingCartVo> cartValues = null;
		int subtotal = 0;
		if (cartList != null) {
			cartValues = (Map<Integer, ShopingCartVo>) cartList;
			for (ShopingCartVo cartVo : cartValues.values()) {
				subtotal += cartVo.getQuantity() * cartVo.getSellingPrice();
			}
		}
		cartValues = (Map<Integer, ShopingCartVo>) cartList;
		httpSession.setAttribute(SHOPPING_CART_VALUES, cartValues != null ? cartValues.values() : null);
		httpSession.setAttribute("sbt", subtotal);
	}

	@RequestMapping("uploadfile")
	public ModelAndView uploadFile(@RequestParam(value = "productid", required = false) Integer productid,
			@RequestParam("file") MultipartFile file) {
		String name = null;
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				name = file.getOriginalFilename();
				String ext = (name.split(".").length > 1) ? (name.split("."))[1] : "jpeg";
				final SecureRandom RANDOM = new SecureRandom();
				name = new BigInteger(72, RANDOM).toString(32) + "." + ext;

				// Creating the directory to store file
				String rootPath = configProp.getProperty("image.path");
				File dir = new File(rootPath);
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath() + File.separator + name);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				// TODO perform database upload operation here..
				productService.saveProductImage(productid, name);

				System.out.println("You successfully uploaded file=" + name);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("You failed to upload " + name + " because the file was empty.");
		}
		return new ModelAndView("redirect:/product-images");
	}

	@RequestMapping("deleteproductimage")
	public ModelAndView deleteFile(@RequestParam("filename") String fileName,@RequestParam("id") int productId) {

		try {
			String rootPath = configProp.getProperty("image.path");
			File file = new File(rootPath + File.separator + fileName);
			if (file.exists()) {

				if (file.delete()) {
					System.out.println(file.getName() + " is deleted!");
				} else {
					System.out.println("Delete operation is failed.");
				}
			}
			productService.deleteProductImage(productId);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:/product-images");

	}

	/**
	 * Upload multiple file using Spring Controller
	 */
	/*
	 * @RequestMapping(value = "/uploadMultipleFile", method =
	 * RequestMethod.POST) public Object fileUpload(@ResponseBody String
	 * uploadMultipleFileHandler(@RequestParam("name") String[] names,
	 * 
	 * @RequestParam("file") MultipartFile[] files) {
	 * 
	 * if (files.length != names.length) return "Mandatory information missing";
	 * 
	 * String message = ""; for (int i = 0; i < files.length; i++) {
	 * MultipartFile file = files[i]; String name = names[i]; try { byte[] bytes
	 * = file.getBytes();
	 * 
	 * // Creating the directory to store file String rootPath =
	 * System.getProperty("catalina.home"); File dir = new File(rootPath +
	 * File.separator + "tmpFiles"); if (!dir.exists()) dir.mkdirs();
	 * 
	 * // Create the file on server File serverFile = new
	 * File(dir.getAbsolutePath() + File.separator + name); BufferedOutputStream
	 * stream = new BufferedOutputStream( new FileOutputStream(serverFile));
	 * stream.write(bytes); stream.close();
	 * 
	 * logger.info("Server File Location=" + serverFile.getAbsolutePath());
	 * 
	 * message = message + "You successfully uploaded file=" + name; } catch
	 * (Exception e) { return "You failed to upload " + name + " => " +
	 * e.getMessage(); } } return message; }
	 */
	@RequestMapping("/product-images")
	public ModelAndView productImageUploads(@RequestParam(value = "productid", required = false) Integer productId) {
		int start = 0;
		int limit = 100;

		final List<ProductImagesVo> productImages = productService.getProductImages(productId);
		final List<ProductVo> products = productService.getProducts(start, limit, null);
		ModelAndView mv = new ModelAndView();
		mv.addObject("products", products);
		mv.addObject("productid", productId);
		mv.addObject("productimages", productImages);
		return mv;
	}

	@RequestMapping("/shop")
	public ModelAndView shop(@RequestParam(value = "start", required = false) Integer start,
			@RequestParam(value = "limit", required = false) Integer limit,
			@RequestParam(value = "catid", required = false) Integer categoryId, HttpSession httpSession) {
		// fetch all categories
		final List<ProductCategoryVo> productcategories = productService.getProductcategories();
		// TODO fetch all sizes
		final List<ProductSizeVo> productSize = productService.getProductSize();
		// TODO fetch all brands
		final List<ProductBrandVo> productBrand = productService.getProductBrand();
		final List<ProductVo> featuredProducts = productService.getFeaturedProducts();
		if (limit == null || limit == 0) {
			limit = 12;
		}
		if (start == null) {
			start = 0;
		}
		final List<ProductVo> products = productService.getProducts(start, limit, categoryId);
		
		/*
		 * final Object cartList = httpSession.getAttribute(SHOPPING_CART);
		 * Map<Integer,ShopingCartVo> cartValues=null;
		 */
		/*
		 * int subtotal=0; if(cartList!=null){
		 * cartValues=(Map<Integer,ShopingCartVo>)cartList; for (ShopingCartVo
		 * cartVo : cartValues.values()) {
		 * subtotal+=cartVo.getQuantity()*cartVo.getSellingPrice(); }
		 * 
		 * }
		 */

		ModelAndView mv = new ModelAndView();
		// mv.addObject(SHOPPING_CART, cartValues!=null ?
		// cartValues.values():null);
		mv.addObject("productcategory", productcategories);
		// mv.addObject("subtotal", subtotal);
		mv.addObject("productsizes", productSize);
		mv.addObject("productbrands", productBrand);
		mv.addObject("product", products);
		mv.addObject("featuredproducts", featuredProducts);
		/*
		 * final UserVO user = (UserVO)httpSession.getAttribute("user");
		 * mv.addObject("user",user);
		 */
		mv.setViewName("shop");
		return mv;
	}

	@RequestMapping("/shop-cart")
	public ModelAndView shopCart(HttpSession httpSession) {
		final Object cartList = httpSession.getAttribute(SHOPPING_CART);
		Map<Integer, ShopingCartVo> cartValues = null;
		// int subtotal=0;
		if (cartList != null) {
			cartValues = (Map<Integer, ShopingCartVo>) cartList;
			/*
			 * for (ShopingCartVo cartVo : cartValues.values()) {
			 * subtotal+=cartVo.getQuantity()*cartVo.getSellingPrice(); }
			 */

		}
		Cart cart = new Cart();
		if (cartValues != null) {
			cart.setCartList(new ArrayList<ShopingCartVo>(cartValues.values()));
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("shop-cart");
		mv.addObject(SHOPPING_CART_FORM, cart);
		// mv.addObject("subtotal", subtotal);

		return mv;
	}

	@RequestMapping("/updatecart")
	public ModelAndView updateCart(@ModelAttribute(SHOPPING_CART_FORM) Cart cart, HttpSession httpSession) {
		Object cartList = httpSession.getAttribute(SHOPPING_CART);
		if (cartList != null) {
			cartList = httpSession.getAttribute(SHOPPING_CART);

			final java.util.Collection<ShopingCartVo> cartList2 = cart.getCartList();
			for (ShopingCartVo shopingCartVo : cartList2) {
				((Map<Integer, ShopingCartVo>) cartList).put(shopingCartVo.getProductId(), shopingCartVo);
			}
		}
		computeTotal(httpSession);
		return new ModelAndView("redirect:/shop-cart");
	}

	@RequestMapping("/shop-product")
	public ModelAndView productDetails(@RequestParam("id") int productId) {
		final ProductVo product = productService.getProduct(productId);
		final List<ProductCategoryVo> productsByCategory = productService.getProductsByCategory();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("single-product");
		mv.addObject("product", product);
		mv.addObject("category", productsByCategory);
		return mv;
	}

	@RequestMapping("/addtocart")
	public ModelAndView addToCart(@RequestParam("id") int productId, @RequestParam("title") String title,
			@RequestParam("price") int price, HttpSession httpSession) {
		Object cartList = httpSession.getAttribute(SHOPPING_CART);
		if (cartList == null) {
			Map<Integer, ShopingCartVo> cart = new HashMap<Integer, ShopingCartVo>();
			httpSession.setAttribute(SHOPPING_CART, cart);
			cartList = httpSession.getAttribute(SHOPPING_CART);
		}
		ShopingCartVo vo = new ShopingCartVo(productId, price, title);
		((Map<Integer, ShopingCartVo>) cartList).put(productId, vo);
		computeTotal(httpSession);
		return new ModelAndView("redirect:/shop");
	}

	@RequestMapping("/removefromcart")
	public ModelAndView removeFromCart(@RequestParam("id") int productId, HttpSession httpSession) {
		Object cartList = httpSession.getAttribute(SHOPPING_CART);
		if (cartList != null) {
			cartList = httpSession.getAttribute(SHOPPING_CART);
			((Map<Integer, ShopingCartVo>) cartList).remove(productId);
		}
		computeTotal(httpSession);
		return new ModelAndView("redirect:/shop");
	}

	@RequestMapping("/shop-checkout")
	public ModelAndView shopCheckout(HttpSession httpSession) {

		final Object cartList = httpSession.getAttribute(SHOPPING_CART);
		Map<Integer, ShopingCartVo> cartValues = null;
		/*
		 * int subtotal=0; if(cartList!=null){
		 * cartValues=(Map<Integer,ShopingCartVo>)cartList; for (ShopingCartVo
		 * cartVo : cartValues.values()) {
		 * subtotal+=cartVo.getQuantity()*cartVo.getSellingPrice(); }
		 * 
		 * }
		 */

		BillingDetailsVo user = new BillingDetailsVo();
		ModelAndView mv = new ModelAndView();
		mv.addObject("userDetailsForm", user);
		/*
		 * mv.addObject(SHOPPING_CART,cartValues!=null ?
		 * cartValues.values():null); mv.addObject("subtotal", subtotal);
		 */
		mv.setViewName("shop-checkout");
		return mv;
	}
}
