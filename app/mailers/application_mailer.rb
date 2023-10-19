class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
email.changed.html.rb
     <% if @resource.try(:unconfirmed_email?) %>
  <p>We're contacting you to notify you that your email is being changed to <%= @resource.unconfirmed_email %>.</p>
<% else %>
  <p>We're contacting you to notify you that your email has been changed to <%= @resource.email %>.</p>
<% end %>
another file called (password_changed.html.rb)
  <p>We're contacting you to notify you that your password has been changed.</p>