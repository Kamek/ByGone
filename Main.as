package  {
	
	import citrus.core.starling.StarlingCitrusEngine;
	
	public class Main extends StarlingCitrusEngine {

		public function Main() {
			setUpStarling(true);
			state = new StarlingDemoGameState();
		}

	}
	
}
