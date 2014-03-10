function [ I ] = enhance( I )
%I=imread('finger.gif');
%I=histeq(I);
% I = 255-I; 
[r,c] = size(I);
r1=floor(r/4)*4; 
c1=floor(c/4)*4; 
inner = zeros(r1,c1); 
%figure,imshow(I);
for i=1:4:r1 
   for j=1:4:c1 
      a=i+3; 
      b=j+3; 
      F=fft2( I(i:a,j:b) ); 
      factor=abs(F).^0.45; 
      block = abs(ifft2(F.*factor)); 
      larv=max(block(:)); 
      if larv==0 
          larv=1;
      end 
      block= block./larv; 
      inner(i:a,j:b) = block; 
   end
end
I=inner;
%figure,imhist(I);
% I=uint8(I);
I=histeq(I);

%figure,imhist(I);
% I=255-I;
%figure,imshow(I);
%imwrite(I,'fftfinger','bmp');
%figure,imshow('finger1.gif');
end