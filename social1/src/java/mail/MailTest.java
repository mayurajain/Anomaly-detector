package mail;
import java.util.Properties;
 
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Message;
 import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class MailTest {
	
	public MailTest(String email1, String key,String userSatus)
	 {
		 final String fromEmail = "dummy7638@gmail.com"; //requires valid gmail id
	        final String password = "@admin1abc"; // correct password for gmail id
	        final String toEmail = email1; // can be any email id 
	         
	        System.out.println("TLSEmail Start");
	        Properties props = new Properties();
                props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS
	        props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
	        props.put("mail.smtp.port", "587"); //TLS Port
	        props.put("mail.smtp.auth", "true"); //enable authentication
	        props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS
	         
	                //create Authenticator object to pass in Session.getInstance argument
	        Authenticator auth = new Authenticator() {
	            //override the getPasswordAuthentication method
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(fromEmail, password);
	            }
	        };
	        Session session = Session.getInstance(props, auth);
	         
	        EmailUtil.sendEmail(session, toEmail,userSatus, key);
	 }
	
	
    /**
       Outgoing Mail (SMTP) Server
       requires TLS or SSL: smtp.gmail.com (use authentication)
       Use Authentication: Yes
       Port for TLS/STARTTLS: 587
     */
    public static void main(String[] args) {
        new MailTest("prabhudevkumar007@gmail.com","This account is removed coz of 10 tweets violations","users status");
        
         
    }
 
     
}