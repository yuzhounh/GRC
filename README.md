# Generalized Representation-based Classification by Lp-norm for Face Recognition

MATLAB experiments comparing generalized representation-based classification with LRC, CRC, and SRC on face datasets.

[![License: GPL-3.0](https://img.shields.io/badge/License-GPL--3.0-D4AF37?style=flat-square)](LICENSE)

Copyright (C) 2023 Jing Wang

The GRC optimization problem
$$\mathop{\min}_{\alpha}||y-X\alpha||_s^s+\lambda||\alpha||_p^p.$$

Four experiments were conducted to compare GRC with LRC, CRC, and SRC on four benchmark face databases including the AR, FEI, FERET, and UMIST face databases. More benchmark face databases are refered to: https://github.com/yuzhounh/Face-databases.
**Experiment 1:** Tune the parameters $s$ and $p$ for GRC when principal components that explain 98% of total variance are extracted.  
**Experiment 2:** Compare GRC with LRC, CRC, and SRC when principal components with different percentages (90%, 95%, 98%) of explained variance are extracted.   
**Experiment 3:** Tune the parameters $s$ and $p$ for GRC when different numbers of principal components (54, 120, 200, 300) are extracted.  
**Experiment 4:** Compare GRC with LRC, CRC, and SRC when different numbers of principal components (10:10:300) are extracted.  

## Prerequisites and Execution

The tracked [faces/](faces/) directory contains AR, FEI, FERET, and UMIST matrices, and [load_data.m](load_data.m) reads inputs from that directory.

Run from the repository directory in MATLAB. Review the local parallel-pool helper [para_workers.m](para_workers.m) and ensure Parallel Computing Toolbox is available for the parallel experiment stages.

## Quick Start
Run `main.m` to play this demo. 

## Repository Structure

- [main.m](main.m): all four experiment/analysis pairs.
- [load_data.m](load_data.m): split preparation.
- `GRC_1.m` through `GRC_4.m` and [LRC.m](LRC.m): classifiers.
- [faces/](faces/): bundled inputs.

## License

See the existing [GPL-3.0 license](LICENSE).

## Contact
Jing Wang  
yuzhounh@163.com   
2023-11-23 10:19:28
