function fish_prompt --description 'Write out the prompt'
	set_color bdae91
	echo -n "["(date "+%H:%M")"]"
	if [ $PWD != $HOME ]
        printf " "
        set_color yellow
		echo -n (basename $PWD)
	end
	set_color yellow
	printf '%s ' (__fish_git_prompt)
	set_color bdae91
	echo -n '% '
	set_color normal
end
