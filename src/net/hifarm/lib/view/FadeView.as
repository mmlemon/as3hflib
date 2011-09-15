package net.hifarm.lib.view
{
	import net.hifarm.lib.controller.IDisposable;
	import net.hifarm.lib.effects.Fade;
	import net.hifarm.lib.events.EffectEvent;
	import net.hifarm.lib.events.SceneEvent;
	import net.hifarm.lib.view.ViewBase;
	
	/**
	 * フェードイン／アウトを実装済みのViewクラス
	 */
	public class FadeView extends ViewBase implements IDisposable
	{
		
		public var duration:Number = 1;
		
		public function FadeView()
		{
			super();
		}
		
		override public function show():void
		{
			var fade:Fade = new Fade();
			fade.setup({target: this, type: "in"});
			fade.addEventListener(EffectEvent.EFFECT_END, showEffectEnd, false, 0, false);
			fade.duration = duration;
			fade.start();
		}
		
		protected function showEffectEnd(event:EffectEvent):void
		{
			(event.target as Fade).removeEventListener(EffectEvent.EFFECT_END, showEffectEnd, false);
			showComplete(new SceneEvent(SceneEvent.VIEW_DID_APPEAR));
		}
		
		override public function hide():void
		{
			var fade:Fade = new Fade();
			fade.setup({target: this, type: "out"});
			fade.addEventListener(EffectEvent.EFFECT_END, hideEffectEnd, false, 0, false);
			fade.duration = duration;
			fade.start();
		}
		
		protected function hideEffectEnd(event:EffectEvent):void
		{
			(event.target as Fade).removeEventListener(EffectEvent.EFFECT_END, hideEffectEnd, false);
			hideComplete(new SceneEvent(SceneEvent.VIEW_DID_DISAPPEAR));
		}
		
	}
}