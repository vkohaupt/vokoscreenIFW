

var iconName = "vokoscreenRUN";
var progName = "vokoscreenRUN"; // noch nicht angewandt

function Component()
{
}

Component.prototype.createOperations = function()
{
    component.createOperations();

    component.addOperation( "InstallIcons", "@TargetDir@/icons"  );

    component.addOperation( "CreateDesktopEntry", "vokoscreenRUN.desktop",
                            "Categories=AudioVideo;Recorder;\n" +
                            "Comment=screencast\n" +
                            "Keywords=Audio;Video;Recorder;Screencast;\n" +
                            "Name=vokoscreenRUN\n" +
                            "StartupNotify=false\n" +
                            "Type=Application\n" +
                            "X-KDE-SubstituteUID=false\n" +
                            "Icon=" + iconName + "\n" +
                            "Exec='@TargetDir@/vokoscreen.sh'\n" );
                            
    component.addOperation( "CreateDesktopEntry", "vokoscreenRUN-Uninstall.desktop",
                            "Categories=AudioVideo;Recorder;" +
                            "Comment=screencast\n" +
                            "Keywords=Audio;Video;Recorder;Screencast;\n" +
                            "Name=vokoscreenRUN-Uninstall\n" +
                            "StartupNotify=false\n" +
                            "Type=Application\n" +
                            "X-KDE-SubstituteUID=false\n" +
                            "Icon=" + iconName + "\n" +
                            "Exec='@TargetDir@/Uninstall'\n" );
                            
   component.addOperation( "Copy",
                           QDesktopServices.storageLocation( QDesktopServices.ApplicationsLocation ) + "/vokoscreenRUN.desktop",
                           QDesktopServices.storageLocation( QDesktopServices.DesktopLocation )      + "/vokoscreenRUN.desktop" );
   
}
