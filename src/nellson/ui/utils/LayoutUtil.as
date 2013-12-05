package nellson.ui.utils
{
	import com.genome2d.components.GCamera;
	import com.genome2d.core.GNode;
	
	public class LayoutUtil
	{
		public function LayoutUtil()
		{
		}
		
		public static function alignCenter(container:GNode, target:GNode):void
		{
			
			
		}
		
		public static function setCameraBackground(color:uint, camera:GCamera):void
		{
			var red:Number = color >> 16 & 0xFF;
			var green:Number = color >> 8 & 0xFF;
			var blue:Number = color & 0xFF;
			
			red = Math.floor((red/255)*1000)/1000
			green = Math.floor((green/255)*1000)/1000
			blue = Math.floor((blue/255)*1000)/1000
			
			camera.backgroundAlpha = 1
			camera.backgroundBlue = blue;
			camera.backgroundRed = red;
			camera.backgroundGreen = green;
		}
		
		public static function setNodeColor(color:uint,node:GNode):void
		{
			
			var red:Number = color >> 16 & 0xFF;
			var green:Number = color >> 8 & 0xFF;
			var blue:Number = color & 0xFF;
			
			red = Math.floor((red/255)*1000)/1000
			green = Math.floor((green/255)*1000)/1000
			blue = Math.floor((blue/255)*1000)/1000
			
			node.transform.blue = blue;
			node.transform.red = red;
			node.transform.green = green;
			
			
		}
	}
}