<%-- 
    Document   : registration
    Created on : Mar 5, 2019, 11:03:18 AM
    Author     : mayur
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
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
        public ArrayList<String> allrePwords = new ArrayList<String>();
        public ArrayList<String> allnum = new ArrayList<String>();
        public ArrayList<String> allemailId = new ArrayList<String>();

        %>
        
        <%try{
            allUnames.clear();
           allPwords.clear();
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("password");
        String fPassWord = request.getParameter("confirmPassword");
        String phNumber = request.getParameter("phoneNumber");
        String emailId = request.getParameter("emailId");
        
        FileInputStream fisR = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\register.txt");
        byte bbR[] = new byte[fisR.available()];
        fisR.read(bbR);
        fisR.close();
        FileInputStream fisU = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\user.txt");
        byte bbU[] = new byte[fisU.available()];
        fisU.read(bbU);
        fisU.close();
        
        //
        FileInputStream fisUC = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\register.txt");
        byte bb[] = new byte[fisUC.available()];
        fisUC.read(bb);
        fisUC.close();
        String data = new String(bb);
        data = data.trim();
        StringTokenizer st = new StringTokenizer(data,"\r\n");
        while(st.hasMoreTokens()){
            String token = st.nextToken();
            StringTokenizer st1 = new StringTokenizer(token,":");  {  
            while(st1.hasMoreTokens()){
            allUnames.add(st1.nextToken());
            allPwords.add(st1.nextToken());
            allrePwords.add(st1.nextToken());
            allnum.add(st1.nextToken());
            allemailId.add(st1.nextToken());
            }
        }
        }
        
        
        //
        
        if(!passWord.equals(fPassWord)){           
        response.sendRedirect("RegistrationFailure.jsp");        
        
        }
        else if(allUnames.contains(userName)){
            response.sendRedirect("SameUserExistFailure.jsp"); 
        }
        else if(allemailId.contains(emailId)){
            response.sendRedirect("SameUserIdExistFailure.jsp"); 
        }
        else{
        if(bbR.length==0){
          String  regString = userName+":"+passWord+":"+fPassWord+":"+phNumber+":"+emailId;
          String uString = userName+":"+passWord;
          FileOutputStream fosR = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\register.txt");
          fosR.write(regString.getBytes());
          fosR.close();
          FileOutputStream fosU = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\user.txt");
          fosU.write(uString.getBytes());
          fosU.close();
          response.sendRedirect("success.jsp");
        }
        else{
          String  regString = userName+":"+passWord+":"+fPassWord+":"+phNumber+":"+emailId;
          String uString = userName+":"+passWord;
          String actRegString = new String(bbR)+"\r\n"+regString;
          String actuString = new String(bbU)+"\r\n"+uString;
          FileOutputStream fosR = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\register.txt");
          fosR.write(actRegString.getBytes());
          fosR.close();
          FileOutputStream fosU = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\user.txt");
          fosU.write(actuString.getBytes());
          fosU.close();
          response.sendRedirect("success.jsp");
        }
        }
        
        }catch(Exception e){
            out.println(e);
        }%>
    </body>
    <div id="footer_wrapper">
</div>
</html>
