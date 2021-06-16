clc; clear all; close all;

%Red cuadrada 2D Generalizada nxm
n=4; m=n;

for i=1:n
  r1(i)=i-1; r2(i)=i-1;
end
r11=repmat(r1,1,n); r22=repmat(r2,1,m);
R=[r11', sort(r22')];

for i=1:n*m
  for j=1:n*m
    if norm(R(i,:)-R(j,:))== 1;
        M(i,j)=1;
    else 
        M(i,j)=0;
    end
  end 
end
figure(1); plot(R(:,1),R(:,2), 'o'); 
title('Arreglo generalizado 2D guías de ondas cuadradas');

%Red cuadrada 3D Generalizada nxmxl
l=m;

for i=1:n
  r1(i)=i-1; 
end
r111=repmat(r1,1,n*m); r221=sort(repmat(r1,1,m)); r222=repmat(r221,1,l);
r333=repmat(r1,1,n*l); 
R1=[r111', r222', sort(r333')];

for i=1:n*m*l
  for j=1:n*m*l
    if norm(R1(i,:)-R1(j,:))== 1;
        M1(i,j)=1;
    else 
        M1(i,j)=0;
    end
  end 
end
figure(2); hist3(R1(:,1),R1(:,2),R1(:,3), 'ob'); 
title('Arreglo generalizado 3D guías de ondas cubicas');

