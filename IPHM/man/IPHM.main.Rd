\name{IPHM.main}
\alias{IPHM.main}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
IPHM.main(Control, Treatment, IPHM.prior = FALSE, history = NA, IPHM.id = NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Control}{
%%     ~~Describe \code{Control} here~~
}
  \item{Treatment}{
%%     ~~Describe \code{Treatment} here~~
}
  \item{IPHM.prior}{
%%     ~~Describe \code{IPHM.prior} here~~
}
  \item{history}{
%%     ~~Describe \code{history} here~~
}
  \item{IPHM.id}{
%%     ~~Describe \code{IPHM.id} here~~
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
%%  ~~who you are~~
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
function (Control, Treatment, IPHM.prior = FALSE, history = NA, 
    IPHM.id = NA) 
{
    if ((IPHM.prior == FALSE & all(is.na(history) == 1)) | (IPHM.prior == 
        TRUE & all(is.na(IPHM.id) == 1))) 
        stop("Historical information is missing!\nPlease provide historical data or use IPHM prior!")
    if (IPHM.prior == FALSE) {
        hist_var = apply(history, 1, var)
        hist_sampleSize = dim(history)[2]
    }
    if (IPHM.prior == TRUE) {
        data(IPHM3digits)
        data(SampleSize)
        hist_var = IPHM3digits[, IPHM.id]^2
        hist_sampleSize = SampleSize[IPHM.id, 2]
    }
    Bayes.post.prob = IPHM.bayes(Control, Treatment, hist_var, 
        hist_sampleSize)
    orders.bayes.post = rank(Bayes.post.prob)
    Output = data.frame(Probe_id = names(Bayes.post.prob), Post_Prob = exp(Bayes.post.prob), 
        log_Post_Prob = Bayes.post.prob, DE_rank = orders.bayes.post)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
