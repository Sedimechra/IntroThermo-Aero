clear;
clc;
clf;

filesBoundary = dir('Aero Lab Airfoil Testing\2002 Aero Lab 2 - Group Data\');
port = cell(8,1);
for i=1:8
folderName = sprintf('Aero Lab Airfoil Testing/2002 Aero Lab 2 - Group Data');
files = dir(folderName);
long_name = strcat(files(i+2).folder,'\',files(i+2).name);
port{i} = load(long_name);
end

Cp_Vel1 = zeros(24, 31);
Cp_Vel2 = zeros(24, 31);
Cp_Vel3 = zeros(24, 31);

currCol = 1;
for i = 4:-1:1
    Cp_Vel1(1,currCol)=mean(port{i}(1:20,5));
    Cp_Vel2(1,currCol)=mean(port{i}(21:40,5));
    Cp_Vel3(1,currCol)=mean(port{i}(41:60,5));
    for j = 2:10
        Cp_Vel1(j,currCol)=mean(port{i}(1:20,j+5))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(21:40,j+5))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(41:60,j+5))/Cp_Vel3(1,currCol);
    end
    for j = 12:18
        Cp_Vel1(j,currCol)=mean(port{i}(1:20,j+4))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(21:40,j+4))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(41:60,j+4))/Cp_Vel3(1,currCol);
    end
    Cp_Vel1(11,currCol)=(2*Cp_Vel1(10,currCol)-Cp_Vel1(9,currCol)+2*Cp_Vel1(12,currCol)-Cp_Vel1(13,currCol))/2;
    Cp_Vel2(11,currCol)=(2*Cp_Vel2(10,currCol)-Cp_Vel2(9,currCol)+2*Cp_Vel2(12,currCol)-Cp_Vel2(13,currCol))/2;
    Cp_Vel3(11,currCol)=(2*Cp_Vel3(10,currCol)-Cp_Vel3(9,currCol)+2*Cp_Vel3(12,currCol)-Cp_Vel3(13,currCol))/2;
    currCol=currCol+1;
end
for i = 8:-1:5
    Cp_Vel1(1,currCol)=mean(port{i}(1:20,5));
    Cp_Vel2(1,currCol)=mean(port{i}(21:40,5));
    Cp_Vel3(1,currCol)=mean(port{i}(41:60,5));
    for j = 2:10
        Cp_Vel1(j,currCol)=mean(port{i}(1:20,j+5))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(21:40,j+5))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(41:60,j+5))/Cp_Vel3(1,currCol);
    end
    for j = 12:18
        Cp_Vel1(j,currCol)=mean(port{i}(1:20,j+4))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(21:40,j+4))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(41:60,j+4))/Cp_Vel3(1,currCol);
    end
    Cp_Vel1(11,currCol)=(2*Cp_Vel1(10,currCol)-Cp_Vel1(9,currCol)+2*Cp_Vel1(12,currCol)-Cp_Vel1(13,currCol))/2;
    Cp_Vel2(11,currCol)=(2*Cp_Vel2(10,currCol)-Cp_Vel2(9,currCol)+2*Cp_Vel2(12,currCol)-Cp_Vel2(13,currCol))/2;
    Cp_Vel3(11,currCol)=(2*Cp_Vel3(10,currCol)-Cp_Vel3(9,currCol)+2*Cp_Vel3(12,currCol)-Cp_Vel3(13,currCol))/2;
    currCol=currCol+1;
end
for i = 4:-1:1
    Cp_Vel1(1,currCol)=mean(port{i}(61:80,5));
    Cp_Vel2(1,currCol)=mean(port{i}(81:100,5));
    Cp_Vel3(1,currCol)=mean(port{i}(101:120,5));
    for j = 2:10
        Cp_Vel1(j,currCol)=mean(port{i}(61:80,j+5))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(81:100,j+5))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(101:120,j+5))/Cp_Vel3(1,currCol);
    end
    for j = 12:18
        Cp_Vel1(j,currCol)=mean(port{i}(61:80,j+4))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(81:100,j+4))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(101:120,j+4))/Cp_Vel3(1,currCol);
    end
    Cp_Vel1(11,currCol)=(2*Cp_Vel1(10,currCol)-Cp_Vel1(9,currCol)+2*Cp_Vel1(12,currCol)-Cp_Vel1(13,currCol))/2;
    Cp_Vel2(11,currCol)=(2*Cp_Vel2(10,currCol)-Cp_Vel2(9,currCol)+2*Cp_Vel2(12,currCol)-Cp_Vel2(13,currCol))/2;
    Cp_Vel3(11,currCol)=(2*Cp_Vel3(10,currCol)-Cp_Vel3(9,currCol)+2*Cp_Vel3(12,currCol)-Cp_Vel3(13,currCol))/2;
    currCol=currCol+1;
end
for i = 8:-1:5
    Cp_Vel1(1,currCol)=mean(port{i}(61:80,5));
    Cp_Vel2(1,currCol)=mean(port{i}(81:100,5));
    Cp_Vel3(1,currCol)=mean(port{i}(101:120,5));
    for j = 2:10
        Cp_Vel1(j,currCol)=mean(port{i}(61:80,j+5))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(81:100,j+5))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(101:120,j+5))/Cp_Vel3(1,currCol);
    end
    for j = 12:18
        Cp_Vel1(j,currCol)=mean(port{i}(61:80,j+4))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(81:100,j+4))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(101:120,j+4))/Cp_Vel3(1,currCol);
    end
    Cp_Vel1(11,currCol)=(2*Cp_Vel1(10,currCol)-Cp_Vel1(9,currCol)+2*Cp_Vel1(12,currCol)-Cp_Vel1(13,currCol))/2;
    Cp_Vel2(11,currCol)=(2*Cp_Vel2(10,currCol)-Cp_Vel2(9,currCol)+2*Cp_Vel2(12,currCol)-Cp_Vel2(13,currCol))/2;
    Cp_Vel3(11,currCol)=(2*Cp_Vel3(10,currCol)-Cp_Vel3(9,currCol)+2*Cp_Vel3(12,currCol)-Cp_Vel3(13,currCol))/2;
    currCol=currCol+1;
end
for i = 4:-1:1
    Cp_Vel1(1,currCol)=mean(port{i}(121:140,5));
    Cp_Vel2(1,currCol)=mean(port{i}(141:160,5));
    Cp_Vel3(1,currCol)=mean(port{i}(161:180,5));
    for j = 2:10
        Cp_Vel1(j,currCol)=mean(port{i}(121:140,j+5))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(141:160,j+5))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(161:180,j+5))/Cp_Vel3(1,currCol);
    end
    for j = 12:18
        Cp_Vel1(j,currCol)=mean(port{i}(121:140,j+4))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(141:160,j+4))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(161:180,j+4))/Cp_Vel3(1,currCol);
    end
    Cp_Vel1(11,currCol)=(2*Cp_Vel1(10,currCol)-Cp_Vel1(9,currCol)+2*Cp_Vel1(12,currCol)-Cp_Vel1(13,currCol))/2;
    Cp_Vel2(11,currCol)=(2*Cp_Vel2(10,currCol)-Cp_Vel2(9,currCol)+2*Cp_Vel2(12,currCol)-Cp_Vel2(13,currCol))/2;
    Cp_Vel3(11,currCol)=(2*Cp_Vel3(10,currCol)-Cp_Vel3(9,currCol)+2*Cp_Vel3(12,currCol)-Cp_Vel3(13,currCol))/2;
    currCol=currCol+1;
end
for i = 8:-1:5
    Cp_Vel1(1,currCol)=mean(port{i}(121:140,5));
    Cp_Vel2(1,currCol)=mean(port{i}(141:160,5));
    Cp_Vel3(1,currCol)=mean(port{i}(161:180,5));
    for j = 2:10
        Cp_Vel1(j,currCol)=mean(port{i}(121:140,j+5))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(141:160,j+5))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(161:180,j+5))/Cp_Vel3(1,currCol);
    end
    for j = 12:18
        Cp_Vel1(j,currCol)=mean(port{i}(121:140,j+4))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(141:160,j+4))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(161:180,j+4))/Cp_Vel3(1,currCol);
    end
    Cp_Vel1(11,currCol)=(2*Cp_Vel1(10,currCol)-Cp_Vel1(9,currCol)+2*Cp_Vel1(12,currCol)-Cp_Vel1(13,currCol))/2;
    Cp_Vel2(11,currCol)=(2*Cp_Vel2(10,currCol)-Cp_Vel2(9,currCol)+2*Cp_Vel2(12,currCol)-Cp_Vel2(13,currCol))/2;
    Cp_Vel3(11,currCol)=(2*Cp_Vel3(10,currCol)-Cp_Vel3(9,currCol)+2*Cp_Vel3(12,currCol)-Cp_Vel3(13,currCol))/2;
    currCol=currCol+1;
end
for i = 4:-1:1
    Cp_Vel1(1,currCol)=mean(port{i}(181:200,5));
    Cp_Vel2(1,currCol)=mean(port{i}(201:220,5));
    Cp_Vel3(1,currCol)=mean(port{i}(221:240,5));
    for j = 2:10
        Cp_Vel1(j,currCol)=mean(port{i}(181:200,j+5))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(201:220,j+5))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(221:240,j+5))/Cp_Vel3(1,currCol);
    end
    for j = 12:18
        Cp_Vel1(j,currCol)=mean(port{i}(181:200,j+4))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(201:220,j+4))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(221:240,j+4))/Cp_Vel3(1,currCol);
    end
    Cp_Vel1(11,currCol)=(2*Cp_Vel1(10,currCol)-Cp_Vel1(9,currCol)+2*Cp_Vel1(12,currCol)-Cp_Vel1(13,currCol))/2;
    Cp_Vel2(11,currCol)=(2*Cp_Vel2(10,currCol)-Cp_Vel2(9,currCol)+2*Cp_Vel2(12,currCol)-Cp_Vel2(13,currCol))/2;
    Cp_Vel3(11,currCol)=(2*Cp_Vel3(10,currCol)-Cp_Vel3(9,currCol)+2*Cp_Vel3(12,currCol)-Cp_Vel3(13,currCol))/2;
    currCol=currCol+1;
end
for i = 8:-1:6
    Cp_Vel1(1,currCol)=mean(port{i}(181:200,5));
    Cp_Vel2(1,currCol)=mean(port{i}(201:220,5));
    Cp_Vel3(1,currCol)=mean(port{i}(221:240,5));
    for j = 2:10
        Cp_Vel1(j,currCol)=mean(port{i}(181:200,j+5))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(201:220,j+5))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(221:240,j+5))/Cp_Vel3(1,currCol);
    end
    for j = 12:18
        Cp_Vel1(j,currCol)=mean(port{i}(181:200,j+4))/Cp_Vel1(1,currCol);
        Cp_Vel2(j,currCol)=mean(port{i}(201:220,j+4))/Cp_Vel2(1,currCol);
        Cp_Vel3(j,currCol)=mean(port{i}(221:240,j+4))/Cp_Vel3(1,currCol);
    end
    Cp_Vel1(11,currCol)=(2*Cp_Vel1(10,currCol)-Cp_Vel1(9,currCol)+2*Cp_Vel1(12,currCol)-Cp_Vel1(13,currCol))/2;
    Cp_Vel2(11,currCol)=(2*Cp_Vel2(10,currCol)-Cp_Vel2(9,currCol)+2*Cp_Vel2(12,currCol)-Cp_Vel2(13,currCol))/2;
    Cp_Vel3(11,currCol)=(2*Cp_Vel3(10,currCol)-Cp_Vel3(9,currCol)+2*Cp_Vel3(12,currCol)-Cp_Vel3(13,currCol))/2;
    currCol=currCol+1;
end

Cp_Vel1(19,:)=Cp_Vel1(2,:);
Cp_Vel2(19,:)=Cp_Vel2(2,:);
Cp_Vel3(19,:)=Cp_Vel3(2,:);

xPlot = [0 .175 .35 .7 1.05 1.4 1.75 2.1 2.8 3.5 2.8 2.1 1.4 1.05 .7 .35 .175 0];  
yPlot = [0.14665 0.33075 0.4018 0.476 0.49 0.4774 0.4403 0.38325 0.21875 0 0 0 0 0 0.0014 0.0175 0.03885 0.14665];

Cp_Vel1(20,:)=-15:1:15;
Cp_Vel2(20,:)=-15:1:15;
Cp_Vel3(20,:)=-15:1:15;

for i = 1:31
    Cn1=0;
    Ca1=0;
    Cn2=0;
    Ca2=0;
    Cn3=0;
    Ca3=0;
    for j = 1:17
        Cn1=Cn1+(0.5*(Cp_Vel1(j+1,i)+Cp_Vel1(j+2,i))*((xPlot(j+1)-xPlot(j))/3.5));
        Cn2=Cn2+(0.5*(Cp_Vel2(j+1,i)+Cp_Vel2(j+2,i))*((xPlot(j+1)-xPlot(j))/3.5));
        Cn3=Cn3+(0.5*(Cp_Vel3(j+1,i)+Cp_Vel3(j+2,i))*((xPlot(j+1)-xPlot(j))/3.5));
        Ca1=Ca1+(0.5*(Cp_Vel1(j+1,i)+Cp_Vel1(j+2,i))*((yPlot(j+1)-yPlot(j))/3.5));
        Ca2=Ca2+(0.5*(Cp_Vel2(j+1,i)+Cp_Vel2(j+2,i))*((yPlot(j+1)-yPlot(j))/3.5));
        Ca3=Ca3+(0.5*(Cp_Vel3(j+1,i)+Cp_Vel3(j+2,i))*((yPlot(j+1)-yPlot(j))/3.5));
    end
    Cp_Vel1(21,i)=-Cn1;
    Cp_Vel2(21,i)=-Cn2;
    Cp_Vel3(21,i)=-Cn3;
    Cp_Vel1(22,i)=Ca1;
    Cp_Vel2(22,i)=Ca2;
    Cp_Vel3(22,i)=Ca3;
    Cp_Vel1(23,i)=(Cp_Vel1(21,i)*cosd(i-16))-(Cp_Vel1(22,i)*sind(i-16));
    Cp_Vel1(24,i)=(Cp_Vel1(21,i)*sind(i-16))+(Cp_Vel1(22,i)*cosd(i-16));
    Cp_Vel2(23,i)=(Cp_Vel2(21,i)*cosd(i-16))-(Cp_Vel2(22,i)*sind(i-16));
    Cp_Vel2(24,i)=(Cp_Vel2(21,i)*sind(i-16))+(Cp_Vel2(22,i)*cosd(i-16));
    Cp_Vel3(23,i)=(Cp_Vel3(21,i)*cosd(i-16))-(Cp_Vel3(22,i)*sind(i-16));
    Cp_Vel3(24,i)=(Cp_Vel3(21,i)*sind(i-16))+(Cp_Vel3(22,i)*cosd(i-16));
end


nexttile
xPlot=xPlot./3.5;
plot(xPlot,Cp_Vel2(2:19,20)); 
set(gca, 'YDir','reverse')
title('Cp vs x, +3 Degrees, 17 m/s')
ylabel("Coefficient of Pressure")
xlabel("Normalized Chord x/c")

naca_Cl = [-0.12 0.18 0.48 0.78 1.08 1.3 1.52 1.58 1.45 1.28];
naca_Cd = [0.0150 .0150 .020 .040 .08 0.12 0.17 0.24 0.36 0.46];
naca_aoa = [-8 -4 0 4 8 12 16 20 24 28];


nexttile
hold on;
plot(Cp_Vel2(20,:),Cp_Vel1(23,:),'-o');
plot(Cp_Vel2(20,:),Cp_Vel2(23,:),'-o');
plot(Cp_Vel2(20,:),Cp_Vel3(23,:),'-o');
plot(naca_aoa,naca_Cl, '-*');
legend('V = 9m/s', 'V = 17 m/s', 'V = 34 m/s', 'NACA', 'Location', 'northwest');
hold off;
title('Cl vs AOA')
ylabel("Coefficient of Lift")
xlabel("Angle of Attack (Degrees)")

nexttile
hold on;
plot(Cp_Vel2(20,:),Cp_Vel1(24,:),'-o');
plot(Cp_Vel2(20,:),Cp_Vel2(24,:),'-o');
plot(Cp_Vel2(20,:),Cp_Vel3(24,:),'-o');
plot(naca_aoa,naca_Cd, '-*');
legend('V = 9m/s', 'V = 17 m/s', 'V = 34 m/s', 'NACA', 'Location', 'northwest');
hold off;
title ('Cd vs AOA')
ylabel("Coefficient of Drag")
xlabel("Angle of Attack (Degrees)")