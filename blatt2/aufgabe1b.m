%Aufgabe3: Kovarianz

nDims = 2;
nVecs = 100;
nDataSets = 1;
TransMat = [ 0.25, 1.299; -0.433, 0.75 ];

DataSetMaxVarMat =[];
for i=1:nDataSets
	XdataMat = rand(nDims,nVecs);

	XdataMat = TransMat*rand(nDims,nVecs);
	meanVec = mean(XdataMat,nDims);
	XdataMat = XdataMat-repmat(meanVec,1,nVecs);

	mVar = 100;
	vVar = rand(nDims,1);
	[eigenVec] = firstEigenVec (mVar, vVar, XdataMat)
	%Eigenvec liegt von nullpunkt aus in richtung der ersten hauptkomponente
	%	== richtung groesster varianz
	[Val, Vec ] = eig(cov(XdataMat'))
	hold on
	plot(XdataMat(1,:),XdataMat(2,:),'*')
	plot(eigenVec(1),eigenVec(2), "xr")
	plot(0,0, "og")
	plot(Val(:,1),Val(:,2), "xg")
	hold off
end
