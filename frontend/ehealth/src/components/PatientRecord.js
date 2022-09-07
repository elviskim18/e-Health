import React,{useState} from "react";
// import { FcSearch} from "react-icons/fc";
import Patient from "./Patient";

const logo = require('../images/img4.png')




function PatientRecord ({patients, getSearch}){
    const [searchvalue, setsearchvalue] = useState("")


    function handlesearch(e) {
        e.preventDefault()
        setsearchvalue(e.target.value)
        const search = e.target.value
        getSearch(search)
    }


    return (
        <div className="patientrecord">

            <div className="header">
             <img src={logo} alt='wewe' className="age" /> 
             <h3>PATIENT RECORDS</h3>
           </div>

           <form>
               <input type="text" placeholder="Search.." name="search" onChange={handlesearch} value={searchvalue}/>
               {/* <button type="submit"><FcSearch/></button> */}
            </form>
            

            <ul className="records">
                {patients?.map((patient)=> (
                    <Patient  key={patient.id} patient={patient} />
                    

                ))}
            </ul>
           
            
        </div>
      
    );
}
export default PatientRecord;