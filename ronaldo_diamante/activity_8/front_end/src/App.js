import logo from './logo.svg';
import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom';
// import './App.css';
import './components/components.css';
import NavigationBar from './components/NavigationBar'

function App() {
  return (
    <div>
      <NavigationBar />
    </div>
  );
}

export default App;
