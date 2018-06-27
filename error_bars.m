function [e] = error_bars(interval_between_errorbar, cost, b)

interval_errorbar = b/interval_between_errorbar; 

% create error bars
e(1) = std(cost(1));
e(2) = std(cost(2));

for f=1:interval_errorbar
    std_thing = std(cost(3:(interval_between_errorbar*f)));
    e(f*interval_between_errorbar) = std_thing;
end


    
    