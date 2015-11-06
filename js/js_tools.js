function InitPages(pagebox, totalpage, pageindex) {
    pagebox.innerHTML = "";

    totalpage = parseInt(totalpage);
    pageindex = parseInt(pageindex);

    var pagenum = 9;
    var middleindex = parseInt(pagenum / 2) + 1;
    var newobj = null;
    if (pageindex == 1) {
        newobj = Create("上页", "disabled");
        pagebox.appendChild(newobj);
    } else {
        newobj = Create("上页", "");
        pagebox.appendChild(newobj);
    }

    if (pageindex == 1) {
        newobj = Create("第一页", "disabled");
        pagebox.appendChild(newobj);
    } else {
        newobj = Create("第一页", "");
        pagebox.appendChild(newobj);
    }

    if (totalpage < pagenum) {
        for (var i = 1; i < totalpage + 1; i++) {
            if (i != pageindex) {
                newobj = Create(i, "");
                pagebox.appendChild(newobj);
            } else {
                newobj = Create(i, "active");
                pagebox.appendChild(newobj);
            }
        }
    } else {
        if (pageindex <= middleindex) {
            for (var i = 1; i < pagenum + 1; i++) {
                if (i != pageindex) {
                    newobj = Create(i, "");
                    pagebox.appendChild(newobj);
                } else {
                    newobj = Create(i, "active");
                    pagebox.appendChild(newobj);
                }
            }
        } else {
            var offsetindex = middleindex - 1;
            var beginindex = pageindex - offsetindex;
            var endindex = 0;
            if (parseInt(pageindex) + offsetindex < totalpage) {
                endindex = parseInt(pageindex) + offsetindex;
            } else {
                endindex = beginindex + (totalpage - beginindex);
            }

            for (var i = beginindex; i < endindex + 1; i++) {
                if (i != pageindex) {
                    newobj = Create(i, "");
                    pagebox.appendChild(newobj);
                } else {
                    newobj = Create(i, "active");
                    pagebox.appendChild(newobj);
                }
            }
        }
    }

    if (parseInt(pageindex) >= totalpage) {
        newobj = Create("最后一页", "disabled");
        pagebox.appendChild(newobj);
    } else {
        newobj = Create("最后一页", "");
        pagebox.appendChild(newobj);
    }

    if (parseInt(pageindex) >= totalpage) {
        newobj = Create("下页", "disabled");
        pagebox.appendChild(newobj);
    } else {
        newobj = Create("下页", "");
        pagebox.appendChild(newobj);
    }


    function Create(inname, classtype) {
        var obj = null;
        var oli = document.createElement("li");
        var oa = document.createElement("a");

        if (classtype != "") { oli.className = classtype; }

        oa.innerHTML = inname;
        oa.href = "javascript:void(0)";
        if ((inname + "").indexOf("页") < 0) {
            oa.style.width = 15 + "px";
        }
        oa.onclick = function () {
            pageclick(oa);
        }
        oli.appendChild(oa);

        return oli;
    }

    function pageclick(sender) {
        var pe = sender.parentElement.className;
        if (pe == "disabled" || pe == "active") { return false; }
        var _value = sender.innerHTML;
        switch (_value) {
            case "上页":
                //GetData(pageindex - 1);
                InitPages(pagebox, totalpage, pageindex - 1);
                break;
            case "下页":
                //GetData(pageindex + 1);
                InitPages(pagebox, totalpage, pageindex + 1);
                break;
            case "第一页":
                //GetData(1);
                InitPages(pagebox, totalpage, 1);
                break;
            case "最后一页":
                //GetData(totalpage);
                InitPages(pagebox, totalpage, totalpage);
                break;
            default:
                //GetData(_value);
                InitPages(pagebox, totalpage, _value);

        }
    }
}