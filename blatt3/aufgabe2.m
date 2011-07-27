% Blatt 3: Dimensionsreduktion von Codon-Usage Vektoren
%	Aufgabe 2: Multidimensionale Skalierung

path(path,'../funktions/');

load("../data/EcoliRSCU.mat")
%load("../data/BsubRSCU.mat")
% Variables are 'Vectors' and 'Labels'

[nDims, nVecs ] = size(Vectors);

%DistMat = zeros(nVecs);

%for iTer=1:nVecs
%	for jTer=iTer:nVecs
%		DistMat(iTer,jTer) = norm(Vectors(:,iTer) - Vectors(:,jTer),1);
%	end
%end
%save("-binary", "../data/Dist.mat",DistMat);
%save("-ascii", "../data/Dist.ascii",DistMat);

load('/c1/scratch/ralph/distmat.mat');
