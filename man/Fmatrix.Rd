\name{Fmatrix}
\alias{Fmatrix}
\title{Joint Distribution for Two Matched Sequences}
\description{This function calculates the joint distribution function for two edge tree.}
\usage{Fmatrix(t1, t2, f0, Sx2, Sy2, Pix, Piy)}
\arguments{
  \item{t1}{represents the length from the tree root to the first node}
  \item{t2}{represents the length from the tree root to the second node}
  \item{f0}{the initial distribution for the four nucleotides}
  \item{Sx2}{a 4 x 4 symmetric matrix related to the first edge}
  \item{Sy2}{a 4 x 4 symmetric matrix related to the second edge}
  \item{Pix}{a diagonal matrix for the stationary distribution of the first edge}
  \item{Piy}{a diagonal matrix for the stationary distribution of the second edge}
}
\details{This function calculates the joint distribution function for a two edge tree with different edge lengths, stationary distributions and differentS matrices.}
\value{A 4 x 4 matrix containing the joint edges}
\references{
Faisal Ababneh, Lars S Jermiin, Chunsheng Ma, John Robinson (2006). Matched-pairs tests of homogeneity with applications to homologous nucleotide sequences. Bioinformatics, 22(10), 1225-1231.
}
\seealso{gn, Smatrix}
\examples{
f0<-c(.25,.25,.25,.25)
Pi1<-diag(c(.2,.2,.2,.4))
Pi2<-diag(c(.1,.1,.1,.7))
S1<-Smatrix(c(.2,.2,.2,.2,.2,.2),diag(Pi1))
S2<-Smatrix(c(.3,.3,.3,.3,.3,.3),diag(Pi2))
fm<-Fmatrix(1, .5, f0, S1, S2, Pi1, Pi2)
fm
}
\keyword{Joint distribution}
