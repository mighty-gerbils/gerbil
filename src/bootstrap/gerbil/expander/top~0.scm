(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1710774316)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx90956_)
        (letrec ((_expand-special90958_
                  (lambda (_hd90960_ _K90961_ _rest90962_ _r90963_)
                    (_K90961_
                     _rest90962_
                     (cons (gx#core-expand-top _hd90960_) _r90963_)))))
          (gx#core-expand-block__0 _stx90956_ _expand-special90958_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx90709_)
        (letrec ((_expand-special90711_
                  (lambda (_hd90831_ _K90832_ _rest90833_ _r90834_)
                    (let* ((_K90838_
                            (lambda (_e90836_)
                              (_K90832_ _rest90833_ (cons _e90836_ _r90834_))))
                           (_e9083990868_ _hd90831_)
                           (_E9086390872_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9083990868_)))
                           (_E9085990884_
                            (lambda ()
                              (if (gx#stx-pair? _e9083990868_)
                                  (let ((_e9086490876_
                                         (gx#syntax-e _e9083990868_)))
                                    (let ((_hd9086590879_
                                           (##car _e9086490876_))
                                          (_tl9086690881_
                                           (##cdr _e9086490876_)))
                                      (if (and (gx#identifier? _hd9086590879_)
                                               (gx#core-identifier=?
                                                _hd9086590879_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K90838_
                                               (gx#core-expand-define-runtime%
                                                _hd90831_))
                                              (_E9086390872_))
                                          (_E9086390872_))))
                                  (_E9086390872_))))
                           (_E9085590896_
                            (lambda ()
                              (if (gx#stx-pair? _e9083990868_)
                                  (let ((_e9086090888_
                                         (gx#syntax-e _e9083990868_)))
                                    (let ((_hd9086190891_
                                           (##car _e9086090888_))
                                          (_tl9086290893_
                                           (##cdr _e9086090888_)))
                                      (if (and (gx#identifier? _hd9086190891_)
                                               (gx#core-identifier=?
                                                _hd9086190891_
                                                '%#define-alias))
                                          (if '#t
                                              (_K90838_
                                               (gx#core-expand-define-alias%
                                                _hd90831_))
                                              (_E9085990884_))
                                          (_E9085990884_))))
                                  (_E9085990884_))))
                           (_E9084590908_
                            (lambda ()
                              (if (gx#stx-pair? _e9083990868_)
                                  (let ((_e9085690900_
                                         (gx#syntax-e _e9083990868_)))
                                    (let ((_hd9085790903_
                                           (##car _e9085690900_))
                                          (_tl9085890905_
                                           (##cdr _e9085690900_)))
                                      (if (and (gx#identifier? _hd9085790903_)
                                               (gx#core-identifier=?
                                                _hd9085790903_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K90838_
                                               (gx#core-expand-define-syntax%
                                                _hd90831_))
                                              (_E9085590896_))
                                          (_E9085590896_))))
                                  (_E9085590896_))))
                           (_E9084190940_
                            (lambda ()
                              (if (gx#stx-pair? _e9083990868_)
                                  (let ((_e9084690912_
                                         (gx#syntax-e _e9083990868_)))
                                    (let ((_hd9084790915_
                                           (##car _e9084690912_))
                                          (_tl9084890917_
                                           (##cdr _e9084690912_)))
                                      (if (and (gx#identifier? _hd9084790915_)
                                               (gx#core-identifier=?
                                                _hd9084790915_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9084890917_)
                                              (let ((_e9084990920_
                                                     (gx#syntax-e
                                                      _tl9084890917_)))
                                                (let ((_hd9085090923_
                                                       (##car _e9084990920_))
                                                      (_tl9085190925_
                                                       (##cdr _e9084990920_)))
                                                  (let ((_hd-bind90928_
                                                         _hd9085090923_))
                                                    (if (gx#stx-pair?
                                                         _tl9085190925_)
                                                        (let ((_e9085290930_
                                                               (gx#syntax-e
                                                                _tl9085190925_)))
                                                          (let ((_hd9085390933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9085290930_))
                        (_tl9085490935_ (##cdr _e9085290930_)))
                    (let ((_expr90938_ _hd9085390933_))
                      (if (gx#stx-null? _tl9085490935_)
                          (if (gx#core-bind-values? _hd-bind90928_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90928_)
                                (_K90838_ _hd90831_))
                              (_E9084590908_))
                          (_E9084590908_)))))
                (_E9084590908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9084590908_))
                                          (_E9084590908_))))
                                  (_E9084590908_))))
                           (_E9084090952_
                            (lambda ()
                              (if (gx#stx-pair? _e9083990868_)
                                  (let ((_e9084290944_
                                         (gx#syntax-e _e9083990868_)))
                                    (let ((_hd9084390947_
                                           (##car _e9084290944_))
                                          (_tl9084490949_
                                           (##cdr _e9084290944_)))
                                      (if (and (gx#identifier? _hd9084390947_)
                                               (gx#core-identifier=?
                                                _hd9084390947_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K90838_
                                               (gx#core-expand-begin-syntax%
                                                _hd90831_))
                                              (_E9084190940_))
                                          (_E9084190940_))))
                                  (_E9084190940_)))))
                      (_E9084090952_))))
                 (_eval-body90712_
                  (lambda (_rbody90720_)
                    (let _lp90722_ ((_rest90724_ _rbody90720_)
                                    (_body90725_ '())
                                    (_ebody90726_ '()))
                      (let* ((_rest9072790735_ _rest90724_)
                             (_else9072990743_
                              (lambda ()
                                (values _body90725_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody90726_)
                                          (gx#stx-source _stx90709_))))))
                             (_K9073190819_
                              (lambda (_rest90746_ _hd90747_)
                                (let* ((_e9074890765_ _hd90747_)
                                       (_E9076090769_
                                        (lambda ()
                                          (_lp90722_
                                           _rest90746_
                                           (cons _hd90747_ _body90725_)
                                           (cons _hd90747_ _ebody90726_))))
                                       (_E9075090781_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9074890765_)
                                              (let ((_e9076190773_
                                                     (gx#syntax-e
                                                      _e9074890765_)))
                                                (let ((_hd9076290776_
                                                       (##car _e9076190773_))
                                                      (_tl9076390778_
                                                       (##cdr _e9076190773_)))
                                                  (if (and (gx#identifier?
                                                            _hd9076290776_)
                                                           (gx#core-identifier=?
                                                            _hd9076290776_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp90722_
                                                           _rest90746_
                                                           (cons _hd90747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body90725_)
                   _ebody90726_)
                  (_E9076090769_))
              (_E9076090769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9076090769_))))
                                       (_E9074990815_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9074890765_)
                                              (let ((_e9075190785_
                                                     (gx#syntax-e
                                                      _e9074890765_)))
                                                (let ((_hd9075290788_
                                                       (##car _e9075190785_))
                                                      (_tl9075390790_
                                                       (##cdr _e9075190785_)))
                                                  (if (and (gx#identifier?
                                                            _hd9075290788_)
                                                           (gx#core-identifier=?
                                                            _hd9075290788_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9075390790_)
                                                          (let ((_e9075490793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9075390790_)))
                    (let ((_hd9075590796_ (##car _e9075490793_))
                          (_tl9075690798_ (##cdr _e9075490793_)))
                      (let ((_hd-bind90801_ _hd9075590796_))
                        (if (gx#stx-pair? _tl9075690798_)
                            (let ((_e9075790803_ (gx#syntax-e _tl9075690798_)))
                              (let ((_hd9075890806_ (##car _e9075790803_))
                                    (_tl9075990808_ (##cdr _e9075790803_)))
                                (let ((_expr90811_ _hd9075890806_))
                                  (if (gx#stx-null? _tl9075990808_)
                                      (if '#t
                                          (let ((_ehd90813_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind90801_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr90811_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd90747_))))
                                            (_lp90722_
                                             _rest90746_
                                             (cons _ehd90813_ _body90725_)
                                             (cons _ehd90813_ _ebody90726_)))
                                          (_E9075090781_))
                                      (_E9075090781_)))))
                            (_E9075090781_)))))
                  (_E9075090781_))
              (_E9075090781_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9075090781_)))))
                                  (_E9074990815_)))))
                        (if (##pair? _rest9072790735_)
                            (let ((_hd9073290822_ (##car _rest9072790735_))
                                  (_tl9073390824_ (##cdr _rest9072790735_)))
                              (let* ((_hd90827_ _hd9073290822_)
                                     (_rest90829_ _tl9073390824_))
                                (_K9073190819_ _rest90829_ _hd90827_)))
                            (_else9072990743_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody90715_
                     (gx#core-expand-block__1
                      _stx90709_
                      _expand-special90711_
                      '#f))
                    (_g90979_ (_eval-body90712_ _rbody90715_)))
               (begin
                 (let ((_g90980_
                        (if (##values? _g90979_)
                            (##vector-length _g90979_)
                            1)))
                   (if (not (##fx= _g90980_ 2))
                       (error "Context expects 2 values" _g90980_)))
                 (let ((_expanded-body90717_ (##vector-ref _g90979_ 0))
                       (_value90718_ (##vector-ref _g90979_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body90717_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value90718_ '())))
                    (gx#stx-source _stx90709_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx90679_)
        (let* ((_e9068090687_ _stx90679_)
               (_E9068290691_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9068090687_)))
               (_E9068190705_
                (lambda ()
                  (if (gx#stx-pair? _e9068090687_)
                      (let ((_e9068390695_ (gx#syntax-e _e9068090687_)))
                        (let ((_hd9068490698_ (##car _e9068390695_))
                              (_tl9068590700_ (##cdr _e9068390695_)))
                          (let ((_body90703_ _tl9068590700_))
                            (if (gx#stx-list? _body90703_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body90703_)
                                 (gx#stx-source _stx90679_))
                                (_E9068290691_)))))
                      (_E9068290691_)))))
          (_E9068190705_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx90677_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx90677_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx90623_)
        (let* ((_e9062490637_ _stx90623_)
               (_E9062690641_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9062490637_)))
               (_E9062590673_
                (lambda ()
                  (if (gx#stx-pair? _e9062490637_)
                      (let ((_e9062790645_ (gx#syntax-e _e9062490637_)))
                        (let ((_hd9062890648_ (##car _e9062790645_))
                              (_tl9062990650_ (##cdr _e9062790645_)))
                          (if (gx#stx-pair? _tl9062990650_)
                              (let ((_e9063090653_
                                     (gx#syntax-e _tl9062990650_)))
                                (let ((_hd9063190656_ (##car _e9063090653_))
                                      (_tl9063290658_ (##cdr _e9063090653_)))
                                  (let ((_ann90661_ _hd9063190656_))
                                    (if (gx#stx-pair? _tl9063290658_)
                                        (let ((_e9063390663_
                                               (gx#syntax-e _tl9063290658_)))
                                          (let ((_hd9063490666_
                                                 (##car _e9063390663_))
                                                (_tl9063590668_
                                                 (##cdr _e9063390663_)))
                                            (let ((_expr90671_ _hd9063490666_))
                                              (if (gx#stx-null? _tl9063590668_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann90661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr90671_) '())))
               (gx#stx-source _stx90623_))
              (_E9062690641_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9062690641_)))))
                                        (_E9062690641_)))))
                              (_E9062690641_))))
                      (_E9062690641_)))))
          (_E9062590673_))))
    (define gx#core-expand-local-block
      (lambda (_stx90347_ _body90348_)
        (letrec ((_expand-special90350_
                  (lambda (_hd90618_ _K90619_ _rest90620_ _r90621_)
                    (_K90619_
                     '()
                     (cons (_expand-internal90351_ _hd90618_ _rest90620_)
                           _r90621_))))
                 (_expand-internal90351_
                  (lambda (_hd90614_ _rest90615_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal90353_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd90614_ _rest90615_))
                          (gx#stx-source _stx90347_))
                         _expand-internal-special90352_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj90973
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj90973)
                       __obj90973))))
                 (_expand-internal-special90352_
                  (lambda (_hd90509_ _K90510_ _rest90511_ _r90512_)
                    (let* ((_e9051390538_ _hd90509_)
                           (_E9053390542_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9051390538_)))
                           (_E9052990554_
                            (lambda ()
                              (if (gx#stx-pair? _e9051390538_)
                                  (let ((_e9053490546_
                                         (gx#syntax-e _e9051390538_)))
                                    (let ((_hd9053590549_
                                           (##car _e9053490546_))
                                          (_tl9053690551_
                                           (##cdr _e9053490546_)))
                                      (if (and (gx#identifier? _hd9053590549_)
                                               (gx#core-identifier=?
                                                _hd9053590549_
                                                '%#declare))
                                          (if '#t
                                              (_K90510_
                                               _rest90511_
                                               (cons (gx#core-expand-declare%
                                                      _hd90509_)
                                                     _r90512_))
                                              (_E9053390542_))
                                          (_E9053390542_))))
                                  (_E9053390542_))))
                           (_E9052590566_
                            (lambda ()
                              (if (gx#stx-pair? _e9051390538_)
                                  (let ((_e9053090558_
                                         (gx#syntax-e _e9051390538_)))
                                    (let ((_hd9053190561_
                                           (##car _e9053090558_))
                                          (_tl9053290563_
                                           (##cdr _e9053090558_)))
                                      (if (and (gx#identifier? _hd9053190561_)
                                               (gx#core-identifier=?
                                                _hd9053190561_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd90509_)
                                                (_K90510_
                                                 _rest90511_
                                                 _r90512_))
                                              (_E9052990554_))
                                          (_E9052990554_))))
                                  (_E9052990554_))))
                           (_E9051590578_
                            (lambda ()
                              (if (gx#stx-pair? _e9051390538_)
                                  (let ((_e9052690570_
                                         (gx#syntax-e _e9051390538_)))
                                    (let ((_hd9052790573_
                                           (##car _e9052690570_))
                                          (_tl9052890575_
                                           (##cdr _e9052690570_)))
                                      (if (and (gx#identifier? _hd9052790573_)
                                               (gx#core-identifier=?
                                                _hd9052790573_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd90509_)
                                                (_K90510_
                                                 _rest90511_
                                                 _r90512_))
                                              (_E9052590566_))
                                          (_E9052590566_))))
                                  (_E9052590566_))))
                           (_E9051490610_
                            (lambda ()
                              (if (gx#stx-pair? _e9051390538_)
                                  (let ((_e9051690582_
                                         (gx#syntax-e _e9051390538_)))
                                    (let ((_hd9051790585_
                                           (##car _e9051690582_))
                                          (_tl9051890587_
                                           (##cdr _e9051690582_)))
                                      (if (and (gx#identifier? _hd9051790585_)
                                               (gx#core-identifier=?
                                                _hd9051790585_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9051890587_)
                                              (let ((_e9051990590_
                                                     (gx#syntax-e
                                                      _tl9051890587_)))
                                                (let ((_hd9052090593_
                                                       (##car _e9051990590_))
                                                      (_tl9052190595_
                                                       (##cdr _e9051990590_)))
                                                  (let ((_hd-bind90598_
                                                         _hd9052090593_))
                                                    (if (gx#stx-pair?
                                                         _tl9052190595_)
                                                        (let ((_e9052290600_
                                                               (gx#syntax-e
                                                                _tl9052190595_)))
                                                          (let ((_hd9052390603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9052290600_))
                        (_tl9052490605_ (##cdr _e9052290600_)))
                    (let ((_expr90608_ _hd9052390603_))
                      (if (gx#stx-null? _tl9052490605_)
                          (if (gx#core-bind-values? _hd-bind90598_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90598_)
                                (_K90510_
                                 _rest90511_
                                 (cons _hd90509_ _r90512_)))
                              (_E9051590578_))
                          (_E9051590578_)))))
                (_E9051590578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9051590578_))
                                          (_E9051590578_))))
                                  (_E9051590578_)))))
                      (_E9051490610_))))
                 (_wrap-internal90353_
                  (lambda (_rbody90355_)
                    (let _lp90357_ ((_rest90359_ _rbody90355_)
                                    (_decls90360_ '())
                                    (_bind90361_ '())
                                    (_body90362_ '()))
                      (let* ((_e9036390370_ _rest90359_)
                             (_E9036590419_
                              (lambda ()
                                (let* ((_body90414_
                                        (let* ((_body9037390383_ _body90362_)
                                               (_else9037690391_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90362_)
                                                   (gx#stx-source
                                                    _stx90347_)))))
                                          (let ((_K9038190411_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx90347_)))
                                                (_K9037890397_
                                                 (lambda (_expr90395_)
                                                   _expr90395_)))
                                            (let ((_try-match9037590407_
                                                   (lambda ()
                                                     (if (##pair? _body9037390383_)
                                                         (let ((_tl9038090402_
                                                                (##cdr _body9037390383_))
                                                               (_hd9037990400_
                                                                (##car _body9037390383_)))
                                                           (if (##null? _tl9038090402_)
                                                               (let ((_expr90405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd9037990400_))
                         (_K9037890397_ _expr90405_))
                       (_else9037690391_)))
                 (_else9037690391_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body9037390383_)
                                                  (_K9038190411_)
                                                  (_try-match9037590407_))))))
                                       (_body90416_
                                        (if (null? _bind90361_)
                                            _body90414_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind90361_
                                                         (cons _body90414_
                                                               '())))
                                             (gx#stx-source _stx90347_)))))
                                  (if (null? _decls90360_)
                                      _body90416_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls90360_
                                                   (cons _body90416_ '())))
                                       (gx#stx-source _stx90347_))))))
                             (_E9036490505_
                              (lambda ()
                                (if (gx#stx-pair? _e9036390370_)
                                    (let ((_e9036690423_
                                           (gx#syntax-e _e9036390370_)))
                                      (let ((_hd9036790426_
                                             (##car _e9036690423_))
                                            (_tl9036890428_
                                             (##cdr _e9036690423_)))
                                        (let* ((_hd90431_ _hd9036790426_)
                                               (_rest90433_ _tl9036890428_))
                                          (if '#t
                                              (let* ((_e9043490451_ _hd90431_)
                                                     (_E9044690455_
                                                      (lambda ()
                                                        (if (null? _bind90361_)
                                                            (_lp90357_
                                                             _rest90433_
                                                             _decls90360_
                                                             _bind90361_
                                                             (cons _hd90431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body90362_))
                    (_lp90357_
                     _rest90433_
                     _decls90360_
                     (cons (cons '#f (cons _hd90431_ '())) _bind90361_)
                     _body90362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9043690469_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9043490451_)
                                                            (let ((_e9044790459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9043490451_)))
                      (let ((_hd9044890462_ (##car _e9044790459_))
                            (_tl9044990464_ (##cdr _e9044790459_)))
                        (if (and (gx#identifier? _hd9044890462_)
                                 (gx#core-identifier=?
                                  _hd9044890462_
                                  '%#declare))
                            (let ((_xdecls90467_ _tl9044990464_))
                              (if '#t
                                  (_lp90357_
                                   _rest90433_
                                   (gx#stx-foldr
                                    cons
                                    _decls90360_
                                    _xdecls90467_)
                                   _bind90361_
                                   _body90362_)
                                  (_E9044690455_)))
                            (_E9044690455_))))
                    (_E9044690455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9043590501_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9043490451_)
                                                            (let ((_e9043790473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9043490451_)))
                      (let ((_hd9043890476_ (##car _e9043790473_))
                            (_tl9043990478_ (##cdr _e9043790473_)))
                        (if (and (gx#identifier? _hd9043890476_)
                                 (gx#core-identifier=?
                                  _hd9043890476_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl9043990478_)
                                (let ((_e9044090481_
                                       (gx#syntax-e _tl9043990478_)))
                                  (let ((_hd9044190484_ (##car _e9044090481_))
                                        (_tl9044290486_ (##cdr _e9044090481_)))
                                    (let ((_hd-bind90489_ _hd9044190484_))
                                      (if (gx#stx-pair? _tl9044290486_)
                                          (let ((_e9044390491_
                                                 (gx#syntax-e _tl9044290486_)))
                                            (let ((_hd9044490494_
                                                   (##car _e9044390491_))
                                                  (_tl9044590496_
                                                   (##cdr _e9044390491_)))
                                              (let ((_expr90499_
                                                     _hd9044490494_))
                                                (if (gx#stx-null?
                                                     _tl9044590496_)
                                                    (if '#t
                                                        (_lp90357_
                                                         _rest90433_
                                                         _decls90360_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind90489_)
                             (cons (gx#core-expand-expression _expr90499_)
                                   '()))
                       _bind90361_)
                 _body90362_)
                (_E9043690469_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9043690469_)))))
                                          (_E9043690469_)))))
                                (_E9043690469_))
                            (_E9043690469_))))
                    (_E9043690469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9043590501_))
                                              (_E9036590419_)))))
                                    (_E9036590419_)))))
                        (_E9036490505_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body90348_)
            (gx#stx-source _stx90347_))
           _expand-special90350_))))
    (define gx#core-expand-declare%
      (lambda (_stx90285_)
        (let* ((_e9028690293_ _stx90285_)
               (_E9028890297_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9028690293_)))
               (_E9028790343_
                (lambda ()
                  (if (gx#stx-pair? _e9028690293_)
                      (let ((_e9028990301_ (gx#syntax-e _e9028690293_)))
                        (let ((_hd9029090304_ (##car _e9028990301_))
                              (_tl9029190306_ (##cdr _e9028990301_)))
                          (let ((_body90309_ _tl9029190306_))
                            (if (gx#stx-list? _body90309_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl90311_)
                                     (let* ((_e9031290319_ _decl90311_)
                                            (_E9031490323_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e9031290319_)))
                                            (_E9031390339_
                                             (lambda ()
                                               (if (gx#stx-pair? _e9031290319_)
                                                   (let ((_e9031590327_
                                                          (gx#syntax-e
                                                           _e9031290319_)))
                                                     (let ((_hd9031690330_
                                                            (##car _e9031590327_))
                                                           (_tl9031790332_
                                                            (##cdr _e9031590327_)))
                                                       (let* ((_head90335_
                                                               _hd9031690330_)
                                                              (_args90337_
                                                               _tl9031790332_))
                                                         (if (gx#stx-list?
                                                              _args90337_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl90311_)
                                                             (_E9031490323_)))))
                                                   (_E9031490323_)))))
                                       (_E9031390339_)))
                                   _body90309_))
                                 (gx#stx-source _stx90285_))
                                (_E9028890297_)))))
                      (_E9028890297_)))))
          (_E9028790343_))))
    (define gx#core-expand-extern%
      (lambda (_stx90189_)
        (let* ((_e9019090197_ _stx90189_)
               (_E9019290201_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9019090197_)))
               (_E9019190281_
                (lambda ()
                  (if (gx#stx-pair? _e9019090197_)
                      (let ((_e9019390205_ (gx#syntax-e _e9019090197_)))
                        (let ((_hd9019490208_ (##car _e9019390205_))
                              (_tl9019590210_ (##cdr _e9019390205_)))
                          (let ((_body90213_ _tl9019590210_))
                            (if '#t
                                (let _lp90215_ ((_rest90217_ _body90213_)
                                                (_r90218_ '()))
                                  (let* ((_e9021990233_ _rest90217_)
                                         (_E9023190237_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx90189_)))
                                         (_E9022190241_
                                          (lambda ()
                                            (if (gx#stx-null? _e9021990233_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r90218_))
                                                     (gx#stx-source
                                                      _stx90189_))
                                                    (_E9023190237_))
                                                (_E9023190237_))))
                                         (_E9022090277_
                                          (lambda ()
                                            (if (gx#stx-pair? _e9021990233_)
                                                (let ((_e9022290245_
                                                       (gx#syntax-e
                                                        _e9021990233_)))
                                                  (let ((_hd9022390248_
                                                         (##car _e9022290245_))
                                                        (_tl9022490250_
                                                         (##cdr _e9022290245_)))
                                                    (if (gx#stx-pair?
                                                         _hd9022390248_)
                                                        (let ((_e9022590253_
                                                               (gx#syntax-e
                                                                _hd9022390248_)))
                                                          (let ((_hd9022690256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9022590253_))
                        (_tl9022790258_ (##cdr _e9022590253_)))
                    (let ((_id90261_ _hd9022690256_))
                      (if (gx#stx-pair? _tl9022790258_)
                          (let ((_e9022890263_ (gx#syntax-e _tl9022790258_)))
                            (let ((_hd9022990266_ (##car _e9022890263_))
                                  (_tl9023090268_ (##cdr _e9022890263_)))
                              (let ((_eid90271_ _hd9022990266_))
                                (if (gx#stx-null? _tl9023090268_)
                                    (let ((_rest90273_ _tl9022490250_))
                                      (if (and (gx#identifier? _id90261_)
                                               (gx#identifier? _eid90271_))
                                          (let ((_eid90275_
                                                 (gx#stx-e _eid90271_)))
                                            (gx#core-bind-extern!__0
                                             _id90261_
                                             _eid90275_)
                                            (_lp90215_
                                             _rest90273_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id90261_)
                                                         (cons _eid90275_ '()))
                                                   _r90218_)))
                                          (_E9022190241_)))
                                    (_E9022190241_)))))
                          (_E9022190241_)))))
                (_E9022190241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9022190241_)))))
                                    (_E9022090277_)))
                                (_E9019290201_)))))
                      (_E9019290201_)))))
          (_E9019190281_))))
    (define gx#core-expand-define-values%
      (lambda (_stx90135_)
        (let* ((_e9013690149_ _stx90135_)
               (_E9013890153_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9013690149_)))
               (_E9013790185_
                (lambda ()
                  (if (gx#stx-pair? _e9013690149_)
                      (let ((_e9013990157_ (gx#syntax-e _e9013690149_)))
                        (let ((_hd9014090160_ (##car _e9013990157_))
                              (_tl9014190162_ (##cdr _e9013990157_)))
                          (if (gx#stx-pair? _tl9014190162_)
                              (let ((_e9014290165_
                                     (gx#syntax-e _tl9014190162_)))
                                (let ((_hd9014390168_ (##car _e9014290165_))
                                      (_tl9014490170_ (##cdr _e9014290165_)))
                                  (let ((_hd90173_ _hd9014390168_))
                                    (if (gx#stx-pair? _tl9014490170_)
                                        (let ((_e9014590175_
                                               (gx#syntax-e _tl9014490170_)))
                                          (let ((_hd9014690178_
                                                 (##car _e9014590175_))
                                                (_tl9014790180_
                                                 (##cdr _e9014590175_)))
                                            (let ((_expr90183_ _hd9014690178_))
                                              (if (gx#stx-null? _tl9014790180_)
                                                  (if (gx#core-bind-values?
                                                       _hd90173_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd90173_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd90173_)
                             (cons (gx#core-expand-expression _expr90183_)
                                   '())))
                 (gx#stx-source _stx90135_)))
              (_E9013890153_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9013890153_)))))
                                        (_E9013890153_)))))
                              (_E9013890153_))))
                      (_E9013890153_)))))
          (_E9013790185_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx90079_)
        (let* ((_e9008090093_ _stx90079_)
               (_E9008290097_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9008090093_)))
               (_E9008190131_
                (lambda ()
                  (if (gx#stx-pair? _e9008090093_)
                      (let ((_e9008390101_ (gx#syntax-e _e9008090093_)))
                        (let ((_hd9008490104_ (##car _e9008390101_))
                              (_tl9008590106_ (##cdr _e9008390101_)))
                          (if (gx#stx-pair? _tl9008590106_)
                              (let ((_e9008690109_
                                     (gx#syntax-e _tl9008590106_)))
                                (let ((_hd9008790112_ (##car _e9008690109_))
                                      (_tl9008890114_ (##cdr _e9008690109_)))
                                  (let ((_id90117_ _hd9008790112_))
                                    (if (gx#stx-pair? _tl9008890114_)
                                        (let ((_e9008990119_
                                               (gx#syntax-e _tl9008890114_)))
                                          (let ((_hd9009090122_
                                                 (##car _e9008990119_))
                                                (_tl9009190124_
                                                 (##cdr _e9008990119_)))
                                            (let ((_binding-id90127_
                                                   _hd9009090122_))
                                              (if (gx#stx-null? _tl9009190124_)
                                                  (if (and (gx#identifier?
                                                            _id90117_)
                                                           (gx#identifier?
                                                            _binding-id90127_))
                                                      (let ((_eid90129_
                                                             (gx#stx-e
                                                              _binding-id90127_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id90117_
                                                         _eid90129_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id90117_)
                             (cons _eid90129_ '())))))
              (_E9008290097_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9008290097_)))))
                                        (_E9008290097_)))))
                              (_E9008290097_))))
                      (_E9008290097_)))))
          (_E9008190131_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx90022_)
        (let* ((_e9002390036_ _stx90022_)
               (_E9002590040_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9002390036_)))
               (_E9002490075_
                (lambda ()
                  (if (gx#stx-pair? _e9002390036_)
                      (let ((_e9002690044_ (gx#syntax-e _e9002390036_)))
                        (let ((_hd9002790047_ (##car _e9002690044_))
                              (_tl9002890049_ (##cdr _e9002690044_)))
                          (if (gx#stx-pair? _tl9002890049_)
                              (let ((_e9002990052_
                                     (gx#syntax-e _tl9002890049_)))
                                (let ((_hd9003090055_ (##car _e9002990052_))
                                      (_tl9003190057_ (##cdr _e9002990052_)))
                                  (let ((_id90060_ _hd9003090055_))
                                    (if (gx#stx-pair? _tl9003190057_)
                                        (let ((_e9003290062_
                                               (gx#syntax-e _tl9003190057_)))
                                          (let ((_hd9003390065_
                                                 (##car _e9003290062_))
                                                (_tl9003490067_
                                                 (##cdr _e9003290062_)))
                                            (let ((_expr90070_ _hd9003390065_))
                                              (if (gx#stx-null? _tl9003490067_)
                                                  (if (gx#identifier?
                                                       _id90060_)
                                                      (let ((_g90981_
                                                             (gx#core-expand-expression+1
                                                              _expr90070_)))
                                                        (begin
                                                          (let ((_g90982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g90981_)
                             (##vector-length _g90981_)
                             1)))
                    (if (not (##fx= _g90982_ 2))
                        (error "Context expects 2 values" _g90982_)))
                  (let ((_e-stx90072_ (##vector-ref _g90981_ 0))
                        (_e90073_ (##vector-ref _g90981_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id90060_ _e90073_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id90060_)
                                   (cons _e-stx90072_ '())))
                       (gx#stx-source _stx90022_))))))
              (_E9002590040_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9002590040_)))))
                                        (_E9002590040_)))))
                              (_E9002590040_))))
                      (_E9002590040_)))))
          (_E9002490075_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx89966_)
        (let* ((_e8996789980_ _stx89966_)
               (_E8996989984_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8996789980_)))
               (_E8996890018_
                (lambda ()
                  (if (gx#stx-pair? _e8996789980_)
                      (let ((_e8997089988_ (gx#syntax-e _e8996789980_)))
                        (let ((_hd8997189991_ (##car _e8997089988_))
                              (_tl8997289993_ (##cdr _e8997089988_)))
                          (if (gx#stx-pair? _tl8997289993_)
                              (let ((_e8997389996_
                                     (gx#syntax-e _tl8997289993_)))
                                (let ((_hd8997489999_ (##car _e8997389996_))
                                      (_tl8997590001_ (##cdr _e8997389996_)))
                                  (let ((_id90004_ _hd8997489999_))
                                    (if (gx#stx-pair? _tl8997590001_)
                                        (let ((_e8997690006_
                                               (gx#syntax-e _tl8997590001_)))
                                          (let ((_hd8997790009_
                                                 (##car _e8997690006_))
                                                (_tl8997890011_
                                                 (##cdr _e8997690006_)))
                                            (let ((_alias-id90014_
                                                   _hd8997790009_))
                                              (if (gx#stx-null? _tl8997890011_)
                                                  (if (and (gx#identifier?
                                                            _id90004_)
                                                           (gx#identifier?
                                                            _alias-id90014_))
                                                      (let ((_alias-id90016_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id90014_)))
                                                        (gx#core-bind-alias!__0
                                                         _id90004_
                                                         _alias-id90016_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id90004_)
                             (cons _alias-id90016_ '())))))
              (_E8996989984_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8996989984_)))))
                                        (_E8996989984_)))))
                              (_E8996989984_))))
                      (_E8996989984_)))))
          (_E8996890018_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx89909_ _wrap?89910_)
        (let* ((_e8991189921_ _stx89909_)
               (_E8991389925_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8991189921_)))
               (_E8991289952_
                (lambda ()
                  (if (gx#stx-pair? _e8991189921_)
                      (let ((_e8991489929_ (gx#syntax-e _e8991189921_)))
                        (let ((_hd8991589932_ (##car _e8991489929_))
                              (_tl8991689934_ (##cdr _e8991489929_)))
                          (if (gx#stx-pair? _tl8991689934_)
                              (let ((_e8991789937_
                                     (gx#syntax-e _tl8991689934_)))
                                (let ((_hd8991889940_ (##car _e8991789937_))
                                      (_tl8991989942_ (##cdr _e8991789937_)))
                                  (let* ((_hd89945_ _hd8991889940_)
                                         (_body89947_ _tl8991989942_))
                                    (if (gx#core-bind-values? _hd89945_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd89945_)
                                           (let ((_body89950_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd89945_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx89909_
                                                               _body89947_)
                                                              '()))))
                                             (if _wrap?89910_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body89950_)
                                                  (gx#stx-source _stx89909_))
                                                 _body89950_)))
                                         gx#current-expander-context
                                         (let ((__obj90974
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj90974)
                                           __obj90974))
                                        (_E8991389925_)))))
                              (_E8991389925_))))
                      (_E8991389925_)))))
          (_E8991289952_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx89959_)
        (let ((_wrap?89961_ '#t))
          (gx#core-expand-lambda%__% _stx89959_ _wrap?89961_))))
    (define gx#core-expand-lambda%
      (lambda _g90984_
        (let ((_g90983_ (##length _g90984_)))
          (cond ((##fx= _g90983_ 1)
                 (apply (lambda (_stx89959_)
                          (gx#core-expand-lambda%__0 _stx89959_))
                        _g90984_))
                ((##fx= _g90983_ 2)
                 (apply (lambda (_stx89963_ _wrap?89964_)
                          (gx#core-expand-lambda%__% _stx89963_ _wrap?89964_))
                        _g90984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g90984_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx89873_)
        (let* ((_e8987489881_ _stx89873_)
               (_E8987689885_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8987489881_)))
               (_E8987589904_
                (lambda ()
                  (if (gx#stx-pair? _e8987489881_)
                      (let ((_e8987789889_ (gx#syntax-e _e8987489881_)))
                        (let ((_hd8987889892_ (##car _e8987789889_))
                              (_tl8987989894_ (##cdr _e8987789889_)))
                          (let ((_clauses89897_ _tl8987989894_))
                            (if (gx#stx-list? _clauses89897_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause89899_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause89899_)
                                       (let ((_$e89901_
                                              (gx#stx-source _clause89899_)))
                                         (if _$e89901_
                                             _$e89901_
                                             (gx#stx-source _stx89873_))))
                                      '#f))
                                   _clauses89897_))
                                 (gx#stx-source _stx89873_))
                                (_E8987689885_)))))
                      (_E8987689885_)))))
          (_E8987589904_))))
    (define gx#core-expand-let-values%
      (lambda (_stx89827_)
        (let* ((_e8982889838_ _stx89827_)
               (_E8983089842_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8982889838_)))
               (_E8982989869_
                (lambda ()
                  (if (gx#stx-pair? _e8982889838_)
                      (let ((_e8983189846_ (gx#syntax-e _e8982889838_)))
                        (let ((_hd8983289849_ (##car _e8983189846_))
                              (_tl8983389851_ (##cdr _e8983189846_)))
                          (if (gx#stx-pair? _tl8983389851_)
                              (let ((_e8983489854_
                                     (gx#syntax-e _tl8983389851_)))
                                (let ((_hd8983589857_ (##car _e8983489854_))
                                      (_tl8983689859_ (##cdr _e8983489854_)))
                                  (let* ((_hd89862_ _hd8983589857_)
                                         (_body89864_ _tl8983689859_))
                                    (if (gx#core-expand-let-bind? _hd89862_)
                                        (let ((_expressions89866_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd89862_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd89862_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd89862_
                                                           _expressions89866_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx89827_
                         _body89864_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx89827_)))
                                           gx#current-expander-context
                                           (let ((__obj90975
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj90975)
                                             __obj90975)))
                                        (_E8983089842_)))))
                              (_E8983089842_))))
                      (_E8983089842_)))))
          (_E8982989869_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx89772_ _form89773_)
        (let* ((_e8977489784_ _stx89772_)
               (_E8977689788_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8977489784_)))
               (_E8977589813_
                (lambda ()
                  (if (gx#stx-pair? _e8977489784_)
                      (let ((_e8977789792_ (gx#syntax-e _e8977489784_)))
                        (let ((_hd8977889795_ (##car _e8977789792_))
                              (_tl8977989797_ (##cdr _e8977789792_)))
                          (if (gx#stx-pair? _tl8977989797_)
                              (let ((_e8978089800_
                                     (gx#syntax-e _tl8977989797_)))
                                (let ((_hd8978189803_ (##car _e8978089800_))
                                      (_tl8978289805_ (##cdr _e8978089800_)))
                                  (let* ((_hd89808_ _hd8978189803_)
                                         (_body89810_ _tl8978289805_))
                                    (if (gx#core-expand-let-bind? _hd89808_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd89808_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form89773_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd89808_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd89808_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx89772_
                                                               _body89810_)
                                                              '())))
                                            (gx#stx-source _stx89772_)))
                                         gx#current-expander-context
                                         (let ((__obj90976
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj90976)
                                           __obj90976))
                                        (_E8977689788_)))))
                              (_E8977689788_))))
                      (_E8977689788_)))))
          (_E8977589813_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx89820_)
        (let ((_form89822_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx89820_ _form89822_))))
    (define gx#core-expand-letrec-values%
      (lambda _g90986_
        (let ((_g90985_ (##length _g90986_)))
          (cond ((##fx= _g90985_ 1)
                 (apply (lambda (_stx89820_)
                          (gx#core-expand-letrec-values%__0 _stx89820_))
                        _g90986_))
                ((##fx= _g90985_ 2)
                 (apply (lambda (_stx89824_ _form89825_)
                          (gx#core-expand-letrec-values%__%
                           _stx89824_
                           _form89825_))
                        _g90986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g90986_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx89769_)
        (gx#core-expand-letrec-values%__% _stx89769_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx89726_)
        (if (gx#stx-list? _stx89726_)
            (gx#stx-andmap
             (lambda (_bind89728_)
               (let* ((_e8972989739_ _bind89728_)
                      (_E8973189743_ (lambda () '#f))
                      (_E8973089765_
                       (lambda ()
                         (if (gx#stx-pair? _e8972989739_)
                             (let ((_e8973289747_ (gx#syntax-e _e8972989739_)))
                               (let ((_hd8973389750_ (##car _e8973289747_))
                                     (_tl8973489752_ (##cdr _e8973289747_)))
                                 (let ((_hd89755_ _hd8973389750_))
                                   (if (gx#stx-pair? _tl8973489752_)
                                       (let ((_e8973589757_
                                              (gx#syntax-e _tl8973489752_)))
                                         (let ((_hd8973689760_
                                                (##car _e8973589757_))
                                               (_tl8973789762_
                                                (##cdr _e8973589757_)))
                                           (if (gx#stx-null? _tl8973789762_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd89755_)
                                                   (_E8973189743_))
                                               (_E8973189743_))))
                                       (_E8973189743_)))))
                             (_E8973189743_)))))
                 (_E8973089765_)))
             _stx89726_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind89685_)
        (let* ((_e8968689696_ _bind89685_)
               (_E8968889700_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8968689696_)))
               (_E8968789722_
                (lambda ()
                  (if (gx#stx-pair? _e8968689696_)
                      (let ((_e8968989704_ (gx#syntax-e _e8968689696_)))
                        (let ((_hd8969089707_ (##car _e8968989704_))
                              (_tl8969189709_ (##cdr _e8968989704_)))
                          (if (gx#stx-pair? _tl8969189709_)
                              (let ((_e8969289712_
                                     (gx#syntax-e _tl8969189709_)))
                                (let ((_hd8969389715_ (##car _e8969289712_))
                                      (_tl8969489717_ (##cdr _e8969289712_)))
                                  (let ((_expr89720_ _hd8969389715_))
                                    (if (gx#stx-null? _tl8969489717_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89720_)
                                            (_E8968889700_))
                                        (_E8968889700_)))))
                              (_E8968889700_))))
                      (_E8968889700_)))))
          (_E8968789722_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind89644_)
        (let* ((_e8964589655_ _bind89644_)
               (_E8964789659_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8964589655_)))
               (_E8964689681_
                (lambda ()
                  (if (gx#stx-pair? _e8964589655_)
                      (let ((_e8964889663_ (gx#syntax-e _e8964589655_)))
                        (let ((_hd8964989666_ (##car _e8964889663_))
                              (_tl8965089668_ (##cdr _e8964889663_)))
                          (let ((_hd89671_ _hd8964989666_))
                            (if (gx#stx-pair? _tl8965089668_)
                                (let ((_e8965189673_
                                       (gx#syntax-e _tl8965089668_)))
                                  (let ((_hd8965289676_ (##car _e8965189673_))
                                        (_tl8965389678_ (##cdr _e8965189673_)))
                                    (if (gx#stx-null? _tl8965389678_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd89671_)
                                            (_E8964789659_))
                                        (_E8964789659_))))
                                (_E8964789659_)))))
                      (_E8964789659_)))))
          (_E8964689681_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind89602_ _expr89603_)
        (let* ((_e8960489614_ _bind89602_)
               (_E8960689618_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8960489614_)))
               (_E8960589640_
                (lambda ()
                  (if (gx#stx-pair? _e8960489614_)
                      (let ((_e8960789622_ (gx#syntax-e _e8960489614_)))
                        (let ((_hd8960889625_ (##car _e8960789622_))
                              (_tl8960989627_ (##cdr _e8960789622_)))
                          (let ((_hd89630_ _hd8960889625_))
                            (if (gx#stx-pair? _tl8960989627_)
                                (let ((_e8961089632_
                                       (gx#syntax-e _tl8960989627_)))
                                  (let ((_hd8961189635_ (##car _e8961089632_))
                                        (_tl8961289637_ (##cdr _e8961089632_)))
                                    (if (gx#stx-null? _tl8961289637_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd89630_)
                                                  (cons _expr89603_ '()))
                                            (_E8960689618_))
                                        (_E8960689618_))))
                                (_E8960689618_)))))
                      (_E8960689618_)))))
          (_E8960589640_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx89556_)
        (let* ((_e8955789567_ _stx89556_)
               (_E8955989571_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8955789567_)))
               (_E8955889598_
                (lambda ()
                  (if (gx#stx-pair? _e8955789567_)
                      (let ((_e8956089575_ (gx#syntax-e _e8955789567_)))
                        (let ((_hd8956189578_ (##car _e8956089575_))
                              (_tl8956289580_ (##cdr _e8956089575_)))
                          (if (gx#stx-pair? _tl8956289580_)
                              (let ((_e8956389583_
                                     (gx#syntax-e _tl8956289580_)))
                                (let ((_hd8956489586_ (##car _e8956389583_))
                                      (_tl8956589588_ (##cdr _e8956389583_)))
                                  (let* ((_hd89591_ _hd8956489586_)
                                         (_body89593_ _tl8956589588_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89591_)
                                        (let ((_expanders89595_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd89591_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd89591_
                                              _expanders89595_)
                                             (gx#core-expand-local-block
                                              _stx89556_
                                              _body89593_))
                                           gx#current-expander-context
                                           (let ((__obj90977
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj90977)
                                             __obj90977)))
                                        (_E8955989571_)))))
                              (_E8955989571_))))
                      (_E8955989571_)))))
          (_E8955889598_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx89505_)
        (let* ((_e8950689516_ _stx89505_)
               (_E8950889520_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8950689516_)))
               (_E8950789552_
                (lambda ()
                  (if (gx#stx-pair? _e8950689516_)
                      (let ((_e8950989524_ (gx#syntax-e _e8950689516_)))
                        (let ((_hd8951089527_ (##car _e8950989524_))
                              (_tl8951189529_ (##cdr _e8950989524_)))
                          (if (gx#stx-pair? _tl8951189529_)
                              (let ((_e8951289532_
                                     (gx#syntax-e _tl8951189529_)))
                                (let ((_hd8951389535_ (##car _e8951289532_))
                                      (_tl8951489537_ (##cdr _e8951289532_)))
                                  (let* ((_hd89540_ _hd8951389535_)
                                         (_body89542_ _tl8951489537_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89540_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd89540_
                                            (make-list
                                             (gx#stx-length _hd89540_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8954489547_
                                                     _g8954589549_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8954489547_
                                               _g8954589549_
                                               '#t))
                                            _hd89540_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd89540_))
                                           (gx#core-expand-local-block
                                            _stx89505_
                                            _body89542_))
                                         gx#current-expander-context
                                         (let ((__obj90978
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj90978)
                                           __obj90978))
                                        (_E8950889520_)))))
                              (_E8950889520_))))
                      (_E8950889520_)))))
          (_E8950789552_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx89462_)
        (if (gx#stx-list? _stx89462_)
            (gx#stx-andmap
             (lambda (_bind89464_)
               (let* ((_e8946589475_ _bind89464_)
                      (_E8946789479_ (lambda () '#f))
                      (_E8946689501_
                       (lambda ()
                         (if (gx#stx-pair? _e8946589475_)
                             (let ((_e8946889483_ (gx#syntax-e _e8946589475_)))
                               (let ((_hd8946989486_ (##car _e8946889483_))
                                     (_tl8947089488_ (##cdr _e8946889483_)))
                                 (let ((_hd89491_ _hd8946989486_))
                                   (if (gx#stx-pair? _tl8947089488_)
                                       (let ((_e8947189493_
                                              (gx#syntax-e _tl8947089488_)))
                                         (let ((_hd8947289496_
                                                (##car _e8947189493_))
                                               (_tl8947389498_
                                                (##cdr _e8947189493_)))
                                           (if (gx#stx-null? _tl8947389498_)
                                               (if '#t
                                                   (gx#identifier? _hd89491_)
                                                   (_E8946789479_))
                                               (_E8946789479_))))
                                       (_E8946789479_)))))
                             (_E8946789479_)))))
                 (_E8946689501_)))
             _stx89462_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind89419_)
        (let* ((_e8942089430_ _bind89419_)
               (_E8942289434_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8942089430_)))
               (_E8942189458_
                (lambda ()
                  (if (gx#stx-pair? _e8942089430_)
                      (let ((_e8942389438_ (gx#syntax-e _e8942089430_)))
                        (let ((_hd8942489441_ (##car _e8942389438_))
                              (_tl8942589443_ (##cdr _e8942389438_)))
                          (if (gx#stx-pair? _tl8942589443_)
                              (let ((_e8942689446_
                                     (gx#syntax-e _tl8942589443_)))
                                (let ((_hd8942789449_ (##car _e8942689446_))
                                      (_tl8942889451_ (##cdr _e8942689446_)))
                                  (let ((_expr89454_ _hd8942789449_))
                                    (if (gx#stx-null? _tl8942889451_)
                                        (if '#t
                                            (let ((_g90987_
                                                   (gx#core-expand-expression+1
                                                    _expr89454_)))
                                              (begin
                                                (let ((_g90988_
                                                       (if (##values? _g90987_)
                                                           (##vector-length
                                                            _g90987_)
                                                           1)))
                                                  (if (not (##fx= _g90988_ 2))
                                                      (error "Context expects 2 values"
                                                             _g90988_)))
                                                (let ((_e89456_
                                                       (##vector-ref
                                                        _g90987_
                                                        1)))
                                                  _e89456_)))
                                            (_E8942289434_))
                                        (_E8942289434_)))))
                              (_E8942289434_))))
                      (_E8942289434_)))))
          (_E8942189458_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind89364_ _e89365_ _rebind?89366_)
        (let* ((_e8936789377_ _bind89364_)
               (_E8936989381_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8936789377_)))
               (_E8936889403_
                (lambda ()
                  (if (gx#stx-pair? _e8936789377_)
                      (let ((_e8937089385_ (gx#syntax-e _e8936789377_)))
                        (let ((_hd8937189388_ (##car _e8937089385_))
                              (_tl8937289390_ (##cdr _e8937089385_)))
                          (let ((_id89393_ _hd8937189388_))
                            (if (gx#stx-pair? _tl8937289390_)
                                (let ((_e8937389395_
                                       (gx#syntax-e _tl8937289390_)))
                                  (let ((_hd8937489398_ (##car _e8937389395_))
                                        (_tl8937589400_ (##cdr _e8937389395_)))
                                    (if (gx#stx-null? _tl8937589400_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id89393_
                                             _e89365_
                                             _rebind?89366_)
                                            (_E8936989381_))
                                        (_E8936989381_))))
                                (_E8936989381_)))))
                      (_E8936989381_)))))
          (_E8936889403_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind89410_ _e89411_)
        (let ((_rebind?89413_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind89410_
           _e89411_
           _rebind?89413_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g90990_
        (let ((_g90989_ (##length _g90990_)))
          (cond ((##fx= _g90989_ 2)
                 (apply (lambda (_bind89410_ _e89411_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind89410_
                           _e89411_))
                        _g90990_))
                ((##fx= _g90989_ 3)
                 (apply (lambda (_bind89415_ _e89416_ _rebind?89417_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind89415_
                           _e89416_
                           _rebind?89417_))
                        _g90990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g90990_))))))
    (define gx#core-expand-expression%
      (lambda (_stx89322_)
        (let* ((_e8932389333_ _stx89322_)
               (_E8932589337_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8932389333_)))
               (_E8932489359_
                (lambda ()
                  (if (gx#stx-pair? _e8932389333_)
                      (let ((_e8932689341_ (gx#syntax-e _e8932389333_)))
                        (let ((_hd8932789344_ (##car _e8932689341_))
                              (_tl8932889346_ (##cdr _e8932689341_)))
                          (if (gx#stx-pair? _tl8932889346_)
                              (let ((_e8932989349_
                                     (gx#syntax-e _tl8932889346_)))
                                (let ((_hd8933089352_ (##car _e8932989349_))
                                      (_tl8933189354_ (##cdr _e8932989349_)))
                                  (let ((_expr89357_ _hd8933089352_))
                                    (if (gx#stx-null? _tl8933189354_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89357_)
                                            (_E8932589337_))
                                        (_E8932589337_)))))
                              (_E8932589337_))))
                      (_E8932589337_)))))
          (_E8932489359_))))
    (define gx#core-expand-quote%
      (lambda (_stx89281_)
        (let* ((_e8928289292_ _stx89281_)
               (_E8928489296_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8928289292_)))
               (_E8928389318_
                (lambda ()
                  (if (gx#stx-pair? _e8928289292_)
                      (let ((_e8928589300_ (gx#syntax-e _e8928289292_)))
                        (let ((_hd8928689303_ (##car _e8928589300_))
                              (_tl8928789305_ (##cdr _e8928589300_)))
                          (if (gx#stx-pair? _tl8928789305_)
                              (let ((_e8928889308_
                                     (gx#syntax-e _tl8928789305_)))
                                (let ((_hd8928989311_ (##car _e8928889308_))
                                      (_tl8929089313_ (##cdr _e8928889308_)))
                                  (let ((_e89316_ _hd8928989311_))
                                    (if (gx#stx-null? _tl8929089313_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e89316_)
                                                         '()))
                                             (gx#stx-source _stx89281_))
                                            (_E8928489296_))
                                        (_E8928489296_)))))
                              (_E8928489296_))))
                      (_E8928489296_)))))
          (_E8928389318_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx89240_)
        (let* ((_e8924189251_ _stx89240_)
               (_E8924389255_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8924189251_)))
               (_E8924289277_
                (lambda ()
                  (if (gx#stx-pair? _e8924189251_)
                      (let ((_e8924489259_ (gx#syntax-e _e8924189251_)))
                        (let ((_hd8924589262_ (##car _e8924489259_))
                              (_tl8924689264_ (##cdr _e8924489259_)))
                          (if (gx#stx-pair? _tl8924689264_)
                              (let ((_e8924789267_
                                     (gx#syntax-e _tl8924689264_)))
                                (let ((_hd8924889270_ (##car _e8924789267_))
                                      (_tl8924989272_ (##cdr _e8924789267_)))
                                  (let ((_e89275_ _hd8924889270_))
                                    (if (gx#stx-null? _tl8924989272_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e89275_)
                                                         '()))
                                             (gx#stx-source _stx89240_))
                                            (_E8924389255_))
                                        (_E8924389255_)))))
                              (_E8924389255_))))
                      (_E8924389255_)))))
          (_E8924289277_))))
    (define gx#core-expand-call%
      (lambda (_stx89197_)
        (let* ((_e8919889208_ _stx89197_)
               (_E8920089212_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8919889208_)))
               (_E8919989236_
                (lambda ()
                  (if (gx#stx-pair? _e8919889208_)
                      (let ((_e8920189216_ (gx#syntax-e _e8919889208_)))
                        (let ((_hd8920289219_ (##car _e8920189216_))
                              (_tl8920389221_ (##cdr _e8920189216_)))
                          (if (gx#stx-pair? _tl8920389221_)
                              (let ((_e8920489224_
                                     (gx#syntax-e _tl8920389221_)))
                                (let ((_hd8920589227_ (##car _e8920489224_))
                                      (_tl8920689229_ (##cdr _e8920489224_)))
                                  (let* ((_rator89232_ _hd8920589227_)
                                         (_args89234_ _tl8920689229_))
                                    (if (gx#stx-list? _args89234_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator89232_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args89234_))
                                         (gx#stx-source _stx89197_))
                                        (_E8920089212_)))))
                              (_E8920089212_))))
                      (_E8920089212_)))))
          (_E8919989236_))))
    (define gx#core-expand-if%
      (lambda (_stx89130_)
        (let* ((_e8913189147_ _stx89130_)
               (_E8913389151_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8913189147_)))
               (_E8913289193_
                (lambda ()
                  (if (gx#stx-pair? _e8913189147_)
                      (let ((_e8913489155_ (gx#syntax-e _e8913189147_)))
                        (let ((_hd8913589158_ (##car _e8913489155_))
                              (_tl8913689160_ (##cdr _e8913489155_)))
                          (if (gx#stx-pair? _tl8913689160_)
                              (let ((_e8913789163_
                                     (gx#syntax-e _tl8913689160_)))
                                (let ((_hd8913889166_ (##car _e8913789163_))
                                      (_tl8913989168_ (##cdr _e8913789163_)))
                                  (let ((_test89171_ _hd8913889166_))
                                    (if (gx#stx-pair? _tl8913989168_)
                                        (let ((_e8914089173_
                                               (gx#syntax-e _tl8913989168_)))
                                          (let ((_hd8914189176_
                                                 (##car _e8914089173_))
                                                (_tl8914289178_
                                                 (##cdr _e8914089173_)))
                                            (let ((_K89181_ _hd8914189176_))
                                              (if (gx#stx-pair? _tl8914289178_)
                                                  (let ((_e8914389183_
                                                         (gx#syntax-e
                                                          _tl8914289178_)))
                                                    (let ((_hd8914489186_
                                                           (##car _e8914389183_))
                                                          (_tl8914589188_
                                                           (##cdr _e8914389183_)))
                                                      (let ((_E89191_
                                                             _hd8914489186_))
                                                        (if (gx#stx-null?
                                                             _tl8914589188_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test89171_)
                                     (cons (gx#core-expand-expression _K89181_)
                                           (cons (gx#core-expand-expression
                                                  _E89191_)
                                                 '()))))
                         (gx#stx-source _stx89130_))
                        (_E8913389151_))
                    (_E8913389151_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8913389151_)))))
                                        (_E8913389151_)))))
                              (_E8913389151_))))
                      (_E8913389151_)))))
          (_E8913289193_))))
    (define gx#core-expand-ref%
      (lambda (_stx89089_)
        (let* ((_e8909089100_ _stx89089_)
               (_E8909289104_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8909089100_)))
               (_E8909189126_
                (lambda ()
                  (if (gx#stx-pair? _e8909089100_)
                      (let ((_e8909389108_ (gx#syntax-e _e8909089100_)))
                        (let ((_hd8909489111_ (##car _e8909389108_))
                              (_tl8909589113_ (##cdr _e8909389108_)))
                          (if (gx#stx-pair? _tl8909589113_)
                              (let ((_e8909689116_
                                     (gx#syntax-e _tl8909589113_)))
                                (let ((_hd8909789119_ (##car _e8909689116_))
                                      (_tl8909889121_ (##cdr _e8909689116_)))
                                  (let ((_id89124_ _hd8909789119_))
                                    (if (gx#stx-null? _tl8909889121_)
                                        (if (gx#identifier? _id89124_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id89124_
                                                          _stx89089_)
                                                         '()))
                                             (gx#stx-source _stx89089_))
                                            (_E8909289104_))
                                        (_E8909289104_)))))
                              (_E8909289104_))))
                      (_E8909289104_)))))
          (_E8909189126_))))
    (define gx#core-expand-setq%
      (lambda (_stx89035_)
        (let* ((_e8903689049_ _stx89035_)
               (_E8903889053_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8903689049_)))
               (_E8903789085_
                (lambda ()
                  (if (gx#stx-pair? _e8903689049_)
                      (let ((_e8903989057_ (gx#syntax-e _e8903689049_)))
                        (let ((_hd8904089060_ (##car _e8903989057_))
                              (_tl8904189062_ (##cdr _e8903989057_)))
                          (if (gx#stx-pair? _tl8904189062_)
                              (let ((_e8904289065_
                                     (gx#syntax-e _tl8904189062_)))
                                (let ((_hd8904389068_ (##car _e8904289065_))
                                      (_tl8904489070_ (##cdr _e8904289065_)))
                                  (let ((_id89073_ _hd8904389068_))
                                    (if (gx#stx-pair? _tl8904489070_)
                                        (let ((_e8904589075_
                                               (gx#syntax-e _tl8904489070_)))
                                          (let ((_hd8904689078_
                                                 (##car _e8904589075_))
                                                (_tl8904789080_
                                                 (##cdr _e8904589075_)))
                                            (let ((_expr89083_ _hd8904689078_))
                                              (if (gx#stx-null? _tl8904789080_)
                                                  (if (gx#identifier?
                                                       _id89073_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id89073_
                            _stx89035_)
                           (cons (gx#core-expand-expression _expr89083_) '())))
               (gx#stx-source _stx89035_))
              (_E8903889053_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8903889053_)))))
                                        (_E8903889053_)))))
                              (_E8903889053_))))
                      (_E8903889053_)))))
          (_E8903789085_))))
    (define gx#macro-expand-extern
      (lambda (_stx88883_)
        (letrec ((_generate88885_
                  (lambda (_body88915_)
                    (let _lp88917_ ((_rest88919_ _body88915_)
                                    (_ns88920_ (gx#core-context-namespace__0))
                                    (_r88921_ '()))
                      (let* ((_e8892288937_ _rest88919_)
                             (_E8893588941_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8892288937_)))
                             (_E8893188945_
                              (lambda ()
                                (if (gx#stx-null? _e8892288937_)
                                    (if '#t (reverse _r88921_) (_E8893588941_))
                                    (_E8893588941_))))
                             (_E8892489002_
                              (lambda ()
                                (if (gx#stx-pair? _e8892288937_)
                                    (let ((_e8893288949_
                                           (gx#syntax-e _e8892288937_)))
                                      (let ((_hd8893388952_
                                             (##car _e8893288949_))
                                            (_tl8893488954_
                                             (##cdr _e8893288949_)))
                                        (let* ((_hd88957_ _hd8893388952_)
                                               (_rest88959_ _tl8893488954_))
                                          (if '#t
                                              (if (gx#identifier? _hd88957_)
                                                  (_lp88917_
                                                   _rest88959_
                                                   _ns88920_
                                                   (cons (cons _hd88957_
                                                               (cons (if _ns88920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd88957_
                                  _ns88920_
                                  '"#"
                                  _hd88957_)
                                 _hd88957_)
                             '()))
                 _r88921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8896088970_
                                                          _hd88957_)
                                                         (_E8896288974_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8896088970_)))
                                                         (_E8896188998_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8896088970_)
                        (let ((_e8896388978_ (gx#syntax-e _e8896088970_)))
                          (let ((_hd8896488981_ (##car _e8896388978_))
                                (_tl8896588983_ (##cdr _e8896388978_)))
                            (let ((_id88986_ _hd8896488981_))
                              (if (gx#stx-pair? _tl8896588983_)
                                  (let ((_e8896688988_
                                         (gx#syntax-e _tl8896588983_)))
                                    (let ((_hd8896788991_
                                           (##car _e8896688988_))
                                          (_tl8896888993_
                                           (##cdr _e8896688988_)))
                                      (let ((_eid88996_ _hd8896788991_))
                                        (if (gx#stx-null? _tl8896888993_)
                                            (if (and (gx#identifier? _id88986_)
                                                     (gx#identifier?
                                                      _eid88996_))
                                                (_lp88917_
                                                 _rest88959_
                                                 _ns88920_
                                                 (cons (cons _id88986_
                                                             (cons _eid88996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r88921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8896288974_))
                                            (_E8896288974_)))))
                                  (_E8896288974_)))))
                        (_E8896288974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8896188998_)))
                                              (_E8893188945_)))))
                                    (_E8893188945_))))
                             (_E8892389031_
                              (lambda ()
                                (if (gx#stx-pair? _e8892288937_)
                                    (let ((_e8892589006_
                                           (gx#syntax-e _e8892288937_)))
                                      (let ((_hd8892689009_
                                             (##car _e8892589006_))
                                            (_tl8892789011_
                                             (##cdr _e8892589006_)))
                                        (if (eq? (gx#stx-e _hd8892689009_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8892789011_)
                                                (let ((_e8892889014_
                                                       (gx#syntax-e
                                                        _tl8892789011_)))
                                                  (let ((_hd8892989017_
                                                         (##car _e8892889014_))
                                                        (_tl8893089019_
                                                         (##cdr _e8892889014_)))
                                                    (let* ((_ns89022_
                                                            _hd8892989017_)
                                                           (_rest89024_
                                                            _tl8893089019_))
                                                      (if '#t
                                                          (let ((_ns89029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns89022_)
                             (symbol->string (gx#stx-e _ns89022_))
                             (if (or (gx#stx-string? _ns89022_)
                                     (gx#stx-false? _ns89022_))
                                 (gx#stx-e _ns89022_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx88883_
                                  _ns89022_)))))
                    (_lp88917_ _rest89024_ _ns89029_ _r88921_))
                  (_E8892489002_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8892489002_))
                                            (_E8892489002_))))
                                    (_E8892489002_)))))
                        (_E8892389031_))))))
          (let* ((_e8888688893_ _stx88883_)
                 (_E8888888897_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8888688893_)))
                 (_E8888788911_
                  (lambda ()
                    (if (gx#stx-pair? _e8888688893_)
                        (let ((_e8888988901_ (gx#syntax-e _e8888688893_)))
                          (let ((_hd8889088904_ (##car _e8888988901_))
                                (_tl8889188906_ (##cdr _e8888988901_)))
                            (let ((_body88909_ _tl8889188906_))
                              (if (gx#stx-list? _body88909_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate88885_ _body88909_))
                                  (_E8888888897_)))))
                        (_E8888888897_)))))
            (_E8888788911_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx88829_)
        (let* ((_e8883088843_ _stx88829_)
               (_E8883288847_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8883088843_)))
               (_E8883188879_
                (lambda ()
                  (if (gx#stx-pair? _e8883088843_)
                      (let ((_e8883388851_ (gx#syntax-e _e8883088843_)))
                        (let ((_hd8883488854_ (##car _e8883388851_))
                              (_tl8883588856_ (##cdr _e8883388851_)))
                          (if (gx#stx-pair? _tl8883588856_)
                              (let ((_e8883688859_
                                     (gx#syntax-e _tl8883588856_)))
                                (let ((_hd8883788862_ (##car _e8883688859_))
                                      (_tl8883888864_ (##cdr _e8883688859_)))
                                  (let ((_hd88867_ _hd8883788862_))
                                    (if (gx#stx-pair? _tl8883888864_)
                                        (let ((_e8883988869_
                                               (gx#syntax-e _tl8883888864_)))
                                          (let ((_hd8884088872_
                                                 (##car _e8883988869_))
                                                (_tl8884188874_
                                                 (##cdr _e8883988869_)))
                                            (let ((_expr88877_ _hd8884088872_))
                                              (if (gx#stx-null? _tl8884188874_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd88867_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd88867_)
                          (cons _expr88877_ '())))
              (_E8883288847_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8883288847_)))))
                                        (_E8883288847_)))))
                              (_E8883288847_))))
                      (_E8883288847_)))))
          (_E8883188879_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx88775_)
        (let* ((_e8877688789_ _stx88775_)
               (_E8877888793_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8877688789_)))
               (_E8877788825_
                (lambda ()
                  (if (gx#stx-pair? _e8877688789_)
                      (let ((_e8877988797_ (gx#syntax-e _e8877688789_)))
                        (let ((_hd8878088800_ (##car _e8877988797_))
                              (_tl8878188802_ (##cdr _e8877988797_)))
                          (if (gx#stx-pair? _tl8878188802_)
                              (let ((_e8878288805_
                                     (gx#syntax-e _tl8878188802_)))
                                (let ((_hd8878388808_ (##car _e8878288805_))
                                      (_tl8878488810_ (##cdr _e8878288805_)))
                                  (let ((_hd88813_ _hd8878388808_))
                                    (if (gx#stx-pair? _tl8878488810_)
                                        (let ((_e8878588815_
                                               (gx#syntax-e _tl8878488810_)))
                                          (let ((_hd8878688818_
                                                 (##car _e8878588815_))
                                                (_tl8878788820_
                                                 (##cdr _e8878588815_)))
                                            (let ((_expr88823_ _hd8878688818_))
                                              (if (gx#stx-null? _tl8878788820_)
                                                  (if (gx#identifier?
                                                       _hd88813_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd88813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr88823_ '())))
              (_E8877888793_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8877888793_)))))
                                        (_E8877888793_)))))
                              (_E8877888793_))))
                      (_E8877888793_)))))
          (_E8877788825_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx88721_)
        (let* ((_e8872288735_ _stx88721_)
               (_E8872488739_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8872288735_)))
               (_E8872388771_
                (lambda ()
                  (if (gx#stx-pair? _e8872288735_)
                      (let ((_e8872588743_ (gx#syntax-e _e8872288735_)))
                        (let ((_hd8872688746_ (##car _e8872588743_))
                              (_tl8872788748_ (##cdr _e8872588743_)))
                          (if (gx#stx-pair? _tl8872788748_)
                              (let ((_e8872888751_
                                     (gx#syntax-e _tl8872788748_)))
                                (let ((_hd8872988754_ (##car _e8872888751_))
                                      (_tl8873088756_ (##cdr _e8872888751_)))
                                  (let ((_id88759_ _hd8872988754_))
                                    (if (gx#stx-pair? _tl8873088756_)
                                        (let ((_e8873188761_
                                               (gx#syntax-e _tl8873088756_)))
                                          (let ((_hd8873288764_
                                                 (##car _e8873188761_))
                                                (_tl8873388766_
                                                 (##cdr _e8873188761_)))
                                            (let ((_alias-id88769_
                                                   _hd8873288764_))
                                              (if (gx#stx-null? _tl8873388766_)
                                                  (if (and (gx#identifier?
                                                            _id88759_)
                                                           (gx#identifier?
                                                            _alias-id88769_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id88759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id88769_ '())))
              (_E8872488739_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8872488739_)))))
                                        (_E8872488739_)))))
                              (_E8872488739_))))
                      (_E8872488739_)))))
          (_E8872388771_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx88678_)
        (let* ((_e8867988689_ _stx88678_)
               (_E8868188693_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8867988689_)))
               (_E8868088717_
                (lambda ()
                  (if (gx#stx-pair? _e8867988689_)
                      (let ((_e8868288697_ (gx#syntax-e _e8867988689_)))
                        (let ((_hd8868388700_ (##car _e8868288697_))
                              (_tl8868488702_ (##cdr _e8868288697_)))
                          (if (gx#stx-pair? _tl8868488702_)
                              (let ((_e8868588705_
                                     (gx#syntax-e _tl8868488702_)))
                                (let ((_hd8868688708_ (##car _e8868588705_))
                                      (_tl8868788710_ (##cdr _e8868588705_)))
                                  (let* ((_hd88713_ _hd8868688708_)
                                         (_body88715_ _tl8868788710_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd88713_)
                                             (gx#stx-list? _body88715_)
                                             (not (gx#stx-null? _body88715_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd88713_)
                                         _body88715_)
                                        (_E8868188693_)))))
                              (_E8868188693_))))
                      (_E8868188693_)))))
          (_E8868088717_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx88614_)
        (letrec ((_generate88616_
                  (lambda (_clause88646_)
                    (let* ((_e8864788654_ _clause88646_)
                           (_E8864988658_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx88614_
                               _clause88646_)))
                           (_E8864888674_
                            (lambda ()
                              (if (gx#stx-pair? _e8864788654_)
                                  (let ((_e8865088662_
                                         (gx#syntax-e _e8864788654_)))
                                    (let ((_hd8865188665_
                                           (##car _e8865088662_))
                                          (_tl8865288667_
                                           (##cdr _e8865088662_)))
                                      (let* ((_hd88670_ _hd8865188665_)
                                             (_body88672_ _tl8865288667_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd88670_)
                                                 (gx#stx-list? _body88672_)
                                                 (not (gx#stx-null?
                                                       _body88672_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd88670_)
                                                   _body88672_)
                                             (gx#stx-source _clause88646_))
                                            (_E8864988658_)))))
                                  (_E8864988658_)))))
                      (_E8864888674_)))))
          (let* ((_e8861788624_ _stx88614_)
                 (_E8861988628_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8861788624_)))
                 (_E8861888642_
                  (lambda ()
                    (if (gx#stx-pair? _e8861788624_)
                        (let ((_e8862088632_ (gx#syntax-e _e8861788624_)))
                          (let ((_hd8862188635_ (##car _e8862088632_))
                                (_tl8862288637_ (##cdr _e8862088632_)))
                            (let ((_clauses88640_ _tl8862288637_))
                              (if (gx#stx-list? _clauses88640_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate88616_
                                    _clauses88640_))
                                  (_E8861988628_)))))
                        (_E8861988628_)))))
            (_E8861888642_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx88515_ _form88516_)
        (letrec ((_generate88518_
                  (lambda (_bind88561_)
                    (let* ((_e8856288572_ _bind88561_)
                           (_E8856488576_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx88515_
                               _bind88561_)))
                           (_E8856388600_
                            (lambda ()
                              (if (gx#stx-pair? _e8856288572_)
                                  (let ((_e8856588580_
                                         (gx#syntax-e _e8856288572_)))
                                    (let ((_hd8856688583_
                                           (##car _e8856588580_))
                                          (_tl8856788585_
                                           (##cdr _e8856588580_)))
                                      (let ((_ids88588_ _hd8856688583_))
                                        (if (gx#stx-pair? _tl8856788585_)
                                            (let ((_e8856888590_
                                                   (gx#syntax-e
                                                    _tl8856788585_)))
                                              (let ((_hd8856988593_
                                                     (##car _e8856888590_))
                                                    (_tl8857088595_
                                                     (##cdr _e8856888590_)))
                                                (let ((_expr88598_
                                                       _hd8856988593_))
                                                  (if (gx#stx-null?
                                                       _tl8857088595_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids88588_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids88588_)
                        (cons _expr88598_ '()))
                  (_E8856488576_))
              (_E8856488576_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8856488576_)))))
                                  (_E8856488576_)))))
                      (_E8856388600_)))))
          (let* ((_e8851988529_ _stx88515_)
                 (_E8852188533_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8851988529_)))
                 (_E8852088557_
                  (lambda ()
                    (if (gx#stx-pair? _e8851988529_)
                        (let ((_e8852288537_ (gx#syntax-e _e8851988529_)))
                          (let ((_hd8852388540_ (##car _e8852288537_))
                                (_tl8852488542_ (##cdr _e8852288537_)))
                            (if (gx#stx-pair? _tl8852488542_)
                                (let ((_e8852588545_
                                       (gx#syntax-e _tl8852488542_)))
                                  (let ((_hd8852688548_ (##car _e8852588545_))
                                        (_tl8852788550_ (##cdr _e8852588545_)))
                                    (let* ((_hd88553_ _hd8852688548_)
                                           (_body88555_ _tl8852788550_))
                                      (if (and (gx#stx-list? _hd88553_)
                                               (gx#stx-list? _body88555_)
                                               (not (gx#stx-null?
                                                     _body88555_)))
                                          (gx#core-cons*
                                           _form88516_
                                           (gx#stx-map1
                                            _generate88518_
                                            _hd88553_)
                                           _body88555_)
                                          (_E8852188533_)))))
                                (_E8852188533_))))
                        (_E8852188533_)))))
            (_E8852088557_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx88607_)
        (let ((_form88609_ '%#let-values))
          (gx#macro-expand-let-values__% _stx88607_ _form88609_))))
    (define gx#macro-expand-let-values
      (lambda _g90992_
        (let ((_g90991_ (##length _g90992_)))
          (cond ((##fx= _g90991_ 1)
                 (apply (lambda (_stx88607_)
                          (gx#macro-expand-let-values__0 _stx88607_))
                        _g90992_))
                ((##fx= _g90991_ 2)
                 (apply (lambda (_stx88611_ _form88612_)
                          (gx#macro-expand-let-values__%
                           _stx88611_
                           _form88612_))
                        _g90992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g90992_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx88512_)
        (gx#macro-expand-let-values__% _stx88512_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx88510_)
        (gx#macro-expand-let-values__% _stx88510_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx88401_)
        (let* ((_e8840288428_ _stx88401_)
               (_E8841488432_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8840288428_)))
               (_E8840488474_
                (lambda ()
                  (if (gx#stx-pair? _e8840288428_)
                      (let ((_e8841588436_ (gx#syntax-e _e8840288428_)))
                        (let ((_hd8841688439_ (##car _e8841588436_))
                              (_tl8841788441_ (##cdr _e8841588436_)))
                          (if (gx#stx-pair? _tl8841788441_)
                              (let ((_e8841888444_
                                     (gx#syntax-e _tl8841788441_)))
                                (let ((_hd8841988447_ (##car _e8841888444_))
                                      (_tl8842088449_ (##cdr _e8841888444_)))
                                  (let ((_test88452_ _hd8841988447_))
                                    (if (gx#stx-pair? _tl8842088449_)
                                        (let ((_e8842188454_
                                               (gx#syntax-e _tl8842088449_)))
                                          (let ((_hd8842288457_
                                                 (##car _e8842188454_))
                                                (_tl8842388459_
                                                 (##cdr _e8842188454_)))
                                            (let ((_K88462_ _hd8842288457_))
                                              (if (gx#stx-pair? _tl8842388459_)
                                                  (let ((_e8842488464_
                                                         (gx#syntax-e
                                                          _tl8842388459_)))
                                                    (let ((_hd8842588467_
                                                           (##car _e8842488464_))
                                                          (_tl8842688469_
                                                           (##cdr _e8842488464_)))
                                                      (let ((_E88472_
                                                             _hd8842588467_))
                                                        (if (gx#stx-null?
                                                             _tl8842688469_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test88452_
                         _K88462_
                         _E88472_)
                        (_E8841488432_))
                    (_E8841488432_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8841488432_)))))
                                        (_E8841488432_)))))
                              (_E8841488432_))))
                      (_E8841488432_))))
               (_E8840388506_
                (lambda ()
                  (if (gx#stx-pair? _e8840288428_)
                      (let ((_e8840588478_ (gx#syntax-e _e8840288428_)))
                        (let ((_hd8840688481_ (##car _e8840588478_))
                              (_tl8840788483_ (##cdr _e8840588478_)))
                          (if (gx#stx-pair? _tl8840788483_)
                              (let ((_e8840888486_
                                     (gx#syntax-e _tl8840788483_)))
                                (let ((_hd8840988489_ (##car _e8840888486_))
                                      (_tl8841088491_ (##cdr _e8840888486_)))
                                  (let ((_test88494_ _hd8840988489_))
                                    (if (gx#stx-pair? _tl8841088491_)
                                        (let ((_e8841188496_
                                               (gx#syntax-e _tl8841088491_)))
                                          (let ((_hd8841288499_
                                                 (##car _e8841188496_))
                                                (_tl8841388501_
                                                 (##cdr _e8841188496_)))
                                            (let ((_K88504_ _hd8841288499_))
                                              (if (gx#stx-null? _tl8841388501_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test88494_
                                                       _K88504_
                                                       '#!void)
                                                      (_E8840488474_))
                                                  (_E8840488474_)))))
                                        (_E8840488474_)))))
                              (_E8840488474_))))
                      (_E8840488474_)))))
          (_E8840388506_))))
    (define gx#free-identifier=?
      (lambda (_xid88389_ _yid88390_)
        (let ((_xe88392_ (gx#resolve-identifier__0 _xid88389_))
              (_ye88393_ (gx#resolve-identifier__0 _yid88390_)))
          (if (and _xe88392_ _ye88393_)
              (let ((_$e88395_ (eq? _xe88392_ _ye88393_)))
                (if _$e88395_
                    _$e88395_
                    (if (##structure-instance-of? _xe88392_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye88393_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe88392_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye88393_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe88392_ _ye88393_)
                  '#f
                  (gx#stx-eq? _xid88389_ _yid88390_))))))
    (define gx#bound-identifier=?
      (lambda (_xid88373_ _yid88374_)
        (letrec ((_context88376_
                  (lambda (_e88387_)
                    (if (##structure-direct-instance-of?
                         _e88387_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e88387_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks88377_
                  (lambda (_e88385_)
                    (if (symbol? _e88385_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e88385_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e88385_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e88385_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap88378_
                  (lambda (_e88383_)
                    (if (symbol? _e88383_)
                        _e88383_
                        (gx#syntax-local-unwrap _e88383_)))))
          (let ((_x88380_ (_unwrap88378_ _xid88373_))
                (_y88381_ (_unwrap88378_ _yid88374_)))
            (if (gx#stx-eq? _x88380_ _y88381_)
                (if (eq? (_context88376_ _x88380_) (_context88376_ _y88381_))
                    (equal? (_marks88377_ _x88380_) (_marks88377_ _y88381_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx88371_)
        (if (gx#identifier? _stx88371_)
            (gx#core-identifier=? _stx88371_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx88369_)
        (if (gx#identifier? _stx88369_)
            (gx#core-identifier=? _stx88369_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x88367_)
        (if (gx#identifier? _x88367_)
            (if (not (gx#underscore? _x88367_)) _x88367_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx88313_ _where88314_)
        (let _lp88316_ ((_rest88318_ (gx#syntax->list _stx88313_)))
          (let* ((_rest8831988327_ _rest88318_)
                 (_else8832188335_ (lambda () '#t))
                 (_K8832388345_
                  (lambda (_rest88338_ _hd88339_)
                    (if (not (gx#identifier? _hd88339_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where88314_
                         _hd88339_)
                        (if (find (lambda (_g8834088342_)
                                    (gx#bound-identifier=?
                                     _g8834088342_
                                     _hd88339_))
                                  _rest88338_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where88314_
                             _hd88339_)
                            (_lp88316_ _rest88338_))))))
            (if (##pair? _rest8831988327_)
                (let ((_hd8832488348_ (##car _rest8831988327_))
                      (_tl8832588350_ (##cdr _rest8831988327_)))
                  (let* ((_hd88353_ _hd8832488348_)
                         (_rest88355_ _tl8832588350_))
                    (_K8832388345_ _rest88355_ _hd88353_)))
                (_else8832188335_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx88360_)
        (let ((_where88362_ _stx88360_))
          (gx#check-duplicate-identifiers__% _stx88360_ _where88362_))))
    (define gx#check-duplicate-identifiers
      (lambda _g90994_
        (let ((_g90993_ (##length _g90994_)))
          (cond ((##fx= _g90993_ 1)
                 (apply (lambda (_stx88360_)
                          (gx#check-duplicate-identifiers__0 _stx88360_))
                        _g90994_))
                ((##fx= _g90993_ 2)
                 (apply (lambda (_stx88364_ _where88365_)
                          (gx#check-duplicate-identifiers__%
                           _stx88364_
                           _where88365_))
                        _g90994_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g90994_))))))
    (define gx#core-bind-values?
      (lambda (_stx88305_)
        (gx#stx-andmap
         (lambda (_x88307_)
           (let ((_$e88309_ (gx#identifier? _x88307_)))
             (if _$e88309_ _$e88309_ (gx#stx-false? _x88307_))))
         _stx88305_)))
    (define gx#core-bind-values!__%
      (lambda (_stx88269_ _rebind?88270_ _phi88271_ _ctx88272_)
        (gx#stx-for-each1
         (lambda (_id88274_)
           (if (gx#identifier? _id88274_)
               (gx#core-bind-runtime!__%
                _id88274_
                _rebind?88270_
                _phi88271_
                _ctx88272_)
               '#!void))
         _stx88269_)))
    (define gx#core-bind-values!__0
      (lambda (_stx88279_)
        (let* ((_rebind?88281_ '#f)
               (_phi88283_ (gx#current-expander-phi))
               (_ctx88285_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88279_
           _rebind?88281_
           _phi88283_
           _ctx88285_))))
    (define gx#core-bind-values!__1
      (lambda (_stx88287_ _rebind?88288_)
        (let* ((_phi88290_ (gx#current-expander-phi))
               (_ctx88292_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88287_
           _rebind?88288_
           _phi88290_
           _ctx88292_))))
    (define gx#core-bind-values!__2
      (lambda (_stx88294_ _rebind?88295_ _phi88296_)
        (let ((_ctx88298_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88294_
           _rebind?88295_
           _phi88296_
           _ctx88298_))))
    (define gx#core-bind-values!
      (lambda _g90996_
        (let ((_g90995_ (##length _g90996_)))
          (cond ((##fx= _g90995_ 1)
                 (apply (lambda (_stx88279_)
                          (gx#core-bind-values!__0 _stx88279_))
                        _g90996_))
                ((##fx= _g90995_ 2)
                 (apply (lambda (_stx88287_ _rebind?88288_)
                          (gx#core-bind-values!__1 _stx88287_ _rebind?88288_))
                        _g90996_))
                ((##fx= _g90995_ 3)
                 (apply (lambda (_stx88294_ _rebind?88295_ _phi88296_)
                          (gx#core-bind-values!__2
                           _stx88294_
                           _rebind?88295_
                           _phi88296_))
                        _g90996_))
                ((##fx= _g90995_ 4)
                 (apply (lambda (_stx88300_
                                 _rebind?88301_
                                 _phi88302_
                                 _ctx88303_)
                          (gx#core-bind-values!__%
                           _stx88300_
                           _rebind?88301_
                           _phi88302_
                           _ctx88303_))
                        _g90996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g90996_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx88264_)
        (gx#stx-map1
         (lambda (_x88266_)
           (if (gx#identifier? _x88266_)
               (gx#core-quote-syntax__0 _x88266_)
               '#f))
         _stx88264_)))
    (define gx#core-runtime-ref?
      (lambda (_stx88257_)
        (if (gx#identifier? _stx88257_)
            (let* ((_bind88259_ (gx#resolve-identifier__0 _stx88257_))
                   (_$e88261_ (not _bind88259_)))
              (if _$e88261_
                  _$e88261_
                  (##structure-instance-of?
                   _bind88259_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id88249_ _form88250_)
        (let ((_bind88252_ (gx#resolve-identifier__0 _id88249_)))
          (if (##structure-instance-of? _bind88252_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id88249_)
              (if (not _bind88252_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id88249_)))
                      (gx#core-quote-syntax__0 _id88249_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form88250_
                       _id88249_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form88250_
                   _id88249_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id88208_ _rebind?88209_ _phi88210_ _ctx88211_)
        (let* ((_key88213_ (gx#core-identifier-key _id88208_))
               (_eid88215_
                (gx#make-binding-id__% _key88213_ '#f _phi88210_ _ctx88211_))
               (_bind88217_
                (if (##structure-instance-of? _ctx88211_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid88215_
                     _key88213_
                     _phi88210_
                     _ctx88211_)
                    (if (##structure-instance-of?
                         _ctx88211_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid88215_
                         _key88213_
                         _phi88210_)
                        (if (##structure-instance-of?
                             _ctx88211_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid88215_
                             _key88213_
                             _phi88210_)
                            (##structure
                             gx#runtime-binding::t
                             _eid88215_
                             _key88213_
                             _phi88210_))))))
          (gx#bind-identifier!__%
           _id88208_
           _bind88217_
           _rebind?88209_
           _phi88210_
           _ctx88211_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id88223_)
        (let* ((_rebind?88225_ '#f)
               (_phi88227_ (gx#current-expander-phi))
               (_ctx88229_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88223_
           _rebind?88225_
           _phi88227_
           _ctx88229_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id88231_ _rebind?88232_)
        (let* ((_phi88234_ (gx#current-expander-phi))
               (_ctx88236_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88231_
           _rebind?88232_
           _phi88234_
           _ctx88236_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id88238_ _rebind?88239_ _phi88240_)
        (let ((_ctx88242_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88238_
           _rebind?88239_
           _phi88240_
           _ctx88242_))))
    (define gx#core-bind-runtime!
      (lambda _g90998_
        (let ((_g90997_ (##length _g90998_)))
          (cond ((##fx= _g90997_ 1)
                 (apply (lambda (_id88223_)
                          (gx#core-bind-runtime!__0 _id88223_))
                        _g90998_))
                ((##fx= _g90997_ 2)
                 (apply (lambda (_id88231_ _rebind?88232_)
                          (gx#core-bind-runtime!__1 _id88231_ _rebind?88232_))
                        _g90998_))
                ((##fx= _g90997_ 3)
                 (apply (lambda (_id88238_ _rebind?88239_ _phi88240_)
                          (gx#core-bind-runtime!__2
                           _id88238_
                           _rebind?88239_
                           _phi88240_))
                        _g90998_))
                ((##fx= _g90997_ 4)
                 (apply (lambda (_id88244_
                                 _rebind?88245_
                                 _phi88246_
                                 _ctx88247_)
                          (gx#core-bind-runtime!__%
                           _id88244_
                           _rebind?88245_
                           _phi88246_
                           _ctx88247_))
                        _g90998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g90998_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id88163_ _eid88164_ _rebind?88165_ _phi88166_ _ctx88167_)
        (let* ((_key88169_ (gx#core-identifier-key _id88163_))
               (_bind88171_
                (if (##structure-instance-of? _ctx88167_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid88164_
                     _key88169_
                     _phi88166_
                     _ctx88167_)
                    (if (##structure-instance-of?
                         _ctx88167_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid88164_
                         _key88169_
                         _phi88166_)
                        (##structure
                         gx#runtime-binding::t
                         _eid88164_
                         _key88169_
                         _phi88166_)))))
          (gx#bind-identifier!__%
           _id88163_
           _bind88171_
           _rebind?88165_
           _phi88166_
           _ctx88167_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id88177_ _eid88178_)
        (let* ((_rebind?88180_ '#f)
               (_phi88182_ (gx#current-expander-phi))
               (_ctx88184_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88177_
           _eid88178_
           _rebind?88180_
           _phi88182_
           _ctx88184_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id88186_ _eid88187_ _rebind?88188_)
        (let* ((_phi88190_ (gx#current-expander-phi))
               (_ctx88192_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88186_
           _eid88187_
           _rebind?88188_
           _phi88190_
           _ctx88192_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id88194_ _eid88195_ _rebind?88196_ _phi88197_)
        (let ((_ctx88199_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88194_
           _eid88195_
           _rebind?88196_
           _phi88197_
           _ctx88199_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g91000_
        (let ((_g90999_ (##length _g91000_)))
          (cond ((##fx= _g90999_ 2)
                 (apply (lambda (_id88177_ _eid88178_)
                          (gx#core-bind-runtime-reference!__0
                           _id88177_
                           _eid88178_))
                        _g91000_))
                ((##fx= _g90999_ 3)
                 (apply (lambda (_id88186_ _eid88187_ _rebind?88188_)
                          (gx#core-bind-runtime-reference!__1
                           _id88186_
                           _eid88187_
                           _rebind?88188_))
                        _g91000_))
                ((##fx= _g90999_ 4)
                 (apply (lambda (_id88194_
                                 _eid88195_
                                 _rebind?88196_
                                 _phi88197_)
                          (gx#core-bind-runtime-reference!__2
                           _id88194_
                           _eid88195_
                           _rebind?88196_
                           _phi88197_))
                        _g91000_))
                ((##fx= _g90999_ 5)
                 (apply (lambda (_id88201_
                                 _eid88202_
                                 _rebind?88203_
                                 _phi88204_
                                 _ctx88205_)
                          (gx#core-bind-runtime-reference!__%
                           _id88201_
                           _eid88202_
                           _rebind?88203_
                           _phi88204_
                           _ctx88205_))
                        _g91000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g91000_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id88123_ _eid88124_ _rebind?88125_ _phi88126_ _ctx88127_)
        (gx#bind-identifier!__%
         _id88123_
         (##structure
          gx#extern-binding::t
          _eid88124_
          (gx#core-identifier-key _id88123_)
          _phi88126_)
         _rebind?88125_
         _phi88126_
         _ctx88127_)))
    (define gx#core-bind-extern!__0
      (lambda (_id88132_ _eid88133_)
        (let* ((_rebind?88135_ '#f)
               (_phi88137_ (gx#current-expander-phi))
               (_ctx88139_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88132_
           _eid88133_
           _rebind?88135_
           _phi88137_
           _ctx88139_))))
    (define gx#core-bind-extern!__1
      (lambda (_id88141_ _eid88142_ _rebind?88143_)
        (let* ((_phi88145_ (gx#current-expander-phi))
               (_ctx88147_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88141_
           _eid88142_
           _rebind?88143_
           _phi88145_
           _ctx88147_))))
    (define gx#core-bind-extern!__2
      (lambda (_id88149_ _eid88150_ _rebind?88151_ _phi88152_)
        (let ((_ctx88154_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88149_
           _eid88150_
           _rebind?88151_
           _phi88152_
           _ctx88154_))))
    (define gx#core-bind-extern!
      (lambda _g91002_
        (let ((_g91001_ (##length _g91002_)))
          (cond ((##fx= _g91001_ 2)
                 (apply (lambda (_id88132_ _eid88133_)
                          (gx#core-bind-extern!__0 _id88132_ _eid88133_))
                        _g91002_))
                ((##fx= _g91001_ 3)
                 (apply (lambda (_id88141_ _eid88142_ _rebind?88143_)
                          (gx#core-bind-extern!__1
                           _id88141_
                           _eid88142_
                           _rebind?88143_))
                        _g91002_))
                ((##fx= _g91001_ 4)
                 (apply (lambda (_id88149_
                                 _eid88150_
                                 _rebind?88151_
                                 _phi88152_)
                          (gx#core-bind-extern!__2
                           _id88149_
                           _eid88150_
                           _rebind?88151_
                           _phi88152_))
                        _g91002_))
                ((##fx= _g91001_ 5)
                 (apply (lambda (_id88156_
                                 _eid88157_
                                 _rebind?88158_
                                 _phi88159_
                                 _ctx88160_)
                          (gx#core-bind-extern!__%
                           _id88156_
                           _eid88157_
                           _rebind?88158_
                           _phi88159_
                           _ctx88160_))
                        _g91002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g91002_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id88077_ _e88078_ _rebind?88079_ _phi88080_ _ctx88081_)
        (gx#bind-identifier!__%
         _id88077_
         (let ((_key88086_ (gx#core-identifier-key _id88077_))
               (_e88087_
                (if (or (##structure-instance-of? _e88078_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e88078_
                         'gx#expander-context::t))
                    _e88078_
                    (##structure
                     gx#user-expander::t
                     _e88078_
                     _ctx88081_
                     _phi88080_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key88086_ '#t _phi88080_ _ctx88081_)
            _key88086_
            _phi88080_
            _e88087_))
         _rebind?88079_
         _phi88080_
         _ctx88081_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id88092_ _e88093_)
        (let* ((_rebind?88095_ '#f)
               (_phi88097_ (gx#current-expander-phi))
               (_ctx88099_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88092_
           _e88093_
           _rebind?88095_
           _phi88097_
           _ctx88099_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id88101_ _e88102_ _rebind?88103_)
        (let* ((_phi88105_ (gx#current-expander-phi))
               (_ctx88107_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88101_
           _e88102_
           _rebind?88103_
           _phi88105_
           _ctx88107_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id88109_ _e88110_ _rebind?88111_ _phi88112_)
        (let ((_ctx88114_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88109_
           _e88110_
           _rebind?88111_
           _phi88112_
           _ctx88114_))))
    (define gx#core-bind-syntax!
      (lambda _g91004_
        (let ((_g91003_ (##length _g91004_)))
          (cond ((##fx= _g91003_ 2)
                 (apply (lambda (_id88092_ _e88093_)
                          (gx#core-bind-syntax!__0 _id88092_ _e88093_))
                        _g91004_))
                ((##fx= _g91003_ 3)
                 (apply (lambda (_id88101_ _e88102_ _rebind?88103_)
                          (gx#core-bind-syntax!__1
                           _id88101_
                           _e88102_
                           _rebind?88103_))
                        _g91004_))
                ((##fx= _g91003_ 4)
                 (apply (lambda (_id88109_ _e88110_ _rebind?88111_ _phi88112_)
                          (gx#core-bind-syntax!__2
                           _id88109_
                           _e88110_
                           _rebind?88111_
                           _phi88112_))
                        _g91004_))
                ((##fx= _g91003_ 5)
                 (apply (lambda (_id88116_
                                 _e88117_
                                 _rebind?88118_
                                 _phi88119_
                                 _ctx88120_)
                          (gx#core-bind-syntax!__%
                           _id88116_
                           _e88117_
                           _rebind?88118_
                           _phi88119_
                           _ctx88120_))
                        _g91004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g91004_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id88060_ _e88061_ _rebind?88062_)
        (gx#core-bind-syntax!__%
         _id88060_
         _e88061_
         _rebind?88062_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id88067_ _e88068_)
        (let ((_rebind?88070_ '#f))
          (gx#core-bind-root-syntax!__% _id88067_ _e88068_ _rebind?88070_))))
    (define gx#core-bind-root-syntax!
      (lambda _g91006_
        (let ((_g91005_ (##length _g91006_)))
          (cond ((##fx= _g91005_ 2)
                 (apply (lambda (_id88067_ _e88068_)
                          (gx#core-bind-root-syntax!__0 _id88067_ _e88068_))
                        _g91006_))
                ((##fx= _g91005_ 3)
                 (apply (lambda (_id88072_ _e88073_ _rebind?88074_)
                          (gx#core-bind-root-syntax!__%
                           _id88072_
                           _e88073_
                           _rebind?88074_))
                        _g91006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g91006_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id88018_ _alias-id88019_ _rebind?88020_ _phi88021_ _ctx88022_)
        (gx#bind-identifier!__%
         _id88018_
         (let ((_key88024_ (gx#core-identifier-key _id88018_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key88024_ '#t _phi88021_ _ctx88022_)
            _key88024_
            _phi88021_
            _alias-id88019_))
         _rebind?88020_
         _phi88021_
         _ctx88022_)))
    (define gx#core-bind-alias!__0
      (lambda (_id88029_ _alias-id88030_)
        (let* ((_rebind?88032_ '#f)
               (_phi88034_ (gx#current-expander-phi))
               (_ctx88036_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88029_
           _alias-id88030_
           _rebind?88032_
           _phi88034_
           _ctx88036_))))
    (define gx#core-bind-alias!__1
      (lambda (_id88038_ _alias-id88039_ _rebind?88040_)
        (let* ((_phi88042_ (gx#current-expander-phi))
               (_ctx88044_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88038_
           _alias-id88039_
           _rebind?88040_
           _phi88042_
           _ctx88044_))))
    (define gx#core-bind-alias!__2
      (lambda (_id88046_ _alias-id88047_ _rebind?88048_ _phi88049_)
        (let ((_ctx88051_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88046_
           _alias-id88047_
           _rebind?88048_
           _phi88049_
           _ctx88051_))))
    (define gx#core-bind-alias!
      (lambda _g91008_
        (let ((_g91007_ (##length _g91008_)))
          (cond ((##fx= _g91007_ 2)
                 (apply (lambda (_id88029_ _alias-id88030_)
                          (gx#core-bind-alias!__0 _id88029_ _alias-id88030_))
                        _g91008_))
                ((##fx= _g91007_ 3)
                 (apply (lambda (_id88038_ _alias-id88039_ _rebind?88040_)
                          (gx#core-bind-alias!__1
                           _id88038_
                           _alias-id88039_
                           _rebind?88040_))
                        _g91008_))
                ((##fx= _g91007_ 4)
                 (apply (lambda (_id88046_
                                 _alias-id88047_
                                 _rebind?88048_
                                 _phi88049_)
                          (gx#core-bind-alias!__2
                           _id88046_
                           _alias-id88047_
                           _rebind?88048_
                           _phi88049_))
                        _g91008_))
                ((##fx= _g91007_ 5)
                 (apply (lambda (_id88053_
                                 _alias-id88054_
                                 _rebind?88055_
                                 _phi88056_
                                 _ctx88057_)
                          (gx#core-bind-alias!__%
                           _id88053_
                           _alias-id88054_
                           _rebind?88055_
                           _phi88056_
                           _ctx88057_))
                        _g91008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g91008_))))))
    (define gx#make-binding-id__%
      (lambda (_key87975_ _syntax?87976_ _phi87977_ _ctx87978_)
        (if (uninterned-symbol? _key87975_)
            (gensym 'L)
            (if (pair? _key87975_)
                (gensym (car _key87975_))
                (if (##structure-instance-of? _ctx87978_ 'gx#top-context::t)
                    (let ((_ns87980_
                           (gx#core-context-namespace__% _ctx87978_)))
                      (if (and (fxzero? _phi87977_) (not _syntax?87976_))
                          (if _ns87980_
                              (make-symbol__1 _ns87980_ '"#" _key87975_)
                              _key87975_)
                          (if _syntax?87976_
                              (make-symbol__1
                               (let ((_$e87982_ _ns87980_))
                                 (if _$e87982_ _$e87982_ '""))
                               '"[:"
                               (number->string _phi87977_)
                               '":]#"
                               _key87975_)
                              (make-symbol__1
                               (let ((_$e87985_ _ns87980_))
                                 (if _$e87985_ _$e87985_ '""))
                               '"["
                               (number->string _phi87977_)
                               '"]#"
                               _key87975_))))
                    (gensym _key87975_))))))
    (define gx#make-binding-id__0
      (lambda (_key87991_)
        (let* ((_syntax?87993_ '#f)
               (_phi87995_ (gx#current-expander-phi))
               (_ctx87997_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key87991_
           _syntax?87993_
           _phi87995_
           _ctx87997_))))
    (define gx#make-binding-id__1
      (lambda (_key87999_ _syntax?88000_)
        (let* ((_phi88002_ (gx#current-expander-phi))
               (_ctx88004_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key87999_
           _syntax?88000_
           _phi88002_
           _ctx88004_))))
    (define gx#make-binding-id__2
      (lambda (_key88006_ _syntax?88007_ _phi88008_)
        (let ((_ctx88010_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88006_
           _syntax?88007_
           _phi88008_
           _ctx88010_))))
    (define gx#make-binding-id
      (lambda _g91010_
        (let ((_g91009_ (##length _g91010_)))
          (cond ((##fx= _g91009_ 1)
                 (apply (lambda (_key87991_)
                          (gx#make-binding-id__0 _key87991_))
                        _g91010_))
                ((##fx= _g91009_ 2)
                 (apply (lambda (_key87999_ _syntax?88000_)
                          (gx#make-binding-id__1 _key87999_ _syntax?88000_))
                        _g91010_))
                ((##fx= _g91009_ 3)
                 (apply (lambda (_key88006_ _syntax?88007_ _phi88008_)
                          (gx#make-binding-id__2
                           _key88006_
                           _syntax?88007_
                           _phi88008_))
                        _g91010_))
                ((##fx= _g91009_ 4)
                 (apply (lambda (_key88012_
                                 _syntax?88013_
                                 _phi88014_
                                 _ctx88015_)
                          (gx#make-binding-id__%
                           _key88012_
                           _syntax?88013_
                           _phi88014_
                           _ctx88015_))
                        _g91010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g91010_))))))))
