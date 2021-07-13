function displayUI(analyzedData, ax)
cla(ax);
ax.NextPlot = 'add';
% legendEntries = {};
x = [analyzedData.pcData.TargetX];
y = [analyzedData.pcData.TargetY];
if ~isempty(x)
    for i = 1:numel(x)
        h = plot(x(i), y(i), 'x', 'color', [0, 0.4470, 0.7410]);
        h.ButtonDownFcn = @(src,event) SelectedTargetProperties(src, event, analyzedData.pcData, i);
    end
%     h =  plot(x, y, 'x', 'color', [0, 0.4470, 0.7410]);
%     h.ButtonDownFcn = @(src,event) uiproba2(src, event, analyzedData.pcData);
%     legendEntries = [legendEntries, {'Target'}];
end