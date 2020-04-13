function[]=plotcircle(c,r,I)
figure,imshow(I);title('Segmented');
hold on
theeta=0:0.01:(2*pi);
x=r*cos(theeta)+c(1);
y=r*sin(theeta)+c(2);
plot(x,y,'r');
hold off
hold on
theeta=0:0.01:(2*pi);
x=(r+70)*cos(theeta)+c(1);
y=(r+70)*sin(theeta)+c(2);
plot(x,y,'r');
hold off

end
