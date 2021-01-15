function eval_sigma(dataset_name)
    dd = 5;
    TPRS = zeros(1, dd);
    FPRS = zeros(1, dd);
    sigmas = [0.01,0.05,0.1,0.5,1];
    for i = 1:dd
        tic;
        model = evaluate(dataset_name, 8000, 0.1, 0, sigmas(i), 10, 0.98, 20);
        toc;
        TPRS(1,i) = model.precision;
        FPRS(1,i) = model.FPR;
    end

    % saving...
    save(['D:\results\',dataset_name,'\BRST\sigma_TPRS.mat'],'TPRS');
    save(['D:\results\',dataset_name,'\BRST\sigma_FPRS.mat'],'FPRS');
end