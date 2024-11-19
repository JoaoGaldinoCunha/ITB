import React from "react";
import { useEffect } from "react";
import api from "../../service/api";
import { useState } from "react";

const DataList = () => {
    const [data,setData]= useState([])
    const [loading,setLoading]= useState(true)
    const [error,setError]= useState(null)
useEffect(()=>{
    api.get('Jack/ObterUsuariosFieb').then(response=>{
    console.log(response.data)    
    setData(response.data)
    setLoading(false)
    })
    .catch(error=>{
    setError(error.menssage)
    setLoading(false)
    })
},[])
if(loading) return <p>Carregando</p>
if(error) return <p>ERRO:{error}</p>

return(
    <ul>
    {data.map( item =>(
<li key={item.id}>{item.codigo}-{item.nome}-{item.email}-{item.senha}</li>
    ))}
    </ul>
)
}
export default DataList