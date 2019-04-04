%Newton Raphson Method
clear all;
clc;
syms x ;

f(x) = input('Enter your func: ');


df(x)=diff(f(x));


xi=input('Enter Xs starting value: ');


while abs(f(xi))>0.001
    xi=xi-f(xi)/df(xi);
end
disp('--------------------------------------');
disp(double(xi));

