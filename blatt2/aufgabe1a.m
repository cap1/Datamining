%Aufgabe 1 a) Eigenvektorbestimmung

nDims = 2;
nVecs = 100;
nDataSets = 10;

TransMat = [ 0.25, 1.299; -0.433, 0.75 ];

DataSetMaxVarMat =[];
for i=1:nDataSets
	XdataMat = TransMat*rand(nDims,nVecs);

	plot(XdataMat(1,:),XdataMat(2,:),'x')

	xVarMat = [];
	vCvMat = [];
	for alphaAngle=1:360
		RotMat = [ cos(alphaAngle), sin(alphaAngle);-sin(alphaAngle), cos(alphaAngle) ];
		XrotShiftDataMat = RotMat*XdataMat;
		xVar = var(XrotShiftDataMat(:,1));
		xVarMat = [ xVarMat; alphaAngle, xVar ];	

		CovMat = cov(XrotShiftDataMat');
		DirVec = [cos(alphaAngle), sin(alphaAngle) ]';
		vCv = DirVec' * CovMat * DirVec;
		vCvMat = [ vCvMat ; alphaAngle, vCv ]; 
	end
	[maxXVar, maxXAlphaAngle] = max(xVarMat(:,2));
	DataSetMaxVarMat = [ DataSetMaxVarMat; maxXAlphaAngle, maxXVar];	

	[maxvCv, maxvCvAlphaAngle] = max(vCvMat(:,2))

%	plot(xVarMat(:,1),xVarMat(:,2));
%	sleep(1.5);
end

%plot(DataSetMaxVarMat(:,1),DataSetMaxVarMat(:,2),'xb')
