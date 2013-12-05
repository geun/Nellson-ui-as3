package nellson.ui.textures
{
	import com.genome2d.textures.GTexture;
	import com.genome2d.textures.GTextureAtlas;
	import com.genome2d.textures.GTextureSourceType;
	import com.genome2d.textures.GTextureUtils;
	import com.genome2d.textures.factories.GTextureAtlasFactory;
	import com.genome2d.textures.factories.GTextureFactory;
	
	import flash.display.BitmapData;
	import flash.display3D.textures.Texture;
	import flash.geom.Rectangle;
	
	import starling.textures.Texture;

	public class Scale9Texture
	{
		private var _scale9Grid:Rectangle;
		private var _texture:GTexture;
		private var parent:GTextureAtlas;
		
		
		
		public function Scale9Texture(texture:GTexture, scale9Grid:Rectangle)
		{
			this._texture = texture;
			this._scale9Grid = scale9Grid;
			this.parent = _texture.parent;
			
			this.initialize();
		}
		
		private var _topLeft:GTexture;

		public function get topLeft():GTexture
		{
			return _topLeft;
		}

		private var _topCenter:GTexture;

		public function get topCenter():GTexture
		{
			return _topCenter;
		}

		private var _topRight:GTexture;

		public function get topRight():GTexture
		{
			return _topRight;
		}

		
		private var _middleLeft:GTexture;

		public function get middleLeft():GTexture
		{
			return _middleLeft;
		}

		private var _middleCenter:GTexture;

		public function get middleCenter():GTexture
		{
			return _middleCenter;
		}

		private var _middleRight:GTexture;

		public function get middleRight():GTexture
		{
			return _middleRight;
		}

		
		private var _bottomLeft:GTexture;

		public function get bottomLeft():GTexture
		{
			return _bottomLeft;
		}

		private var _bottomCenter:GTexture;

		public function get bottomCenter():GTexture
		{
			return _bottomCenter;
		}

		private var _bottomRight:GTexture;

		public function get bottomRight():GTexture
		{
			return _bottomRight;
		}
		
		
		private function initialize():void
		{
		
			var textureFrame:Rectangle = this._texture.region;
			if(parent == null)
			{
				var b_source:BitmapData = this._texture.bitmapData;
				parent = new GTextureAtlas(_texture.id, GTextureSourceType.BITMAPDATA, b_source.width, b_source.height, b_source, GTextureUtils.isBitmapDataTransparent(b_source), null);
				textureFrame = new Rectangle(0,0,b_source.width, b_source.height);
			}
			
			const leftWidth:Number = this._scale9Grid.x;
			const centerWidth:Number = this._scale9Grid.width;
			const rightWidth:Number = textureFrame.width - this._scale9Grid.width - this._scale9Grid.x;
			
			const topHeight:Number = this._scale9Grid.y;
			const middleHeight:Number = this._scale9Grid.height;
			const bottomHeight:Number = textureFrame.height - this._scale9Grid.height - this._scale9Grid.y;
			
			
			const regionLeftWidth:Number = leftWidth + textureFrame.x;
			const regionTopHeight:Number = topHeight + textureFrame.y;
			const regionRightWidth:Number = rightWidth - (textureFrame.width - this._texture.width) - textureFrame.x;
			const regionBottomHeight:Number = bottomHeight - (textureFrame.height - this._texture.height) - textureFrame.y;
			
			const hasLeftFrame:Boolean = regionLeftWidth != leftWidth;
			const hasTopFrame:Boolean = regionTopHeight != topHeight;
			const hasRightFrame:Boolean = regionRightWidth != rightWidth;
			const hasBottomFrame:Boolean = regionBottomHeight != bottomHeight;
			
			const topLeftRegion:Rectangle = new Rectangle(0, 0, regionLeftWidth, regionTopHeight);
			const topLeftFrame:Rectangle = (hasLeftFrame || hasTopFrame) ? new Rectangle(textureFrame.x, textureFrame.y, leftWidth, topHeight) : null;
			this._topLeft = parent.addSubTexture(_texture.id + '_topLeft', topLeftFrame);
			
			const topCenterFrame:Rectangle = hasTopFrame ? new Rectangle(regionLeftWidth, textureFrame.y, centerWidth, topHeight) : null;
			this._topCenter = parent.addSubTexture(_texture.id + '_topCenter', topCenterFrame);
			
			const topRightFrame:Rectangle = (hasTopFrame || hasRightFrame) ? new Rectangle(regionLeftWidth + centerWidth, textureFrame.y, rightWidth, topHeight) : null;
			this._topRight = parent.addSubTexture(_texture.id + '_topRight', topRightFrame);
			
			const middleLeftFrame:Rectangle = hasLeftFrame ? new Rectangle(textureFrame.x, regionTopHeight, leftWidth, middleHeight) : null;
			this._middleLeft = parent.addSubTexture(_texture.id + '_topLeft', middleLeftFrame);
			
			const middleCenterFrame:Rectangle = new Rectangle(regionLeftWidth, regionTopHeight, centerWidth, middleHeight);
			this._middleCenter = parent.addSubTexture(_texture.id + '_topLeft', middleCenterFrame);
			
			const middleRightFrame:Rectangle = hasRightFrame ? new Rectangle(regionLeftWidth + centerWidth, regionTopHeight, rightWidth, middleHeight) : null;
			this._middleRight = parent.addSubTexture(_texture.id + '_topLeft', middleRightFrame);
			
			const bottomLeftFrame:Rectangle = (hasLeftFrame || hasBottomFrame) ? new Rectangle(textureFrame.x, topHeight + middleHeight, leftWidth, bottomHeight) : null;
			this._bottomLeft = parent.addSubTexture(_texture.id + '_topLeft', bottomLeftFrame);
			
			const bottomCenterFrame:Rectangle = hasBottomFrame ? new Rectangle(regionLeftWidth, topHeight + middleHeight, centerWidth, bottomHeight) : null;
			this._bottomCenter = parent.addSubTexture(_texture.id + '_topLeft', bottomCenterFrame);
			
			const bottomRightFrame:Rectangle = (hasBottomFrame || hasRightFrame) ? new Rectangle(regionLeftWidth + centerWidth, topHeight + middleHeight, rightWidth, bottomHeight) : null;
			this._bottomRight = parent.addSubTexture(_texture.id + '_topLeft', bottomRightFrame);
			

			
		}
	}
}