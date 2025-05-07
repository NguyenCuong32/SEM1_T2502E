import Product from "./Product"
import products from "../data/Products.json"
function ProductList(){
    return(
        <div className="product-list">
            {products.map(product => (
                <Product key={product.id} 
                name ={product.name}
                qty ={product.qty}
                price ={product.price}
                description ={product.description}
                 />
            ))}
        </div>
    )
}
export default ProductList