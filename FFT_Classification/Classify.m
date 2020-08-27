function y=Classify(test_feat,f1,f2,f3,f4,f5)
    d1=calculate_distance(test_feat,f1);
    d2=calculate_distance(test_feat,f2);
    d3=calculate_distance(test_feat,f3);
    d4=calculate_distance(test_feat,f4);
    d5=calculate_distance(test_feat,f5);
    disp("Class 1= "+d1+" |  Class 2= "+d2+"  |  Class 3= "+d3+"  |  Class 4= "+d4+"  |  Class 5= "+d5);
    disp("  ");
    disp("************************* Belongs to **********************");
    if(d1<=d2&&d1<=d3&&d1<=d4&&d1<=d5)
        y=" Class 1 is the nearest";
    elseif(d2<=d1&&d2<=d3&&d2<=d4&&d2<=d5)
        y="Class 2 is the nearest";
    elseif(d3<=d1&&d3<=d2&&d3<=d4&&d3<=d5)
        y="Class 3 is the nearest";
    elseif(d4<=d1&&d4<=d2&&d4<=d3&&d4<=d5)
        y="Class 4 is the nearest";
    else
        y="Class 5";
    end
end