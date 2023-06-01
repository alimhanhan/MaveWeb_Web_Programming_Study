package ch19;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import javax.servlet.jsp.tagext.TagSupport;

public class PageTag extends SimpleTagSupport {
	
    private int from;
    private int to;

    public void setFrom(int i) {
        this.from = i;
    }

    public void setTo(int i) {
        this.to = i;
    }

    @Override
	public void doTag() throws JspException, IOException {
        int start = from;
        int end = to;
            JspWriter out = getJspContext().getOut();
            out.println("Page &nbsp");
            for (int i = start; i <= end; i++) {
                out.print("<a href=/myapp/ch19/pageTag.jsp?nowPage=" + i + ">");
                out.print("[" + i + "]");
                out.print("</a>&nbsp");
            }
        }
}