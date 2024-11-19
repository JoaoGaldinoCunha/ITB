import { BrowserRouter, Routes, Route } from 'react-router-dom'
import Home from './pages/home'
/*import Login from './pages/Login'*/

function RoutesApp() {
    return (
        <BrowserRouter>
            <header>
                <Routes>
                    <Route path="/" element={<Home></Home>}/>
                    <Route element={<Login></Login>}>
                    </Route>
                </Routes>
            </header>
        </BrowserRouter>
    )
}
export default RoutesApp