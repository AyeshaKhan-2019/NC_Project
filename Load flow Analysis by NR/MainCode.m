%% Newton Raphson Load Flow analysis
clear all; close all; clc;
%% Choose the system to analize 
disp('Choose the power system to analize')

    disp(' Type 5 to use the IEEE 5 bus power system')
    disp(' Type 6 to use the IEEE 6 bus power system')
    disp(' Type 14 to use the IEEE 14 bus power system')
    disp(' Type 30 to use the IEEE 30 bus power system')
    disp(' Type 57 to use the IEEE 57 bus power system')
    disp(' Type 4 to use the power system example from book')
    nbus = input('enter selection >> ');
    

Y = ybus(nbus)             % Calling ybusppg.m to get Y-Bus Matrix..
busd = busdatas(nbus);      % Calling busdatas..
BMva = 100;                % Base MVA..


disp('Result obtained from Newton Raphson method');
newton_raphson(nbus,Y,busd,BMva)
