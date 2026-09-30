% 4 laboratorinis 1 uzduotis, a) 12 variantas
x= linspace(-2, 1, 200);
y= linspace(-2, 1, 200);
[X, Y]= meshgrid(x, y);

Z = 1 - 2.*(X.^2) - 3.*(Y.^2);
figure('Color','w');
surf(X, Y, Z);
camlight left;
lighting gouraud;
shading interp;

view(70, 30);
colorbar;
colormap jet;
title('Trimaciu funkciju pavirsius Z=f(Z, Y)');
xlabel('X asys');
ylabel('Y asys');
zlabel('Z asys');
grid on;
%% b)
x= linspace(-2, 2, 200);
y= linspace(-2, 2, 200);
[X, Y]= meshgrid(x, y);

Z = sin(abs(X + Y) / 20) .* exp(-abs(X + Y));
figure('Color','w');
surf(X, Y, Z);
camlight left;
lighting gouraud;
shading interp;

view(10, 35);
colorbar;
colormap cool;
title('Trimaciu funkciju pavirsius Z=f(Z, Y)');
xlabel('X asys');
ylabel('Y asys');
zlabel('Z asys');
grid on;
%% papildoma uzduotis
x = linspace(-2, 1, 150);
y = linspace(-2, 1, 150);
[X, Y] = meshgrid(x, y);

Z = 1 - (X.^2 + Y.^2);

figure('Color', 'w');

subplot(1, 3, 1);
surf(X, Y, Z);
shading interp;
colormap(gca, 'turbo');
colorbar;
camlight left; 
lighting gouraud;
material shiny;
view(70, 30);
title('Turbo paletė');
xlabel('X ašis'); 
ylabel('Y ašis'); 
zlabel('Z ašis');
grid on;

subplot(1, 3, 2);
surf(X, Y, Z);
shading interp;
colormap(gca, 'cool');
colorbar;
camlight left; 
lighting gouraud;
material shiny;
view(70, 30);
title('Šalta (Cool) paletė');
xlabel('X ašis'); 
ylabel('Y ašis'); 
zlabel('Z ašis');
grid on;

subplot(1, 3, 3);
surf(X, Y, Z);
shading interp;
colormap(gca, 'hot');
colorbar;
camlight left; 
lighting gouraud;
material shiny;
view(70, 30);
title('Karšta (Hot) paletė');
xlabel('X ašis'); 
ylabel('Y ašis'); 
zlabel('Z ašis');
grid on;