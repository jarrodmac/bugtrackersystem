package com.creativecontrol.events {
	
	
	import flash.events.Event;
	
	/* This class is for all error events that will happen.  The XML Data Typed variable 'error', stores in memory, the current error associated
	the event.  When a new instance of this class is created, or an 'EventError' Event is dispatched, listened for and handled,
	the new EventError is assigned the passed in error to the error property (as you can see in the Constructor below) */

	public class EventRepository extends Event {
		
		
		   public static const CREATE_REPOSITORY:String =  "createRepository";
		
		   public static const UPDATE_REPOSITORY:String = "updateRepository";

           public static const DELETE_REPOSITORY:String = "deleteRepository";
		
		
		
		   public var repository:XML;
		   
		   
		/** repository - constructor function for the Eventrepository class
				@ type::String - 1st input parameter for repository class's constructor function
				@ repository::XML - 2nd input parameter for repository class's constructor function
				@ type - overrides Super class's protected value
		**/
		
		
 		public function EventRepository(type:String, repository:XML) {	
			
			super(type);
			this.repository = repository;
			
	
 		}
	}
}

