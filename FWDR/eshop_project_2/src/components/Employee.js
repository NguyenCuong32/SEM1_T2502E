import './Employee.css';
function Employee(props) {
    return(
        <div>
            <div className="employee-card">
                <img src={props.image} alt={props.name} className="employee-image" />
                <p>Name: <span>{props.name}</span></p>
                <p>Age: <span>{props.age}</span></p>
                <p>Position: <span>{props.position}</span></p>
                <p>Department: <span>{props.department}</span></p>
                <p>Salary: <span>{props.salary}</span></p>
                <p>Contact: <span>{props.contact}</span></p>
            </div>
        </div>
    )
}
export default Employee;