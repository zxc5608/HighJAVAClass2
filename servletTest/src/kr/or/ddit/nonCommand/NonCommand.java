package kr.or.ddit.nonCommand;

// 호출자 역할의 클래스
public class NonCommand {

/*	//램프 켜기
	private Lamp lamp;
	
	public NonCommand(Lamp lamp) {
		this.lamp=lamp;
	}
	
	public void run() {
		lamp.turnOn();
	}*/
	
	//히터 켜기
	
	private Heater heater;
	
	public NonCommand(Heater heater) {
		this.heater=heater;
		
	}
	public void run() {
		heater.powerOn();
	}
}
