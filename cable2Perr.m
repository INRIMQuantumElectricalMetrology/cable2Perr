%The effect of cables on a two terminal-pair component
%Awan 2011, Sec. 5.4.3
%
close all; clear all; clc;
disp(sprintf('Cable error, capacitance two terminal-pair, Awan 2011 sec. 5.4.3'));
%
%Loads the set of parameters
%.m files with the name cable_*.m
%
%
parfiles = dir("cable_*.m");
%
for k = 1:numel(parfiles)
  printf("%2d) %s\n", k, parfiles(k).name);
end
%
idx = input("Select the cable and capacitor parameter file #: ");
%
if idx < 1 || idx > numel(parfiles)
  error("Invalid selection");
endif
%
parname = parfiles(idx).name;
run(parname);

%-----------------------------------------------------
omega = 2*pi*f;
%Cables and standard, compute impedance and admittance
Y1 = omega*C1*(1*j + D1);
Z1 = R1+j*omega*L1;
Y2 = omega*C2*(1*j + D2);
Z2 = R2+j*omega*L2;
YH = j*omega*CH;
YHL = omega*CHL*(1*j + DHL);
ZHL =1./YHL;
%
%Results. Error due to H and L cables, and total
%computed as Zmeas = (1+errZ)*ZHL
disp('');
disp('Error: relative change of the reading respect to the true value:');
errZ_H = (Y1.*Z1)/2 + YH.*Z1 + Z1./ZHL
errZ_L = (Y2.*Z2)/2
errZ_tot = errZ_H + errZ_L
%
%Convert to error in C
ZHLmeas = ZHL.*(1 + errZ_tot);
YHLmeas = 1./ZHLmeas;
CHLmeas = YHLmeas./(j*omega);
errC_tot = real((CHLmeas-CHL)./CHL)


