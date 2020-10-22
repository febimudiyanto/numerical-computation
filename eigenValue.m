clear all;
clc;

A=[2 1 ; 2 1];
x=[3 ; 1];
n=length(A);
Nmax=20;
tol=10^(-3);
iter=0;
err=1;
lamda=0;
disp('Tabel Mencari Nilai Eigen Menggunakan Metode Pangkat')
disp('====================================================')
disp('iter    lamda      err')
disp('====================================================')
while (err>tol) && (iter<Nmax)
    y=A*x;
    mt=max(abs(y));
    xbaru=(1/mt)*y;
    b=A*xbaru;
    c=0;
    d=0;
    for i=1:n
        c=c+(b(i)*xbaru(i));
        d=d+(xbaru(i)*xbaru(i));
    end
    lamdabaru=c/d;
    err=abs(lamda-lamdabaru);
    iter=iter+1;
    x=xbaru;
    lamda=lamdabaru;
    fprintf('%2.0d\t%9.4f\t%8.4f\n',iter,lamda,err)
end
fprintf('hasil nilai eigen adalah %f',lamda)