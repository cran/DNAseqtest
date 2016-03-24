\name{Ntml}
\alias{Ntml}
\title{Generating Samples from a Multinomial Distribution}
\description{Generating random DNA samples from a multinomial distribution.}
\usage{Ntml(N, Ft)
}
\arguments{
  \item{N}{sample size}
  \item{Ft}{a \eqn{4^K} array, containing the joint distribution probabilities for K matched sequences.}
}
\details{This function generates a \eqn{4^K} DNA array from a multinomial distribution. It depends on the sample size we need to generate and the \eqn{4^K} joint distribution array of K matched sequences.}
\value{A \eqn{4^K} observed divergence array}
\references{
Faisal Ababneh, Lars S Jermiin, Chunsheng Ma, John Robinson (2006). Matched-pairs tests of homogeneity with applications to homologous nucleotide sequences. Bioinformatics, 22(10), 1225-1231.
}
\seealso{simemb, simapp, gn3sim, gn, gn2, Fmatrix}
\examples{
#This will give a 4^K observed divergence array
merge2<-matrix(c(-1,-4,-3,2,-2,-5,1,3), 4, 2)
theta<-c(rep(.25,3), rep(.25,3), rep(.25,3), c(.2,.35,.79,.01,.93,.47),
3,.1,.5,.8)
F1<-gn(theta,merge2)
Nt<-Ntml(1000, F1)
Nt
}
\keyword{Generated sample}
