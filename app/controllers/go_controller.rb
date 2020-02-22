require 'erb'

class GoController < ApplicationController
  def go
    x = 42
    template = ERB.new <<-EOF
    The value of x is: <%= x %>
    EOF
    puts template.result(binding)
  end
end
