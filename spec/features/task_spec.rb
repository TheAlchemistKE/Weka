require 'rails_helper.rb'
require 'spec_helper'
# User Capybara test

describe 'Creating a Group', type: :feature do
  before :each do
    @test_user = User.create!({ name: 'Kelyn',
                                email: '234@gmail.com',
                                password: 'Kelyn@2020',
                                password_confirmation: "Kelyn@2020"})
    visit 'users/sign_in'
    fill_in 'user_email', with: @test_user.email
    fill_in 'user_password', with: @test_user.password
    click_button('Log in')
  end
  it 'Shows a list of all tasks.' do
    visit '/tasks/new'

    find('.input_field', match: :first).set('First Task')
    find('#amount').set(10)
    click_button('Create Task')

    expect(page).to have_current_path('/tasks')
  end
end