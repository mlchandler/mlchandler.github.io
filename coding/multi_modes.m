%Calculates all the modes of a given matrix A

%--------------------------------------------------
%Mitchell Chandler
%Last updated: 19/01/2020
%--------------------------------------------------

function [mm] = multi_modes(A)
A = A(isfinite(A)); %removes NaNs and INFs from data 
U = unique(A); %find all unique entries in A
H=histc(A,U); %frequency count of each unique entry in A
mm = U(H==max(H)); %find the unique entries with the highest frequency (modes)
end
