_00_=.
_0D_=0D/python
das2jsondir=./0D/das2json
_STD_ = ${_0D_}/std

0D = ${_0D_}/gensym.py \
    ${_0D_}/datum.py \
    ${_0D_}/message.py \
    ${_0D_}/dynrouting.py \
    ${_0D_}/container.py \
    ${_0D_}/registry.py \
    ${_0D_}/process.py \
    ${_0D_}/0d.py \
    ${_STD_}/std.py \
    ${_STD_}/lib.py \
    ${_STD_}/fakepipe.py \
    ${_STD_}/transpiler.py \
    ${_STD_}/stock.py \
    ${_STD_}/run.py

D2J=${das2jsondir}/das2json

dev: run

run: _.py rwr.drawio.json transpile.drawio.json rwr.ohm rwr.rwr
	@./clr
	python3 _.py ${_00_} ${_0D_} test.rwr main rwr.drawio.json transpile.drawio.json

_.py : main.py ${0D}
	cat ${0D} main.py >_.py

rwr.drawio.json: rwr.drawio
	$(D2J) rwr.drawio

transpile.drawio.json: $(_STD_)/transpile.drawio
	$(D2J) $(_STD_)/transpile.drawio

clean:
	rm -rf *.json
	rm -rf *~

install-js-requires:
	npm install yargs prompt-sync

