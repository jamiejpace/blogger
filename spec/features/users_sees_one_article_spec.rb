require 'rails_helper'

RSpec.describe 'user sees one article' do
  describe 'they link from the articles index' do
    it 'display info for one article' do
      article_1 = Article.create!(title: "title 1", body: "blah blah blah")

      visit articles_path

      click_link article_1.title

      expect(current_path).to eq(article_path(article_1))
      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)
    end
  end
end
