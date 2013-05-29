package {

	import citrus.core.starling.StarlingState;
	import citrus.physics.nape.Nape;
	import citrus.objects.platformer.nape.Platform;
	import citrus.objects.platformer.nape.Hero;

	public class StarlingDemoGameState extends StarlingState {

		public function StarlingDemoGameState() {
			super();
		}

		override public function initialize():void {
			super.initialize();
			var physics:Nape = new Nape("physics");
			physics.visible = true;
			add(physics);
			add(new Platform("bottom", {x:stage.stageWidth / 2, y:stage.stageHeight, width:stage.stageWidth}));
			add(new Platform("cloud", {x:250, y:250, width:170, oneWay:true}));
			add(new Hero("player", {x:260, y:260}));
		}
	}
}