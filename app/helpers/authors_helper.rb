module AuthorsHelper

def add_address_link(name, form)
    p "Entered"    
    p name
    link_to_function name do |page|
      p page
      task = render(:partial => name, :locals => { :pf => form, :address => Address.new })
    p task
    end
end

end
