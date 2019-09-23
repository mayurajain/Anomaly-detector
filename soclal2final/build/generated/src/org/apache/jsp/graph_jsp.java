package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.util.*;

public final class graph_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  
    // --- String Join Function converts from Java array to javascript string.  
    public String join(ArrayList<?> arr, String del)  
    {  

        StringBuilder output = new StringBuilder();  

        for (int i = 0; i < arr.size(); i++)  
        {  

            if (i > 0) output.append(del);  

              // --- Quote strings, only, for JS syntax  
              if (arr.get(i) instanceof String) output.append("\"");  
              output.append(arr.get(i));  
              if (arr.get(i) instanceof String) output.append("\"");  
        }  
        System.out.println(output.toString());
        return output.toString();  
    }  


        //String monthName  = "";
        String delayReason = "";
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("  \n");
      out.write("  \n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("<!DOCTYPE html>  \n");
      out.write("<html>  \n");
      out.write("<head>  \n");
      out.write("    <title>Simple JSP Demo</title>  \n");
      out.write("    <script type=\"text/javascript\" src=\"https://cdn.zingchart.com/zingchart.min.js\"></script>  \n");
      out.write("</head>  \n");
      out.write("<body>  \n");
      out.write("    <script>  \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
  
           // --- Create two Java Arrays  
           
           ArrayList<Integer> negCount = new ArrayList<Integer>();
           ArrayList<Integer> posCount = new ArrayList<Integer>();
           
           
           ArrayList<String> userNames = new ArrayList<String>();
           ArrayList<Integer> counts = new ArrayList<Integer>();
           negCount.clear();
           posCount.clear();
           
           
           userNames.clear();
           counts.clear();
           
           
//           FileInputStream fis = new FileInputStream("mon.txt");
//           ObjectInputStream is = new ObjectInputStream(fis);
//           monthName =  (String)is.readObject();
//           is.close();
//           fis.close();
           
           
           FileInputStream fisU = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\uuu.ser");
           ObjectInputStream oisU = new ObjectInputStream(fisU);
           userNames = (ArrayList<String>)oisU.readObject();
           oisU.close();
           fisU.close();
           
           FileInputStream fisN = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\nnn.ser");
           ObjectInputStream oisN = new ObjectInputStream(fisN);
           negCount = (ArrayList<Integer>)oisN.readObject();
           oisN.close();
           fisN.close();
           
           FileInputStream fisP = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\ppp.ser");
           ObjectInputStream oisP = new ObjectInputStream(fisP);
           posCount = (ArrayList<Integer>)oisP.readObject();
           oisP.close();
           fisP.close();
                     
           
            ArrayList<String> users = new ArrayList<String>();  
            ArrayList<Integer> scores = new ArrayList<Integer>();  

           // --- Loop 10 times and create 10 string dates and 10 users  
//            int counter = 1;  
//            while(counter < 11)  
//            {  
//                months.add("Aug " + counter);  
//                users.add(counter++);  
//            }  

            for(int i=0;i<userNames.size();i++){
                users.add(userNames.get(i)+":anomolycount");
                scores.add(negCount.get(i));
            }
            for(int i=0;i<userNames.size();i++){
                users.add(userNames.get(i)+":non anomolycount");
                scores.add(posCount.get(i));
            }
            System.out.println(users);
           System.out.println(scores);

           
        
      out.write("  \n");
      out.write("\n");
      out.write("       // --- add a comma after each value in the array and convert to javascript string representing an array  \n");
      out.write("        var monthData = [");
      out.print( join(users, ",") );
      out.write("];  \n");
      out.write("        var userData = [");
      out.print( join(scores, ",") );
      out.write("];  \n");
      out.write("\n");
      out.write("    </script>  \n");
      out.write("    <script>  \n");
      out.write("window.onload = function() {  \n");
      out.write("  zingchart.render({\n");
      out.write("    id: \"myChart\",\n");
      out.write("    width: \"75%\",\n");
      out.write("    height: 400,\n");
      out.write("    data: {\n");
      out.write("      \"type\": \"bar\",\n");
      out.write("      \"title\": {\n");
      out.write("        \"text\": \"Anomaly Tweets analyzer\"\n");
      out.write("      },\n");
      out.write("      \"scale-x\": {\n");
      out.write("        \"labels\": users\n");
      out.write("      },\n");
      out.write("      \"plot\": {\n");
      out.write("        \"line-width\": 1\n");
      out.write("      },\n");
      out.write("      \"series\": [{\n");
      out.write("        \"values\": userData\n");
      out.write("      }]\n");
      out.write("    }\n");
      out.write("  });\n");
      out.write("};\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<h1>Anomaly Data Analytics");
      out.print(delayReason);
      out.write("</h1> <br> \n");
      out.write("  <div id=\"myChart\"></div>  \n");
      out.write("  <br>\n");
      out.write("  <h5 style=\"margin-left: 550px\">X-axis : User<br>Y-axis : Number of tweets<br> If a particular user sends more than 10 Anomaly tweets then that user will be removed from social network.</h5>\n");
      out.write("  <br>\n");
      out.write("  <h3 style=\"margin-left: 700px;\"><a href=\"http://localhost:8080/soclal2final/clean.jsp\" style=\"text-decoration: none;\">Go back to Home Page</a></h3>\n");
      out.write("</body>  \n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
