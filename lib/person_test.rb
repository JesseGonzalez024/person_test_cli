require_relative "./person_test/version"
require_relative './person_test/cli'

# this file wokrs as an evironment file, in which the person_test requires this file (lib/person_test) and this page afterwards 'requires all other dependesies like CLI.rb class and'
# direclty connected and required by bin/person_test
# bin/person_test will first run and requires THIS file as the environment file, which connects to all other methods.