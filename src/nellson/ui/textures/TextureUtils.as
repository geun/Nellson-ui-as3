package nellson.ui.textures
{
	import com.genome2d.textures.GTexture;
	import com.genome2d.textures.GTextureAtlas;
	import com.genome2d.textures.factories.GTextureAtlasFactory;
	import com.genome2d.textures.factories.GTextureFactory;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Rectangle;

	public class TextureUtils
	{
		public function TextureUtils()
		{
			
		}
		
		
		public static function createScale9TextureFromTexture(name:String, exture:GTexture, scale9Grid:Rectangle):Scale9Texture
		{
			
			var	sourceBitmap:BitmapData = texture.bitmapData;
			
			for (var i:int = 0; i < array.length; i++) 
			{
				
				for (var j:int = 0; j < array.length; j++) 
				{
					
				}
			}
			
			
			var regions:Vector.<Rectangle> = new Vector.<Rectangle>(9,false);
			var names:Vector.<String> = new Vector.<String>(9,false);
			var textureAtals:GTextureAtlas = GTextureAtlasFactory.createFromBitmapDataAndRegions(name, sourceBitmap, regions,names);
			var texture:Scale9Texture = new Scale9Texture(textureAtals, scale9Grid);
			
			
			
			return texture;
			
		}
		
		
//		public function addSubTexture(p_subId:String, p_region:Rectangle, p_pivotX:Number = 0, p_pivotY:Number = 0, p_invalidate:Boolean = false):GTexture {
//			var texture:GTexture = new GTexture(_sId+"_"+p_subId, iSourceType, getSource(), p_region, bTransparent, p_pivotX, p_pivotY, null, this);
//			texture.sSubId = p_subId;
//			texture.filteringType = filteringType;
//			texture.cContextTexture = cContextTexture;
//			__dTextures[p_subId] = texture;
//			
//			if (p_invalidate) invalidate();
//			
//			return texture;
//		}
	}
	
	
	
}