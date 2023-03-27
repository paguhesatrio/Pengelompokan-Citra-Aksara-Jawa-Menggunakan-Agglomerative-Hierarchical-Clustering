function images = autoresize(images)
for k=1:length(images)
cellContents = images{k}; % Ekstrak array dari sel ini.

%cellContents = imresize(cellContents, [44,44]); % Ubah ukuran menjadi 44x44.
cellContents = imresize(cellContents, [33,33]); % Ubah ukuran menjadi 33x33.

filename = char(strcat('D:\citra uas\3x3\','aksara-',num2str(k),'.jpeg'));
imwrite(cellContents,filename);
images{k} = cellContents; % Stuff back in.
end
end