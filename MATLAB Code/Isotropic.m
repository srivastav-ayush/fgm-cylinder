%%%%%%%%%%%%%%%%%%%%%%%%%%%% Pressure Problem %%%%%%%%%%%%%%%%%%%%%%%%%%%%
a = 300;            % Initial Internal Radius
b = 500;            % Initial Outer Radius
qa = 0.05;             % Internal Pressure
qb = 0;            % External Pressure
u = 300;        % Deformed Internal Radius
v = 500;         % Deformed Outer Radius
%%%%%%%%%%%%%%%%%% Radial Stress %%%%%%%%%%%%%%%%%
% v_isig_r = zeros(200,1);
i=1;
for r = u:1:v
isig_r = (qa*(a^2)-qb*(b^2))/((b^2)-(a^2))+...
    (((a^2)*(b^2)*(qb-qa))/((b^2)-(a^2)))*(1/(r^2));
v_isig_r(i,1) = isig_r;
i=i+1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Hoop Stress %%%%%%%%%%%%%%%%%%%
% v_isig_t = zeros(200,1);
i=1;
for r = u:1:v
isig_t = (qa*(a^2)-qb*(b^2))/((b^2)-(a^2))-...
    (((a^2)*(b^2)*(qb-qa))/((b^2)-(a^2)))*(1/(r^2));
v_isig_t(i,1) = isig_t;
i=i+1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FEM Data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
radius = [300
310
320
330
340
350
360
370
380
390
400
410
420
430
440
450
460
470
480
490
500];

radial_stress = [-0.0481601
-0.0464052
-0.0429919
-0.0397641
-0.036701
-0.0337845
-0.0309986
-0.0283294
-0.0257644
-0.0232925
-0.0209038
-0.0185895
-0.0163415
-0.0141526
-0.0120162
-0.00992628
-0.00787733
-0.00586426
-0.00388239
-0.00192736
-0.000958188];

hoop_stress = [0.0621787
0.0624577
0.0630952
0.0638864
0.0648214
0.0658922
0.0670925
0.068417
0.0698615
0.071423
0.0730994
0.0748889
0.0767905
0.0788039
0.0809294
0.0831674
0.085519
0.0879858
0.0905695
0.0932723
0.0946537];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Plot Graphs %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Vector Transformation %%%%%%
r = u:1:v;
r = r';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,1)
% plot(r,v_isig_r)
% hold on
plot(radius,radial_stress,'o')
hold on
xlabel('$\textit{r}$ [mm]', 'FontName', 'Times New Roman', ...
       'FontSize',14,'Color','k', 'Interpreter', 'LaTeX')
ylabel('Radial Stress, \sigma_{r} [MPa]', 'FontName', 'Times New Roman', ...
       'FontSize',12,'Color','k')

subplot(1,2,2)
% plot(r,v_isig_t)
% hold on
plot(radius,hoop_stress,'o')
hold on
xlabel('$\textit{r}$ [mm]', 'FontName', 'Times New Roman', ...
       'FontSize',14,'Color','k', 'Interpreter', 'LaTeX')
ylabel('Hoop Stress, \sigma_{\theta} [MPa]', 'FontName', 'Times New Roman', ...
       'FontSize',12,'Color','k')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%