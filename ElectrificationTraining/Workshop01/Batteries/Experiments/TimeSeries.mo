within ElectrificationTraining.Workshop01.Batteries.Experiments;
model TimeSeries
    extends .Electrification.Batteries.Experiments.Verification.TimeSeries(redeclare replaceable .ElectrificationTraining.Workshop01.Batteries.Variants.Tabular batteryPack(redeclare replaceable .Electrification.Batteries.Thermal.Examples.CommonCell thermal,enable_thermal_port = true));
    .Electrification.Batteries.Thermal.Adapters.Ambient ambient annotation(Placement(transformation(extent = {{4.0,36.0},{-4.0,44.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Thermal.HeatTransfer.Sources.FixedTemperature ambientTemp(T = 303.15) annotation(Placement(transformation(extent = {{-40.0,30.0},{-20.0,50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor(G = 100) annotation(Placement(transformation(extent = {{54.0,30.0},{74.0,50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Batteries.Thermal.Adapters.CellsLumped cellsLumped annotation(Placement(transformation(extent = {{30,36},{38,44}},origin = {0,0},rotation = 0)));
    .Modelica.Thermal.HeatTransfer.Sources.FixedTemperature coolantTemp(T = 288.15) annotation(Placement(transformation(extent = {{104.0,30.0},{84.0,50.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(ambient.battery,batteryPack.thermalPort) annotation(Line(points = {{4,40},{20,40},{20,10}},color = {191,0,0}));
    connect(ambientTemp.port,ambient.heat) annotation(Line(points = {{-20,40},{-4,40}},color = {191,0,0}));
    connect(thermalConductor.port_a,cellsLumped.heat) annotation(Line(points = {{54,40},{38,40}},color = {191,0,0}));
    connect(cellsLumped.battery,ambient.battery) annotation(Line(points = {{30,40},{4,40}},color = {191,0,0}));
    connect(coolantTemp.port,thermalConductor.port_b) annotation(Line(points = {{84,40},{74,40}},color = {191,0,0}));
end TimeSeries;
