#!/bin/bash
# Removes identifying info from certain auto-generated files. (decontamination)
cat conf/decon.conf | while IFS= read -r file; do
	if [[ "$file" != "#"* ]]; then
		printf "Decontaminating \"$file\"... "
		cat "$file" | while IFS= read -r line; do
			if [[ "$line" != "#Sun "* ]] &&
			   [[ "$line" != "#Mon "* ]] &&
			   [[ "$line" != "#Tue "* ]] &&
			   [[ "$line" != "#Wed "* ]] &&
			   [[ "$line" != "#Thu "* ]] &&
			   [[ "$line" != "#Fri "* ]] &&
			   [[ "$line" != "#Sat "* ]]; then
				echo "$line" >> "${file}.tmp"
			fi
		done
		mv -v "${file}.tmp" "${file}"
		echo "done."
	fi
done
exit