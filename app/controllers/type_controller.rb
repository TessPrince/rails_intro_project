class TypeController < ApplicationController
  def index
    @types = Type.all
  end
end
