import os
import sys

#TODO monolith, my-ui, ???
git_repos = dict([
	('https://github.com/meetearnest/aws-sts.git', 'aws-sts-token-generator')
])
git_folder = os.path.expanduser('~') + '/git/'

def git_clone_repos(folder):
	for git_repo in git_repos:
		print(git_repo)
		target_folder = folder + git_repos[git_repo]
		git_clone_if_not_already_cloned(git_repo, target_folder)

def git_clone(target_url, folder):
	os.system('git clone ' + target_url + ' ' + folder)

def git_clone_if_not_already_cloned(target_url, folder):
	print('Deciding to potentially clone: ' + target_url + ' to ' + folder)
	if(os.path.exists(folder)):
		print(folder + ' already exists, skipping git clone')
		return None
	else:
		git_clone(target_url, folder)

def main(args):
	git_clone_repos(git_folder)

main(sys.argv)
