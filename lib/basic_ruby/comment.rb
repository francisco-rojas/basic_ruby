class Comment
  include Commons

  attr_accessor :user, :post, :text

  @@comments = []

  def self.collection
    @@comments
  end

  def validations
    [:validate_presence_of_user, :validate_presence_of_post]
  end

  private
  def validate_presence_of_user
    if user.nil? || !user.id
      raise 'Comments must be assigned to a user'
    end
  end

  def validate_presence_of_post
    if post.nil? || !post.id
      raise 'Comments must be assigned to a post'
    end
  end
end