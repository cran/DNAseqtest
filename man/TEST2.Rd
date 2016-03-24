\name{TEST2}
\alias{TEST2}
\title{Test for Symmetry of Matched DNA Sequences}
\description{This function tests for symmetry between all the pairs of K matched
DNA sequences.}
\usage{TEST2(f)}
\arguments{
  \item{f}{a \eqn{4^K} array containing the observed divergence array N}
}
\details{This function calculates Bowker's test for symmetry, Stuart's test for
marginal symmetry and the test for internal symmetry. It depends on the \eqn{4^K} observed divergence array N.
}
\value{
A list of three lower triangle matrices
\item{first}{the lower triangle of the matrix contains (K-1) x (K-1) values
shows Bowker's test between all the possible pairs of the K sequences}
\item{second}{the lower triangle of the matrix contains (K-1) x (K-1) values
shows Stuart's test between all the possible pairs of the K sequences}
\item{third}{the lower triangle of the matrix contains (K-1) x (K-1) values
shows the internal test between all the possible pairs of the K sequences}
}
\references{
Lars Sommer Jermiin, Vivek Jayaswal, Faisal Ababneh, John Robinson (2008). Phylogenetic model evaluation. Bioinformatics, Volume 452 of the series Methods in Molecular Biology, 331-364.

Faisal Ababneh, Lars S Jermiin, Chunsheng Ma, John Robinson (2006). Matched-pairs tests of homogeneity with applications to homologous nucleotide sequences. Bioinformatics, 22(10), 1225-1231.
}
\seealso{Ntml, simapp, simemb, TEST3}
\examples{
merge2<-matrix(c(-1,-4,-3,2,-2,-5,1,3), 4, 2)
theta<-c(rep(.25,3), rep(.25,3), rep(.25,3), c(.2,.35,.79,.01,.93,.47),
3,.1,.5,.8)
F1<-gn(theta,merge2)
N1<-Ntml(1000,F1)
t2<-TEST2(N1)
t2
}
\keyword{Sequence test}
