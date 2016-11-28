require 'rails_helper'

feature 'classroom crud actions', js: true do
  let(:classroom) {FactoryGirl.create(:classroom)}

  scenario 'create a classroom' do
    visit root_path
    new_classroom_text = 'First Classroom'
    new_classroom_code = '1'
    page.find_link('new_classroom_link').click
    fill_in('classroom_name', :with => new_classroom_text)
    fill_in('classroom_code', :with => new_classroom_code)
    page.find_button('create_classroom_button').click
    expect(current_path).to eq(classrooms_path)
    expect(page).to have_content(new_classroom_text)
    expect(page).to have_content(new_classroom_code)
  end

  context "seeded classroom" do
    before(:each) do
      classroom
      visit root_path
    end

    scenario 'update a classroom' do
      edited_name = 'Edited Name'
      page.find_button('Edit').click
      fill_in('classroom_name', :with => edited_name)
      fill_in('classroom_code', :with => 'Edited Code')
      page.find_button('create_classroom_button').click
      expect(page).to have_content(edited_name)
      expect(page).to_not have_content(classroom.name)
    end
  
    scenario 'show a classroom' do
      page.find_link(classroom.name).click
      expect(page).to have_content("#{classroom.name} - #{classroom.code}")
    end
  
    scenario 'destroy a classroom' do
      expect(page).to_not have_selector('#no_classrooms_header')
      page.find_button('Destroy').click
      accept_confirm
      expect(page.find('#no_classrooms_header')).to_not eq(nil)
    end
  end
end







