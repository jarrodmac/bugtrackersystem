package com.creativecontrol.events {
	
	
	import flash.events.Event;
	
	/* This class is for all Bug events that will happen.  The XML Data Typed variable 'bug', stores in memory, the current bug associated
	the event.  When a new instance of this class is created, or an 'BugEvent' Event is dispatched, listened for and handled,
	the new BugEvent is assigned the passed in error to the error property (as you can see in the Constructor below) */

	public class EventError extends Event {
		
		
		   public static const CREATE_ERROR:String =  "createError";
		
		   public var error:XML;
		   
		   
		  
 		public function EventBug(type:String, error:XML) {	
			
			super(type);
			this.error = error;
			
	
 		}
	}
}

