import React from 'react';
// import PropTypes from "prop-types";
import WelcomeView from './views/welcome/WelcomeView';
import {Route, Switch} from 'react-router-dom';
import FrontDoorView from './views/front_door/FrontDoorView';
import DashboardView from "./views/dashboard/DashboardView";
import ExamView from "./views/editor/ExamView";


const RoutesSwitch = (props) => {

  return (
    <Switch>
      <Route exact path="/">
        <FrontDoorView/>
      </Route>
      <Route exact path="/welcome">
        <WelcomeView/>
      </Route>
      <Route exact path="/dashboard">
        <DashboardView/>
      </Route>
      <Route exact path="/editor/exam">
        <ExamView/>
      </Route>
    </Switch>
  );
};

RoutesSwitch.propTypes = {};

export default RoutesSwitch;
