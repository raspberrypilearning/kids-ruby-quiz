## Asking questions and working with user input

A quiz isn't much fun without questions, but once we add some how do we know if the player has answered them correctly?

In programming you can compare an answer given by the player to the correct answer; until the player's answer is correct they cannot progress through the quiz. In Ruby you can repeat a sequence, or loop, until a certain condition is met. In this case you ask a question to the user and give them three possible answers, labelled A, B, and C. 

- Underneath your code so far, type the following which will continue to loop until the player chooses **A**:

  ```ruby
  until answer == "A"
  ```

- As you have set the answer condition, now you must create the questions with more `alert`s. You will see an **\n** in the question text which is an instruction to create a new line underneath, similar to when you press Enter on your keyboard.

  ```ruby
    alert "Question 1 - Where does Father Christmas / Santa Claus live?\nA: North Pole. B: Santa Monica. C: Cambridge"
  ```
 
- You now need to capture the players answer; to do that use `ask` to capture their answer and store it as a variable called `answer`. You'll remember that we created this variable at the start of the quiz with a blank value inside. You did this so that the program would progress. If you didn't do this, the quiz would stop before it asked the first question.
 
  ```ruby
    answer = ask "What is your answer?"
  ```
 
- Now you need to compare the answer given against the correct answer, using an **if** statement. An if statement is conditional: if the condition is met an action is taken.
 
 In this quiz you ask 'if the answer given by the user is not the same as "A"' using this line of code:
 
  ```ruby
    if answer != "A"
  ```
 
- So if the answer given by the player is not the same as the answer that we expected, then an alert is created informing the player that their answer is wrong and that they should try again:
 
  ```ruby
      alert "I'm sorry that's the wrong answer, try again"
    end
  end
  ```

- If the player answers correctly, they will skip past the previous loop and will carry on from this point. Create a new `alert` that congratulates the player on their correct answer. Next, increase their score by one point and tell the player their current score. Finally, reset the `answer` variable, ready for the next question.

  ```ruby
  alert "Correct - Well done!!!"
  score = score + 1
  alert "Your score is " + score.to_s
  answer = " "
  ```
- Save your file by clicking on the **Save** button and name your file `Quiz.rb`. Then click **Run** to test to see if it works.

  ![Image of ruby quiz code for one question](images/question1.png)

