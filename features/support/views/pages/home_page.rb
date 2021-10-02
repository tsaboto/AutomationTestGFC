class HomePage
    include Capybara::DSL

    def open
        visit "http://qainterview.pythonanywhere.com/"
    end

    def input_value(number)
        find("#number").set number
    end

    def click
        click_button #getFactorial
    end 
end