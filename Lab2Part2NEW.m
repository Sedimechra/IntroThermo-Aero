clc
clear

pitotDataDir = dir('Aero Lab Windtunnel Calibration\Aero Lab 1 - 2019 Group Data\VelocityVoltageData\PitotProbeToPressureTransducer\');
pitot_long_name1 = strcat(pitotDataDir(3).folder,'\',pitotDataDir(3).name);
pitotData1 = load(pitot_long_name1);
R=287;

rhoWater = 1000; % kg/m^3
gravity = 9.81; % m/s^2
T = mean(pitotData1(:,2));
p_atm = mean(pitotData1(:,1));

%airspeeds for pitot tube
p_airspeed1_1=sqrt(2.*pitotData1(1:500,3).*R.*pitotData1(1:500,2)./pitotData1(1:500,1));
p_airspeed1_3=sqrt(2.*pitotData1(501:1000,3).*R.*pitotData1(501:1000,2)./pitotData1(501:1000,1));
p_airspeed1_5=sqrt(2.*pitotData1(1001:1500,3).*R.*pitotData1(1001:1500,2)./pitotData1(1001:1500,1));
p_airspeed1_7=sqrt(2.*pitotData1(1501:2000,3).*R.*pitotData1(1501:2000,2)./pitotData1(1501:2000,1));
p_airspeed1_9=sqrt(2.*pitotData1(2001:2500,3).*R.*pitotData1(2001:2500,2)./pitotData1(2001:2500,1));
p_as_avg_1 = mean(p_airspeed1_1);
p_as_avg_3 = mean(p_airspeed1_3);
p_as_avg_5 = mean(p_airspeed1_5);
p_as_avg_7 = mean(p_airspeed1_7);
p_as_avg_9 = mean(p_airspeed1_9);
deltaP_p_1 = mean(pitotData1(1:500,3));
deltaP_p_3 = mean(pitotData1(501:1000,3));
deltaP_p_5 = mean(pitotData1(1001:1500,3));
deltaP_p_7 = mean(pitotData1(1501:2000,3));
deltaP_p_9 = mean(pitotData1(2001:2500,3));
p_error_1 = totalError(deltaP_p_1, T, p_atm);
p_error_3 = totalError(deltaP_p_3, T, p_atm);
p_error_5 = totalError(deltaP_p_5, T, p_atm);
p_error_7 = totalError(deltaP_p_7, T, p_atm);
p_error_9 = totalError(deltaP_p_9, T, p_atm);

venturiDataDir = dir('Aero Lab Windtunnel Calibration\Aero Lab 1 - 2019 Group Data\VelocityVoltageData\VenturiTubeToPressureTransducer\');
venturi_long_name1 = strcat(venturiDataDir(3).folder,'\',venturiDataDir(3).name);
venturiData1 = load(venturi_long_name1);
areaR = (1-(1/9.5)^2);

%venturi airspeeds for tube 1
v_airspeed1_2=sqrt((2.*venturiData1(1:500,3).*R.*venturiData1(1:500,2))./(venturiData1(1:500,1)).*areaR);
v_airspeed1_4=sqrt((2.*venturiData1(501:1000,3).*R.*venturiData1(501:1000,2))./(venturiData1(501:1000,1)).*areaR);
v_airspeed1_6=sqrt((2.*venturiData1(1001:1500,3).*R.*venturiData1(1001:1500,2))./(venturiData1(1001:1500,1)).*areaR);
v_airspeed1_8=sqrt((2.*venturiData1(1501:2000,3).*R.*venturiData1(1501:2000,2))./(venturiData1(1501:2000,1)).*areaR);
v_airspeed1_10=sqrt((2.*venturiData1(2001:2500,3).*R.*venturiData1(2001:2500,2))./(venturiData1(2001:2500,1)).*areaR);
v_as_avg_2 = mean(v_airspeed1_2);
v_as_avg_4 = mean(v_airspeed1_4);
v_as_avg_6 = mean(v_airspeed1_6);
v_as_avg_8 = mean(v_airspeed1_8);
v_as_avg_10 = mean(v_airspeed1_10);
deltaP_v_2 = mean(venturiData1(1:500,3));
deltaP_v_4 = mean(venturiData1(501:1000,3));
deltaP_v_6 = mean(venturiData1(1001:1500,3));
deltaP_v_8 = mean(venturiData1(1501:2000,3));
deltaP_v_10 = mean(venturiData1(2001:2500,3));
v_error_2 = totalError(deltaP_v_2, T, p_atm);
v_error_4 = totalError(deltaP_v_4, T, p_atm);
v_error_6 = totalError(deltaP_v_6, T, p_atm);
v_error_8 = totalError(deltaP_v_8, T, p_atm);
v_error_10 = totalError(deltaP_v_10, T, p_atm);

manometerError = .05;
m_v_diffP_1_5 = (0.1*0.0254*rhoWater*gravity);
m_v_diffP_3_5 = (0.6*0.0254*rhoWater*gravity);
m_v_diffP_5_5 = (1.8*0.0254*rhoWater*gravity);
m_v_diffP_7_5 = (3.4*0.0254*rhoWater*gravity);
m_v_diffP_9_5 = (5.5*0.0254*rhoWater*gravity);
m_v_airspeed_1_5 =  sqrt(2*m_v_diffP_1_5*R*T/(p_atm*areaR));
m_v_airspeed_3_5 =  sqrt(2*m_v_diffP_3_5*R*T/(p_atm*areaR));
m_v_airspeed_5_5 =  sqrt(2*m_v_diffP_5_5*R*T/(p_atm*areaR));
m_v_airspeed_7_5 =  sqrt(2*m_v_diffP_7_5*R*T/(p_atm*areaR));
m_v_airspeed_9_5 =  sqrt(2*m_v_diffP_9_5*R*T/(p_atm*areaR));
m_v_error_1_5 = manometerTotalError(m_v_diffP_1_5, T, p_atm);
m_v_error_3_5 = manometerTotalError(m_v_diffP_3_5, T, p_atm);
m_v_error_5_5 = manometerTotalError(m_v_diffP_5_5, T, p_atm);
m_v_error_7_5 = manometerTotalError(m_v_diffP_7_5, T, p_atm);
m_v_error_9_5 = manometerTotalError(m_v_diffP_9_5, T, p_atm);

m_p_diffP_0_5 = (0.05*0.0254*rhoWater*gravity);
m_p_diffP_2_5 = (0.25*0.0254*rhoWater*gravity);
m_p_diffP_4_5 = (1.2*0.0254*rhoWater*gravity);
m_p_diffP_6_5 = (2.6*0.0254*rhoWater*gravity);
m_p_diffP_8_5 = (4.4*0.0254*rhoWater*gravity);
m_p_airspeed_0_5 =  sqrt(2*m_p_diffP_0_5*R*T/(p_atm));
m_p_airspeed_2_5 =  sqrt(2*m_p_diffP_2_5*R*T/(p_atm));
m_p_airspeed_4_5 =  sqrt(2*m_p_diffP_4_5*R*T/(p_atm));
m_p_airspeed_6_5 =  sqrt(2*m_p_diffP_6_5*R*T/(p_atm));
m_p_airspeed_8_5 =  sqrt(2*m_p_diffP_8_5*R*T/(p_atm));
m_p_error_0_5 = manometerTotalError(m_p_diffP_0_5, T, p_atm);
m_p_error_2_5 = manometerTotalError(m_p_diffP_2_5, T, p_atm);
m_p_error_4_5 = manometerTotalError(m_p_diffP_4_5, T, p_atm);
m_p_error_6_5 = manometerTotalError(m_p_diffP_6_5, T, p_atm);
m_p_error_8_5 = manometerTotalError(m_p_diffP_8_5, T, p_atm);

function error = totalError(pDiff, T, p_atm)
R = 287;
Terror=0.25;
Pdiff_error = .01;
Patm_error = .015;

errorVdP = (((R*T)/(p_atm*sqrt(2*R*T*pDiff/p_atm)))*Pdiff_error)^2;
errorVPatm = (((-pDiff*R*T)/((p_atm^2)*sqrt(2*R*T*pDiff/p_atm)))*Patm_error)^2;
errorVTatm = (((R*pDiff)/(p_atm*sqrt(2*R*T*pDiff/p_atm)))*Terror)^2;
error = sqrt(errorVdP+errorVPatm+errorVTatm);
end

function error = manometerTotalError(pDiff, T, p_atm)
R = 287;
Terror=0.25;
mPdiff_error = .05*.0254;
Patm_error = .015;

errorVdP = (((R*T)/(p_atm*sqrt(2*R*T*pDiff/p_atm)))*mPdiff_error)^2;
errorVPatm = (((-pDiff*R*T)/((p_atm^2)*sqrt(2*R*T*pDiff/p_atm)))*Patm_error)^2;
errorVTatm = (((R*pDiff)/(p_atm*sqrt(2*R*T*pDiff/p_atm)))*Terror)^2;
error = sqrt(errorVdP+errorVPatm+errorVTatm);
end
