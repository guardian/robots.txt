
pushd ../..

if [ -d dist ]; then
    rm -rf dist
fi

mkdir -p dist/artifacts
cp deploy.json dist/artifacts
mkdir -p dist/artifacts/packages/robots.txt
zip --junk-paths dist/artifacts/packages/robots.txt/robots.txt.zip robots.txt
cd dist/artifacts && zip ../artifacts.zip deploy.json packages/robots.txt/robots.txt.zip

