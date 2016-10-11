package com.icynara.onlineexam.utils;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 生成图片验证码
 * @ClassName:ImageChack.java
 * @Description:TODO(等我喝醉了再来修复。) 
 * @author:remix
 * @version:V1.0  
 * @Date:2016年9月2日 下午3:38:57
 */
public class ImageChack extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Font getFont(){
		Random random = new Random();
		Font[] font = new Font[5];
		font[0] = new Font("Ravie", Font.PLAIN, 24);  
        font[1] = new Font("Antique Olive Compact", Font.PLAIN, 24);  
        font[2] = new Font("Forte", Font.PLAIN, 24);  
        font[3] = new Font("Wide Latin", Font.PLAIN, 24);  
        font[4] = new Font("Gill Sans Ultra Bold", Font.PLAIN, 24);  
        return font[random.nextInt(5)];  
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置响应头信息
		response.setContentType("image/jpeg");
		//指定页面不缓存
		response.setHeader("Pragma", "No-cache");  
		response.setHeader("Cache-Control", "No-cache");  
		response.setDateHeader("Expires", 0); 
		//获取输出流
		OutputStream os = response.getOutputStream();
		//指定宽高
		int width = 120,height = 30;
		//指定宽高和bufferedImage对象
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		//画笔画在image 上
		Graphics g = image.getGraphics(); 
		Color c = g.getColor();
		g.fillRect(0, 0, width, height);
		
		char[] ch = "ABCDEFGHJKLMNPQRSTUVWXYZabcdefghjklmnpqrstuvwxyz23456789".toCharArray();
		int len = ch.length;
		String res = "";
		Random random = new Random();
		for(int i=0; i<5; i++){
			//设置字体
			g.setFont(getFont());
			String rand = new Character(ch[random.nextInt(len)]).toString();
			res+=rand;
			//设置随机颜色
			g.setColor(new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255)));
			g.drawString(rand, 20*i+6, 25);
		}
		//产生干扰点
		for(int i=0; i<6; i++){
			int x1 = random.nextInt(width);
			int y1 = random.nextInt(height);
			g.setColor(new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255)));
			g.drawOval(x1, y1, width, height);
		}
		//将画笔颜色还原
		g.setColor(c);
		g.dispose();
		//将验证码保存到session
		request.getSession().setAttribute("imageChack", res.toLowerCase());
		System.out.println(res.toLowerCase());
		//输出图像
		ImageIO.write(image, "JPEG", os);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
