within ElectrificationTraining.Workshop03.Powertrains.Variants;
model SingleDetailed
    extends .ElectrificationTraining.Workshop03.Powertrains.Variants.SingleNominal(redeclare replaceable .ElectrificationTraining.Workshop03.Batteries.Variants.Tabular battery,redeclare replaceable .ElectrificationTraining.Workshop03.Machines.Variants.TabularGearbox motor(controller(external_mode = false)));
end SingleDetailed;
