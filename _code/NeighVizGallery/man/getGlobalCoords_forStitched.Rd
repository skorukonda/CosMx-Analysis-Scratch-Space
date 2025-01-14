% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_data.R
\name{getGlobalCoords_forStitched}
\alias{getGlobalCoords_forStitched}
\title{getGlobalCoords_forStitched}
\usage{
getGlobalCoords_forStitched(
  napari_imgDir,
  cellMeta,
  cellID_coln = "cell_ID",
  cellLabel_coln = "CellId",
  fov_coln = "fov",
  spatColns = c("CenterX", "CenterY")
)
}
\arguments{
\item{napari_imgDir}{file path to stitched images generated by napari}

\item{cellMeta}{data.frame for cell metadata of all cells in napari-CosMx stitched data, can be combined info of all Cell_Stats files in CellStatsDir.}

\item{cellID_coln}{column name of cell_ID in \code{cellMeta}}

\item{cellLabel_coln}{column name of cell label values at FOV level in \code{cellMeta} (default = 'CellId')}

\item{fov_coln}{column name of fov in \code{cellMeta}}

\item{spatColns}{a vector of column names for local xy spaitial coordinates of each cell in \code{cellMeta}, in pixel unit}
}
\value{
a list of 3 data.frame and 1 list
\itemize{
\item{zarrDF}{data.frame for file path of different image channels under \code{napari_imgDir}}
\item{fovOffsets}{data.frame for fov offset used to arrange and stitch FOVs in \code{napari_imgDir}}
\item{cellMeta}{data.frame for cell metadata, linking original fov and CellId to the values in stitched labels image of \code{napari_imgDir}}
\item{dimSetup}{list of 5 elements, \code{fov_size},  \code{pixel_size_mm}, \code{isDASH}, \code{global_size}, \code{topLeft_mm}}
}
}
\description{
convert local coordinates at FOV level into global coordinates and link cell_ID to label values used in napari-CosMx stitched data
}
