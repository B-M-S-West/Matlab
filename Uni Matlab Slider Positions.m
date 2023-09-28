%% Slider positions for Matlab at Uni


button = uicontrol('Style','togglebutton','Value',1,'Max',1,'Min',0,'String','Stop','Position', [10 10 40 40]);

freqslider=uicontrol('Style','slider','Value',0.5,'Max',1,'Min',0,'SliderStep',[0.01 0.01],'Position',[75 10 200 15]);
freq=uicontrol('Style','text','Position',[75 27 200 20]);

npointsslider=uicontrol('Style','slider','Value',50,'Max',200,'Min',10,'SliderStep',[0.01 0.01],'Position',[325 10 200 15]);
npoints=uicontrol('Style','text','Position',[325 27 200 20]);

timeslider=uicontrol('Style','slider','Value',10,'Max',100,'Min',10,'SliderStep',[0.01 0.01],'Position',[575 10 200 15]);
time=uicontrol('Style','text','Position',[575 27 200 20]);

phaseslider=uicontrol('Style','slider','Value',0,'Max',2.*pi,'Min',0,'SliderStep',[0.01 0.01],'Position',[600 763 200 15]);
phase=uicontrol('Style','text','Position',[600 780 200 20]);

string_value={'Sine'; 'Square'; 'Sawtooth'};
wavebox=uicontrol('Style','popupmenu','Position',[0 780 200 15], 'String', string_value,'Value', 1);

startslider=uicontrol('Style','slider','Value',0,'Max',100,'Min',0,'SliderStep',[0.01 0.01],'Position',[400 763 200 15]);
start=uicontrol('Style','text','Position',[400 780 200 20]);

finishslider=uicontrol('Style','slider','Value',10,'Max',100,'Min',5,'SliderStep',[0.01 0.01],'Position',[200 763 200 15]);
finish=uicontrol('Style','text','Position',[200 780 200 20]);