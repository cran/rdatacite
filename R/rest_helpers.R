# helpers --------------------------
dc_GET <- function(route, args = NULL, discard_xml = TRUE,
  ...) {

  con <- crul::HttpClient$new(
  	url = dc_rest_base(),
  	opts = list(...),
    headers = list(
      Accept = "application/vnd.api+json; version=2",
      `User-Agent` = rdatacite_ua(),
      `X-USER-AGENT` = rdatacite_ua()
    )
  )
  res <- con$get(route, query = args)
  res$raise_for_status()
  res$raise_for_ct_json()
  tmp <- jsonlite::fromJSON(res$parse("UTF-8"))
  if (discard_xml) tmp$data$attributes$xml <- NULL
  if (!is.null(tmp$data)) tmp$data <- tibble::as_tibble(tmp$data)
  if (!is.null(tmp$included)) tmp$included <- tibble::as_tibble(tmp$included)
    if (!is.null(tmp$reports)) tmp$reports <- tibble::as_tibble(tmp$reports)
  return(tmp)
}

dc_rest_base <- function() "https://api.datacite.org"

rdatacite_ua <- function() {
  versions <- c(
    paste0("r-curl/", utils::packageVersion("curl")),
    paste0("crul/", utils::packageVersion("crul")),
    sprintf("rOpenSci(rdatacite/%s)", utils::packageVersion("rdatacite")))
  paste0(versions, collapse = " ")
}

warn_stat <- function(x) {
  if (x$status_code > 202) {
    mssg <- x$parse("UTF-8")
    if (!is.character(mssg)) {
      mssg <- if (x$status_code == 406) {
        "(406) - probably bad format type"
      } else {
        x$status_http()$message
      }
    } else {
      mssg <- paste(sprintf("(%s)", x$status_code), "-", mssg)
    }
    warning(
      sprintf(
        "%s w/ %s",
        gsub("%2F", "/", crul::url_parse(x$url)$path),
        mssg
      ),
      call. = FALSE
    )
  }
}
