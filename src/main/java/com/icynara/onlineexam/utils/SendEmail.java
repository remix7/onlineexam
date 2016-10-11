package com.icynara.onlineexam.utils;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
/**
 * 邮件发送
 * @ClassName:SendEmail.java
 * @Description:TODO(等我喝醉了再来修复。) 
 * @author:remix
 * @version:V1.0  
 * @Date:2016年9月2日 下午3:35:20
 */
public class SendEmail {
	public static boolean send(String mailAdd,String text){
		String html = "<tr><td align='center' valign='top'><table id='templateBody' border='0' cellpadding='0' cellspacing='0' width='100%'>" +
				"<tbody><tr><td align='center' valign='top'><table class='templateContainer' border='0' cellpadding='0' cellspacing='0'" +
				"width='650'><tbody><tr><td data-container='body' class='bodyContainer tpl-container dragTarget' valign='top'>" +
				"<div class='block tpl-block text-block' style='border-radius: 0px; border: 0px solid rgb(0, 0, 0);'>" +
				"<div data-attach-point='containerNode'><table class='textBlock' border='0' cellpadding='0' cellspacing='0' width='100%'>" +
				"<tbody class='textBlockOuter'><tr><td class='textBlockInner' valign='top'><table class='textContentContainer' align='left'" +
				"border='0' cellpadding='0' cellspacing='0' width='100%'><tbody><tr><td class='textContent' style='padding-top:5px; " +
				"padding-right: 40px; padding-bottom: 25px;padding-left: 40px;background-color:rgba(255,255,255,0)' valign='top'>" +
				"<div style='text-align: center'><br><span style='font-family: 'Microsoft YaHei', 微软雅黑, SimSun, 宋体, Heiti, 黑体, " +
				"sans-serif;text-align: center; font-size: 14px !important; line-height: 24.9333px;'>复制代码点击下方按钮完成注册<br><br>" +text+"<br><br>" +
				"若存在任何问题，请与我们的联系（QQ：<span style='border-bottom:1px dashed #ccc;z-index:1' t='7' onclick='return false;' " +
				"data='774022197'>774022197</span></span>） </div><div style='text-align:center;margin-top: 20px'>" +
				"<div style='width: 600px;display:inline-block;padding:10px'>" +
				"<a class='activeA' style='display:inline-block;background:#07d681;" +
				"border-radius:4px;padding: 0px auto;color:white;" +
				"text-decoration:none;font-size:16px;line-height: 44px ; width: 280px;height: 44px' href='http://localhost:8080/onlineExam/admin/mailCheck.jsp' target='_blank'>完成注册</a>" +
				"</div></div><div style='text-align:center;margin-top: 20px'>或复制以下网址到浏览器里直接打开：<br>" +
				"<a href='http://localhost:8080/onlineExam/admin/mailCheck.jsp' target='_blank'>http://localhost:8080/onlineExam/admin/mailCheck.jsp</a>" +
				"<br>再次感谢您的注册<br> &copy;<a href='http://www.cynara.top/' target='_blank'>&nbsp;Cynara</a>&nbsp;"+
				"</div></td></tr></tbody></table></td></tr></tbody></table>" +
				"</div></div></td></tr></tbody></table></td></tr></tbody></table></td></tr>";
		
		Properties props = new Properties();
		props.setProperty("mail.transport.protocol", "smtp");
		props.setProperty("mail.host", "smtp.mxhichina.com");
		props.setProperty("mail.smtp.auth", "true");
		
		Session session = Session.getDefaultInstance(props);
		session.setDebug(true);
		MimeMessage message = new MimeMessage(session);
		
		try {
			message.setFrom(new InternetAddress("master@cynara.top"));
			message.setRecipients(Message.RecipientType.TO, mailAdd);
			message.setSubject("欢迎注册1005在线测试平台。");
			
			MimeBodyPart mpart = new MimeBodyPart();
			mpart.setContent(html, "text/html;charset=UTF-8");
			
			MimeMultipart mmpart = new MimeMultipart();
			mmpart.addBodyPart(mpart);
			
			message.setContent(mmpart);
			message.saveChanges();
			
			Transport ts = session.getTransport();
			ts.connect("master@cynara.top", "lT774022197");//xzetpxtpiwdymrka
			ts.sendMessage(message, message.getAllRecipients());
			ts.close();
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
