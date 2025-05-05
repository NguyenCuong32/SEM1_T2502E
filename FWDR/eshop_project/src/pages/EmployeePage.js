import EmployeeList from "../components/EmployeeList";
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
