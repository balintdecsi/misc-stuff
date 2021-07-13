I = imread("C:\Users\balin\Desktop\Egyetem\2019-20_1_or_2019_2\Ciencia de datos para la biología\Proyecto\datasets\BBBC031_v1_dataset\Images\ProcessPlateSparse_wA01_s01_z1_t1_CELLMASK.png");
I_b = I(:,:,3);
level = graythresh(I_b) * 1.5;
BW = imbinarize(I_b, level);
BW_maj = bwmorph(BW, 'majority', 100);
imshowpair(BW, BW_maj, 'montage');
S = regionprops(BW_maj, 'Area');