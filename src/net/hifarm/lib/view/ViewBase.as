package net.hifarm.lib.view
{
	import caurina.transitions.Tweener;
	
	import flash.display.MovieClip;
	import flash.display.Scene;
	import flash.events.Event;
	
	import net.hifarm.lib.controller.IDisposable;
	import net.hifarm.lib.events.SceneEvent;
	import net.hifarm.lib.util.TweenerType;
	/**
	 * viewの基盤クラス
	 */
	public class ViewBase extends MovieClip implements IDisposable
	{
		public function ViewBase()
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE, init, false, 0, false);
		}
		
		protected function init(event:Event=null):void
		{
			if(event!=null){
				removeEventListener(Event.ADDED_TO_STAGE, init, false);
			}
		}
		
		public function show():void
		{
			
		}
		
		protected function showComplete(event:SceneEvent):void
		{
			dispatchEvent(event);
		}
		
		public function hide():void
		{
			
		}
		
		protected function hideComplete(event:SceneEvent):void
		{
			dispatchEvent(event);
		}
		
		/**
		 * 子要素をenableにする
		 */
		public function enableAllContents():void
		{
			mouseChildren = true;
		}
		
		/**
		 * 子要素をdisableにする
		 */
		public function disableAllContents():void
		{
			mouseChildren = false;
		}
		
		public function dispose():void
		{
			var len:int = numChildren;
			for(var i:int = 0; i < len; i++)
			{
				if(getChildAt(i) is IDisposable)
				{
					(getChildAt(i) as IDisposable).dispose();
				}
			}
		}
	}
}