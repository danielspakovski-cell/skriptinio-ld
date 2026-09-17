% Variantas 1%
% Daniel Spakovski Ef-25/1%
% 1 uzduotis%
a = 5:2:34
b = exp(a)
c = a./b
d = c';
disp('vektorius stulpelis:');
disp(d);
%% 
%uzduotis 2%
A=[(pi/2), 3i; log(2), (2*pi)]
B=[exp(A(1,1)), exp(A(1,2))]
A_B=[A; B]
suma= sum(A_B, 2)
%% 
%uzduotis 3%
A=5;
f=5;
sigma=1.5;
U1=3;
U2=2;
t= 0:0.001:1;
s= A*sin((2*pi)*f*t);
n= sigma*randn(size(t));
s_triuksm= s+n

indeks= s_triuksm > U1;
reiksmes_didesnes_uz_U1 = s_triuksmas(indeks)
t_didesni = t(indeks)
s_filtruotas = s_triuksm;                  
s_filtruotas(abs(s_filtruotas) < U2) = 0;   
dydis_nefiltruoto = length(s_triuksm)

dydis_atrinktu = length(reiksm_did_U1)
max_filtruoto = max(s_filtruotas)
min_filtruoto = min(s_filtruotas)
%% 
% extra, 24 variantas%
prompt='vektorius A yra:'
A = input(prompt)

disp('vektorius B yra:');
B = A(2:2:end);

C = A(end:-2:1);
if mod(length(A), 2)==0
    C= A(end-1:-2:1);
else
    C=A(end:-2:1);
end
disp('vektorius C yra:');
disp(C);