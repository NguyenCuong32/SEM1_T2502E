import EmployeeList from "../components/EmployeeList";
import 'bootstrap/dist/css/bootstrap.min.css';
function EmployeePage() {
  return (
    <div className="row">
      <div className="col-md-6">
        <h2>Employee List</h2>
        <EmployeeList />
      </div>
    </div>
  );
}
export default EmployeePage;
