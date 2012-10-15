package utils
{
	import flash.display.MovieClip;
	import flash.net.SharedObject;
	import flash.system.ApplicationDomain;
	
	public class Reflection
	{
		public function Reflection()
		{
			super();
		}
		
		public static function createInstance(className:String):MovieClip
		{
			var obj:MovieClip = new (ApplicationDomain.currentDomain.getDefinition(className) as Class) as MovieClip;
			return obj;
		}
		
		public static function createClass(className:String):Class
		{
			return ApplicationDomain.currentDomain.getDefinition(className) as Class;
		}
	}
}