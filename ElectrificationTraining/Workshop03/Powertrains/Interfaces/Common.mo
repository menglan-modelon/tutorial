within ElectrificationTraining.Workshop03.Powertrains.Interfaces;
partial model Common
    .Electrification.Control.Interfaces.SystemBus controlBus annotation(Placement(transformation(extent = {{-80.0,80.0},{-40.0,120.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(Placement(transformation(extent = {{90.0,-10.0},{110.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name",origin={-2,-134})}));
end Common;
