function h = negyzetesHiba(v1, v2)
s = 0;
for k = 1:length(v1)
    s = s + (v1(k) - v2(k)) ^ 2;
end
h = s;
end