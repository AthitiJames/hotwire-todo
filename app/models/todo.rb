class Todo < ApplicationRecord
    validates_presence_of :name
    enum status: {
        incomplete: 0,
        complete: 1
    }

    after_create_commit { broadcast_prepend_later_to 'todos', target: 'todos-list' }
    after_update_commit { broadcast_replace_later_to 'todos' }
    after_destroy_commit { broadcast_remove_to 'todos' }

end
