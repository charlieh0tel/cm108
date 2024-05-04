cm108: cm108.c
	cc -o $@ $^ -lusb -ludev

.PHONY: install
install: cm108
	cp cm108 /usr/local/bin
	cp 99-cm108-cmedia.rules /etc/udev/rules.d

.PHONY: clean
clean:
	rm -f cm108 *.o
