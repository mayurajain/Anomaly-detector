<%-- 
    Document   : login
    Created on : Mar 5, 2019, 10:39:28 AM
    Author     : mayur
--%>

<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<link href="homepage_style.css" type="text/css" rel="stylesheet"/>

</head>
    <body>
        
        <%!
        public ArrayList<String> allUnames = new ArrayList<String>();
        public ArrayList<String> allPwords = new ArrayList<String>();

        %>
        
       <%
       try{
           allUnames.clear();
           allPwords.clear();
       
           String uName = request.getParameter("uname");
           String pWord = request.getParameter("password");
           
           out.println(uName+":"+pWord);
           
           //
           FileInputStream fis = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\user.txt");
        byte bb[] = new byte[fis.available()];
        fis.read(bb);
        fis.close();
        String data = new String(bb);
        data = data.trim();
        StringTokenizer st = new StringTokenizer(data,"\r\n");
        while(st.hasMoreTokens()){
            String token = st.nextToken();
            StringTokenizer st1 = new StringTokenizer(token,":");  {  
            while(st1.hasMoreTokens()){
            allUnames.add(st1.nextToken());
            allPwords.add(st1.nextToken());
            }
        }
        }
           
        if(allUnames.contains(uName)){
          int index = allUnames.indexOf(uName);
          String pp = allPwords.get(index);
          if(pp.equals(pWord)){
              
              //
              FileOutputStream fos = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\currentuser.txt");
              fos.write(uName.getBytes());
              fos.close();
              //
            response.sendRedirect("http://localhost:8080/social1/");
          }
          else{
             response.sendRedirect("failure.jsp");
          }
        }
        else{
            response.sendRedirect("failure.jsp");
        }
        
           //
       }catch(Exception e){
           out.println(e);
       }
       
       %>
    </body>
    
    <div id="footer_wrapper">
</div>
</html>
