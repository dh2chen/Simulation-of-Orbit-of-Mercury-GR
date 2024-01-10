clc;
clear;
close all;

f = @(t,y) Geodesic(t,y);
tf=20;
t_proper = linspace(0,tf,100);
y0 = [1 pi/4 1 1 1 1 1 1];
[t,y]=ode23(f,t_proper,y0);

figure;
plot(t,y);
xlabel('t');
ylabel('y(t)');
legend('r','theta','phi','rdot','thetadot','phidot','t','tdot')
grid on;


%figure;
%plot(t,(y(:,1)));

figure;
for k = 1:length(t_proper)
  %clf
  x_k = y(k,1)*sin(y(k,3))*cos(y(k,2));
  y_k = y(k,1)*sin(y(k,3))*sin(y(k,2));
  z_k = y(k,1)*cos(y(k,3));
  
  plot3(x_k, y_k, z_k, 'go','LineWidth',3,'MarkerSize',15);
  xlabel('x');
  ylabel('y');
  zlabel('z');
  grid on;


%figure;
%X = y(:,1)*sin(y(:,3))*cos(y(:,2));
%Y= y(:,1)*sin(y(:,3))*sin(y(:,2));
%Z = y(:,1)*cos(y(:,3));

%plot3(X,Y,Z,t_proper,'k-') 
%xlabel('x')
%ylabel('y')
%zlabel('z')
