package kr.or.ddit.okCommand;
//호출자역할의 클래스 
public class OkCommand {
	private ICommand command;
	
	public void setCommand(ICommand command) {
		this.command= command;
		
	}
	public void run() {
		command.excute();
	}
}
