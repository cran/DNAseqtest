\name{TEST3}
\alias{TEST3}
\title{Overall Test for Marginal Symmetry}
\description{This function tests for symmetry between K matched DNA sequences.}
\usage{TEST3(Farray)}
\arguments{
  \item{Farray}{a \eqn{4^K} array containing the observed divergence array N}
}
\details{This function calculates overall test for marginal symmetry. It depends
on the \eqn{4^K} observed divergence array N.}
\value{A single value gives the overall test for marginal symmetry between K
matched sequences}
\references{
Lars Sommer Jermiin, Vivek Jayaswal, Faisal Ababneh, John Robinson (2008). Phylogenetic model evaluation. Bioinformatics, Volume 452 of the series Methods in Molecular Biology, 331-364.

Faisal Ababneh, Lars S Jermiin, Chunsheng Ma, John Robinson (2006). Matched-pairs tests of homogeneity with applications to homologous nucleotide sequences. Bioinformatics, 22(10), 1225-1231.
}
\seealso{Ntml, simapp, simemb, TEST2}
\examples{
merge2<-matrix(c(-1,-4,-3,2,-2,-5,1,3), 4, 2)
theta<-c(rep(.25,3), rep(.25,3), rep(.25,3), c(.2,.35,.79,.01,.93,.47),
3,.1,.5,.8)
F1<-gn(theta,merge2)
N1<-Ntml(1000,F1)
t3<-TEST3(N1)
t3
}
\keyword{Sequence test}
