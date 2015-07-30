class PagesController < ApplicationController
  def home
  end

  def pizza
  end

  def appetizers
  end

  def calzones
  end

  def subs
  end
  
  def full_menu
    pdf_filename = File.join(Rails.root, "app/assets/images/pages/full_menu.pdf")
    send_file(pdf_filename, filename: "full_menu.pdf", disposition: "inline", type: "application/pdf")
  end
end
