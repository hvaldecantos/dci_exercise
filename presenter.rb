module Presenter
  include ContextAccessor
  def show_object
    p self.content[context.id]
  end
end
