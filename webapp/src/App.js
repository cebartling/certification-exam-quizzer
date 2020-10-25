import './App.css';
import {BrowserRouter as Router, Link} from 'react-router-dom';
import RoutesSwitch from './RoutesSwitch';

function App() {
  return (
    <Router>
      <div>
        <ul>
          <li>
            <Link to="/welcome">Home</Link>
          </li>
        </ul>
        <hr/>
        <RoutesSwitch/>
      </div>
    </Router>
  );
}

export default App;
