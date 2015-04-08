module Blorgh
  class Post < ActiveRecord::Base
    attr_accessor :author_name
    belongs_to :author, class_name: Blorgh.author_class.to_s
    before_save :set_author
    has_many :comments, dependent: :destroy

    def summary
      "#{title}"
    end

    private
      def set_author
        self.author = Blorgh.author_class.find_or_create_by(name: author_name)
      end
  end
end
