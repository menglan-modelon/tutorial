within ElectrificationTraining.Workshop03.Powertrains.Templates;
partial model SingleMotor
    extends .ElectrificationTraining.Workshop03.Powertrains.Interfaces.Common;
    replaceable .Electrification.Batteries.Interfaces.BatteryPack battery(display_name = true) constrainedby .Electrification.Batteries.Interfaces.BatteryPack annotation(Placement(transformation(extent = {{-19.598463969545904,-20.401536030454103},{-60.401536030454096,20.401536030454103}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Electrification.Machines.Interfaces.Machine motor(display_name = true) constrainedby .Electrification.Machines.Interfaces.Machine annotation(Placement(transformation(extent = {{19.719511393125302,-20.280488606874698},{60.2804886068747,20.280488606874698}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Electrical.DCInit vInit(init_start = true,v_start = battery.summary.ocv) annotation(Placement(transformation(extent = {{-40.0,-60.0},{-20.0,-40.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(battery.plug_a,motor.plug_a) annotation(Line(points = {{-19.598463969545907,0},{19.719511393125302,0}},color = {255,128,0}));
    connect(motor.flange,flange_a) annotation(Line(points = {{60.2804886068747,0},{100,0}},color = {0,0,0}));
    connect(vInit.plug_a,motor.plug_a) annotation(Line(points = {{-20,-50},{-0.14024430343734906,-50},{-0.14024430343734906,0},{19.719511393125302,0}},color = {255,128,0}));
    connect(controlBus,battery.controlBus) annotation(Line(points = {{-60,100},{-60,40},{-23.678771175636726,40},{-23.678771175636726,20.401536030454103}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(controlBus,motor.controlBus) annotation(Line(points = {{-60,100},{-60,40},{23.77560911450024,40},{23.77560911450024,20.280488606874698}},color = {240,170,40},pattern = LinePattern.Dot));
end SingleMotor;
