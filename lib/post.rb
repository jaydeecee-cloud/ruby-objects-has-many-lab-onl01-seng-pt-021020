class Post
  @@all = []
  
  attr_accessor :title, :author

def initialize(title)
  @title = title
  @@all << self
end

def self.count


def self.all
  @@all
end

def author_name
  if author
    return author.name
  end
end
end
