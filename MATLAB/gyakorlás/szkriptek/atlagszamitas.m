mintaSzam = 5;
mintaMeret = 35;

for k = 1:mintaSzam
    meghivas = ['Meghivas #',num2str(k)];
    %disp(meghivas)
    adottErtek = rand(mintaMeret,1);
    mintaAtlag(k) = mean(adottErtek);
end
nagyAtlag = mean(mintaAtlag);
if nagyAtlag < .49
    disp('Kisebb mint gondoltam');
elseif nagyAtlag > .54
    disp('Nagyobb mint gondoltam');
else
    disp('Pont annyi');
end