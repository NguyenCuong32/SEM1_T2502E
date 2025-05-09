import './Header.css';
function Header(){
    return(
        <header>
            <nav className="navbar">
                <ul className="nav-links" style={{ listStyleType: 'none', display: 'flex', gap: '20px' }}>
                    <li><a href="/">Home</a></li>
                    <li><a href="/products">Products</a></li>
                    <li><a href="/employee">Employee</a></li>
                </ul>
            </nav>
        </header>
    )
}
export default Header