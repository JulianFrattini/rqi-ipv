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
  * [ipv-data.csv](./data/ipv-data.csv) : table compiled from the raw data by the [data preparation script](./src/util/data-preparation.Rmd)
* figures/ : folder containing all figures used in the manuscript reporting this reanalysis
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
    * [model-eval.R](./src/util/model-eval.R) : script to evaluate the isolated difference of the response variable distribution based on different values of the treatment (passive voice)

## References

[1] Femmer, H., Kučera, J., & Vetrò, A. (2014, September). On the impact of passive voice requirements on domain modelling. In Proceedings of the 8th ACM/IEEE international symposium on empirical software engineering and measurement (pp. 1-4).

## Licensing

Copyright © 2023 Julian Frattini. This work is licensed under the [MIT license](./LICENSE).