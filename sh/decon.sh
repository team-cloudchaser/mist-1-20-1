#!/bin/bash
# Removes identifying info from certain auto-generated files. (decontamination)
echob "Running decontamination strategy 1."
cat conf/decon.conf | while IFS= read -r file; do
	if [[ "$file" != "#"* ]]; then
		printf "Decontaminating \"${file/.minecraft\/versions/~ver}\"... "
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
		mv "${file}.tmp" "${file}"
		echo "done."
	fi
done
echob "Running decontamination strategy 2."
ls -1 .minecraft/versions | while IFS= read -r profile; do
	cat conf/remove.conf | while IFS= read -r file; do
		if [[ -e ".minecraft/versions/${profile}/${file}" ]]; then
			rm -rv ".minecraft/versions/${profile}/${file}"
		fi
	done
done
echob "Decontamination complete."
exit