require './container'
require './store_object_context'
require './show_object_context'
require './list_objects_context'

container = Container.new

StoreObjectContext::execute container, 1, "hello"
StoreObjectContext::execute container, 2, "world"
ShowObjectContext::execute container, 1
ListObjectsContext::execute container
