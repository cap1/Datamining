% Blatt 3: Dimensionsreduktion von Codon-Usage Vektoren
% 	Aufgabe 1: RSCU-Daten und PCA

path(path,'../funktions/');

load("../data/EcoliRSCU.mat")
% Variables are 'Vectors' and 'Labels'

[nDim , nVal] = size(Vectors);

CovMat = cov(Vectors');
%bar(sort(diag(CovMat),'descend'))

% eigentlich die ersten 3/5 Hauptkomponennten
nHK = 3;

mVar = 300;
vVar = rand(nDim,1);

EigMat = nEigenVec(nHK,mVar,vVar,Vectors);
ProjMat = EigMat'*Vectors;

% Sort via Labels
NormGenMat = ProjMat(:,(Labels==0));
PutGenMat = ProjMat(:,(Labels==1));
HighGenMat = ProjMat(:,(Labels==2));

hold on
plot(NormGenMat(1,:),NormGenMat(2,:),"og")
plot(PutGenMat(1,:),PutGenMat(2,:),"ob")
plot(HighGenMat(1,:),HighGenMat(2,:),"or")
hold off
