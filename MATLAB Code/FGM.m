%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FEM Data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
radius = [];

radial_stress = [];

hoop_stress = [];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Plot Graphs %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,1)
plot(radius,radial_stress)
hold on
xlabel('$\textit{r}$ [mm]', 'FontName', 'Times New Roman', ...
       'FontSize',14,'Color','k', 'Interpreter', 'LaTeX')
ylabel('Radial Stress, \sigma_{r} [MPa]', 'FontName', 'Times New Roman', ...
       'FontSize',12,'Color','k')

subplot(1,2,2)
plot(radius,hoop_stress)
hold on
xlabel('$\textit{r}$ [mm]', 'FontName', 'Times New Roman', ...
       'FontSize',14,'Color','k', 'Interpreter', 'LaTeX')
ylabel('Hoop Stress, \sigma_{\theta} [MPa]', 'FontName', 'Times New Roman', ...
       'FontSize',12,'Color','k')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%