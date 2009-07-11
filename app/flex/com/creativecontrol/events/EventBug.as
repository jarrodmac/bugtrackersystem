package com.creativecontrol.events {
	
	
	import flash.events.Event;
	
	/* This class is for all Bug events that will happen.  The XML Data Typed variable 'bug', stores in memory, the current bug associated
	the event.  When a new instance of this class is created, or an 'BugEvent' Event is dispatched, listened for and handled,
	the new BugEvent is assigned the passed in error to the error property (as you can see in the Constructor below) */

	public class EventBug extends Event {
		
		
		   public static const CREATE_BUG:String =  "createBug";
		
		   public var bug:XML;
		   
		   
		  
 		public function EventBug(type:String, bug:XML) {	
			
			super(type);
			this.bug = bug;
			
	
 		}
	}
}

