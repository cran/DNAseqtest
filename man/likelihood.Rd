\name{likelihood}
\alias{likelihood}
\title{Negative Log Likelihood Ratio}
\description{This function calculates log likelihood ratio value.}
\usage{likelihood(thetast, fobs, merge2)}
\arguments{
  \item{thetast}{a starting values for the parameter we need to estimate}
  \item{fobs}{the \eqn{4^K} joint distribution array for K edge tree}
  \item{merge2}{a (K-1) x 2 matrix describing the tree topology}
}
\details{This function calculates the log likelihood ratio value for F(t). It needs
a vector of starting values for the parameters estimate, \eqn{4^K} observed divergence array and merge matrix describing the tree topology.}
\value{The value of the log likelihood ratio}
\references{
Faisal Ababneh, Lars S Jermiin, Chunsheng Ma, John Robinson (2006). Matched-pairs tests of homogeneity with applications to homologous nucleotide sequences. Bioinformatics, 22(10), 1225-1231.
}

\seealso{gn, gn2}
\examples{
merge2<-matrix(c(-1,-4,-3,2,-2,-5,1,3), 4, 2)
theta<-c(rep(.25,3), rep(.25,3), rep(.25,3), c(.2,.35,.79,.01,.93,.47),3,.1,.5,.8)
F1<-gn(theta, merge2)
lh<-likelihood(theta, F1, merge2)
lh
}
\keyword{Likelihood}
