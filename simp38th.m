clear all;
clc;

f=input('Enter Function: ');

n=input('Enter number of intervals: ');   %interval should be a multiple of 3
startingpoint=input('Enter starting value: ');
endingpoint=input('Enter ending value: ');

multipleof3_Sum=0;
sum=0;
h=(endingpoint-startingpoint)/n;
for i= 3:3:n-1
    multipleof3_Sum = multipleof3_Sum+f(startingpoint+i*h);
end
for i= 0:n
    sum = sum+f(startingpoint+i*h);
end

restSum=sum-multipleof3_Sum-f(endingpoint)-f(startingpoint);


area=(3*h/8)*(f(startingpoint)+2*multipleof3_Sum+3*restSum+f(endingpoint));
abs(area)
