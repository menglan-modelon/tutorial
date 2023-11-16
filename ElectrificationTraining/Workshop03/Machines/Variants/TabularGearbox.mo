within ElectrificationTraining.Workshop03.Machines.Variants;
model TabularGearbox
    extends .ElectrificationTraining.Workshop03.Machines.Variants.Tabular(redeclare replaceable .Electrification.Machines.Mechanical.Gearbox mechanical(ratio = 10),core(limits(table_mot = [-2000,60;-1400,85;-985,120;-645,180;-470,240;-357,300;-250,375;250,375;470,240;645,180;985,120;1400,85;2000,60])),display_name = true);
end TabularGearbox;
