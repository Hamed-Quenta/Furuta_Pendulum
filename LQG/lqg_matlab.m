clear;
clc;
Covx=0.001;
Covy=0.001;
Q=[10 0 0 0;
   0 1 0 0;
   0 0 10 0;
   0 0 0 1];
R=[1];
A=[0 1 0 0;
   0 -2.45571 -62.8714 3.68357;
   0 0 0 1;
   0 3.68357 167.657 -9.82286];
B=[0;428.571;0;-642.857];
C=[1 0 0 0;t
    0 0 1 0];
D=[0;0];
K=lqr(A,B,Q,R);
[num,den]=ss2tf(A,B,C,D);
sysalpha=tf(num(1,:),den)
sysbeta=tf(num(2,:),den)
Vd=Covx*eye(4);%estados
Vn=Covy*eye(2);%sensor
[L,P,E]=lqe(A,Vd,C,Vd,Vn);
Kf=(lqr(A',C',Vd,Vn))';
sysKf=ss(A-Kf*C,[B Kf],eye(4),0*[B Kf]);


