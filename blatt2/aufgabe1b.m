%Aufgabe3: Kovarianz

nDims = 2;
nVecs = 100;
nDataSets = 1;
TransMat = [ 0.25, 1.299; -0.433, 0.75 ];

DataSetMaxVarMat =[];
for i=1:nDataSets
	XdataMat = rand(nDims,nVecs);


	meanVec = mean(XdataMat,nDims);
	XdataMat = XdataMat-repmat(meanVec,1,nVecs);
	XdataMat = TransMat*rand(nDims,nVecs);

%	plot(XdataMat(1,:),XdataMat(2,:),'x')

	mVar = 100;
	vVar = rand(nDims,1);
	[eigenVec] = firstEigenVec (mVar, vVar, XdataMat)
	%Eigenvec liegt von nullpunkt aus in richtung der ersten hauptkomponente
	%	== richtung groesster varianz

	CovMat = cov(XdataMat');
	vCvMat =[];
	for alphaAngle=1:360
		DirVec = [cos(alphaAngle), sin(alphaAngle) ]';
		vCv = DirVec' * CovMat * DirVec;
		vCvMat = [ vCvMat ; alphaAngle, vCv ]; 
	end
	[maxvCv, maxvCvAlphaAngle] = max(vCvMat(:,2))
%	plot(iTerMat(1,:),iTerMat(2,:),'lr');
end

