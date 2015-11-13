require './container'
require './store_object_context'

container = Container.new

StoreObjectContext::execute container, 1, "string"
