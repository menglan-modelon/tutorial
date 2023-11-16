within ElectrificationTraining.Workshop02.Machines.Experiments;

model GeneralizedNominal "Evaluate torque/power limits for a speed sweep"
  extends .Modelon.Icons.Experiment;
  .Electrification.Machines.Control.Signals.tau_ref torque_ref(
    id=machine.id,
    causality=.Electrification.Utilities.Types.Causality.Parameter,
    k=.Modelica.Constants.inf) annotation (Placement(transformation(extent={{-34.0,16.0},{-26.0,24.0}},rotation = 0.0,origin = {0.0,0.0})));
  .Electrification.Electrical.DCVoltage vSource(V=800,internal_ground=true)
    annotation (Placement(transformation(extent={{-40.0,-14.0},{-52.0,-2.0}},rotation = 0.0,origin = {0.0,0.0})));
  .Modelica.Mechanics.Rotational.Sources.Speed speed(exact=true)
    annotation (Placement(transformation(extent={{61.0,-18.0},{41.0,2.0}},rotation = 0.0,origin = {0.0,0.0})));
  .Modelica.Blocks.Sources.Ramp speedRamp(
    height=2*2000,
    duration=10,
    offset=-2000)
    annotation (Placement(transformation(extent={{91.0,-18.0},{71.0,2.0}},rotation = 0.0,origin = {0.0,0.0})));
    .ElectrificationTraining.Workshop02.Machines.Variants.Nominal machine(display_name = true) annotation(Placement(transformation(extent = {{-8.0,-18.0},{12.0,2.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
  connect(speedRamp.y, speed.w_ref) annotation (
    Line(points={{70,-8},{63,-8}}, color={0,0,127}));
    connect(machine.flange,speed.flange) annotation(Line(points = {{12,-8},{41,-8}},color = {0,0,0}));
    connect(machine.plug_a,vSource.plug_a) annotation(Line(points = {{-8,-8},{-40,-8}},color = {255,128,0}));
    connect(torque_ref.systemBus,machine.controlBus) annotation(Line(points = {{-26,20},{-6,20},{-6,2}},color = {240,170,40},pattern = LinePattern.Dot));
  annotation (experiment(StopTime=10, Interval=0.01));
end GeneralizedNominal;
