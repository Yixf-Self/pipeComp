% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scrna_plot.R
\name{scrna_evalPlot_clust}
\alias{scrna_evalPlot_clust}
\title{scrna_evalPlot_clust}
\usage{
scrna_evalPlot_clust(
  res,
  what = "auto",
  atTrueK = FALSE,
  agg.by = NULL,
  agg.fn = mean,
  scale = FALSE,
  value_format = "\%.2f",
  reorder_rows = TRUE,
  reorder_columns = FALSE,
  show_heatmap_legend = FALSE,
  col = viridisLite::inferno(100),
  col_title_fontsize = 12,
  value_cols = c("black", "white"),
  title = NULL,
  anno_legend = TRUE,
  ...
)
}
\arguments{
\item{res}{Aggregated pipeline results (i.e. the output of `runPipeline` or
`aggregateResults`)}

\item{what}{What to plot (default plots main metrics)}

\item{atTrueK}{Logical; whether to restrict analyses to those giving the 
right number of clusters}

\item{agg.by}{Aggregate results by these columns (default no aggregation)}

\item{agg.fn}{Function for aggregation (default mean)}

\item{scale}{Logical; whether to scale columns (default FALSE)}

\item{value_format}{Format for displaying cells' values (use 
`value_format=""` to disable)}

\item{reorder_rows}{Logical; whether to sort rows (default TRUE). The row 
names themselves can also be passed to specify an order, or a 
`ComplexHeatmap`.}

\item{reorder_columns}{Logical; whether to sort columns}

\item{show_heatmap_legend}{Passed to `Heatmap`}

\item{col}{Colors for the heatmap}

\item{col_title_fontsize}{Fontsize of column titles.}

\item{value_cols}{A vector of length 2 indicating the colors of the values
(above and below the mean), if printed}

\item{title}{Plot title}

\item{anno_legend}{Logical; whether to plot the legend for the datasets}

\item{...}{Passed to `Heatmap`}
}
\value{
One or several `Heatmap` object.
}
\description{
Plotting aggregated evaluation results at the level of clustering for the 
scRNA pipelines.
}
\examples{
data("exampleResults", package="pipeComp")
scrna_evalPlot_clust(exampleResults)

}
