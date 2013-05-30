package {
import citrus.core.starling.StarlingCitrusEngine;
import flash.display.Loader;
import flash.net.URLRequest;
import flash.events.Event;

[SWF(frameRate="60",width="550",height="400")]
public class CitrusLevelEditor extends StarlingCitrusEngine
{
	public function CitrusLevelEditor()
	{
		setUpStarling(true);
 
		var loader:Loader = new Loader();
		loader.contentLoaderInfo.addEventListener(Event.COMPLETE, _levelLoaded);
		loader.load(new URLRequest("../levels/ByGone.swf"));
	}
	private function _levelLoaded(evt:flash.events.Event):void {
		trace(evt.target.loader.content);
		state = new StarlingDemoGameState(evt.target.loader.content);
 
		evt.target.removeEventListener(Event.COMPLETE, _levelLoaded);
		evt.target.loader.unloadAndStop();
	}
}
}