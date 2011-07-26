function [WVec] = firstEigenVec (mVar, vVar, CovMat)

	for iTer=1:mVar
		WVec = CovMat*vVar;
		vVar = WVec/norm(WVec);
	end
end
