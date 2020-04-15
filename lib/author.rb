class Author
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name=name
    @post_count=post_count
    @@all << self
  end
  
  def add_post(post_title)
    post_title.author = self
  end
  
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
  end
  
  def self.post_count
    @@post_count
  end
  
  def posts
    Post.all.select{|post| post.author == self}
  end
  
end