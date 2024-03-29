% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dc_reports.R
\name{dc_reports}
\alias{dc_reports}
\title{DataCite REST API: reports}
\usage{
dc_reports(
  ids = NULL,
  platform = NULL,
  report_name = NULL,
  report_id = NULL,
  release = NULL,
  created = NULL,
  created_by = NULL,
  include = NULL,
  limit = 25,
  page = 1,
  ...
)
}
\arguments{
\item{ids}{(character) one or more report IDs}

\item{platform}{(character) Name of the Platform the usage is being
requested for. This can be omitted if the service provides usage for
only one platform.}

\item{report_name}{(character) The long name of the report}

\item{report_id}{(character) The report ID or code or shortname. Typically
this will be the same code provided in the Report parameter of the request}

\item{release}{(character) The release or version of the report}

\item{created}{(character) Time the report was prepared. Format as defined
by date-time - RFC3339}

\item{created_by}{(character) Name of the organization producing the report}

\item{include}{(character) vector of fields to return}

\item{limit}{(numeric/integer) results per page}

\item{page}{(numeric/integer) result page, the record to start at}

\item{...}{curl options passed on to \link[crul:HttpClient]{crul::HttpClient}}
}
\description{
DataCite REST API: reports
}
\examples{
\dontrun{
if (dc_check()) {
x <- dc_reports()
x
dc_reports(created = "2019-08-01T07:00:00.000Z")
dc_reports(created_by = "urn:node:GOA")
dc_reports(limit = 3)
# dc_reports(ids = x$reports$id[1:3]) # FIXME: doesn't work
}}
}
