package net.hifarm.lib
{
	import flash.errors.IllegalOperationError;

	/**
	 * 本フレームワークのバージョンを表す
	 */
	public class Version
	{
		public static const VERSION:String = "0.1.0";
		
		public function Version()
		{
			throw new IllegalOperationError("インスタンス化しないで下さい");
		}
	}
}