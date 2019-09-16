

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

    component.addOperation( "CreateDesktopEntry", "@progName@-@Version@.desktop",
                            "Categories=AudioVideo;Recorder;\n" +
                            "Comment=screencast\n" +
                            "Keywords=Audio;Video;Recorder;Screencast;\n" +
                            "Name=@progName@-@Version@\n" +
                            "StartupNotify=false\n" +
                            "Type=Application\n" +
                            "X-KDE-SubstituteUID=false\n" +
                            "Icon=" + iconName + "\n" +
                            "Exec='@TargetDir@/@progName@.sh'\n" );
                            
    component.addOperation( "CreateDesktopEntry", "@progName@-@Version@-Uninstall.desktop",
                            "Categories=AudioVideo;Recorder;" +
                            "Comment=screencast\n" +
                            "Keywords=Audio;Video;Recorder;Screencast;\n" +
                            "Name=@progName@-@Version@-Uninstall\n" +
                            "StartupNotify=false\n" +
                            "Type=Application\n" +
                            "X-KDE-SubstituteUID=false\n" +
                            "Icon=" + iconName + "\n" +
                            "Exec='@TargetDir@/Uninstall'\n" );
                            
   component.addOperation( "Copy",
                           QDesktopServices.storageLocation( QDesktopServices.ApplicationsLocation ) + "/@progName@-@Version@.desktop",
                           QDesktopServices.storageLocation( QDesktopServices.DesktopLocation )      + "/@progName@-@Version@.desktop" );
  }
}
