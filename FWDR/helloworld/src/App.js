import logo from './logo.svg';
import './App.css';
import Product from './components/Product';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <h3>Hello world</h3>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
      <main>
      <Product />
      <Product />
      <Product />
      <Product />
      </main>
    </div>
  );
}

export default App;
