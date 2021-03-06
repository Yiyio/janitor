% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/excel_dates.R
\name{excel_numeric_to_date}
\alias{excel_numeric_to_date}
\title{Convert dates encoded as serial numbers to Date class.}
\usage{
excel_numeric_to_date(date_num, date_system = "modern")
}
\arguments{
\item{date_num}{numeric vector of serial numbers to convert.}

\item{date_system}{the date system, either \code{"modern"} or \code{"mac pre-2011"}.}
}
\value{
Returns a vector of class Date.
}
\description{
Converts numbers like \code{42370} into date values like \code{2016-01-01}.

Defaults to the modern Excel date encoding system. However, Excel for Mac 2008 and earlier Mac versions of Excel used a different date system. To determine what platform to specify: if the date 2016-01-01 is represented by the number 42370 in your spreadsheet, it's the modern system.  If it's 40908, it's the old Mac system.
More on date encoding systems at http://support.office.com/en-us/article/Date-calculations-in-Excel-e7fe7167-48a9-4b96-bb53-5612a800b487.
}
\examples{
excel_numeric_to_date(40000)
}

