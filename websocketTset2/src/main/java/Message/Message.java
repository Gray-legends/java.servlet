package Message;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 表示聊天的信息
 * @author Administrator
 *
 */
public class Message {
	private String time;
	private String userid;
	private String info;
	public Message(String userid,String info ){
		this.userid=userid;
		this.info=info;
		this.time=(new SimpleDateFormat("hh:mm:ss")).format(new Date());
		
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
}
