class CvController < ApplicationController
  def resume
    render 'resume'
  end

  def pdf
    # send_file("/assets/images/resume_new-rev.pdf")
    # send_file(pdf_filename, :filename => "/assets/images/resume_new-rev.pdf", :disposition => 'inline', :type => "application/pdf")
  end
end
