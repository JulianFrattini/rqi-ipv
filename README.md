# Another Look on the Impact of Passive Voice Requirements on Domain Modelling

[![GitHub](https://img.shields.io/github/license/JulianFrattini/rqi-ipv)](./LICENSE)

This repository contains the reanalysis of the empirical study that investigated whether the use of passive voice in natural language requirements specifications has an impact on the domain modeling activity [1]. The authors of the original study disclosed their data at https://doi.org/10.5281/zenodo.7499290 and we reanalyze it with both a frequentist and a Bayesian approach.

## Description

This repository contains the following artifacts:

* data/ : folder containing the experimental data obtained by the original study [1]
  * raw/ : folder containing the raw data
    * [experience.csv](./data/raw/experience.csv) : detailed data about the experience of each participant
    * [participants.csv](./data/raw/participants.csv) : general data about each experience (including an aggregated form of their experience)
    * [requirements.csv](./data/raw/requirements.csv) : meta-data about the requirements that were used in the study
    * [responses.csv](./data/raw/responses.csv) : evaluation of the domain models (i.e., number of missing actors, entities, and associations per domain model)
  * results/ : folder containing the resulting marginal distributions as produced by the Bayesian data analyses
  * [ipv-data.csv](./data/ipv-data.csv) : table compiled from the raw data by the [data preparation script](./src/util/data-preparation.Rmd)
* figures/ : folder containing all figures used in the manuscript reporting this reanalysis
  * dags/ : folder of all directed, acyclic graphs (generated with `ggdag`)
  * marginal/ : folder of all marginal plots (generated with `ggplot`)
* src/ : folder containing all scripts
  * bayesian/ : folder containing the Bayesian re-analysis of the original hypotheses
    * [causal-assumptions.Rmd](./src/bayesian/causal-assumptions.Rmd) : notebook containing the explicit causal assumptions of the studied phenomenon
    * [missing-actors.Rmd](./src/bayesian/missing-actors.Rmd) : regression model estimating the impact on missing actors
    * [missing-associations.Rmd](./src/bayesian/missing-associations.Rmd) : regression model estimating the impact on missing associations
    * [missing-objects.Rmd](./src/bayesian/missing-objects.Rmd) : regression model estimating the impact on missing domain objects
  * frequentist/[frequentist.Rmd](./src/frequentist/frequentist.Rmd) : notebook containing a reproduction of the original data evaluation 
  * html/ : folder containing a precompiled `html` version of each `Rmd` notebook (created with `knitr`) [1]
  * util/ : folder containing all supporting scripts and notebooks
    * [data-loading.R](./src/util/data-loading.R) : script for loading the prepared data
    * [data-preparation.Rmd](./src/util/data-preparation.Rmd) : notebook that prepares and assembles the raw data such that it is fit for reanalysis
    * [marginal-plot-visualization.Rmd](./src/util/marginal-plot-visualization.Rmd) : notebook generating one marginal plot from the three individual marginal plots of each Bayesian analysis
    * [model-eval.R](./src/util/model-eval.R) : script to evaluate the isolated difference of the response variable distribution based on different values of the treatment (passive voice)

## System Requirements

In order to fully utilize this replication package, ensure that you have [R](https://ftp.acc.umu.se/mirror/CRAN/) (version > 4.0) and (RStudio)[https://posit.co/download/rstudio-desktop/#download] installed on your machine. Then, ensure the following steps:

1. Install the `rstan` toolchain by following the instructions for [Windows](https://github.com/stan-dev/rstan/wiki/Configuring-C---Toolchain-for-Windows#r40), [Mac OS](https://github.com/stan-dev/rstan/wiki/Configuring-C---Toolchain-for-Mac), or [Linux](https://github.com/stan-dev/rstan/wiki/Configuring-C-Toolchain-for-Linux) respectively.
2. Restart RStudio and follow the instructions starting with the [Installation of RStan](https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started#installation-of-rstan)
3. Install the latest version of `stan` by running the following commands
```
    install.package("devtools")
    devtools::install_github("stan-dev/cmdstanr")
    cmdstanr::install_cmdstan()
```
4. Install all missing packages via `install.packages(c("tidyverse","ggdag","dagitty","patchwork","brms","marginaleffects","rcompanion","psych"))`
5. Create a folder called *fits* within *src/bayesian/* such that `brms` has a location to place all Bayesian models.
6. Open the `rqi-ipv.Rproj` file with RStudio, which will setup the environment correctly.

## Application

If you want to replicate and assess the evaluation presented in the accompanying manuscript, we recommend looking at the following files in this order. For each script, you can choose the interactive `Rmd` file that allows to inspect and manipulate each variable, or the `html` file, which is a pre-compiled version of each `Rmd` notebook.

1. **Data preparation** ([interactive](./src/util/data-preparation.Rmd) or [static](./src/html/data-preparation.html)) to understand the data under analysis.
2. **Frequentist analysis** ([interactive](./src/frequentist/frequentist.Rmd) or [static](./src/html/frquentist.html)) to understand the frequentist data analysis of the original experiment [1].
3. **Causal assumptions** ([interactive](./src/bayesian/causal-assumptions.Rmd) or [static](./src/html/causal-assumptions.html)) to inspect the causal assumptions about the studied phenomenon. This covers the *modeling* and *identification* step of the applied framework for statistical causal inference [2].
4. **Bayesian data analysis** (files prefixed with `missing-` in the [bayesian](./src/bayesian) and [html](./src/html))  to follow the regression modeling of all three response variables of interest. This covers the *estimation* step of the applied framework for statistical causal inference [2].

## References

[1] Femmer, H., Kučera, J., & Vetrò, A. (2014, September). On the impact of passive voice requirements on domain modelling. In Proceedings of the 8th ACM/IEEE international symposium on empirical software engineering and measurement (pp. 1-4).

[2] Siebert, J. (2023). Applications of statistical causal inference in software engineering. Information and Software Technology, 107198.

## Licensing

Copyright © 2023 Julian Frattini. This work is licensed under the [MIT license](./LICENSE).