function fitur = ekstrakciri_4unit(kar)
data=kar;
unit=4;
ukuran=size(data,1);
uk_unit=ukuran/unit;
hasil=zeros(unit,unit);
%ciri baris atas
for x=1:unit
    sum=0;
    indek=(x-1)*uk_unit;
    for y=1:uk_unit
        for z=1:uk_unit
              if (kar(y,indek+z)==0)
                  sum=sum+1;
              end
        end
    end
    hasil(1,x)=sum;
end
%ciri baris 2
for x=1:unit
    sum=0;
    indek=(x-1)*uk_unit;
    for y=uk_unit+1:2*uk_unit
        for z=1:uk_unit
              if (kar(y,indek+z)==0)
                  sum=sum+1;
              end
        end
    end
    hasil(2,x)=sum;
end
%ciri baris 3
for x=1:unit
    sum=0;
    indek=(x-1)*uk_unit;
    for y=2*uk_unit+1:3*uk_unit
        for z=1:uk_unit
              if (kar(y,indek+z)==0)
                  sum=sum+1;
              end
        end
    end
    hasil(3,x)=sum;
end
%baris paling bawah
 for x=1:unit
     sum=0;
     indek=(x-1)*uk_unit;
     for y=3*uk_unit+1:4*uk_unit
         for z=1:uk_unit
               if (kar(y,indek+z)==0)
                   sum=sum+1;
               end
         end
     end
     hasil(4,x)=sum;
end
fitur=hasil;
end