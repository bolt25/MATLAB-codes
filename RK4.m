clear all;
clc;
syms x;
f(x)=input('Enter the slope function- '); %enter function like for eg. @(x) x^2+1
startpoint=input('Enter the starting point- ');
endpoint=input('Enter the ending point- ');
interval=input('Enter number of intervals- ');
y=input('Enter intercept- ');
interval_size=(endpoint-startpoint)/interval;

for i=1:interval
    k1=f(y);
    k2=f(y+k1*interval_size/2);
    k3=f(y+k2*interval_size/2);
    k4=f(y+k3*interval_size);
    y = y + (k1+2*k2+2*k3+k4)*(interval_size)/6;
end
disp(y);

%{
enter this  as the slope of the function-@(x) (-2.2067*10^(-12))*((x.^4)-81*(10^8))
start=0
end=480
interval=4
y=intercept=1200

answer=646.1608
%}


