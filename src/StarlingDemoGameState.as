package {

	import citrus.core.starling.StarlingState;
	import citrus.physics.nape.Nape;
	import citrus.objects.platformer.nape.Platform;
	import citrus.objects.platformer.nape.Hero;
	import flash.display.MovieClip;
	import citrus.utils.objectmakers.ObjectMaker2D;

	public class StarlingDemoGameState extends StarlingState {
		public var player:Hero;
		public var platform:Platform;
		protected var level:MovieClip;
		public function StarlingDemoGameState(_level:MovieClip) {
			super();
			level = _level;
		}

		override public function initialize():void {
			super.initialize();
			var physics:Nape = new Nape("physics");
			physics.visible = true;
			add(physics);
			add(new Platform("bottom", {x:stage.stageWidth / 2, y:stage.stageHeight, width:stage.stageWidth}));
			ObjectMaker2D.FromMovieClip(level, true);
			player = getObjectByName("hero") as Hero;
			platform = getObjectByName("platform") as Platform;
			player.x = 250;
			player.y = 250;
			var p:Player = new Player("player");
		}
	}
}