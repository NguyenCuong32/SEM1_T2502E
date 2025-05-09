import Employee from "./Employee";
// import employees from "../data/Employee.json";
import axios from "axios"
import { useEffect, useState } from "react"
function EmployeeList() {

    const [employees,setEmployees] = useState([]);
    const [loading,setLoading] = useState(true);
    const [error,setError] = useState(null);

    useEffect(()=>{
        axios.get("https://650d7ae9a8b42265ec2c4713.mockapi.io/api/demo/employee")
        .then((response)=>{
            setEmployees(response.data);// Kết quả trả vể là một mảng employee. biến employees sẽ có giá trị là mảng employee
            setLoading(false);// Biến loading có giá trị là false
        })
        .catch((error)=>{
            setError(error); // Biến error là thông báo về lỗi nếu có.
            setLoading(false);// Biến loading có giá trị là false
        })
    })
    if(loading===true){
        return <div>Loading...</div>
    }
    if(error){
        return <div>Error: {error.message}</div>
    }
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