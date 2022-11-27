%%从表格中读取经纬度，并新建地面站
clc;
clear;

Start_Time='1 Jan 2023 00:00:00';
End_Time='2 Jan 2023 00:00:00';
[app,root,sc]=New_Start('Try',Start_Time,End_Time);

%新建地面站
New_Station(sc,'北京');
