function varargout = untitled(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function edit1_Callback(hObject, eventdata, handles)

function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)


function edit2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)


function edit3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)


function edit4_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)

function edit5_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)

function edit6_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)

function edit7_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function popupmenu1_Callback(hObject, eventdata, handles)
a=get(handles.edit1,'string');
Am=str2num(a);
b=get(handles.edit2,'string');
Fm=str2num(b);
c=get(handles.edit4,'string');
Ap=str2num(c);
d=get(handles.edit5,'string');
Fp=str2num(d);
AmplZgomot=get(handles.edit8,'string');
reqAmplZgomot=str2num(AmplZgomot);
fs=5000;     %frecventa de esantionare
Ts=1/fs;     %Perioada de esantionare
N=1000;   %Numar de esantioane
t=0: Ts :N*Ts-Ts;
f=[-fs/2:fs/N:fs/2-fs/N];    %axa frecventei
Purtator=Ap*sin(2*pi*Fp.*t);

Modulator=get(handles.popupmenu2,'value')
switch Modulator
    case 1
        Modulator=Am*sin(2*pi*Fm.*t);
    case 2
        Modulator=Am*square(2*pi*Fm.*t);
    case 3
        Modulator=Am*sawtooth(2*pi*Fm.*t);
    case 4
        Modulator=Am*sin(2*pi*Fm.*t)+10*Am*sin(2*pi*10*Fm.*t)+100*Am*sin(2*pi*100*Fm.*t);

end

Modulat=Modulator.*Purtator;
Y=fft(Modulat);

[num,den] = butter(10,Fp*2/fs); %filtru Butterworth
Demodulat =filtfilt(num,den,Modulat);

Z=fft(Demodulat);

Zgomot = AmplZgomot*randn(size(Modulat));          
Semnalcuzgomot = Modulat+Zgomot;                       


k=get(handles.popupmenu1,'value')
switch k
    case 1
        plot(t,Modulator);
        hold on
    case 2
        plot(t,Purtator);
    case 3
        plot(t,Modulat);
        hold off
    case 4 
        plot(t,Semnalcuzgomot);
    case 5
        stem(f,fftshift(abs(Y)));
    case 6
        plot(t, Demodulat);
    case 7
        stem(f,fftshift(abs(Z)));
end


function popupmenu1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)

function edit8_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function popupmenu2_Callback(hObject, eventdata, handles)





function popupmenu2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)

% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
