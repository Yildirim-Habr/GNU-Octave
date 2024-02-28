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

masukPearson = [Suhu; Rusak];
masukPearson = masukPearson';
masukPearson = sortrows(masukPearson,[1]);

##disp(masukPearson);

[r p] = corrcoef(masukPearson(:,1),masukPearson(:,2),...
'alpha',0.05); %'alpha' itu confidence level

disp(r);
disp(' ');
disp(p);

fclose(masuk);
