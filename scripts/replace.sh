#!/usr/bin/env bash
# this script is recycled between the BSSM colorschemes and perona.nvim

declare -A colors=(
  ["mihawk"]="mars" ["garden"]="jupiter" ["sangria"]="venus"
  ["kumashi"]="mercury" ["zombie"]="saturn" ["hollow"]="moon"
  ["dracule"]="rei" ["wonder"]="makoto" ["fruit"]="minako"
  ["beary"]="ami" ["surprise"]="hotaru" ["negative"]="usagi"
)

TEMPLATES=(../templates/*)

for template in "${TEMPLATES[@]}"; do
  if [ -f "$template" ]; then
    echo "updating keys in $template"

    for old in "${!colors[@]}"; do
      new="${colors[$old]}"
      sed -i "s/$old/$new/g" "$template"
    done
  else
    echo "skipping $template (not found)"
  fi
done

echo "done"
