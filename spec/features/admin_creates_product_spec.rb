require 'spec_helper'

feature 'admin creates products', %Q{
  As an admin
  I want to create products
  So that they can be listed in categories
} do
  # Acceptance Criteria
  # * I must specify a product's category
  # * I must specify a name for a product's category
  # * I must specify a name for a product
  # * I can see a listing of products per category

  scenario 'create a valid product' do
    # visit '/admin/categories/new'
    visit new_admin_category_path
    fill_in 'Name', with: 'Footy Socks'
    click_button 'Create Category'

    visit new_admin_product_path
    fill_in 'Name', with: 'Rainbow Footy Socks'
    select 'Footy Socks', from: 'Category'
    click_button 'Create Product'

    another_product = FactoryGirl.create(:product)
    visit category_products_path(Category.where(name: 'Footy Socks').first)
    expect(page).to have_content('Rainbow Footy Socks')
    expect(page).to_not have_content(another_product.name)
  end

  scenario 'create an invalid category'

  scenario 'create an invalid product'
end
