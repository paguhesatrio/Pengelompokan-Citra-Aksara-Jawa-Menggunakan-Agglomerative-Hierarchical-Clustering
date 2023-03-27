% Melakukan AHC gambar aksara
clear all;clc;close all;

%% Meload data ciri yang telah sebelumnya diekstraksi
load DataEkstraksiCiri.mat
 
%% Membuat setiap elemen berisi vektor jarak antara sepasang objek.
distance = pdist(Intensity_Of_Character);

%% Memformat ulang vektor jarak menjadi matriks
distance_matrix = squareform(distance)

%% Mengelompokkan kedalam cluster menggunakan average
Z = linkage(Intensity_Of_Character,'Complete') 

%% Membuat dendrogram dengan 10 iterasi
dendrogram(Z)

