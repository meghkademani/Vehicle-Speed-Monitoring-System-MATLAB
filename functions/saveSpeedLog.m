function data_log = saveSpeedLog(time, speed, status)

% Create vehicle speed data log

data_log = table(time', speed', status', ...
    'VariableNames', {'Time_Seconds', 'Speed_km_h', 'Status'});

% Save data log to CSV file

writetable(data_log, 'vehicle_speed_log.csv');

end