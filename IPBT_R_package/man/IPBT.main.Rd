\name{IPBT.main}
\alias{IPBT.main}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The main function of IPBT
}
\description{
The main function for IPBT. External historical data is required or using the priors IPBT provided.
}
\usage{
IPBT.main(Control, Treatment, IPBT.prior = FALSE, history = NA, IPBT.id = NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Control}{
Samples for control group.
}
  \item{Treatment}{
Samples for treatment group.
}
  \item{IPBT.prior}{
logical value to specify using external historical data or IPBT prior.
}
  \item{history}{
External historical data is required to provide if using external historical data.
}
  \item{IPBT.id}{
IPBT prior id is required if using IPBT prior.
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
