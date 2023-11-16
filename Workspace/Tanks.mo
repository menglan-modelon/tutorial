within Workspace;

model Tanks
   extends Modelica.Icons.Example;
    inner .Modelica.Fluid.System system annotation(Placement(transformation(extent = {{-100.0,0.0},{-80.0,20.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Fluid.Vessels.OpenTank tank(
    nPorts = 1,height = 12,crossArea = 1,use_portsData = false,level_start = 8,
    redeclare replaceable package Medium = .Modelica.Media.Water.ConstantPropertyLiquidWater) annotation(Placement(transformation(extent = {{-50.0,30.0},{-10.0,70.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Fluid.Pipes.StaticPipe pipe(redeclare replaceable package Medium = .Modelica.Media.Water.ConstantPropertyLiquidWater,length = 2,diameter = 0.1,height_ab = pipe.length,nParallel = 10) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-30.0,-10.0},rotation = 90.0)));
    .Modelica.Fluid.Vessels.OpenTank tank2(
    redeclare replaceable package Medium = .Modelica.Media.Water.ConstantPropertyLiquidWater,
    level_start = 0.01,use_portsData = false,crossArea = 1,height = 12,nPorts = 1) annotation(Placement(transformation(extent = {{20.0,12.0},{60.0,52.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Fluid.Pipes.StaticPipe pipe2(height_ab = -1,diameter = 0.1,length = 2,
    redeclare replaceable package Medium = .Modelica.Media.Water.ConstantPropertyLiquidWater) 
    annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {40.0,-22.0},rotation = 90.0)));

equation
    connect(pipe2.port_b,tank2.ports[1]) annotation(Line(points = {{40,-12},{40,12}},color = {0,127,255}));
    connect(pipe.port_b,tank.ports[1]) annotation(Line(points = {{-29.999999999999996,0},{-30,30}},color = {0,127,255}));
    connect(pipe2.port_a,pipe.port_a) annotation(Line(points = {{40,-32},{40,-38},{-30.000000000000004,-38},{-30.000000000000004,-20}},color = {0,127,255}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}),Documentation(info = "<html><p>double tank</p></html>"),experiment(StartTime = 0,StopTime = 1,Interval = 0,__Dymola_Algorithm = "",Tolerance = 1e-6));
end Tanks;
