package  
{
	import citrus.system.Entity;
	import citrus.objects.CitrusSprite;
	import citrus.system.components.ViewComponent;
	
	public class Item extends Entity 
	{
		public var viewComponent:ViewComponent;
		public var owner:Entity;
		public var weight:Number;
		public var size:Number;
		public var condition:Number;
		public var controller:InventoryController;
		public var visible:Boolean;

		public function Item(name:String, params:Object=null) 
		{
			super(name, params);
			
		}
		
	}

}