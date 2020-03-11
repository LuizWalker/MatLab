% IFPB-CAMPUS JP, 10/03/2020
% COORD TELECOMUNICAÇÕES - GTEMA
% METODO DE GAUSS
% Autor: Prof. Paulo Henrique da F. Silva

clear all,close all,clc
help gauss

A=[[2 3 -1 5];[4 4 -3 3];[2 -3 1 -1]]; N=3;        
%A=[[1 1 2 4];[2 -1 -1 0];[1 -1 -1 -1]]; N=3;      
%A=[[2 3 1 -1 6.9];[-1 1 -4 1 -6.6];[1 1 1 1 10.2];[4 -5 1 -2 -12.3]]; N=4;
%A=[[4 3 2 1 10];[1 2 3 4 5];[1 -1 -1 -1 -1];[1 1 1 1 3]]; N=4;
%A=[[3 4 -5 1 -10];[0 0 1 -2 -1];[0 0 4 -5 3];[0 0 0 2 2]]; N=4;
%A=[[1 -2 3 1 4];[0 0 3 1 3];[0 0 1 1 2];[0 0 0 1 1]]; N=4;

disp('Matriz aumentada do sistema: ')
disp(num2str(A));

N1=N+1; MM=N-1;
for K=1:MM
    M=K+1;
    for I=M:N
        MULT=-A(I,K)/A(K,K);
        for J=K:N1
            A(I,J)=A(I,J)+MULT*A(K,J);
        end
    end
end

if isnan(A(N,N))
    disp(' ');disp('<<<O sistema é incompativél!!!>>>');
end
if abs(A(N,N)) == 0 & abs(A(N,N1)) == 0
    disp(' ');disp('<<<O sistema é indeterminado!!!>>>');
end
X(N)=A(N,N1)/A(N,N);
K=N-1;
for I=1:K
    L=N-I;
    X(L)=A(L,N1);
    M=L+I;
    for J=M:N
        X(L)=X(L)-A(L,J)*X(J);
    end
    X(L)=X(L)/A(L,L);
end
disp(' ');disp('MATRIZ DO SISTEMA TRIANGULAR EQUIVALENTE: ');disp(num2str(A));
disp(' ');disp('VETOR SOLUÇÃO: ');disp(num2str(X));disp(' ');












