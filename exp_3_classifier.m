function exp_3_classifier(cDataset,r,dim,s,p)

% parameters of GRC
para.s=s;
para.p=p;
para.lam=1e-3;

load(sprintf('data/%s/r%d.mat',cDataset,r)); % load data
[x_train,x_test]=x_zscore(x_train,x_test); % zscore
[x_train,x_test]=x_pca(x_train,x_test,dim); % PCA
label_predict=GRC_4(x_train,x_test,label_train,para); % classification by GRC
accuracy=mean(label_predict==label_test); % calculate mean accuracy

% save the results
save(sprintf('exp_3/accuracy/%s/r%d_dim%d_s%d_p%d.mat',cDataset,r,dim,round(s*10),round(p*10)),'accuracy');