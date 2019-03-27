clc;
clear all;
order=input('Enter the order of equation: ');
disp('------------------------------------');
number=order+1;
for i=1:number
    x(i)=input('Enter x: ');
    y(i)=input('Enter y: ');
end
x=reshape(x,number,1);
y=reshape(y,1,number);

x_input=input('Enter value of X for which you want to find the answer: ');

L=ones(number,1);
for i=1:number
    for j=1:number
        if (i~=j)
            L(i)=L(i)*(x_input-x(j))/(x(i)-x(j));
        end
    end
end

answer=y*L;
disp(answer);
