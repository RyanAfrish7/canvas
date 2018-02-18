public class Canvas.MainWindow : Gtk.ApplicationWindow {
    construct {
    }

    public MainWindow(Granite.Application app) {
        Object (application: app);
        this.set_default_size (800, 600);
        this.title = app.program_name;
    }
}
