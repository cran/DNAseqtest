\name{DNAseqtest-package}
\alias{DNAseqtest-package}
\alias{DNAseqtest}
\docType{package}
\title{Generating and Testing DNA Sequences}
\description{Generates DNA sequences based on Markov model techniques for matched sequences. This can be generalized to several sequences. The sequences (taxa) are then arranged in an evolutionary tree (phylogenetic tree) depicting how taxa diverge from their common ancestors. This gives the tests and estimation methods for the parameters of different models. Standard phylogenetic methods assume stationarity, homogeneity and reversibility for the Markov processes, and  often impose further restrictions on the parameters.}
\details{
\tabular{ll}{
Package: \tab DNAseqtest\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2016-03-26\cr
License: \tab GPL-2\cr
}
}
\author{
Faisal Ababneh, John Robinson, Lars S Jermiin and Hasinur Rahaman Khan
Maintainer: Hasinur Rahaman Khan <hasinurkhan@gmail.com>
}
\references{
Lars Sommer Jermiin, Vivek Jayaswal, Faisal Ababneh, John Robinson (2008). Phylogenetic model evaluation. Bioinformatics, Volume 452 of the series Methods in Molecular Biology, 331-364.

Faisal Ababneh, Lars S Jermiin, Chunsheng Ma, John Robinson (2006). Matched-pairs tests of homogeneity with applications to homologous nucleotide sequences. Bioinformatics, 22(10), 1225-1231.

Faisal Ababneh, Lars S Jermiin, John Robinson (2006). Generation of the Exact Distribution and Simulation of Matched Nucleotide Sequences on a Phylogenetic Tree. Journal of mathematical modelling and algorithms, 5(3), 291-308.
}
\keyword{Sequence test}
\examples{
#To generate a 4^5 gene array
merge2<-matrix(c(-1,-4,-3,2,-2,-5,1,3),4,2)
theta<-c(rep(.25,3), rep(.25,3), rep(.25,3), c(.2,.35,.79,.01,.93,.47), 3,.1,.5,.8)
gn.sec<-gn(theta, merge2)
gn.sec
}
