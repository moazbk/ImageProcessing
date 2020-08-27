function y=enhance_image(arr)
[rows columns numberOfColorChannels] = size(arr);
if(numberOfColorChannels>1)
    img=rgb2gray(arr);
else
    img=arr;
end
redImg = imgaussfilt(img,1);
[R,C]=size(redImg);
for i=1:R
    for j=1:C
        pixel=double(redImg(i,j));
        e=pixel.^1.1;
        redImg(i,j)=round(e);
    end
end
y=histeq(redImg);
end