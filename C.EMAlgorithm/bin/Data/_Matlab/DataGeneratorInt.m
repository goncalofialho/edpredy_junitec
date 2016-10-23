clc
clear
close all
d=1:365;                %Day
h=0:(5/60):(24-5/60);   %Hour

%% Temperature
amt=20;     %Annual mean temperature
aat=5;     %Annual amplitude temperature
apt=180;     %Annual phase temperature

amat=5;     %Annual mean amplitude temperature
aaat=3;     %Annual amplitude amplitude temperature
apat=250;     %Annual phase amplitude temperature

ampt=15;     %Annual mean phase temperature
aapt=2;     %Annual amplitude phase temperature
appt=110;     %Annual phase phase temperature

meanT=amt+aat*cos(2*pi()*(d/365-apt/365));
amplitudeT=amat+aaat*cos(2*pi()*(d/365-apat/365));
phaseT=ampt+aapt*cos(2*pi()*(d/365-appt/365));

%% hUMIDITY

amtRH=50;     %Annual mean temperature
aatRH=25;     %Annual amplitude temperature
aptRH=180;     %Annual phase temperature

amatRH=5;     %Annual mean amplitude temperature
aaatRH=10;     %Annual amplitude amplitude temperature
apatRH=250;     %Annual phase amplitude temperature

amptRH=9;     %Annual mean phase temperature
aaptRH=2;     %Annual amplitude phase temperature
apptRH=110;     %Annual phase phase temperature

meanRH=amtRH+aatRH*cos(2*pi()*(d/365-aptRH/365));
amplitudeRH=amatRH+aaatRH*cos(2*pi()*(d/365-apatRH/365));
phaseRH=amptRH+aaptRH*cos(2*pi()*(d/365-apptRH/365));


dayString=['2016-01-01';'2016-01-02';'2016-01-03';'2016-01-04';'2016-01-05';'2016-01-06';'2016-01-07';'2016-01-08';'2016-01-09';'2016-01-10';'2016-01-11';'2016-01-12';'2016-01-13';'2016-01-14';'2016-01-15';'2016-01-16';'2016-01-17';'2016-01-18';'2016-01-19';'2016-01-20';'2016-01-21';'2016-01-22';'2016-01-23';'2016-01-24';'2016-01-25';'2016-01-26';'2016-01-27';'2016-01-28';'2016-01-29';'2016-01-30';'2016-01-31';'2016-02-01';'2016-02-02';'2016-02-03';'2016-02-04';'2016-02-05';'2016-02-06';'2016-02-07';'2016-02-08';'2016-02-09';'2016-02-10';'2016-02-11';'2016-02-12';'2016-02-13';'2016-02-14';'2016-02-15';'2016-02-16';'2016-02-17';'2016-02-18';'2016-02-19';'2016-02-20';'2016-02-21';'2016-02-22';'2016-02-23';'2016-02-24';'2016-02-25';'2016-02-26';'2016-02-27';'2016-02-28';'2016-03-01';'2016-03-02';'2016-03-03';'2016-03-04';'2016-03-05';'2016-03-06';'2016-03-07';'2016-03-08';'2016-03-09';'2016-03-10';'2016-03-11';'2016-03-12';'2016-03-13';'2016-03-14';'2016-03-15';'2016-03-16';'2016-03-17';'2016-03-18';'2016-03-19';'2016-03-20';'2016-03-21';'2016-03-22';'2016-03-23';'2016-03-24';'2016-03-25';'2016-03-26';'2016-03-27';'2016-03-28';'2016-03-29';'2016-03-30';'2016-03-31';'2016-04-01';'2016-04-02';'2016-04-03';'2016-04-04';'2016-04-05';'2016-04-06';'2016-04-07';'2016-04-08';'2016-04-09';'2016-04-10';'2016-04-11';'2016-04-12';'2016-04-13';'2016-04-14';'2016-04-15';'2016-04-16';'2016-04-17';'2016-04-18';'2016-04-19';'2016-04-20';'2016-04-21';'2016-04-22';'2016-04-23';'2016-04-24';'2016-04-25';'2016-04-26';'2016-04-27';'2016-04-28';'2016-04-29';'2016-04-30';'2016-05-01';'2016-05-02';'2016-05-03';'2016-05-04';'2016-05-05';'2016-05-06';'2016-05-07';'2016-05-08';'2016-05-09';'2016-05-10';'2016-05-11';'2016-05-12';'2016-05-13';'2016-05-14';'2016-05-15';'2016-05-16';'2016-05-17';'2016-05-18';'2016-05-19';'2016-05-20';'2016-05-21';'2016-05-22';'2016-05-23';'2016-05-24';'2016-05-25';'2016-05-26';'2016-05-27';'2016-05-28';'2016-05-29';'2016-05-30';'2016-05-31';'2016-06-01';'2016-06-02';'2016-06-03';'2016-06-04';'2016-06-05';'2016-06-06';'2016-06-07';'2016-06-08';'2016-06-09';'2016-06-10';'2016-06-11';'2016-06-12';'2016-06-13';'2016-06-14';'2016-06-15';'2016-06-16';'2016-06-17';'2016-06-18';'2016-06-19';'2016-06-20';'2016-06-21';'2016-06-22';'2016-06-23';'2016-06-24';'2016-06-25';'2016-06-26';'2016-06-27';'2016-06-28';'2016-06-29';'2016-06-30';'2016-07-01';'2016-07-02';'2016-07-03';'2016-07-04';'2016-07-05';'2016-07-06';'2016-07-07';'2016-07-08';'2016-07-09';'2016-07-10';'2016-07-11';'2016-07-12';'2016-07-13';'2016-07-14';'2016-07-15';'2016-07-16';'2016-07-17';'2016-07-18';'2016-07-19';'2016-07-20';'2016-07-21';'2016-07-22';'2016-07-23';'2016-07-24';'2016-07-25';'2016-07-26';'2016-07-27';'2016-07-28';'2016-07-29';'2016-07-30';'2016-07-31';'2016-08-01';'2016-08-02';'2016-08-03';'2016-08-04';'2016-08-05';'2016-08-06';'2016-08-07';'2016-08-08';'2016-08-09';'2016-08-10';'2016-08-11';'2016-08-12';'2016-08-13';'2016-08-14';'2016-08-15';'2016-08-16';'2016-08-17';'2016-08-18';'2016-08-19';'2016-08-20';'2016-08-21';'2016-08-22';'2016-08-23';'2016-08-24';'2016-08-25';'2016-08-26';'2016-08-27';'2016-08-28';'2016-08-29';'2016-08-30';'2016-08-31';'2016-09-01';'2016-09-02';'2016-09-03';'2016-09-04';'2016-09-05';'2016-09-06';'2016-09-07';'2016-09-08';'2016-09-09';'2016-09-10';'2016-09-11';'2016-09-12';'2016-09-13';'2016-09-14';'2016-09-15';'2016-09-16';'2016-09-17';'2016-09-18';'2016-09-19';'2016-09-20';'2016-09-21';'2016-09-22';'2016-09-23';'2016-09-24';'2016-09-25';'2016-09-26';'2016-09-27';'2016-09-28';'2016-09-29';'2016-09-30';'2016-10-01';'2016-10-02';'2016-10-03';'2016-10-04';'2016-10-05';'2016-10-06';'2016-10-07';'2016-10-08';'2016-10-09';'2016-10-10';'2016-10-11';'2016-10-12';'2016-10-13';'2016-10-14';'2016-10-15';'2016-10-16';'2016-10-17';'2016-10-18';'2016-10-19';'2016-10-20';'2016-10-21';'2016-10-22';'2016-10-23';'2016-10-24';'2016-10-25';'2016-10-26';'2016-10-27';'2016-10-28';'2016-10-29';'2016-10-30';'2016-10-31';'2016-11-01';'2016-11-02';'2016-11-03';'2016-11-04';'2016-11-05';'2016-11-06';'2016-11-07';'2016-11-08';'2016-11-09';'2016-11-10';'2016-11-11';'2016-11-12';'2016-11-13';'2016-11-14';'2016-11-15';'2016-11-16';'2016-11-17';'2016-11-18';'2016-11-19';'2016-11-20';'2016-11-21';'2016-11-22';'2016-11-23';'2016-11-24';'2016-11-25';'2016-11-26';'2016-11-27';'2016-11-28';'2016-11-29';'2016-11-30';'2016-12-01';'2016-12-02';'2016-12-03';'2016-12-04';'2016-12-05';'2016-12-06';'2016-12-07';'2016-12-08';'2016-12-09';'2016-12-10';'2016-12-11';'2016-12-12';'2016-12-13';'2016-12-14';'2016-12-15';'2016-12-16';'2016-12-17';'2016-12-18';'2016-12-19';'2016-12-20';'2016-12-21';'2016-12-22';'2016-12-23';'2016-12-24';'2016-12-25';'2016-12-26';'2016-12-27';'2016-12-28';'2016-12-29';'2016-12-30';'2016-12-31'];
for i=1:length(d)
   dT=meanT(i)+amplitudeT(i)*cos(2*pi()*(h/24-phaseT(i)/24));
   dRH=meanRH(i)+amplitudeRH(i)*cos(2*pi()*(h/24-phaseRH(i)/24));
   data=[h;dT;dRH]';
    %csvwrite(['data/' dayString(i,:) '_int.csv'],data);
    csvwrite([dayString(i,:) '_int.csv'],data);
end

subplot(2,1,1)
plot(d,meanT,'k',d,amplitudeT,'r',d,phaseT,'b')
subplot(2,1,2)
plot(d,meanRH,'k',d,amplitudeRH,'r',d,phaseRH,'b')