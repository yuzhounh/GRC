function exp_2_classifier(cDataset,algo,r,PEV)

load(sprintf('data/%s/r%d.mat',cDataset,r)); % load data
[x_train,x_test]=x_zscore(x_train,x_test); % zscore
[x_train,x_test]=x_pca(x_train,x_test,PEV); % PCA

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
            s=1.7;
            p=1.3;
        elseif strcmp(cDataset,'FEI')
            s=2.0;
            p=1.1;
        elseif strcmp(cDataset,'FERET')
            s=1.7;
            p=1.4;
        elseif strcmp(cDataset,'UMIST')
            s=1.7;
            p=1.5;
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
save(sprintf('accuracy/%s/%s_r%d_PEV%d.mat',cDataset,alog,r,round(PEV*100)),'accuracy');
