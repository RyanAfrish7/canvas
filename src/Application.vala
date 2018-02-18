private Canvas.Application application_singleton = null;

public class Canvas.Application : Granite.Application {

    Canvas.MainWindow main_window;

    construct {
        /* Needed by Glib.Application */
        this.application_id = Config.APP_ID;  //Ensures an unique instance.

        /* Needed by Granite.Application */
        this.build_data_dir = Config.DATADIR;
        this.build_pkg_data_dir = Config.PKGDATADIR;
        this.build_release_name = Config.RELEASE_NAME;
        this.build_version = Config.VERSION;
        this.build_version_info = Config.VERSION_INFO;
        this.exec_name = Config.EXEC_NAME;
        this.program_name = Config.RELEASE_NAME;

        application_singleton = this;
    }

    public override void activate () {
        if (main_window == null) {
            main_window = new Canvas.MainWindow (this);
            main_window.destroy.connect (() => {
                    main_window = null;
                });
            add_window (main_window);
            main_window.show_all ();
        }

        main_window.present ();
    }

}
