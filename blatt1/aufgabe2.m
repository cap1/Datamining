%Aufgabe2:Zufallsdaten

nDims = 2;
nVecs = 100;

XdataMat = rand(nDims,nVecs);

%plot(XdataMat(1,:),XdataMat(2,:),'x')

meanVec = mean(XdataMat,nDims);
XshiftDataMat = XdataMat-repmat(meanVec,1,nVecs);
%plot(XshiftDataMat(1,:),XshiftDataMat(2,:),'xr');

maxAlphaAngle =0;
maxVar = 0;
for alphaAngle=0:360

	RotMat = [ cos(alphaAngle), sin(alphaAngle);-sin(alphaAngle), cos(alphaAngle) ];
	XrotShiftDataMat = RotMat*XshiftDataMat;
	xVar = var(XrotShiftDataMat(:,1));
	if xVar > maxVar
		maxVar = xVar;
		maxAlphaAngle = alphaAngle;
	end
end

maxVar
maxAlphaAngle
%plot(XrotShiftDataMat(1,:),XrotShiftDataMat(2,:),'xb');
