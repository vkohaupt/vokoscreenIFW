
var iconName = "vokoscreenRUN";

function Component()
{
    installer.installationFinished.connect( this, Component.prototype.installationFinished  );
}


// Bevor die eigentliche Installation beginnt wird diese Routine aufgerufen
// Siehe auch:
// http://doc.qt.io/qtinstallerframework/
// http://doc.qt.io/qtinstallerframework/operations.html
Component.prototype.createOperations = function()
{
    component.createOperations();

    
    // Desktopdatei erstellen
    component.addOperation( "Mkdir", "@TargetDir@/tmp" );
    
    component.addOperation( "CreateDesktopEntry", "@TargetDir@/tmp/vokoscreen.desktop", "Categories=AudioVideo;Recorder;" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreen.desktop", "Comment=screencast\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreen.desktop", "Keywords=Audio;Video;Recorder;Screencast;\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreen.desktop", "Name=vokoscreen\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreen.desktop", "StartupNotify=false\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreen.desktop", "Terminal=false\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreen.desktop", "Type=Application\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreen.desktop", "X-KDE-SubstituteUID=false\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreen.desktop", "Icon=" + iconName + "\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreen.desktop", "Exec=@TargetDir@/vokoscreen.run\n" );
    
    component.addOperation( "Execute",     "xdg-desktop-icon",   "install", "--novendor","@TargetDir@/tmp/vokoscreen.desktop",
                            "UNDOEXECUTE", "xdg-desktop-icon", "uninstall", "--novendor","@TargetDir@/tmp/vokoscreen.desktop" );
          
    component.addOperation( "Execute",     "xdg-desktop-menu",   "install", "--novendor","@TargetDir@/tmp/vokoscreen.desktop",
                            "UNDOEXECUTE", "xdg-desktop-menu", "uninstall", "--novendor","@TargetDir@/tmp/vokoscreen.desktop" );
                           

    // Desktpdatei für Uninstall                           
    component.addOperation( "CreateDesktopEntry", "@TargetDir@/tmp/vokoscreenUninstall.desktop", "Categories=AudioVideo;Recorder;" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreenUninstall.desktop", "Comment=screencast\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreenUninstall.desktop", "Keywords=Audio;Video;Recorder;Screencast;\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreenUninstall.desktop", "Name=vokoscreen uninstall\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreenUninstall.desktop", "StartupNotify=false\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreenUninstall.desktop", "Terminal=false\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreenUninstall.desktop", "Type=Application\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreenUninstall.desktop", "X-KDE-SubstituteUID=false\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreenUninstall.desktop", "Icon=" + iconName + "\n" );
    component.addOperation( "AppendFile", "@TargetDir@/tmp/vokoscreenUninstall.desktop", "Exec=@TargetDir@/Uninstall\n" );
    component.addOperation( "Execute",     "xdg-desktop-menu",   "install", "--novendor", "@TargetDir@/tmp/vokoscreenUninstall.desktop",
                            "UNDOEXECUTE", "xdg-desktop-menu", "uninstall", "--novendor", "@TargetDir@/tmp/vokoscreenUninstall.desktop" );
                           
                           
    // Hier wird ein kleiner Hack angewandt um bei der uninstallation die icons zu entfernen, wird bei der Installationen einfach ein "ls" aufgerufen
    component.addOperation( "Execute", "ls", "UNDOEXECUTE", "xdg-icon-resource", "uninstall", "--novendor", "--size", "16", iconName );
    component.addOperation( "Execute", "ls", "UNDOEXECUTE", "xdg-icon-resource", "uninstall", "--novendor", "--size", "24", iconName );
    component.addOperation( "Execute", "ls", "UNDOEXECUTE", "xdg-icon-resource", "uninstall", "--novendor", "--size", "32", iconName );
    component.addOperation( "Execute", "ls", "UNDOEXECUTE", "xdg-icon-resource", "uninstall", "--novendor", "--size", "48", iconName );
    component.addOperation( "Execute", "ls", "UNDOEXECUTE", "xdg-icon-resource", "uninstall", "--novendor", "--size", "64", iconName );
    component.addOperation( "Execute", "ls", "UNDOEXECUTE", "xdg-icon-resource", "uninstall", "--novendor", "--size", "128", iconName );
    component.addOperation( "Execute", "ls", "UNDOEXECUTE", "xdg-icon-resource", "uninstall", "--novendor", "--size", "256", iconName );
    component.addOperation( "Execute", "ls", "UNDOEXECUTE", "xdg-icon-resource", "uninstall", "--novendor", "--size", "512", iconName );

}

// Dies wird ausgeführt nach dem die Dateien installiert wurden
Component.prototype.installationFinished = function()
{
     var argList = [ "install", "--novendor", "--size", "16", "@TargetDir@/images/vokoscreen-16.png", iconName ]
     installer.execute( "xdg-icon-resource", argList );

     var argList = [ "install", "--novendor", "--size", "24", "@TargetDir@/images/vokoscreen-24.png", iconName ]
     installer.execute( "xdg-icon-resource", argList );
     
     var argList = [ "install", "--novendor", "--size", "32", "@TargetDir@/images/vokoscreen-32.png", iconName ]
     installer.execute( "xdg-icon-resource", argList );
     
     var argList = [ "install", "--novendor", "--size", "48", "@TargetDir@/images/vokoscreen-48.png", iconName ]
     installer.execute( "xdg-icon-resource", argList );
     
     var argList = [ "install", "--novendor", "--size", "64", "@TargetDir@/images/vokoscreen-64.png", iconName ]
     installer.execute( "xdg-icon-resource", argList );
     
     var argList = [ "install", "--novendor", "--size", "128", "@TargetDir@/images/vokoscreen-128.png", iconName ]
     installer.execute( "xdg-icon-resource", argList );

     var argList = [ "install", "--novendor", "--size", "256", "@TargetDir@/images/vokoscreen-256.png", iconName ]
     installer.execute( "xdg-icon-resource", argList );
     
     var argList = [ "install", "--novendor", "--size", "512", "@TargetDir@/images/vokoscreen-512.png", iconName ]
     installer.execute( "xdg-icon-resource", argList );
}
