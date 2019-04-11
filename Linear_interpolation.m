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
y=reshape(y,number,1);
x_input=input('Enter the value of X for which you want to find the answer: ');
x_matrix=ones(number,number);
for i=2:number
    for j=1:number
        x_matrix(i,j)=x(j).^(i-1);
    end
end
coeff=x_matrix'\y;

for i=1:number
    x_answer(i)=x_input.^(i-1);
end
answer=x_answer * coeff;
disp(answer);

