class Post
  attr_accessor :title, :description, :user, :comments, :id
  @@posts = []

  def self.count
    @@posts.count
  end

  def self.all
    @@posts
  end

  def self.find(id)
    @@posts.find { |post| post.id == id }
  end

  def self.find_by(attribute, value)
    return [] unless value
    @@posts.find_all { |post| post.send(attribute) == value }
  end

  def save
    validates_presence_of_user
    @id = @@posts.count + 1
    @@posts << self
  end

  def destroy
    @@posts.delete(self)
  end

  private
  def validates_presence_of_user
    raise "Invalid value for user" if user.nil? || user.id.nil?
  end
end