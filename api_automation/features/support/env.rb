# frozen_string_literal: true

require 'cucumber'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'faker'
require 'rspec'
require 'rubocop-faker'
require 'cpf_faker'
require 'rspec/collection_matchers'


ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")