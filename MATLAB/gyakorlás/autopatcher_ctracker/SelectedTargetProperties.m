function varargout = SelectedTargetProperties(varargin)
% SELECTEDTARGETPROPERTIES Displays details of selected target in DiaryGui's UIaxes 

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SelectedTargetProperties_OpeningFcn, ...
                   'gui_OutputFcn',  @SelectedTargetProperties_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function SelectedTargetProperties_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

handles.pcData = varargin{3};
handles.idx = varargin{4};

handles.startTimeEdit.String = num2str(handles.pcData(handles.idx).StartTime);
handles.targetDepthEdit.String = num2str(handles.pcData(handles.idx).TargetDepth);
handles.firstResistanceEdit.String = num2str(handles.pcData(handles.idx).FirstResistance);
handles.resultEdit.String = handles.pcData(handles.idx).Result;
if handles.pcData(handles.idx).BreakIn == 1
    handles.lastPhaseEdit.String = 'BreakIn';
elseif handles.pcData(handles.idx).Sealing == 1
    handles.lastPhaseEdit.String = 'Sealing';
elseif handles.pcData(handles.idx).Hunting == 1
    handles.lastPhaseEdit.String = 'Hunting';
else
    handles.lastPhaseEdit.String = 'Started manually';
end
switch handles.pcData(handles.idx).APStopped
    case 0
        handles.manuallyStoppedEdit.String = 'No';
    case 1
        handles.manuallyStoppedEdit.String = 'Yes';
end

guidata(hObject, handles);

function varargout = SelectedTargetProperties_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function startTimeEdit_Callback(hObject, eventdata, handles)

function startTimeEdit_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function targetDepthEdit_Callback(hObject, eventdata, handles)

function targetDepthEdit_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function resultEdit_Callback(hObject, eventdata, handles)

function resultEdit_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function lastPhaseEdit_Callback(hObject, eventdata, handles)

function lastPhaseEdit_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function firstResistanceEdit_Callback(hObject, eventdata, handles)

function firstResistanceEdit_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function manuallyStoppedEdit_Callback(hObject, eventdata, handles)

function manuallyStoppedEdit_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
