% 3 laboratorinis darbas
%1 uzdavinis, a)
t= linspace(-pi, pi, 50);
y= sin(t);
figure;
plot(t, y, 'r--', 'LineWidth', 1.5);
axis([-pi, pi, -1.2, 1.2]);
legend('y= sin(t)', 'Location', 'northeast');
title('y(t) = sin(t) funkcija' );
xlabel('t (radianai)');
ylabel('y(t)');
grid on;
xticks([-pi -pi/2 0 pi/2 pi]);
xticklabels({'-pi', '-pi/2', '0', 'pi/2', 'pi'});
%% 
% b)
x= linspace (-pi, pi, 50);
y1= -x.^2 + 9;
y2= x.^3 - 2*x.^2 - 9;
figure;
plot(x, y1, 'r--', 'LineWidth', 2);
hold on;
plot(x, y2, 'b-o', 'LineWidth', 2);
axis([-pi, pi, -60, 15]);
legend('y_1(x)= -x^2 + 9', 'y_2(x)= x^3 - 2x^2 - 9', 'Location', 'northeast');
title('Dvieju funkciju grafikai viename lange');
xlabel('x (radianai)');
ylabel('y(x)');
grid on;
xticks([-pi -pi/2 0 pi/2 pi]);
xticklabels({'-pi', '-pi/2', '0', 'pi/2', 'pi'});
hold off
%% 
% 2 uzdavinys
Ivertinimai= [6,8,7,10;7,8,9,10;10,10,10,10;9,10,10,9;5,6,7,6;8,10,10,9];
Studentai = {'V. A.', 'A. G.', 'D. N.', 'A. T.', 'E. S.', 'J. S.'};
studentu_vidurkiai = mean(Ivertinimai, 2)