package kr.or.ddit.okCommand;
//실행하는 클래스
public class OkCommandTest {

	public static void main(String[] args) {
		OkCommand test= new OkCommand();

		//램프켜기
		Lamp lamp = new Lamp();
		
		
		ICommand lampCom =new LampCommandImpl(lamp);
		
		
		test.setCommand(lampCom);
		test.run();
		
		//히터 켜기
		Heater heater = new Heater();
		ICommand heaterCom= new HeaterCommandImpl(heater);
		
		test.setCommand(heaterCom);
		test.run();
		
	}
}
