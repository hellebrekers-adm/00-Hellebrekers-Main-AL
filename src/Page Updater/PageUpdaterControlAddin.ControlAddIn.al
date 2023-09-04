controladdin PageUpdaterControlAddin
{
    StartupScript = 'src/Page Updater/js/startup.js';
    Scripts = 'https://h2909571.stratoserver.net/HellebrekerPackages/Main/External/js/page-updater/pageupdater.js';
    StyleSheets = 'https://h2909571.stratoserver.net/HellebrekerPackages/Main/External/Styles/border-glow/style.css';
    RequestedHeight = 0;
    RequestedWidth = 0;

    event OnControlAddInReady();
    procedure StartUpdateLoop(interval: Integer);
    event OnUpdate();
}
