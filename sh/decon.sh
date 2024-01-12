#!/bin/bash
# Removes identifying info from certain auto-generated files. (decontamination)
genDate="#$(date '+%a %b %d %H:%M:%S %Z %Y')"
cat conf/decon.conf | while IFS= read -r file; do
	if [[ "$file" != "#"* ]] ; then
		printf "Decontaminating \"$file\"... "
		echo "done."
	fi
done
exit