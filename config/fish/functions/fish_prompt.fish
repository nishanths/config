function fish_prompt --description 'Write out the prompt'
	set_color white
	echo -n "["(date "+%H:%M")"]"
	if [ $PWD != $HOME ]
        printf " "
        set_color blue
		echo -n (basename $PWD)
	end
	set_color green
	printf '%s ' (__fish_git_prompt)
	set_color white
	echo -n '% '
	set_color normal
end
