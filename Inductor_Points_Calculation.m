G=5 ; % Define the gap between the two pins.
P=12 ; % Define the length of the two pins.
D=58 ; % Define the outer dimension of the inductor.
W=8 ; % Define the width of the inductor.

% Print the output points of the octagonal inductor.
P1=[-G/2-W/2,0];
P2=[-G/2-W/2,P+W/2];
P3=[-(D-W)/(2+2*sqrt(2)),P+W/2];
P4=[-(D-W)/2,P+W/2+(D-W)/(2+sqrt(2))];
P5=[-(D-W)/2,P+W/2+(D-W)*(1+sqrt(2))/(2+sqrt(2))];
P6=[-(D-W)/(2+2*sqrt(2)),P+W/2+(D-W)];
P7=[(D-W)/(2+2*sqrt(2)),P+W/2+(D-W)];
P8=[(D-W)/2,P+W/2+(D-W)*(1+sqrt(2))/(2+sqrt(2))];
P9=[(D-W)/2,P+W/2+(D-W)/(2+sqrt(2))];
P10=[(D-W)/(2+2*sqrt(2)),P+W/2];
P11=[G/2+W/2,P+W/2];
P12=[G/2+W/2,0];
Points=[P1;P2;P3;P4;P5;P6;P7;P8;P9;P10;P11;P12]