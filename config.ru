require 'rubygems'
require 'bundler'
require 'mechanize'
require "sinatra/contrib/all"
Bundler.require
require './app'
run ScrapnizeApp
