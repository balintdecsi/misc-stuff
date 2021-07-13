function mouseMove (object, ~, x, y)
% C = object.CurrentPoint;
if ~isempty(find(abs(C(1,1) - x) < 0.5)) && ~isempty(find(abs(C(1,2) - y) < 0.5))
    title(object, 'Target found!');
else
    title(gca, ['(X,Y) = (', num2str(C(1,1)), ', ',num2str(C(1,2)), ')']);
end
end