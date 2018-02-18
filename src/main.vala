public const string GETTEXT_PACKAGE = Config.GETTEXT_PACKAGE;

public const string TERMINAL_NAME = "canvas";

public static int main (string[] args) {
    /* Initiliaze gettext support */
    Intl.setlocale (LocaleCategory.ALL, "");
    Intl.textdomain (Config.APP_ID);

    Environment.set_application_name (Config.APP_ID);
    Environment.set_prgname (Config.APP_ID);

    var application = new Canvas.Application ();

    return application.run (args);
}
