% Aufgabe 2: Versteckte Struckturen

path(path,'../funktions/');

%load("../data/Hidden1.mat");
load("../data/Hidden2.mat");
% this gives us Xdata

[nDim , nVal] = size(Xdata);

for curDim=1:nDim
	hist(Xdata(curDim,:),25)
	pause(4);
end
