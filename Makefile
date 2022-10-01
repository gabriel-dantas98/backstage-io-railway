build:
	yarn install --frozen-lockfile
	yarn tsc
	yarn --cwd packages/backend build
	tar xzf packages/backend/dist/skeleton.tar.gz
	tar xzf packages/backend/dist/bundle.tar.gz

start: 
	node packages/backend --config app-config.yaml
