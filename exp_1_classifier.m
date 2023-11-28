function exp_1_classifier(cDataset,r,PEV,s,p)

% parameters of GRC
para.s=s;
para.p=p;
para.lam=1e-3;

load(sprintf('data/%s/r%d.mat',cDataset,r)); % load data
[x_train,x_test]=x_zscore(x_train,x_test); % zscore
[x_train,x_test]=x_pca(x_train,x_test,PEV); % PCA
label_predict=GRC_4(x_train,x_test,label_train,para); % classification by GRC
accuracy=mean(label_predict==label_test); % calculate mean accuracy

% save the results
save(sprintf('exp_1/accuracy/%s/r%d_PEV%d_s%d_p%d.mat',cDataset,r,round(PEV*100),round(s*10),round(p*10)),'accuracy');