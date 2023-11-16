within ElectrificationTraining.Workshop03.Powertrains.Variants;
model SingleNominal
    extends .ElectrificationTraining.Workshop03.Powertrains.Templates.SingleMotor(
    redeclare replaceable .ElectrificationTraining.Workshop03.Batteries.Variants.Nomianl battery,
    redeclare replaceable .ElectrificationTraining.Workshop03.Machines.Variants.NominalGerbox motor(controller(external_torque = true)));
end SingleNominal;
