import "./App.css";
import Header from "./routes/Header";
import {BrowserRouter as Router, Routes,Route} from "react-router-dom";
import EmployeePage from "./pages/EmployeePage";
import ProductPage from "./pages/ProductPage";
function App() {
  return (
   <Router>
    <Header></Header>
      <Routes>
        <Route path='/employee' element={<EmployeePage></EmployeePage>}></Route>
        <Route path='/product' element={<ProductPage></ProductPage>}></Route>
      </Routes>
    </Router>
  );
}

export default App;
