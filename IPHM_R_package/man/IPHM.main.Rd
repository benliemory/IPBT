\name{IPHM.main}
\alias{IPHM.main}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The main function of IPHM
}
\description{
The main function for IPHM. External historical data is required or using the priors IPHM provided.
}
\usage{
IPHM.main(Control, Treatment, IPHM.prior = FALSE, history = NA, IPHM.id = NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Control}{
Samples for control group.
}
  \item{Treatment}{
Samples for treatment group.
}
  \item{IPHM.prior}{
logical value to specify using external historical data or IPHM prior.
}
  \item{history}{
External historical data is required to provide if using external historical data.
}
  \item{IPHM.id}{
IPHM prior id is required if using IPHM prior.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Ben Li
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
