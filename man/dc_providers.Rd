% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dc_providers.R
\name{dc_providers}
\alias{dc_providers}
\title{DataCite REST API: providers}
\usage{
dc_providers(
  ids = NULL,
  query = NULL,
  year = NULL,
  region = NULL,
  organization_type = NULL,
  focus_area = NULL,
  include = NULL,
  limit = 25,
  page = 1,
  cursor = NULL,
  ...
)
}
\arguments{
\item{ids}{(character) one or more provider IDs}

\item{query}{(character) query string}

\item{year}{(character) year}

\item{region}{(character) region name}

\item{organization_type}{(character) organization type}

\item{focus_area}{(character) focus area}

\item{include}{(character) vector of fields to return}

\item{limit}{(numeric/integer) results per page}

\item{page}{(numeric/integer) result page, the record to start at}

\item{cursor}{(character) page cursor (used instead of \code{limit} param)}

\item{...}{curl options passed on to \link[crul:HttpClient]{crul::HttpClient}}
}
\description{
DataCite REST API: providers
}
\examples{
\dontrun{
if (dc_check()) {
x <- dc_providers()
x
dc_providers(limit = 3)
dc_providers(ids = x$data$id[1:5])
}}
}
