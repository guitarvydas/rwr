_ = {
    ruleName : "",
    treeWalkerCode : [],
    setRuleName : function (s) { _.ruleName = s; return ""; },
    getRuleName : function () {return _.ruleName;},
    resetTreeWalker : function () {_.treeWalkerCode = []; return "";},
    expandTreeWalker : function () {return _.treeWalkerCode.join (''); },
    appendTreeWalkerCode : function (s) {_.treeWalkerCode.push (s); return "";}
}
,
