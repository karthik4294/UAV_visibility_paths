function [X,Y,Z] = visibility(h)

const1 = 0;const2 = 1500;

R = [750,0,0];%input('Enter the point on the road: ');

i=0;
j=0;

%plot3(R(1,1),R(1,2),0,'-x');


ad = [500,300,500];%input('Enter [l,w,h] of 1st building: ');
bd = [500,300,300];%input('Enter [l,w,h] of 2nd 1building: ');
cd = [500,400,200];%input('Enter [l,w,h] of 1st building: ');
dd = [500,400,300];%input('Enter [l,w,h] of 2nd 1building: ');
wr = 200;%input('Enter width of the road: ');

a = [0,1125,0];%input('Enter centre of building: ');
b = [0,375,0];
c = [0,375,0];
d = [0,1125,0];
a(1,1) = 750 + (wr/2) + (ad(1,2)/2);
b(1,1) = 750 + (wr/2) + (bd(1,2)/2);
c(1,1) = 750 - (wr/2) - (cd(1,2)/2);
d(1,1) = 750 - (wr/2) - (dd(1,2)/2);

la = ad(1,1);wa = ad(1,2);ha = ad(1,3);

lb = bd(1,1);wb = bd(1,2);hb = bd(1,3);

lc = cd(1,1);wc = cd(1,2);hc = cd(1,3);

ld = dd(1,1);wd = dd(1,2);hd = dd(1,3);

wrs = 375-(la/2) + 375 - (lb/2);



R(1,2) = 1125 + (la/2) - 0.0001 ;

%if (R(1,2)<=1125+(la/2)) && (R(1,2)>=1125-(la/2)) && (R(1,2)<=1125+(ld/2)) && (R(1,2)>=1125-(ld/2)) 

P1(1,1) = R(1,1) + (wr/2)*((const2 - R(1,2))/(1125+(la/2) - R(1,2)));P1(1,2) = const2;

P2(1,1) = R(1,1) + (wr/2)*(h/ha);P2(1,2) = R(1,2) + (1125+(la/2)- R(1,2))*(h/ha);

P3(1,1) = R(1,1) + (wr/2)*(h/ha) ;P3(1,2) = R(1,2) + (1125 - (la/2) - R(1,2))*(h/ha);

P4(1,1) = R(1,1) + (wr/2)*((const1 - R(1,2))/(1125 -(la/2) - R(1,2))) ;P4(1,2) = const1;

P5(1,1) = R(1,1) + (-wr/2)*((const1 - R(1,2))/(1125 -(ld/2) - R(1,2)));P5(1,2) = const1;

P6(1,1) = R(1,1) + (-wr/2)*(h/hd) ;P6(1,2) = R(1,2) + (1125 -(ld/2) - R(1,2))*(h/hd);

P7(1,1) = R(1,1) + (-wr/2)*(h/hd) ;P7(1,2) = R(1,2) + (1125 +(ld/2) - R(1,2))*(h/hd);

P8(1,1) = R(1,1) + (-wr/2)*((const2 - R(1,2))/(1125 +(ld/2) - R(1,2)));P8(1,2) = const2;

X1 = [P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i];
Y1 = [P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j];
Z1 = [h h h h h h h h ];

%end

R(1,2) = 1125 - (la/2) + 0.0001;

if (R(1,2)<=1125+(la/2)) && (R(1,2)>=1125-(la/2)) && (R(1,2)<=1125+(ld/2)) && (R(1,2)>=1125-(ld/2)) 

P1(1,1) = R(1,1) + (wr/2)*((const2 - R(1,2))/(1125+(la/2) - R(1,2)));P1(1,2) = const2;

P2(1,1) = R(1,1) + (wr/2)*(h/ha);P2(1,2) = R(1,2) + (1125+(la/2)- R(1,2))*(h/ha);

P3(1,1) = R(1,1) + (wr/2)*(h/ha);P3(1,2) = R(1,2) + (1125 - (la/2) - R(1,2))*(h/ha);

P4(1,1) = R(1,1) + (wr/2)*((const1 - R(1,2))/(1125 -(la/2) - R(1,2)));P4(1,2) = const1;

P5(1,1) = R(1,1) + (-wr/2)*((const1 - R(1,2))/(1125 -(ld/2) - R(1,2)));P5(1,2) = const1;

P6(1,1) = R(1,1) + (-wr/2)*(h/hd);P6(1,2) = R(1,2) + (1125 -(ld/2) - R(1,2))*(h/hd);

P7(1,1) = R(1,1) + (-wr/2)*(h/hd);P7(1,2) = R(1,2) + (1125 +(ld/2) - R(1,2))*(h/hd);

P8(1,1) = R(1,1) + (-wr/2)*((const2 - R(1,2))/(1125 +(ld/2) - R(1,2)));P8(1,2) = const2;

X2 = [P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i];
Y2 = [P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j];
Z2 = [h h h h h h h h];

end


R(1,2) = 375 + (lb/2) - 0.0001;

if (R(1,2)<=375+(lb/2)) && (R(1,2)>=375-(lb/2)) && (R(1,2)<=375+(lc/2)) && (R(1,2)>=375-(lc/2)) 

P1(1,1) = R(1,1) + (wr/2)*((const2 - R(1,2))/(375+(lb/2) - R(1,2)));P1(1,2) = const2;

P2(1,1) = R(1,1) + (wr/2)*(h/hb);P2(1,2) = R(1,2) + (375+(lb/2)- R(1,2))*(h/hb);

P3(1,1) = R(1,1) + (wr/2)*(h/hb);P3(1,2) = R(1,2) + (375 - (lb/2) - R(1,2))*(h/hb);

P4(1,1) = R(1,1) + (wr/2)*((const1 - R(1,2))/(375 -(lb/2) - R(1,2)));P4(1,2) = const1;

P5(1,1) = R(1,1) + (-wr/2)*((const1 - R(1,2))/(375 -(lc/2) - R(1,2)));P5(1,2) = const1;

P6(1,1) = R(1,1) + (-wr/2)*(h/hc);P6(1,2) = R(1,2) + (375 -(lc/2) - R(1,2))*(h/hc);

P7(1,1) = R(1,1) + (-wr/2)*(h/hc);P7(1,2) = R(1,2) + (375 +(lc/2) - R(1,2))*(h/hc);

P8(1,1) = R(1,1) + (-wr/2)*((const2 - R(1,2))/(375 +(lc/2) - R(1,2)));P8(1,2) = const2;

X3 = [P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i];
Y3 = [P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j];
Z3 = [h h h h h h h h];

end

R(1,2) = 375 - (lb/2) + 0.0001;

if (R(1,2)<=375+(lb/2)) && (R(1,2)>=375-(lb/2)) && (R(1,2)<=375+(lc/2)) && (R(1,2)>=375-(lc/2)) 

P1(1,1) = R(1,1) + (wr/2)*((const2 - R(1,2))/(375+(lb/2) - R(1,2)));P1(1,2) = const2;

P2(1,1) = R(1,1) + (wr/2)*(h/hb);P2(1,2) = R(1,2) + (375+(lb/2)- R(1,2))*(h/hb);

P3(1,1) = R(1,1) + (wr/2)*(h/hb);P3(1,2) = R(1,2) + (375 - (lb/2) - R(1,2))*(h/hb);

P4(1,1) = R(1,1) + (wr/2)*((const1 - R(1,2))/(375 -(lb/2) - R(1,2)));P4(1,2) = const1;

P5(1,1) = R(1,1) + (-wr/2)*((const1 - R(1,2))/(375 -(lc/2) - R(1,2)));P5(1,2) = const1;

P6(1,1) = R(1,1) + (-wr/2)*(h/hc);P6(1,2) = R(1,2) + (375 -(lc/2) - R(1,2))*(h/hc);

P7(1,1) = R(1,1) + (-wr/2)*(h/hc);P7(1,2) = R(1,2) + (375 +(lc/2) - R(1,2))*(h/hc);

P8(1,1) = R(1,1) + (-wr/2)*((const2 - R(1,2))/(375 +(lc/2) - R(1,2)));P8(1,2) = const2;

X4 = [P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i];
Y4 = [P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j];
Z4 = [h h h h h h h h];

end

R(1,2) = 1125 - (la/2) + 0.0001;

if (R(1,2)<=1125+(la/2)) && (R(1,2)>=1125-(la/2)) && (R(1,2)<=1125+(ld/2)) && (R(1,2)>=1125-(ld/2)) 

P1(1,1) = const2; P1(1,2) = R(1,2) + (-wrs/2)*((const2 - R(1,1))/(1125 + (wb/2)- R(1,1)));

P2(1,1) = R(1,1) + (1125 + (wb/2)- R(1,1))*(h/hb);P2(1,2) = R(1,2) + (-wrs/2)*(h/hb);

P3(1,1) =R(1,1) + (wr/2)*(h/hb);P3(1,2) = R(1,2) + (-wrs/2)*(h/hb);

P4(1,1) = R(1,1) + (wr/2)*(h/hb);P4(1,2) = R(1,2) + (375 - (lb/2) - R(1,2))*(h/hb);

P5(1,1) = R(1,1) + (wr/2)*((const1 - R(1,2))/(375 - (lb/2) - R(1,2)));P5(1,2) = const1;

P6(1,1) = R(1,1) + (-wr/2)*((const1 - R(1,2))/(375 -(lc/2) - R(1,2)));P6(1,2) = const1;

P7(1,1) = R(1,1) + (-wr/2)*(h/hc);P7(1,2) = R(1,2) + (375 -(lc/2) - R(1,2))*(h/hc);

P8(1,1) = R(1,1) + (-wr/2)*(h/hc);P8(1,2) = R(1,2) + (-wrs/2)*(h/hc);

P9(1,1) = R(1,1) + (375 - (wc/2) - R(1,1))*(h/hc);P9(1,2) = R(1,2) + (-wrs/2)*(h/hc);

P10(1,1) = const1;P10(1,2) = R(1,2) + (-wrs/2)*((const1 - R(1,1))/(375 - (wc/2) - R(1,1)));


X9 = [1500+ i P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i P9(1,1)+ i P10(1,1)+ i 0+i];
Y9 = [1500+ j P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j P9(1,2)+ j P10(1,2)+ j 1500+ j];
Z9 = [h h h h h h h h h h h h];

end

R(1,2) = 375 + (lb/2) - 0.0001;

if (R(1,2)<=375+(lb/2)) && (R(1,2)>=375-(lb/2)) && (R(1,2)<=375+(lc/2)) && (R(1,2)>=375-(lc/2)) 

P1(1,1) = R(1,1) + (wr/2)*((const2 - R(1,2))/(1125+(la/2) - R(1,2)));P1(1,2) = const2;

P2(1,1) = R(1,1) + (wr/2)*(h/ha);P2(1,2) = R(1,2) + (1125+(la/2)- R(1,2))*(h/ha);

P3(1,1) = R(1,1) + (wr/2)*(h/ha);P3(1,2) = R(1,2) + (wrs/2)*(h/ha);

P4(1,1) = R(1,1) + (1125 +(wa/2) - R(1,1))*(h/ha);P4(1,2) = R(1,2) + (wrs/2)*(h/ha);

P5(1,1) = const2; P5(1,2) = R(1,2) + (wrs/2)*((const2 - R(1,1))/(1125 + (wa/2) - R(1,1)));

P6(1,1) = const1; P6(1,2) = R(1,2) + (wrs/2)*((const1 - R(1,1))/(375 -(wd/2) - R(1,1)));

P7(1,1) = R(1,1) + (375 -(wd/2) - R(1,1))*(h/hd);P7(1,2) = R(1,2) + (wrs/2)*(h/hd);

P8(1,1) = R(1,1) + (-wr/2)*(h/hd);P8(1,2) = R(1,2) + (wrs/2)*(h/hd);

P9(1,1) = R(1,1) + (-wr/2)*(h/hd);P9(1,2) = R(1,2) + (1125 +(ld/2) - R(1,2))*(h/hd);

P10(1,1) = R(1,1) + (-wr/2)*((const2 - R(1,2))/(1125 +(ld/2) - R(1,2)));P10(1,2) = const2;

X10 = [P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i 1500+ i 0+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i P9(1,1)+ i P10(1,1)+ i];
Y10 = [P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j 0+ j 0+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j P9(1,2)+ j P10(1,2)+ j];
Z10 = [h h h h h h h h h h h h];

end

R(1,2) = 1125 + (la/2) - 0.0001;

if (R(1,2)<=1125+(la/2)) && (R(1,2)>=1125-(la/2)) && (R(1,2)<=1125+(ld/2)) && (R(1,2)>=1125-(ld/2)) 

P1(1,1) = R(1,1) + (wr/2)*((const1 - R(1,2))/(375+(lb/2) - R(1,2)));P1(1,2) = const1;

P2(1,1) = R(1,1) + (wr/2)*(h/hb);P2(1,2) = R(1,2) + (375+(lb/2)- R(1,2))*(h/hb);

P3(1,1) = R(1,1) + (wr/2)*(h/hb);P3(1,2) = R(1,2) + (375 - (lb/2) - R(1,2))*(h/hb);

P4(1,1) = R(1,1) + (wr/2)*((const1 - R(1,2))/(375 -(lb/2) - R(1,2)));P4(1,2) = const1;

P5(1,1) = R(1,1) + (-wr/2)*((const1 - R(1,2))/(375 -(lc/2) - R(1,2)));P5(1,2) = const1;

P6(1,1) = R(1,1) + (-wr/2)*(h/hc);P6(1,2) = R(1,2) + (375 -(lc/2) - R(1,2))*(h/hc);

P7(1,1) = R(1,1) + (-wr/2)*(h/hc);P7(1,2) = R(1,2) + (375 +(lc/2) - R(1,2))*(h/hc);

P8(1,1) = R(1,1) + (-wr/2)*((const1 - R(1,2))/(375 +(lc/2) - R(1,2)));P8(1,2) = const1;

X13 = [1500+ i 1500+ i P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i 0+ i 0+ i];
Y13 = [1500+ j 0+ j P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j 0+ j 1500+ j];
Z13 = [h h h h h h h h h h h h];

end

R(1,2) = 375 - (lb/2) + 0.0001;

if (R(1,2)<=375+(lb/2)) && (R(1,2)>=375-(lb/2)) && (R(1,2)<=375+(lc/2)) && (R(1,2)>=375-(lc/2)) 

P1(1,1) = R(1,1) + (wr/2)*((const2 - R(1,2))/(1125+(la/2) - R(1,2)));P1(1,2) = const2;

P2(1,1) = R(1,1) + (wr/2)*(h/ha);P2(1,2) = R(1,2) + (1125+(la/2)- R(1,2))*(h/ha);

P3(1,1) = R(1,1) + (wr/2)*(h/ha);P3(1,2) = R(1,2) + (1125 - (la/2) - R(1,2))*(h/ha);

P4(1,1) = R(1,1) + (wr/2)*((const2 - R(1,2))/(1125 -(la/2) - R(1,2)));P4(1,2) = const2;

P5(1,1) = R(1,1) + (-wr/2)*((const2 - R(1,2))/(1125 -(ld/2) - R(1,2)));P5(1,2) = const2;

P6(1,1) = R(1,1) + (-wr/2)*(h/hd);P6(1,2) = R(1,2) + (1125 -(ld/2) - R(1,2))*(h/hd);

P7(1,1) = R(1,1) + (-wr/2)*(h/hd);P7(1,2) = R(1,2) + (1125 +(ld/2) - R(1,2))*(h/hd);

P8(1,1) = R(1,1) + (-wr/2)*((const2 - R(1,2))/(1125 +(ld/2) - R(1,2)));P8(1,2) = const2;

X14 = [P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i 1500+ i 1500+ i 0+ i 0+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i];
Y14 = [P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j 1500+ j 0+ j 0+ j 1500+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j];
Z14 = [h h h h h h h h h h h h];

end





R(1,2) = 750; 

R(1,1) = 1125 + (wb/2) - 0.0001;

if (R(1,1)<1125+(wa/2)) && (R(1,1)>=1125-(wa/2)) && (R(1,1)<=1125+(wb/2)) && (R(1,1)>=1125-(wb/2)) 

P1(1,1) = const2; P1(1,2) = R(1,2) + (-wrs/2)*((const2 - R(1,1))/(1125+(wb/2)- R(1,1)));

P2(1,1) = R(1,1) + (1125+(wb/2)- R(1,1))*(h/hb);P2(1,2) = R(1,2) + (-wrs/2)*(h/hb);

P3(1,1) = R(1,1) + (1125 - (wb/2) - R(1,1))*(h/hb);P3(1,2) = R(1,2) + (-wrs/2)*(h/hb);

P4(1,1) = const1;P4(1,2) = R(1,2) + (-wrs/2)*((const1 - R(1,1))/(1125 -(wb/2) - R(1,1)));

P5(1,1) = const1;P5(1,2) = R(1,2) + (wrs/2)*((const1 - R(1,1))/(1125 -(wa/2) - R(1,1)));

P6(1,1) = R(1,1) + (1125 -(wa/2) - R(1,1))*(h/ha);P6(1,2) = R(1,2) + (wrs/2)*(h/ha);

P7(1,1) = R(1,1) + (1125 +(wa/2) - R(1,1))*(h/ha);P7(1,2) = R(1,2) + (wrs/2)*(h/ha);

P8(1,1) = const2; P8(1,2) = R(1,2) + (wrs/2)*((const2 - R(1,1))/(1125 +(wa/2) - R(1,1)));

X5 = [P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i];
Y5 = [P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j];
Z5 = [h h h h h h h h];

end

R(1,1) = 1125 - (wb/2) + 0.0001;

if (R(1,1)<1125+(wa/2)) && (R(1,1)>=1125-(wa/2)) && (R(1,1)<=1125+(wb/2)) && (R(1,1)>=1125-(wb/2)) 

P1(1,1) = const2; P1(1,2) = R(1,2) + (-wrs/2)*((const2 - R(1,1))/(1125+(wb/2)- R(1,1)));

P2(1,1) = R(1,1) + (1125+(wb/2)- R(1,1))*(h/hb);P2(1,2) = R(1,2) + (-wrs/2)*(h/hb);

P3(1,1) = R(1,1) + (1125 - (wb/2) - R(1,1))*(h/hb);P3(1,2) = R(1,2) + (-wrs/2)*(h/hb);

P4(1,1) = const1;P4(1,2) = R(1,2) + (-wrs/2)*((const1 - R(1,1))/(1125 -(wb/2) - R(1,1)));

P5(1,1) = const1;P5(1,2) = R(1,2) + (wrs/2)*((const1 - R(1,1))/(1125 -(wa/2) - R(1,1)));

P6(1,1) = R(1,1) + (1125 -(wa/2) - R(1,1))*(h/ha);P6(1,2) = R(1,2) + (wrs/2)*(h/ha);

P7(1,1) = R(1,1) + (1125 +(wa/2) - R(1,1))*(h/ha);P7(1,2) = R(1,2) + (wrs/2)*(h/ha);

P8(1,1) = const2; P8(1,2) = R(1,2) + (wrs/2)*((const2 - R(1,1))/(1125 +(wa/2) - R(1,1)));

X6 = [P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i];
Y6 = [P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j];
Z6 = [h h h h h h h h];

end


R(1,1) = 375 + (wc/2) - 0.0001;

if (R(1,1)<=375+(wc/2)) && (R(1,1)>=375-(wc/2)) && (R(1,1)<=375+(wd/2)) && (R(1,1)>=375-(wd/2)) 

P1(1,1) = const2; P1(1,2) = R(1,2) + (-wrs/2)*((const2 - R(1,1))/(375+(wc/2)- R(1,1)));

P2(1,1) = R(1,1) + (375+(wc/2)- R(1,1))*(h/hc);P2(1,2) = R(1,2) + (-wrs/2)*(h/hc);

P3(1,1) = R(1,1) + (375 - (wc/2) - R(1,1))*(h/hc);P3(1,2) = R(1,2) + (-wrs/2)*(h/hc);

P4(1,1) = const1;P4(1,2) = R(1,2) + (-wrs/2)*((const1 - R(1,1))/(375 -(wc/2) - R(1,1)));

P5(1,1) = const1;P5(1,2) = R(1,2) + (wrs/2)*((const1 - R(1,1))/(375 -(wd/2) - R(1,1)));

P6(1,1) = R(1,1) + (375 -(wd/2) - R(1,1))*(h/hd);P6(1,2) = R(1,2) + (wrs/2)*(h/hd);

P7(1,1) = R(1,1) + (375 +(wd/2) - R(1,1))*(h/hd);P7(1,2) = R(1,2) + (wrs/2)*(h/hd);

P8(1,1) = const2; P8(1,2) = R(1,2) + (wrs/2)*((const2 - R(1,1))/(375 +(wd/2) - R(1,1)));

X7 = [P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i];
Y7 = [P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j];
Z7 = [h h h h h h h h];

end


R(1,1) = 375 - (wc/2) + 0.0001;

if (R(1,1)<=375+(wc/2)) && (R(1,1)>=375-(wc/2)) && (R(1,1)<=375+(wd/2)) && (R(1,1)>=375-(wd/2)) 

P1(1,1) = const2; P1(1,2) = R(1,2) + (-wrs/2)*((const2 - R(1,1))/(375+(wc/2)- R(1,1)));

P2(1,1) = R(1,1) + (375+(wc/2)- R(1,1))*(h/hc);P2(1,2) = R(1,2) + (-wrs/2)*(h/hc);

P3(1,1) = R(1,1) + (375 - (wc/2) - R(1,1))*(h/hc);P3(1,2) =  R(1,2) + (-wrs/2)*(h/hc);

P4(1,1) = const1;P4(1,2) = R(1,2) + (-wrs/2)*((const1 - R(1,1))/(375 -(wc/2) - R(1,1)));

P5(1,1) = const1;P5(1,2) = R(1,2) + (wrs/2)*((const1 - R(1,1))/(375 -(wc/2) - R(1,1)));

P6(1,1) = R(1,1) + (375 -(wd/2) - R(1,1))*(h/hd);P6(1,2) = R(1,2) + (wrs/2)*(h/hd);

P7(1,1) = R(1,1) + (375 +(wd/2) - R(1,1))*(h/hd);P7(1,2) = R(1,2) + (wrs/2)*(h/hd);

P8(1,1) = const2; P8(1,2) = R(1,2) + (wrs/2)*((const2 - R(1,1))/(375 +(wd/2) - R(1,1)));

X8 = [P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i];
Y8 = [P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j];
Z8 = [h h h h h h h h];

end

R(1,1) = 1125 - (wb/2) + 0.0001;

if (R(1,1)<1125+(wa/2)) && (R(1,1)>=1125-(wa/2)) && (R(1,1)<=1125+(wb/2)) && (R(1,1)>=1125-(wb/2)) 

P1(1,1) = R(1,1) + (-wr/2)*((const1 - R(1,2))/(375 -(lc/2) - R(1,2)));P1(1,2) = const1;

P2(1,1) = R(1,1) + (-wr/2)*(h/hc);P2(1,2) = R(1,2) + (375 -(lc/2) - R(1,2))*(h/hc);

P3(1,1) = R(1,1) + (-wr/2)*(h/hc);P3(1,2) = R(1,2) + (-wrs/2)*(h/hb);

P4(1,1) = R(1,1) + (375 -(wc/2) - R(1,1))*(h/hc);P4(1,2) = R(1,2) + (-wrs/2)*(h/hd);

P5(1,1) = const1;P5(1,2) = R(1,2) + (-wrs/2)*((const1 - R(1,1))/(375 -(wa/2) - R(1,1)));

P6(1,1) = const1;P6(1,2) = R(1,2) + (wrs/2)*((const1 - R(1,1))/(375 -(wd/2) - R(1,1)));

P7(1,1) = R(1,1) + (375 -(wd/2) - R(1,1))*(h/hd);P7(1,2) = R(1,2) + (wrs/2)*(h/hd);

P8(1,1) = R(1,1) + (-wr/2)*(h/hd); P8(1,2) = R(1,2) + (wrs/2)*(h/hd);

P9(1,1) = R(1,1) + (-wr/2)*(h/hd);P9(1,2) = R(1,2) + (1125 +(ld/2) - R(1,2))*(h/hd);

P10(1,1) = R(1,1) + (-wr/2)*((const2 - R(1,2))/(1125 +(ld/2) - R(1,2)));P10(1,2) = const2;

X11 = [1500+ i P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i P9(1,1)+ i P10(1,1)+ i 1500+ i];
Y11 = [0+ j P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j P9(1,2)+ j P10(1,2)+ j 1500+ j];
Z11 = [h h h h h h h h h h h h];

end

R(1,1) = 375 + (wc/2) - 0.0001;

if (R(1,1)<=375+(wc/2)) && (R(1,1)>=375-(wc/2)) && (R(1,1)<=375+(wd/2)) && (R(1,1)>=375-(wd/2)) 

P1(1,1) = const2; P1(1,2) = R(1,2) + (-wrs/2)*((const2 - R(1,1))/(1125 + (wb/2)- R(1,1)));

P2(1,1) = R(1,1) + (1125 + (wb/2)- R(1,1))*(h/hb);P2(1,2) = R(1,2) + (-wrs/2)*(h/hb);

P3(1,1) = R(1,1) + (wr/2)*(h/hb);P3(1,2) =  R(1,2) + (-wrs/2)*(h/hb);

P4(1,1) = R(1,1) + (wr/2)*(h/hb);P4(1,2) = R(1,2) + (375 - (lb/2) - R(1,2))*(h/hb);

P5(1,1) = R(1,1) + (wr/2)*((const1 - R(1,2))/(375 -(lb/2) - R(1,2)));P5(1,2) = const1;

P6(1,1) = R(1,1) + (wr/2)*((const2 - R(1,2))/(1125+(la/2) - R(1,2)));P6(1,2) = const2;

P7(1,1) = R(1,1) + (wr/2)*(h/ha);P7(1,2) = R(1,2) + (1125+(la/2)- R(1,2))*(h/ha);

P8(1,1) = R(1,1) + (wr/2)*(h/ha); P8(1,2) = R(1,2) + (wrs/2)*(h/ha);

P9(1,1) = R(1,1) + (1125 + (wa/2) - R(1,1))*(h/ha);P9(1,2) = R(1,2) + (wrs/2)*(h/ha);

P10(1,1) = const2; P10(1,2) = R(1,2) + (wrs/2)*((const2 - R(1,1))/(1125 + (wa/2) - R(1,1)));

X12 = [P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i 0+ i 0+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i P9(1,1)+ i P10(1,1)+ i];
Y12 = [P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j 0+ j 1500+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j P9(1,2)+ j P10(1,2)+ j];
Z12 = [h h h h h h h h h h h h];

end

R(1,1) = 1125 + (wb/2) - 0.0001;

if (R(1,1)<=1125 + (wb/2)) && (R(1,1)>=1125-(wb/2)) && (R(1,1)<=1125+(wa/2)) && (R(1,1)>=1125-(wa/2)) 

P1(1,1) = const1; P1(1,2) = R(1,2) + (-wrs/2)*((const1 - R(1,1))/(375+(wc/2)- R(1,1)));

P2(1,1) = R(1,1) + (375+(wc/2)- R(1,1))*(h/hc);P2(1,2) = R(1,2) + (-wrs/2)*(h/hc);

P3(1,1) = R(1,1) + (375 - (wc/2) - R(1,1))*(h/hc);P3(1,2) = R(1,2) + (-wrs/2)*(h/hc);

P4(1,1) = const1;P4(1,2) = R(1,2) + (-wrs/2)*((const1 - R(1,1))/(375 -(wc/2) - R(1,1)));

P5(1,1) = const1;P5(1,2) = R(1,2) + (wrs/2)*((const1 - R(1,1))/(375 -(wd/2) - R(1,1)));

P6(1,1) = R(1,1) + (375 -(wd/2) - R(1,1))*(h/hd);P6(1,2) = R(1,2) + (wrs/2)*(h/hd);

P7(1,1) = R(1,1) + (375 +(wd/2) - R(1,1))*(h/hd);P7(1,2) = R(1,2) + (wrs/2)*(h/hd);

P8(1,1) = const1; P8(1,2) = R(1,2) + (wrs/2)*((const1 - R(1,1))/(375 +(wd/2) - R(1,1)));

X15 = [1500+ i 0+ i P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i 0+ i 1500+ i];
Y15 = [0+ j 0+ j P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j 1500+ j 1500+ j];
Z15 = [h h h h h h h h h h h h];

end

R(1,1) = 375 - (wc/2) + 0.0001;

if (R(1,1)<375+(wc/2)) && (R(1,1)>=375-(wc/2)) && (R(1,1)<=375+(wd/2)) && (R(1,1)>=375-(wd/2)) 

P1(1,1) = const2; P1(1,2) = R(1,2) + (-wrs/2)*((const2 - R(1,1))/(1125+(wb/2)- R(1,1)));

P2(1,1) = R(1,1) + (1125+(wb/2)- R(1,1))*(h/hb);P2(1,2) = R(1,2) + (-wrs/2)*(h/hb);

P3(1,1) = R(1,1) + (1125 - (wb/2) - R(1,1))*(h/hb);P3(1,2) = R(1,2) + (-wrs/2)*(h/hb);

P4(1,1) = const2;P4(1,2) = R(1,2) + (-wrs/2)*((const2 - R(1,1))/(1125 -(wb/2) - R(1,1)));

P5(1,1) = const2;P5(1,2) = R(1,2) + (wrs/2)*((const2 - R(1,1))/(1125 -(wa/2) - R(1,1)));

P6(1,1) = R(1,1) + (1125 -(wa/2) - R(1,1))*(h/ha);P6(1,2) = R(1,2) + (wrs/2)*(h/ha);

P7(1,1) = R(1,1) + (1125 +(wa/2) - R(1,1))*(h/ha);P7(1,2) = R(1,2) + (wrs/2)*(h/ha);

P8(1,1) = const2; P8(1,2) = R(1,2) + (wrs/2)*((const2 - R(1,1))/(1125 +(wa/2) - R(1,1)));

X16 = [P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i 1500+ i 0+ i 0+ i 1500+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i];
Y16 = [P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j 0+ j 0+ j 1500+ j 1500+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j];
Z16 = [h h h h h h h h h h h h];

end












R(1,1) = 750; R(1,2) = 750;
 
P1(1,1) = R(1,1) + (wr/2)*((const2 - R(1,2))/(1125+(la/2) - R(1,2)));P1(1,2) = const2;

P2(1,1) = R(1,1) + (wr/2)*(h/ha);P2(1,2) = R(1,2) + (1125+(la/2)- R(1,2))*(h/ha);

P3(1,1) = R(1,1) + (wr/2)*(h/ha);P3(1,2) = R(1,2) + (wrs/2)*(h/ha);

P4(1,1) = R(1,1) + (1125 +(wa/2) - R(1,1))*(h/ha);P4(1,2) = R(1,2) + (wrs/2)*(h/ha);

P5(1,1) = const2; P5(1,2) = R(1,2) + (wrs/2)*((const2 - R(1,1))/(1125 +(wa/2) - R(1,1)));

P6(1,1) = const2; P6(1,2) = R(1,2) + (-wrs/2)*((const2 - R(1,1))/(1125+(wb/2)- R(1,1)));

P7(1,1) = R(1,1) + (1125+(wb/2)- R(1,1))*(h/hb);P7(1,2) = R(1,2) + (-wrs/2)*(h/hb);

P8(1,1) = R(1,1) + (wr/2)*(h/hb); P8(1,2) = R(1,2) + (-wrs/2)*(h/hb);

P9(1,1) = R(1,1) + (wr/2)*(h/hb);P9(1,2) = R(1,2) + (375 - (lb/2) - R(1,2))*(h/hb);

P10(1,1) = R(1,1) + (wr/2)*((const1 - R(1,2))/(375 -(lb/2) - R(1,2)));P10(1,2) = const1;

P11(1,1) = R(1,1) + (-wr/2)*((const1 - R(1,2))/(375 -(lc/2) - R(1,2)));P11(1,2) = const1;

P12(1,1) = R(1,1) + (-wr/2)*(h/hc);P12(1,2) = R(1,2) + (375 -(lc/2) - R(1,2))*(h/hc);

P13(1,1) = R(1,1) + (-wr/2)*(h/hc);P13(1,2) = R(1,2) + (-wrs/2)*(h/hc);

P14(1,1) = R(1,1) + (375 - (wc/2) - R(1,1))*(h/hc);P14(1,2) = R(1,2) + (-wrs/2)*(h/hc);

P15(1,1) = const1;P15(1,2) = R(1,2) + (-wrs/2)*((const1 - R(1,1))/(375 -(wc/2) - R(1,1)));

P16(1,1) = const1;P16(1,2) = R(1,2) + (wrs/2)*((const1 - R(1,1))/(375 -(wd/2) - R(1,1)));

P17(1,1) = R(1,1) + (375 -(wd/2) - R(1,1))*(h/hd);P17(1,2) = R(1,2) + (wrs/2)*(h/hd);

P18(1,1) = R(1,1) + (-wr/2)*(h/hd);P18(1,2) = R(1,2) + (wrs/2)*(h/hd); 

P19(1,1) = R(1,1) + (-wr/2)*(h/hd);P19(1,2) = R(1,2) + (1125 +(ld/2) - R(1,2))*(h/hd);

P20(1,1) = R(1,1) + (-wr/2)*((const2 - R(1,2))/(1125 +(ld/2) - R(1,2)));P20(1,2) = const2;

Xcen = [P1(1,1)+ i P2(1,1)+ i P3(1,1)+ i P4(1,1)+ i P5(1,1)+ i P6(1,1)+ i P7(1,1)+ i P8(1,1)+ i P9(1,1)+ i P10(1,1)+ i P11(1,1)+ i P12(1,1)+ i P13(1,1)+ i P14(1,1)+ i P15(1,1)+ i P16(1,1)+ i P17(1,1)+ i P18(1,1)+ i P19(1,1)+ i P20(1,1)+ i ];
Ycen = [P1(1,2)+ j P2(1,2)+ j P3(1,2)+ j P4(1,2)+ j P5(1,2)+ j P6(1,2)+ j P7(1,2)+ j P8(1,2)+ j P9(1,2)+ j P10(1,2)+ j P11(1,2)+ j P12(1,2)+ j P13(1,2)+ j P14(1,2)+ j P15(1,2)+ j P16(1,2)+ j P17(1,2)+ j P18(1,2)+ j P19(1,2)+ j P20(1,2)+ j ];
Zcen = [h h h h h h h h h h h h h h h h h h h h];

[Xa,Ya] = polybool('intersection',X1,Y1,X2,Y2);
[Xb,Yb] = polybool('intersection',X3,Y3,X4,Y4);
[Xc,Yc] = polybool('intersection',X5,Y5,X6,Y6);
[Xd,Yd] = polybool('intersection',X7,Y7,X8,Y8);
[Xe,Ye] = polybool('intersection',Xa,Ya,Xb,Yb);
[Xf,Yf] = polybool('intersection',Xc,Yc,Xd,Yd);
[Xg,Yg] =  polybool('intersection',Xe,Ye,Xf,Yf);
[Xh,Yh] =  polybool('intersection',X9,Y9,X10,Y10);
[Xi,Yi] =  polybool('intersection',X11,Y11,X12,Y12);
[Xj,Yj] =  polybool('intersection',Xh,Yh,Xi,Yi);
[Xk,Yk] =  polybool('intersection',Xg,Yg,Xj,Yj);
[Xl,Yl] =  polybool('intersection',X13,Y13,X14,Y14);
[Xm,Ym] =  polybool('intersection',X15,Y15,X16,Y16);
[Xn,Yn] =  polybool('intersection',Xl,Yl,Xm,Ym);
[Xp,Yp] =  polybool('intersection',Xn,Yn,Xk,Yk);

[X,Y] = polybool('intersection',Xp,Yp,Xcen,Ycen);

num = numel(X);

for too = 1:1:num;
    Z(too,1) = h;
end

end

