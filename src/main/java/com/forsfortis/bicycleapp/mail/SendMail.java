package com.forsfortis.bicycleapp.mail;

import java.io.FileInputStream;
import java.io.InputStream;
//File Name SendEmail.java
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
private static final String EMAIL_SUBJECT="Enquiry";
private static final String CONFIG_FILE="config.properties";
static Properties configProp = new Properties();
InputStream input = null;


public SendMail(){
	try {
		input = this.getClass().getClassLoader().getResourceAsStream(CONFIG_FILE);
		configProp.load(input);
	} catch (Exception e) {
		e.printStackTrace();
	}
}
	
public void sendMail(String from,String text) {
	
	final String USERNAME = configProp.getProperty("email.user");
	final String PASSWORD = configProp.getProperty("email.password");
	final String EMAILTO = configProp.getProperty("email.sendto");

	Properties props = new Properties();
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.starttls.enable", "true");
	props.put("mail.smtp.host", "smtp.gmail.com");
	props.put("mail.smtp.port", "587");

	Session session = Session.getInstance(props,
	  new javax.mail.Authenticator() {
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(USERNAME, PASSWORD);
		}
	  });

	try {

		Message message = new MimeMessage(session);
		message.setFrom(new InternetAddress(from));
		message.setRecipients(Message.RecipientType.TO,
			InternetAddress.parse(EMAILTO));
		message.setSubject(EMAIL_SUBJECT);
		message.setText(text);

		Transport.send(message);

		System.out.println("Done");

	} catch (MessagingException e) {
		throw new RuntimeException(e);
	}
}
}