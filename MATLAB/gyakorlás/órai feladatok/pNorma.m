function result = pNorma(x,y)

if ~isvector(x) || ~isvector(y)
    error('Both x and y input arguments must be vectors');
elseif nargin ~= 2
    error('# of inputs must be two');
elseif length(x) ~= length(y)
    error('x and y must be of same size');
end

p = input('Add a value for p: ');

if ~isnumeric(p) || numel(p) ~= 1
    error('p must be one number (it is a distance)');
end

for k = 1:length(x)
    a(k) = (x(k) - y(k)) ^ p;
end
s = sum(a);
result = s ^ (1 / p);

end


