clc;
clear all;
syms xi;
number_of_datapoints=input('Enter the number of datapoints: ');
for i=1:number_of_datapoints
    x(i)=input('Enter x: ');
    y(i)=input('Enter y: ');
end
x=reshape(x,number_of_datapoints,1);
y=reshape(y,number_of_datapoints,1);

syms lambda;
A=0;
B=0;
C=0;
D=0;

for i=1:number_of_datapoints
    A=A+(y(i)*x(i)*exp(lambda*x(i))); 
    B=B+(y(i)*exp(lambda*x(i)));
    C=C+(exp(2*lambda*x(i)));
    D=D+(x(i)*exp(2*lambda*x(i)));
end
f(lambda)= (-1*A) + (B * D)/C;
A=inline(A);
B=inline(B);
C=inline(C);
D=inline(D);

a=input('Initial estimation of lambda: ');
b=input('Final estimation of lambda: ');
lambda_answer=(a*f(b)-(b*f(a)))/(f(b)-f(a));
error=input('Enter stopping criterion: ');


while f(lambda_answer)>error
    lambda_answer=(a*f(b)-(b*f(a)))/(f(b)-f(a));
    if f(lambda_answer)*f(a)<0
        b=lambda_answer;
    elseif f(lambda_answer)*f(b)<0
        a=lambda_answer;
    end
end

disp('----------');
disp(double(lambda_answer));  %answer will give the value of lambda
g(lambda)= B(lambda)/C(lambda);
disp(double(g(lambda_answer)));



func(xi)=double(g(lambda_answer))*exp(double(lambda_answer)*xi);
for i=1:length(x)
y_func(i)=func(x(i));
end
plot(x,y);
hold on;
plot(x,y_func)