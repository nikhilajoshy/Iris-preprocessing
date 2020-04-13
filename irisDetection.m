
function [centers,radius1]=irisDetection(Im)
bw2=edge(Im,'canny',[0.05 0.09],1);
%figure;imshow(bw2);title('Canny Edge detection');

rmin=50;
rmax=122;
[c,r]=imfindcircles(bw2,[rmin rmax],'ObjectPolarity','bright','sensitivity',0.95);

if(size(c,1)==2)
    centers=c(1,1:2);
    radius1=r(1);
else
    centers=c;
    radius1=r;
end

%figure,viscircles(centers,radius1,'LineStyle','--');title('Hough transform');
%plotcircle(centers,radius1,Im);

end

