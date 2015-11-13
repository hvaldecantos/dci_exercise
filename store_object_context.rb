require './context_accessor'
require './storer'

class StoreObjectContext
  attr_reader :storer, :id, :object
  
  include ContextAccessor

  def self.execute(container, id, object)
    StoreObjectContext.new(container, id, object).execute
  end

  def initialize(container, id, object)
    @storer = container.extend Storer
    @id = id
    @object = object
  end

  def execute
    execute_in_context do
      storer.store_object
    end
  end
end
