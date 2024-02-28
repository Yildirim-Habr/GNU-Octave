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

masukSpearman = [Suhu; Rusak];
masukSpearman = masukSpearman';
masukSpearman = sortrows(masukSpearman,[1]);

##disp(masukSpearman);

[r] = spearman(masukSpearman(:,1),masukSpearman(:,2));

disp(r);

fclose(masuk);
