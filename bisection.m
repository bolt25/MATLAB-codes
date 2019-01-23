
clear all;
clc;

% myfunc=inline('x^2-3*x+2');
a=2.34734;
b=4.251465;
for i=1:100
    c=(a+b)/2;
    if forBisection(a)*forBisection(c)<0
        b=c;
    elseif forBisection(b)*forBisection(c)<0
        a=c;
    end
end

c


