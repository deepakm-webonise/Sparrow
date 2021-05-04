class ApplicationMailer < ApplicationMailer
  default from: "sample@#{ApplicationMailer.smtp_settings[:domain]}"
end
