% Generated by roxygen2 (4.0.2): do not edit by hand
\name{getOMLTask}
\alias{getOMLTask}
\title{Get an OpenML task.}
\usage{
getOMLTask(id, session.hash = getSessionHash(), ignore.cache = FALSE,
  verbosity = NULL)
}
\arguments{
\item{id}{[\code{integer(1)}]\cr
The task ID.}

\item{session.hash}{[\code{character(1)}]\cr
A session token returned by \code{\link{authenticateUser}}. Default is
\code{\link{getSessionHash}()}.}

\item{ignore.cache}{[\code{logical(1)}]\cr
Ignore a possibly cached version and force
re-download of files? Default is \code{FALSE}.}

\item{verbosity}{[\code{integer(1)}]\cr
Print verbose output on console? Possible values are:\cr
\code{0}: normal output,\cr
\code{1}: info output,\cr
\code{2}: debug output.\cr
Default is set via \code{\link{setOMLConfig}}.}
}
\value{
[\code{\link{OMLTask}}]
}
\description{
This function downloads an OpenML task and all associated files from the OpenML repository,
intermediately stores the files on disk and creates an S3 object which completely specifies the task.
}
\examples{
# Download task and access relevant information to start running experiments
\dontrun{
task = getOMLTask(id = 1)
show(task)
print(task$type)
print(task$target.features)
print(head(task$data.set$data))
task$data.set = getOMLDataSet(task)
print(head(task$data.set$data))
}
}
\seealso{
To retrieve the corresponding data set: \code{\link{getOMLDataSet}}
}
