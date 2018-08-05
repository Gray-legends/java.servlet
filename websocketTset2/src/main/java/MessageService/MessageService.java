package MessageService;
/**
 * 聊天信息管理
 */
import java.util.ArrayList;

import Message.Message;

public class MessageService {
	private ArrayList<Message> allMessages;
	public MessageService(ArrayList<Message> allMessage) {
		this.allMessages=allMessage;
		
	}
	public ArrayList<Message>getAllessage(){
		return allMessages;
	}
	public void addMessages(Message message){
		//先判断聊天信息是否为空，为空值为新建聊天列表
		if(allMessages==null){
			allMessages=new ArrayList<Message>();
		}else{
			//将指定的元素插入此列表中的指定位置。向右移动当前位于该位置的元素（如果有）以及所有后续元素（将其索引加 1）。 
			allMessages.add(0,message);
		}
		
	}
		
	
	
}
