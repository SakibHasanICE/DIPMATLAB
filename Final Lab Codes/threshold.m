clear all; close all; clc;
Img2 = imread('cameraman.tif');
Img2=double(Img2);
im=Img2;
[r, c]=size(im); 
p=zeros(r,c);
for x=1:r
    for y=1:c
        if(im(x,y)<160)
           p(x,y)=0;
        else p(x,y)=im(x,y);
        end
    end
end

figure; imagesc(p);colormap(gray);
xlabel('Thresholding Image');