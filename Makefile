clean:
	rm -rf deps/ priv/static assets/node_modules _build _system

update_all:
	mix deps.update --all

get_deps:
	mix deps.get

compile_ng:
	#mix compile.ng

compile_deps:
	mix deps.compile 

compile_source:
	mix compile

build: get_deps compile_deps compile_ng compile_source

ci_build: clean build

ex_unit_test:
	mix test

ng_unit_test:
	#mix test.ng

unit_test: ex_unit_test ng_unit_test

# Run the app
run:
	mix phx.server 
	
