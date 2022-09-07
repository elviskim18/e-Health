import React, {useState, useEffect} from "react";
import { Routes, Route } from "react-router-dom";
import Appointment from "./Appointment";
import Dashboard from "./dashboard";
import Newpatient from "./Newpatient";
import PatientRecord from "./PatientRecord";
import axios from "axios";





function Display (){
    const [patients, setPatients] = useState([])
    const url = "http://localhost:8004/patients";


    //get patient records
    function getPatients (){
        axios.get(url).then((resp) =>{
            const pat = resp.data
            setPatients(pat)
            // console.log(pat) //view my patients
        })
    }

    //searc patient record
    function getSearch (str){
        if (str === ""){
            getPatients()
        }else{
            const newP = patients.filter((pat) =>  pat.name.toLowerCase().includes(str.toLowerCase()))
            setPatients(newP)
        }
    }
   

    useEffect(() =>{
        getPatients()

    },[])




    return (
        <div className="Display">
            <Routes>
                <Route  path="/patientrecords" element={<PatientRecord  patients={patients} getSearch={getSearch} />}/>
            
            
                <Route  path="/newpatient" element={<Newpatient/>}/>
            
            
                <Route  path="/dashboard" element={<Dashboard/>}/>

                <Route  path="/appointments" element={<Appointment/>}/>
            </Routes>
        </div>
      
    );
}
export default Display;