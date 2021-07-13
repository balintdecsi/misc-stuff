function [minimum, maximum, meannumber, deviation, times] = idoMero(n)

%% error handling
if ~isnumeric(n) || numel(n) ~= 1
    error('n must be a single number');
end

%% data generation
a = rand(n);
f = @() cos(a);
for k = 1:100
    b(k) = timeit(f);
end

minimum = min(b);
maximum = max(b);
meannumber = mean(b);
deviation = std(b);
times = b;

%% export to txt file
fid = fopen('idoMero.txt', 'w');
fprintf(fid, '%s\t %6.4f s\n', 'Minimum:', minimum);
fprintf(fid, '%s\t %6.4f s\n', 'Maximum:', maximum);
fprintf(fid, '%s\t %6.4f s\n', 'Mean:', meannumber);
fprintf(fid, '%s\t %e s\n', 'Std:', deviation);
fclose(fid);

end