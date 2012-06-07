module DynamicTableHelper

  def createTable(object) 
  	tablehead = '<thead>'
  	object.attribute.all.each do |attribute|
  	  tablehead += "<th> #{attribute[0]} </th>"
  	end
  	tablehead += '</thead>'

  	tablebody = '<tbody>'
  	object.attribute.all.each do |attribute|
  	  tablebody += "<td> #{attribute[1]} </td>"
  	end
  	tablebody += '</tbody>'
  
	table = '<table class="table table-bordered">' + tablehead + tablebody + '</table>'   
  end

end