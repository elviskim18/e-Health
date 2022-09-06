import React from "react";

// import { FaHandHoldingMedical} from "react-icons/fa";

const logo = require('../images/img5.png')




function Newpatient (){
    return (
        <div className="newrecord">
            <div className="header">
                <img src={logo} alt='wewe' className="age" /> 
                <h3>ENROLL NEW PATIENT</h3>
            </div>
            <form>
                <input type="text" placeholder="Full Names" name="name" />
                <input type="text" placeholder="Telephone Number" name="number" />
                <input type="date"  name="birthday" placeholder="DOB"/>
                <input type="text" placeholder="Symptoms" name="syptoms" className="large"/>
                <input type="text" placeholder="Diagnosis" name="diagnosis" className="large"/>
                <input type="submit" value="ENROLL" className="submit"/>
            </form>
        </div>
        
      
    );
}
export default Newpatient;