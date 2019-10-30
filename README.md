[![Build Status](https://travis-ci.org/resplab/BODEindex.svg?branch=master)](https://travis-ci.org/resplab/BODEindex)
[![CRAN Status](https://www.r-pkg.org/badges/version/BODEindex)](https://cran.r-project.org/web/packages/BODEindex/index.html)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

## BODEindex

R package for the BODE (body-mass index, airflow obstruction, dyspnea, and excercise capacity index) index: predicts the risk of death from any and respiratory causes in COPD patients described in [https://www.nejm.org/doi/full/10.1056/nejmoa021322](https://www.nejm.org/doi/full/10.1056/nejmoa021322).

### Installation

You can download the latest development version from GitHub:

```
install.packages("devtools")
devtools::install_github("resplab/BODEindex")
```


### BODE Index

To get BODE index, you will need to pass in patient's risk factors. For example: 

```
BODEindex (FEV1 = 40, mMRC = 3, BMI = 22, walk = 100)
```

The ***BODEindex()*** function returns score with possible values range from 0 to 10, with higher scores indicating a higher risk of death from any and respiratory causes in COPD patients.

### Cloud-based API Access
The [PRISM platform](http://prism.resp.core.ubc.ca) allows users to access BODEindex through the cloud. A MACRO-enabled Excel-file can be used to interact with the model and see the results. To download the PRISM Excel template file for BODEindex please refer to the [PRISM model repository](http://resp.core.ubc.ca/ipress/prism).


### Citation

Please cite: 

```
Celli, B. R., Cote, C. G., Marin, J. M., Casanova, C., Montes de Oca, M., Mendez, R. A., ... & Cabral, H. J. (2004). The body-mass index, airflow obstruction, dyspnea, and exercise capacity index in chronic obstructive pulmonary disease. New England Journal of Medicine, 350(10), 1005-1012.
```
