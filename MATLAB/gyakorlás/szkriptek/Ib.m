[I, map] = imread('mp_tripple.png');
%% elso blokk
I = ind2rgb(I,map);
Ib_b = I(:,:,3);
level = graythresh(Ib_b);
BW = imbinarize(Ib_b, level);
imshowpair(Ib_b, BW, 'montage');
%% masodik blokk
STAT = regionprops(BW, 'basic');
%a = 1;
b = [];
idx = [STAT.Area] > 100;
%% harmadik blokk
b = [STAT(idx).Area];
% for k = 1:size(STAT,1)
%     if STAT(k).Area > 100
%         b(a) = STAT(k).Area;
%         a = a + 1;
%     end
% end
disp(b);
