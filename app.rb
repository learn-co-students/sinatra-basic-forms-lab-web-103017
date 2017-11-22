require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/new' do
		erb :"create_puppy"
	end

	post '/' do
		@puppy = Puppy.new(params[:name], params[:breed], params[:age])
		erb :"display_puppy"
	end

end

# Now, we need to create a form for a user to list a new puppy that is available for adoption. You can create this form in views/create_puppy.erb. Remember, you'll need to set up another controller action for a user to be able to view this form in the browser. Another reminder: the "submit" button of a form is an <input> element with a type of "submit", not a <button> element.
# Now we need to make sure the form is being submitted properly. You'll need to have a third controller action that takes the input from the user and renders a third view (views/display_puppy.erb) which displays the info for the puppy that was just created.
# Add a link on the homepage to the new puppy form.
