% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tracking.R
\name{mlflow_start_run}
\alias{mlflow_start_run}
\title{Start Run}
\usage{
mlflow_start_run(run_uuid = NULL, experiment_id = NULL,
  source_name = NULL, source_version = NULL, entry_point_name = NULL,
  source_type = "LOCAL")
}
\arguments{
\item{run_uuid}{If specified, get the run with the specified UUID and log metrics
and params under that run. The run's end time is unset and its status is set to
running, but the run's other attributes remain unchanged.}

\item{experiment_id}{Used only when ``run_uuid`` is unspecified. ID of the experiment under
which to create the current run. If unspecified, the run is created under
a new experiment with a randomly generated name.}

\item{source_name}{Name of the source file or URI of the project to be associated with the run.
Defaults to the current file if none provided.}

\item{source_version}{Optional Git commit hash to associate with the run.}

\item{entry_point_name}{Optional name of the entry point for to the current run.}

\item{source_type}{Integer enum value describing the type of the run  ("local", "project", etc.).}
}
\description{
Starts a new run within an experiment, should be used within a \code{with} block.
}
\examples{
\dontrun{
with(mlflow_start_run(), {
  mlflow_log("test", 10)
})
}

}
