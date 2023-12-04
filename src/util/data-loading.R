#' Load the data from the prepared csv sheet and ensure that all categorical
#' variables are properly cast as factors.
load.data <- function() {
  # load the data from the disc
  d <- read.csv(file="../../data/ipv-data.csv")
  
  # define the categories of the categorical variables
  cat_age <- c("19-24", "25-30", "31-40")
  cat_exp <- c("no experience", "up to 6 months", "6 to 12 months", "more than 12 months")
  cat_prg <- c("Unknown", "Bachelor", "Master", "Doctorate")
  
  # cast categorical variables to factors
  d$Age <- factor(d$Age, levels=cat_age, ordered=TRUE)
  d$ExpProgAca <- factor(d$ExpProgAca, levels=cat_exp, ordered=TRUE)
  d$ExpProgInd <- factor(d$ExpProgInd, levels=cat_exp, ordered=TRUE)
  d$ExpSEAca <- factor(d$ExpSEAca, levels=cat_exp, ordered=TRUE)
  d$ExpSEInd <- factor(d$ExpSEInd, levels=cat_exp, ordered=TRUE)
  d$ExpREAca <- factor(d$ExpREAca, levels=cat_exp, ordered=TRUE)
  d$ExpREInd <- factor(d$ExpREInd, levels=cat_exp, ordered=TRUE)
  d$Program <- factor(d$Program, levels=cat_prg, ordered=TRUE)
  
  # return the adjusted data frame
  return(d)
}