clear all; close all;


robotPositions = struct('RoboNo', {1, 6, 10, 65}, ...
                        'xPosition', {20, 50, 85, 20}, ...
                        'yPosition', {30, 70, 25, 80});


plotRobots(robotPositions);


robotPositions = fun_ch3_MoveRobot(robotPositions, 1, 60, 60);
robotPositions = fun_ch3_MoveRobot(robotPositions, 6, 10, 90);
robotPositions = fun_ch3_MoveRobot(robotPositions, 10, 90, 10);
robotPositions = fun_ch3_MoveRobot(robotPositions, 65, 50, 50);

function plotRobots(robotPositions)
    clf; 
    hold on;
    for i = 1:length(robotPositions)
        plot(robotPositions(i).xPosition, robotPositions(i).yPosition, '*');
        axis([0 100 0 100]); grid on;
        RoboNo_text = ['RoboNo: ' num2str(robotPositions(i).RoboNo)];
        text(robotPositions(i).xPosition + 1, robotPositions(i).yPosition + 1, RoboNo_text);
    end
    hold off;
end


function robotPositions = fun_ch3_MoveRobot(robotPositions, RoboNo, xNew, yNew)
    
    for i = 1:length(robotPositions)
        if robotPositions(i).RoboNo == RoboNo
           
            xOld = robotPositions(i).xPosition;
            yOld = robotPositions(i).yPosition;
            
          
            numSteps = 100;
            
         
            xStep = (xNew - xOld) / numSteps;
            yStep = (yNew - yOld) / numSteps;
            
           
            for step = 1:numSteps
                robotPositions(i).xPosition = xOld + step * xStep;
                robotPositions(i).yPosition = yOld + step * yStep;
                plotRobots(robotPositions);
                pause(0.01); 
            end
            
           
            robotPositions(i).xPosition = xNew;
            robotPositions(i).yPosition = yNew;
            break;
        end
    end
    plotRobots(robotPositions);
end
