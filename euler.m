clear all;
clc;
syms x;
f(x)=input('Enter the slope function- '); %enter function like for eg. x^2+1
startpoint=input('Enter the starting point- ');
endpoint=input('Enter the ending point- ');
interval=input('Enter number of intervals- ');
intercept=input('Enter intercept- ');
interval_size=(endpoint-startpoint)/interval;

for i=1:interval
    intercept = intercept + f(intercept)*interval_size;  
    disp(intercept);
end
