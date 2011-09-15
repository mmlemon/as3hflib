package net.hifarm.lib.controller
{
	import flash.display.DisplayObjectContainer;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import net.hifarm.lib.events.SceneEvent;
	import net.hifarm.lib.events.TransitionEvent;
	import net.hifarm.lib.view.ViewBase;
	/**
	 * コントローラーの基盤クラス。
	 * ※基本的にCocoaの影響を受けているので、ViewControllerという名前になっています。
	 */
	public class ViewControllerBase extends EventDispatcher implements IController, IDisposable
	{
		///////////////////////////////////////
		// member variables
		///////////////////////////////////////
		/**
		 * viewの親コンテナの参照
		 */
		protected var m_containerRef:DisplayObjectContainer;
		/**
		 * このViewControllerに対応するView
		 */
		protected var m_view:ViewBase;
		/**
		 * このViewControllerが保持するViewController
		 * ※実際は複数持つ場合があります
		 */
		protected var m_viewController:ViewControllerBase;
		/**
		 * 現在のview用ID
		 */
		protected var m_currentId:String;
		
		///////////////////////////////////////
		// accessors
		///////////////////////////////////////
		/**
		 * viewの親コンテナの参照を取得する
		 * @return 親コンテナの参照
		 */
		public function get containerRef():DisplayObjectContainer
		{
			return m_containerRef;
		}
		
		/**
		 * viewの親コンテナの参照を設定する
		 * @param value 親コンテナの参照
		 */
		public function set containerRef(value:DisplayObjectContainer):void
		{
			m_containerRef = value;
		}
		
		
		///////////////////////////////////////
		// transition
		///////////////////////////////////////
		/**
		 * Viewを切り替える
		 * @param _nextId 次のView用ID
		 */
		public function transView(_nextId:String):void
		{
		}
		
		/**
		 * 遷移が完了したときに呼ばれる
		 */
		public function transComplete(event:TransitionEvent):void
		{
			
		}
		
		///////////////////////////////////////
		// main: constructor & other functions
		///////////////////////////////////////
		
		/**
		 * コンストラクタ
		 * @param _containerRef viewの親コンテナとなる参照
		 */
		public function ViewControllerBase(_containerRef:DisplayObjectContainer)
		{
			m_containerRef = _containerRef;
		}
		
		/**
		 * データを初期化する
		 * @param _data 外部から引き継がれるデータ
		 */
		public function initData(_data:Object):void
		{
			
		}
		
		/**
		 * 新しいviewの表示処理が始まる直前に呼ばれる
		 */
		protected function viewWillAppear():void
		{
			dispatchEvent(new SceneEvent(SceneEvent.VIEW_WILL_APPEAR));
		}
		/**
		 * 新しいviewの表示処理が完了したときに呼ばれる
		 */
		protected function viewDidAppear():void
		{
			dispatchEvent(new SceneEvent(SceneEvent.VIEW_DID_APPEAR));
		}
		/**
		 * viewの非表示処理が始まる直前に呼ばれる
		 */
		protected function viewWillDisappear():void
		{
			dispatchEvent(new SceneEvent(SceneEvent.VIEW_WILL_DISAPPEAR));
		}
		/**
		 * viewの非表示処理が完了したときに呼ばれる
		 */
		protected function viewDidDisappear():void
		{
			dispatchEvent(new SceneEvent(SceneEvent.VIEW_DID_DISAPPEAR));
		}
		
		///////////////////////////////////////
		// IController implementation
		///////////////////////////////////////
		
		/**
		 * viewの表示処理を開始する
		 */
		public function show():void
		{
			viewWillAppear();
		}
		/**
		 * viewを非表示処理を開始する
		 */
		public function hide():void
		{
			viewDidAppear();
		}
		/**
		 * 表示処理が完了した時に呼ばれる
		 */
		public function showComplete(event:SceneEvent):void
		{
			viewDidAppear();
		}
		/**
		 * 非表示処理が完了したときに呼ばれる
		 */
		public function hideComplete(event:SceneEvent):void
		{
			viewDidDisappear();
		}
		
		///////////////////////////////////////
		// IDisposable implementation
		///////////////////////////////////////
		/**
		 * 後処理で使う
		 */
		public function dispose():void
		{
			
		}
	}
}