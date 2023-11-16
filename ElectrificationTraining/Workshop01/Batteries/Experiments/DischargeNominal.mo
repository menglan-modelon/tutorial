within ElectrificationTraining.Workshop01.Batteries.Experiments;
model DischargeNominal
    extends .Electrification.Batteries.Experiments.Verification.Templates.StaticDischarge(
    redeclare replaceable .ElectrificationTraining.Workshop01.Batteries.Variants.Nomianl batteryPack);
end DischargeNominal;
