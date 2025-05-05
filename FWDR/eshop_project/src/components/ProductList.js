// Component Product.js
import Product from "./Product";
// Dữ liệu về sản phẩm trong file JSON (Products.json)
// products là biến chứa dữ liệu của file Products.json
import products from "../data/Products.json";
function ProductList() {
  return (
    <div >
      {
        // Duyệt từng sản phẩm trong mảng products
        // Mỗi phần tử được lưu vào biến product
        // Gán từng giá trị của product vào cho các prop của component Product
        products.map((product)=>{
        return(
          <Product
            key={product.id}
            title={product.title}
            price={product.price}
            qty={product.qty}
            description={product.description}
          />
        );
      })}
      {/* 
      Kết quả là trang web hiển thị dữ liệu KHÔNG phụ thuộc vào HTML tĩnh nữa.
      Kết quả là trang web hiển thị dữ liệu theo danh sách sản phẩm trong file Products.json
       */}
    </div>
  );
}
export default ProductList;