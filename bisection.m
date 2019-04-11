clear all;
clc;
syms x;
f(x)=input('Enter function: ');

a=input('Enter A: ');
b=input('Enter B: ');

for i=1:100
    c=(a+b)/2;
    if f(a)*f(c)<0
        b=c;
    elseif f(b)*f(c)<0
        a=c;
    end
end

disp(c);


