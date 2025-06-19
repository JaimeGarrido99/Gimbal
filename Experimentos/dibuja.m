function dibuja(arch)

% Se proporcionan datos a las variables en funci�n del archivo con los
% resultados del experimento.

datos   =   load(arch);

t   =   datos(:,1)/1000;
ux  =   datos(:,2);
x   =   datos(:,3);
ry  =   datos(:,4);
y   =   datos(:,5);
uy  =   datos(:,6);
rz  =   datos(:,7);
uz  =   datos(:,8);

% A continuaci�n, se grafica cada eje.

% Eje X

Grafx=figure;

ejx12=subplot(3,1,1:2);
plot(t,zeros(length(t)),'r',t,x,'b');
xlabel('tiempo (s)');
ylabel('�ngulo de la IMU en X (�)');
legend('Referencia(�)','angX(�)');
grid;

ejx3=subplot(3,1,3);
plot(t,ux,'K');
xlabel('tiempo (s)');
ylabel('�ngulo del servo (�)')
legend('AngServ');
grid;

% Eje Y

Grafy=figure;

ejy12=subplot(3,1,1:2);
plot(t,ry,'r',t,y,'b');
xlabel('tiempo (s)');
ylabel('�ngulo de la IMU en Y (�)');
legend('Referencia(�)','angY(�)');
grid;

ejy3=subplot(3,1,3);
plot(t,uy,'K');
xlabel('tiempo (s)');
ylabel('�ngulo del servo (�)')
legend('AngServ');
grid;

% Eje Z

Grafz=figure;

plot(t,rz,'r',t,uz,'b');
xlabel('tiempo (s)');
ylabel('�ngulo del servo (�)')
legend('AngServ');
grid;

% Se linkan los ejes para mejor visualizaci�n de las gr�ficas en formato
% fig.

linkaxes([ejx12 ejx3],'x');
linkaxes([ejy12 ejy3],'x');

% Se guardan las gr�ficas en formato png.

saveas(Grafx,'PruebaControlEjeX','png');
saveas(Grafy,'PruebaControlEjeY','png');
saveas(Grafz,'PruebaControlEjeZ','png');