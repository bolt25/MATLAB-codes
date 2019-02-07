clear all;
format long;
clc;
syms f(x);
f(x)=input('Enter 1 func:');
a=input('inital guess pt 1:');
b=input('initial guess pt 2:');

% dfx = (f(b)-f(a))/(b-a);
% h = double(f(b)/(dfx));
% c = b - h; 
for i=1:1000
    dfx = (f(b)-f(a))/(b-a);
    h = double(f(b)/(dfx));
    c = b - h;
    if f(c)*f(b)<0
        a=c;
    elseif f(c)*f(a)<0
            b=c;
    elseif f(c)<=0.00001
        disp(c);
        break;
    end
end
disp('----------');
disp(c);
