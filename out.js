{

    r : function (p) {
	_ruleEnter ("r");


	p = p.rwr ();
	_ruleExit ("r");
	return `${p}`;
    }

    s : function (v) {
	_ruleEnter ("s");


	v = v.rwr ();
	_ruleExit ("s");
	return `${v}`;
    }

    _terminal: function () { return this.sourceString; },
    _iter: function (...children) { return children.map(c => c.rwr ()); },
    spaces: function (x) { return this.sourceString; },
    space: function (x) { return this.sourceString; }
}
