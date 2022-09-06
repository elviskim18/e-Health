import { useNavigate } from 'react-router-dom';
function Signin (){
    const navigate = useNavigate()
    return (
        <>
         <h2>DOCTOR LOGIN</h2>
         <form onSubmit={()=> navigate('/home')}>
            <label for="username">Username:</label>
            <input type="email" id="email" name="email"/>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" />
            <input className="submit" type="submit" value="LOGIN" />
        </form> 
        <h4>OR</h4>
        <p onClick={()=>navigate('signup')}>Register</p>
        </>
       
      
      
    )
}

export default Signin