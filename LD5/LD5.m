% LD 5 3 variantas
% 1 uzduotis
studentai = struct();
studentai.pavardes = {'Putinas', 'Trumpas', 'Netanyahu', 'Nauseda'};
studentai.amzius = [20, 21, 20, 19];

disp('Pradine struktura:');
disp(studentai);
studentai = orderfields(studentai, {'amzius', 'pavardes'});

disp('Struktura pakeitus lauku tvarka:');
disp(studentai);
%% 2 uzduotis 22 variantas
while true
 a=input('Iveskite kintamaji a:');
 b=input('Iveskie kintamaji b:');
 c=input('Iveskite kintamaji c:');
 if a==0 && b==0 && c==1
     disp('Ivestos baigiamojo ciklo reiksmes (a=0, b=0, c=1). Programa baigia darba');
     break;
    end
   
    kintamieji = [a, b, c];
    pavadinimai = ['a', 'b', 'c'];
    
    for i = 1:length(kintamieji)
        val = kintamieji(i);       
        if val < 0
            rez = val^2; 
            disp(['Kintamasis ', pavadinimai(i), ' (', num2str(val), ') yra neigiamas. Kvadratas: ', num2str(rez)]);
        else
            rez = val^3; 
            disp(['Kintamasis ', pavadinimai(i), ' (', num2str(val), ') yra teigiamas (arba 0). Kubas: ', num2str(rez)]);
        end
    end  
    disp('-----------------------------------');
end
%% Papildoma uzduotis
masyvas1 = [];
masyvas2 = [];
while true
    sk1 = round(rand * 5);
    sk2 = round(rand * 7);       
    masyvas1 = [masyvas1, sk1];
    masyvas2 = [masyvas2, sk2];
    
    if sk1 == sk2
        disp('Sugeneruoti vienodi skaiciai! Ciklas nutraukiamas.');
        break;
    end
end

figure;
plot(masyvas1, '-o', 'LineWidth', 1.5, 'DisplayName', 'round(rand*5)');
hold on;
plot(masyvas2, '-s', 'LineWidth', 1.5, 'DisplayName', 'round(rand*7)');
hold off;

xlabel('Iteracijos numeris');
ylabel('Sugeneruota reiksme');
title('Atsitiktiniu skaiciu kitimas');
legend('Location', 'northeast');
grid on;