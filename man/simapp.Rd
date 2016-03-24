\name{simapp}
\alias{simapp}
\title{Generating Random DNA Samples Using Approximation Method}
\description{This function generates random DNA samples using an approximation method}
\usage{simapp(theta, seqLength, merge1)}
\arguments{
  \item{theta}{a vector of variables containing the following parameters in this order--1. the first three parameters from \eqn{\pi_X} vector, 2. the first three parameters from \eqn{\pi_Y} vector, 3. the first three parameters from \eqn{f_0} vector, 4. the six off-diagonal free parameters in the S matrix, 5. a scalar \eqn{\rho}, 6. a vector of lengths containing K-2 values}
  \item{seqLength}{the length of sequences we need to generate}
  \item{merge1}{(K-1) x 2 matrix describing the tree topology}
}
\details{This function generates a \eqn{4^K} DNA array using an approximation method. It depends on a set of variables theta, the sequence length and a merge matrix describing the tree topology.}
\value{A n x K observed divergence matrix}
\references{
Faisal Ababneh, Lars S Jermiin, Chunsheng Ma, John Robinson (2006). Matched-pairs tests of homogeneity with applications to homologous nucleotide sequences. Bioinformatics, 22(10), 1225-1231.
}
\seealso{Ntml, simemb, gn3sim, gn, gn2, Fmatrix}
\examples{
# This will give 4^5 observed divergence array
theta<-(c(rep(.25,3), rep(.25,3), rep(.25,3), c(.2,.2,.2,.2,.2,.2),
3,.1,.5,.8))
n<-1000
merge2<-matrix(c(-1,-4,-3,2,-2,-5,1,3), 4, 2)
sa<-simapp(theta, n, merge2)
sa
}
\keyword{Generate sequence}
