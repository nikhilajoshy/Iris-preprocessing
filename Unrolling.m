function [Imde] = Unrolling( Im , center, r1, r2 ,Ntheta,Nr)
%figure,imshow(Im);
Imde=zeros(Nr,Ntheta);

for i = 1:Ntheta
    for j = 1:Nr
        %calcul de rk et theta
        rk = j/Nr;
        theta = (i*2*pi)/Ntheta;
        %calculs des coordoner dans l'image resultat
        x = center(1) + rk*cos(theta)*r2  + (1-rk)*cos(theta)*r1;
        y = center(2) + rk*sin(theta)*r2  + (1-rk)*sin(theta)*r1;
        x=round(x);
        y=round(y);
        %cen = [x,y];
        %viscircles(cen, 1,'EdgeColor','r');
        %inscriptions des valeurs
        Imde(j,i)=Im(y,x);
       
    end
end
Imde=uint8(Imde);
%figure, imshow(Imde,[min(Im(:)) max(Im(:))]), title('Image unroled');
%imwrite(Imde,'C:\Users\nikhi\Desktop\project\Segmentation\db_iris\norm.bmp');
% figure,histogram(Imde);
%figure, imshow(Imde);  
%Imd=imadjust(Imde);
%figure,imshow(Imd);
%figure, imshow(Imd,[min(Im(:)) max(Im(:))]), title('Image deroule');
 %figure,histogram(Imd);
end
