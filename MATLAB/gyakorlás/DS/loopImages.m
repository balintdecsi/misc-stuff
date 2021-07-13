S_r = struct('Area', {});
S_g = struct('Area', {});
S_b = struct('Area', {});
files = dir("C:\Users\balin\Desktop\Egyetem\2019-20_1_or_2019_2\Ciencia de datos para la biología\Proyecto\datasets\BBBC031_v1_dataset\Images\*.png");
for file = files'
    I = imread(file.name);
    disp("read file: " + file.name);
    %% 
    I_r = I(:,:,1);
    level_r = graythresh(I_r) * 1.5;
    BW_r = imbinarize(I_r, level_r);
    BW_maj_r = bwmorph(BW_r, 'majority', 100);
    temp = regionprops(BW_maj_r, 'Area');
    S_r = [S_r; temp];
    %%
    I_g = I(:,:,2);
    level_g = graythresh(I_g) * 1.5;
    BW_g = imbinarize(I_g, level_g);
    BW_maj_g = bwmorph(BW_g, 'majority', 100);
    temp = regionprops(BW_maj_g, 'Area');
    S_g = [S_g; temp];
    %%
    I_b = I(:,:,3);
    level_b = graythresh(I_b) * 1.5;
    BW_b = imbinarize(I_b, level_b);
    BW_maj_b = bwmorph(BW_b, 'majority', 100);
    temp = regionprops(BW_maj_b, 'Area');
    S_b = [S_b; temp];
end
%%
T_r = struct2table(S_r);
writetable(T_r, 'T_r.txt');
%%
T_g = struct2table(S_g);
writetable(T_g, 'T_g.txt');
%%
T_b = struct2table(S_b);
writetable(T_b, 'T_b.txt');