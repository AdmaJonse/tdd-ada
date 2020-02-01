all: default.cgpr test docs
	gprbuild -p ../shapes.gpr

default.cgpr:
	gprconfig --batch --config Ada --config C -o $@

clean: force
	gprclean -r ../shapes.gpr
	rm -rf ../build/obj
	rm -f ../build/default.cgpr
	rm -rf ../docs/gnatdoc
	rm -rf ../test/harness

test:
	mkdir -p ../test/harness
	gnat test -dd -P../shapes.gpr -v
	gprbuild -p -P../test/harness/test_driver.gpr
	../test/harness/test_runner.exe

docs:
	mkdir -p ../docs/gnatdoc
	gnatdoc -P../shapes.gpr

run: all
	../build/tdd.exe

force:
