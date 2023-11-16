within ElectrificationTraining.Workshop02.Machines.Core;
model Nominal
    extends .Electrification.Machines.Core.Examples.Ideal(limits(P_max_mot = 120000,tau_max_mot = 375));
end Nominal;
