package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.util.*;

public final class mixedTweetGraph_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("     <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\n");
      out.write("</head>  \n");
      out.write("<body>  \n");
      out.write("    <script>  \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
  
           // --- Create two Java Arrays  
           
           String negCount;
           String posCount;
           
           
           ArrayList<String> neuCount = new ArrayList<String>();
           ArrayList<Integer> counts = new ArrayList<Integer>();
           
           
           neuCount.clear();
           counts.clear();
           
           
//           FileInputStream fis = new FileInputStream("mon.txt");
//           ObjectInputStream is = new ObjectInputStream(fis);
//           monthName =  (String)is.readObject();
//           is.close();
//           fis.close();
           
           
           FileInputStream fisU = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\mixedNeutralCountAdmin.ser");
           ObjectInputStream oisU = new ObjectInputStream(fisU);
           neuCount = (ArrayList<String>)oisU.readObject();
           oisU.close();
           fisU.close();
           
           FileInputStream fisN = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\mixedNegativeCountAdmin.ser");
           ObjectInputStream oisN = new ObjectInputStream(fisN);
           negCount = (String)oisN.readObject();
           oisN.close();
           fisN.close();
           
           FileInputStream fisP = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\mixedPositiveCountAdmin.ser");
           ObjectInputStream oisP = new ObjectInputStream(fisP);
           posCount = (String)oisP.readObject();
           oisP.close();
           fisP.close();
                     
           
            ArrayList<String> users = new ArrayList<String>();  
            ArrayList<Integer> scores = new ArrayList<Integer>();  
            int neutralCount=0;  

           // --- Loop 10 times and create 10 string dates and 10 users  
//            int counter = 1;  
//            while(counter < 11)  
//            {  
//                months.add("Aug " + counter);  
//                users.add(counter++);  
//            }  

           neutralCount=neuCount.size();
           
               int position1=negCount.indexOf(":");
               String negTweetCount=negCount.substring(0,position1);
               String negTweetWordCount=negCount.substring(position1+1,negCount.length()-1);
               

               int position2=posCount.indexOf(":");
               String posTweetCount=posCount.substring(0,position2);
               String posTweetWordCount=posCount.substring(position2+1,posCount.length()-1);
               

           
        
      out.write("  \n");
      out.write("\n");
      out.write("       // --- add a comma after each value in the array and convert to javascript string representing an array  \n");
      out.write("        var neutralData = [");
      out.print( neuCount );
      out.write("];  \n");
      out.write("        var posTweetCountData = [");
      out.print( posTweetCount );
      out.write("]; \n");
      out.write("        var negTweetCountData = [");
      out.print( negTweetCount );
      out.write("];\n");
      out.write("        var negTweetWordCountData = [");
      out.print( negTweetWordCount );
      out.write("];\n");
      out.write("        var posTweetWordCountData = [");
      out.print( posTweetWordCount );
      out.write("];\n");
      out.write("\n");
      out.write("    </script>  \n");
      out.write("    <script>  \n");
      out.write("window.onload = function() {  \n");
      out.write("var cdata = {\n");
      out.write("    \"globals\":{\n");
      out.write("        \"font-family\":\"Lucida Sans Unicode\"\n");
      out.write("    },\n");
      out.write("    \"graphset\":[\n");
      out.write("        {\n");
      out.write("            \"type\":\"pie\",\n");
      out.write("            \"x\":0,\n");
      out.write("            \"y\":0,\n");
      out.write("            \"width\":362,\n");
      out.write("            \"height\":250,\n");
      out.write("            \"plotarea\":{\n");
      out.write("                \"margin\":30,\n");
      out.write("            },\n");
      out.write("            \"tooltip\":{\n");
      out.write("                \"border-width\":1,\n");
      out.write("                \"border-color\":\"#666\",\n");
      out.write("                \"border-radius\":11,\n");
      out.write("                \"background-color\":\"#fff\",\n");
      out.write("                \"color\":\"#000\",\n");
      out.write("                \"padding\":10,\n");
      out.write("                \"text-align\":\"left\",\n");
      out.write("                \"text\":\"<b style='font-size:17px;'>%node-percent-value%</b><br>%plot-text\",\n");
      out.write("                \"shadow\":true\n");
      out.write("            },\n");
      out.write("            \"plot\":{\n");
      out.write("                \"ref-angle\":90,\n");
      out.write("                \"border-width\":0,\n");
      out.write("                \"value-box\":{\n");
      out.write("                    \"text\":\"%data-index\",\n");
      out.write("                    \"color\":\"#000\",\n");
      out.write("                    \"font-size\":11,\n");
      out.write("                    \"font-weight\":\"normal\",\n");
      out.write("                    \"offset-r\":\"55%\",\n");
      out.write("                    \"connector\":{\n");
      out.write("                        \"visible\":false    \n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("            \"series\":[\n");
      out.write("                {\n");
      out.write("                    \"values\":[1023],\n");
      out.write("                    \"text\":\"Technical\",\n");
      out.write("                    \"data-index\":1,\n");
      out.write("                    \"background-color\":\"#FF9000\"\n");
      out.write("                },\n");
      out.write("                {\n");
      out.write("                    \"values\":[614],\n");
      out.write("                    \"text\":\"Creative\",\n");
      out.write("                    \"data-index\":2,\n");
      out.write("                    \"background-color\":\"#9DCC09\"\n");
      out.write("                },\n");
      out.write("                {\n");
      out.write("                    \"values\":[204],\n");
      out.write("                    \"text\":\"Management\",\n");
      out.write("                    \"data-index\":3,\n");
      out.write("                    \"background-color\":\"#71BDE9\"\n");
      out.write("                },\n");
      out.write("                {\n");
      out.write("                    \"values\":[143],\n");
      out.write("                    \"text\":\"Marketing\",\n");
      out.write("                    \"data-index\":4,\n");
      out.write("                    \"background-color\":\"#DE6829\"\n");
      out.write("                },\n");
      out.write("                {\n");
      out.write("                    \"values\":[61],\n");
      out.write("                    \"text\":\"Other\",\n");
      out.write("                    \"data-index\":5,\n");
      out.write("                    \"background-color\":\"#EDCE00\"\n");
      out.write("                }\n");
      out.write("            ]\n");
      out.write("        },\n");
      out.write("        {\n");
      out.write("            \"type\":\"grid\",\n");
      out.write("            \"x\":362,\n");
      out.write("            \"y\":0,\n");
      out.write("            \"width\":362,\n");
      out.write("            \"height\":250,\n");
      out.write("            \"plotarea\":{\n");
      out.write("                \"margin\":\"15 0 0 0\"\n");
      out.write("            },\n");
      out.write("            \"options\":{\n");
      out.write("                \"col-labels\":[\" \",\"TYPE\",\"PCT\",\"TOTAL\"],\n");
      out.write("                \"col-widths\":[\"30\",\"50%\",\"20%\",\"30%\"],\n");
      out.write("                \"style\":{\n");
      out.write("                    \".th\":{\n");
      out.write("                        \"background-color\":\"#fff\",\n");
      out.write("                        \"color\":\"#666\",\n");
      out.write("                        \"font-size\":10,\n");
      out.write("                        \"font-weight\":\"normal\",\n");
      out.write("                        \"border-bottom\":\"1px solid #aaa\",\n");
      out.write("                        \"border-right\":\"0px solid #fff\"\n");
      out.write("                    },\n");
      out.write("                    \".td\":{\n");
      out.write("                        \"height\":30,\n");
      out.write("                        \"background-color\":\"#fff\",\n");
      out.write("                        \"border-bottom\":\"1px solid #aaa\",\n");
      out.write("                        \"font-weight\":\"normal\",\n");
      out.write("                        \"border-right\":\"0px solid #fff\"\n");
      out.write("                    },\n");
      out.write("                    \".td_1\":{\n");
      out.write("                        \"offset-x\":-30,\n");
      out.write("                        \"padding-left\":38\n");
      out.write("                    },\n");
      out.write("                    \".td_2\":{\n");
      out.write("                        \"offset-x\":-30,\n");
      out.write("                        \"padding-left\":38\n");
      out.write("                    },\n");
      out.write("                    \".td_3\":{\n");
      out.write("                        \"offset-x\":-30,\n");
      out.write("                        \"padding-left\":38\n");
      out.write("                    },\n");
      out.write("                    \".td_0_0\":{\n");
      out.write("                        \"text-align\":\"center\",\n");
      out.write("                        \"border-radius\":21,\n");
      out.write("                        \"border-top\":null,\n");
      out.write("                        \"border-right\":null,\n");
      out.write("                        \"border-bottom\":null,\n");
      out.write("                        \"border-left\":null,\n");
      out.write("                        \"border-color\":\"none\",\n");
      out.write("                        \"border-width\":8,\n");
      out.write("                        \"background-color\":\"#FF9900\",\n");
      out.write("                        \"color\":\"#000\"\n");
      out.write("                    },\n");
      out.write("                    \".td_1_0\":{\n");
      out.write("                        \"text-align\":\"center\",\n");
      out.write("                        \"border-radius\":21,\n");
      out.write("                        \"border-top\":null,\n");
      out.write("                        \"border-right\":null,\n");
      out.write("                        \"border-bottom\":null,\n");
      out.write("                        \"border-left\":null,\n");
      out.write("                        \"border-color\":\"none\",\n");
      out.write("                        \"border-width\":8,\n");
      out.write("                        \"background-color\":\"#9DCC09\",\n");
      out.write("                        \"color\":\"#000\"\n");
      out.write("                    },\n");
      out.write("                    \".td_2_0\":{\n");
      out.write("                        \"text-align\":\"center\",\n");
      out.write("                        \"border-radius\":21,\n");
      out.write("                        \"border-top\":null,\n");
      out.write("                        \"border-right\":null,\n");
      out.write("                        \"border-bottom\":null,\n");
      out.write("                        \"border-left\":null,\n");
      out.write("                        \"border-color\":\"none\",\n");
      out.write("                        \"border-width\":8,\n");
      out.write("                        \"background-color\":\"#71BDE9\",\n");
      out.write("                        \"color\":\"#000\"\n");
      out.write("                    },\n");
      out.write("                    \".td_3_0\":{\n");
      out.write("                        \"text-align\":\"center\",\n");
      out.write("                        \"border-radius\":21,\n");
      out.write("                        \"border-top\":null,\n");
      out.write("                        \"border-right\":null,\n");
      out.write("                        \"border-bottom\":null,\n");
      out.write("                        \"border-left\":null,\n");
      out.write("                        \"border-color\":\"none\",\n");
      out.write("                        \"border-width\":8,\n");
      out.write("                        \"background-color\":\"#DE6829\",\n");
      out.write("                        \"color\":\"#000\"\n");
      out.write("                    },\n");
      out.write("                    \".td_4_0\":{\n");
      out.write("                        \"text-align\":\"center\",\n");
      out.write("                        \"border-radius\":21,\n");
      out.write("                        \"border-top\":null,\n");
      out.write("                        \"border-right\":null,\n");
      out.write("                        \"border-bottom\":null,\n");
      out.write("                        \"border-left\":null,\n");
      out.write("                        \"border-color\":\"none\",\n");
      out.write("                        \"border-width\":8,\n");
      out.write("                        \"background-color\":\"#EDCE00\",\n");
      out.write("                        \"color\":\"#000\"\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("            \"series\":[\n");
      out.write("                {\n");
      out.write("                    \"values\":[\"1\", \"Technical\", neutraldata, \"1023\"]    \n");
      out.write("                },\n");
      out.write("                {\n");
      out.write("                    \"values\":[\"2\", \"Creative\", negTweetCount, negTweetWordCount]    \n");
      out.write("                },\n");
      out.write("                {\n");
      out.write("                    \"values\":[\"3\", \"Management\", posTweetCount, posTweetWordCount]    \n");
      out.write("                },\n");
      out.write("                {\n");
      out.write("                    \"values\":[\"4\", \"Marketing\", \"7%\", \"143\"]    \n");
      out.write("                },\n");
      out.write("                {\n");
      out.write("                    \"values\":[\"5\", \"Other\", \"3%\", \"61\"]    \n");
      out.write("                }\n");
      out.write("            ]\n");
      out.write("        }\n");
      out.write("    ]    \n");
      out.write("};\n");
      out.write(" \n");
      out.write("zingchart.render({ \n");
      out.write("\tid: \"zc\", \n");
      out.write("\tdata: cdata, \n");
      out.write("\tmodules : \"grid\"\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<h1 style=\"margin-left: 50px;font-family: serif\">Anomaly Data Analytics");
      out.print(delayReason);
      out.write("</h1> <br> \n");
      out.write("<div class=\"row\">\n");
      out.write("       <div class=\"col-sm-12\">  \n");
      out.write("<div id=\"myChart\"></div>  \n");
      out.write("       </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("  <br>\n");
      out.write("  <div class=\"row\">\n");
      out.write("       <div class=\"col-sm-7\" style=\"margin-left: 50px;\">\n");
      out.write("  <h5 style=\"font-family: serif\">X-axis : User<br>Y-axis : Number of tweets<br> If a particular user sends more than 10 Anomaly tweets then that user will be removed from social network.</h5>\n");
      out.write("  <br>\n");
      out.write("  <h3><a href=\"http://localhost:8080/soclal2final/clean.jsp\" style=\"text-decoration: none;font-family: serif\">Go back to Home Page</a></h3>\n");
      out.write("  </div>\n");
      out.write("        <div class=\"col-sm-4\">\n");
      out.write("            <h3>X-axis labels</h3><br>\n");
      out.write("     ");
 
         for(int i=0;i<users.size();i++){
             out.println(i+" = "+users.get(i)+"<br>");
         }
             
      out.write("\n");
      out.write("        </div>\n");
      out.write(" </div>\n");
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
