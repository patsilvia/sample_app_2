require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App"}

	describe "Home Page" do
		it "should have the content 'sample app'" do
			visit '/static_pages/home'
			expect(page).to have_content('Sample App')
		end

		it "should have the right title 'Home'" do
			visit '/static_pages/home'
			expect(page).to have_title("#{base_title}")
		end
	end

	describe "Help Page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end

		it "should have thte right title 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_title("#{base_title} | Help")
		end
	end

	describe "About Page" do
		it "should have the content 'About'" do
			visit '/static_pages/about'
			expect(page).to have_content('About')
		end

		it "should have the right title 'About'" do
			visit '/static_pages/about'
			expect(page).to have_title("#{base_title} | About")
		end
	end

	describe "Contact Page" do
		it "should have the content 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact')
		end

		it "should have the right title 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_title("#{base_title} | Contact")
		end
	end

end
