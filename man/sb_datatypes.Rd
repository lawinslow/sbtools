% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query_sb_datatype.R
\name{sb_datatypes}
\alias{sb_datatypes}
\title{Query SB for all available datatypes}
\usage{
sb_datatypes(limit = 50, session = current_session())
}
\arguments{
\item{limit}{Maximum number of returned items. Will do paging to retrieve
results when limit is over 1000. Use with caution, queries 10k results
are slow.}

\item{session}{Session object from \code{\link{authenticate_sb}}}
}
\description{
Queries ScienceBase for the list of all available datatypes. This can be
coupled with \code{\link{query_sb_datatype}} to query based on the type of data
}
\examples{
#return all datatypes (limit 50 by default)
sb_datatypes()


}
