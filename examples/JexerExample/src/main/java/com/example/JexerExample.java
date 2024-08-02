package com.example;

/**
 * Hello world!
 *
 */
import jexer.TApplication;
import jexer.TWindow;
import jexer.backend.ECMA48Backend;
import jexer.TWidget;
import jexer.TLabel;

public class JexerExample {
    public static void main(String[] args) throws Exception {
        // Use ECMA48Backend for TTY support
        ECMA48Backend backend = new ECMA48Backend();
        TApplication app = new TApplication(backend);

        // Create a window with some content
        TWindow window = app.addWindow("Hello TTY!", 10, 10, 40, 20);
        window.addLabel("This is displayed on TTY1!", 1, 1);
        
        // Run the application
        app.run();
    }
}
