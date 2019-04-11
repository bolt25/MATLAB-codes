clear all;
clc;
syms x;
f(x)=input('Enter 1 func: ');
a=input('inital pt: ');
b=input('final pt: ');
for i=1:100
    c=(a*f(b)-(b*f(a)))/(f(b)-f(a));
    if f(c)*f(a)<0
        b=c;
    elseif f(c)*f(b)<0
        a=c;
    end
end
disp('----------');
disp(c);
