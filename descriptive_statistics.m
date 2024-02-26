clear
clc
clf

fid = fopen('input_octave.csv','r');
header = fscanf(fid,'%s; %s',[1 2]);
A = fscanf(fid,'%f; %f',[2 25]);

No = A(1,:);
Rusak = A(2,:);

Jawaban(1) = mean(Rusak);
Jawaban(2) = std(Rusak)/sqrt(length(Rusak));
Jawaban(3) = median(Rusak);
Jawaban(4) = mode(Rusak);
Jawaban(5) = std(Rusak);
Jawaban(6) = var(Rusak);
Jawaban(7) = kurtosis(Rusak);
Jawaban(8) = skewness(Rusak);
Jawaban(9) = range(Rusak);
Jawaban(10) = min(Rusak);
Jawaban(11) = max(Rusak);
Jawaban(12) = sum(Rusak);
Jawaban(13) = size(Rusak,2);


##disp(header(:,:));
##disp([No Rusak]);
disp(Jawaban');
disp(A);

fclose(fid);
