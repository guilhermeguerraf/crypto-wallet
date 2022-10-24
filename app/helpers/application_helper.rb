module ApplicationHelper
  def convert_date_to_brazilian_format(date_to_convert)
    date_to_convert.strftime("%d/%m/%Y")
  end

  def environment_to_ptBR(env)
    case env
    when "development"
      "Desenvolvimento"
    when "production"
      "Produção"
    else
      "Teste"
    end
  end

  def language_to_ptBR(locale)
    locale == :en ? "Inglês" : "Português do Brasil"
  end

  def coursing_now(course)
    course.nil? ? "Ruby on Rails" : course
  end
end
