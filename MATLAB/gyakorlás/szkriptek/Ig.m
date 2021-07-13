[I, map] = imread('tptp.jpg');
% I = ind2rgb(I,map);
Ig_g = I(:,:,2);
imwrite(Ig_g, 'tptp_cell1.png');
% level = graythresh(Ig_g);
a = 1
BW = imbinarize(Ig_g, 0.32);
imwrite(BW, 'tptp_cell2.png');
BW_maj = bwmorph(BW, 'majority', inf);
BW_cell = bwareaopen(BW_maj, 100);
imshowpair(BW_maj, BW_cell, 'montage');
% imshowpair(BW, BW_maj,  'montage');
S = regionprops(BW_maj, 'Area');
disp(['Hello: ', num2str([S.Area])]);
imwrite(BW_cell, 'tptp_cell3.png');
