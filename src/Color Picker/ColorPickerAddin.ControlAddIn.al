controladdin ColorPickerAddin
{
    StartupScript = 'src/color picker/js/startup.js';
    Scripts = ' https://h2909571.stratoserver.net/HellebrekerPackages/Main/External/js/color-picker/script.js', 'https://h2909571.stratoserver.net/HellebrekerPackages/Main/External/js/color-picker/jsColor.js';
    HorizontalStretch = true;
    VerticalStretch = true;
    RequestedHeight = 145;

    event OnControlAddinReady();
    event ColorPicked(ColorInfo: Text);
}
