within ElectrificationTraining.Workshop03.Batteries.Experiments;

model DischargeTabular
    extends .Electrification.Batteries.Experiments.Verification.Templates.StaticDischarge(redeclare replaceable .ElectrificationTraining.Workshop01.Batteries.Variants.Tabular batteryPack);
end DischargeTabular;
