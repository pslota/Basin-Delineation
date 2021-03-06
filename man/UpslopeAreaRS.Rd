% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SAGA_Tools.R
\name{UpslopeAreaRS}
\alias{UpslopeAreaRS}
\title{Upslope area}
\usage{
UpslopeAreaRS(in_DEM, target.grid, out.GRD, saga_env, verbose = F,
  method = 1)
}
\arguments{
\item{in_DEM}{Hydrologically appropriate DEM file (saga grid)}

\item{target.grid}{saga grid}

\item{out.GRD}{character string path to output grid}

\item{saga_env}{A SAGA geoprocessing object.  Suggested version is 2.2.2.}
}
\description{
Calculates upslope area and produces a grid ('ta_hydrology'
module 4)
}
