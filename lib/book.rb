require 'helper'

class Book
  attr_reader :title,
              :author,
              :publication_year

  def initialize(data)
    @title = data[:title]
    @author = data[:author_first_name].concat(" ", data[:author_last_name])
    @publication_year = data[:publication_date].chars.last(4).join

  end

end
