function [Qstar, e, iter, breakReason] = IK_robot755( Twt, Q0, opt )
    % IK wrapper specifically for robot755 robot
    
    robot = robots.matlab.robot755;
    
    [Qstar, e, iter, breakReason] = IK_matlab.IK( robot, Twt, Q0, opt );
    
end