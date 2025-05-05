import Product from "./Product";
function ProductList() {
  return (
    <div>
      <h1>Product List</h1>
      <Product title1={"Iphone Pro Max"} price={1229.99} qty={10} description={"This is Iphone Pro Max"}/>
      <Product title={"Iphone Pro"} price={999.99} qty={5} description={"This is Iphone Pro"}/>
      <Product title={"Iphone 13"} price={799.99} qty={8} description={"This is Iphone 13"}/>
    </div>
  );
}
export default ProductList;