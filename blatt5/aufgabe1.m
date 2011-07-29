
path(path,'../funktions/');

load("../data/Hidden1.mat");
%load("../data/Hidden2.mat");
% this gives us Xdata

[nDim, nVec] = size(Xdata);

SquareDataMat = repmat(sum(Xdata.^2,1),nVec,1);

DistMat = SquareDataMat - 2 * Xdata' * Xdata + SquareDataMat';

SMat = sammon(Xdata',rand(nVec,2),100,'steps',0.2,DistMat);

save('-binary',"../data/Sammon1.mat",'SMat');
load("../data/Sammon1.mat");

%save('-binary',"../data/Sammon2.mat",'SMat');
%load("../data/Sammon2.mat");

plot(SMat(:,1),SMat(:,2),"xr")
