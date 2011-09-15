package net.hifarm.lib.units
{
	import flash.geom.Point;
	/**
	 * 簡易ベクトルクラス
	 * ※Flash Player9を想定
	 */
	public class Vector2D extends Point
	{
		public function Vector2D(x:Number=0, y:Number=0)
		{
			super(x, y);
		}
		
		/**
		 * 平均化（単位ベクトルに）する
		 */
		public function normalizeVec():void
		{
			var dist:Number = Point.distance(this, new Point(0, 0));
			this.x /= dist;
			this.y /= dist;
		}
		
	}
}