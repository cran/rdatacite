% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dc_events.R
\name{dc_events}
\alias{dc_events}
\title{DataCite REST API: events}
\usage{
dc_events(
  ids = NULL,
  query = NULL,
  subj_id = NULL,
  obj_id = NULL,
  doi = NULL,
  orcid = NULL,
  prefix = NULL,
  subtype = NULL,
  subject = NULL,
  source_id = NULL,
  registrant_id = NULL,
  relation_type_id = NULL,
  issn = NULL,
  publication_year = NULL,
  year_month = NULL,
  include = NULL,
  sort = NULL,
  limit = 25,
  page = 1,
  cursor = NULL,
  ...
)
}
\arguments{
\item{ids}{(character) one or more event IDs}

\item{query}{(character) Query for any event information}

\item{subj_id}{(character) The identifier for the event subject, expressed
as a URL. For example: \verb{https://doi.org/10.7272/q6qn64nk}}

\item{obj_id}{(character) The identifier for the event object, expressed
as a URL. For example: \verb{https://doi.org/10.7272/q6qn64nk}}

\item{doi}{(character) The subj-id or obj-id of the event, expressed as
a DOI. For example: \code{10.7272/q6qn64nk}}

\item{orcid}{(character) an ORCID, presumably}

\item{prefix}{(character) The DOI prefix of the subj-id or obj-id of the
event. For example: \code{10.7272}}

\item{subtype}{(character) xxx}

\item{subject}{(character) xxx}

\item{source_id}{(character) a source ID. See Details}

\item{registrant_id}{(character)}

\item{relation_type_id}{(character) a relation-type ID. See Details}

\item{issn}{(character) an ISSN, presumably}

\item{publication_year}{(character) the publication year}

\item{year_month}{(character) The year and month in which the event
occurred, in the format \code{YYYY-MM}. For example \code{2018-08}}

\item{include}{(character) vector of fields to return}

\item{sort}{(character) variable to sort by}

\item{limit}{(numeric/integer) results per page}

\item{page}{(numeric/integer) the page to get results for. default: 1}

\item{cursor}{(character) page cursor (used instead of \code{limit} param).
to use cursor pagination, set \code{cursor = 1}, then use the link in
\verb{$links$next}}

\item{...}{curl options passed on to \link[crul:verb-GET]{crul::verb-GET}}
}
\description{
DataCite REST API: events
}
\details{
See https://support.datacite.org/docs/eventdata-guide for
details on possible values for parameters
}
\examples{
\dontrun{
if (dc_check()) {
# dc_events(query = "birds")
}}
}
