clear all;close all;

%fun_ch3_RobotPosition(20,30,1)
%fun_ch3_RobotPosition(50,70,6)
%fun_ch3_RobotPosition(85,25,10)

%function [] = fun_ch3_RobotPosition(xPosition,yPosition,RoboNo)

%plot(xPosition,yPosition,'*');
%axis([0 100 0 100]);grid on;
%RoboNo_text = ['RoboNo: ' num2str(RoboNo)];
%text(xPosition+1,yPosition+1,RoboNo_text);hold on;

%end
% Initial position
xPosition = 10;
yPosition = 20;

% Destination position
xDestination = 80;
yDestination = 90;

% Robot number
RoboNo = 1;

% Number of steps for animation
steps = 50;

% Call the moveRobot function
moveRobot(xPosition, yPosition, xDestination, yDestination, RoboNo, steps);

function [] = fun_ch3_RobotPosition(xPosition, yPosition, RoboNo)
    % Plot the initial position of the robot
    plot(xPosition, yPosition, '*', 'MarkerSize', 10, 'DisplayName', ['Robot ' num2str(RoboNo)]);
    axis([0 100 0 100]);
    grid on;
    RoboNo_text = ['RoboNo: ' num2str(RoboNo)];
    text(xPosition + 1, yPosition + 1, RoboNo_text);
    hold on;
end

function [] = moveRobot(xPosition, yPosition, xDestination, yDestination, RoboNo, steps)
    % Define the figure
    figure;
    % Plot the initial position
    fun_ch3_RobotPosition(xPosition, yPosition, RoboNo);
    
    % Calculate increments for movement
    xIncrement = (xDestination - xPosition) / steps;
    yIncrement = (yDestination - yPosition) / steps;

    % Initialize the current position
    currentX = xPosition;
    currentY = yPosition;

    % Loop over the number of steps to simulate movement
    for i = 1:steps
        % Clear the previous plot
        clf;
        
        % Update position
        currentX = currentX + xIncrement;
        currentY = currentY + yIncrement;
        
        % Plot the current position
        plot(currentX, currentY, 'o', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
        axis([0 100 0 100]);
        grid on;
        hold on;
        
        % Plot the path taken
        plot([xPosition, currentX], [yPosition, currentY], 'b--');
        
        % Display robot number
        RoboNo_text = ['RoboNo: ' num2str(RoboNo)];
        text(currentX + 1, currentY + 1, RoboNo_text);
        
        % Pause for animation effect
        pause(0.1);
    end

    % Plot final position
    plot(currentX, currentY, 'o', 'MarkerSize', 10, 'MarkerFaceColor', 'g', 'DisplayName', ['Final Position']);
    legend('show');
end

