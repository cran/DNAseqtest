\name{Smatrix}
\alias{Smatrix}
\title{Symmetric Matrix S}
\description{This function calculates the symmetric matrix S.}
\usage{Smatrix(s, pix)}
\arguments{
  \item{s}{a vector of variables containing the six free parameters in the S
matrix}
  \item{pix}{a vector giving the stationary probabilities for the four nucleotides
A, C, G and T}
}
\details{This function calculates the matrix S, which we used to calculate the
rate matrix R.}
\value{A 4 x 4 symmetric matrix}
\references{
Faisal Ababneh, Lars S Jermiin, Chunsheng Ma, John Robinson (2006). Matched-pairs tests of homogeneity with applications to homologous nucleotide sequences. Bioinformatics, 22(10), 1225-1231.
}
\seealso{Pt, Fmatrix, gn ,gn2}
\examples{
s<-c(.1,.2,.3,.4,.5,.6)
pi<-c(.1,.1,.1,.7)
sm<-Smatrix(s, pi)
sm
}
\keyword{Symmetry matrix}
