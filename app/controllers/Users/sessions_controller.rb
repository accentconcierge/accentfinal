class Users::SessionsController < Devise::SessionsController

<center>
<h2>Sign in</h2>

<%= form_for(resource, as: resource_name, url: session_path(resource_name)) do |f| %>
  <div class="field">
    
    <%= f.email_field :email, autofocus: true, :placeholder =>"Email", :class => "inputme" %>
  </div>

  <div class="field">
    
    <%= f.password_field :password, autocomplete: "off",:placeholder => "Password", :class => "inputme"%>
  </div>
<br><br>
  <% if devise_mapping.rememberable? -%>
    <div class="field">
      <%= f.check_box :remember_me %>
      <%= f.label :remember_me %>
    </div>
  <% end -%>

  <div class="actions">
    <%= f.submit "Log in", :class => "submitbutton" %>
  </div>
<% end %>
<br><br>
<%= render "devise/shared/links" %>
</center>

# before_filter :configure_sign_in_params, only: [:create]


  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # You can put the params you want to permit in the empty array.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
