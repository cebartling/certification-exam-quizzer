import React from 'react';
// import PropTypes from "prop-types";
import WelcomeView from './views/welcome/WelcomeView';
import {Route, Switch} from 'react-router-dom';
import FrontDoorView from './views/front_door/FrontDoorView';


const RoutesSwitch = (props) => {

  return (
    <Switch>
      <Route exact path="/">
        <FrontDoorView/>
      </Route>
      <Route exact path="/welcome">
        <WelcomeView/>
      </Route>
    </Switch>
  );
};

RoutesSwitch.propTypes = {};

export default RoutesSwitch;
