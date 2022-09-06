import React from "react";

import { FcCheckmark} from "react-icons/fc";

const logo = require('../images/img3.png')




function Appointment (){
    return (
        <div className="appointment">
           <div className="header">
             <img src={logo} alt='wewe' className="age" /> 
             <h3>APPOINTMENTS</h3>
           </div>
           <div className="appoints">
               <div className="notify">
                   <span>Title  <em>Time</em></span>
                   <p><FcCheckmark/></p>
               </div>

               <div className="notify">
                   <span>Title  <em>Time</em></span>
                   <p><FcCheckmark/></p>
               </div>

               <div className="notify">
                   <span>Title  <em>Time</em></span>
                   <p><FcCheckmark/></p>
               </div>
               
           </div>


        </div>
      
    );
}
export default Appointment;