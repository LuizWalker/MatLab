% IFPB-CAMPUS JP/CCSTT-GTEMA, 10/03/2020
% APROXIMAÇÕES E ERROS
% PROGRAMA SERIE DE TAYLOR PARA FUNÇÃO SENO
% X = ANGULO EM RADIANO
% N = NÚMEROS DE TERMOS DA SERIE (INTEIRO IMPAR)

clear all,clc,close all,
disp('Aproximação em serie de Taylor da função seno')
X = input('Angulo, X = ');
N = input('Números de termos da serie, N = ');
FACT = 1;
SENO = X;
SINAL = 1;
for n=3:2:N
    FACT=FACT*n*(n-1);
    SINAL=-SINAL;
    TERMO=SINAL*(X^n)/FACT;
    SENO=SENO+TERMO;
end
disp('O valor do seno vale: ');
SENO