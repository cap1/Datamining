function [WVec] = firstEigenVec (mVar, vVar, XdataMat)

	CovMat = cov(XdataMat');
	for iTer=1:mVar
		WVec = CovMat*vVar;
		vVar = WVec/norm(WVec);
	end
end
