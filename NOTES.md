How to Build a CLI Gem

1. Plan your gem, imagine interface
2. Start with the project structure - google
3. Start with the entry point - the file run
4. Force that to buuld the CLI interface
5. Stub out the interface
6. Start making things real
7. Discover Objects
8. Program

CLI expecations = [
- We want the Comand line interface to initiate upon user typing: person-test,

- Welcomes User, allows user to type in name(refers user by name during the duration of test),

- User selects TV show,

- ,

- First question apears,

-

- Last question appears,

- 

- Replies user with the answer to their personality test,

- Ask to go 'again' or 'exit',

]

lib/person_test/cli.rb contains all methods and user interface 

add custom errors

upon displaying question, a board must be created with each answer. and allowing answer selection.
beacuse of potential lack of space a 'return' option should be available to return question. 

*** what is a question? **
- must contain the asking sentence
- contain 4 possible answers
- each answer storing a hidden character behind it
- each questions must collect the answer and store it to it's matching character


*** What am I scraping? **
- Questions
- Answers
- Both must be available for mass assignment, in order to let the following question and answer take it's place.

*** Answers **
# "7642" - Michael Scott
# "7643" - Dwight Schrute
# "7644" - Jim Halpert
# "7645" - Kelly Kapoor
# "7646" - Meredith Palmer
# "7647" - Angela Martin


