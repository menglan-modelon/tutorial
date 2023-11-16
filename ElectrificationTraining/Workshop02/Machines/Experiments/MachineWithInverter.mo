within ElectrificationTraining.Workshop02.Machines.Experiments;

model MachineWithInverter "Evaluate torque/power limits for a speed sweep"
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
    .Electrification.Machines.Examples.AC.PMSM machine(display_name = true,enable_thermal_port = false) annotation(Placement(transformation(extent = {{10.0,-18.0},{30.0,2.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Inverters.Examples.ThreePhasePMSM inverter(display_name = true,enable_thermal_port = false,id_machine = machine.id,controller(pp = machine.core.pp,L_d = machine.core.L_d,L_q = machine.core.L_q,wNominal = machine.core.wNominal,vPeakPhase = machine.core.vPeakPhase,machineControl(external_torque = true))) annotation(Placement(transformation(extent = {{-20.0,-18.0},{0.0,2.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
  connect(speedRamp.y, speed.w_ref) annotation (
    Line(points={{70,-8},{63,-8}}, color={0,0,127}));
    connect(inverter.plug_a,vSource.plug_a) annotation(Line(points = {{-20,-8},{-40,-8}},color = {255,128,0}));
    connect(torque_ref.systemBus,inverter.controlBus) annotation(Line(points = {{-26,20},{-18,20},{-18,2}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(machine.controlBus,torque_ref.systemBus) annotation(Line(points = {{12,2},{12,20},{-26,20}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(inverter.plug_b,machine.plug_a) annotation(Line(points = {{0,-8},{10,-8}},color = {255,128,0}));
    connect(machine.flange,speed.flange) annotation(Line(points = {{30,-8},{41,-8}},color = {0,0,0}));
  annotation (experiment(StopTime=10, Interval=0.01));
end MachineWithInverter;
