function [fac] = New_Station(sc,Station_Name)
%%从表格寻找匹配的地面站的坐标，并新建地面站

%读数据
T = readtable('station.csv');%读取表格数据
T_struct=table2struct(T);%把表格准换成struct格式

%匹配并新建地面站
for i=1:size(T_struct,1)
   if strcmp(Station_Name,T_struct(i).Var1)
       fac=sc.Children.New('eFacility',T_struct(i).Var2);
       fac.Position.AssignGeodetic(T_struct(i).Var3,T_struct(i).Var4,T_struct(i).Var5);%先纬度后经度
       break;
   else
       continue;
   end
end

end

