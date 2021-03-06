% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query_sb_spatial.R
\name{query_sb_spatial}
\alias{query_sb_spatial}
\title{Query SB based on spatial extent}
\usage{
query_sb_spatial(bbox, long, lat, bb_wkt, ..., limit = 20,
  session = current_session())
}
\arguments{
\item{bbox}{An sp spatial data object. The bounding box of the object is used for the query.}

\item{long}{A vector of longitude values that will define the boundaries of a bounding box. Min and Max of supplied longitudes are used. (alternate option to bbox).}

\item{lat}{A vector of latitude values that will define the boundaries of a bounding box. Min and Max of supplied latitude are used. (alternate option to bbox).}

\item{bb_wkt}{A character string using the Well Known Text (WKT) standard for defining spatial data. Must be a POLYGON WKT object.}

\item{...}{Additional parameters are passed on to \code{\link[httr]{GET}}}

\item{limit}{Maximum number of returned items. Will do paging to retrieve
results when limit is over 1000. Use with caution, queries 10k results
are slow.}

\item{session}{Session object from \code{\link{authenticate_sb}}}
}
\description{
Queries ScienceBase based on a spatial bounding box. Accepts either an sp spatial data object
(uses the spatial object's bounding box) or long/lat coordinates defining the bounding box limits.
}
\examples{

#specify the latitude and longitude points to define the bounding box range. 
# This is simply bottom left and top right points
query_sb_spatial(long=c(-104.4, -95.1), lat=c(37.5, 41.0), limit=3)

#use a pre-formatted WKT polygon to grab data
query_sb_spatial(bb_wkt="POLYGON((-104.4 41.0,-95.1 41.0,-95.1 37.5,-104.4 37.5,-104.4 41.0))", 
	                limit=3)

\dontrun{
###Use the bounding box of an sp object 
#grab an sp object from a pre-determined ScienceBase Item
layer = item_get_wfs('55e372b9e4b05561fa208212')

#get items in that BB
query_sb_spatial(layer)
}

}
