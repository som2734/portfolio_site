# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/send_contact
  def send_contact
    from = 'sample@gmail.com'
    subject = 'Site Feedback'
    message = "I viewed your site, here's a message!"
    ContactMailer.send_contact(from,subject,message)
  end

end
