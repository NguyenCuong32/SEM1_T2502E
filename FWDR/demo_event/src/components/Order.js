import Counter from "./Counter";
import "./Order.css";
function Order(props) {
  return (
    <div>
      <h1>{props.name}</h1>
      <p>{props.description}</p>
      <img src={props.image} style={{width: "120px", height: "120px"}} alt="Order" />
      <Counter />
      <button id="add-to-cart">Add to Cart</button>
      <button id="checkout">Checkout</button>
    </div>
  );
}
export default Order;
