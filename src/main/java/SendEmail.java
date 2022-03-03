import java.net.Authenticator;
import java.util.Properties;
import java.util.Random;

import org.apache.catalina.Session;




public class SendEmail {

	public String getRandom()
	{
		Random rnd = new Random();
		int num = rnd.nextInt(99999);
		
		return String.format("%06d", num);
	}
	
	public boolean sendEmail(User user)
	{
		boolean test = false;
		String toEmail = user.getEmail();
		String fromEmail = "akshayzepale96@gmail.com";
		String password = "Akshay@22";
		
		try {
			Properties pr = new Properties();
			pr.setProperty("mail.smtp.host", "smtp.mail.com");
			pr.setProperty("mail.smtp.port", "587");
			pr.setProperty("mail.smtp.auth", "true");
			pr.setProperty("mail.smtp.starttls.enable", "true");
			pr.put("mail.smyp.socketFactory.port", "587");
			pr.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return test;
	}
}
