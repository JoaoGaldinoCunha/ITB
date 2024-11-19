// npm install react-hook-form
import  {useForm} from "react-hook-form";
import { Link } from 'react-router-dom';
import './usuario.css';

import { useState } from "react";
import api from "../../services/api";

const Usuario = () => {

const[vnome, setNome] = useState('')
const[vdescricao, setDescricao] = useState('')
const[vpreco, setPreco] = useState('')


const handleSubmit = async () =>{
try{
    //const response = await api.post('Jack/InserirUsuarioFieb',{nome: nome, email: email, senha: senha, serie: null})
    const response = await api.post('/produtos',{nome: vnome, descricao:vdescricao , preco: vpreco})
    console.log(response.data)
  }catch (error){
console.log(error)
}
}

  return (
    <div className="app-container">
      <div className="form-group">
        <label>Nome</label>
        <input type="text" placeholder=" Informe seu Nome"  onChange={(e) => setNome(e.target.value)} /> 
      </div>

      <div className="form-group">
        <label>Descricao</label>
        <input type="text" placeholder="Sua descricao"  onChange={(e) => setDescricao(e.target.value)} /> 
      </div>

      <div className="form-group">
        <label>Preço</label>
        <input type="text" placeholder="informe o preço"  onChange={(e) => setPreco(e.target.value)} /> 
      </div>

      <div className="form-group">
            
            <button onClick={handleSubmit}>Cadastre o produtu</button>
      </div>

    </div>
  )

}

export default Usuario;