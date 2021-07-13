function [h, m, s] = realtime2hms( realtime )

t = seconds(realtime);
[h, m, s] = hms(t);

end