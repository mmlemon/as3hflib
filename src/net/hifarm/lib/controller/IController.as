package net.hifarm.lib.controller
{
	import flash.display.Scene;
	import flash.events.Event;
	
	import net.hifarm.lib.events.SceneEvent;
	import net.hifarm.lib.events.TransitionEvent;
	
	/**
	 * コントローラー用interface
	 */
	public interface IController
	{
		/**
		 * 画面を表示する
		 */
		function show():void;
		/**
		 * 画面を非表示にする
		 */
		function hide():void;
		/**
		 * 表示処理が完了したときに呼ばれる
		 */
		function showComplete(event:SceneEvent):void;
		/**
		 * 非表示処理が完了したときに呼ばれる
		 */
		function hideComplete(event:SceneEvent):void;
		/**
		 * viewを切り替える
		 * @param _nextId 次のview用ID
		 */
		function transView(_nextId:String):void;
		/**
		 * viewの遷移が完了したときに呼ばれる
		 */
		function transComplete(event:TransitionEvent):void;
	}
}