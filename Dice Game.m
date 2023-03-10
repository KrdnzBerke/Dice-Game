%Ömer Berke Karadeniz
%220757063
%Bilgisayar Mühendisliği
%Programlamaya Giriş
%MBM103
%Güz 2022
%Proje 2
%Deniz Dal

disp('Oyuna Hoşgeldiniz.İyi Eğlenceler')
satirSayisi=input('Lütfen Bir Sayı Giriniz:'); %satır sayısına değer atanıyor.
sutunSayisi=input('Lütfen Bir Sayı Giriniz:'); %sütun sayısına değer atanıyor.

matris=randi([2,35],satirSayisi,sutunSayisi);%matris belirleniyor
disp(matris) %matrisi ekrana yazdırıyoruz

while 1   
    zar1=randi(6); %atılan bir zarın rastgele gelmesi için 
    zar2=randi(6); %atılan bir zarın rastgele gelmesi için
    zar3=randi(6); %atılan bir zarın rastgele gelmesi için
    fprintf('zar1= %d\n',zar1); %zar1  yazdırılıyor
    fprintf('zar2= %d\n',zar2); %zar2  yazdırılıyor
    fprintf('zar3= %d\n',zar3); %zar3  yazdırılıyor
    enBuyuk=zar1;%1.zara gelen sayının en büyük olduğunu farz edelim
    enKucuk=zar2;%2.zara gelen sayının en küçük olduğunu farz edelim

    if zar2>enBuyuk
        enBuyuk=zar2;
        enKucuk=zar1;
    end
    if zar3>enBuyuk
        zar3=enBuyuk;
        zar2=enKucuk;
    end 
    ortanca=(zar1+zar2+zar3)-(enBuyuk+enKucuk);
    istenenDeger=(enBuyuk*ortanca)+enKucuk;
    fprintf('En Büyük Değer: %g\n',enBuyuk);%ekrana en büyüğü yazdırıyoruz
    fprintf('En Küçük Değer: %g\n',enKucuk);%ekrana en küçüğü yazdırıyoruz
    fprintf('Ortanca Değer: %g\n',ortanca);%ortanca değeri yazdırıyoruz
    fprintf('İstenen İşlem: %g\n',istenenDeger);%istenen değeri ekrana yazdırıyoruz
    sayac=0;
    
    for i=1:satirSayisi%Burada for döngüsüne giriyoruz
        for j=1:sutunSayisi
            if matris(i,j)==istenenDeger
                matris(i,j)=-1;
                fprintf('Aranan Sayı (%d) matriste bulunup yerine -1 yazılmıştır.\n',istenenDeger);%istenen değeri ekrana yazdırıyoruz
                disp(matris);
                for k=1:satirSayisi
                    sayac=0;
                    for n=1:sutunSayisi
                        if matris(k,n)==-1
                            sayac=sayac+1;
                            if sayac==sutunSayisi%sayaç ile sütun sayısını kontrol edip ona göre bitiriyoruz
                                fprintf('%d Satırının tamamlanmasıyla Oyun Bitmiştir. \n',k)%oyunun bittiğini ifade ediyoruz
                                return;
                            end
                        end
                    end
                end
                break;
            end
        end
    end
end

    