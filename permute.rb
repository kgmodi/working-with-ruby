#!/usr/bin/env ruby
# Author: Kunal Modi
# 01/03/2011
# Permute letters and produce sequences.
# For example: ['a','b','c'] will produce 
# abc,acb,bca,bac,cba,cab
# It will produce the same results for ['a','b','c','c'] and ['a','b','c']

@global = ['a','b','c','d']
def permute available,used
	if available.size == 1
		puts used.join + available.pop
	else
		available.each{|char|
			temp_used = Array.new(used)
			temp_used.push char
			new_available = @global - temp_used
			permute new_available,temp_used
		}
	end
end

available = @global
# call to permute
permute available,[]

