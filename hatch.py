import os

pgauth_url = 'git@github.com:meetearnest/pgauth.git'
aws_sts_token_generator_url = 'git@github.com:meetearnest/aws-sts.git'
git_folder = '~/git/'

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

def main():
	setup_git_folder
	install_aws_sts_token_generator()
	install_pgauth()

main()