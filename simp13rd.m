clear all;
clc;

f=input('Enter Function: '); %enter function like for eg. @(x) x^2+1

n=input('Enter number of intervals: ');   %interval should be a multiple of 2
startingpoint=input('Enter starting value: ');
endingpoint=input('Enter ending value: ');

oddSum=0;
evenSum=0;
h=(endingpoint-startingpoint)/n;
for i= 1:2:n-1
    oddSum = oddSum+f(startingpoint+i*h);
end
for i= 2:2:n-1
    evenSum = evenSum+f(startingpoint+i*h);
end
area=(h/3)*(f(startingpoint)+4*oddSum+2*evenSum+f(endingpoint));
abs(area)
