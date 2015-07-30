class MenusController < ApplicationController
  def full_menu
    pdf_filename = File.join(Rails.root, "app/assets/images/menus/full_menu.pdf")
    send_file(pdf_filename, filename: "full_menu.pdf", disposition: "inline", type: "application/pdf")
  end
end
