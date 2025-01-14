% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cell_gallery.R
\name{overlayCellBorder_imgList}
\alias{overlayCellBorder_imgList}
\title{overlayCellBorder_imgList}
\usage{
overlayCellBorder_imgList(
  rgbMorphImgs,
  labelsImgs,
  groupVector,
  morphToShow = c(1, 2, 3),
  border_color = "#ffffff",
  export_plots = c("none", "morph", "labels", "overlay"),
  plotresultdir = getwd()
)
}
\arguments{
\item{rgbMorphImgs}{list of rgb image arrays with one query cell per element, each rgb image array has at least 3 channels with value in range of 0-1 for RGB color}

\item{labelsImgs}{list of cell label image arrays with one query cell per element, each label image array is a 2D matrix with value in integer indicating cell id}

\item{groupVector}{named vector of group ID with names to be cell_ID, values to be group ID.}

\item{morphToShow}{a vector of 3 elements for the channel index of each RGB channel in \code{rgbMorphImgs}.}

\item{border_color}{hex code for color of cell borders on overlay (default = '#ffffff')}

\item{export_plots}{a vector of different output images that would be exported to png file on disk}

\item{plotresultdir}{output folder for plot results}
}
\value{
a nested list with 4 elements, \code{cell_IDs}, \code{combOverlays}, \code{combLabels}, \code{combRGBs}, which has one group per element.
}
\description{
overlay cell borders on top of RGB images which could be outputs of \code{\link{createComposite_singleFrame}}, each input image has only 1 frame
}
