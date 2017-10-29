import markdown
import os

@given('a valid markdown file present in the specified directory')
def step_impl(context, filepath):
	if os.path.isfile(filepath) == False:
  		print('Error: File not found')

@when('the user gives command to generate HTML')
def step_impl(context, convert=True):
	if not convert:
		return

@then('HTML version of the file should be created in the HTML/ directory')
def step_impl(context, filepath):
	# Create a HTML directory
 	os.mkdir('HTML/')
 	with open(filepath, 'r') as file:
 		text = file.read()
 		html = markdown.markdown(text)

 	# Extract the filename without the .md/.markdown extension from the filepath provided
 	filename = filepath.split('/').split('.')[0]
 	html_filepath = 'HTML/{}.html'.format(filename)
 	
 	with open(html_filepath, 'w') as file:
 		file.write(html)