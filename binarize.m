function [ I ] = binarize( I )
I = im2bw(I,0.55);
I = bwmorph(I,'clean');
% figure,imshow(I);
end