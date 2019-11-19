# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

def hello_world
  if params[:lang] == 'es'
    render html:'Hola Mundo'
  elsif params[:lang] == 'de'
    render html: 'Hallo Welt'
  else
    render html: 'Hello World'
  end
end

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

def assign_grade
  if params[:num].to_i >= 90
    render html: 'A'
  elsif params[:num].to_i >= 80
    render html: 'B'
  elsif params[:num].to_i >= 70
    render html: 'C'
  elsif params[:num].to_i >= 60
    render html: 'D'
  else
    render html: 'F'
  end
end

# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.

def assign_grade
  if params[:num].to_i > 100
    render html: 'Grade is above 100'
  elsif params[:num].to_i < 0
    render html: 'Grade is below 0'
  elsif params[:num].to_i >= 90
    render html: 'A'
  elsif params[:num].to_i >= 80
    render html: 'B'
  elsif params[:num].to_i >= 70
    render html: 'C'
  elsif params[:num].to_i >= 60
    render html: 'D'
  else
    render html: 'F'
  end
end

# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluralizer
  @number = params[:num].to_i
  @noun = params[:noun]
  if @number > 1
    @noun = @noun + 's'
  end
  render "pluralizer.html.erb"
end

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.

def pluralizer
  @number = params[:num].to_i
  @noun = params[:noun]
  if @noun.downcase == 'moose' && @number >1
    @noun = 'moose'
  elsif @noun.downcase == 'goose' && @number >1
    @noun = 'geese'
  elsif @noun.downcase == 'child' && @number >1
    @noun = 'children'
  elsif @number > 1
    @noun = @noun + 's'
  end
  render "pluralizer.html.erb"
end
