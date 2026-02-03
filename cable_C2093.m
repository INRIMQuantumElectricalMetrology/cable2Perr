%Capacitance standard C2093 
%AH11, 100 pF
CHL = 100E-12; %Capacitance to be measured (2-port, high to low)
DHL = 1e-5; %and loss
CH = (242.42-40.65)*1E-12-CHL; 
%Capacitance H to ground of the standard - considers 0 dissipation
%Reading of the LCR meter at port H with port L shorted.
%CH is the reading, minus the LCR meter offset, minus CHL
%
%Cable 1: high side
C1 = 114E-12; 
D1 = 0.00015;
L1 = 468E-9;
R1 = 37.2E-3;
%
%Cable 2: low side
C2 = C1;
D2 = D1;
L2 = L1;
R2 = R1;
%
%Operation
f = 1592;