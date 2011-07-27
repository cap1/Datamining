% Aufgabe 2: Versteckte Struckturen
% Teil C : Eigenwertspektrum

path(path,'../funktions/');

load("../data/Hidden1.mat");
%load("../data/Hidden2.mat");
% this gives us Xdata

[nDim , nVal] = size(Xdata);

CovMat = cov(Xdata');
bar(sort(diag(CovMat),'descend'))
