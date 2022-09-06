

import { useNavigate } from 'react-router-dom';








function Signup() {
    const navigate = useNavigate()
  return (
    <>
         <h2>DOCTOR REGISTER</h2>
         <form onSubmit={()=> navigate('/login')}>
            <label for="username">Username:</label>
            <input type="email" id="email" name="email"/>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" />
            <input className="submit" type="submit" value="CREATE ACCOUNT" />
        </form> 
        <h4>OR</h4>
        <p onClick={()=>navigate('/login')}>lOGIN</p>
        </>
  );
}

export default Signup;
