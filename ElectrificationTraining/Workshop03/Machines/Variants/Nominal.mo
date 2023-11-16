within ElectrificationTraining.Workshop03.Machines.Variants;

model Nominal "An electric machine with no losses"
  extends .Electrification.Machines.Templates.Machine(
    redeclare replaceable .ElectrificationTraining.Workshop02.Machines.Core.Nominal core,
    redeclare replaceable .Electrification.Machines.Electrical.Capacitor electrical,
    redeclare replaceable .Electrification.Machines.Mechanical.RotorInertia mechanical,
    redeclare replaceable .Electrification.Machines.Thermal.MachineConverterLumped thermal,
    redeclare replaceable .Electrification.Machines.Control.MultiMode controller(external_torque = true),
    fixed_temperature=true,display_name = true);
annotation (Documentation(revisions="<html>Copyright &copy; 2004-2023, MODELON AB <br /> The use of this software component is regulated by the licensing conditions for Modelon Libraries. <br />This copyright notice must, unaltered, accompany all components that are derived from, copied from, <br />or by other means have their origin from any Modelon Library.</html>", info="<html>
<p>This is an example of a torque controlled electric machine with ideal dynamics.</p>
<p>This is a &quot;generalized machine&quot;, which often represents an AC machine coupled with an inverter. Refer to the package <a href=\"modelica://Electrification.Machines.Information\">Information</a> for more details about this concept.</p>
<h4>Torque control</h4>
<p>The <a href=\"modelica://Electrification.Machines.Control.Torque\">Torque</a> controller that is used, (by default) listens to an external signal. This reference signal (tau_ref) is typically provided via the system control bus using the <a href=\"modelica://Electrification.Machines.Control.Signals.tau_ref\">tau_ref</a> signal adapter, as demonstrated in the <a href=\"modelica://Electrification.Machines.Experiments.TorqueControlThermal\">TorqueControlThermal</a> example.</p>
<h4>Core machine model</h4>
<p>An ideal <a href=\"modelica://Electrification.Machines.Core.Examples.Ideal\">core model</a> is used, that does not have any losses or torque dynamics.</p>
<h4>Thermal model</h4>
<p>The thermal model is configured as a fixed temperature for the converer and machine.</p>
<h4>Mechanical model</h4>
<p>The mechanical domain model is an <a href=\"modelica://Electrification.Machines.Mechanical.IdealShaft\">ideal shaft</a> without any losses or inertia.</p>
<h4>Initialization</h4>
<p>The speed and angle of the machine (rotor) can be initialized with the parameters <span style=\"font-family: Courier New;\">w_start</span> and <span style=\"font-family: Courier New;\">phi_start</span>, when the parameters <span style=\"font-family: Courier New;\">initialize_speed</span> and <span style=\"font-family: Courier New;\">initialize_angle</span> are set to <span style=\"font-family: Courier New;\">true</span>.</p>
</html>"));
end Nominal;
