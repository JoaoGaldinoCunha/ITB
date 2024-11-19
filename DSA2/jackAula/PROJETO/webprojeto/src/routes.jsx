import {BrowserRouter, Routes, Route } from 'react-router-dom'

import Header from './pages/Header';
import Home from './pages/Home';
import Usuario from './pages/Usuario';
import ListaUsuario from './pages/ListUsuario/index'
function RoutesApp(){
 return(
    <BrowserRouter>
        <Header />
            <Routes>
                <Route path="/" element={<Home/>}/>
                <Route path="/usuario" element={<Usuario/>}/>
                <Route path='/listaUsuario' element={<ListaUsuario/>}></Route>
            </Routes>
    
    </BrowserRouter>
 )
}
export default RoutesApp;
