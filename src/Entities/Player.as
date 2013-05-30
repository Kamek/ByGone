package  {
	import citrus.system.Entity;
	
	public class Player extends Entity {

		public function Player(name:String, params:Object=null) {
			super(name, params);
			trace("Player created");
			
		}

	}
	
}
