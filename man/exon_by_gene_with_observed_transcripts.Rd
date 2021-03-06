% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Utilities.R
\name{exon_by_gene_with_observed_transcripts}
\alias{exon_by_gene_with_observed_transcripts}
\title{Extract exons by genes for which data are available in quantification files}
\usage{
exon_by_gene_with_observed_transcripts(adb, quantification_files)
}
\arguments{
\item{adb}{A valid \code{EnsDb} object.}

\item{quantification_files}{the quantification files. A vector of pathes.}
}
\value{
A \code{GRangesList} object containing exons by genes for which 
                               data are available in quantification files.
}
\description{
Extract exons by genes for which data are available in quantification files
}
\examples{
\dontrun{
   require(EnsDb.Hsapiens.v86)
   edb <- EnsDb.Hsapiens.v86
   quantification_files <- 'file_path'
   ebgwot <- exon_by_gene_with_observed_transcripts(edb, 
                                                   quantification_files)
   bed_file_content_gr <- GRanges("chr16",ranges = IRanges(start=23581002, 
                                                           end=23596356))
   bed_file_filter(ebgwot, bed_file_content_gr)
}

}
