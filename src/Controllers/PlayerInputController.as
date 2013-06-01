package  
{
	import citrus.input.InputController;
	import citrus.system.components.InputComponent;
	import citrus.system.components.ViewComponent;
	import citrus.system.Entity;
	import citrus.input.controllers.Keyboard;
	
	/**
	 * ...
	 * @author Kamek
	 */
	public class PlayerInputController extends InputComponent 
	{
		protected var acceleration:Number = 16;
		protected var moveKeyPressed:Boolean;
		protected var parentView:ViewComponent;
		
		public function PlayerInputController(name:String, _parentView:ViewComponent) 
		{
			super(name);
			parentView = _parentView;
		}
		
		override public function update(timeDelta:Number):void {
			super.update(timeDelta);
			
			moveKeyPressed = false;
 
			if (_ce.input.isDown(Keyboard.RIGHT)) {
				parentView.view.x += (acceleration);
				moveKeyPressed = true;
			}
 
			if (_ce.input.isDown(Keyboard.LEFT)) {
				parentView.view.x -= (acceleration);
				moveKeyPressed = true;
			}
			
			if (_ce.input.isDown(Keyboard.UP)) {
				parentView.view.y -= (acceleration);
				moveKeyPressed = true;
			}
			
			if (_ce.input.isDown(Keyboard.DOWN)) {
				parentView.view.y += (acceleration);
				moveKeyPressed = true;
			}
		}
		
	}

}