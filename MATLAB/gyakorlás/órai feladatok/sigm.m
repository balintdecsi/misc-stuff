function y = sigm( a )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

if isvector(a)
    y_v = 1 ./ (1 + exp(a));
    figure, plot(a,y_v);
elseif ismatrix(a)
    z_m = 1 ./ (1 + exp(a));
    figure, surf(a, z_m);
elseif ~isvector(a) && ~ismatrix(a)
    error('Vektor vagy matrix kellene ide')
elseif nargin ~= 1
    error('Egy darabot!44!!')
elseif isempty(a)
    error('Rakjal mar bele vmit')
end

y = 1;


end

