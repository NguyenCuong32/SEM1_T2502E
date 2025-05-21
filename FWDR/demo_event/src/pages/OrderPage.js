import Order from "../components/Order";
import products from "../data/Products.json";
import "./OrderPage.css";
function OrderPage() {
  return (
    <div>
      <h1>Order Page</h1>
      <p>This is the order page.</p>
      {products.map((product) => (
        <Order
          key={product.id}
          name={product.name}
          description={product.description}
          image={product.image}
        />
      ))}
    </div>
  );
}
export default OrderPage;