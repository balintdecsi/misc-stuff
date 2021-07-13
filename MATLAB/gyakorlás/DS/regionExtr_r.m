I = imread("C:\Users\balin\Desktop\Egyetem\2019-20_1\Ciencia de datos para la biología\Proyecto\datasets\BBBC031_v1_dataset\Images\ProcessPlateSparse_wA01_s01_z1_t1_CELLMASK.png");
I_r = I(:,:,1);
level_r = graythresh(I_r) * 1.5;
BW_r = imbinarize(I_r, level_r);
BW_maj_r = bwmorph(BW_r, 'majority', 100);
imshowpair(BW_r, BW_maj_r, 'montage');
S_r = regionprops(BW_maj_r, 'Area');