%Capacitance standard
CHL = 100E-12; %Capacitance to be measured (2-port, high to low)
DHL = 1e-5; %and loss
%CH is capacitor (with the defining cable)
CH = 114E-12+(242.42-40.65)*1E-12-CHL; %Cable H and capacitance from port to ground

%Cable 1: connection from transformer port 0.1 to the post where 1000 pF is connected
%(with its own cable). There is a coax equalizer.
C1 = 486.09E-12; 
D1 = 0.00082;
L1 = 1.61E-6;
R1 = 144E-3;
%
%Cable 2: low side NOT CONSIDERED
C2 = 0;
D2 = 0;
L2 = 0;
R2 = 0;
%
%Operation
f = 1592;