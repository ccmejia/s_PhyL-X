clc; clear all; close all;

%Matriz con diagonalización 
N=10; n=N-1; a=ones(1,n);
M=diag(a,1)+diag(a,-1);

%Matriz con for e if
for i=1:N
  for j=1:N;
    if i==j-1;
        M0(i,j)=1;
    end
    if i==j+1;
      M0(i,j)=1;
    end
  end
end

%Matriz con el sistema geometrico

%Unidimencional
r1=1:N;
R=zeros(N,2); R(:,1)=r1; %Arreglos de guias posiciones de estas
%Bucle para sacar las normas entre cada posicion y hacer la matriz 
for i=1:N
  for j=1:N;
    if norm(R(i,:)-R(j,:))== 1;
        M1(i,j)=1;
    else 
        M1(i,j)=0;
    end
  end 
end

%Red Cuadrada 2D
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

%Red 2D generalizada para 2 hileras 
r32=zeros(1,N); r32(N/2+1:N)=1;
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

%Red Cubica 3D
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



