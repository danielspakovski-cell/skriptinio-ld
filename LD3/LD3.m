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
studentu_vidurkiai = mean(Ivertinimai, 2);
figure;
subplot(2, 1, 1);
bar_graph = bar(1:4, Ivertinimai', 'grouped');

title('a)');
xlabel('l.d.');
ylabel('pazymiai');
ylim([0 10]); 
legend(Studentai, 'Location', 'northeastoutside'); 
grid off;

subplot(2, 1, 2);
stem(1:6, studentu_vidurkiai, 'k', 'LineWidth', 1, 'MarkerFaceColor', 'w');

% Grafiko apipavidalinimas
title('b),(vidurkis)');
xlabel('Studentas');
ylabel('pazymiu vidurkis');
xlim([0 7]);  
ylim([0 10]); 
grid off;
%% 
% papildomas uzdavinys
A = 5;
f = 5;
sigma = 1.5;
U1 = 3;
U2 = 2;
t = 0:0.001:1;
rng('default'); 
s = A * sin(2 * pi * f * t);
n = sigma * randn(size(t));
s_triuksm = s + n; 
indeks = s_triuksm > U1;
reiksmes_didesnes_uz_U1 = s_triuksm(indeks);
t_didesni = t(indeks);
s_filtruotas = s_triuksm;
s_filtruotas(abs(s_filtruotas) < U2) = 0; 
[max_val, idx_max] = max(s_filtruotas);
[min_val, idx_min] = min(s_filtruotas);

figure('Name', 'Signalo Filtravimas ir Analizė');
subplot(2, 1, 1); 
hold on;
plot(t, s_triuksm, '-.b', 'DisplayName', 'Pradinis signalas');
plot(t, s_filtruotas, '-k', 'LineWidth', 1.2, 'DisplayName', 'Filtruotas signalas');
yline(U1, 'color', 'yellow', 'LineWidth', 1.5, 'DisplayName', 'Riba U1');
yline(-U1, 'color', 'yellow', 'LineWidth', 1.5, 'HandleVisibility', 'off');
yline(U2, '--m', 'DisplayName', 'Riba U2');
yline(-U2, '--m', 'HandleVisibility', 'off');

hold off;
grid on;
xlabel('Laikas (s)');
ylabel('Įtampa (V)');
title('Pradinis ir filtruotas signalai su filtravimo ribomis', ...
      'Color', [0.5 0 0.5], 'FontSize', 12); 
legend('Location', 'northeastoutside');
xlim([min(t) max(t)]);

subplot(2, 1, 2); 
hold on;
stem(t_didesni, reiksmes_didesnes_uz_U1, 'filled', 'MarkerFaceColor', 'b', ...
     'DisplayName', 'Reikšmės > U1');
plot(t_min, min_val, 'ko', 'MarkerSize', 8, 'MarkerFaceColor', 'k', ...
     'DisplayName', 'Min įtampa (> U1)');
plot(t_max, max_val, 'k^', 'MarkerSize', 8, 'MarkerFaceColor', 'g', ...
     'DisplayName', 'Max įtampa (> U1)');
hold off;
grid on;
xlabel('Laikas (s)');
ylabel('Įtampa (V)');
title('Reikšmės, viršijančios U1 ribą, bei ekstremumai', ...
      'Color', [0.5 0 0.5], 'FontSize', 12); 
legend('Location', 'northeastoutside');
xlim([min(t) max(t)]);