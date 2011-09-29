require 'rack-plastic'

module Rack

  class Delinkify < Plastic

    def change_nokogiri_doc(doc)
      doc
    end

    def change_html_string(html)
      delinkify(html)
    end

    private
  end

end
