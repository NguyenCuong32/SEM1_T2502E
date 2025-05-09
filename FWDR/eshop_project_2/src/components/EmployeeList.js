import Employee from "./Employee";
import employees from "../data/Employee.json";
import axios from "axios"
import { useEffect, useState } from "react"
function EmployeeList() {

    return (
        <div>
            {employees.map(employee => (
                <Employee key={employee.id}
                 name={employee.name} 
                 age={employee.age} 
                 position={employee.position} 
                 department={employee.department} 
                 salary={employee.salary} 
                 contact={employee.contact} />
            ))}
        </div>
    );
}
export default EmployeeList;