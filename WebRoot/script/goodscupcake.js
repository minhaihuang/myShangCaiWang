window.addEvent("domready", function() {
  $$(".GoodsSearchWrap .buy-select").each(function(a) {
    new QMenu(a, $E(".buy-select-list", a))
  })
});
window.addEvent("domready", function() {
  var d = new Cookie("S[GFAV]", {
    duration : 365
  });
  var b = {
    "star-on" : "off",
    "star-off" : "on",
    off : "Del",
    on : "Add",
    off_ : "erase",
    on_ : "include"
  };
  var a = function(g, h, f) {
    if (h == "on") {
      g.className = "star-on";
      var e = g.children[0];
      while (e.nodeType != 3) {
        e = e.firstChild
      }
      e.nodeValue = "已加入收藏"
    } else {
      g.className = "star-off";
      var e = g.children[0];
      while (e.nodeType != 3) {
        e = e.firstChild
      }
      e.nodeValue = "收藏此商品"
    }
    if (!f) {
      return
    }
    d.write($splat((d.read("S[GFAV]") || "").split(","))[b[h + "_"]](f).clean().join(","));
    new Request().post("index.php?member-" + f + "-ajax" + b[h] + "Fav.html", $H({
      t : $time()
    }))
  };
  var c = $splat((d.read("S[GFAV]") || "").split(","));
  $$("li[star]").each(function(f) {
    var e = f.get("star");
    if (c.contains(e)) {
      a(f, "on")
    }
    f.addEvent("click", function(g) {
      g.stop();
      a(f, b[f.className], e)
    })
  })
});
window.addEvent("domready", function() {
  var e = $("goods-compare")
      || new Element("div").set(
          "html",
          [ "<div class='FormWrap goods-compare' id='goods-compare' style='display:none'>", "<div class='title'><h3>商品对比<span class='close-gc' onclick='gcompare.hide()'>[关闭]</span></h3></div>", "<form action='" + Shop.url.diff + "' method='post' target='_compare_goods'>", "<input type='hidden' name='t' value=" + $time() + ">", "<ul class='compare-box'>", "<li class='division clearfix tpl'>", "<div class='span-3'>", "<a href='#' gid='{gid}' title='{gname}'>{gname}</a>", "</div>", "<span class='floatRight lnk' onclick='gcompare.erase(\"{gid}\",this);'>删除</span>", "</li>", "</ul>", "<div class='compare-bar'>", "<input type='button' name='comareing' onclick='gcompare.submit()' class='btn-compare' value='对比'>", "<input type='button' class='btn-compare' onclick='gcompare.empty()' value='清空'>",
              "</div>", "</form>", "</div>" ].join("\n")).getFirst().inject(document.body);
  var d = e.getElement(".compare-box");
  var b = e.getElement(".compare-box .tpl").get("html");
  var f = "division clearfix";
  var c = function() {
    if (e.style.display == "none") {
      return
    }
    e.setStyle("top", window.getScrollTop())
  };
  window.addEvents({
    resize : c,
    scroll : c
  });
  var a = new Cookie("S[GCOMPARE]");
  gcompare = {
    init : function() {
      var g = $splat((a.read("S[GCOMPARE]") || "").split("|")).erase("").clean();
      if (g.length) {
        g.each(function(h) {
          this.add(JSON.decode(h), true)
        }.bind(this))
      }
    },
    hide : function() {
      e.hide()
    },
    show : function() {
      e.show();
      c()
    },
    add : function(g, k) {
      this.show();
      if (!k) {
        var j = $splat((a.read("S[GCOMPARE]") || "").split("|")).erase("").clean();
        if (j.length && j.some(function(l) {
          return (JSON.decode(l)["gtype"] + "_") != (g.gtype + "_")
        })) {
          return MessageBox.error("只能对比同类的商品.")
        }
        if (j.length > 4) {
          return MessageBox.error("最多只能对比5个商品.")
        }
        a.write(j.include(JSON.encode(g)).join("|"))
      }
      if (d.getElement('a[gid="' + g.gid + '"]')) {
        return
      }
      var h = new Element("li", {
        "class" : f
      }).set("html", b.substitute(g));
      var i = h.getElement("a");
      i.set("href", "?product-" + g.gid + ".html");
      d.adopt(h)
    },
    erase : function(h, g) {
      var j = $splat((a.read("S[GCOMPARE]") || "").split("|")).erase("").clean();
      var i;
      j.each(function(m, k) {
        if (h == JSON.decode(m)["gid"]) {
          i = k
        }
      });
      j.splice(i, 1);
      a.write(j.join("|"));
      $(g).getParent("li").remove()
    },
    empty : function() {
      a.dispose();
      d.getElements("li").each(function(g) {
        if (!g.hasClass("tpl")) {
          return g.remove()
        }
      })
    },
    submit : function() {
      if (Browser.Engine.webkit) {
        d.getParent("form").action = Shop.url.diff
      }
      d.getParent("form").submit()
    }
  };
  gcompare.init()
});