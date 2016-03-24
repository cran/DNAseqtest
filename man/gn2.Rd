\name{gn2}
\alias{gn2}
\title{Joint Distribution for K Matched Sequences (2)}
\description{This function calculates the joint distribution array for K matched sequences (second option).}
\usage{gn2(theta, merge2)}
\arguments{
  \item{theta}{a vector of variables containing the following parameters in this order--1. the first three parameters from \eqn{\pi_X} vector, 2. the first three parameters from \eqn{\pi_Y} vector, 3. the first three parameters from \eqn{f_0} vector, 4. the six off-diagonal free parameters in the S matrix, 5. a scalar \eqn{\rho}, 6. a vector of lengths containing K-2 values}
  \item{merge2}{(K-1) x 2 matrix describing the tree topology}
}
\details{This function calculates the joint distribution array for a tree with K matched sequences. it uses the following functions-- Pt, Fmatrix and Smatrix.}
\value{A \eqn{4^K} array containing the joint distribution for the K edges}
\references{
Lars Sommer Jermiin, Vivek Jayaswal, Faisal Ababneh, John Robinson (2008). Phylogenetic model evaluation. Bioinformatics, Volume 452 of the series Methods in Molecular Biology, 331-364.

Faisal Ababneh, Lars S Jermiin, Chunsheng Ma, John Robinson (2006). Matched-pairs tests of homogeneity with applications to homologous nucleotide sequences. Bioinformatics, 22(10), 1225-1231.
}
\seealso{Fmatrix, Pt, Smatrix}

\examples{
#To generate a 4^5 gene array
merge2<-matrix(c(-1,-4,-3,2,-2,-5,1,3), 4, 2)
rho2<-matrix(c(.3,.5,.3,.2,.3,.5,.8,2.7),4,2)
theta<-c(rep(.25,3), rep(.25,3),rep(.25,3), c(.2,.35,.79,.01,.93,.47),rho2)
gn2<-gn2(theta, merge2)
gn2
}
\keyword{Joint distribution}
