require 'capybara/rspec'
require 'spec_helper'
require_relative '../app'

Capybara.app = App

feature "Products App" do
  scenario "user adds a product" do
    visit '/'
    expect(page).to have_content("Welcome")

    click_on "Add a Product"
    fill_in 'product_name', with: 'product 1'
    click_on "Create Product"
    expect(page).to have_content("product 1")
  end
end