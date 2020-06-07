%% Background
% The robot arm has four parameters. 
% It has lengths L1 and L2 for the two links, and angles of rotation theta1 and theta2 for the two joints.
% Create symbolic variables for the four parameters of the robot arm: L1, L2, theta1, and theta2.

syms L1 L2 theta1 theta2

% The x and y coordinates of the end effector can be found using the following formulas:

   % x=L2cos(θ1+θ2)+L1cos(θ1)

   % y=L2sin(θ1+θ2)+L1sin(θ1)

% Store the expressions for the xand y coordinates of the end effector in the variables x and y.

x = L2*cos(theta1 + theta2) + L1*cos(theta1);
y = L2*sin(theta1 + theta2) + L1*sin(theta1);

% This robot's first link is 4 feet long and second link is 2 feet long. 
% Substituting these values reduces the formulas from four parameters to two parameters.
% To visualize the possible positions of the end effector, you can create symbolic functions which depend on the two remaining parameters, θ1 and θ2. 
% Substitute 4 for L1 and 2 for L2 in the expressions x and y.
% Store the results as symbolic functions  fx(theta1,theta2) and
% fy(theta1,theta2), respectively.