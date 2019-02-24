package  {
	
	import flash.display.Shape;
	
	public class RoundRectangle extends Shape {
		
		private var color:int;
		private var cornerSize:Number;

		public function RoundRectangle( color:int = 0x00FF00 , width:Number = 50 , height:Number = 30 , cornerSize:Number = 10 ) {
			// constructor code
			
			draw( this.color = color , width , height , this.cornerSize = cornerSize );
			
		}
		
		private function draw( color:int , width:Number , height:Number , cornerSize:Number ):void {
			
			this.graphics.clear();
			this.graphics.beginFill( color );
			this.graphics.drawRoundRect( 0 , 0 , width , height , cornerSize );
			this.graphics.endFill();
			
		}
		
		public function setColor( color:int ):RoundRectangle {
			
			this.color = color;
			
			return redraw( color , width , height , cornerSize );
			
		}
		
		public function setWidth( width:Number ):RoundRectangle {
			
			return redraw( color , width , height , cornerSize );
			
		}
		
		public function setHeight( height:Number ):RoundRectangle {
			
			return redraw( color , width , height , cornerSize );
			
		}
		
		public function setCornerSize( cornerSize:Number ):RoundRectangle {
			
			this.cornerSize = cornerSize;
			
			return redraw( color , width , height , cornerSize );
			
		}
		
		private function redraw( color:int , width:Number , height:Number , cornerSize:Number ):RoundRectangle {
			
			draw( color , width , height , cornerSize );
			
			return this;
			
		}

	}
	
}
