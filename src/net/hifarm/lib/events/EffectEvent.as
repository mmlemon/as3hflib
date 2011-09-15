package net.hifarm.lib.events
{
	import flash.events.Event;
	/**
	 * エフェクトの終了／開始用クラス
	 * ※特に必要がなければeffectendのみ
	 */
	public class EffectEvent extends Event
	{
		/**
		 * エフェクト終了
		 */
		public static const EFFECT_END:String = "su_effectEnd";
		
		public function EffectEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new EffectEvent(type, bubbles, cancelable);
		}
	}
}