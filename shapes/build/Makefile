all: default.cgpr test docs
	@echo 
	@echo "==================="
	@echo "Building project..."
	@echo "==================="
	gprbuild -p ../shapes.gpr

default.cgpr:
	gprconfig --batch --config Ada --config C -o $@

clean: force
	@echo 
	@echo "==================="
	@echo "Cleaning project..."
	@echo "==================="
	gprclean -r ../shapes.gpr
	rm -rf ../build/obj
	rm -f ../build/default.cgpr
	rm -rf ../docs/gnatdoc
	rm -rf ../test/harness

test:
	@echo 
	@echo "==================="
	@echo "Building tests...  "
	@echo "==================="
	mkdir -p ../test/harness
	gnat test -dd -P../shapes.gpr -v
	gprbuild -p -P../test/harness/test_driver.gpr
	@echo 
	@echo "==================="
	@echo "Running tests...   "
	@echo "==================="
	../test/harness/test_runner.exe

docs:
	@echo 
	@echo "==================="
	@echo "Generating docs..."
	@echo "==================="
	mkdir -p ../docs/gnatdoc
	gnatdoc -P../shapes.gpr

run: all
	@echo
	@echo "==================="
	@echo "Running project... "
	@echo "==================="
	../build/tdd.exe

force:
