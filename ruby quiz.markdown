# Creating your own quiz using Kids Ruby

Ruby is an easy to learn language that was created in the late 1990s by Yukihiro "Matz" Matsumoto as a general purpose programming language. In fact Ruby is the language that is used to create music in Sonic Pi. In this tutorial we will create a quiz using a special application called Kids Ruby.

##Requirements
As well as a Raspberry Pi with an SD card loaded with Raspbian, you'll also need:
###Hardware
- Keyboard
- Mouse
- Screen

###Software
- A copy of Kids Ruby

To use Ruby on your Raspberry Pi we will need to install a special version called "Kids Ruby". This version is ideally suited for this project and it can be installed really quickly.
To install Kids Ruby on your Raspberry Pi you will need to open a terminal, you can do this by double left clicking on the LXTerminal icon that is on your desktop.

To download the file for installation on your Raspberry Pi type the following into the terminal

```Bash
wget https://s3.amazonaws.com/kidsruby/raspbian/kidsruby-1.3.2-armv6l.deb
```
Once downloaded keep the terminal window open and type in the following
```Bash
sudo dpkg -i kidsruby-1.3.2-armv6l.deb
```
![Image of the LXTerminal running the installation command](images/1.png)

This will install Kids Ruby on to your Raspberry Pi. Once it has been installed it will be available via the Programming menu.

![Image of the Raspberry Pi desktop highlighting the location of the Kids Ruby application](images/2.png)

Launch the Kids Ruby application by selecting it from the menu, in a few seconds the application will be ready to use.

![Image of Kids Ruby ready to use](images/4.png)

##Coding our Quiz
With the application installed now we can create our quiz game.

###Creating the sequence
Our quiz is split into three sections of code

- An introduction
- Question 1
- Game Over & Final Score

So let's step through each of these sections and understand how they work.
###Section 1: Introduction
In the introduction we first create a variable.

*Variable: A variable is a container into which we can store data. Think of it as an empty box, we can put anything inside of it and then name it for later use.*

In the introduction we create a variable called *answer* and we store a blank value inside of it. We we cover why we do this later in the project.

```Ruby
answer = " "
```
Our attention now turns to welcoming the player. We use *alert* to create a pop up box that welcomes the player to the game.

```Ruby
alert "Welcome to the Hour of Code Quiz"
```
Next we create a new variable called *name* and in there we store the answer to a question that we *ask* the player, that question being "What is your name?"

```Ruby
name = ask "What is your name?"
```
For the next line of our quiz we greet the player by their name, which has has been saved as the variable *name*. But we do something rather clever with this, we use *alert* to create another pop up box that joins "Hello " and the players name together. This is called concatenation.

*Concatenation: Concatenation is the operation of joining character strings end-to-end. For example, the concatenation of "snow" and "ball" is "snowball".*

```Ruby
alert "Hello " + name
```
Next we create a new variable called *score* which will contain the players score. The initial value stored is zero, which is a number, to be exact it is an integer.

*Integer: Is a number that can be written without a decimal place, such as 1, 5 and 9.

```Ruby
score = 0
```
The last part of our introduction is another *alert* advising the player of their score, which at the start of the game is always zero. You can see that we are again using *concatenation* to join "Your score is " to their actual score. But can you see that score is a little different?
Concatenation can only join *strings* together and our score is an *integer* so the two cannot be joined. To join them together we must temporarily alter score to become a *string* and this is done via *score.to_s*.

```Ruby
alert "Your score is " + score.to_s
```
###Section 2: Questions

```Ruby
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
```
## Licence

Unless otherwise specified, everything in this repository is covered by the following licence:

[![Creative Commons Attribution 4.0 International Licence](http://i.creativecommons.org/l/by-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-sa/4.0/)
