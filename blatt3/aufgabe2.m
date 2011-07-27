% Blatt 3: Dimensionsreduktion von Codon-Usage Vektoren
%	Aufgabe 2: Multidimensionale Skalierung

path(path,'../funktions/');

%load("../data/EcoliRSCU.mat")
%load("../data/BsubRSCU.mat")
% Variables are 'Vectors' and 'Labels'

%[nDims, nVecs ] = size(Vectors);

%DistMat = zeros(nVecs);

%for iTer=1:nVecs
%	for jTer=iTer:nVecs
%		DistMat(iTer,jTer) = norm(Vectors(:,iTer) - Vectors(:,jTer),1);
%	end
%end
%save("-binary", "../data/Dist.mat",DistMat);
%save("-ascii", "../data/Dist.ascii",DistMat);

load('/c1/scratch/ralph/distmat.mat');
nVecs = size(DistMat,2);

SquareDistMat = DistMat.^2;

RowMeanVec = mean(SquareDistMat,2);
ColMeanVec = mean(SquareDistMat,1);
MeanVal = 1/(nVecs^2) * (sum(sum(SquareDistMat,1),2));

GramMat = -1/2 * ( SquareDistMat - repmat(RowMeanVec,size(SquareDistMat)) - repmat(ColMeanVec,size(SquareDistMat)) + repmat(MeanVal,size(SquareDistMat)));

nHK = 3;
mVar = 300;
vVar = rand(nDim,1);

EigMat = nEigenVec(nHK,mVar,vVar,GramMat);
ProjMat = EigMat'*GramMat;

plot(ProjMat(1,:),ProjMat(2,:),"or");
