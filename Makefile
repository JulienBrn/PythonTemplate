

make_repo:
	@export NAME=$$(basename -s .git `git config --get remote.origin.url`); find . -exec bash -c 'mv $$0 $$(echo $$0 | sed -E "s;___package_name___;$$NAME;g")' {} \;
	@export NAME=$$(basename -s .git `git config --get remote.origin.url`); find . -exec bash -c 'sed -i -E "s;___package_name___;$$NAME;g" $$0' {} \;  
