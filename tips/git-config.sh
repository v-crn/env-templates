# Execute the following commands manually.
ssh-keygen -t rsa -b 4096 -C $(git config user.email)

# For MacOS / Linux
# ssh-agent

# For Windows / Ubuntu(?)
eval "$(ssh-agent)"

ssh-add ~/.ssh/id_rsa
