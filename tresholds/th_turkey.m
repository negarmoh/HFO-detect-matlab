% Module for threshold calculation.
function [ths_value]=th_turkey(signal,ths)
%%
% Calculate threshold bz Turkey method.
% 
% Parameters:
% -----------
%     signal - numpy array
%     ths - number of interquartile interval above the 75th percentile
%     
% Returns:
% -----------
%     ths_value - value of the threshold
%%
ths_value = prctile(signal,75) + ((ths*100)*prctile(signal,75)-prctile(signal,25));
