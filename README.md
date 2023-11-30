# Another Look on the Impact of Passive Voice Requirements on Domain Modelling

[![GitHub](https://img.shields.io/github/license/JulianFrattini/rqi-ipv)](./LICENSE)

This repository contains the reanalysis of the empirical study that investigated whether the use of passive voice in natural language requirements specifications has an impact on the domain modeling activity [1]. The authors of the original study disclosed their data at https://doi.org/10.5281/zenodo.7499290 and we reanalyze it with both a frequentist and a Bayesian approach.

## Description

This repository contains the following artifacts:

* data/ : folder containing the raw data
  * [experience.csv](./data/experience.csv) : detailed data about the experience of each participant
  * [participants.csv](./data/participants.csv) : general data about each experience (including an aggregated form of their experience)
  * [requirements.csv](./data/requirements.csv) : meta-data about the requirements that were used in the study
  * [responses.csv](./data/responses.csv) : evaluation of the domain models (i.e., number of missing actors, entities, and associations per domain model)
* src/ : folder containing all scripts
  * html/ : folder containing a precompiled `html` version of each `Rmd` notebook (created with `knitr`)
  * [frequentist.Rmd](./src/frequentist.Rmd) : recovery of the frequentist analysis from the original study [1]

## References

[1] Femmer, H., Kučera, J., & Vetrò, A. (2014, September). On the impact of passive voice requirements on domain modelling. In Proceedings of the 8th ACM/IEEE international symposium on empirical software engineering and measurement (pp. 1-4).

## Licensing

Copyright © 2023 Julian Frattini. This work is licensed under the [MIT license](./LICENSE).