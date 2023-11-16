within ElectrificationTraining.Workshop03.Batteries.Experiments;

model DischargeLinear
    extends .Electrification.Batteries.Experiments.Verification.Templates.StaticDischarge(redeclare replaceable .ElectrificationTraining.Workshop01.Batteries.Variants.Linear batteryPack);
end DischargeLinear;
