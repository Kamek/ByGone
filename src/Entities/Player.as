package  {
	import citrus.objects.CitrusSprite;
	import citrus.system.components.ViewComponent;
	import citrus.system.Entity;
	
	public class Player extends Entity {
		public var viewComponent:ViewComponent;
		public var playerInputController:PlayerInputController;

		public function Player(name:String, params:Object=null) {
			super(name, params);
			viewComponent = new ViewComponent("viewComponent", params);
			playerInputController = new PlayerInputController("playerInputController", viewComponent);
			add(viewComponent);
			add(playerInputController);
			viewComponent.view = new CitrusSprite("view", params);
			super.initialize();
			initialize();
			if(params["x"]) {
				viewComponent.view.x = params["x"];
			}
			if(params["y"]) {
				viewComponent.view.y = params["y"];
			}
		}
	}
	
}
