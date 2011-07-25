%Aufgabe2:Zufallsdaten

nDims = 2;
nVecs = 100;
nDataSets = 10;

DataSetMaxVarMat =[];
for i=1:nDataSets
	XdataMat = rand(nDims,nVecs);

	%plot(XdataMat(1,:),XdataMat(2,:),'x')

	meanVec = mean(XdataMat,nDims);
	XshiftDataMat = XdataMat-repmat(meanVec,1,nVecs);
	%plot(XshiftDataMat(1,:),XshiftDataMat(2,:),'xr');

	xVarMat = [];
	for alphaAngle=1:360
		RotMat = [ cos(alphaAngle), sin(alphaAngle);-sin(alphaAngle), cos(alphaAngle) ];
		XrotShiftDataMat = RotMat*XshiftDataMat;
		xVar = var(XrotShiftDataMat(:,1));
		xVarMat = [ xVarMat; alphaAngle, xVar ];
	end
	[maxVar, maxAlphaAngle] = max(xVarMat(:,2))
	DataSetMaxVarMat = [ DataSetMaxVarMat; maxAlphaAngle, maxVar];	
	plot(xVarMat(:,1),xVarMat(:,2));
	sleep(1.5);
end

plot(DataSetMaxVarMat(:,1),DataSetMaxVarMat(:,2),'xb')
