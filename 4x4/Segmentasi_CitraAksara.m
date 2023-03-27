% Melakukan Segmentasi gambar aksara
clear all;clc;close all;

%% Membaca Gambar
[fname path] = uigetfile('*.*','Masukan Gambar');
fname = strcat(path,fname);
img = imread(fname);

%% Menampilkan gambar asli
figure(1),imshow(img),title('Gambar Asli');

%% Mengubah gambar keskala abu-abu
if size(img,3) == 3
    img = rgb2gray(img);
end

%% Mengkonversikan gambar kecitra biner
thresholding = graythresh(img);
img = ~im2bw(img,thresholding);

%% Menghapus semua objek yang mengandung kurang dari 50 piksel pada Gambar
img = bwareaopen(img,50);
pause(1)

%% Menampilkan Gambar Setelah BoundingBox Tanpa Noise
figure(2),imshow(~img),title('Gambar Setelah BoundingBox Tanpa Noise');

%% Melabeli objek yang terhubung
[T Na] = bwlabel(img);

%% Mengukur objek pada gambar
properti = regionprops(T,'BoundingBox');
hold on
 
%% Membuat BoundingBox objek gambar 
for x = 1:size(properti,1)
    rectangle('Position',properti(x).BoundingBox,'EdgeColor','g','LineWidth',2)
end
hold off
pause(1)
 
%% Menampilkan dan Menyimpan setiap perpotongan objek pada gambar
figure
for x = 1:Na
    [m,n] = find(T == x);
    x1 = img(min(m):max(m),min(n):max(n));
    imshow(~x1)
    pause(0)
    namefile = char(strcat('D:\citra uas\4x4\','Aksara-',num2str(x),'.jpeg'));
    imwrite(~x1,namefile);
end