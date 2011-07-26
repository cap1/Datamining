%Aufgabe3: Kovarianz

nDims = 2;
nVecs = 100;
nDataSets = 1;
TransMat = [ 0.25, 1.299; -0.433, 0.75 ];

mVar = 100;
nVal = 3;

for i=1:nDataSets
	XdataMat = rand(nDims,nVecs);

	XdataMat = TransMat*rand(nDims,nVecs);
	meanVec = mean(XdataMat,nDims);
	XdataMat = XdataMat-repmat(meanVec,1,nVecs);

	vVar = rand(nDims,1);
	[neigenVecMat] = nEigenVec (nVal, mVar, vVar, XdataMat)
end
