within ElectrificationTraining.Workshop03.Powertrains.Experiments.Templates;
partial model Acceleration
extends Modelon.Icons.Experiment;
    .Electrification.Mechanical.SimpleChassis1D chassis annotation(Placement(transformation(extent = {{30.135780344304596,-19.864219655695404},{69.86421965569541,19.864219655695404}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .ElectrificationTraining.Workshop03.Powertrains.Interfaces.Common powertrain constrainedby .ElectrificationTraining.Workshop03.Powertrains.Interfaces.Common annotation(Placement(transformation(extent = {{-49.9144459232289,-19.914445923228897},{-10.085554076771103,19.914445923228897}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Machines.Control.Signals.tau_ref tau_ref(causality = Electrification.Utilities.Types.Causality.Parameter,k = 1e20) annotation(Placement(transformation(extent = {{-58.0,58.0},{-50.0,66.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Machines.Control.Signals.tau_ref tau_ref2(causality = Electrification.Utilities.Types.Causality.Parameter,k = 1e20,id = 2) annotation(Placement(transformation(extent = {{-58.0,44.0},{-50.0,52.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(powertrain.flange_a,chassis.flangeR) annotation(Line(points = {{-10.085554076771103,0},{30.135780344304592,0}},color = {0,0,0}));
    connect(tau_ref2.systemBus,powertrain.controlBus) annotation(Line(points = {{-50,48},{-41.94866755393734,48},{-41.94866755393734,19.914445923228897}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(tau_ref.systemBus,powertrain.controlBus) annotation(Line(points = {{-50,62},{-41.94866755393734,62},{-41.94866755393734,19.914445923228897}},color = {240,170,40},pattern = LinePattern.Dot));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end Acceleration;
