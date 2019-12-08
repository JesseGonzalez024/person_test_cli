require 'open-uri'
require 'nokogiri'
require 'pry'

require_relative './person_test/scraper'
require_relative './person_test/question'
require_relative './person_test/game'
require_relative './person_test/cli'







# This file works as an evironment file. The person_test(executable) requires 
# FIRST this file(enviorment) therefore first loading all the files and then afterwards running the commans in the executable file. 
# The purpose of this page is to require all the dependecy files (cli/scraper/question)


# This file(enviorment) is directly connected to lib/person_test (executable) file.
