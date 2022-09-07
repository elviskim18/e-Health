import React from "react";




function Patient ({patient}) {
    return ( 
        // <Link to={`/movies/${movieID}`}>{movies[movieID].title}</Link>
        
        <li key={patient.id}>
           {patient.name}
        </li>
    )
  

}

export default Patient;