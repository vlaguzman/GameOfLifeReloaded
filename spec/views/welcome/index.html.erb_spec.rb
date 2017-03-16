require 'rails_helper'

RSpec.describe "welcome/index.html.erb", type: :view do

  it "should see 'Hello World!'" do
  	visit root_path
    expect(page).to have_content("Hello World!")
  end
end
