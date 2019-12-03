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



