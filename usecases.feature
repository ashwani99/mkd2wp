Feature: Markdown to HTML conversion
    Scenario: Valid markdown file
        Given a valid markdown file present in the specified directory
        When the user gives command to generate HTML
        Then HTML version of the file should be created in the HTML/ directory

Feature: Upload post
    Scenario: Upload post
        When the user gives the command to upload post
        Given the username and password are correct
        Then the HTML file should be uploaded to the Wordpress blog

Feature: Modify post
    Scenario: Update post
        Given the user gives correct username and password
        And the user gives the correct post ID
        When the user gives command to update the post
        Then the HTML should be converted into markdown
        And the default editor should open with the markdown content
        When the user saves it
        Then it should be uploaded onto the Wordpress website

    Scenario: Delete post
        Given the user gives correct username and password
        And the user gives the correct post ID
        When the user gives command to delete the post
        Then it should be deleted from the Wordpress website

