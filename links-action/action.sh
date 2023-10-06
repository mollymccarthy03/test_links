urls=$(curl -s https://raw.githubusercontent.com/CannonLock/test_links/main/links-action/ignore_urls.json | jq -r 'map("/" + . + "/") | join(",")' | sed 's/ //g')

# Echo the result
echo "Computed URLs: $urls"

# Ensure GITHUB_ENV is available or set a default
GITHUB_ENV=${GITHUB_ENV:-./github_env.txt}

echo "URLS=$urls" >> $GITHUB_ENV
