class TodoList
	
	def initialize(list)
	@list = list
	end

	def get_items
	p @list
	end

	def add_item(item)
	@list << item
	end	

	def delete_item(item)
	@list.each do |obj|
			if obj == item
				@list.delete(item)
			end
		end
	end

	def get_item(num)
		@list[num]
	end

end


#listy = TodoList.new("do the dishes", "mow the lawn")
#listy.get_items
