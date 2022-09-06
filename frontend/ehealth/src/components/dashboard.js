import React from "react";
// import {NavLink } from "react-router-dom";
import { BsBell} from "react-icons/bs";
import { RiDeleteBin5Line} from "react-icons/ri";

const logo = require('../images/img2.png')


function Dashboard (){
    return (
        <div className="dashboard">
            <div className="dleft">
                <div className="hcontainer">
                    <div className="circle"></div>
                    <h4>HEY, JOSH</h4>
                   
                    <div className="button">
                        <button>LOGOUT</button>
                    </div>
                </div>
                <h3>DASHBOARD</h3>
                <div className="stats">
                    <div className="stat1">
                        <h4>DOCTORS IN</h4>
                        <h4>number</h4>
                    </div>
                    <div className="stat2">
                        <h4>NURSES IN</h4>
                        <h4>number</h4>
                    </div>
                    <div className="stat3">
                        <h4>APPOINTMENTS</h4>
                        <h4>number</h4>
                    </div>
                    
                </div>
                <div className="notifications">
                    <h4><span><BsBell/></span> NOTIFICATIONS</h4>
                    <div className="notes">
                        <span>NOTE 1 <em><RiDeleteBin5Line/></em></span>
                        <span>NOTE 1 <em><RiDeleteBin5Line/></em></span>
                        <span>NOTE 1 <em><RiDeleteBin5Line/></em></span>
                        <span>NOTE 1 <em><RiDeleteBin5Line/></em></span>
                    </div>

                </div>
            </div>
            <div className="dright">
                <img src={logo} alt='wewe' className="calimage"/>
            </div>
        </div>
      
    );
}
export default Dashboard;