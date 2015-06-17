class Article < ActiveRecord::Base
  # @article.save returns boolean of whether article passes validation
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates_exclusion_of :title, :in => %w(nah notthis), message: "is prohibited"
end
