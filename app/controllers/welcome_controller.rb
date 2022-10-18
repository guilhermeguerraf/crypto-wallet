class WelcomeController < ApplicationController
  def index
    # Variavel de instancia/sessao
    @course = params[:course] # Parametro passado pela Url
  end
end
