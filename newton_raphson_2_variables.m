%Newton Raphson Method
clear all;
clc;
syms x y;

f(x,y) = input('Enter your first func: ');
g(x,y) = input('Enter your second func: ');

df_x(x,y)=diff(f,x);
df_y(x,y)=diff(f,y);
dg_x(x,y)=diff(g,x);
dg_y(x,y)=diff(g,y);

xi=input('Enter Xs starting value: ');
yi=input('Enter Ys starting value: ');

while max(abs(f(xi,yi)), abs(g(xi,yi)))>0.001
    
    A=[df_x(xi,yi) df_y(xi,yi) ; dg_x(xi,yi)  dg_y(xi,yi) ];
    
    B=[-f(xi,yi) ;-g(xi,yi) ];  

    H=double(inv(A)*B);
    h=H(1,1);
    k=H(2,1);
    xi=xi+h;
    yi=yi+k;

end
disp('--------------------------------------');
disp(xi);
disp(yi);
% xi,yi