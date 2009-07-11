package com.creativecontrol.events
{


	import flash.events.Event;

	
	/**  CreateAccountEvent extends the base class for every eevnt in Actionscript.
		   @ Event - ACCOUNT_CREATE (a constant value)
    **/
	
	
	public class CreateAccountEvent extends Event
	{
	
		public static const ACCOUNT_CREATE:String = "accountCreate";
		
		public var user:XML;
		
		
		
		/** CreateAccountEvent Constructor Function
			  
			  @input_parameters = XML - user
			  @ 1st, the superclass constructor is called with the name of the Event.
			  @ 2nd, the XML that is received is used to set the user instance variable that is defined.
		
		**/
		
		public function CreateAccountEvent(user:XML)
		{
			super(ACCOUNT_CREATE);
			this.user = user;
		}
		
	}
}