clc;
clear;
%% Initialize Aircraft Data
Ixx = 11187.8; b = 13.3250;
Iyy = 22854.8; S = 12.9900;
Izz = 31974.8; c = 1.9910;
Ixz = 1930.1;

%% Initialize Atmospheric Data
R          = 287.05;    T_0             = 288.15;   h_stratopause = 20;
gamma_trop = -0.0065;   rho_0           = 1.225;
h_0        = 0;         h_tropopause    = 11;


%% Implementation Aerodynamic Model Identification Algorithm
sim Citation
