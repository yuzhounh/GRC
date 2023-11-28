function exp_4_classifier(cDataset,algo,r,dim)

load(sprintf('data/%s/r%d.mat',cDataset,r)); % load data
[x_train,x_test]=x_zscore(x_train,x_test); % zscore
[x_train,x_test]=x_pca(x_train,x_test,dim); % PCA

% set the parameters for various algorithms and datasets
if strcmp(algo,'LRC')
    label_predict=LRC(x_train,x_test,label_train);
else
    if strcmp(algo,'CRC')
        s=2.0;
        p=2.0;
    elseif strcmp(algo,'SRC')
        s=2.0;
        p=1.0;
    elseif strcmp(algo,'GRC')
        if strcmp(cDataset,'AR')
            s=1.8;
            p=1.2;
        elseif strcmp(cDataset,'FERET')
            s=1.8;
            p=1.2;
        end
    end

    % parameters
    para.s=s;
    para.p=p;
    para.lam=1e-3;
    label_predict=GRC_4(x_train,x_test,label_train,para); % classification
end

% calculate mean accuracy
accuracy=mean(label_predict==label_test);

% save the results
save(sprintf('accuracy/%s/%s_r%d_dim%d.mat',cDataset,algo,r,dim),'accuracy');