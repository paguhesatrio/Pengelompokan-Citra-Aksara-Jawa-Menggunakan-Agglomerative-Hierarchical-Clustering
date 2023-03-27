function Intensity_Of_Character = autoIntensity_Of_Character(Intensity_Of_Character)
for k=1:length(Intensity_Of_Character)
cellContents = Intensity_Of_Character{k}; % Extract array from this cell.

%cellContents = ekstrakciri_5unit(cellContents); %Intensity_Of_Character
cellContents = ekstrakciri_4unit(cellContents); %Intensity_Of_Character
%cellContents = ekstrakciri_3unit(cellContents); %Intensity_Of_Character

cellContents=cellContents(:);
cellContents=cellContents';
Intensity_Of_Character{k} = cellContents; % Stuff back in.
end