% Melakukan ekstraksi ciri gambar aksara
clear all;clc;close all;

%% Membaca Semua Baris Citra
imagefiles = dir('*.jpeg');      
nfiles = length(imagefiles);% Jumlah file yang ditemukan
for ii=1:nfiles
   currentfilename = imagefiles(ii).name;
   currentimage = imread(currentfilename);
   images{ii} = currentimage;
end

%% Resize Citra
resize = autoresize(images)

%% Intensity of Character
Intensity_Of_Character = autoIntensity_Of_Character(resize)
Intensity_Of_Character = Intensity_Of_Character';
Intensity_Of_Character = cell2mat(Intensity_Of_Character);

%% Menyimpan data dari ekstraksi ciri
save ('DataEkstraksiCiri.mat','Intensity_Of_Character');