%Plots a line and a shaded error bar around the line.

%--------------------------------------------------
%Mitchell Chandler
%Last updated: 27/08/2020
%--------------------------------------------------

function [] = shaded_error(x,y,err,colour,a,lwidth)
%default alpha (opacity) and linewidth values if none are given
if ~exist('a','var') %
      a = 0.2;
 end
if ~exist('lwidth','var')
      lwidth = 2;
end
%plot
hold on
fill([x;flipud(x)],[y-err;flipud(y+err)],colour,'linestyle','none','facealpha',a); %shaded error
plot(x,y,'Color',colour,'LineWidth',lwidth) %line
end

