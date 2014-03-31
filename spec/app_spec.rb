require 'capybara/rspec'
require 'spec_helper'
require_relative '../app'

Capybara.app = App

feature "Products App" do
  scenario "user visits homepage" do
    visit '/'
    expect(page).to have_content("Welcome")
  end
end