
import './App.css';
import Header from './routes/Header';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import EmployeePage from './pages/EmployeePage';
import ProductPage from './pages/ProductPage';
function App() {
  return (
    <div className="App">
    <Router>
      <Header />
      <Routes>
        <Route path='/employee' element={<EmployeePage />} />
        <Route path='/products' element={<ProductPage />} />
      </Routes>
    </Router>
    </div>
  );
}

export default App;
