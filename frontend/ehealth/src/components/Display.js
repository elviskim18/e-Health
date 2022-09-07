import React, {useState, useEffect} from "react";
import { Routes, Route } from "react-router-dom";
import Appointment from "./Appointment";
import Dashboard from "./dashboard";
import Newpatient from "./Newpatient";
import PatientRecord from "./PatientRecord";
import axios from "axios";





function Display (){
    const [patients, setPatients] = useState([])
    const [notifications, setNotifications] = useState([])
    const url = "http://localhost:8004/patients";


    //get patient records
    function getPatients (){
        axios.get(url).then((resp) =>{
            const pat = resp.data
            setPatients(pat)
        })
    }


    //get notifications
    function getNotifications(){
        axios.get(url).then((resp) =>{
            const noti = resp.data
            setNotifications(noti)
        })
    }

    //search patient record
    function getSearch (str){
        if (str === ""){
            getPatients()
        }else{
            const newP = patients.filter((pat) =>  pat.name.toLowerCase().includes(str.toLowerCase()))
            setPatients(newP)
        }
    }

    //add new patient
    function addPatient(newUser){
        axios.post(url,newUser)
        setPatients([...patients, newUser])
    }

    //delete notification
    function deleteNotification (id){
        let update = patients.filter((pat) => pat.id !== id)
        setNotifications(update);
        axios.delete(`${url}/${id}`)
        alert("Notification deleted")
    }
   

    useEffect(() =>{
        getPatients()
        getNotifications()

    },[])




    return (
        <div className="Display">
            <Routes>
                <Route  path="/patientrecords" element={<PatientRecord  patients={patients} getSearch={getSearch} />}/>
            
            
                <Route  path="/newpatient" element={<Newpatient addPatient={addPatient} />}/>
            
            
                <Route  path="/dashboard" element={<Dashboard  notifications={notifications} deleteNotification={deleteNotification}/>}/>

                <Route  path="/appointments" element={<Appointment/>}/>
            </Routes>
        </div>
      
    );
}
export default Display;