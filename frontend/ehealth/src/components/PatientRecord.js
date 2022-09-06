import React from "react";

import { FcSearch} from "react-icons/fc";

const logo = require('../images/img4.png')




function PatientRecord (){
    return (
        <div className="patientrecord">

            <div className="header">
             <img src={logo} alt='wewe' className="age" /> 
             <h3>PATIENT RECORDS</h3>
           </div>

           <form>
               <input type="text" placeholder="Search.." name="search"/>
               <button type="submit"><FcSearch/></button>
            </form>
            <div className="records">
                <span>meee</span>
                <span>meee</span>
                <span>meee</span>
            </div>
        </div>
      
    );
}
export default PatientRecord;