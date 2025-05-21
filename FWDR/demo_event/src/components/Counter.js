import { useState } from "react";
import "./Counter.css"

function Counter()
{
    const [count,setCount] = useState(1);
    return(
        <div id="counter">
            <button onClick={()=>setCount(count +1)}>+</button>
            <span>{count}</span>
            <button onClick={
                count>1? ()=>setCount(count-1): null
            }>-</button>
        </div>
    )
}
export default Counter;