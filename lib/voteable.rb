def self.included(base)
	base.send(:include, InstanceMethods)
	base.extend ClassMethods
	base.class_email do 
		my_class_method
	end
end

=begin
module Voteable
	module InstanceMethods

		def up_votes
	  	self.votes.where(vote: true).size
	  end

	  def down_votes
	  	self.votes.where(vote: false).size
	  end

	  def total_votes
	  	self.up_votes - self.down_votes
	  end

	end
end
=end
