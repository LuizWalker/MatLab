% IFPB/CCSTT-GTEMA,10/03/2020.
% APROXIMAÇÕES E ERROS
% DETERMINA A PRECISÃO DE UMA MAQUINA

clear all,clc,close all,
EPS = 1;
EPS1 = 2;
while(EPS1>1)
    EPS=EPS/2;
    EPS1 = EPS+1;
end
disp('A maquina acha que');
EPS
disp('Vale zero')
pause