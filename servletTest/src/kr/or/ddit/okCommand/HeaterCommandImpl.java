package kr.or.ddit.okCommand;

//ICommand를 구현한 Heater를 사용하는 클래스
public class HeaterCommandImpl implements ICommand {

	private Heater heater;
	
	public HeaterCommandImpl(Heater heater) {
		this.heater= heater;
	}
	@Override
	public void excute() {
		heater.powerOn();

	}

}
