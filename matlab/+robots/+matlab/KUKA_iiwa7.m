function robot = KUKA_iiwa7(dataFormat)
%KUKA_iiwa7 Create rigidBodyTree for the robot model
%   ROBOT = KUKA_iiwa7(DATAFORMAT) constructs a rigidBodyTree, ROBOT, and sets the
%   data format to DATAFORMAT. The possible values of DATAFORMAT are 
%   'struct', 'column' and 'row'. The default value is 'column', which 
%   matches the data format of the rigidbodytree object used to generate 
%   this function.

%   Auto-generated by MATLAB on 08-Jan-2023 15:12:42

%#codegen

narginchk(0,1);
if ~nargin==1
dataFormat='column';
end
robot = rigidBodyTree('MaxNumBodies', 20, 'DataFormat', dataFormat);
robot.Gravity = [                     0,                      0,                      0];
robot.BaseName = 'base';


% Add body, 'base2', and joint, 'base2'
bodyName = 'base2';
bodyMass =                      1;
bodyCoM = [                     0,                      0,                      0];
bodyInertia = [                     1,                      1,                      1,                      0,                      0,                      0];
parentName = 'base';
jointName = 'base2';
jointType = 'fixed';
T_Joint_to_Parent = [                     1,                      0,                      0,                      0; ...
                                          0,                      1,                      0,                      0; ...
                                          0,                      0,                      1,                      0; ...
                                          0,                      0,                      0,                      1];

joint = rigidBodyJoint(jointName, jointType);
joint.setFixedTransform(T_Joint_to_Parent);
body = rigidBody(bodyName, "MaxNumCollisions", 0);

body.Joint = joint;
body.Mass = bodyMass;
body.CenterOfMass = bodyCoM;
body.Inertia = bodyInertia;
robot.addBody(body, parentName);


% Add body, 'L1', and joint, 'J1'
bodyName = 'L1';
bodyMass =                      1;
bodyCoM = [                     0,                      0,                      0];
bodyInertia = [                     1,                      1,                      1,                      0,                      0,                      0];
parentName = 'base2';
jointName = 'J1';
jointType = 'revolute';
dhparams = [                     0,     -1.570796326794897,                   0.34,                      0];

joint = rigidBodyJoint(jointName, jointType);
joint.setFixedTransform(dhparams, 'dh');
jointAxis = [                     0,                      0,                      1];
jointPositionLimits = [    -3.141592653589793,      3.141592653589793];
jointHomePosition =                      0;
joint.PositionLimits = jointPositionLimits;
joint.JointAxis = jointAxis;
joint.HomePosition = jointHomePosition;
body = rigidBody(bodyName, "MaxNumCollisions", 0);

body.Joint = joint;
body.Mass = bodyMass;
body.CenterOfMass = bodyCoM;
body.Inertia = bodyInertia;
robot.addBody(body, parentName);


% Add body, 'L2', and joint, 'J2'
bodyName = 'L2';
bodyMass =                      1;
bodyCoM = [                     0,                      0,                      0];
bodyInertia = [                     1,                      1,                      1,                      0,                      0,                      0];
parentName = 'L1';
jointName = 'J2';
jointType = 'revolute';
dhparams = [                     0,      1.570796326794897,                      0,                      0];

joint = rigidBodyJoint(jointName, jointType);
joint.setFixedTransform(dhparams, 'dh');
jointAxis = [                     0,                      0,                      1];
jointPositionLimits = [    -3.141592653589793,      3.141592653589793];
jointHomePosition =                      0;
joint.PositionLimits = jointPositionLimits;
joint.JointAxis = jointAxis;
joint.HomePosition = jointHomePosition;
body = rigidBody(bodyName, "MaxNumCollisions", 0);

body.Joint = joint;
body.Mass = bodyMass;
body.CenterOfMass = bodyCoM;
body.Inertia = bodyInertia;
robot.addBody(body, parentName);


% Add body, 'L3', and joint, 'J3'
bodyName = 'L3';
bodyMass =                      1;
bodyCoM = [                     0,                      0,                      0];
bodyInertia = [                     1,                      1,                      1,                      0,                      0,                      0];
parentName = 'L2';
jointName = 'J3';
jointType = 'revolute';
dhparams = [                     0,     -1.570796326794897,                    0.4,                      0];

joint = rigidBodyJoint(jointName, jointType);
joint.setFixedTransform(dhparams, 'dh');
jointAxis = [                     0,                      0,                      1];
jointPositionLimits = [    -3.141592653589793,      3.141592653589793];
jointHomePosition =                      0;
joint.PositionLimits = jointPositionLimits;
joint.JointAxis = jointAxis;
joint.HomePosition = jointHomePosition;
body = rigidBody(bodyName, "MaxNumCollisions", 0);

body.Joint = joint;
body.Mass = bodyMass;
body.CenterOfMass = bodyCoM;
body.Inertia = bodyInertia;
robot.addBody(body, parentName);


% Add body, 'L4', and joint, 'J4'
bodyName = 'L4';
bodyMass =                      1;
bodyCoM = [                     0,                      0,                      0];
bodyInertia = [                     1,                      1,                      1,                      0,                      0,                      0];
parentName = 'L3';
jointName = 'J4';
jointType = 'revolute';
dhparams = [                     0,      1.570796326794897,                      0,                      0];

joint = rigidBodyJoint(jointName, jointType);
joint.setFixedTransform(dhparams, 'dh');
jointAxis = [                     0,                      0,                      1];
jointPositionLimits = [    -3.141592653589793,      3.141592653589793];
jointHomePosition =                      0;
joint.PositionLimits = jointPositionLimits;
joint.JointAxis = jointAxis;
joint.HomePosition = jointHomePosition;
body = rigidBody(bodyName, "MaxNumCollisions", 0);

body.Joint = joint;
body.Mass = bodyMass;
body.CenterOfMass = bodyCoM;
body.Inertia = bodyInertia;
robot.addBody(body, parentName);


% Add body, 'L5', and joint, 'J5'
bodyName = 'L5';
bodyMass =                      1;
bodyCoM = [                     0,                      0,                      0];
bodyInertia = [                     1,                      1,                      1,                      0,                      0,                      0];
parentName = 'L4';
jointName = 'J5';
jointType = 'revolute';
dhparams = [                     0,     -1.570796326794897,                    0.4,                      0];

joint = rigidBodyJoint(jointName, jointType);
joint.setFixedTransform(dhparams, 'dh');
jointAxis = [                     0,                      0,                      1];
jointPositionLimits = [    -3.141592653589793,      3.141592653589793];
jointHomePosition =                      0;
joint.PositionLimits = jointPositionLimits;
joint.JointAxis = jointAxis;
joint.HomePosition = jointHomePosition;
body = rigidBody(bodyName, "MaxNumCollisions", 0);

body.Joint = joint;
body.Mass = bodyMass;
body.CenterOfMass = bodyCoM;
body.Inertia = bodyInertia;
robot.addBody(body, parentName);


% Add body, 'L6', and joint, 'J6'
bodyName = 'L6';
bodyMass =                      1;
bodyCoM = [                     0,                      0,                      0];
bodyInertia = [                     1,                      1,                      1,                      0,                      0,                      0];
parentName = 'L5';
jointName = 'J6';
jointType = 'revolute';
dhparams = [                     0,      1.570796326794897,                    0.4,                      0];

joint = rigidBodyJoint(jointName, jointType);
joint.setFixedTransform(dhparams, 'dh');
jointAxis = [                     0,                      0,                      1];
jointPositionLimits = [    -3.141592653589793,      3.141592653589793];
jointHomePosition =                      0;
joint.PositionLimits = jointPositionLimits;
joint.JointAxis = jointAxis;
joint.HomePosition = jointHomePosition;
body = rigidBody(bodyName, "MaxNumCollisions", 0);

body.Joint = joint;
body.Mass = bodyMass;
body.CenterOfMass = bodyCoM;
body.Inertia = bodyInertia;
robot.addBody(body, parentName);


% Add body, 'L7', and joint, 'J7'
bodyName = 'L7';
bodyMass =                      1;
bodyCoM = [                     0,                      0,                      0];
bodyInertia = [                     1,                      1,                      1,                      0,                      0,                      0];
parentName = 'L6';
jointName = 'J7';
jointType = 'revolute';
T_Joint_to_Parent = [                     1,                      0,                      0,                      0; ...
                                          0,                      1,                      0,                      0; ...
                                          0,                      0,                      1,                      0; ...
                                          0,                      0,                      0,                      1];

joint = rigidBodyJoint(jointName, jointType);
joint.setFixedTransform(T_Joint_to_Parent);
jointAxis = [                     0,                      0,                      1];
jointPositionLimits = [    -3.141592653589793,      3.141592653589793];
jointHomePosition =                      0;
joint.PositionLimits = jointPositionLimits;
joint.JointAxis = jointAxis;
joint.HomePosition = jointHomePosition;
body = rigidBody(bodyName, "MaxNumCollisions", 0);

body.Joint = joint;
body.Mass = bodyMass;
body.CenterOfMass = bodyCoM;
body.Inertia = bodyInertia;
robot.addBody(body, parentName);


% Add body, 'tool', and joint, 'tool'
bodyName = 'tool';
bodyMass =                      1;
bodyCoM = [                     0,                      0,                      0];
bodyInertia = [                     1,                      1,                      1,                      0,                      0,                      0];
parentName = 'L7';
jointName = 'tool';
jointType = 'fixed';
T_Joint_to_Parent = [ 6.123233995736766e-17,                      0,                      1,                   0.15; ...
                                          0,                      1,                      0,                   0.25; ...
                                         -1,                      0,  6.123233995736766e-17,                    0.1; ...
                                          0,                      0,                      0,                      1];

joint = rigidBodyJoint(jointName, jointType);
joint.setFixedTransform(T_Joint_to_Parent);
body = rigidBody(bodyName, "MaxNumCollisions", 0);

body.Joint = joint;
body.Mass = bodyMass;
body.CenterOfMass = bodyCoM;
body.Inertia = bodyInertia;
robot.addBody(body, parentName);


