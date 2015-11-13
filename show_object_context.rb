require './context_accessor'
require './presenter'

class ShowObjectContext
  attr_reader :presenter, :id
  
  include ContextAccessor

  def self.execute(container, id)
    ShowObjectContext.new(container, id).execute
  end

  def initialize(container, id)
    @presenter = container.extend Presenter
    @id = id
  end

  def execute
    execute_in_context do
      presenter.show_object
    end
  end
end
