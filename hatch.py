import os
import sys

pgauth_url = 'git@github.com:meetearnest/pgauth.git'
aws_sts_token_generator_url = 'git@github.com:meetearnest/aws-sts.git'
git_folder = '~/git/'
setup_user_github_username = 'earntech-setup-git'

def install_aws_sts_token_generator():	
	git_clone(aws_sts_token_generator_url)
	print('install aws sts token generator here')

def install_pgauth():	
	git_clone(pgauth_url)
	print('install pgauth here')

def git_clone(target_url):
	os.system('git clone ' + target_url + ' ' + git_folder)

def setup_git_folder():
	os.system('mkdir ' + git_folder)

def setup_github_user(username, password):
	print('something')

def main(args):
	setup_git_folder
	setup_github_user(setup_user_github_username, args[1])
	install_aws_sts_token_generator()
	install_pgauth()

print(sys.argv)

main(sys.argv)