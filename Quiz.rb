# Type in your code just below here
answer = " "

alert "Welcome to the Hour of Code Quiz"
name = ask "What is your name?"
alert "Hello " + name
score = 0
alert "Your score is " + score.to_s
until answer == "A"
  alert "Question 1 - Where does Father Christmas / Santa Claus live?"
  alert "A: North Pole. B: Santa Monica. C: Cambridge"
  answer = ask "What is your answer?"
  if answer != "A"
    alert "I'm sorry that's the wrong answer, try again"
  end
end
alert "Correct - Well done!!!"
score = score + 1
alert "Your score is " + score.to_s
answer = " "
until answer == "A"
  alert "Question 2 - Which reindeer has a bright red nose?"
  alert "A: Rudolph. B: Prancer. C: Vixen"
  answer = ask "What is your answer?"
  if answer != "A"
    alert "I'm sorry that's the wrong answer, try again"
  end
end
alert "Correct - Well done!!!"
score = score + 1
alert "Your score is " + score.to_s
answer = " "
until answer == "C"
  alert "Question 3 - What helps reindeer to fly?"
  alert "A: Burgers. B: Chicken. C: Magic dust"
  answer = ask "What is your answer?"
  if answer != "C"
    alert "I'm sorry that's the wrong answer, try again"
  end
end
alert "Correct - Well done!!!"
score = score + 1
alert "Your score is " + score.to_s
answer = " "
