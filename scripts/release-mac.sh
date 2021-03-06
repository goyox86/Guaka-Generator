if [ -z "$VERSION" ]; then
    echo "VERSION is missing"
    exit 1
fi

if [ -z "$GITHUB_TOKEN" ]; then
    echo "GITHUB_TOKEN is missing"
    exit 1
fi

# git tag $VERSION
# git push origin master --tags

github-release release --user oarrabi --repo Guaka-Generator --tag ${VERSION} --name "Version ${VERSION}"
github-release upload --user oarrabi --repo Guaka-Generator --tag ${VERSION} --name "mac/guaka" --file bin/mac/guaka
