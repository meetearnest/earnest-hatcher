import os
import sys

pgauth_url = 'https://github.com/meetearnest/pgauth.git'
aws_sts_token_generator_url = 'https://github.com/meetearnest/aws-sts.git'
git_folder = '~/git/'
setup_user_github_username = 'earntech-setup-git'

def install_aws_sts_token_generator():	
	git_clone(aws_sts_token_generator_url, git_folder + 'aws-sts-token-generator')
	print('install aws sts token generator here')

def install_pgauth():	
	git_clone(pgauth_url, git_folder + 'pgauth')
	print('install pgauth here')

def git_clone(target_url, folder):
	os.system('git clone ' + target_url + ' ' + folder)

def main(args):
	install_aws_sts_token_generator()
	install_pgauth()

main(sys.argv)