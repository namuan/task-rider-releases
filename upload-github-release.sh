echo "Upload Release on Github"

VERSION="$1"

mv dist/TaskRider.app.zip dist/taskrider-macos-${VERSION}.zip
github-release upload --owner ${OWNER} --repo task-rider-releases --tag "${VERSION}" --name "${VERSION}" --body "TaskRider Release ${VERSION}" --prerelease=false dist/taskrider-macos-${VERSION}.zip