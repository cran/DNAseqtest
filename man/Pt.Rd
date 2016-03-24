\name{Pt}
\alias{Pt}
\title{Transition Probability Function}
\description{This function calculates the transition probability function for a process
during a period of time.}
\usage{Pt(S, Pi, t)}
\arguments{
  \item{S}{a 4 x 4 symmetric matrix}
  \item{Pi}{a diagonal matrix containing the stationary distribution for the
process}
  \item{t}{a period of time describing the length of the process}
}
\details{This function needs the 4 x 4 symmetric matrix S, II and the process
length t in order to find the transition probability over that process,
where \eqn{P_{ij}(t)} is the probability that the ith nucleotide changes to the
j-th nucleotide during the period of t.}
\value{A 4 x 4 matrix containing the transition probabilities for a process.}
\references{
Faisal Ababneh, Lars S Jermiin, Chunsheng Ma, John Robinson (2006). Matched-pairs tests of homogeneity with applications to homologous nucleotide sequences. Bioinformatics, 22(10), 1225-1231.
}
\seealso{Smatrix}
\examples{
Pi<-diag(c(.1,.1,.1,.7)) 
S<-Smatrix(c(.3,.3,.3,.3,.3,.3),diag(Pi))
t<-1
p<-Pt(S, Pi, t)
p
}
\keyword{Transition probability}
