\name{artomat}
\alias{artomat}
\title{Transforming \eqn{4^K} Array to \eqn{m \times K} Matrix}
\description{This function transfers any array to a matrix.}
\usage{artomat(fobs)}
\arguments{
  \item{fobs}{a \eqn{4^K} array, containing the observed divergent frequencies for K matched sequences}
}
\details{This function transfers any \eqn{4^K} array containing the observed divergent frequencies of K matched sequences to an m x K matrix, where m is the sum of the frequencies in the \eqn{4^K} observed divergence array.}
\value{An m x K matrix}
\references{
Faisal Ababneh, Lars S Jermiin, Chunsheng Ma, John Robinson (2006). Matched-pairs tests of homogeneity with applications to homologous nucleotide sequences. Bioinformatics, 22(10), 1225-1231.
}
\seealso{gn2, gn, Fmatrix}
\keyword{Array}
