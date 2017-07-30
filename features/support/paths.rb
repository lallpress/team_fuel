# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/donors'
    
    when /^the home\s?page$/
      '/organizations'
      
    when /^the (Fuel Donation Management System )?home\s?page$/ then '/welcome/index'
    #when /^the Fuel Donation Management System home page$/ then '/organizations'
    #when /^the home page$/ then '/organizations'
      
   
    #when /^the Fuel Donation Management System home page$/ then '/donors'
    #when /^the home page$/ then '/donors'
      
    when /^the Current Organizations page$/ then '/organizations'
#      organization_path Organization.all
    when /^the Current Donors page$/ then '/donors'
      
    when /^the New Donor page$/ then '/donors/new'
    
    #when /^the edit donor page$/ then 'donors/:id/edit'
    
    when /^the New Donor page$/
      new_donor_path
     
    when /^the edit donor page for "(.+)"$/
      edit_donor_path
      
    when /^the donors page$/ 
      donors_path
      
    when /^the edit donor page$/
      :id/edit_donor_path
      
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
