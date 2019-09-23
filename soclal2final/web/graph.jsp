<%@ page import="java.io.*" %>  
<%@ page import="java.util.*" %>  
<%@ page import="java.util.*" %> 


<%!  
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
%>  
<!DOCTYPE html>  
<html>  
<head>  
    <title>Simple JSP Demo</title>  
    <script type="text/javascript" src="https://cdn.zingchart.com/zingchart.min.js"></script>  
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>  
<body>  
    <script>  
        <%!
        //String monthName  = "";
        String delayReason = "";
        %>
        <%  
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
                    if(negCount.get(i)<11){
                users.add(userNames.get(i)+":anomolycount");
                scores.add(negCount.get(i));}
                    
            }
            for(int i=0;i<userNames.size();i++){
                if(negCount.get(i)<11){
                users.add(userNames.get(i)+":non anomolycount");
                scores.add(posCount.get(i));
                }
            }
            System.out.println(users);
           System.out.println(scores);

           
        %>  

       // --- add a comma after each value in the array and convert to javascript string representing an array  
        var monthData = [<%= join(users, ",") %>];  
        var userData = [<%= join(scores, ",") %>];  

    </script>  
    <script>  
window.onload = function() {  
  zingchart.render({
    id: "myChart",
    width: "100%",
    height: 400,
    data: {
      "type": "bar",
      "title": {
        "text": "Anomaly Tweets analyzer"
      },
      "scale-x": {
        "labels": monthData
      },
      "plot": {
        "line-width": 1
      },
      "series": [{
        "values": userData
      }]
    }
  });
};
</script>

<h1 style="margin-left: 50px;font-family: serif">Anomaly Data Analytics<%=delayReason%></h1> <br> 
<div class="row">
       <div class="col-sm-12">  
<div id="myChart"></div>  
       </div>
</div>

  <br>
  <div class="row">
       <div class="col-sm-7" style="margin-left: 50px;">
  <h5 style="font-family: serif">X-axis : User<br>Y-axis : Number of tweets<br> If a particular user sends more than 10 Anomaly tweets then that user will be removed from social network.</h5>
  <br>
  <h3><a href="http://localhost:8080/soclal2final/clean.jsp" style="text-decoration: none;font-family: serif">Go back to Home Page</a></h3>
  </div>
        <div class="col-sm-4">
            <h3>X-axis labels</h3><br>
     <% 
         for(int i=0;i<users.size();i++){
             out.println(i+" = "+users.get(i)+"<br>");
         }
             %>
        </div>
 </div>
</body>  
</html>