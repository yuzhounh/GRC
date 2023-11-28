# Generalized Representation-based Classification by Lp-norm for Face Recognition
Copyright (C) 2023 Jing Wang

The GRC optimization problem
$$\mathop{\min}_{\alpha}||y-X\alpha||_s^s+\lambda||\alpha||_p^p.$$

Four experiments were conducted to compare GRC with LRC, CRC, and SRC on four benchmark face databases including the AR, FEI, FERET, and UMIST face databases. More benchmark face databases are refered to: https://github.com/yuzhounh/Face_databases.  
**Experiment 1:** Tune the parameters $s$ and $p$ for GRC when principal components that explain 98% of total variance are extracted.  
**Experiment 2:** Compare GRC with LRC, CRC, and SRC when principal components with different percentages (90%, 95%, 98%) of explained variance are extracted.   
**Experiment 3:** Tune the parameters $s$ and $p$ for GRC when different numbers of principal components (54, 120, 200, 300) are extracted.  
**Experiment 4:** Compare GRC with LRC, CRC, and SRC when different numbers of principal components (10:10:300) are extracted.  

# Usage
Run `main.m` to play this demo. 

# Contact information
Jing Wang  
yuzhounh@163.com   
2023-11-23 10:19:28  
