module ActiveSupport #:nodoc:
module CoreExtensions #:nodoc:
module Hash #:nodoc:
module Conversions

			# force :dasherize to be false, since it should never 
			# be true. 
			
			unless method_defined? :old_to_xml
			alias_method :old_to_xml, :to_xml
			def to_xml(options = {})
			options.merge!(:dasherize => false)
			old_to_xml(options)
			end
		end
	end
end


module Array #:nodoc:
module Conversions

		# force :dasherize to be false, it should never
		# be true.
		
		unless method_defined? :old_to_xml
		alias_method :old_to_xml, :to_xml
		def to_xml(options = {})
		options.merge!(:dasherize => false)
		old_to_xml(options)
		end
	end
end
end
end
end

module ActiveRecord #:nodoc:
module Serialization

				# force :dasherize to be false

				unless method_defined? :old_to_xml
				alias_method :old_to_xml, :to_xml
				def to_xml(options = {})
				options.merge!(:dasherize => false)
				old_to_xml(options)
				end
			end
		end
	end


# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  
  include AuthenticatedSystem
  before_filter :login_required

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery 
  # :secret => '951cdb3e03718e484e713c143b8e161e'
end


