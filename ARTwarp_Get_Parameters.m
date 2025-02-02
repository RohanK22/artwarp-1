function fig = ARTwarp_Get_Parameters
% This function generates a graphical user interface to enter the
% parameters of an ARTwarp categorisation

global vigilance bias learningRate maxNumCategories maxNumIterations sampleInterval resample callback2

if resample == 0
    state = 'off';
else
    state = 'on';
end

h0 = figure('Units','points', ...
    'Color',[0.752941176470588 0.752941176470588 0.752941176470588],...
    'DockControls','off',...
    'IntegerHandle','off',...
    'MenuBar','none',...
    'Name','Enter the Categorisation Parameters',...
    'NumberTitle','off',...
    'PaperPosition',[18 180 576 432], ...
    'PaperUnits','points', ...
    'Position',[317 241 270 280], ...
    'Resize','off', ...
    'Tag','parameterGUI',...
    'Visible','on');

h1 = uicontrol('Parent',h0,...
    'Units','points',...
    'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
    'FontSize',10, ...
    'FontUnits','points',...
    'HorizontalAlignment','left',...
    'Position',[100 233 150 15], ...
    'String','Vigilance',...
    'Style','text');

h1 = uicontrol('Parent',h0,...
    'Units','points',...
    'BackgroundColor',[1 1 1], ...
    'FontSize',10, ...
    'FontUnits','points',...
    'HorizontalAlignment','right',...
    'Position',[20 233 75 20], ...
    'String',num2str(vigilance,'%9.2f'),...
    'Style','edit',...
    'Tag','vigilance');

h1 = uicontrol('Parent',h0,...
    'Units','points',...
    'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
    'FontSize',10, ...
    'FontUnits','points',...
    'HorizontalAlignment','left',...
    'Position',[100 200 150 15], ...
    'String','Bias',...
    'Style','text');

h1 = uicontrol('Parent',h0,...
    'Units','points',...
    'BackgroundColor',[1 1 1], ...
    'FontSize',10, ...
    'FontUnits','points',...
    'HorizontalAlignment','right',...
    'Position',[20 200 75 20], ...
    'String', num2str(bias,'%9.8f'),...
    'Style','edit',...
    'Tag','bias');

h1 = uicontrol('Parent',h0,...
    'Units','points',...
    'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
    'FontSize',10, ...
    'FontUnits','points',...
    'HorizontalAlignment','left',...
    'Position',[100 166 150 15], ...
    'String','Learning Rate',...
    'Style','text',...
    'Tag','text17');

h1 = uicontrol('Parent',h0,...
    'Units','points',...
    'BackgroundColor',[1 1 1], ...
    'FontSize',10, ...
    'FontUnits','points',...
    'HorizontalAlignment','right',...
    'Position',[20 166 75 20], ...
    'String', num2str(learningRate,'%9.3f'),...
    'Style','edit',...
    'Tag','learningRate');

h1 = uicontrol('Parent',h0,...
    'Units','points',...
    'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
    'FontSize',10, ...
    'FontUnits','points',...
    'HorizontalAlignment','left',...
    'Position',[100 133 150 15], ...
    'String','Maximum Number of Categories',...
    'Style','text');

h1 = uicontrol('Parent',h0,...
    'Units','points',...
    'BackgroundColor',[1 1 1], ...
    'FontSize',10, ...
    'FontUnits','points',...
    'HorizontalAlignment','right',...
    'Position',[20 133 75 20], ...
    'String',num2str(maxNumCategories,'%i'),...
    'Style','edit',...
    'Tag','maxNumCategories');

h1 = uicontrol('Parent',h0,...
    'Units','points',...
    'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
    'FontSize',10, ...
    'FontUnits','points',...
    'HorizontalAlignment','left',...
    'Position',[100 100 150 15], ...
    'String','Maximum Number of Iterations',...
    'Style','text');

h1 = uicontrol('Parent',h0,...
    'Units','points',...
    'BackgroundColor',[1 1 1], ...
    'FontSize',10, ...
    'FontUnits','points',...
    'HorizontalAlignment','right',...
    'Position',[20 100 75 20], ...
    'String',num2str(maxNumIterations,'%i'),...
    'Style','edit',...
    'Tag','maxNumIterations');

h1 = uicontrol('Parent',h0,...
    'Units','points',...
    'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
    'FontSize',10, ...
    'FontUnits','points',...
    'HorizontalAlignment','left',...
    'Position',[200 66 150 15], ...
    'String','ms',...
    'Style','text');

h1 = uicontrol('Parent',h0,...
    'Units','points',...
    'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...    
    'Callback', callback2,...
    'FontSize',10, ...
    'FontUnits','points',...
    'Position',[20 66 150 15], ...
    'String','Resample Contours',...
    'Style','radiobutton',...
    'Value', resample,...
    'Tag','resample');

h2 = uicontrol('Parent',h0,...
    'Units','points',...
    'BackgroundColor',[1 1 1], ...
    'Enable', state,...
    'FontSize',10, ...
    'FontUnits','points',...
    'HorizontalAlignment','right',...
    'Position',[155 66 40 20], ...
    'String',num2str(sampleInterval*1000,'%5.2f'),...
    'Style','edit',...
    'Tag','sampleInterval');

h1 = uicontrol('Parent',h0, ...
    'Units','points', ...
    'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
    'Callback','ARTwarp_Run_Categorisation', ...
    'FontSize',10, ...
    'FontUnits','points',...
    'FontWeight','bold', ...
    'ListboxTop',0, ...
    'Position',[20 20 60 20], ...
    'String','OK', ...
    'Tag','runbutton');

h1 = uicontrol('Parent',h0, ...
    'Units','points', ...
    'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
    'Callback','close(gcf)', ...
    'FontSize',10, ...
    'FontUnits','points',...
    'ListboxTop',0, ...
    'Position',[190 20 60 20], ...
    'String','Cancel', ...
    'Tag','cancelbutton');
if nargout > 0, fig = h0; end