import './Product.css';
function Product(props){
    return (
        <div className="product">
            <h1>{props.title}</h1>
            <p>{props.description}</p>
            <p>Price: <b>{props.price}</b></p>
            <p>Available stock: {props.qty}</p>
            <p>Product features and specifications can be listed here.</p>
            <p>Customer reviews and ratings can be displayed here.</p>
            <button>Add to Cart</button>
            <button>Buy Now</button>
            <button>Wishlist</button>
            <button>Compare</button>
            <button>Share</button>
        </div>
    )
}
export default Product;