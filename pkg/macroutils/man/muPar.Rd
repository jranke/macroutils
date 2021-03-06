% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/muOptionSystem.R
\name{muPar}
\alias{muPar}
\title{Get or set default parameters for the package.}
\usage{
muPar(par = NULL, reset = FALSE, dateMethod, removeSpace, alphaNumOnly,
  stripRunID, tz, alphaNum, header, lastBinWd, timeSeriesValid)
}
\arguments{
\item{par}{Three possible cases: \itemize{ \item If \code{par} is \code{NULL}
(default): All the actual value of the parameters will be silently returned.
\item If \code{par} is a vector of character strings representing parameter
names. The value of the parameters named here will be (silently) returned.
\item If \code{par} is a list following the format \code{tag = value}, where
\code{tag} is the name of the parameter to be changed, and \code{value} is
its new value.  Such a list is returned by \code{muPar()}. Notice that
parameters can also be set indivudually, using the options listed below. }}

\item{reset}{Single logical. If TRUE, all the parameters will be set to their
default value. Values are reset before any change to the parameter values, as
listed below.}

\item{dateMethod}{Single integer. If 1 uses a new (shorter) method for
converting dates (from the weird bin file format to POSIXct), if 2 uses the
old / slower method implemented for the SOIL model (and MACRO?) and if 0 (or
any other value than 1 or 2) returns the original date in minutes since 2
days before the 1st of January of year 0001 at 00:00. For 1 and 2 the date
returned is POSIXct with time-zone \code{tz}, and for 0 it is integers.}

\item{removeSpace}{Single logical. If TRUE remove extra spaces and minus
signs in column names and replace them by underscores _. Multiple spaces are
grouped. Trailing (end) space(s) are always removed (whatever is the value of
\code{removeSpace}). If \code{gui} is \code{TRUE}, \code{removeSpace} is
ignored, and a menu will ask you what to do.}

\item{alphaNumOnly}{Single logical. If TRUE remove all non alpha-numeric
characters from the column names (and replace them by underscores). See also
the \code{alphaNum} parameter. Use this option to obtain database compatible
column names. If \code{gui} is \code{TRUE}, \code{alphaNumOnly} is ignored,
and a menu will ask you what to do.}

\item{stripRunID}{Single logical. If TRUE remove the simulation ID at the end
of each column name. \code{removeSpace} must be \code{TRUE} for using this
option (otherwise ignored). If \code{gui} is \code{TRUE}, \code{stripRunID}
is ignored, and a menu will ask you what to do.}

\item{tz}{Single character string. "A timezone specification to be used for
the conversion. System-specific (see \code{\link{as.POSIXlt}}), but "" is the
current time zone, and "GMT" is UTC".}

\item{alphaNum}{Vector of single characters. List of characters allowed in
the column names when \code{alphaNumOnly == TRUE}.}

\item{header}{Single logical. If TRUE the header is present in the bin file,
if FALSE it is not present.}

\item{lastBinWd}{Single character string. Last folder in which some binary files
were fetched.}

\item{timeSeriesValid}{A valid R function. The first parameter of the function 
must accept a Date or POSIXct time series (as read from 
or exported to a BIN-file). The purpose of the 
function is to check that the time series is "valid". 
The default function 
\code{\link[macroutils]{isValidTimeSeries}} (set when 
the package is attached) will for example check that 
date-times in the time series are unique, sorted and 
regular(ly increasing). Set to \code{NULL} or 
\code{function(x){TRUE}} to cancel any check.}
}
\value{
Returns a partial or complete list of (actual) parameter values, as a
 named list.
}
\description{
Get or set default parameters for the package. Notice changes done to the
 parameter values are reset everytime the R session is closed and the package
 is reloaded.
}
\details{
The function has 3 possible, non-exclusive behaviours: \itemize{ \item If
 \code{reset=TRUE}, resetting the parameters to their initial values, as
 defined in this function. \item (Silently) returning the actual value of the
 package parameters. If \code{par=NULL}, all the values are returned.  If
 \code{par} is a vector of parameter names, their value will be returned.
 \item Setting-up the value of some parameters, passing a list of parameter
 value to \code{par} OR setting some of the parameters listed above. }

Notice that when \code{reset=TRUE} and some new parameter values are
 provided, the parameters are first reset, and then the new parameter values
 are set. If \code{par} is a list, parameters are set first according to
 values in \code{par}, and then according to values in the parameters listed
 below. This combination is not recommended, but nonetheless possible.

The actual value of the parameters is stored in (and can be retrieved from)
 the environment \code{rspPars}. The default value of the parameters are
 stored in the environment \code{rspPars}. Do not use them directly.
}
\seealso{
\code{\link{getMuPar}}.
}
