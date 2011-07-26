% Aufgabe 2: Versteckte Struckturen
% Teil C : Eigenwertspektrum

load("../data/Hidden1.mat");
%load("../data/Hidden2.mat");
% this gives us Xdata

[nDim , nVal] = size(Xdata);

mVar = 100;
vVar = rand(nDim,1);

EigMat = nEigenVec(2,mVar,vVar,Xdata);

proj = EigMat'*Xdata;

plot(proj(1,:),proj(2,:),"or")
