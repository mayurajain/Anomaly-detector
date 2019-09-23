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
               

           
        %>  

       // --- add a comma after each value in the array and convert to javascript string representing an array  
        var neutralData = [<%= neuCount %>];  
        var posTweetCountData = [<%= posTweetCount %>]; 
        var negTweetCountData = [<%= negTweetCount %>];
        var negTweetWordCountData = [<%= negTweetWordCount %>];
        var posTweetWordCountData = [<%= posTweetWordCount %>];

    </script>  
    <script>  
window.onload = function() {  
var cdata = {
    "globals":{
        "font-family":"Lucida Sans Unicode"
    },
    "graphset":[
        {
            "type":"pie",
            "x":0,
            "y":0,
            "width":362,
            "height":250,
            "plotarea":{
                "margin":30,
            },
            "tooltip":{
                "border-width":1,
                "border-color":"#666",
                "border-radius":11,
                "background-color":"#fff",
                "color":"#000",
                "padding":10,
                "text-align":"left",
                "text":"<b style='font-size:17px;'>%node-percent-value%</b><br>%plot-text",
                "shadow":true
            },
            "plot":{
                "ref-angle":90,
                "border-width":0,
                "value-box":{
                    "text":"%data-index",
                    "color":"#000",
                    "font-size":11,
                    "font-weight":"normal",
                    "offset-r":"55%",
                    "connector":{
                        "visible":false    
                    }
                }
            },
            "series":[
                {
                    "values":[1023],
                    "text":"Technical",
                    "data-index":1,
                    "background-color":"#FF9000"
                },
                {
                    "values":[614],
                    "text":"Creative",
                    "data-index":2,
                    "background-color":"#9DCC09"
                },
                {
                    "values":[204],
                    "text":"Management",
                    "data-index":3,
                    "background-color":"#71BDE9"
                },
                {
                    "values":[143],
                    "text":"Marketing",
                    "data-index":4,
                    "background-color":"#DE6829"
                },
                {
                    "values":[61],
                    "text":"Other",
                    "data-index":5,
                    "background-color":"#EDCE00"
                }
            ]
        },
        {
            "type":"grid",
            "x":362,
            "y":0,
            "width":362,
            "height":250,
            "plotarea":{
                "margin":"15 0 0 0"
            },
            "options":{
                "col-labels":[" ","TYPE","PCT","TOTAL"],
                "col-widths":["30","50%","20%","30%"],
                "style":{
                    ".th":{
                        "background-color":"#fff",
                        "color":"#666",
                        "font-size":10,
                        "font-weight":"normal",
                        "border-bottom":"1px solid #aaa",
                        "border-right":"0px solid #fff"
                    },
                    ".td":{
                        "height":30,
                        "background-color":"#fff",
                        "border-bottom":"1px solid #aaa",
                        "font-weight":"normal",
                        "border-right":"0px solid #fff"
                    },
                    ".td_1":{
                        "offset-x":-30,
                        "padding-left":38
                    },
                    ".td_2":{
                        "offset-x":-30,
                        "padding-left":38
                    },
                    ".td_3":{
                        "offset-x":-30,
                        "padding-left":38
                    },
                    ".td_0_0":{
                        "text-align":"center",
                        "border-radius":21,
                        "border-top":null,
                        "border-right":null,
                        "border-bottom":null,
                        "border-left":null,
                        "border-color":"none",
                        "border-width":8,
                        "background-color":"#FF9900",
                        "color":"#000"
                    },
                    ".td_1_0":{
                        "text-align":"center",
                        "border-radius":21,
                        "border-top":null,
                        "border-right":null,
                        "border-bottom":null,
                        "border-left":null,
                        "border-color":"none",
                        "border-width":8,
                        "background-color":"#9DCC09",
                        "color":"#000"
                    },
                    ".td_2_0":{
                        "text-align":"center",
                        "border-radius":21,
                        "border-top":null,
                        "border-right":null,
                        "border-bottom":null,
                        "border-left":null,
                        "border-color":"none",
                        "border-width":8,
                        "background-color":"#71BDE9",
                        "color":"#000"
                    },
                    ".td_3_0":{
                        "text-align":"center",
                        "border-radius":21,
                        "border-top":null,
                        "border-right":null,
                        "border-bottom":null,
                        "border-left":null,
                        "border-color":"none",
                        "border-width":8,
                        "background-color":"#DE6829",
                        "color":"#000"
                    },
                    ".td_4_0":{
                        "text-align":"center",
                        "border-radius":21,
                        "border-top":null,
                        "border-right":null,
                        "border-bottom":null,
                        "border-left":null,
                        "border-color":"none",
                        "border-width":8,
                        "background-color":"#EDCE00",
                        "color":"#000"
                    }
                }
            },
            "series":[
                {
                    "values":["1", "Technical", neutraldata, "1023"]    
                },
                {
                    "values":["2", "Creative", negTweetCount, negTweetWordCount]    
                },
                {
                    "values":["3", "Management", posTweetCount, posTweetWordCount]    
                },
                {
                    "values":["4", "Marketing", "7%", "143"]    
                },
                {
                    "values":["5", "Other", "3%", "61"]    
                }
            ]
        }
    ]    
};
 
zingchart.render({ 
	id: "zc", 
	data: cdata, 
	modules : "grid"
});
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