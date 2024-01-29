#/bin/bash
#Testing the switch:
case $USER in
swiatoslaw | jonny) 
	echo "Hello, how are you???";;
user) 
	echo "Hello, $USER, are you wieder alone???";;
*)
	echo Sorry, no match for you;;
esac

