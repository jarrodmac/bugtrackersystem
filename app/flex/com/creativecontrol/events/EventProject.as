package com.creativecontrol.events {
	
	
	import flash.events.Event;
	
	/* This class is for all error events that will happen.  The XML Data Typed variable 'error', stores in memory, the current error associated
	the event.  When a new instance of this class is created, or an 'EventError' Event is dispatched, listened for and handled,
	the new EventError is assigned the passed in error to the error property (as you can see in the Constructor below) */

	public class EventProject  extends Event {
		
		
		   public static const CREATE_PROJECT:String =  "createProject";
		   
		   public static const UPDATE_PROJECT:String = "updateProject";
		
		  public static const DELETE_PROJECT:String = "deleteProject";
		
		   public var project:XML;
		   
		   
		/*   The first implementation or occurrence of this Event happens in the CreatetodoComp.mxml Component  */
		  
 		public function EventProject(type:String, project:XML) {	
			
			super(type);
			this.project = project;
			
	
 		}
	}
}

