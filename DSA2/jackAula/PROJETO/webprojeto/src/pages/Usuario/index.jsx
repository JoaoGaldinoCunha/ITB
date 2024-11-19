import './usuario.css';
import { useState } from "react";
import api from "../../service/api";

const Usuario = () => {
  const [nome,setNome]=useState('')
  const [email,setEmail]=useState('')
  const [senha,setSenha]=useState('')

const HandleNome = (e)=>{
  setNome(e.target.value)
}
const HandleEmail = (e) =>{
  setEmail(e.target.value)
}
const HandleSenha = (e)=>{
  setSenha(e.target.value)
}
const handleSubmit = async ()=>{
try{
const reponse = await api.post('Jack/InserirUsuarioFieb',{nome: nome,email: email,senha: senha,serie: null})
console.log(reponse.data)

} catch(error){
 console.log(error)
} 

}

  return (
    <div className="app-container">
      <div className="form-group">
        <label>Nome</label>
        <input type="text" placeholder="Seu Nome"   onChange={HandleNome} /> 
      </div>

      <div className="form-group">
        <label>E-mail</label>
        <input type="email" placeholder="Seu Email"    onChange={HandleEmail} /> 
      </div>

      <div className="form-group">
        <label>Senha</label>
        <input type="password" placeholder="Sua Senha"  onChange={HandleSenha} /> 
      </div>

      <div className="form-group">
            
            <button onClick={handleSubmit}>Criar Conta</button>
      </div>

    </div>
  )

}


export default Usuario;