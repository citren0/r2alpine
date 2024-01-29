FROM alpine

RUN apk add bash nano nano-syntax musl-dev git gcc g++ gdb patch make ninja meson radare2-libs radare2 radare2-dbg radare2-dev radare2-doc radare2-libs

RUN r2pm -U

RUN r2pm -i r2dec

RUN r2pm -i r2ghidra

RUN rm -r /usr/share/nano/extra/

RUN echo "include /usr/share/nano/*" > /root/.nanorc

RUN echo 'export PS1="(r2alpine) $PS1"' >> /root/.bashrc
