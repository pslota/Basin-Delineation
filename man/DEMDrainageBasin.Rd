% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/basin_creation.R
\name{DEMDrainageBasin}
\alias{DEMDrainageBasin}
\title{Calculate basin delineation using a DEM}
\usage{
DEMDrainageBasin(point, DEM_path, DEM_source = "NTS", saga_env, outdir,
  pointbuffer = 50, clip_size = 50000, projected_CRS, upstr_method = "D8",
  upstr_threshold = 35000, prelim_basin = NULL, ...)
}
\arguments{
\item{point}{a SpatialPointsDataFrame corresponding to a hydrometric station.
 Must be in same coordinates system as DEM and coordinate system
must be projected (not lat/long).  Must have 'longitude' and 'latitude'
columns in the data frame.}

\item{DEM_path}{One of:
(1) a file path to a directory containing DEM files either in the the format
 n%%w0%%_con_grid.sgrd (if DEM_source is 'SHEDS') or a directory to which DEM
 tiles will be downloaded (if DEM_source='CDEM', 'CDED' etc.),
(2) a file path to a dem file in SAGA format.  The DEM should be in a
projected coordinate system and the coordinate system should match that of
the point (e.g. Canada Albers Conformal Conic)}

\item{DEM_source}{character, one of: c('CDED', 'NED', 'CDEM, CDSM', 'SHEDS').
Ignored if a DEM file is supplied to DEM_path}

\item{saga_env}{A SAGA geoprocessing object.  Suggested version is 2.2.2.}

\item{outdir}{Directory to output final upslope shapefile}

\item{pointbuffer}{numeric, how much should the point be buffered (calculates
upslope basin of buffered area)}

\item{clip_size}{How big (in m) a clip should be generated from the
original DEM (too big doesn't work and is slower)}

\item{projected_CRS}{character vector (proj4) specifying "working" CRS in
which area and distance calculations are to be done}

\item{upstr_threshold}{integer, number of upstream cells required to
initiate channel growth. A smaller number will yield more channels and will
 snap to smaller streams. Larger numbers will produce only major channel
 branches. For a 50k DEM, numbers between 20,000 and 50,000 are appropriate
 to reproduce the main channel network without many small branches. Numbers
 around 8,000 will produce most small branches, but tend to create many offshots
 in wide river sections.

 @prelim_basin (optional) if provided, uses an approximate basin outline
 (e.g. such as one derived from HydroBASINS) to determine the requisite
 size of DEM to clip out and process}

\item{method}{character, one of ('D8', 'DINF'), specifying the hydrological
pathing model}
}
\value{
A list containing diagnostic information and and a character string
naming the recently created upstream area polygon
}
\description{
Create a drainage basin shapefile using a DEM
}
