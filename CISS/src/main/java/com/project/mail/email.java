package com.project.mail;
import java.util.Random;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class email
{
	public static void sendMail(String email, Integer OTP , String subject , String content ) {

		java.util.Properties properties = new java.util.Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

		try {
			MimeMessage message = new MimeMessage(mailSession);

			message.setContent(content+OTP, "text/html");
			message.setSubject(subject);

			InternetAddress sender = new InternetAddress("shreyasinha584@gmail.com", "BIPA");
			InternetAddress receiver = new InternetAddress(email);
			message.setFrom(sender);
			message.setRecipient(Message.RecipientType.TO, receiver);
			message.saveChanges();

			javax.mail.Transport transport = mailSession.getTransport("smtp");
			transport.connect("smtp.gmail.com", 587, "shreyasinha584@gmail.com" , "Sharyu584");
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	
	public static int generateOTP(int limit) {

        int otp = 0;

        if (limit > 5 || limit < 1)
            limit = 3;

        for (int i = 0; i < limit; i++) {

            int x = new Random().nextInt(9);

            if (x == 0 && i == 0)
                i--;
            else
                otp = (otp * 10) + x;
        }

        return otp;
    }

}
