% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dc_clients.R
\name{dc_clients}
\alias{dc_clients}
\title{DataCite REST API: clients}
\usage{
dc_clients(
  ids = NULL,
  query = NULL,
  year = NULL,
  provider_id = NULL,
  software = NULL,
  include = NULL,
  limit = 25,
  page = 1,
  cursor = NULL,
  ...
)
}
\arguments{
\item{ids}{(character) one or more client IDs}

\item{query}{(character) Query string}

\item{year}{(integer/numeric/character) a year}

\item{provider_id}{a provider ID}

\item{software}{no idea what should go here, anyone?}

\item{include}{(character) vector of fields to return}

\item{limit}{(numeric/integer) results per page}

\item{page}{(numeric/integer) the page to get results for. default: 1}

\item{cursor}{(character) page cursor (used instead of \code{limit} param).
to use cursor pagination, set \code{cursor = 1}, then use the link in
\verb{$links$next}}

\item{...}{curl options passed on to \link[crul:verb-GET]{crul::verb-GET}}
}
\description{
DataCite REST API: clients
}
\examples{
\dontrun{
if (dc_check()) {
x <- dc_clients()
x
dc_clients(x$data$id[1])
dc_clients(x$data$id[1:2], verbose = TRUE)
}}
}
