[I, map] = imread('mp_tripple.png');
I = ind2rgb(I,map);
Ib_b = I(:,:,3);
level = graythresh(Ib_b);
BW = imbinarize(Ib_b, level);
BW_maj = bwmorph(BW, 'majority', inf);
imshowpair(BW, BW_maj, 'montage');
S = regionprops(BW_maj, 'Area');
% for k = 1:size(S,1)
%     disp(S(k).Area);
% end
disp(['Hello: ', num2str([S.Area])]);
disp('This is an addition exclusively for Git training purposes.');