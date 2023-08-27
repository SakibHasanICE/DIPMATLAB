a=imread('cameraman.tif');
ad=im2double(a);
x=ad;
factor=1;
[r,c]=size(x);
for i=1:r
    for j=1:c
        x(i,j)=factor*ad(i,j)^.5;
    end
end
figure;imshow(ad);title('before');
figure;imshow(x);title('after');