#!/bin/bash
KYRIOS_REPO_URL="https://github.com/earlye/kyrios"

function setup_kyrios {
	mkdir ~/.kyrios
	cp -v ./assets/earnest-kyrios-profile.yaml ~/.kyrios/profile.yaml
	git clone $KYRIOS_REPO_URL	
}

function run_kyrios {
	cd kyrios
	./kyrios.sh
	cd ..
}

function display_earnest_logo {
	echo
	echo -e "                                                                     _..._"
	echo -e "                                                                    d88888b."
	echo -e "                                                                   d8\"   \"8b"
	echo -e "    _..._       _...._    .... _.. .... _.._        _..._       _..Y8     88"
	echo -e "  .8888888.    o8888888.  |88|o888 |88|d88888.    .8888888.   .888888>  .d88..."
	echo -e " d88\"   \"88b  d88\"   \"88. |888P\"\"\" |88P\"''\"Y88.  d88\"   \"88b |88\"   \"   8888888"
	echo -e ".88|.....|88.  '\"  ..d88| |88Y     |88|    |88| .88|.....|88.|88o.._     |88|"
	echo -e "|88888888888|  .od888888| |88|     |88|    |88| |88888888888| \"Y88888b.  |88|"
	echo -e "'88|\"\"\"\"\"\"\"\"' d8P\"\"\"  88| |88|     |88|    |88| '88|\"\"\"\"\"\"\"\"'  .  '\"Y88. |88|"
	echo -e " Y8b     .8b.|88.    .88| |88|     |88|    |88|  Y8b     .8b.<88.   .88' |88"
	echo -e "  \"88bood88\"  \"88boodP88| |88|     |88|    |88|   \"88bood88\"  \"88bod88\"  'Y8888"
	echo -e "    '\"\"\"'       '\"\"\"' \"\"' '\"\"'     '\"\"'    '\"\"'     '\"\"\"'       '\"\"\"'      '\"\"\""
	echo
	echo
	echo
	sleep 2	
}

function display_startup_message {
	echo "Bootstrapping with Kyrios..."
}

function verify_git_is_installed {
	git --version &> /dev/null
	if [[ $? -gt 0 ]]; then
		echo "Git is not installed or accessible through the PATH variable, exiting."
		exit 1
	fi
}

display_earnest_logo
display_startup_message
verify_git_is_installed
setup_kyrios
run_kyrios