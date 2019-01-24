%Newton Raphson Method
clear all;
clc;
syms x;
f= input('Enter your func: ');
f=inline(f);
d_f=diff(f(x));
d_f=inline(d_f);
iguess=input('Enter starting value: ');
while(f(iguess)~=0)
    h= -f(iguess)/d_f(iguess);
    iguess=iguess+h;
end
iguess
