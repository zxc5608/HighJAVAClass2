package kr.or.ddit.nonCommand;
//프로그램 실행 클래스 
public class NonCommandTest {

	public static void main(String[] args) {
		//램프켜기기능 수행하기 
		/*Lamp lamp = new Lamp();
		NonCommand test= new NonCommand(lamp);
		test.run();
		*/
		
		//히터 켜기 기능 수행하기 
		Heater heater = new Heater();
		
		NonCommand test = new NonCommand(heater);
		test.run();
	}
}
