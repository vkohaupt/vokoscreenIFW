

var iconName = "vokoscreenNG";
var progName = "vokoscreenNG";

function Component()
{
}

Component.prototype.createOperations = function()
{
  if ( systemInfo.kernelType === "winnt" )
  {
    component.createOperations();

    component.addOperation( "InstallIcons", "@TargetDir@/icons" );

    component.addOperation( "CreateShortcut","@TargetDir@/vokoscreenNG.exe","@StartMenuDir@/vokoscreenNG-@Version@.lnk", "iconPath=@TargetDir@/vokoscreenNG.ico" );
    component.addOperation( "CreateShortcut","@TargetDir@/vokoscreenNG.exe","@DesktopDir@/vokoscreenNG-@Version@.lnk", "iconPath=@TargetDir@/vokoscreenNG.ico" );
  }
}
