

var iconName = "vokoscreenNG";
var progName = "vokoscreenNG";

function Component()
{
}

Component.prototype.createOperations = function()
{
  if ( systemInfo.kernelType === "linux" )
  {

    component.createOperations();

    component.addOperation( "InstallIcons", "@TargetDir@/icons"  );

    component.addOperation( "CreateDesktopEntry", "vokoscreenNG-@Version@.desktop",
                            "Categories=AudioVideo;Recorder;\n" +
                            "Comment=screencast\n" +
                            "Keywords=Audio;Video;Recorder;Screencast;\n" +
                            "Name=vokoscreenNG-@Version@\n" +
                            "StartupNotify=false\n" +
                            "Type=Application\n" +
                            "X-KDE-SubstituteUID=false\n" +
                            "Icon=" + iconName + "\n" +
                            "Exec='@TargetDir@/vokoscreenNG.sh'\n" );
                            
    component.addOperation( "CreateDesktopEntry", "vokoscreenNG-@Version@-Uninstall.desktop",
                            "Categories=AudioVideo;Recorder;" +
                            "Comment=screencast\n" +
                            "Keywords=Audio;Video;Recorder;Screencast;\n" +
                            "Name=vokoscreenNG-@Version@-Uninstall\n" +
                            "StartupNotify=false\n" +
                            "Type=Application\n" +
                            "X-KDE-SubstituteUID=false\n" +
                            "Icon=" + iconName + "\n" +
                            "Exec='@TargetDir@/Uninstall'\n" );
                            
    component.addOperation( "Copy",
                             QDesktopServices.storageLocation( QDesktopServices.ApplicationsLocation ) + "/vokoscreenNG-@Version@.desktop",
                             QDesktopServices.storageLocation( QDesktopServices.DesktopLocation )      + "/vokoscreenNG-@Version@.desktop" );
  }


  if ( systemInfo.kernelType === "winnt" )
  {
    component.createOperations();

    component.addOperation( "InstallIcons", "@TargetDir@/icons" );

    component.addOperation( "CreateShortcut","@TargetDir@/vokoscreenNG.vbs","@StartMenuDir@/vokoscreenNG-@Version@.lnk", "iconPath=@TargetDir@/vokoscreenNG.ico" );
    component.addOperation( "CreateShortcut","@TargetDir@/vokoscreenNG.vbs","@DesktopDir@/vokoscreenNG-@Version@.lnk", "iconPath=@TargetDir@/vokoscreenNG.ico" );
  }
}
