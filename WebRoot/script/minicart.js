/*
迷你购物车
 */
window.addEvent('domready', function() {
  var miniCart = {
    'show' : function(target) {
      var dialog = this.dialog = $pick($('mini-cart-dialog'), new Element('div', {
        'class' : 'dialog mini-cart-dialog',
        'id' : 'mini-cart-dialog'
      }).setStyles({
        width : 300
      }).inject(document.body));
      this.dialog.setStyles({
        top : target.getPosition().y + target.getSize().y,
        left : target.getPosition().x
      }).set('html',

      $E('#template-modal .dialog').get('html').substitute({

        title : '正在加入购物车',
        content : '正在加入购物车...'
      })

      ).show();

      document.addEvent('click', function() {
        dialog.remove();
        document.removeEvent('click', arguments.callee);
      });

    },
    'load' : function() {
      var params = Array.flatten(arguments).link({
        'remoteURL' : String.type,
        'options' : Object.type
      });
      params.options.data = params.options.data ? params.options.data.toQueryString() + '&mini_cart=true' : '&mini_cart=true';
      var opts = params = $extend({
        url : params.remoteURL,
        method : 'post',
        onRequest : function() {
          this.dialog.getElement('.title').set('html', '正在加入购物车');

        }.bind(this),
        onSuccess : function(re) {
          if (re.contains('failedSplash')) {
            this.dialog.remove();
            MessageBox.show(re);
            return;
          }
          this.dialog.getElement('.title').set('html', '<img src="/shangcaiwang/themes/green/icon-success.gif" />成功加入购物车');
          this.dialog.getElement('.dialog-content').set('html', re);
          $$('.cart-number').set('text', Cookie.get('S[CART_COUNT]') || 0);
          $$('.totalprice').set('text', Cookie.get('S[CART_AMOUNT]') || 0);

        }.bind(this),
        
        onFailure : function(xhr) {
          this.dialog.remove();
          MessageBox.error("加入购物车失败.<br /><ul><li>可能库存不足.</li><li>或提交信息不完整.</li></ul>");
        }.bind(this)
      }, params.options || {});
      if (!params.url)
        return false;
      miniCart.show(opts.target);
      new Request(opts).send();
    }
  };

  if (formtocart = $E('form[target=_dialog_minicart]')) {
    formtocart.addEvent('submit', function(e) {

      e.stop();
      miniCart.load([ {
        url : this.action,
        method : this.method,
        data : this,
        target : this.getElement('input[value=加入购物车]')
      } ]);

    });
  }
  ;
  /* for goods which has specs */
  if (btnbuy = $E('#goods-viewer form[target=_dialog_minicart] .btn-buy')) {

    btnbuy.removeEvents('click').addEvent('click', function(e) {
      e.stop();
      if (this.retrieve('tip:text'))
        return false;
      this.blur();
      this.form.fireEvent('submit', e);

    });

  }
  ;

  if (linktocart = $$('a[target=_dialog_minicart]')) {
    if (linktocart.length) {
      linktocart.addEvent('click', function(e) {
        e.stop();
        miniCart.load([ {
          url : this.href,
          target : this
        } ]);
      });

    }
  }
  ;
});
