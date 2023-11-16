# 1. First create movie model w/
# a title (String), an overview (Text), a poster url (String) and a rating (Float/integer)
# rails generate model title:string ....

# 2. Secondly create list model w/
# a name

# 3. Thirdly create bookmark model w/ a reference to both, the list and the movie
# comment (Text) and references list:references movie:references

# 4. rails g model Product name:string available:boolean user:references

# 5. Check your migrations files
# If everything is alright, you may run migrations w/ "rails db:migrate"

# 6. Generate a Lists controller and Bookmarks controller

rails g model movie title:string overview:text url:string rating:integer
rails g model list name:string
rails g model bookmark list:references movie:references

 "" < Controller
rails g BookmarksController


Movies title:string overview:text url:string rating:integer
Lists name:string

Bookmark belongs_to :Movies :List
belongs_to :bookmarkable, polymorphic: true

rails generate migration AddForeignKeysToBookmarks user:references bookmarkable:references{polymorphic}
