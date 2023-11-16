within ElectrificationTraining.Workshop03.Machines.Variants;
model NominalGerbox
    extends .ElectrificationTraining.Workshop03.Machines.Variants.Nominal(redeclare replaceable .Electrification.Machines.Mechanical.Gearbox mechanical(ratio = 10),display_name = true);
end NominalGerbox;
