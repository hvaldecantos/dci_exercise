require './show_object_context'

module Reporter
  include ContextAccessor
  def list_objects
    self.content.keys.each{|id| ShowObjectContext::execute(self, id) }
  end
end
