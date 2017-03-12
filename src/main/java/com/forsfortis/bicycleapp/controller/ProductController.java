package com.forsfortis.bicycleapp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.hibernate.mapping.Collection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.forsfortis.bicycleapp.services.ProductServices;
import com.forsfortis.bicycleapp.vo.BillingDetailsVo;
import com.forsfortis.bicycleapp.vo.Cart;
import com.forsfortis.bicycleapp.vo.ProductBrandVo;
import com.forsfortis.bicycleapp.vo.ProductCategoryVo;
import com.forsfortis.bicycleapp.vo.ProductSizeVo;
import com.forsfortis.bicycleapp.vo.ProductVo;
import com.forsfortis.bicycleapp.vo.ShopingCartVo;
import com.forsfortis.bicycleapp.vo.UserVO;

@Controller
public class ProductController {
	private static final String SHOPPING_CART = "cart";
	private static final String SHOPPING_CART_FORM = "cartform";
	@Autowired
	ProductServices productService;
	@RequestMapping("/shop")
	public ModelAndView shop(@RequestParam(value="start",required=false) Integer start,@RequestParam(value="limit",required=false) Integer limit,@RequestParam(value="catid",required=false) Integer categoryId,HttpSession httpSession){
		//fetch all categories
		final List<ProductCategoryVo> productcategories = productService.getProductcategories();
		//TODO fetch all sizes
		final List<ProductSizeVo> productSize = productService.getProductSize();
		//TODO fetch all brands
		final List<ProductBrandVo> productBrand = productService.getProductBrand();
		final List<ProductVo> featuredProducts = productService.getFeaturedProducts();
		if(limit==null || limit==0){
			limit=12;
		}
		if(start==null){
			start=0;
		}
		final List<ProductVo> products = productService.getProducts(start, limit,categoryId);
		final Object cartList = httpSession.getAttribute(SHOPPING_CART);
		Map<Integer,ShopingCartVo> cartValues=null;
		int subtotal=0;
		if(cartList!=null){
			cartValues=(Map<Integer,ShopingCartVo>)cartList;
			for (ShopingCartVo cartVo : cartValues.values()) {
				subtotal+=cartVo.getQuantity()*cartVo.getSellingPrice();
			}
			
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject(SHOPPING_CART, cartValues!=null ? cartValues.values():null);
		mv.addObject("productcategory", productcategories);
		mv.addObject("subtotal", subtotal);
		mv.addObject("productsizes", productSize);
		mv.addObject("productbrands", productBrand);
		mv.addObject("product",products);
		mv.addObject("featuredproducts",featuredProducts);
		/*final UserVO user = (UserVO)httpSession.getAttribute("user");
		mv.addObject("user",user);*/
		mv.setViewName("shop");
		return mv;
	}
	
	@RequestMapping("/shop-cart")
	public ModelAndView shopCart(HttpSession httpSession){
		final Object cartList = httpSession.getAttribute(SHOPPING_CART);
		Map<Integer,ShopingCartVo> cartValues=null;
		int subtotal=0;
		if(cartList!=null){
			cartValues=(Map<Integer,ShopingCartVo>)cartList;
			for (ShopingCartVo cartVo : cartValues.values()) {
				subtotal+=cartVo.getQuantity()*cartVo.getSellingPrice();
			}
			
		}
		Cart cart=new Cart();
		if(cartValues!=null){
			cart.setCartList(new ArrayList<ShopingCartVo>(cartValues.values()));
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("shop-cart");
		mv.addObject(SHOPPING_CART_FORM,cart);
		mv.addObject("subtotal", subtotal);
		
	return mv;	
	}
	
	@RequestMapping("/updatecart")
	public ModelAndView updateCart(@ModelAttribute(SHOPPING_CART_FORM) Cart cart,HttpSession httpSession){
		Object cartList = httpSession.getAttribute(SHOPPING_CART);
		if(cartList!=null){
			cartList=httpSession.getAttribute(SHOPPING_CART);
			
			final java.util.Collection<ShopingCartVo> cartList2 = cart.getCartList();
			for (ShopingCartVo shopingCartVo : cartList2) {
				((Map<Integer,ShopingCartVo>)cartList).put(shopingCartVo.getProductId(),shopingCartVo);
			}
		}
		return new ModelAndView("redirect:/shop-cart");
	}
	
	@RequestMapping("/shop-product")
	public ModelAndView productDetails(@RequestParam("id") int productId){
		final ProductVo product = productService.getProduct(productId);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("single-product");
		mv.addObject("product", product);
		return mv;	
	}
	
	@RequestMapping("/addtocart")
	public ModelAndView addToCart(@RequestParam("id") int productId,@RequestParam("title") String title,@RequestParam("price") int price, HttpSession httpSession){
		Object cartList = httpSession.getAttribute(SHOPPING_CART);
		if(cartList==null){
			Map<Integer,ShopingCartVo> cart=new HashMap<Integer,ShopingCartVo>();
			httpSession.setAttribute(SHOPPING_CART,cart);
			cartList=httpSession.getAttribute(SHOPPING_CART);
		}
		ShopingCartVo vo=new ShopingCartVo(productId,price,title); 
		((Map<Integer,ShopingCartVo>)cartList).put(productId,vo);
		return new ModelAndView("redirect:/shop");
	}
	
	@RequestMapping("/removefromcart")
	public ModelAndView removeFromCart(@RequestParam("id") int productId, HttpSession httpSession){
		Object cartList = httpSession.getAttribute(SHOPPING_CART);
		if(cartList!=null){
			cartList=httpSession.getAttribute(SHOPPING_CART);
			((Map<Integer,ShopingCartVo>)cartList).remove(productId);
		}
		return new ModelAndView("redirect:/shop");
	}
	@RequestMapping("/shop-checkout")
	public ModelAndView shopCheckout(HttpSession httpSession){
		
		final Object cartList = httpSession.getAttribute(SHOPPING_CART);
		Map<Integer,ShopingCartVo> cartValues=null;
		int subtotal=0;
		if(cartList!=null){
			cartValues=(Map<Integer,ShopingCartVo>)cartList;
			for (ShopingCartVo cartVo : cartValues.values()) {
				subtotal+=cartVo.getQuantity()*cartVo.getSellingPrice();
			}
			
		}
		
		BillingDetailsVo user=new BillingDetailsVo();
		ModelAndView mv=new ModelAndView();
		mv.addObject("userDetailsForm", user);
		mv.addObject(SHOPPING_CART,cartValues!=null ? cartValues.values():null);
		mv.addObject("subtotal", subtotal);
		mv.setViewName("shop-checkout");
		return mv;
	}
}
