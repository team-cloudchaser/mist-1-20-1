#!/bin/bash
# Removes identifying info from certain auto-generated files. (decontamination)
cat conf/decon.conf | while IFS= read -r file; do
	if [[ "$file" != "#"* ]]; then
		printf "Decontaminating \"$file\"... "
		cat "$file" | while IFS= read -r line; do
			if [[ "$line" != "#Fri "* ]]; then
				echo "$line" >> "${file}.tmp"
			fi
			mv -v "${file}.tmp" "${file}"
		done
		echo "done."
	fi
done
exit