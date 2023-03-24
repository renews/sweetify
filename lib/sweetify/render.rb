# frozen_string_literal: true

module Sweetify
  class << self
    attr_writer :sweetalert_library

    def sweetalert_library
      @sweetalert_library || 'sweetalert2'
    end

    def render(json)
      json = json.html_safe
      sweetalert_library == 'sweetalert2' ? "Swal.fire(#{json})" : "swal(#{json})"
    end
  end
end
