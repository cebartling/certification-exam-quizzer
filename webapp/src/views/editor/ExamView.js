import React from 'react';
import PropTypes from "prop-types";
import useViewStyles from "../../styles/ViewStyles";
import clsx from "clsx";
import Grid from "@material-ui/core/Grid";
import Paper from "@material-ui/core/Paper";
import Typography from "@material-ui/core/Typography";

const ExamView = () => {
  const classes = useViewStyles();
  const fixedHeightPaper = clsx(classes.paper, classes.fixedHeight);

  return (
    <Grid container spacing={3}>
      <Grid item xs={12}>
        <Typography component="h2" variant="h6" color="inherit" noWrap className={classes.title}>
          Editor
        </Typography>
      </Grid>
      <Grid item xs={12}>
        <Paper className={classes.paper}>

        </Paper>
      </Grid>
    </Grid>
  );
};

ExamView.propTypes = {};

export default ExamView;
