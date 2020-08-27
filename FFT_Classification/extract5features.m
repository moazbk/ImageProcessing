function x=extract5features(img,name)
feat1=fft2(img);
feat=abs(sort(feat1(1:5),'descend'));
if(name=='test')
    disp("DC value of the testing picture =  "+feat(1,1));
    disp("******************** Distance Between Testing picture and each Class ***********************");
    disp("  ");
end
x=feat;
end