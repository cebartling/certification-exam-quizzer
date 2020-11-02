import React from 'react';
// import PropTypes from "prop-types";
import firebase from 'firebase';
import 'firebase/auth';
import StyledFirebaseAuth from 'react-firebaseui/StyledFirebaseAuth';
import useViewStyles from "../../styles/ViewStyles";
import Grid from "@material-ui/core/Grid";
import Paper from "@material-ui/core/Paper";
// Configure FirebaseUI.
const uiConfig = {
  // Popup signin flow rather than redirect flow.
  signInFlow: 'popup',
  // Redirect to /signedIn after sign in is successful. Alternatively you can provide a callbacks.signInSuccess function.
  signInSuccessUrl: '/welcome',
  // We will display Google and Facebook as auth providers.
  signInOptions: [
    firebase.auth.GoogleAuthProvider.PROVIDER_ID,
  ]
};

const FrontDoorView = () => {
  const classes = useViewStyles();

  return (
    <Grid container spacing={3}>
      <Grid item xs={12}>
        <Paper className={classes.paper}>
          <StyledFirebaseAuth uiConfig={uiConfig} firebaseAuth={firebase.auth()}/>
        </Paper>
      </Grid>
    </Grid>
  );
};

FrontDoorView.propTypes = {};

export default FrontDoorView;
