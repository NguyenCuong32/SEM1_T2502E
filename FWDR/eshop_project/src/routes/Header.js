import Container from "react-bootstrap/Container";
import { NavLink } from "react-router-dom";
import Nav from "react-bootstrap/Nav";
import Navbar from "react-bootstrap/Navbar";
function Header(){
    return (
        <Navbar expand="lg" className=" bg-dark">
        <Container>
          <Navbar.Brand><b><span className="text-light fs-1">Nokia</span></b></Navbar.Brand>
          <Navbar.Toggle aria-controls="basic-navbar-nav" />
          <Navbar.Collapse id="basic-navbar-nav">
            <Nav className="me-auto">
              <NavLink to="/home" className="text-light fw-bold mx-3">
                Home
              </NavLink>
              <NavLink to="/product" className="text-light fw-bold mx-3">
                Products
              </NavLink>
              <NavLink to="/employee" className="text-light fw-bold mx-3">
                Employees
              </NavLink>
              <NavLink to="/aboutus" className="text-light fw-bold mx-3">
                About Us
              </NavLink>
            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>
    )
}
export default Header;