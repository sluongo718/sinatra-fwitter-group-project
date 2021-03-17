class User < ActiveRecord::Base
  has_secure_password
  has_many :tweets

  def slug
    slug_name = self.username.downcase.scan(/[a-z0-9]*/).reject! {|i| i.empty?}
    slug_name.join("-")
  end

  def self.find_by_slug(slug)
    self.all.find {|object| object.slug == slug}
  end

end
