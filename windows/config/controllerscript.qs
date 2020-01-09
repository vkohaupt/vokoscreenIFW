
function Controller()
{
}


Controller.prototype.IntroductionPageCallback = function()
{
    if (installer.isUninstaller())
    {
        // Get the current wizard page
        var widget = gui.currentPageWidget(); 
        if (widget != null)
        {
            widget.findChild("PackageManagerRadioButton").visible = false;
            widget.findChild("UpdaterRadioButton").visible = false;
            widget.findChild("UninstallerRadioButton").visible = true;
        }
    }
}