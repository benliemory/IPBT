\name{IPHM.bayes}
\alias{IPHM.bayes}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Informative Prior Hierarchial Model
}
\description{
The core function for IPHM. External historical data is required or using the priors IPHM provided.
}
\usage{
IPHM.bayes(control, treat, hist_var, hist_sampleSize)
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
Historical variance. Estimated from external data or from IPHM priors. 
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
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (control, treat, hist_var, hist_sampleSize) 
{
    mean_treat = rowMeans(treat)
    mean_control = rowMeans(control)
    n = dim(control)[2]
    mu_0 = rowMeans(control)
    k_0 = hist_sampleSize
    v = hist_sampleSize
    w_square = hist_var
    k_n = k_0 + n
    v_n = v + n
    mu_new = (k_0/k_n) * mu_0 + (n/k_n) * mean_control
    s_sample = apply(control, 1, var)
    w_square_new = (v/v_n) * w_square + ((n - 1)/v_n) * s_sample + 
        ((n/v_n) * (k_0/k_n) * (mu_0 - mean_control)^2)
    Adjust_sigma_square = (v_n/(v_n - 2)) * w_square_new
    numerator = k_0 * mu_0^2 + (2 * n^2 * mean_control * mean_treat - 
        mu_0^2 * k_0^2)/(2 * n + k_0) - n/(2 * n + k_0)/(n + 
        k_0) * (n^2 * (mean_control^2 + mean_treat^2) + 2 * n * 
        mu_0 * k_0 * (mean_control + mean_treat) + 2 * mu_0^2 * 
        k_0^2)
    denominator = 2 * Adjust_sigma_square
    logLR = numerator/denominator + log(sqrt(k_0/(2 * n + k_0))/(k_0/(n + 
        k_0)))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
