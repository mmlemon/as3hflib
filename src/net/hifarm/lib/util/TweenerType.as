package net.hifarm.lib.util
{
	import flash.errors.IllegalOperationError;

	/**
	 * tweenerのtransitionを定数にしたもの
	 */
	public class TweenerType
	{
		
		public static const LINEAR:String = "linear";
		
		public static const EASE_IN_SINE:String = "easeInSine";
		public static const EASE_OUT_SINE:String = "easeOutSine";
		public static const EASE_IN_OUT_SINE:String = "easeInOutSine";
		
		public static const EASE_IN_QUAD:String = "easeInQuad";
		public static const EASE_OUT_QUAD:String = "easeOutQuad";
		public static const EASE_IN_OUT_QUAD:String = "easeInOutQuad";
		
		public static const EASE_IN_CUBIC:String = "easeInCubic";
		public static const EASE_OUT_CUBIC:String = "easeOutCubic";
		public static const EASE_IN_OUT_CUBIC:String = "easeInOutCubic";
		
		public static const EASE_IN_QUART:String = "easeInQuart";
		public static const EASE_OUT_QUART:String = "easeOutQuart";
		public static const EASE_IN_OUT_QUART:String = "easeInOutQuart";
		
		public static const EASE_IN_QUINT:String = "easeInQuint";
		public static const EASE_OUT_QUINT:String = "easeOutQuint";
		public static const EASE_IN_OUT_QUINT:String = "easeInOutQuint";
		
		public static const EASE_IN_EXPO:String = "easeInExpo";
		public static const EASE_OUT_EXPO:String = "easeOutExpo";
		public static const EASE_IN_OUT_EXPO:String = "easeInOutExpo";
		
		public static const EASE_IN_CIRC:String = "easeInCirc";
		public static const EASE_OUT_CIRC:String = "easeOutCirc";
		public static const EASE_IN_OUT_CIRC:String = "easeInOutCirc";
		
		public static const EASE_IN_ELASTIC:String = "easeInElastic";
		public static const EASE_OUT_ELASTIC:String = "easeOutElastic";
		public static const EASE_IN_OUT_ELASTIC:String = "easeInOutElastic";
		
		public static const EASE_IN_BACK:String = "easeInBack";
		public static const EASE_OUT_BACK:String = "easeOutBack";
		public static const EASE_IN_OUT_BACK:String = "easeInOutBack";
		
		public static const EASE_IN_BOUNCE:String = "easeInBounce";
		public static const EASE_OUT_BOUNCE:String = "easeOutBounce";
		public static const EASE_IN_OUT_BOUNCE:String = "easeInOutBounce";
		
		
		public function TweenerType()
		{
			throw new IllegalOperationError("インスタンス化しないで下さい。");
		}
	}
}