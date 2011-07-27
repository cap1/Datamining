% Blatt 3: Dimensionsreduktion von Codon-Usage Vektoren
% 	Aufgabe 1: RSCU-Daten und PCA


load("../data/EcoliRSCU.mat")
% Variables are 'Vectors' and 'Labels'

[nDim , nVal] = size(Vectors);

CovMat = cov(Vectors');
%bar(sort(diag(CovMat),'descend'))

% eigentlich die ersten 5 Hauptkomponennten
nHK = 5;

mVar = 300;
vVar = rand(nDim,1);

EigMat = nEigenVec(nHK,mVar,vVar,Vectors);

proj = EigMat'*Vectors;

plot(proj(1,:),proj(2,:),"or")
