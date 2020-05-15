require "application_system_test_case"

class CourseModulesTest < ApplicationSystemTestCase
  setup do
    @course_module = course_modules(:one)
  end

  test "visiting the index" do
    visit course_modules_url
    assert_selector "h1", text: "Course Modules"
  end

  test "creating a Course module" do
    visit course_modules_url
    click_on "New Course Module"

    fill_in "Credits", with: @course_module.credits
    fill_in "Description", with: @course_module.description
    fill_in "Name", with: @course_module.name
    click_on "Create Course module"

    assert_text "Course module was successfully created"
    click_on "Back"
  end

  test "updating a Course module" do
    visit course_modules_url
    click_on "Edit", match: :first

    fill_in "Credits", with: @course_module.credits
    fill_in "Description", with: @course_module.description
    fill_in "Name", with: @course_module.name
    click_on "Update Course module"

    assert_text "Course module was successfully updated"
    click_on "Back"
  end

  test "destroying a Course module" do
    visit course_modules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course module was successfully destroyed"
  end
end
