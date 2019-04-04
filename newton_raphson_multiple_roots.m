%Newton Raphson Method
clear all;
clc;
syms x ;

f(x) = input('Enter your func: ');
p=input('Enter the value of p(number of equal roots): ');
df(x)=diff(f(x));

copy_f(x)=f(x);
xi=input('Enter Xs starting value: ');
x_matrix=zeros(p,1);
for i=p:-1:1
    copy_xi=xi;
    while abs(copy_f(xi))>0.0001
        xi=xi-i*(f(xi)/df(xi));
        x_matrix(i)=xi;
    end
    f(x)=diff(f(x));
    df(x)=diff(f(x));
    xi=copy_xi;
end
disp('--------------------------------------');
disp(x_matrix);

