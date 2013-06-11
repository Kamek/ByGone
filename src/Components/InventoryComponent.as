package  
{
	import citrus.system.Component;
	
	public class InventoryComponent extends Component 
	{
		public var controller:InventoryController;
		
		public function InventoryComponent(name:String, params:Object=null) 
		{
			super(name, params);
			
		}
		
	}

}