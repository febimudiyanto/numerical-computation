%SCHRODER
clc; clear all;
f=@(x)[x^2-2*x+1];
f1=@(x)[2*x-2];
f2=@(x)[2];
f3=@(x)[0];
x0=-1;
Nmax=30;
tol=10^-8;
galat=1; iter=1;
while (galat>tol && iter<Nmax)
    x=x0-(2*(f(x0)*(f1(x0))^2)-(f(x0)^2)*f2(x0))/(2*(f1(x0)^3)-(3*f(x0)*f1(x0)*f2(x0))+(f3(x0)*f(x0)^2));
    iter=iter+1;
    galat=abs(x-x0);
    x0=x;
end
x
