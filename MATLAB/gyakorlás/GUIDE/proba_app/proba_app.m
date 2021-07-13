function varargout = proba_app(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @proba_app_OpeningFcn, ...
                   'gui_OutputFcn',  @proba_app_OutputFcn, ...
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

function proba_app_OpeningFcn(hObject, eventdata, handles, varargin)

%Kepek importalasa:
handles.k1 = imread('African Green Monkey Kidney_cos1line.jpg');
handles.k2 = imread('African Green Monkey Kidney_cos7line_2.jpg');
handles.e = imread('Endothelial.jpg');
[I, map] = imread('mp_tripple.png');
handles.rac = ind2rgb(I,map);

% Kek csatorna kivalasztasa:
handles.k1b = handles.k1(:,:,3);
handles.k2b = handles.k2(:,:,3);
handles.eb = handles.e(:,:,3);
handles.racb = handles.rac(:,:,3);

% Logical tombbe alakitas:
handles.k1bbw = imbinarize(handles.k1b, graythresh(handles.k1b));
handles.k2bbw = imbinarize(handles.k2b, graythresh(handles.k2b));
handles.ebbw = imbinarize(handles.eb, graythresh(handles.eb));
handles.racbbw = imbinarize(handles.racb, graythresh(handles.racb));

% bwmorph fuggveny vegrehajtasa az osszefuggo teruletek "simitasahoz":
handles.k1bbwmorph = bwmorph(handles.k1bbw, 'majority', inf);
handles.k2bbwmorph = bwmorph(handles.k2bbw, 'majority', inf);
handles.ebbwmorph = bwmorph(handles.ebbw, 'majority', inf);
handles.racbbwmorph = bwmorph(handles.racbbw, 'majority', inf);

% osszehasonlitas a bwmorph elotti es utani kepek kozott:
handles.k1stat = regionprops(handles.k1bbwmorph, 'Area');
handles.k2stat = regionprops(handles.k2bbwmorph, 'Area');
handles.estat = regionprops(handles.ebbwmorph, 'Area');
handles.racstat = regionprops(handles.racbbwmorph, 'Area');

% kezdoertek hozzarendeles
handles.current_data = 1;
imshow(handles.k1);

handles.output = hObject;

guidata(hObject, handles);

function varargout = proba_app_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

switch handles.current_data
    case 1
        imshow(handles.k1b);
    case 2
        imshow(handles.k2b);
    case 3
        imshow(handles.eb);
    case 4
        imshow(handles.racb);
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)

switch handles.current_data
    case 1
        imshow(handles.k1bbw);
    case 2
        imshow(handles.k2bbw);
    case 3
        imshow(handles.ebbw);
    case 4
        imshow(handles.racbbw);
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)

switch handles.current_data
    case 1
        imshow(handles.k1bbwmorph);
    case 2
        imshow(handles.k2bbwmorph);
    case 3
        imshow(handles.ebbwmorph);
    case 4
        imshow(handles.racbbwmorph);
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)

switch handles.current_data
    case 1
        imshowpair(handles.k1bbw,handles.k1bbwmorph, 'montage');
    case 2
        imshowpair(handles.k2bbw,handles.k2bbwmorph, 'montage');
    case 3
        imshowpair(handles.ebbw,handles.ebbwmorph, 'montage');
    case 4
        imshowpair(handles.racbbw,handles.racbbwmorph,'montage');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)

switch handles.current_data
    case 1
        disp([handles.k1stat.Area]);
    case 2
        disp([handles.k2stat.Area]);
    case 3
        disp([handles.estat.Area]);
    case 4
        disp([handles.racstat.Area]);
end

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)

% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)

% Determine the selected data set.
str = get(hObject, 'String');
val = get(hObject,'Value');
% Set current data to the selected data set.
switch str{val}
case 'Monkey kidney_1' % User selects peaks.
   handles.current_data = 1;
   imshow(handles.k1);
case 'Monkey kidney_2' % User selects membrane.
   handles.current_data = 2;
   imshow(handles.k2);
case 'Endothelial cells' % User selects sinc.
   handles.current_data = 3;
   imshow(handles.e);
case 'Random animal cells'
   handles.current_data = 4;
   imshow(handles.rac);
end

guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
