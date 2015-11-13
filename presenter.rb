module Presenter
  include ContextAccessor
  def show_object
    puts "#{context.id} #{self.content[context.id].inspect}"
  end
end
