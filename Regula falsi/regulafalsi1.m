clear all;
clc;
disp('--------------------------------------------------------------------')
disp('program : Metode Regula Falsi   ')
disp('Oleh    : Kelompok 1     ')
disp('--------------------------------------------------------------------')
syms x;
c=input('masukkan persamaan f(x1): ');
d=input('masukkan persamaan f(x2): ');
g=c-d;
f=g;
a=input('masukkan nilai a : ');
b=input('masukkan nilai b : ');
et=input('masukkan Error Toleransi : ');
e=abs(b-a);
i=1;
disp(' i      a       b      c     f(a)    f(b)   f(c)    E');
disp('-----------------------------------------------------');
clama=a;
cbaru=b;
while (e > et ) & (clama ~= cbaru);
    fa=subs(f,x,a);
    fb=subs(f,x,b);
    clama=cbaru;
    c=(fb*a-fa*b)/(fb-fa);
    cbaru=c;
    fc= subs(f,x,c);
    fprintf('%3.0f %6.4f %6.4f %12.10f %7.4f %7.4f %7.4f %7.4f \n', i, a, b, c, fa, fb, fc, e);
    if fa*fc < 0
       b=c; %geser kiri
    else
       a=c; %geser kanan
    end
    e=abs(b-a);  % menghitung error
    i=i+1;
   end
 i=i-1;
 
fprintf('Diperoleh akar persamaan di = %f\n ', c)
fprintf('Pada Iterasi ke %f\n  ', i) 