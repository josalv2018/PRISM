% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prism_archive_ls.R
\name{prism_archive_ls}
\alias{prism_archive_ls}
\alias{ls_prism_data}
\title{List available prism data}
\usage{
prism_archive_ls()

ls_prism_data(absPath = FALSE, name = FALSE)
}
\arguments{
\item{absPath}{TRUE if you want to return the absolute path.}

\item{name}{TRUE if you want file names and titles of data products.}
}
\value{
\code{prism_archive_ls()} returns a character vector.

\code{ls_prism_data()} returns a data frame. It can have 1-3 columns, but
always has the \code{files} column. \code{abs_path} and \code{product_name} columns are
added if \code{absPath} and \code{name} are \code{TRUE}, respectively.
}
\description{
\code{prism_archive_ls()} lists all available prism data (all variables and all
temporal periods) that are available in the local archive, i.e., they
have already been downloaded and are available in \code{\link[=prism_get_dl_dir]{prism_get_dl_dir()}}.
\code{\link[=prism_archive_subset]{prism_archive_subset()}} can be used to subset the archive based on specified
variables and temporal periods.

\code{ls_prism_data()} is a deprecated version of \code{prism_data_ls()}.
}
\details{
\code{prism_archive_ls()} only returns the values found in the \code{files} column as
returned by \code{ls_prism_data()}. To replicate
the behavior of \code{ls_prism_data()}, use \code{\link[=pd_get_name]{pd_get_name()}} and
\code{\link[=pd_to_file]{pd_to_file()}} with the output of \code{prism_archive_ls()}
}
\examples{
\dontrun{
# Get prism data names, used in many other prism* functions 
get_prism_dailys(
  type="tmean", 
  minDate = "2013-06-01", 
  maxDate = "2013-06-14", 
  keepZip = FALSE
)
prism_archive_ls()
}

}
\seealso{
\code{\link[=prism_archive_subset]{prism_archive_subset()}}
}
