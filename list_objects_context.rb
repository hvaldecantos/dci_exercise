require './context_accessor'
require './reporter'

class ListObjectsContext
  attr_reader :reporter
  
  include ContextAccessor

  def self.execute(container)
    ListObjectsContext.new(container).execute
  end

  def initialize(container)
    @reporter = container.extend Reporter
  end

  def execute
    execute_in_context do
      reporter.list_objects
    end
  end
end
