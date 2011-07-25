%Aufgabe2:Zufallsdaten

nDims = 2;
nVecs = 100;

XdataMat = rand(nDims,nVecs);

%plot(XdataMat(1,:),XdataMat(2,:),'x')

meanVec = mean(XdataMat,nDims);
XshiftDataMat = XdataMat-repmat(meanVec,1,nVecs);
plot(XshiftDataMat(1,:),XshiftDataMat(2,:),'x')
