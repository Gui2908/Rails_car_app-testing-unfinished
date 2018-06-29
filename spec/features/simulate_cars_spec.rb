RSpec.feature "SimulateCars", type: :feature do
  context 'Creating a car for simulating' do
    Steps 'Creating a car' do
      Given 'I am on the landing page' do
        visit '/'
      end
      When 'I fill in the car make and model year' do
        fill_in 'make', with: 'DeLorean'
        fill_in 'model', with: '1985'
      end
      And 'I submit the information' do
        click_button 'Start Simulator'
      end
      Then "I can see the car's info" do
        expect(page).to have_content('The car make is DeLorean')
        expect(page).to have_content('The car model is 1985')
      end
      And 'I can see the speed of the car' do
        expect(page).to have_content('The car speed is 0')
      end
    end
  end
end

fhdjklfd 
# Hello github. don't mess with me!
