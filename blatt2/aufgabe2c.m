% Aufgabe 2: Versteckte Struckturen
% Teil C : Eigenwertspektrum

load("../data/Hidden1.mat");
%load("../data/Hidden2.mat");
% this gives us Xdata

[nDim , nVal] = size(Xdata);

CovMat = (Xdata');
bar(sort(diag(CovMat),'descend'))
