module Storer
  include ContextAccessor
  def store_object
    self.content.merge!({ context.id => context.object})
  end
end
