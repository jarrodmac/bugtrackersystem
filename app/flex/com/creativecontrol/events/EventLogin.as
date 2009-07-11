package com.creativecontrol.events
{

	import flash.events.Event;

	
	/** EventLogin::public - class
		  @ LOGIN  - String constant
		  @ user - XML - declaration(class level)
		  @ 
	**/

	
	public class EventLogin extends Event
	{
		   public static const LOGIN:String =  "login";
		
		   public var user:XML;
	

			/** EventLogin::public - function
				  @ user::XML(public) - function constructor input
				  Note:  The base class's function constructor is being overwritten.
			**/
				  
				  
		public function EventLogin(user:XML)
		{	
			
			super(LOGIN);
			this.user = user;
		}
		
	}
}