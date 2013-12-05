package  
{
	import com.genome2d.components.GCamera;
	import com.genome2d.core.GConfig;
	import com.genome2d.core.GNodeFactory;
	import com.genome2d.core.Genome2D;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;
	
	import nellson.ui.utils.LayoutUtil;
	
	public class Scale9Image extends Sprite
	{
		private var core:Genome2D;
		private var camera:GCamera;
		public function Scale9Image()
		{
			super();
			
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedStage);
		}
		
		protected function onAddedStage(e:Event):void
		{
			
			trace("Scale9Image.onAddedStage(e)");
			core = Genome2D.getInstance();
			
			core.onInitialized.addOnce(onGenome2dInitialized);
			
			
			var config:GConfig = new GConfig(new Rectangle(0,0,stage.stageWidth, stage.stageHeight));
			config.enableStats = true;
			config.showExtendedStats = true;
			core.init(stage,config);
		}
		
		private function onGenome2dInitialized():void
		{
			trace("Scale9Image.onGenome2dInitialized()");
			
			camera = GNodeFactory.createNodeWithComponent(GCamera) as GCamera;
			camera.node.transform.setScale(stage.stageWidth>>1, stage.stageHeight>>1);
			
			LayoutUtil.setCameraBackground(0xffffff, camera);
			core.root.addChild(camera.node);
			
		}
	}
}