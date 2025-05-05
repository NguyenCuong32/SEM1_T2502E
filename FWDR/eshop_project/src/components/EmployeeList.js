import Employee from "./Employee";
import employees from "../data/Employee.json";
// Dữ liệu về nhân viên trong file JSON (employees.json)
function EmployeeList() {
  return (
    <div>
      {employees.map((employee) => {
        return (
          <Employee
            key={employee.id}
            name={employee.name}
            age={employee.age}
            position={employee.position}
            department={employee.department}
            salary={employee.salary}
            contact={employee.contact}
          />
        );
      })}
    </div>
  );
}
export default EmployeeList;
