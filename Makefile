filemon: filemon.c
	clang -arch x86_64 -arch arm64 -Os -o $@ $<

clean:
	rm -f filemon
