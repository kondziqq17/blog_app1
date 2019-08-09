require "rails_helper"

RSpec.feature "listing Articles" do

  before do
    @article1 = Article.create!(title: "The first article", body: "Lorem ipsum dolor")
    @article2 = Article.create!(title: "The second article", body: "Lorem ipsum dolor lalala")
  end

  scenario "A user lists all articles" do
    visit "/"

    expect(page).to have_content(@article1.title)
    expect(page).to have_content(@article1.body)
    expect(page).to have_content(@article2.title)
    expect(page).to have_content(@article2.body)
    expect(page).to have_link(@article1.title)
    expect(page).to have_link(@article2.title)

    click_link "New Article"

  end

end
