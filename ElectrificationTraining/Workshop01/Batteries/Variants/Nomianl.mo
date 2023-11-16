within ElectrificationTraining.Workshop01.Batteries.Variants;
model Nomianl
    extends .Electrification.Batteries.Examples.Nominal(vNom = 800,specify_energy = true,energyNom = 216e6,specify_losses = Electrification.Batteries.Utilities.Types.SpecLosses.Power,pMax = 150000);
end Nomianl;
