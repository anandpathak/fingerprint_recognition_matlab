I=imread('finger.gif');
% figure,imshow(I);
I=enhance(I);
% figure,imshow(I);
I=binarize(I);
%figure,imshow(I);
% figure,imshow(I);
%I=segment(I);
[p,z]=direction(I);
% figure,imshow(p);figure,imshow(z);
[Im,p,z]=drawROI(I,p,z);
% figure,imshow(Im);
% figure,imshow(p);figure,imshow(z);
 I=thin(Im,p);
 imwrite(I,'finger1','bmp');
%  figure,imshow(I);
%  imwrite(I,'fftfinger','bmp');
  I=conncomp(I);
% [end_list,branch_list,ridgeOrderMap,edgeWidth] = mark_minutia(I,p,z,16);


