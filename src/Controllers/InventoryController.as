package  
{
	import citrus.system.Entity;
	
	public class InventoryController extends Entity 
	{
		protected var parentView:ViewComponent;
		public var items:Vector.<Item>;
		public var owner:Entity;
		
		public function InventoryController(name:String, params:Object=null) 
		{
			super(name, params);
			
		}
		
	}

}