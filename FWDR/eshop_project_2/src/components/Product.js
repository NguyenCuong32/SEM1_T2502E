function Product(props) {
    return (<div>
         <div className="product">
            <h1>{props.title}</h1>
            <p>{props.description}</p>
            <p>Price: <b>{props.price}</b></p>
            <p>Available stock: {props.qty}</p>
            <p>Product features and specifications can be listed here.</p>
            <p>Customer reviews and ratings can be displayed here.</p>
            <button className='btn btn-primary' style={{ margin: '4px' }}>Add to Cart</button>
            <button className='btn btn-secondary'>Buy Now</button>
        </div>
    </div>);
}
export default Product;