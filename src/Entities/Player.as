package  {
	import citrus.objects.CitrusSprite;
	import citrus.input.controllers.Keyboard;
	
	public class Player extends CitrusSprite {
		public var acceleration:Number = 16;
		public var moveKeyPressed:Boolean;

		public function Player(name:String, params:Object=null) {
			super(name, params);
		}
		
		override public function update(timeDelta:Number):void {
			super.update(timeDelta);
			
			moveKeyPressed = false;
 
			if (_ce.input.isDown(Keyboard.RIGHT)) {
				this.x += (acceleration);
				moveKeyPressed = true;
			}
 
			if (_ce.input.isDown(Keyboard.LEFT)) {
				this.x -= (acceleration);
				moveKeyPressed = true;
			}
			
			if (_ce.input.isDown(Keyboard.UP)) {
				this.y -= (acceleration);
				moveKeyPressed = true;
			}
			
			if (_ce.input.isDown(Keyboard.DOWN)) {
				this.y += (acceleration);
				moveKeyPressed = true;
			}
		}

	}
	
}
