function [ szamtani, mertani, harmonikus ] = kozepek1( x )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

if ~isvector(x)
    error('Vektor kellene ide')
elseif nargin ~= 1
    error('Egy darabot!44!!')
elseif isempty(x)
    error('Rakjal mar bele vmit')
end
y = 6;
szamtani = mean(x);
mertani = geomean(x);
harmonikus = harmmean(x);

end

