within ElectrificationTraining.Workshop03.Batteries.Core;
model Linear "Customized linear battery pack"
    extends .Electrification.Batteries.Core.Templates.Modular(
    redeclare replaceable .Electrification.Batteries.Core.Capacity.Ideal capacity(Q_cap_cell_nom = 18000),
    redeclare replaceable .Electrification.Batteries.Core.Aging.Examples.None aging,
    redeclare replaceable .Electrification.Batteries.Core.OCV.Linear voltage(vCell_high = 4.1,vCell_low = 3.4),
    redeclare replaceable .Electrification.Batteries.Core.Impedance.Resistive impedance(R0 = 0.085),
    redeclare replaceable .Electrification.Batteries.Core.SelfDischarge.None selfDischarge);
end Linear;
