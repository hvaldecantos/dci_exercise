require './container'
require './store_object_context'
require './show_object_context'

container = Container.new

StoreObjectContext::execute container, 1, "string"
ShowObjectContext::execute container, 1
