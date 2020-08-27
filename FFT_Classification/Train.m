function y=Train(s1,s2,s3)
img1=imread(s1);
img2=imread(s2);
img3=imread(s3);
img1=enhance_image(img1);
img2=enhance_image(img2);
img3=enhance_image(img3);
img1_feat=extract5features(img1,'img1');
img2_feat=extract5features(img2,'img2');
img3_feat=extract5features(img3,'img3');
for i=1:5
    avg(i)=(img1_feat(i)+img2_feat(i)+img3_feat(i))/3;
end
y=avg;
end