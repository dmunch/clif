all:
	mkdir -p ebin/
	mkdir -p data/
	mkdir -p doc/
	(cd src;$(MAKE))
	(cd c_src;$(MAKE))

mochi:
	mkdir -p mochi_dial/ebin/
	(cd mochi_dial;$(MAKE))

clean:
	(cd src;$(MAKE) clean)
	rm -rf erl_crash.dump *.beam *.hrl *.so cover

debug:
	(cd src;$(MAKE) debug)

run:
	erl -pa ebin/
