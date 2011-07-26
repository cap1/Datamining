function [nEigenVecMat] = nEigenVec ( nVal, mVar, vVar, XdataMat)

	nDims = size(XdataMat,1);
	CovMat=cov(XdataMat');
	nEigenVecMat = zeros(nDims,nVal);
	for jTer=1:nVal
		eigenVec = firstEigenVec(mVar, vVar, CovMat);
		eigenVal = eigenVec' * CovMat * eigenVec;
		CovMat = CovMat - (eigenVal * eigenVec * eigenVec');
		nEigenVecMat(:,jTer) = eigenVec;
	end
end
