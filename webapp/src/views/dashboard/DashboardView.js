import React from 'react';
import PropTypes from "prop-types";
import Container from "@material-ui/core/Container";
import Grid from "@material-ui/core/Grid";
import Paper from "@material-ui/core/Paper";
import useStyles from "../../styles/UseStyles";
import clsx from "clsx";

const DashboardView = () => {
  const classes = useStyles();
  const fixedHeightPaper = clsx(classes.paper, classes.fixedHeight);

  return (
    <Grid container spacing={3}>
    {/* Chart */}
    <Grid item xs={12} md={8} lg={9}>
      <Paper className={fixedHeightPaper}>
        {/*<Chart />*/}
      </Paper>
    </Grid>
    {/* Recent Deposits */}
    <Grid item xs={12} md={4} lg={3}>
      <Paper className={fixedHeightPaper}>
        {/*<Deposits />*/}
      </Paper>
    </Grid>
    {/* Recent Orders */}
    <Grid item xs={12}>
      <Paper className={classes.paper}>
        {/*<Orders />*/}
      </Paper>
    </Grid>
  </Grid>
  );
};

DashboardView.propTypes = {};

export default DashboardView;