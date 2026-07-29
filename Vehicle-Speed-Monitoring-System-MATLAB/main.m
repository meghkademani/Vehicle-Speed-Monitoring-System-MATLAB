clc;
clear;
close all;
% =========================================================
% Vehicle Speed Monitoring System
% MATLAB Project
%
% Description:
% This project monitors vehicle speed, detects overspeed
% conditions, classifies severity levels, calculates speed
% statistics, visualizes speed data, simulates real-time
% monitoring, and logs results to a CSV file.
%
% Author : Megh 
% =========================================================

disp('   Vehicle speed Monitoring System');
disp('-----------------------------------');
%% 1. Input Data

speed = [45 53 60 72 80 92 105 110 95 88 75 65];
time = 0:length(speed)-1;
% Maximum allowed vehicle speed in km/h
speed_limit = 90;

overspeed_count = 0;
warning_count = 0;
critical_count = 0;
status = strings(size(speed));
%% 2. Speed Monitoring and Classification
[status, overspeed_count, warning_count, critical_count] = ...
    monitorSpeed(speed, speed_limit);



%% 3. Speed Statistics

[max_speed, min_speed, average_speed] = ...
    calculateStatistics(speed);

fprintf('\n');
fprintf('========================================\n');
fprintf('     VEHICLE SPEED MONITORING SUMMARY\n');
fprintf('========================================\n');

fprintf('Speed Limit        : %d km/h\n', speed_limit);
fprintf('Maximum Speed      : %d km/h\n', max_speed);
fprintf('Minimum Speed      : %d km/h\n', min_speed);
fprintf('Average Speed      : %.2f km/h\n', average_speed);

fprintf('----------------------------------------\n');
fprintf('Total Measurements : %d\n', length(speed));
fprintf('Overspeed Events   : %d\n', overspeed_count);
fprintf('Warning Events     : %d\n', warning_count);
fprintf('Critical Events    : %d\n', critical_count);


fprintf('========================================\n');

%% 4. Speed Visualization
figure;

plot(speed, '-o');

hold on;

yline(speed_limit, '--');

xlim([0 11]);
xticks(0:1:11);

xlabel('Measurement Number');
ylabel('Vehicle Speed (km/h)');

title('Vehicle Speed Monitoring');

legend('Vehicle Speed', 'Speed Limit');

grid on;
saveas(gcf, 'vehicle_speed_graph.png');
%% 5. Overspeed Visualization
overspeed_values = speed(speed > speed_limit);

figure;

plot(speed, '-o', 'Color', 'g', 'LineWidth', 2, 'MarkerSize', 6);

hold on;

yline(speed_limit, '--');

plot(find(speed > speed_limit), overspeed_values, 'ro', 'MarkerSize', 8, 'LineWidth', 2);

xlabel('Measurement Number');
ylabel('Vehicle Speed (km/h)');

title('Vehicle Speed Monitoring');

legend('Vehicle Speed', 'Speed Limit', 'Overspeed');

grid on;


% Severity Classification Graph

figure;

plot(speed, '-o', 'Color', 'g', 'LineWidth', 2, 'MarkerSize', 6);

hold on;

yline(speed_limit, '--', 'LineWidth', 2);


warning_index = find(speed > speed_limit & speed <= 100);
warning_values = speed(warning_index);

plot(warning_index, warning_values, 'wo', ...
    'MarkerSize', 8, ...
    'LineWidth', 2);


critical_index = find(speed > 100);
critical_values = speed(critical_index);

plot(critical_index, critical_values, 'ro', ...
    'MarkerSize', 8, ...
    'LineWidth', 2);

xlabel('Measurement Number');
ylabel('Vehicle Speed (km/h)');

title('Vehicle Speed Severity Monitoring');

legend('Vehicle Speed', 'Speed Limit', 'Warning', 'Critical');

grid on;
saveas(gcf, 'vehicle_speed_severity_graph.png');
%% 6. Real-Time Monitoring Simulation
disp(' ');
disp('REAL-TIME VEHICLE SPEED MONITORING');
disp('----------------------------------');

for i = 1:length(speed)

    fprintf('Time: %d sec | Speed: %d km/h | %s\n', ...
        time(i), speed(i), status(i));

    pause(1);

end
%% 7. Data Logging and CSV Export
disp(' ');
disp('VEHICLE SPEED DATA LOG');
disp('----------------------');

data_log = saveSpeedLog(time, speed, status);

disp(data_log);