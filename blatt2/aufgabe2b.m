% Aufgabe 2: Versteckte Struckturen

load("../data/Hidden1.mat");
%load("../data/Hidden2.mat");
% this gives us Xdata

[nDim , nVal] = size(Xdata);
curPos = 1;
for iDim=1:nDim
	for jDim=iDim:nDim
		subplot(8,8,curPos);
		plot(Xdata(iDim,:),Xdata(jDim,:),"or");
		curPos = curPos +1;
	end
end
