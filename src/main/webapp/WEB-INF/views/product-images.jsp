<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<form action="uploadfile" method="POST"  enctype="multipart/form-data">
<input type="hidden" name="productid" value="<c:out value='${productid}'/>">
    <select id="myselect" onchange="reloadpage(this.value)">
    <c:forEach items="${products}" var="product">
        <option value="<c:out value='${product.id}'/>"><c:out value="${product.title}"/></option>
        </c:forEach>
        </select>
        <input type="file" name="file"/><br/>
        <input type="submit" value="save"/>
</form>

<table>
<c:forEach items="${productimages}"  var="productimage">
<tr>
<td><c:out value="${productimage.image}"/></td>
<td><a href='deleteproductimage?id=<c:out value="${productimage.id}"/>&filename=<c:out value="${productimage.image}"/>'>delete</a></td>
</tr>
</c:forEach>
</table>

<script language="javascript">
function reloadpage(productId){
window.location="product-images?productid="+productId;
}
</script>