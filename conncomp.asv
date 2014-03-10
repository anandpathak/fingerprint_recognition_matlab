function [ I ] = conncomp( I )

%  I=imread('finger.gif');
%  I=im2bw(I);
[xx,yy]=size(I);
A=I;
% p=find(A==1);
[B,num]=bwlabel(I);
count=1;
  for i=1:num
    count=1;
    C=zeros(xx,yy);
    for j=1:xx
        for k=1:yy
              if B(j,k)==i
                 C(j,k)=1;
                 count=count+1;
              elseif B(j,k)>= 148
                       count=count;
                      break;
              end
                  
             
        end
    end
%      p=member_calculate[C];
%    figure,imshow(C);
  end
%      return;
%    disp('num=');num
  end
 
% B=strel('square',3); %structuring element
% A=I;
 %counts number of 1 present in image
% Label=zeros([size(A,1) size(A,2)]);
% N=0;
% while(~isempty(p))
%     N=N+1;  %label for each component
%     p=p(1);
%     X=false([size(A,1) size(A,2)]);
%     
%     X(p)=1;
%     Y=A&imdilate(X,B);
%     while(~isequal(X,Y))
%         X=Y;
%         Y=A&imdilate(X,B);
%     end
%     Pos=find(Y==1);
%     A(Pos)=0;
%     %Label the components
%     Label(Pos)=N;
%     p=find(A==1);
%  end
% % imtool(Label);
% figure,imshow(Label);
 
% figure,imshow(Y);
%  end