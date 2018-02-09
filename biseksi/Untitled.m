clear all;
clear all;
disp('---------------------------')
disp('program : Metode Biseksi   ')
disp('Oleh    : Mahfud Jiono     ')
disp('nb: penulisan fungsi harus di kasih kata inline terlebih dahulu     ')
disp('contoh: f(x)=x^3+2x+1 ')
disp('maka penulisanya: inline 1+x.*2+x.^3 ')
disp('---------------------------')
f=input('f(x)=  ');
a=input('Batas bawah =  ');
b=input('Batas atas  =  ');
while f(a).*f(b)>0
    disp('interval yang dimasukan tidak mengurung penyelesaian, Silahkan diulangi!')
    disp('  ')
    a=input('Batas bawah =  ');
    b=input('Batas atas  =  ');
end
X=a:0.001:b;
awal=cputime;
if f(a).*f(b)~=0
    f_a=f(a); f_b=f(b);
    e=input('Toleransi kesalahan=  ');
    E=1; c=0;
    disp('--------------------------------------------------------------------------------')
    disp('   Iterasi      a         b         x        f(a)      f(b)      f(x)      error')
    disp('--------------------------------------------------------------------------------')
    while E>e
        c=c+1;x1=a;x2=b;
        x=(a+b)./2;
        if f(x).*f_a<0
            b=x; f_b=f(x);
        else
            a=x; f_a=f(x);
        end
        E=abs(b-a);
        disp([c x1 x2 x f_a f_b f(x) E])
    end
    disp('------------------------------------------------------------')
    akhir=cputime;
 disp(['Diperoleh x= ' num2str(x) ' dan f(' num2str(x) ')=' num2str(f(x)) ' dengan error=  ' num2str(E)])
 disp(['Waktu komputasi = ' num2str(akhir-awal) 'detik'])
else
    if f(a)==0;
        disp(['x= ' num2str(a)])
    else
        disp(['x= ' num2str(b)])
    end
end
plot(X,f(X))
title('Grafik fungsi f(x)')
xlabel('Domain fungsi')
ylabel('Range fungsi')
grid on;
    
