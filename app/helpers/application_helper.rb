module ApplicationHelper
    def convert_date_to_brazilian_format(date_to_convert)
        date_to_convert.strftime("%d/%m/%Y")
    end

    def environment_br
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.production?
            "Produção"
        else
            "Teste"
        end
    end
end
