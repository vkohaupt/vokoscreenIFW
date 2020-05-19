

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

    component.addOperation( "CreateDesktopEntry", "vokoscreenNG.desktop",
                            "Categories=AudioVideo;Recorder;\n" +
                            "Comment=screencast\n" +
                            "Keywords=Audio;Video;Recorder;Screencast;\n" +
                            "Name=vokoscreenNG\n" +
                            "StartupNotify=false\n" +
                            "Type=Application\n" +
                            "X-KDE-SubstituteUID=false\n" +
                            "Icon=" + iconName + "\n" +
                            "Exec='@TargetDir@/vokoscreenNG.sh'\n" );
                            
    component.addOperation( "CreateDesktopEntry", "vokoscreenNG-Uninstall.desktop",
                            "Categories=AudioVideo;Recorder;" +
                            "Comment=screencast\n" +
                            "Keywords=Audio;Video;Recorder;Screencast;\n" +
                            "Name=vokoscreenNG-Uninstall\n" +
                            "StartupNotify=false\n" +
                            "Type=Application\n" +
                            "X-KDE-SubstituteUID=false\n" +
                            "Icon=Uninstall\n" +
                            "Exec='@TargetDir@/Uninstall'\n" );
                            
   component.addOperation( "Copy",
                           QDesktopServices.storageLocation( QDesktopServices.ApplicationsLocation ) + "/vokoscreenNG.desktop",
                           QDesktopServices.storageLocation( QDesktopServices.DesktopLocation )      + "/vokoscreenNG.desktop"
                         );
  }
}
