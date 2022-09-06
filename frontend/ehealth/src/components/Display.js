import React from "react";
import { Routes, Route } from "react-router-dom";
import Appointment from "./Appointment";
import Dashboard from "./dashboard";
import Newpatient from "./Newpatient";
import PatientRecord from "./PatientRecord";




function Display (){
    return (
        <div className="Display">
            <Routes>
                <Route  path="/patientrecords" element={<PatientRecord/>}/>
            
            
                <Route  path="/newpatient" element={<Newpatient/>}/>
            
            
                <Route  path="/dashboard" element={<Dashboard/>}/>

                <Route  path="/appointments" element={<Appointment/>}/>
            </Routes>
        </div>
      
    );
}
export default Display;