require 'rubygems'
require 'engtagger'
require 'nokogiri'
require 'httparty'
require 'json'
require 'set'

class ProblemController < ApplicationController
  def index

  end
  def input
    text = @params[:textarea]
    ProblemHelper.input()
  end

end
