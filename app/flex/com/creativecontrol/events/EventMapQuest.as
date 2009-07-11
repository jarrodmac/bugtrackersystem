package com.creativecontrol.events {
	
	
	import flash.events.Event;
	
	/* This class is for all error events that will happen.  The XML Data Typed variable 'error', stores in memory, the current error associated
	the event.  When a new instance of this class is created, or an 'EventError' Event is dispatched, listened for and handled,
	the new EventError is assigned the passed in error to the error property (as you can see in the Constructor below) */

	public class FixedError extends Event {
		
		
		   public static const CREATE_FIXEDERROR:String =  "createFixedError";
		
		   public var fixederror:XML;
		   
		   
		/** FixedError - constructor function for the EventFixedError class
				@ type::String - 1st input parameter for FixedError class's constructor function
				@ fixederror::XML - 2nd input parameter for FixedError class's constructor function
				@ type - overrides Super class's protected value
		**/
		
		
 		public function FixedError(type:String, fixederror:XML) {	
			
			super(type);
			this.fixederror = fixederror;
			
	
 		}
	}
}

