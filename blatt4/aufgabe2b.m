%Blatt 4:  Anwendugnder Hauptkomponentenanalyse auf Massensprektrometrie-Daten aus dem Bereich der Metabolomik
%	Aufgabe 2: Anwendung der Hauptkomponentenanalyse

path(path,'../funktions/');

Xdata = csvread("../data/metabolomics.csv");
XDataMat = (Xdata(:,6:77))';

[nDim, nVal] = size(XDataMat);

nHK = 2;
mVar = 300;
vVar = rand(nDim,1);

EigMat = nEigenVec(nHK,mVar,vVar,XDataMat);
ProjMat = EigMat'*XDataMat;

hold on
plot(ProjMat(1,:),ProjMat(2,:),"ob")
legend('1.HK','2.HK','south');
hold off
