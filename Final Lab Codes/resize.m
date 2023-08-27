clc;
clear all;
a=imread('cameraman.tif');
[r,c]=size(a);
l=1;
m=1;
c=zeros(r/2,c/2);
for x =1:2:r
    for  y=1:2:c
        c(l,m)=a(x,y);
   m=m+1;
    end
    l=l+1;
  m=1;  
end
figure,imshow(a);
figure,imshow(c);

