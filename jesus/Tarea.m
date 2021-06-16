clc; clear all; close all;
A=1; C=1; c=1i*C; N=100; %N=#guias de onda
r1=1:N; R=zeros(N,2); R(:,1)=r1; 
for i=1:N
  for j=1:N;
    if norm(R(i,:)-R(j,:))== 1;
        M(i,j)=1;
    else 
        M(i,j)=0;
    end
  end 
end
psi0=zeros(1,N); psi0(51)=A*3; %posicion inicial 
zspan=[0:0.1:10];
[z,psi]=ode45(@(z,psi) 1i*M*psi, zspan, psi0); %integrador (arroja la solucion)

%Figuras:
figure(1);imagesc(abs(psi));
figure(2); plot(z,abs(psi(:,1)),z,abs(psi(:,51)));
legend({'Y1','Y2'});
xlabel('z'),ylabel('|\Phi_{1,2}(z)|'),title('Solución'); 
