%Blatt 4:  Anwendugnder Hauptkomponentenanalyse auf Massensprektrometrie-Daten aus dem Bereich der Metabolomik
%	Aufgabe 2: Anwendung der Hauptkomponentenanalyse

Xdata = csvread("../data/metabolomics.csv");

%XdataVec = mean(XdataVec(:,6:77),2);

XDataMat = (Xdata(:,6:77))';

[nDims, nVals] = size(XDataMat);

CovMat = cov(XDataMat');
bar(sort(diag(CovMat),'descend'))
