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

        return output.toString();  
    }  
%>  
<!DOCTYPE html>  
<html>  
<head>  
    <title>Simple JSP Demo</title>  
    <script type="text/javascript" src="https://cdn.zingchart.com/zingchart.min.js"></script>  
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
                users.add(userNames.get(i)+":anomolycount");
                scores.add(negCount.get(i));
            }
            for(int i=0;i<userNames.size();i++){
                users.add(userNames.get(i)+":non anomolycount");
                scores.add(posCount.get(i));
            }
            
           

           
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

  <h1>Anomoly frequencies<%=delayReason%></h1>  
  <div id="myChart"></div>  
</body>  
</html>