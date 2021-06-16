clc; clear all; close all;
A=1; C=1; c=1i*C; N=100;  %N=%guias de onda

%Red Cuadrada 2D
psi0=[0;A;A;0]; zspan=[0:0.01:5]; 
%Primero había hecho una matriz 2x2 que esquematizaba el arreglo pero el ode45 no soporta matirces
r2=[0,0,1,1]; r3=[0,1,0,1]; R1(:,1)=r2; R1(:,2)=r3;
for i=1:4
  for j=1:4;
    if norm(R1(i,:)-R1(j,:))== 1;
        M2(i,j)=1;
    else 
        M2(i,j)=0;
    end
  end 
end

[z,psi]=ode45(@(z,psi) M2*psi,zspan,psi0);
%Figuras:
figure(1);imagesc(abs(psi));
figure(2); plot(z,abs(psi(:,1)), 'o', z,abs(psi(:,2)));
legend({'Y1','Y2'});
xlabel('z'),ylabel('|\Phi_{1,2}(z)|'),title('Solución Red Cuadrada');

%Red 2D generalizada para 2 hileras
psi01=zeros(1,N); psi01(1)=A; psi01(51)=A; 
 
r32=zeros(1,N); r32((N/2+1:N))=1;
for i=1:N
  if i<=N/2
    r31(i)=i;
  else 
    r31(i)=(-N/2)+i; %Contando las guias de <--a--> ambas hileras
    %r31(i)=N+1-i; %Contando las guias de <--a--> y de -->a<--
  end
end
R2(:,1)=r31; R2(:,2)=r32;

for i=1:N
  for j=1:N;
    if norm(R2(i,:)-R2(j,:))== 1;
        M3(i,j)=1;
    else 
        M3(i,j)=0;
    end
  end 
end

[z1,psi1]=ode45(@(z1,psi1) M3*psi1,zspan,psi01);
%Figuras:
figure(3);imagesc(abs(psi1));
figure(4); plot(z1,abs(psi1(:,1)), 'o', z1,abs(psi1(:,2)));
legend({'Y1','Y2'});
xlabel('z'),ylabel('|\Phi_{1,2}(z)|'),title('Solución Red 2D (2 hileras)');

%Red Cubica 3D
psi02=[A;0;A;0;A;0;A;0];

r4=[0,0,0,0,1,1,1,1]; r5=[0,0,1,1,0,0,1,1]; r6=[0,1,0,1,0,1,0,1]; 
R3(:,1)=r4; R3(:,2)=r5; R3(:,3)=r6;
for i=1:8
  for j=1:8;
    if norm(R3(i,:)-R3(j,:))== 1;
        M4(i,j)=1;
    else 
        M4(i,j)=0;
    end
  end 
end

[z2,psi2]=ode45(@(z2,psi2) M4*psi2,zspan,psi02);
%Figuras:
figure(5);imagesc(abs(psi2));
figure(6); plot(z2,abs(psi2(:,1)), 'o', z2,abs(psi2(:,2)));
legend({'Y1','Y2'});
xlabel('z'),ylabel('|\Phi_{1,2}(z)|'),title('Solución Red Cubica');
