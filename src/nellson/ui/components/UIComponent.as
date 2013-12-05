package nellson.ui.components
{
	import com.genome2d.components.GComponent;
	import com.genome2d.core.GNode;
	
	import flash.geom.Rectangle;
	
	import org.osflash.signals.Signal;
	
	public class UIComponent extends GComponent
	{
		
		
		private var bounds:Rectangle;
		private var _invalidDirty:Boolean;
		
		
		private var _onResize:Signal;
		private var _onInavlidate:Signal;
		
		public function UIComponent(p_node:GNode)
		{
			super(p_node);
			
			bounds = new Rectangle(0,0,10,10);
		}
		
		public function initialize():void
		{
			
			
		}
		
		protected function invalidate():void
		{
			_invalidDirty = true;
		}
		
		protected function onInvalidate():void
		{
			
		}
		
		protected function invalidateLayout():void
		{
			
		}
		
		override public function update(p_deltaTime:Number):void
		{
			if(_invalidDirty)
			{
				
			}
		}

		public function get onResize():Signal
		{
			if(_onResize == null) _onResize = new Signal();
			return _onResize;
		}

		public function set onResize(value:Signal):void
		{
			_onResize = value;
		}

		public function get onInavlidate():Signal
		{
			if( _onInavlidate == null) _onInavlidate = new Signal();
			return _onInavlidate;
		}

		public function set onInavlidate(value:Signal):void
		{
			_onInavlidate = value;
		}
		
		
		
		
	}
}