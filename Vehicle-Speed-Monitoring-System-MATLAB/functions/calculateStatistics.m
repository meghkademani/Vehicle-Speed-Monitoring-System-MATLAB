function [max_speed, min_speed, average_speed] = ...
    calculateStatistics(speed)

% Calculate vehicle speed statistics

max_speed = max(speed);

min_speed = min(speed);

average_speed = mean(speed);

end