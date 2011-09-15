package net.hifarm.lib.effects
{
	import caurina.transitions.Tweener;
	
	import net.hifarm.lib.events.EffectEvent;
	import net.hifarm.lib.util.TweenerType;
	
	/**
	 * フェードイン／アウトを実現するエフェクトクラス
	 */
	public class Fade extends EffectBase
	{
		public var duration:Number;
		public function Fade()
		{
			super();
		}
		
		override public function setup(_data:Object):void
		{
			super.setup(_data);
			duration = 1;
		}
		
		override public function start():void
		{
			var toAlpha:Number = 0;
			if(m_data.type == "in")
			{
				toAlpha = 1;
			}
			else
			{
				toAlpha = 0;
			}
			Tweener.addTween(m_data.target, {alpha: toAlpha, transition: TweenerType.EASE_OUT_EXPO, time: duration, onComplete: effectEnd});
		}
		
		override public function effectEnd():void
		{
			var evt:EffectEvent = new EffectEvent(EffectEvent.EFFECT_END);
			dispatchEvent(evt);
		}
	}
}