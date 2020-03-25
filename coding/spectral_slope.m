%Computes spectral slope of a given spectra over a specified frequency range.

%Inputs:
%>f_fit is the frequency range over which the spectral slope is being fitted.
%>f_full is the total frequency range.
%>X is the spectra over which the spectral slope is being fitted.

%--------------------------------------------------
%Mitchell Chandler
%Last updated: 27/11/2019
%--------------------------------------------------

function [Y,slope] = spectral_slope(f_fit,f_full,X)
C = polyfit(log(f_fit),log(X),1);
Y = exp(C(2)).*f_full.^(C(1));
slope = C(1);
end