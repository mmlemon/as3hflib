package net.hifarm.lib.effects
{
	import caurina.transitions.Tweener;
	
	import flash.events.EventDispatcher;
	
	import net.hifarm.lib.events.EffectEvent;
	
	/**
	 * 画面遷移やエフェクトで使われる基盤クラス
	 */
	public class EffectBase extends EventDispatcher
	{
		/**
		 * エフェクトで使うためのデータ
		 */
		protected var m_data:Object;
		
		public function EffectBase()
		{
		}
		/**
		 * 引数をもとにエフェクトを設定する
		 * @param _data エフェクトで使うデータ
		 */
		public function setup(_data:Object):void
		{
			m_data = _data;
		}
		
		/**
		 * エフェクトを開始する
		 */
		public function start():void
		{
		}
		/**
		 * エフェクトが終了したときに呼ばれる
		 * ※tweenerのonCompleteで呼ばれる想定
		 */
		public function effectEnd():void
		{

		}
		
	}
}