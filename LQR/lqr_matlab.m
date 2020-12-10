%% Reset
clear
clc

%% Espacio de estados
A = [0 1 0 0;
    0 -2.45571 -62.8714 3.68357;
    0 0 0 1;
    0 3.68357 167.6570 -9.82286];
B = [0;
    428.5710;
    0;
    -642.8270];
C = [0 0 1 0];
D = 0;
sys = ss(A,B,C,D)
step(sys)

%% Calculo de constantes LQR
resp= ones(1,3);
osc = ones(1,3);

% Prueba 1
Q = [1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1];
R = 1;

[K1,S,e] = lqr(A,B,Q,R);

sys = ss((A - B*K1), B, C, D);

% Run response to initial condition
t = 0:0.005:30;
% [y,t,x] = initial(sys, x0, t);
stepstruct = stepinfo(sys);
resp(1) = stepstruct.SettlingTime;
osc(1) = stepstruct.Peak;
subplot(311)
step(sys)

% Prueba 2
Q = [10 0 0 0;
     0 1 0 0;
     0 0 10 0;
     0 0 0 1];
R = 1;

[K2,S,e] = lqr(A,B,Q,R);

sys = ss((A - B*K2), B, C, D);
% step(tf(ss2tf(sys.A,sys.B,sys.C,sys.D)))

% Run response to initial condition
t = 0:0.005:30;
% [y,t,x] = initial(sys, x0, t);
stepstruct = stepinfo(sys);
resp(2) = stepstruct.SettlingTime;
osc(2) = stepstruct.Peak;
subplot(312)
step(sys)

% Prueba 3
Q = [10 0 0 0;
     0 0.1 0 0;
     0 0 10 0;
     0 0 0 0.1];
R = 0.09;

[K3,S,e] = lqr(A,B,Q,R);

sys = ss((A - B*K3), B, C, D);
% step(tf(ss2tf(sys.A,sys.B,sys.C,sys.D)))

% Run response to initial condition
t = 0:0.005:30;
% [y,t,x] = initial(sys, x0, t);
stepstruct = stepinfo(sys);
resp(3) = stepstruct.SettlingTime;
osc(3) = stepstruct.Peak;
subplot(313)
step(sys)

%% resultados
resp
osc