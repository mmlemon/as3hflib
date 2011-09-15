package net.hifarm.lib.events
{
	import flash.events.Event;
	
	/**
	 * 画面遷移で使われるイベントクラス
	 */
	public class TransitionEvent extends Event
	{
		public static const TRANSITION:String = "transition";
		/**
		 * 遷移完了時（非推奨）
		 */
		public static const TRANSITION_END:String = "transitionEnd";
		/**
		 * 次のview用ID
		 */
		public var nextId:String = "";
		
		public function TransitionEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			var evt:TransitionEvent = new TransitionEvent(TransitionEvent.TRANSITION);
			evt.nextId = nextId;
			return evt;
		}
	}
}