package com.icynara.onlineexam.utils;

public class StringSplit {
	public static String getHTMLString(String  s,long len,String type){
		String[] str ={};
		String[] str1 = {};
		StringBuffer sb = new StringBuffer();
		if("1".equals(type)||"2".equals(type)){
			str1 = s.split("\r\nA");
			String s1 = str1[0].replaceAll("\r\n", "");
			s1+="\r\nA";
			s1+=str1[1];
			str = s1.split("\r\n");
			sb.append("<hr size='1' color='#ccc' /><label style='font-size: 20px; color: #F00'>"+(len+1)+".");
			sb.append(str[0]+"</label><br/>");
		}else{
			sb.append("<hr size='1' color='#ccc' /><label style='font-size: 20px; color: #F00'>"+(len+1)+".");
			sb.append(s+"</label><br/>");
		}
		switch (type.charAt(0)) {
		case '1':
			for(int i = 1;i<str.length;i++){
				if(str[i].substring(0, 1)!="A"){
					sb.append("<input type='radio' name='q");
					sb.append((len+1)+"' value='");
					sb.append((char)(65+i-1)+"'>");
					sb.append("<label style='font-size: 16px;'>"+ str[i]+"</label>");
					sb.append("</input></br>");
				}
			}
			break;
		case '2':
			for(int i = 1;i<str.length;i++){
				if(str[i].substring(0, 1)!="A"){
					sb.append("<input type='checkbox' name='q");
					sb.append((len+1)+"' value='");
					sb.append((char)(65+i-1)+"'>");
					sb.append("<label style='font-size: 16px;'>"+ str[i]+"</label>");
					sb.append("</input></br>");
				}
			}
			break;
		case '3':
			sb.append("<input type='radio' name='q");
			sb.append((len+1)+"' value='t'><label style='font-size: 16px;'>正确</label></input></br>");
			sb.append("<input type='radio' name='q");
			sb.append((len+1)+"' value='f'><label style='font-size: 16px;'>错误</label></input></br>");
			break;
		case '4':
			sb.append("<textarea name='q"+(len+1)
					+ "' rows='14' cols='200' style='width:500px;height:200px;margin-left: 20px;margin-top: 5px'></textarea><br/>");
			break;
		}
		
		return  sb.toString();
	}
}
