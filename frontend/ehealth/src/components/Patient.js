import React from "react";




function Patient ({patient,setdata}) {
    function handle (){
        // setvisibility((visibility) => !visibility)
        setdata(patient)
        console.log(patient)
        
    }
    return ( 
       
        <li key={patient.id} onClick={handle}>
           {patient.name}
        </li>
    )
  

}

export default Patient;