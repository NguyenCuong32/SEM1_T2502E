import ProductList from "../components/ProductList";
import 'bootstrap/dist/css/bootstrap.min.css';
function ProductPage() {
  return (
    <div className="row">
      <div className="col-md-6">
        <h2>Product List</h2>
        <ProductList />
      </div>
    </div>
  );
}
export default ProductPage;
