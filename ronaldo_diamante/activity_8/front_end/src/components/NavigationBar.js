import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom';
import Home from './Home';
import Database from './Database';


function NavigationBar() {
    return (
        <Router>
            <nav className="navbar bg-danger  navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
                <div className="container-fluid">
                    <Link to='/' className="navbar-brand text-light" href='#'>Ronaldo System</Link>
                    <button className="navbar-toggler border-light bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul className="navbar-nav me-auto mb-2 mb-lg-0">
                            <li className="nav-item">
                                <Link to="database" className="nav-link active text-light" aria-current="page">Database</Link>
                            </li>
                        </ul>
                        <form className="d-flex" role="search">
                            <button className="btn btn-sm btn-outline-light" type="button">Logout</button>
                        </form>
                    </div>
                </div>
            </nav>
            <Routes>
                <Route path="/" element={<Home />} />
                <Route path="database" element={<Database />} />
            </Routes>
        </Router>
    );
}

export default NavigationBar;
