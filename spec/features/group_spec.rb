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
  it 'Display message when creating a post' do
    visit '/groups/new'

    find('.input_field').set('First Group')
    click_button('Create Group')

    expect(page).to have_current_path('/groups')
  end
end