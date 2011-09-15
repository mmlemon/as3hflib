package net.hifarm.lib.events
{
	import flash.display.Scene;
	import flash.events.Event;
	
	/**
	 * シーン毎のイベント。
	 * 画面に関する変化を扱う。
	 */
	public class SceneEvent extends Event
	{
		/**
		 * viewが現れた直後に呼ばれる
		 */
		public static const VIEW_DID_APPEAR:String = "su_viewDidAppear";
		/**
		 * viewが消えた直後に呼ばれる
		 */
		public static const VIEW_DID_DISAPPEAR:String = "su_viewDidDisappear";
		/**
		 * viewの表示処理が呼ばれた直後に呼ばれる
		 */
		public static const VIEW_WILL_APPEAR:String = "su_viewWillAppear";
		/**
		 * viewが消える直前に呼ばれる
		 */
		public static const VIEW_WILL_DISAPPEAR:String = "su_viewWillDisappear";
		
		public function SceneEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			var evt:SceneEvent = new SceneEvent(type, bubbles, cancelable);
			return evt;
		}
	}
}