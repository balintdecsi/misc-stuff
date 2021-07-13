function realtime = hms2realtime(h, mi, s)

D = duration(h, mi, s);
realtime = seconds(D);

end