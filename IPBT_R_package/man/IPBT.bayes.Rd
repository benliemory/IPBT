\name{IPBT.bayes}
\alias{IPBT.bayes}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Informative Prior Bayesian Test
}
\description{
The core function for IPBT. External historical data is required or using the priors IPBT provided. The function will return bayes factor for each probe.
}
\usage{
IPBT.bayes(control, treat, hist_var, hist_sampleSize)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{control}{
Samples for control group.
}
  \item{treat}{
Samples for treatment group.
}
  \item{hist_var}{
Historical variance. Estimated from external data or from IPBT priors. 
}
  \item{hist_sampleSize}{
The sample size for historical data.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A table of all the probes will be returned by the most possible differentially expressed one to the least one.
Each probe's bayes factor, log bayes factor and DE gene rank are also provided.
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
