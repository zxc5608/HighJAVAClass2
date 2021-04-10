package kr.or.ddit.okCommand;

//Lamp를 사용하는 클래스로 ICommand인터페이스를 구현한 클래스 
public class LampCommandImpl implements ICommand{
	private Lamp lamp;
	
	public LampCommandImpl(Lamp lamp) {
		this.lamp=lamp;
	}
	@Override
	public void excute() {
		lamp.turnOn();
		
	}

}
