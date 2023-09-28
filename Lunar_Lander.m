%% Lunar Lander Ben West 4/10/2011
close all;
clear all;
%Initial Settings
gravity = 2; % lunar gravity, m/s^2
initialheight = 125; % starting height
initialvelocity = 0; % starting velocity
weight = 2000; % weight of lander
mass = weight./gravity; % lander mass
time = 0; % elapsed time in seconds
dt = 0.01; % time interval in seconds
vmax = 5; % maximum speed lander can land at
fuel=100;
currentheight = initialheight;
currentvelocity = initialvelocity;
my_slider=uicontrol('Style','slider','Value',0,'Max',5,'Min',0,'SliderStep',[0.2 0.2],'Position',[5 5 80 10]);


%%
while currentheight>0
    if fuel > 0
    enginethrust=get(my_slider,'Value');
    else
        enginethrust=0;
    end
    subplot(1,3,1);plot([0 2], [0, 0])
    axis([0 2 -10 initialheight])
    hold on
    engineacceleration = (enginethrust./mass).*100;
    acceleration = enginethrust - gravity;
    newheight = currentheight + currentvelocity * dt;
    newvelocity = currentvelocity + acceleration * dt;
    currentheight = newheight;
    currentvelocity = newvelocity;
    fuel=fuel-(enginethrust./50);
    mass=mass-(enginethrust./10);
    plot(newheight,'o');    
    hold off
    if newvelocity < 0
    subplot(1,3,2);bar(abs(newvelocity),'b')
    axis([0.75 1 0 30])
    else
    subplot(1,3,2);bar(abs(newvelocity),'r')
    axis([0.75 1 0 30])
    end
    hold on
    plot([0 2], [5, 5],'r')
    hold off
    subplot(1,3,3);bar(abs(fuel))
    axis([0.75 1 0 100])
    pause(0.01)
    time=time+dt;
    
end
if newvelocity >= -5
    disp('you have successfully landed')
else
    disp('you have crashed')
end
    