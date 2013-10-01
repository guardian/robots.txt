
pushd ../..

if [ -d dist ]; then
    rm -rf dist
fi

mkdir -p dist/artifacts
cp deploy.json dist/artifacts
mkdir -p dist/artifacts/packages/robotstxt
zip --junk-paths dist/artifacts/packages/robotstxt/robots.txt.zip robots.txt
cd dist/artifacts && zip ../artifacts.zip deploy.json packages/robotstxt/robots.txt.zip

