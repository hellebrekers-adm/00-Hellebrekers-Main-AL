controladdin BorderShineAddin
{
    StartupScript = 'src/border-glower/js/startup.js';
    Scripts = 'https://h2909571.stratoserver.net/HellebrekerPackages/Main/External/js/border-glow/script.js';

    //This is applied to the parent element of the control add-in so we set it in js
    // //Load stylesheet
    // StyleSheets = 'https://h2909571.stratoserver.net/HellebrekerPackages/Main/External/Styles/border-glow/style.css';
    event OnControlAddinReady();
    procedure Setup();
}
