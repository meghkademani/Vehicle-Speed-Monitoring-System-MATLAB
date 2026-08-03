function [status, overspeed_count, warning_count, critical_count] = ...
    monitorSpeed(speed, speed_limit)

% Monitor vehicle speed and classify speed conditions

overspeed_count = 0;
warning_count = 0;
critical_count = 0;

status = strings(size(speed));

for i = 1:length(speed)

    if speed(i) > 100

        status(i) = "CRITICAL";

        overspeed_count = overspeed_count + 1;
        critical_count = critical_count + 1;

    elseif speed(i) > speed_limit

        status(i) = "WARNING";

        overspeed_count = overspeed_count + 1;
        warning_count = warning_count + 1;

    else

        status(i) = "NORMAL";

    end

end

end