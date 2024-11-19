import './header.css';
import { Link } from 'react-router-dom'

function Header(){

    return(
            <header>
                <a href="/" className="logo">Home Jack</a>
                <a href="/usuario" className="usuario">Cadastrar Usuário</a>
                <a href="/funcionario" className="funcionario">Funcionario</a>
                <a href="/listaUsuario" className="funcionario">Listar Usuario</a>

            </header>

    )

}

export default Header;

