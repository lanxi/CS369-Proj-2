
require 'spec_helper'

describe "StaticPages" do
  
describe "Home page" do

    it "should have the content 'Project 2'" do
      visit '/static_pages/home'
      expect(page).to have_content('Project 2')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("CS369 Project 2")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
end
 
describe "Faq page" do

    it "should have the content 'Faq'" do
      visit '/static_pages/faq'
      expect(page).to have_content('Faq')
    end
it "should have the title 'Faq'" do
      visit '/static_pages/faq'
      expect(page).to have_title("CS369 Project 2 | Faq")
    end
  end

describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("CS369 Project 2 | About")
    end
  end
describe "Blog page" do

    it "should have the content 'Blog'" do
      visit '/static_pages/blog'
      expect(page).to have_content('Blog')
    end
  it "should have the title 'Blog'" do
      visit '/static_pages/blog'
      expect(page).to have_title("CS369 Project 2 | Blog")
    end
  end
end
