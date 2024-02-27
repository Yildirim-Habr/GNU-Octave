clear
clc
clf
pkg load statistics

masuk = fopen('input_octave.csv','r');
header = fscanf(masuk,'%s; %s; %s',[1 3]);
test1 = fscanf(masuk,'%f; %f; %f',[3 20]);

No = test1(1,:);
Suhu = test1(2,:);
Rusak = test1(3,:);

masukKolmogorov = [Suhu; Rusak];
masukKolmogorov = masukKolmogorov';
masukKolmogorov = sortrows(masukKolmogorov,[1]);

##disp(masukKolmogorov);

[h p] = kstest2(masukKolmogorov(:,1),masukKolmogorov(:,2),...
'Alpha',0.05); %'Alpha' itu confidence level

disp([h p]); %'h' itu logicalnya, ditolak atau diterima, '1' diterima, '0' ditolak

fclose(masuk);
