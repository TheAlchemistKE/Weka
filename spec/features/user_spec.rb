require 'rails_helper.rb'
require 'spec_helper'
# User Capybara test

describe 'User Signup and Login', type: :feature do
  before :each do
    @test_user = User.create!({ name: 'Kelyn',
                                email: '234@gmail.com',
                                password: 'Kelyn@2020',
                                password_confirmation: 'Kelyn@2020' })
  end
  it 'Check that you get redirected to /profile.' do
    visit '/users/sign_up'

    fill_in 'user_name', with: 'Kelyn'
    fill_in 'user_email', with: 'kelyn@gmail.com'
    fill_in 'user_password', with: 'Kelyn@2929'
    fill_in 'user_password_confirmation', with: 'Kelyn@2929 '

    click_button('Sign up')

    expect(page).to have_current_path('/user')
  end
  it 'Redirects to the /profile page.' do
    visit '/users/sign_in'

    fill_in 'user_email', with: @test_user.email
    fill_in 'user_password', with: @test_user.password

    click_button('Log in')

    expect(page).to have_current_path('/user')
  end
  it 'Signs out and redirects to root path' do
    visit '/users/sign_in'

    fill_in 'user_email', with: @test_user.email
    fill_in 'user_password', with: @test_user.password
    click_button('Log in')
    first(:link, 'Logout').click

    expect(page).to have_current_path('/')
  end
end
