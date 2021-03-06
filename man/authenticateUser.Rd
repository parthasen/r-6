% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/authenticateUser.R
\name{authenticateUser}
\alias{authenticateUser}
\title{Authenticate at server.}
\usage{
authenticateUser(username = NULL, password = NULL, verbosity = NULL)
}
\arguments{
\item{username}{[\code{character(1)}]\cr
The e-mail address you used to register at the OpenML server.}

\item{password}{[\code{character(1)}]\cr
Your password at OpenML server.}

\item{verbosity}{[\code{integer(1)}]\cr
Print verbose output on console? Possible values are:\cr
\code{0}: normal output,\cr
\code{1}: info output,\cr
\code{2}: debug output.\cr
Default is set via \code{\link{setOMLConfig}}.}
}
\value{
[\code{character(1)}]. Invisibly returns session hash.
}
\description{
Needs to be done once, before you are allowed to do any operation.
Defaults are set via the OpenML config.

The session hash is stored in your config, so it will be automatically used for all
subsequent package operations.
}
\seealso{
Other config: \code{\link{configuration}};
  \code{\link{getOMLConfig}}; \code{\link{getSessionHash}};
  \code{\link{loadOMLConf}}; \code{\link{setOMLConfig}}
}

