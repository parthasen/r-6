% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/listOMLFlows.R
\name{listOMLFlows}
\alias{listOMLFlows}
\title{List all registered OpenML flows.}
\usage{
listOMLFlows(session.hash = getSessionHash(), verbosity = NULL)
}
\arguments{
\item{session.hash}{[\code{character(1)}]\cr
A session token returned by \code{\link{authenticateUser}}. Default is
\code{\link{getSessionHash}()}.}

\item{verbosity}{[\code{integer(1)}]\cr
Print verbose output on console? Possible values are:\cr
\code{0}: normal output,\cr
\code{1}: info output,\cr
\code{2}: debug output.\cr
Default is set via \code{\link{setOMLConfig}}.}
}
\value{
[\code{data.frame}].
}
\description{
The returned \code{data.frame} contains the flow id \dQuote{fid},
the flow name (\dQuote{full.name} and \dQuote{name}), version information
(\dQuote{version} and \dQuote{external.version}) and the uploader (\dQuote{uploader})
of all registered OpenML flows.
}
\seealso{
Other list: \code{\link{listOMLDataSets}};
  \code{\link{listOMLEvaluationMeasures}};
  \code{\link{listOMLRunResults}}
}

