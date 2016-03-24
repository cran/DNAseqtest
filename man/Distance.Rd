\name{Distance}
\alias{Distance}
\title{Paralinear Distances}
\description{This function calculates the paralinear distance between K matched DNA sequences.}
\arguments{
  \item{F4}{a \eqn{4^K} array containing the joint distribution array \eqn{F(t)} or the observed array N}
}
\details{This function calculates the paralinear distances between K matched DNA sequences, depending on the joint distribution array for these K sequences or on the observed divergence array N.}
\usage{Distance(F4)}
\value{A K x K symmetric matrix distances between the K sequences}
\references{
Faisal Ababneh, Lars S Jermiin, Chunsheng Ma, John Robinson (2006). Matched-pairs tests of homogeneity with applications to homologous nucleotide sequences. Bioinformatics, 22(10), 1225-1231.
}

\seealso{gn2, gn, Fmatrix, Ntml}

\examples{
merge2<-matrix(c(-1,-4,-3,2,-2,-5,1,3), 4, 2)
theta<-c(rep(.25,3), rep(.25,3), rep(.25,3), c(.2,.35,.79,.01,.93,.47), 3,.1,.5,.8)
F1<-gn(theta,merge2)
dn<-Distance(F1)
dn
}
\keyword{Distance between sequences}
