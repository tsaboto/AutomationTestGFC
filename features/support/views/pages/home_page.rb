class HomePage
    include Capybara::DSL

    def open
        visit "http://qainterview.pythonanywhere.com/"
    end

    def input_value(value)
        find("#number").set value
    end

    def click
        click_button #getFactorial
    end 
end