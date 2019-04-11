clear all;
clc;
number=input('number of equations: ');
disp('--------------------------------------');


for i=1:number
    for j=1:number
        A(i,j)=input(sprintf('Enter  coeff (%d , %d): ' ,i,j));
    end
end
A=reshape(A,number,number);
disp('--------------------------------------');


for k=1:number
    constants(k)=input(sprintf('Enter the constants of the equation (%d) present on the RHS: ' ,k));
end
constants=reshape(constants,number,1);
disp('--------------------------------------');


for k=1:number
    X(k)=input(sprintf('Enter the (%d) initial guess: ' ,k));
end

X=reshape(X,number,1);
new=zeros(size(X,1),1); %to store the new updated values of x calculated
old=zeros(size(X,1),1); % to store the old values of x 
error=ones(size(X,1),1); % to find the toleracnce in the values of x

while (abs(min(min(error)))>0.0000001)
    for i=1:size(A,1)
        num = constants(i)-(A(i,1:end)*X(1:size(A,1))-A(i,i)*X(i));
        X(i)=num/A(i,i);
        error(i)=(X(i)-old(i))/X(i);
        old(i)=X(i);
    end
    
end
disp(X);
