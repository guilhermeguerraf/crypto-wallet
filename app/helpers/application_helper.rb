module ApplicationHelper
    def convert_date_to_brazilian_format(date_to_convert)
        date_to_convert.strftime("%d/%m/%Y")
    end
end
