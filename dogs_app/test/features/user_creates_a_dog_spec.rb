require 'rails_helper'

class UserCreatesDogTest < ActionDispatch::IntegrationTest

  test "user can create a dog" do
    visit new_dog_path

    fill_in "Name", with: "Gus Gus"
    fill_in "Color", with: "tan"

    click_button "Create Dog"

    assert_equal dog_path(Dog.last.id), current_path
  end
