A = [0 1 0 0 ; 0 -2.45571 -62.8714 3.68357 ; 0 0 0 1 ; 0 3.68357 167.657 -9.82286];
B = [0 ; 428.571 ; 0 ; -642.857];
C = [1 0 0 0; 0 0 1 0];
D = [0; 0];
[num,den] = ss2tf(A,B,C,D);
sys1 = tf(num(1,:),den) %Función de transferencia para alpha
sys2 = tf(num(2,:),den) %Función de transferencia para theta