package ch19;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class WelcomeTag extends SimpleTagSupport {
	@Override
    public void doTag() throws JspException, IOException {
        	getJspContext().getOut().println("Welcome to My Custom Tag");
    }
}