a=imread('cameraman.tif');
ad=im2double(a);
x=ad;
[r,c]=size(x);
factor=1;
for i=1:r
    for j=1:c
        x(i,j)=factor*log(1+ad(i,j));
    end
end
figure;imshow(ad);title('before');
figure;imshow(x);title('after');