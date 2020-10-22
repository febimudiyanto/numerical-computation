clear
clc
f=@(x) [(x(1)^2)+(x(2)^2)-1;
          (2*x(1)*x(2))-1];
          
x0=[1;0] %hati2 memilih nilai awal, bisa jadi jacobian nya jadi matrix singular
s0=[5 1;0 1]
Nmax=100;tol=10^(-10);n=length(x0);k=0;err=1;
  while k<Nmax && err>tol
    delta_0= -1*(inv(s0)*f(x0)); 
    x=x0+delta_0;
    delta_y=f(x)-f(x0); 
    delta_0t=delta_0';
    s=s0+(((delta_y-(s0*delta_0))*delta_0t)/(delta_0t*delta_0));
    err=norm(f(x)-f(x0));
    s0=s;
    x0=x;
    iterasi=k;
    k=k+1;
  end
  
disp('---------------------------');
x
fx=f(x0)
iterasi