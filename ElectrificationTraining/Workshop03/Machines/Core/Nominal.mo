within ElectrificationTraining.Workshop03.Machines.Core;
model Nominal
    extends .Electrification.Machines.Core.Examples.Ideal(limits(P_max_mot = 120000,tau_max_mot = 375,V_dc_min = 500,V_dc_0 = 450));
end Nominal;
