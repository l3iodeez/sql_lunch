# frozen_string_literal: true

module Examples
  def self.print_titles
    Author.all.each do |a|
      a.books.each do |b|
        puts b.title
      end
    end
  end

  def self.print_titles_includes
    Author.all.includes(:books).each do |a|
      a.books.each do |b|
        puts b.title
      end
    end
  end

  def self.joins_titles
    Author.all.includes(:books).where(books: {clicks: 10}).each do |a|
      a.books.each do |b|
        puts b.title
      end
    end
  end

  def self.joins_count
    Author.all.includes(:books).where(books: {clicks: 10}).each do |a|
      puts a.books.count
    end
  end

  def self.joins_size
    Author.all.includes(:books).where(books: {clicks: 10}).each do |a|
      puts a.books.distinct.size
    end
  end

  def self.includes_breaks_down
    Author.all.includes(:books).each do |a|
      puts a.books.count
    end
  end

  def self.includes_works
    Author.all.includes(:books).each do |a|
      puts a.books.to_a.count
    end
  end

  def self.click_sum
    Author.all.includes(:books).each do |a|
      puts a.books.sum('books.clicks')
    end
  end
end
