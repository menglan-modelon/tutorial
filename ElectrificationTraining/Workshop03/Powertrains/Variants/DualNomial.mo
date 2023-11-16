within ElectrificationTraining.Workshop03.Powertrains.Variants;
model DualNomial
    extends .ElectrificationTraining.Workshop03.Powertrains.Templates.DualMotor(redeclare replaceable .ElectrificationTraining.Workshop03.Batteries.Variants.Nomianl battery,redeclare replaceable .Workshop03.Machines.Variants.NominalGearbox motor1(display_name = true,controller(external_torque = true)),redeclare replaceable .Workshop03.Machines.Variants.NominalGearbox motor2(display_name = true,id = 2,controller(external_torque = true)));
end DualNomial;
