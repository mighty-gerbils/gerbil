(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707555133)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx147839_)
        (letrec ((_expand-special147841_
                  (lambda (_hd147843_ _K147844_ _rest147845_ _r147846_)
                    (_K147844_
                     _rest147845_
                     (cons (gx#core-expand-top _hd147843_) _r147846_)))))
          (gx#core-expand-block__0 _stx147839_ _expand-special147841_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx147592_)
        (letrec ((_expand-special147594_
                  (lambda (_hd147714_ _K147715_ _rest147716_ _r147717_)
                    (let* ((_K147721_
                            (lambda (_e147719_)
                              (_K147715_
                               _rest147716_
                               (cons _e147719_ _r147717_))))
                           (_e147722147751_ _hd147714_)
                           (_E147746147755_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e147722147751_)))
                           (_E147742147767_
                            (lambda ()
                              (if (gx#stx-pair? _e147722147751_)
                                  (let ((_e147747147759_
                                         (gx#syntax-e _e147722147751_)))
                                    (let ((_hd147748147762_
                                           (##car _e147747147759_))
                                          (_tl147749147764_
                                           (##cdr _e147747147759_)))
                                      (if (and (gx#identifier?
                                                _hd147748147762_)
                                               (gx#core-identifier=?
                                                _hd147748147762_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K147721_
                                               (gx#core-expand-define-runtime%
                                                _hd147714_))
                                              (_E147746147755_))
                                          (_E147746147755_))))
                                  (_E147746147755_))))
                           (_E147738147779_
                            (lambda ()
                              (if (gx#stx-pair? _e147722147751_)
                                  (let ((_e147743147771_
                                         (gx#syntax-e _e147722147751_)))
                                    (let ((_hd147744147774_
                                           (##car _e147743147771_))
                                          (_tl147745147776_
                                           (##cdr _e147743147771_)))
                                      (if (and (gx#identifier?
                                                _hd147744147774_)
                                               (gx#core-identifier=?
                                                _hd147744147774_
                                                '%#define-alias))
                                          (if '#t
                                              (_K147721_
                                               (gx#core-expand-define-alias%
                                                _hd147714_))
                                              (_E147742147767_))
                                          (_E147742147767_))))
                                  (_E147742147767_))))
                           (_E147728147791_
                            (lambda ()
                              (if (gx#stx-pair? _e147722147751_)
                                  (let ((_e147739147783_
                                         (gx#syntax-e _e147722147751_)))
                                    (let ((_hd147740147786_
                                           (##car _e147739147783_))
                                          (_tl147741147788_
                                           (##cdr _e147739147783_)))
                                      (if (and (gx#identifier?
                                                _hd147740147786_)
                                               (gx#core-identifier=?
                                                _hd147740147786_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K147721_
                                               (gx#core-expand-define-syntax%
                                                _hd147714_))
                                              (_E147738147779_))
                                          (_E147738147779_))))
                                  (_E147738147779_))))
                           (_E147724147823_
                            (lambda ()
                              (if (gx#stx-pair? _e147722147751_)
                                  (let ((_e147729147795_
                                         (gx#syntax-e _e147722147751_)))
                                    (let ((_hd147730147798_
                                           (##car _e147729147795_))
                                          (_tl147731147800_
                                           (##cdr _e147729147795_)))
                                      (if (and (gx#identifier?
                                                _hd147730147798_)
                                               (gx#core-identifier=?
                                                _hd147730147798_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl147731147800_)
                                              (let ((_e147732147803_
                                                     (gx#syntax-e
                                                      _tl147731147800_)))
                                                (let ((_hd147733147806_
                                                       (##car _e147732147803_))
                                                      (_tl147734147808_
                                                       (##cdr _e147732147803_)))
                                                  (let ((_hd-bind147811_
                                                         _hd147733147806_))
                                                    (if (gx#stx-pair?
                                                         _tl147734147808_)
                                                        (let ((_e147735147813_
                                                               (gx#syntax-e
                                                                _tl147734147808_)))
                                                          (let ((_hd147736147816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147735147813_))
                        (_tl147737147818_ (##cdr _e147735147813_)))
                    (let ((_expr147821_ _hd147736147816_))
                      (if (gx#stx-null? _tl147737147818_)
                          (if (gx#core-bind-values? _hd-bind147811_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind147811_)
                                (_K147721_ _hd147714_))
                              (_E147728147791_))
                          (_E147728147791_)))))
                (_E147728147791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147728147791_))
                                          (_E147728147791_))))
                                  (_E147728147791_))))
                           (_E147723147835_
                            (lambda ()
                              (if (gx#stx-pair? _e147722147751_)
                                  (let ((_e147725147827_
                                         (gx#syntax-e _e147722147751_)))
                                    (let ((_hd147726147830_
                                           (##car _e147725147827_))
                                          (_tl147727147832_
                                           (##cdr _e147725147827_)))
                                      (if (and (gx#identifier?
                                                _hd147726147830_)
                                               (gx#core-identifier=?
                                                _hd147726147830_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K147721_
                                               (gx#core-expand-begin-syntax%
                                                _hd147714_))
                                              (_E147724147823_))
                                          (_E147724147823_))))
                                  (_E147724147823_)))))
                      (_E147723147835_))))
                 (_eval-body147595_
                  (lambda (_rbody147603_)
                    (let _lp147605_ ((_rest147607_ _rbody147603_)
                                     (_body147608_ '())
                                     (_ebody147609_ '()))
                      (let* ((_rest147610147618_ _rest147607_)
                             (_else147612147626_
                              (lambda ()
                                (values _body147608_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody147609_)
                                          (gx#stx-source _stx147592_))))))
                             (_K147614147702_
                              (lambda (_rest147629_ _hd147630_)
                                (let* ((_e147631147648_ _hd147630_)
                                       (_E147643147652_
                                        (lambda ()
                                          (_lp147605_
                                           _rest147629_
                                           (cons _hd147630_ _body147608_)
                                           (cons _hd147630_ _ebody147609_))))
                                       (_E147633147664_
                                        (lambda ()
                                          (if (gx#stx-pair? _e147631147648_)
                                              (let ((_e147644147656_
                                                     (gx#syntax-e
                                                      _e147631147648_)))
                                                (let ((_hd147645147659_
                                                       (##car _e147644147656_))
                                                      (_tl147646147661_
                                                       (##cdr _e147644147656_)))
                                                  (if (and (gx#identifier?
                                                            _hd147645147659_)
                                                           (gx#core-identifier=?
                                                            _hd147645147659_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp147605_
                                                           _rest147629_
                                                           (cons _hd147630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body147608_)
                   _ebody147609_)
                  (_E147643147652_))
              (_E147643147652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147643147652_))))
                                       (_E147632147698_
                                        (lambda ()
                                          (if (gx#stx-pair? _e147631147648_)
                                              (let ((_e147634147668_
                                                     (gx#syntax-e
                                                      _e147631147648_)))
                                                (let ((_hd147635147671_
                                                       (##car _e147634147668_))
                                                      (_tl147636147673_
                                                       (##cdr _e147634147668_)))
                                                  (if (and (gx#identifier?
                                                            _hd147635147671_)
                                                           (gx#core-identifier=?
                                                            _hd147635147671_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl147636147673_)
                                                          (let ((_e147637147676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl147636147673_)))
                    (let ((_hd147638147679_ (##car _e147637147676_))
                          (_tl147639147681_ (##cdr _e147637147676_)))
                      (let ((_hd-bind147684_ _hd147638147679_))
                        (if (gx#stx-pair? _tl147639147681_)
                            (let ((_e147640147686_
                                   (gx#syntax-e _tl147639147681_)))
                              (let ((_hd147641147689_ (##car _e147640147686_))
                                    (_tl147642147691_ (##cdr _e147640147686_)))
                                (let ((_expr147694_ _hd147641147689_))
                                  (if (gx#stx-null? _tl147642147691_)
                                      (if '#t
                                          (let ((_ehd147696_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind147684_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr147694_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd147630_))))
                                            (_lp147605_
                                             _rest147629_
                                             (cons _ehd147696_ _body147608_)
                                             (cons _ehd147696_ _ebody147609_)))
                                          (_E147633147664_))
                                      (_E147633147664_)))))
                            (_E147633147664_)))))
                  (_E147633147664_))
              (_E147633147664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147633147664_)))))
                                  (_E147632147698_)))))
                        (if (##pair? _rest147610147618_)
                            (let ((_hd147615147705_ (##car _rest147610147618_))
                                  (_tl147616147707_
                                   (##cdr _rest147610147618_)))
                              (let* ((_hd147710_ _hd147615147705_)
                                     (_rest147712_ _tl147616147707_))
                                (_K147614147702_ _rest147712_ _hd147710_)))
                            (_else147612147626_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody147598_
                     (gx#core-expand-block__1
                      _stx147592_
                      _expand-special147594_
                      '#f))
                    (_g152056_ (_eval-body147595_ _rbody147598_)))
               (begin
                 (let ((_g152057_
                        (if (##values? _g152056_)
                            (##vector-length _g152056_)
                            1)))
                   (if (not (##fx= _g152057_ 2))
                       (error "Context expects 2 values" _g152057_)))
                 (let ((_expanded-body147600_ (##vector-ref _g152056_ 0))
                       (_value147601_ (##vector-ref _g152056_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body147600_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value147601_ '())))
                    (gx#stx-source _stx147592_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx147562_)
        (let* ((_e147563147570_ _stx147562_)
               (_E147565147574_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147563147570_)))
               (_E147564147588_
                (lambda ()
                  (if (gx#stx-pair? _e147563147570_)
                      (let ((_e147566147578_ (gx#syntax-e _e147563147570_)))
                        (let ((_hd147567147581_ (##car _e147566147578_))
                              (_tl147568147583_ (##cdr _e147566147578_)))
                          (let ((_body147586_ _tl147568147583_))
                            (if (gx#stx-list? _body147586_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body147586_)
                                 (gx#stx-source _stx147562_))
                                (_E147565147574_)))))
                      (_E147565147574_)))))
          (_E147564147588_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx147560_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx147560_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx147506_)
        (let* ((_e147507147520_ _stx147506_)
               (_E147509147524_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147507147520_)))
               (_E147508147556_
                (lambda ()
                  (if (gx#stx-pair? _e147507147520_)
                      (let ((_e147510147528_ (gx#syntax-e _e147507147520_)))
                        (let ((_hd147511147531_ (##car _e147510147528_))
                              (_tl147512147533_ (##cdr _e147510147528_)))
                          (if (gx#stx-pair? _tl147512147533_)
                              (let ((_e147513147536_
                                     (gx#syntax-e _tl147512147533_)))
                                (let ((_hd147514147539_
                                       (##car _e147513147536_))
                                      (_tl147515147541_
                                       (##cdr _e147513147536_)))
                                  (let ((_ann147544_ _hd147514147539_))
                                    (if (gx#stx-pair? _tl147515147541_)
                                        (let ((_e147516147546_
                                               (gx#syntax-e _tl147515147541_)))
                                          (let ((_hd147517147549_
                                                 (##car _e147516147546_))
                                                (_tl147518147551_
                                                 (##cdr _e147516147546_)))
                                            (let ((_expr147554_
                                                   _hd147517147549_))
                                              (if (gx#stx-null?
                                                   _tl147518147551_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann147544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr147554_)
                                 '())))
               (gx#stx-source _stx147506_))
              (_E147509147524_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E147509147524_)))))
                                        (_E147509147524_)))))
                              (_E147509147524_))))
                      (_E147509147524_)))))
          (_E147508147556_))))
    (define gx#core-expand-local-block
      (lambda (_stx147230_ _body147231_)
        (letrec ((_expand-special147233_
                  (lambda (_hd147501_ _K147502_ _rest147503_ _r147504_)
                    (_K147502_
                     '()
                     (cons (_expand-internal147234_ _hd147501_ _rest147503_)
                           _r147504_))))
                 (_expand-internal147234_
                  (lambda (_hd147497_ _rest147498_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal147236_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd147497_ _rest147498_))
                          (gx#stx-source _stx147230_))
                         _expand-internal-special147235_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj152050 (make-object gx#local-context::t '6)))
                       (gx#local-context:::init! __obj152050)
                       __obj152050))))
                 (_expand-internal-special147235_
                  (lambda (_hd147392_ _K147393_ _rest147394_ _r147395_)
                    (let* ((_e147396147421_ _hd147392_)
                           (_E147416147425_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e147396147421_)))
                           (_E147412147437_
                            (lambda ()
                              (if (gx#stx-pair? _e147396147421_)
                                  (let ((_e147417147429_
                                         (gx#syntax-e _e147396147421_)))
                                    (let ((_hd147418147432_
                                           (##car _e147417147429_))
                                          (_tl147419147434_
                                           (##cdr _e147417147429_)))
                                      (if (and (gx#identifier?
                                                _hd147418147432_)
                                               (gx#core-identifier=?
                                                _hd147418147432_
                                                '%#declare))
                                          (if '#t
                                              (_K147393_
                                               _rest147394_
                                               (cons (gx#core-expand-declare%
                                                      _hd147392_)
                                                     _r147395_))
                                              (_E147416147425_))
                                          (_E147416147425_))))
                                  (_E147416147425_))))
                           (_E147408147449_
                            (lambda ()
                              (if (gx#stx-pair? _e147396147421_)
                                  (let ((_e147413147441_
                                         (gx#syntax-e _e147396147421_)))
                                    (let ((_hd147414147444_
                                           (##car _e147413147441_))
                                          (_tl147415147446_
                                           (##cdr _e147413147441_)))
                                      (if (and (gx#identifier?
                                                _hd147414147444_)
                                               (gx#core-identifier=?
                                                _hd147414147444_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd147392_)
                                                (_K147393_
                                                 _rest147394_
                                                 _r147395_))
                                              (_E147412147437_))
                                          (_E147412147437_))))
                                  (_E147412147437_))))
                           (_E147398147461_
                            (lambda ()
                              (if (gx#stx-pair? _e147396147421_)
                                  (let ((_e147409147453_
                                         (gx#syntax-e _e147396147421_)))
                                    (let ((_hd147410147456_
                                           (##car _e147409147453_))
                                          (_tl147411147458_
                                           (##cdr _e147409147453_)))
                                      (if (and (gx#identifier?
                                                _hd147410147456_)
                                               (gx#core-identifier=?
                                                _hd147410147456_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd147392_)
                                                (_K147393_
                                                 _rest147394_
                                                 _r147395_))
                                              (_E147408147449_))
                                          (_E147408147449_))))
                                  (_E147408147449_))))
                           (_E147397147493_
                            (lambda ()
                              (if (gx#stx-pair? _e147396147421_)
                                  (let ((_e147399147465_
                                         (gx#syntax-e _e147396147421_)))
                                    (let ((_hd147400147468_
                                           (##car _e147399147465_))
                                          (_tl147401147470_
                                           (##cdr _e147399147465_)))
                                      (if (and (gx#identifier?
                                                _hd147400147468_)
                                               (gx#core-identifier=?
                                                _hd147400147468_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl147401147470_)
                                              (let ((_e147402147473_
                                                     (gx#syntax-e
                                                      _tl147401147470_)))
                                                (let ((_hd147403147476_
                                                       (##car _e147402147473_))
                                                      (_tl147404147478_
                                                       (##cdr _e147402147473_)))
                                                  (let ((_hd-bind147481_
                                                         _hd147403147476_))
                                                    (if (gx#stx-pair?
                                                         _tl147404147478_)
                                                        (let ((_e147405147483_
                                                               (gx#syntax-e
                                                                _tl147404147478_)))
                                                          (let ((_hd147406147486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147405147483_))
                        (_tl147407147488_ (##cdr _e147405147483_)))
                    (let ((_expr147491_ _hd147406147486_))
                      (if (gx#stx-null? _tl147407147488_)
                          (if (gx#core-bind-values? _hd-bind147481_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind147481_)
                                (_K147393_
                                 _rest147394_
                                 (cons _hd147392_ _r147395_)))
                              (_E147398147461_))
                          (_E147398147461_)))))
                (_E147398147461_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147398147461_))
                                          (_E147398147461_))))
                                  (_E147398147461_)))))
                      (_E147397147493_))))
                 (_wrap-internal147236_
                  (lambda (_rbody147238_)
                    (let _lp147240_ ((_rest147242_ _rbody147238_)
                                     (_decls147243_ '())
                                     (_bind147244_ '())
                                     (_body147245_ '()))
                      (let* ((_e147246147253_ _rest147242_)
                             (_E147248147302_
                              (lambda ()
                                (let* ((_body147297_
                                        (let* ((_body147256147266_
                                                _body147245_)
                                               (_else147259147274_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body147245_)
                                                   (gx#stx-source
                                                    _stx147230_)))))
                                          (let ((_K147264147294_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx147230_)))
                                                (_K147261147280_
                                                 (lambda (_expr147278_)
                                                   _expr147278_)))
                                            (let ((_try-match147258147290_
                                                   (lambda ()
                                                     (if (##pair? _body147256147266_)
                                                         (let ((_tl147263147285_
                                                                (##cdr _body147256147266_))
                                                               (_hd147262147283_
                                                                (##car _body147256147266_)))
                                                           (if (##null? _tl147263147285_)
                                                               (let ((_expr147288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd147262147283_))
                         (_K147261147280_ _expr147288_))
                       (_else147259147274_)))
                 (_else147259147274_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body147256147266_)
                                                  (_K147264147294_)
                                                  (_try-match147258147290_))))))
                                       (_body147299_
                                        (if (null? _bind147244_)
                                            _body147297_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind147244_
                                                         (cons _body147297_
                                                               '())))
                                             (gx#stx-source _stx147230_)))))
                                  (if (null? _decls147243_)
                                      _body147299_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls147243_
                                                   (cons _body147299_ '())))
                                       (gx#stx-source _stx147230_))))))
                             (_E147247147388_
                              (lambda ()
                                (if (gx#stx-pair? _e147246147253_)
                                    (let ((_e147249147306_
                                           (gx#syntax-e _e147246147253_)))
                                      (let ((_hd147250147309_
                                             (##car _e147249147306_))
                                            (_tl147251147311_
                                             (##cdr _e147249147306_)))
                                        (let* ((_hd147314_ _hd147250147309_)
                                               (_rest147316_ _tl147251147311_))
                                          (if '#t
                                              (let* ((_e147317147334_
                                                      _hd147314_)
                                                     (_E147329147338_
                                                      (lambda ()
                                                        (if (null? _bind147244_)
                                                            (_lp147240_
                                                             _rest147316_
                                                             _decls147243_
                                                             _bind147244_
                                                             (cons _hd147314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body147245_))
                    (_lp147240_
                     _rest147316_
                     _decls147243_
                     (cons (cons '#f (cons _hd147314_ '())) _bind147244_)
                     _body147245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E147319147352_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e147317147334_)
                                                            (let ((_e147330147342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e147317147334_)))
                      (let ((_hd147331147345_ (##car _e147330147342_))
                            (_tl147332147347_ (##cdr _e147330147342_)))
                        (if (and (gx#identifier? _hd147331147345_)
                                 (gx#core-identifier=?
                                  _hd147331147345_
                                  '%#declare))
                            (let ((_xdecls147350_ _tl147332147347_))
                              (if '#t
                                  (_lp147240_
                                   _rest147316_
                                   (gx#stx-foldr
                                    cons
                                    _decls147243_
                                    _xdecls147350_)
                                   _bind147244_
                                   _body147245_)
                                  (_E147329147338_)))
                            (_E147329147338_))))
                    (_E147329147338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E147318147384_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e147317147334_)
                                                            (let ((_e147320147356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e147317147334_)))
                      (let ((_hd147321147359_ (##car _e147320147356_))
                            (_tl147322147361_ (##cdr _e147320147356_)))
                        (if (and (gx#identifier? _hd147321147359_)
                                 (gx#core-identifier=?
                                  _hd147321147359_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl147322147361_)
                                (let ((_e147323147364_
                                       (gx#syntax-e _tl147322147361_)))
                                  (let ((_hd147324147367_
                                         (##car _e147323147364_))
                                        (_tl147325147369_
                                         (##cdr _e147323147364_)))
                                    (let ((_hd-bind147372_ _hd147324147367_))
                                      (if (gx#stx-pair? _tl147325147369_)
                                          (let ((_e147326147374_
                                                 (gx#syntax-e
                                                  _tl147325147369_)))
                                            (let ((_hd147327147377_
                                                   (##car _e147326147374_))
                                                  (_tl147328147379_
                                                   (##cdr _e147326147374_)))
                                              (let ((_expr147382_
                                                     _hd147327147377_))
                                                (if (gx#stx-null?
                                                     _tl147328147379_)
                                                    (if '#t
                                                        (_lp147240_
                                                         _rest147316_
                                                         _decls147243_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind147372_)
                             (cons (gx#core-expand-expression _expr147382_)
                                   '()))
                       _bind147244_)
                 _body147245_)
                (_E147319147352_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E147319147352_)))))
                                          (_E147319147352_)))))
                                (_E147319147352_))
                            (_E147319147352_))))
                    (_E147319147352_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E147318147384_))
                                              (_E147248147302_)))))
                                    (_E147248147302_)))))
                        (_E147247147388_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body147231_)
            (gx#stx-source _stx147230_))
           _expand-special147233_))))
    (define gx#core-expand-declare%
      (lambda (_stx147168_)
        (let* ((_e147169147176_ _stx147168_)
               (_E147171147180_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147169147176_)))
               (_E147170147226_
                (lambda ()
                  (if (gx#stx-pair? _e147169147176_)
                      (let ((_e147172147184_ (gx#syntax-e _e147169147176_)))
                        (let ((_hd147173147187_ (##car _e147172147184_))
                              (_tl147174147189_ (##cdr _e147172147184_)))
                          (let ((_body147192_ _tl147174147189_))
                            (if (gx#stx-list? _body147192_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl147194_)
                                     (let* ((_e147195147202_ _decl147194_)
                                            (_E147197147206_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e147195147202_)))
                                            (_E147196147222_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e147195147202_)
                                                   (let ((_e147198147210_
                                                          (gx#syntax-e
                                                           _e147195147202_)))
                                                     (let ((_hd147199147213_
                                                            (##car _e147198147210_))
                                                           (_tl147200147215_
                                                            (##cdr _e147198147210_)))
                                                       (let* ((_head147218_
                                                               _hd147199147213_)
                                                              (_args147220_
                                                               _tl147200147215_))
                                                         (if (gx#stx-list?
                                                              _args147220_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl147194_)
                                                             (_E147197147206_)))))
                                                   (_E147197147206_)))))
                                       (_E147196147222_)))
                                   _body147192_))
                                 (gx#stx-source _stx147168_))
                                (_E147171147180_)))))
                      (_E147171147180_)))))
          (_E147170147226_))))
    (define gx#core-expand-extern%
      (lambda (_stx147072_)
        (let* ((_e147073147080_ _stx147072_)
               (_E147075147084_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147073147080_)))
               (_E147074147164_
                (lambda ()
                  (if (gx#stx-pair? _e147073147080_)
                      (let ((_e147076147088_ (gx#syntax-e _e147073147080_)))
                        (let ((_hd147077147091_ (##car _e147076147088_))
                              (_tl147078147093_ (##cdr _e147076147088_)))
                          (let ((_body147096_ _tl147078147093_))
                            (if '#t
                                (let _lp147098_ ((_rest147100_ _body147096_)
                                                 (_r147101_ '()))
                                  (let* ((_e147102147116_ _rest147100_)
                                         (_E147114147120_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx147072_)))
                                         (_E147104147124_
                                          (lambda ()
                                            (if (gx#stx-null? _e147102147116_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r147101_))
                                                     (gx#stx-source
                                                      _stx147072_))
                                                    (_E147114147120_))
                                                (_E147114147120_))))
                                         (_E147103147160_
                                          (lambda ()
                                            (if (gx#stx-pair? _e147102147116_)
                                                (let ((_e147105147128_
                                                       (gx#syntax-e
                                                        _e147102147116_)))
                                                  (let ((_hd147106147131_
                                                         (##car _e147105147128_))
                                                        (_tl147107147133_
                                                         (##cdr _e147105147128_)))
                                                    (if (gx#stx-pair?
                                                         _hd147106147131_)
                                                        (let ((_e147108147136_
                                                               (gx#syntax-e
                                                                _hd147106147131_)))
                                                          (let ((_hd147109147139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147108147136_))
                        (_tl147110147141_ (##cdr _e147108147136_)))
                    (let ((_id147144_ _hd147109147139_))
                      (if (gx#stx-pair? _tl147110147141_)
                          (let ((_e147111147146_
                                 (gx#syntax-e _tl147110147141_)))
                            (let ((_hd147112147149_ (##car _e147111147146_))
                                  (_tl147113147151_ (##cdr _e147111147146_)))
                              (let ((_eid147154_ _hd147112147149_))
                                (if (gx#stx-null? _tl147113147151_)
                                    (let ((_rest147156_ _tl147107147133_))
                                      (if (and (gx#identifier? _id147144_)
                                               (gx#identifier? _eid147154_))
                                          (let ((_eid147158_
                                                 (gx#stx-e _eid147154_)))
                                            (gx#core-bind-extern!__0
                                             _id147144_
                                             _eid147158_)
                                            (_lp147098_
                                             _rest147156_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id147144_)
                                                         (cons _eid147158_
                                                               '()))
                                                   _r147101_)))
                                          (_E147104147124_)))
                                    (_E147104147124_)))))
                          (_E147104147124_)))))
                (_E147104147124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E147104147124_)))))
                                    (_E147103147160_)))
                                (_E147075147084_)))))
                      (_E147075147084_)))))
          (_E147074147164_))))
    (define gx#core-expand-define-values%
      (lambda (_stx147018_)
        (let* ((_e147019147032_ _stx147018_)
               (_E147021147036_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147019147032_)))
               (_E147020147068_
                (lambda ()
                  (if (gx#stx-pair? _e147019147032_)
                      (let ((_e147022147040_ (gx#syntax-e _e147019147032_)))
                        (let ((_hd147023147043_ (##car _e147022147040_))
                              (_tl147024147045_ (##cdr _e147022147040_)))
                          (if (gx#stx-pair? _tl147024147045_)
                              (let ((_e147025147048_
                                     (gx#syntax-e _tl147024147045_)))
                                (let ((_hd147026147051_
                                       (##car _e147025147048_))
                                      (_tl147027147053_
                                       (##cdr _e147025147048_)))
                                  (let ((_hd147056_ _hd147026147051_))
                                    (if (gx#stx-pair? _tl147027147053_)
                                        (let ((_e147028147058_
                                               (gx#syntax-e _tl147027147053_)))
                                          (let ((_hd147029147061_
                                                 (##car _e147028147058_))
                                                (_tl147030147063_
                                                 (##cdr _e147028147058_)))
                                            (let ((_expr147066_
                                                   _hd147029147061_))
                                              (if (gx#stx-null?
                                                   _tl147030147063_)
                                                  (if (gx#core-bind-values?
                                                       _hd147056_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd147056_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd147056_)
                             (cons (gx#core-expand-expression _expr147066_)
                                   '())))
                 (gx#stx-source _stx147018_)))
              (_E147021147036_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E147021147036_)))))
                                        (_E147021147036_)))))
                              (_E147021147036_))))
                      (_E147021147036_)))))
          (_E147020147068_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx146962_)
        (let* ((_e146963146976_ _stx146962_)
               (_E146965146980_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146963146976_)))
               (_E146964147014_
                (lambda ()
                  (if (gx#stx-pair? _e146963146976_)
                      (let ((_e146966146984_ (gx#syntax-e _e146963146976_)))
                        (let ((_hd146967146987_ (##car _e146966146984_))
                              (_tl146968146989_ (##cdr _e146966146984_)))
                          (if (gx#stx-pair? _tl146968146989_)
                              (let ((_e146969146992_
                                     (gx#syntax-e _tl146968146989_)))
                                (let ((_hd146970146995_
                                       (##car _e146969146992_))
                                      (_tl146971146997_
                                       (##cdr _e146969146992_)))
                                  (let ((_id147000_ _hd146970146995_))
                                    (if (gx#stx-pair? _tl146971146997_)
                                        (let ((_e146972147002_
                                               (gx#syntax-e _tl146971146997_)))
                                          (let ((_hd146973147005_
                                                 (##car _e146972147002_))
                                                (_tl146974147007_
                                                 (##cdr _e146972147002_)))
                                            (let ((_binding-id147010_
                                                   _hd146973147005_))
                                              (if (gx#stx-null?
                                                   _tl146974147007_)
                                                  (if (and (gx#identifier?
                                                            _id147000_)
                                                           (gx#identifier?
                                                            _binding-id147010_))
                                                      (let ((_eid147012_
                                                             (gx#stx-e
                                                              _binding-id147010_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id147000_
                                                         _eid147012_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id147000_)
                             (cons _eid147012_ '())))))
              (_E146965146980_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146965146980_)))))
                                        (_E146965146980_)))))
                              (_E146965146980_))))
                      (_E146965146980_)))))
          (_E146964147014_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx146905_)
        (let* ((_e146906146919_ _stx146905_)
               (_E146908146923_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146906146919_)))
               (_E146907146958_
                (lambda ()
                  (if (gx#stx-pair? _e146906146919_)
                      (let ((_e146909146927_ (gx#syntax-e _e146906146919_)))
                        (let ((_hd146910146930_ (##car _e146909146927_))
                              (_tl146911146932_ (##cdr _e146909146927_)))
                          (if (gx#stx-pair? _tl146911146932_)
                              (let ((_e146912146935_
                                     (gx#syntax-e _tl146911146932_)))
                                (let ((_hd146913146938_
                                       (##car _e146912146935_))
                                      (_tl146914146940_
                                       (##cdr _e146912146935_)))
                                  (let ((_id146943_ _hd146913146938_))
                                    (if (gx#stx-pair? _tl146914146940_)
                                        (let ((_e146915146945_
                                               (gx#syntax-e _tl146914146940_)))
                                          (let ((_hd146916146948_
                                                 (##car _e146915146945_))
                                                (_tl146917146950_
                                                 (##cdr _e146915146945_)))
                                            (let ((_expr146953_
                                                   _hd146916146948_))
                                              (if (gx#stx-null?
                                                   _tl146917146950_)
                                                  (if (gx#identifier?
                                                       _id146943_)
                                                      (let ((_g152058_
                                                             (gx#core-expand-expression+1
                                                              _expr146953_)))
                                                        (begin
                                                          (let ((_g152059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g152058_)
                             (##vector-length _g152058_)
                             1)))
                    (if (not (##fx= _g152059_ 2))
                        (error "Context expects 2 values" _g152059_)))
                  (let ((_e-stx146955_ (##vector-ref _g152058_ 0))
                        (_e146956_ (##vector-ref _g152058_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id146943_ _e146956_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id146943_)
                                   (cons _e-stx146955_ '())))
                       (gx#stx-source _stx146905_))))))
              (_E146908146923_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146908146923_)))))
                                        (_E146908146923_)))))
                              (_E146908146923_))))
                      (_E146908146923_)))))
          (_E146907146958_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx146849_)
        (let* ((_e146850146863_ _stx146849_)
               (_E146852146867_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146850146863_)))
               (_E146851146901_
                (lambda ()
                  (if (gx#stx-pair? _e146850146863_)
                      (let ((_e146853146871_ (gx#syntax-e _e146850146863_)))
                        (let ((_hd146854146874_ (##car _e146853146871_))
                              (_tl146855146876_ (##cdr _e146853146871_)))
                          (if (gx#stx-pair? _tl146855146876_)
                              (let ((_e146856146879_
                                     (gx#syntax-e _tl146855146876_)))
                                (let ((_hd146857146882_
                                       (##car _e146856146879_))
                                      (_tl146858146884_
                                       (##cdr _e146856146879_)))
                                  (let ((_id146887_ _hd146857146882_))
                                    (if (gx#stx-pair? _tl146858146884_)
                                        (let ((_e146859146889_
                                               (gx#syntax-e _tl146858146884_)))
                                          (let ((_hd146860146892_
                                                 (##car _e146859146889_))
                                                (_tl146861146894_
                                                 (##cdr _e146859146889_)))
                                            (let ((_alias-id146897_
                                                   _hd146860146892_))
                                              (if (gx#stx-null?
                                                   _tl146861146894_)
                                                  (if (and (gx#identifier?
                                                            _id146887_)
                                                           (gx#identifier?
                                                            _alias-id146897_))
                                                      (let ((_alias-id146899_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id146897_)))
                                                        (gx#core-bind-alias!__0
                                                         _id146887_
                                                         _alias-id146899_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id146887_)
                             (cons _alias-id146899_ '())))))
              (_E146852146867_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146852146867_)))))
                                        (_E146852146867_)))))
                              (_E146852146867_))))
                      (_E146852146867_)))))
          (_E146851146901_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx146792_ _wrap?146793_)
        (let* ((_e146794146804_ _stx146792_)
               (_E146796146808_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146794146804_)))
               (_E146795146835_
                (lambda ()
                  (if (gx#stx-pair? _e146794146804_)
                      (let ((_e146797146812_ (gx#syntax-e _e146794146804_)))
                        (let ((_hd146798146815_ (##car _e146797146812_))
                              (_tl146799146817_ (##cdr _e146797146812_)))
                          (if (gx#stx-pair? _tl146799146817_)
                              (let ((_e146800146820_
                                     (gx#syntax-e _tl146799146817_)))
                                (let ((_hd146801146823_
                                       (##car _e146800146820_))
                                      (_tl146802146825_
                                       (##cdr _e146800146820_)))
                                  (let* ((_hd146828_ _hd146801146823_)
                                         (_body146830_ _tl146802146825_))
                                    (if (gx#core-bind-values? _hd146828_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd146828_)
                                           (let ((_body146833_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd146828_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx146792_
                                                               _body146830_)
                                                              '()))))
                                             (if _wrap?146793_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body146833_)
                                                  (gx#stx-source _stx146792_))
                                                 _body146833_)))
                                         gx#current-expander-context
                                         (let ((__obj152051
                                                (make-object
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152051)
                                           __obj152051))
                                        (_E146796146808_)))))
                              (_E146796146808_))))
                      (_E146796146808_)))))
          (_E146795146835_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx146842_)
        (let ((_wrap?146844_ '#t))
          (gx#core-expand-lambda%__% _stx146842_ _wrap?146844_))))
    (define gx#core-expand-lambda%
      (lambda _g152061_
        (let ((_g152060_ (##length _g152061_)))
          (cond ((##fx= _g152060_ 1)
                 (apply (lambda (_stx146842_)
                          (gx#core-expand-lambda%__0 _stx146842_))
                        _g152061_))
                ((##fx= _g152060_ 2)
                 (apply (lambda (_stx146846_ _wrap?146847_)
                          (gx#core-expand-lambda%__%
                           _stx146846_
                           _wrap?146847_))
                        _g152061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g152061_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx146756_)
        (let* ((_e146757146764_ _stx146756_)
               (_E146759146768_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146757146764_)))
               (_E146758146787_
                (lambda ()
                  (if (gx#stx-pair? _e146757146764_)
                      (let ((_e146760146772_ (gx#syntax-e _e146757146764_)))
                        (let ((_hd146761146775_ (##car _e146760146772_))
                              (_tl146762146777_ (##cdr _e146760146772_)))
                          (let ((_clauses146780_ _tl146762146777_))
                            (if (gx#stx-list? _clauses146780_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause146782_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause146782_)
                                       (let ((_$e146784_
                                              (gx#stx-source _clause146782_)))
                                         (if _$e146784_
                                             _$e146784_
                                             (gx#stx-source _stx146756_))))
                                      '#f))
                                   _clauses146780_))
                                 (gx#stx-source _stx146756_))
                                (_E146759146768_)))))
                      (_E146759146768_)))))
          (_E146758146787_))))
    (define gx#core-expand-let-values%
      (lambda (_stx146710_)
        (let* ((_e146711146721_ _stx146710_)
               (_E146713146725_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146711146721_)))
               (_E146712146752_
                (lambda ()
                  (if (gx#stx-pair? _e146711146721_)
                      (let ((_e146714146729_ (gx#syntax-e _e146711146721_)))
                        (let ((_hd146715146732_ (##car _e146714146729_))
                              (_tl146716146734_ (##cdr _e146714146729_)))
                          (if (gx#stx-pair? _tl146716146734_)
                              (let ((_e146717146737_
                                     (gx#syntax-e _tl146716146734_)))
                                (let ((_hd146718146740_
                                       (##car _e146717146737_))
                                      (_tl146719146742_
                                       (##cdr _e146717146737_)))
                                  (let* ((_hd146745_ _hd146718146740_)
                                         (_body146747_ _tl146719146742_))
                                    (if (gx#core-expand-let-bind? _hd146745_)
                                        (let ((_expressions146749_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd146745_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd146745_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd146745_
                                                           _expressions146749_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx146710_
                         _body146747_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx146710_)))
                                           gx#current-expander-context
                                           (let ((__obj152052
                                                  (make-object
                                                   gx#local-context::t
                                                   '6)))
                                             (gx#local-context:::init!
                                              __obj152052)
                                             __obj152052)))
                                        (_E146713146725_)))))
                              (_E146713146725_))))
                      (_E146713146725_)))))
          (_E146712146752_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx146655_ _form146656_)
        (let* ((_e146657146667_ _stx146655_)
               (_E146659146671_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146657146667_)))
               (_E146658146696_
                (lambda ()
                  (if (gx#stx-pair? _e146657146667_)
                      (let ((_e146660146675_ (gx#syntax-e _e146657146667_)))
                        (let ((_hd146661146678_ (##car _e146660146675_))
                              (_tl146662146680_ (##cdr _e146660146675_)))
                          (if (gx#stx-pair? _tl146662146680_)
                              (let ((_e146663146683_
                                     (gx#syntax-e _tl146662146680_)))
                                (let ((_hd146664146686_
                                       (##car _e146663146683_))
                                      (_tl146665146688_
                                       (##cdr _e146663146683_)))
                                  (let* ((_hd146691_ _hd146664146686_)
                                         (_body146693_ _tl146665146688_))
                                    (if (gx#core-expand-let-bind? _hd146691_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd146691_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form146656_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd146691_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd146691_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx146655_
                                                               _body146693_)
                                                              '())))
                                            (gx#stx-source _stx146655_)))
                                         gx#current-expander-context
                                         (let ((__obj152053
                                                (make-object
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152053)
                                           __obj152053))
                                        (_E146659146671_)))))
                              (_E146659146671_))))
                      (_E146659146671_)))))
          (_E146658146696_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx146703_)
        (let ((_form146705_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx146703_ _form146705_))))
    (define gx#core-expand-letrec-values%
      (lambda _g152063_
        (let ((_g152062_ (##length _g152063_)))
          (cond ((##fx= _g152062_ 1)
                 (apply (lambda (_stx146703_)
                          (gx#core-expand-letrec-values%__0 _stx146703_))
                        _g152063_))
                ((##fx= _g152062_ 2)
                 (apply (lambda (_stx146707_ _form146708_)
                          (gx#core-expand-letrec-values%__%
                           _stx146707_
                           _form146708_))
                        _g152063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g152063_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx146652_)
        (gx#core-expand-letrec-values%__% _stx146652_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx146609_)
        (if (gx#stx-list? _stx146609_)
            (gx#stx-andmap
             (lambda (_bind146611_)
               (let* ((_e146612146622_ _bind146611_)
                      (_E146614146626_ (lambda () '#f))
                      (_E146613146648_
                       (lambda ()
                         (if (gx#stx-pair? _e146612146622_)
                             (let ((_e146615146630_
                                    (gx#syntax-e _e146612146622_)))
                               (let ((_hd146616146633_ (##car _e146615146630_))
                                     (_tl146617146635_
                                      (##cdr _e146615146630_)))
                                 (let ((_hd146638_ _hd146616146633_))
                                   (if (gx#stx-pair? _tl146617146635_)
                                       (let ((_e146618146640_
                                              (gx#syntax-e _tl146617146635_)))
                                         (let ((_hd146619146643_
                                                (##car _e146618146640_))
                                               (_tl146620146645_
                                                (##cdr _e146618146640_)))
                                           (if (gx#stx-null? _tl146620146645_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd146638_)
                                                   (_E146614146626_))
                                               (_E146614146626_))))
                                       (_E146614146626_)))))
                             (_E146614146626_)))))
                 (_E146613146648_)))
             _stx146609_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind146568_)
        (let* ((_e146569146579_ _bind146568_)
               (_E146571146583_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146569146579_)))
               (_E146570146605_
                (lambda ()
                  (if (gx#stx-pair? _e146569146579_)
                      (let ((_e146572146587_ (gx#syntax-e _e146569146579_)))
                        (let ((_hd146573146590_ (##car _e146572146587_))
                              (_tl146574146592_ (##cdr _e146572146587_)))
                          (if (gx#stx-pair? _tl146574146592_)
                              (let ((_e146575146595_
                                     (gx#syntax-e _tl146574146592_)))
                                (let ((_hd146576146598_
                                       (##car _e146575146595_))
                                      (_tl146577146600_
                                       (##cdr _e146575146595_)))
                                  (let ((_expr146603_ _hd146576146598_))
                                    (if (gx#stx-null? _tl146577146600_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr146603_)
                                            (_E146571146583_))
                                        (_E146571146583_)))))
                              (_E146571146583_))))
                      (_E146571146583_)))))
          (_E146570146605_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind146527_)
        (let* ((_e146528146538_ _bind146527_)
               (_E146530146542_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146528146538_)))
               (_E146529146564_
                (lambda ()
                  (if (gx#stx-pair? _e146528146538_)
                      (let ((_e146531146546_ (gx#syntax-e _e146528146538_)))
                        (let ((_hd146532146549_ (##car _e146531146546_))
                              (_tl146533146551_ (##cdr _e146531146546_)))
                          (let ((_hd146554_ _hd146532146549_))
                            (if (gx#stx-pair? _tl146533146551_)
                                (let ((_e146534146556_
                                       (gx#syntax-e _tl146533146551_)))
                                  (let ((_hd146535146559_
                                         (##car _e146534146556_))
                                        (_tl146536146561_
                                         (##cdr _e146534146556_)))
                                    (if (gx#stx-null? _tl146536146561_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd146554_)
                                            (_E146530146542_))
                                        (_E146530146542_))))
                                (_E146530146542_)))))
                      (_E146530146542_)))))
          (_E146529146564_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind146485_ _expr146486_)
        (let* ((_e146487146497_ _bind146485_)
               (_E146489146501_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146487146497_)))
               (_E146488146523_
                (lambda ()
                  (if (gx#stx-pair? _e146487146497_)
                      (let ((_e146490146505_ (gx#syntax-e _e146487146497_)))
                        (let ((_hd146491146508_ (##car _e146490146505_))
                              (_tl146492146510_ (##cdr _e146490146505_)))
                          (let ((_hd146513_ _hd146491146508_))
                            (if (gx#stx-pair? _tl146492146510_)
                                (let ((_e146493146515_
                                       (gx#syntax-e _tl146492146510_)))
                                  (let ((_hd146494146518_
                                         (##car _e146493146515_))
                                        (_tl146495146520_
                                         (##cdr _e146493146515_)))
                                    (if (gx#stx-null? _tl146495146520_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd146513_)
                                                  (cons _expr146486_ '()))
                                            (_E146489146501_))
                                        (_E146489146501_))))
                                (_E146489146501_)))))
                      (_E146489146501_)))))
          (_E146488146523_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx146439_)
        (let* ((_e146440146450_ _stx146439_)
               (_E146442146454_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146440146450_)))
               (_E146441146481_
                (lambda ()
                  (if (gx#stx-pair? _e146440146450_)
                      (let ((_e146443146458_ (gx#syntax-e _e146440146450_)))
                        (let ((_hd146444146461_ (##car _e146443146458_))
                              (_tl146445146463_ (##cdr _e146443146458_)))
                          (if (gx#stx-pair? _tl146445146463_)
                              (let ((_e146446146466_
                                     (gx#syntax-e _tl146445146463_)))
                                (let ((_hd146447146469_
                                       (##car _e146446146466_))
                                      (_tl146448146471_
                                       (##cdr _e146446146466_)))
                                  (let* ((_hd146474_ _hd146447146469_)
                                         (_body146476_ _tl146448146471_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd146474_)
                                        (let ((_expanders146478_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd146474_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd146474_
                                              _expanders146478_)
                                             (gx#core-expand-local-block
                                              _stx146439_
                                              _body146476_))
                                           gx#current-expander-context
                                           (let ((__obj152054
                                                  (make-object
                                                   gx#local-context::t
                                                   '6)))
                                             (gx#local-context:::init!
                                              __obj152054)
                                             __obj152054)))
                                        (_E146442146454_)))))
                              (_E146442146454_))))
                      (_E146442146454_)))))
          (_E146441146481_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx146388_)
        (let* ((_e146389146399_ _stx146388_)
               (_E146391146403_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146389146399_)))
               (_E146390146435_
                (lambda ()
                  (if (gx#stx-pair? _e146389146399_)
                      (let ((_e146392146407_ (gx#syntax-e _e146389146399_)))
                        (let ((_hd146393146410_ (##car _e146392146407_))
                              (_tl146394146412_ (##cdr _e146392146407_)))
                          (if (gx#stx-pair? _tl146394146412_)
                              (let ((_e146395146415_
                                     (gx#syntax-e _tl146394146412_)))
                                (let ((_hd146396146418_
                                       (##car _e146395146415_))
                                      (_tl146397146420_
                                       (##cdr _e146395146415_)))
                                  (let* ((_hd146423_ _hd146396146418_)
                                         (_body146425_ _tl146397146420_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd146423_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd146423_
                                            (make-list
                                             (gx#stx-length _hd146423_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g146427146430_
                                                     _g146428146432_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g146427146430_
                                               _g146428146432_
                                               '#t))
                                            _hd146423_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd146423_))
                                           (gx#core-expand-local-block
                                            _stx146388_
                                            _body146425_))
                                         gx#current-expander-context
                                         (let ((__obj152055
                                                (make-object
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152055)
                                           __obj152055))
                                        (_E146391146403_)))))
                              (_E146391146403_))))
                      (_E146391146403_)))))
          (_E146390146435_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx146345_)
        (if (gx#stx-list? _stx146345_)
            (gx#stx-andmap
             (lambda (_bind146347_)
               (let* ((_e146348146358_ _bind146347_)
                      (_E146350146362_ (lambda () '#f))
                      (_E146349146384_
                       (lambda ()
                         (if (gx#stx-pair? _e146348146358_)
                             (let ((_e146351146366_
                                    (gx#syntax-e _e146348146358_)))
                               (let ((_hd146352146369_ (##car _e146351146366_))
                                     (_tl146353146371_
                                      (##cdr _e146351146366_)))
                                 (let ((_hd146374_ _hd146352146369_))
                                   (if (gx#stx-pair? _tl146353146371_)
                                       (let ((_e146354146376_
                                              (gx#syntax-e _tl146353146371_)))
                                         (let ((_hd146355146379_
                                                (##car _e146354146376_))
                                               (_tl146356146381_
                                                (##cdr _e146354146376_)))
                                           (if (gx#stx-null? _tl146356146381_)
                                               (if '#t
                                                   (gx#identifier? _hd146374_)
                                                   (_E146350146362_))
                                               (_E146350146362_))))
                                       (_E146350146362_)))))
                             (_E146350146362_)))))
                 (_E146349146384_)))
             _stx146345_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind146302_)
        (let* ((_e146303146313_ _bind146302_)
               (_E146305146317_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146303146313_)))
               (_E146304146341_
                (lambda ()
                  (if (gx#stx-pair? _e146303146313_)
                      (let ((_e146306146321_ (gx#syntax-e _e146303146313_)))
                        (let ((_hd146307146324_ (##car _e146306146321_))
                              (_tl146308146326_ (##cdr _e146306146321_)))
                          (if (gx#stx-pair? _tl146308146326_)
                              (let ((_e146309146329_
                                     (gx#syntax-e _tl146308146326_)))
                                (let ((_hd146310146332_
                                       (##car _e146309146329_))
                                      (_tl146311146334_
                                       (##cdr _e146309146329_)))
                                  (let ((_expr146337_ _hd146310146332_))
                                    (if (gx#stx-null? _tl146311146334_)
                                        (if '#t
                                            (let ((_g152064_
                                                   (gx#core-expand-expression+1
                                                    _expr146337_)))
                                              (begin
                                                (let ((_g152065_
                                                       (if (##values?
                                                            _g152064_)
                                                           (##vector-length
                                                            _g152064_)
                                                           1)))
                                                  (if (not (##fx= _g152065_ 2))
                                                      (error "Context expects 2 values"
                                                             _g152065_)))
                                                (let ((_e146339_
                                                       (##vector-ref
                                                        _g152064_
                                                        1)))
                                                  _e146339_)))
                                            (_E146305146317_))
                                        (_E146305146317_)))))
                              (_E146305146317_))))
                      (_E146305146317_)))))
          (_E146304146341_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind146247_ _e146248_ _rebind?146249_)
        (let* ((_e146250146260_ _bind146247_)
               (_E146252146264_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146250146260_)))
               (_E146251146286_
                (lambda ()
                  (if (gx#stx-pair? _e146250146260_)
                      (let ((_e146253146268_ (gx#syntax-e _e146250146260_)))
                        (let ((_hd146254146271_ (##car _e146253146268_))
                              (_tl146255146273_ (##cdr _e146253146268_)))
                          (let ((_id146276_ _hd146254146271_))
                            (if (gx#stx-pair? _tl146255146273_)
                                (let ((_e146256146278_
                                       (gx#syntax-e _tl146255146273_)))
                                  (let ((_hd146257146281_
                                         (##car _e146256146278_))
                                        (_tl146258146283_
                                         (##cdr _e146256146278_)))
                                    (if (gx#stx-null? _tl146258146283_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id146276_
                                             _e146248_
                                             _rebind?146249_)
                                            (_E146252146264_))
                                        (_E146252146264_))))
                                (_E146252146264_)))))
                      (_E146252146264_)))))
          (_E146251146286_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind146293_ _e146294_)
        (let ((_rebind?146296_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind146293_
           _e146294_
           _rebind?146296_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g152067_
        (let ((_g152066_ (##length _g152067_)))
          (cond ((##fx= _g152066_ 2)
                 (apply (lambda (_bind146293_ _e146294_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind146293_
                           _e146294_))
                        _g152067_))
                ((##fx= _g152066_ 3)
                 (apply (lambda (_bind146298_ _e146299_ _rebind?146300_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind146298_
                           _e146299_
                           _rebind?146300_))
                        _g152067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g152067_))))))
    (define gx#core-expand-expression%
      (lambda (_stx146205_)
        (let* ((_e146206146216_ _stx146205_)
               (_E146208146220_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146206146216_)))
               (_E146207146242_
                (lambda ()
                  (if (gx#stx-pair? _e146206146216_)
                      (let ((_e146209146224_ (gx#syntax-e _e146206146216_)))
                        (let ((_hd146210146227_ (##car _e146209146224_))
                              (_tl146211146229_ (##cdr _e146209146224_)))
                          (if (gx#stx-pair? _tl146211146229_)
                              (let ((_e146212146232_
                                     (gx#syntax-e _tl146211146229_)))
                                (let ((_hd146213146235_
                                       (##car _e146212146232_))
                                      (_tl146214146237_
                                       (##cdr _e146212146232_)))
                                  (let ((_expr146240_ _hd146213146235_))
                                    (if (gx#stx-null? _tl146214146237_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr146240_)
                                            (_E146208146220_))
                                        (_E146208146220_)))))
                              (_E146208146220_))))
                      (_E146208146220_)))))
          (_E146207146242_))))
    (define gx#core-expand-quote%
      (lambda (_stx146164_)
        (let* ((_e146165146175_ _stx146164_)
               (_E146167146179_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146165146175_)))
               (_E146166146201_
                (lambda ()
                  (if (gx#stx-pair? _e146165146175_)
                      (let ((_e146168146183_ (gx#syntax-e _e146165146175_)))
                        (let ((_hd146169146186_ (##car _e146168146183_))
                              (_tl146170146188_ (##cdr _e146168146183_)))
                          (if (gx#stx-pair? _tl146170146188_)
                              (let ((_e146171146191_
                                     (gx#syntax-e _tl146170146188_)))
                                (let ((_hd146172146194_
                                       (##car _e146171146191_))
                                      (_tl146173146196_
                                       (##cdr _e146171146191_)))
                                  (let ((_e146199_ _hd146172146194_))
                                    (if (gx#stx-null? _tl146173146196_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e146199_)
                                                         '()))
                                             (gx#stx-source _stx146164_))
                                            (_E146167146179_))
                                        (_E146167146179_)))))
                              (_E146167146179_))))
                      (_E146167146179_)))))
          (_E146166146201_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx146123_)
        (let* ((_e146124146134_ _stx146123_)
               (_E146126146138_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146124146134_)))
               (_E146125146160_
                (lambda ()
                  (if (gx#stx-pair? _e146124146134_)
                      (let ((_e146127146142_ (gx#syntax-e _e146124146134_)))
                        (let ((_hd146128146145_ (##car _e146127146142_))
                              (_tl146129146147_ (##cdr _e146127146142_)))
                          (if (gx#stx-pair? _tl146129146147_)
                              (let ((_e146130146150_
                                     (gx#syntax-e _tl146129146147_)))
                                (let ((_hd146131146153_
                                       (##car _e146130146150_))
                                      (_tl146132146155_
                                       (##cdr _e146130146150_)))
                                  (let ((_e146158_ _hd146131146153_))
                                    (if (gx#stx-null? _tl146132146155_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e146158_)
                                                         '()))
                                             (gx#stx-source _stx146123_))
                                            (_E146126146138_))
                                        (_E146126146138_)))))
                              (_E146126146138_))))
                      (_E146126146138_)))))
          (_E146125146160_))))
    (define gx#core-expand-call%
      (lambda (_stx146080_)
        (let* ((_e146081146091_ _stx146080_)
               (_E146083146095_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146081146091_)))
               (_E146082146119_
                (lambda ()
                  (if (gx#stx-pair? _e146081146091_)
                      (let ((_e146084146099_ (gx#syntax-e _e146081146091_)))
                        (let ((_hd146085146102_ (##car _e146084146099_))
                              (_tl146086146104_ (##cdr _e146084146099_)))
                          (if (gx#stx-pair? _tl146086146104_)
                              (let ((_e146087146107_
                                     (gx#syntax-e _tl146086146104_)))
                                (let ((_hd146088146110_
                                       (##car _e146087146107_))
                                      (_tl146089146112_
                                       (##cdr _e146087146107_)))
                                  (let* ((_rator146115_ _hd146088146110_)
                                         (_args146117_ _tl146089146112_))
                                    (if (gx#stx-list? _args146117_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator146115_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args146117_))
                                         (gx#stx-source _stx146080_))
                                        (_E146083146095_)))))
                              (_E146083146095_))))
                      (_E146083146095_)))))
          (_E146082146119_))))
    (define gx#core-expand-if%
      (lambda (_stx146013_)
        (let* ((_e146014146030_ _stx146013_)
               (_E146016146034_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146014146030_)))
               (_E146015146076_
                (lambda ()
                  (if (gx#stx-pair? _e146014146030_)
                      (let ((_e146017146038_ (gx#syntax-e _e146014146030_)))
                        (let ((_hd146018146041_ (##car _e146017146038_))
                              (_tl146019146043_ (##cdr _e146017146038_)))
                          (if (gx#stx-pair? _tl146019146043_)
                              (let ((_e146020146046_
                                     (gx#syntax-e _tl146019146043_)))
                                (let ((_hd146021146049_
                                       (##car _e146020146046_))
                                      (_tl146022146051_
                                       (##cdr _e146020146046_)))
                                  (let ((_test146054_ _hd146021146049_))
                                    (if (gx#stx-pair? _tl146022146051_)
                                        (let ((_e146023146056_
                                               (gx#syntax-e _tl146022146051_)))
                                          (let ((_hd146024146059_
                                                 (##car _e146023146056_))
                                                (_tl146025146061_
                                                 (##cdr _e146023146056_)))
                                            (let ((_K146064_ _hd146024146059_))
                                              (if (gx#stx-pair?
                                                   _tl146025146061_)
                                                  (let ((_e146026146066_
                                                         (gx#syntax-e
                                                          _tl146025146061_)))
                                                    (let ((_hd146027146069_
                                                           (##car _e146026146066_))
                                                          (_tl146028146071_
                                                           (##cdr _e146026146066_)))
                                                      (let ((_E146074_
                                                             _hd146027146069_))
                                                        (if (gx#stx-null?
                                                             _tl146028146071_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test146054_)
                                     (cons (gx#core-expand-expression
                                            _K146064_)
                                           (cons (gx#core-expand-expression
                                                  _E146074_)
                                                 '()))))
                         (gx#stx-source _stx146013_))
                        (_E146016146034_))
                    (_E146016146034_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146016146034_)))))
                                        (_E146016146034_)))))
                              (_E146016146034_))))
                      (_E146016146034_)))))
          (_E146015146076_))))
    (define gx#core-expand-ref%
      (lambda (_stx145972_)
        (let* ((_e145973145983_ _stx145972_)
               (_E145975145987_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145973145983_)))
               (_E145974146009_
                (lambda ()
                  (if (gx#stx-pair? _e145973145983_)
                      (let ((_e145976145991_ (gx#syntax-e _e145973145983_)))
                        (let ((_hd145977145994_ (##car _e145976145991_))
                              (_tl145978145996_ (##cdr _e145976145991_)))
                          (if (gx#stx-pair? _tl145978145996_)
                              (let ((_e145979145999_
                                     (gx#syntax-e _tl145978145996_)))
                                (let ((_hd145980146002_
                                       (##car _e145979145999_))
                                      (_tl145981146004_
                                       (##cdr _e145979145999_)))
                                  (let ((_id146007_ _hd145980146002_))
                                    (if (gx#stx-null? _tl145981146004_)
                                        (if (gx#identifier? _id146007_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id146007_
                                                          _stx145972_)
                                                         '()))
                                             (gx#stx-source _stx145972_))
                                            (_E145975145987_))
                                        (_E145975145987_)))))
                              (_E145975145987_))))
                      (_E145975145987_)))))
          (_E145974146009_))))
    (define gx#core-expand-setq%
      (lambda (_stx145918_)
        (let* ((_e145919145932_ _stx145918_)
               (_E145921145936_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145919145932_)))
               (_E145920145968_
                (lambda ()
                  (if (gx#stx-pair? _e145919145932_)
                      (let ((_e145922145940_ (gx#syntax-e _e145919145932_)))
                        (let ((_hd145923145943_ (##car _e145922145940_))
                              (_tl145924145945_ (##cdr _e145922145940_)))
                          (if (gx#stx-pair? _tl145924145945_)
                              (let ((_e145925145948_
                                     (gx#syntax-e _tl145924145945_)))
                                (let ((_hd145926145951_
                                       (##car _e145925145948_))
                                      (_tl145927145953_
                                       (##cdr _e145925145948_)))
                                  (let ((_id145956_ _hd145926145951_))
                                    (if (gx#stx-pair? _tl145927145953_)
                                        (let ((_e145928145958_
                                               (gx#syntax-e _tl145927145953_)))
                                          (let ((_hd145929145961_
                                                 (##car _e145928145958_))
                                                (_tl145930145963_
                                                 (##cdr _e145928145958_)))
                                            (let ((_expr145966_
                                                   _hd145929145961_))
                                              (if (gx#stx-null?
                                                   _tl145930145963_)
                                                  (if (gx#identifier?
                                                       _id145956_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id145956_
                            _stx145918_)
                           (cons (gx#core-expand-expression _expr145966_)
                                 '())))
               (gx#stx-source _stx145918_))
              (_E145921145936_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145921145936_)))))
                                        (_E145921145936_)))))
                              (_E145921145936_))))
                      (_E145921145936_)))))
          (_E145920145968_))))
    (define gx#macro-expand-extern
      (lambda (_stx145766_)
        (letrec ((_generate145768_
                  (lambda (_body145798_)
                    (let _lp145800_ ((_rest145802_ _body145798_)
                                     (_ns145803_
                                      (gx#core-context-namespace__0))
                                     (_r145804_ '()))
                      (let* ((_e145805145820_ _rest145802_)
                             (_E145818145824_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e145805145820_)))
                             (_E145814145828_
                              (lambda ()
                                (if (gx#stx-null? _e145805145820_)
                                    (if '#t
                                        (reverse _r145804_)
                                        (_E145818145824_))
                                    (_E145818145824_))))
                             (_E145807145885_
                              (lambda ()
                                (if (gx#stx-pair? _e145805145820_)
                                    (let ((_e145815145832_
                                           (gx#syntax-e _e145805145820_)))
                                      (let ((_hd145816145835_
                                             (##car _e145815145832_))
                                            (_tl145817145837_
                                             (##cdr _e145815145832_)))
                                        (let* ((_hd145840_ _hd145816145835_)
                                               (_rest145842_ _tl145817145837_))
                                          (if '#t
                                              (if (gx#identifier? _hd145840_)
                                                  (_lp145800_
                                                   _rest145842_
                                                   _ns145803_
                                                   (cons (cons _hd145840_
                                                               (cons (if _ns145803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd145840_
                                  _ns145803_
                                  '"#"
                                  _hd145840_)
                                 _hd145840_)
                             '()))
                 _r145804_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e145843145853_
                                                          _hd145840_)
                                                         (_E145845145857_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e145843145853_)))
                                                         (_E145844145881_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e145843145853_)
                        (let ((_e145846145861_ (gx#syntax-e _e145843145853_)))
                          (let ((_hd145847145864_ (##car _e145846145861_))
                                (_tl145848145866_ (##cdr _e145846145861_)))
                            (let ((_id145869_ _hd145847145864_))
                              (if (gx#stx-pair? _tl145848145866_)
                                  (let ((_e145849145871_
                                         (gx#syntax-e _tl145848145866_)))
                                    (let ((_hd145850145874_
                                           (##car _e145849145871_))
                                          (_tl145851145876_
                                           (##cdr _e145849145871_)))
                                      (let ((_eid145879_ _hd145850145874_))
                                        (if (gx#stx-null? _tl145851145876_)
                                            (if (and (gx#identifier?
                                                      _id145869_)
                                                     (gx#identifier?
                                                      _eid145879_))
                                                (_lp145800_
                                                 _rest145842_
                                                 _ns145803_
                                                 (cons (cons _id145869_
                                                             (cons _eid145879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r145804_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E145845145857_))
                                            (_E145845145857_)))))
                                  (_E145845145857_)))))
                        (_E145845145857_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E145844145881_)))
                                              (_E145814145828_)))))
                                    (_E145814145828_))))
                             (_E145806145914_
                              (lambda ()
                                (if (gx#stx-pair? _e145805145820_)
                                    (let ((_e145808145889_
                                           (gx#syntax-e _e145805145820_)))
                                      (let ((_hd145809145892_
                                             (##car _e145808145889_))
                                            (_tl145810145894_
                                             (##cdr _e145808145889_)))
                                        (if (eq? (gx#stx-e _hd145809145892_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl145810145894_)
                                                (let ((_e145811145897_
                                                       (gx#syntax-e
                                                        _tl145810145894_)))
                                                  (let ((_hd145812145900_
                                                         (##car _e145811145897_))
                                                        (_tl145813145902_
                                                         (##cdr _e145811145897_)))
                                                    (let* ((_ns145905_
                                                            _hd145812145900_)
                                                           (_rest145907_
                                                            _tl145813145902_))
                                                      (if '#t
                                                          (let ((_ns145912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns145905_)
                             (symbol->string (gx#stx-e _ns145905_))
                             (if (or (gx#stx-string? _ns145905_)
                                     (gx#stx-false? _ns145905_))
                                 (gx#stx-e _ns145905_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx145766_
                                  _ns145905_)))))
                    (_lp145800_ _rest145907_ _ns145912_ _r145804_))
                  (_E145807145885_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E145807145885_))
                                            (_E145807145885_))))
                                    (_E145807145885_)))))
                        (_E145806145914_))))))
          (let* ((_e145769145776_ _stx145766_)
                 (_E145771145780_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145769145776_)))
                 (_E145770145794_
                  (lambda ()
                    (if (gx#stx-pair? _e145769145776_)
                        (let ((_e145772145784_ (gx#syntax-e _e145769145776_)))
                          (let ((_hd145773145787_ (##car _e145772145784_))
                                (_tl145774145789_ (##cdr _e145772145784_)))
                            (let ((_body145792_ _tl145774145789_))
                              (if (gx#stx-list? _body145792_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate145768_ _body145792_))
                                  (_E145771145780_)))))
                        (_E145771145780_)))))
            (_E145770145794_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx145712_)
        (let* ((_e145713145726_ _stx145712_)
               (_E145715145730_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145713145726_)))
               (_E145714145762_
                (lambda ()
                  (if (gx#stx-pair? _e145713145726_)
                      (let ((_e145716145734_ (gx#syntax-e _e145713145726_)))
                        (let ((_hd145717145737_ (##car _e145716145734_))
                              (_tl145718145739_ (##cdr _e145716145734_)))
                          (if (gx#stx-pair? _tl145718145739_)
                              (let ((_e145719145742_
                                     (gx#syntax-e _tl145718145739_)))
                                (let ((_hd145720145745_
                                       (##car _e145719145742_))
                                      (_tl145721145747_
                                       (##cdr _e145719145742_)))
                                  (let ((_hd145750_ _hd145720145745_))
                                    (if (gx#stx-pair? _tl145721145747_)
                                        (let ((_e145722145752_
                                               (gx#syntax-e _tl145721145747_)))
                                          (let ((_hd145723145755_
                                                 (##car _e145722145752_))
                                                (_tl145724145757_
                                                 (##cdr _e145722145752_)))
                                            (let ((_expr145760_
                                                   _hd145723145755_))
                                              (if (gx#stx-null?
                                                   _tl145724145757_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd145750_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd145750_)
                          (cons _expr145760_ '())))
              (_E145715145730_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145715145730_)))))
                                        (_E145715145730_)))))
                              (_E145715145730_))))
                      (_E145715145730_)))))
          (_E145714145762_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx145658_)
        (let* ((_e145659145672_ _stx145658_)
               (_E145661145676_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145659145672_)))
               (_E145660145708_
                (lambda ()
                  (if (gx#stx-pair? _e145659145672_)
                      (let ((_e145662145680_ (gx#syntax-e _e145659145672_)))
                        (let ((_hd145663145683_ (##car _e145662145680_))
                              (_tl145664145685_ (##cdr _e145662145680_)))
                          (if (gx#stx-pair? _tl145664145685_)
                              (let ((_e145665145688_
                                     (gx#syntax-e _tl145664145685_)))
                                (let ((_hd145666145691_
                                       (##car _e145665145688_))
                                      (_tl145667145693_
                                       (##cdr _e145665145688_)))
                                  (let ((_hd145696_ _hd145666145691_))
                                    (if (gx#stx-pair? _tl145667145693_)
                                        (let ((_e145668145698_
                                               (gx#syntax-e _tl145667145693_)))
                                          (let ((_hd145669145701_
                                                 (##car _e145668145698_))
                                                (_tl145670145703_
                                                 (##cdr _e145668145698_)))
                                            (let ((_expr145706_
                                                   _hd145669145701_))
                                              (if (gx#stx-null?
                                                   _tl145670145703_)
                                                  (if (gx#identifier?
                                                       _hd145696_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd145696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr145706_ '())))
              (_E145661145676_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145661145676_)))))
                                        (_E145661145676_)))))
                              (_E145661145676_))))
                      (_E145661145676_)))))
          (_E145660145708_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx145604_)
        (let* ((_e145605145618_ _stx145604_)
               (_E145607145622_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145605145618_)))
               (_E145606145654_
                (lambda ()
                  (if (gx#stx-pair? _e145605145618_)
                      (let ((_e145608145626_ (gx#syntax-e _e145605145618_)))
                        (let ((_hd145609145629_ (##car _e145608145626_))
                              (_tl145610145631_ (##cdr _e145608145626_)))
                          (if (gx#stx-pair? _tl145610145631_)
                              (let ((_e145611145634_
                                     (gx#syntax-e _tl145610145631_)))
                                (let ((_hd145612145637_
                                       (##car _e145611145634_))
                                      (_tl145613145639_
                                       (##cdr _e145611145634_)))
                                  (let ((_id145642_ _hd145612145637_))
                                    (if (gx#stx-pair? _tl145613145639_)
                                        (let ((_e145614145644_
                                               (gx#syntax-e _tl145613145639_)))
                                          (let ((_hd145615145647_
                                                 (##car _e145614145644_))
                                                (_tl145616145649_
                                                 (##cdr _e145614145644_)))
                                            (let ((_alias-id145652_
                                                   _hd145615145647_))
                                              (if (gx#stx-null?
                                                   _tl145616145649_)
                                                  (if (and (gx#identifier?
                                                            _id145642_)
                                                           (gx#identifier?
                                                            _alias-id145652_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id145642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id145652_ '())))
              (_E145607145622_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145607145622_)))))
                                        (_E145607145622_)))))
                              (_E145607145622_))))
                      (_E145607145622_)))))
          (_E145606145654_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx145561_)
        (let* ((_e145562145572_ _stx145561_)
               (_E145564145576_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145562145572_)))
               (_E145563145600_
                (lambda ()
                  (if (gx#stx-pair? _e145562145572_)
                      (let ((_e145565145580_ (gx#syntax-e _e145562145572_)))
                        (let ((_hd145566145583_ (##car _e145565145580_))
                              (_tl145567145585_ (##cdr _e145565145580_)))
                          (if (gx#stx-pair? _tl145567145585_)
                              (let ((_e145568145588_
                                     (gx#syntax-e _tl145567145585_)))
                                (let ((_hd145569145591_
                                       (##car _e145568145588_))
                                      (_tl145570145593_
                                       (##cdr _e145568145588_)))
                                  (let* ((_hd145596_ _hd145569145591_)
                                         (_body145598_ _tl145570145593_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd145596_)
                                             (gx#stx-list? _body145598_)
                                             (not (gx#stx-null? _body145598_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd145596_)
                                         _body145598_)
                                        (_E145564145576_)))))
                              (_E145564145576_))))
                      (_E145564145576_)))))
          (_E145563145600_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx145497_)
        (letrec ((_generate145499_
                  (lambda (_clause145529_)
                    (let* ((_e145530145537_ _clause145529_)
                           (_E145532145541_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx145497_
                               _clause145529_)))
                           (_E145531145557_
                            (lambda ()
                              (if (gx#stx-pair? _e145530145537_)
                                  (let ((_e145533145545_
                                         (gx#syntax-e _e145530145537_)))
                                    (let ((_hd145534145548_
                                           (##car _e145533145545_))
                                          (_tl145535145550_
                                           (##cdr _e145533145545_)))
                                      (let* ((_hd145553_ _hd145534145548_)
                                             (_body145555_ _tl145535145550_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd145553_)
                                                 (gx#stx-list? _body145555_)
                                                 (not (gx#stx-null?
                                                       _body145555_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd145553_)
                                                   _body145555_)
                                             (gx#stx-source _clause145529_))
                                            (_E145532145541_)))))
                                  (_E145532145541_)))))
                      (_E145531145557_)))))
          (let* ((_e145500145507_ _stx145497_)
                 (_E145502145511_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145500145507_)))
                 (_E145501145525_
                  (lambda ()
                    (if (gx#stx-pair? _e145500145507_)
                        (let ((_e145503145515_ (gx#syntax-e _e145500145507_)))
                          (let ((_hd145504145518_ (##car _e145503145515_))
                                (_tl145505145520_ (##cdr _e145503145515_)))
                            (let ((_clauses145523_ _tl145505145520_))
                              (if (gx#stx-list? _clauses145523_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate145499_
                                    _clauses145523_))
                                  (_E145502145511_)))))
                        (_E145502145511_)))))
            (_E145501145525_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx145398_ _form145399_)
        (letrec ((_generate145401_
                  (lambda (_bind145444_)
                    (let* ((_e145445145455_ _bind145444_)
                           (_E145447145459_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx145398_
                               _bind145444_)))
                           (_E145446145483_
                            (lambda ()
                              (if (gx#stx-pair? _e145445145455_)
                                  (let ((_e145448145463_
                                         (gx#syntax-e _e145445145455_)))
                                    (let ((_hd145449145466_
                                           (##car _e145448145463_))
                                          (_tl145450145468_
                                           (##cdr _e145448145463_)))
                                      (let ((_ids145471_ _hd145449145466_))
                                        (if (gx#stx-pair? _tl145450145468_)
                                            (let ((_e145451145473_
                                                   (gx#syntax-e
                                                    _tl145450145468_)))
                                              (let ((_hd145452145476_
                                                     (##car _e145451145473_))
                                                    (_tl145453145478_
                                                     (##cdr _e145451145473_)))
                                                (let ((_expr145481_
                                                       _hd145452145476_))
                                                  (if (gx#stx-null?
                                                       _tl145453145478_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids145471_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids145471_)
                        (cons _expr145481_ '()))
                  (_E145447145459_))
              (_E145447145459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E145447145459_)))))
                                  (_E145447145459_)))))
                      (_E145446145483_)))))
          (let* ((_e145402145412_ _stx145398_)
                 (_E145404145416_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145402145412_)))
                 (_E145403145440_
                  (lambda ()
                    (if (gx#stx-pair? _e145402145412_)
                        (let ((_e145405145420_ (gx#syntax-e _e145402145412_)))
                          (let ((_hd145406145423_ (##car _e145405145420_))
                                (_tl145407145425_ (##cdr _e145405145420_)))
                            (if (gx#stx-pair? _tl145407145425_)
                                (let ((_e145408145428_
                                       (gx#syntax-e _tl145407145425_)))
                                  (let ((_hd145409145431_
                                         (##car _e145408145428_))
                                        (_tl145410145433_
                                         (##cdr _e145408145428_)))
                                    (let* ((_hd145436_ _hd145409145431_)
                                           (_body145438_ _tl145410145433_))
                                      (if (and (gx#stx-list? _hd145436_)
                                               (gx#stx-list? _body145438_)
                                               (not (gx#stx-null?
                                                     _body145438_)))
                                          (gx#core-cons*
                                           _form145399_
                                           (gx#stx-map1
                                            _generate145401_
                                            _hd145436_)
                                           _body145438_)
                                          (_E145404145416_)))))
                                (_E145404145416_))))
                        (_E145404145416_)))))
            (_E145403145440_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx145490_)
        (let ((_form145492_ '%#let-values))
          (gx#macro-expand-let-values__% _stx145490_ _form145492_))))
    (define gx#macro-expand-let-values
      (lambda _g152069_
        (let ((_g152068_ (##length _g152069_)))
          (cond ((##fx= _g152068_ 1)
                 (apply (lambda (_stx145490_)
                          (gx#macro-expand-let-values__0 _stx145490_))
                        _g152069_))
                ((##fx= _g152068_ 2)
                 (apply (lambda (_stx145494_ _form145495_)
                          (gx#macro-expand-let-values__%
                           _stx145494_
                           _form145495_))
                        _g152069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g152069_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx145395_)
        (gx#macro-expand-let-values__% _stx145395_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx145393_)
        (gx#macro-expand-let-values__% _stx145393_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx145284_)
        (let* ((_e145285145311_ _stx145284_)
               (_E145297145315_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145285145311_)))
               (_E145287145357_
                (lambda ()
                  (if (gx#stx-pair? _e145285145311_)
                      (let ((_e145298145319_ (gx#syntax-e _e145285145311_)))
                        (let ((_hd145299145322_ (##car _e145298145319_))
                              (_tl145300145324_ (##cdr _e145298145319_)))
                          (if (gx#stx-pair? _tl145300145324_)
                              (let ((_e145301145327_
                                     (gx#syntax-e _tl145300145324_)))
                                (let ((_hd145302145330_
                                       (##car _e145301145327_))
                                      (_tl145303145332_
                                       (##cdr _e145301145327_)))
                                  (let ((_test145335_ _hd145302145330_))
                                    (if (gx#stx-pair? _tl145303145332_)
                                        (let ((_e145304145337_
                                               (gx#syntax-e _tl145303145332_)))
                                          (let ((_hd145305145340_
                                                 (##car _e145304145337_))
                                                (_tl145306145342_
                                                 (##cdr _e145304145337_)))
                                            (let ((_K145345_ _hd145305145340_))
                                              (if (gx#stx-pair?
                                                   _tl145306145342_)
                                                  (let ((_e145307145347_
                                                         (gx#syntax-e
                                                          _tl145306145342_)))
                                                    (let ((_hd145308145350_
                                                           (##car _e145307145347_))
                                                          (_tl145309145352_
                                                           (##cdr _e145307145347_)))
                                                      (let ((_E145355_
                                                             _hd145308145350_))
                                                        (if (gx#stx-null?
                                                             _tl145309145352_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test145335_
                         _K145345_
                         _E145355_)
                        (_E145297145315_))
                    (_E145297145315_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145297145315_)))))
                                        (_E145297145315_)))))
                              (_E145297145315_))))
                      (_E145297145315_))))
               (_E145286145389_
                (lambda ()
                  (if (gx#stx-pair? _e145285145311_)
                      (let ((_e145288145361_ (gx#syntax-e _e145285145311_)))
                        (let ((_hd145289145364_ (##car _e145288145361_))
                              (_tl145290145366_ (##cdr _e145288145361_)))
                          (if (gx#stx-pair? _tl145290145366_)
                              (let ((_e145291145369_
                                     (gx#syntax-e _tl145290145366_)))
                                (let ((_hd145292145372_
                                       (##car _e145291145369_))
                                      (_tl145293145374_
                                       (##cdr _e145291145369_)))
                                  (let ((_test145377_ _hd145292145372_))
                                    (if (gx#stx-pair? _tl145293145374_)
                                        (let ((_e145294145379_
                                               (gx#syntax-e _tl145293145374_)))
                                          (let ((_hd145295145382_
                                                 (##car _e145294145379_))
                                                (_tl145296145384_
                                                 (##cdr _e145294145379_)))
                                            (let ((_K145387_ _hd145295145382_))
                                              (if (gx#stx-null?
                                                   _tl145296145384_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test145377_
                                                       _K145387_
                                                       '#!void)
                                                      (_E145287145357_))
                                                  (_E145287145357_)))))
                                        (_E145287145357_)))))
                              (_E145287145357_))))
                      (_E145287145357_)))))
          (_E145286145389_))))
    (define gx#free-identifier=?
      (lambda (_xid145272_ _yid145273_)
        (let ((_xe145275_ (gx#resolve-identifier__0 _xid145272_))
              (_ye145276_ (gx#resolve-identifier__0 _yid145273_)))
          (if (and _xe145275_ _ye145276_)
              (let ((_$e145278_ (eq? _xe145275_ _ye145276_)))
                (if _$e145278_
                    _$e145278_
                    (if (##structure-instance-of? _xe145275_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye145276_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe145275_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye145276_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe145275_ _ye145276_)
                  '#f
                  (gx#stx-eq? _xid145272_ _yid145273_))))))
    (define gx#bound-identifier=?
      (lambda (_xid145256_ _yid145257_)
        (letrec ((_context145259_
                  (lambda (_e145270_)
                    (if (##structure-direct-instance-of?
                         _e145270_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e145270_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks145260_
                  (lambda (_e145268_)
                    (if (symbol? _e145268_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e145268_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e145268_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e145268_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap145261_
                  (lambda (_e145266_)
                    (if (symbol? _e145266_)
                        _e145266_
                        (gx#syntax-local-unwrap _e145266_)))))
          (let ((_x145263_ (_unwrap145261_ _xid145256_))
                (_y145264_ (_unwrap145261_ _yid145257_)))
            (if (gx#stx-eq? _x145263_ _y145264_)
                (if (eq? (_context145259_ _x145263_)
                         (_context145259_ _y145264_))
                    (equal? (_marks145260_ _x145263_)
                            (_marks145260_ _y145264_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx145254_)
        (if (gx#identifier? _stx145254_)
            (gx#core-identifier=? _stx145254_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx145252_)
        (if (gx#identifier? _stx145252_)
            (gx#core-identifier=? _stx145252_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x145250_)
        (if (gx#identifier? _x145250_)
            (if (not (gx#underscore? _x145250_)) _x145250_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx145196_ _where145197_)
        (let _lp145199_ ((_rest145201_ (gx#syntax->list _stx145196_)))
          (let* ((_rest145202145210_ _rest145201_)
                 (_else145204145218_ (lambda () '#t))
                 (_K145206145228_
                  (lambda (_rest145221_ _hd145222_)
                    (if (not (gx#identifier? _hd145222_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where145197_
                         _hd145222_)
                        (if (find (lambda (_g145223145225_)
                                    (gx#bound-identifier=?
                                     _g145223145225_
                                     _hd145222_))
                                  _rest145221_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where145197_
                             _hd145222_)
                            (_lp145199_ _rest145221_))))))
            (if (##pair? _rest145202145210_)
                (let ((_hd145207145231_ (##car _rest145202145210_))
                      (_tl145208145233_ (##cdr _rest145202145210_)))
                  (let* ((_hd145236_ _hd145207145231_)
                         (_rest145238_ _tl145208145233_))
                    (_K145206145228_ _rest145238_ _hd145236_)))
                (_else145204145218_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx145243_)
        (let ((_where145245_ _stx145243_))
          (gx#check-duplicate-identifiers__% _stx145243_ _where145245_))))
    (define gx#check-duplicate-identifiers
      (lambda _g152071_
        (let ((_g152070_ (##length _g152071_)))
          (cond ((##fx= _g152070_ 1)
                 (apply (lambda (_stx145243_)
                          (gx#check-duplicate-identifiers__0 _stx145243_))
                        _g152071_))
                ((##fx= _g152070_ 2)
                 (apply (lambda (_stx145247_ _where145248_)
                          (gx#check-duplicate-identifiers__%
                           _stx145247_
                           _where145248_))
                        _g152071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g152071_))))))
    (define gx#core-bind-values?
      (lambda (_stx145188_)
        (gx#stx-andmap
         (lambda (_x145190_)
           (let ((_$e145192_ (gx#identifier? _x145190_)))
             (if _$e145192_ _$e145192_ (gx#stx-false? _x145190_))))
         _stx145188_)))
    (define gx#core-bind-values!__%
      (lambda (_stx145152_ _rebind?145153_ _phi145154_ _ctx145155_)
        (gx#stx-for-each1
         (lambda (_id145157_)
           (if (gx#identifier? _id145157_)
               (gx#core-bind-runtime!__%
                _id145157_
                _rebind?145153_
                _phi145154_
                _ctx145155_)
               '#!void))
         _stx145152_)))
    (define gx#core-bind-values!__0
      (lambda (_stx145162_)
        (let* ((_rebind?145164_ '#f)
               (_phi145166_ (gx#current-expander-phi))
               (_ctx145168_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145162_
           _rebind?145164_
           _phi145166_
           _ctx145168_))))
    (define gx#core-bind-values!__1
      (lambda (_stx145170_ _rebind?145171_)
        (let* ((_phi145173_ (gx#current-expander-phi))
               (_ctx145175_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145170_
           _rebind?145171_
           _phi145173_
           _ctx145175_))))
    (define gx#core-bind-values!__2
      (lambda (_stx145177_ _rebind?145178_ _phi145179_)
        (let ((_ctx145181_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145177_
           _rebind?145178_
           _phi145179_
           _ctx145181_))))
    (define gx#core-bind-values!
      (lambda _g152073_
        (let ((_g152072_ (##length _g152073_)))
          (cond ((##fx= _g152072_ 1)
                 (apply (lambda (_stx145162_)
                          (gx#core-bind-values!__0 _stx145162_))
                        _g152073_))
                ((##fx= _g152072_ 2)
                 (apply (lambda (_stx145170_ _rebind?145171_)
                          (gx#core-bind-values!__1
                           _stx145170_
                           _rebind?145171_))
                        _g152073_))
                ((##fx= _g152072_ 3)
                 (apply (lambda (_stx145177_ _rebind?145178_ _phi145179_)
                          (gx#core-bind-values!__2
                           _stx145177_
                           _rebind?145178_
                           _phi145179_))
                        _g152073_))
                ((##fx= _g152072_ 4)
                 (apply (lambda (_stx145183_
                                 _rebind?145184_
                                 _phi145185_
                                 _ctx145186_)
                          (gx#core-bind-values!__%
                           _stx145183_
                           _rebind?145184_
                           _phi145185_
                           _ctx145186_))
                        _g152073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g152073_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx145147_)
        (gx#stx-map1
         (lambda (_x145149_)
           (if (gx#identifier? _x145149_)
               (gx#core-quote-syntax__0 _x145149_)
               '#f))
         _stx145147_)))
    (define gx#core-runtime-ref?
      (lambda (_stx145140_)
        (if (gx#identifier? _stx145140_)
            (let* ((_bind145142_ (gx#resolve-identifier__0 _stx145140_))
                   (_$e145144_ (not _bind145142_)))
              (if _$e145144_
                  _$e145144_
                  (##structure-instance-of?
                   _bind145142_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id145132_ _form145133_)
        (let ((_bind145135_ (gx#resolve-identifier__0 _id145132_)))
          (if (##structure-instance-of? _bind145135_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id145132_)
              (if (not _bind145135_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id145132_)))
                      (gx#core-quote-syntax__0 _id145132_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form145133_
                       _id145132_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form145133_
                   _id145132_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id145091_ _rebind?145092_ _phi145093_ _ctx145094_)
        (let* ((_key145096_ (gx#core-identifier-key _id145091_))
               (_eid145098_
                (gx#make-binding-id__%
                 _key145096_
                 '#f
                 _phi145093_
                 _ctx145094_))
               (_bind145100_
                (if (##structure-instance-of?
                     _ctx145094_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid145098_
                     _key145096_
                     _phi145093_
                     _ctx145094_)
                    (if (##structure-instance-of?
                         _ctx145094_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid145098_
                         _key145096_
                         _phi145093_)
                        (if (##structure-instance-of?
                             _ctx145094_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid145098_
                             _key145096_
                             _phi145093_)
                            (##structure
                             gx#runtime-binding::t
                             _eid145098_
                             _key145096_
                             _phi145093_))))))
          (gx#bind-identifier!__%
           _id145091_
           _bind145100_
           _rebind?145092_
           _phi145093_
           _ctx145094_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id145106_)
        (let* ((_rebind?145108_ '#f)
               (_phi145110_ (gx#current-expander-phi))
               (_ctx145112_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145106_
           _rebind?145108_
           _phi145110_
           _ctx145112_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id145114_ _rebind?145115_)
        (let* ((_phi145117_ (gx#current-expander-phi))
               (_ctx145119_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145114_
           _rebind?145115_
           _phi145117_
           _ctx145119_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id145121_ _rebind?145122_ _phi145123_)
        (let ((_ctx145125_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145121_
           _rebind?145122_
           _phi145123_
           _ctx145125_))))
    (define gx#core-bind-runtime!
      (lambda _g152075_
        (let ((_g152074_ (##length _g152075_)))
          (cond ((##fx= _g152074_ 1)
                 (apply (lambda (_id145106_)
                          (gx#core-bind-runtime!__0 _id145106_))
                        _g152075_))
                ((##fx= _g152074_ 2)
                 (apply (lambda (_id145114_ _rebind?145115_)
                          (gx#core-bind-runtime!__1
                           _id145114_
                           _rebind?145115_))
                        _g152075_))
                ((##fx= _g152074_ 3)
                 (apply (lambda (_id145121_ _rebind?145122_ _phi145123_)
                          (gx#core-bind-runtime!__2
                           _id145121_
                           _rebind?145122_
                           _phi145123_))
                        _g152075_))
                ((##fx= _g152074_ 4)
                 (apply (lambda (_id145127_
                                 _rebind?145128_
                                 _phi145129_
                                 _ctx145130_)
                          (gx#core-bind-runtime!__%
                           _id145127_
                           _rebind?145128_
                           _phi145129_
                           _ctx145130_))
                        _g152075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g152075_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id145046_ _eid145047_ _rebind?145048_ _phi145049_ _ctx145050_)
        (let* ((_key145052_ (gx#core-identifier-key _id145046_))
               (_bind145054_
                (if (##structure-instance-of?
                     _ctx145050_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid145047_
                     _key145052_
                     _phi145049_
                     _ctx145050_)
                    (if (##structure-instance-of?
                         _ctx145050_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid145047_
                         _key145052_
                         _phi145049_)
                        (##structure
                         gx#runtime-binding::t
                         _eid145047_
                         _key145052_
                         _phi145049_)))))
          (gx#bind-identifier!__%
           _id145046_
           _bind145054_
           _rebind?145048_
           _phi145049_
           _ctx145050_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id145060_ _eid145061_)
        (let* ((_rebind?145063_ '#f)
               (_phi145065_ (gx#current-expander-phi))
               (_ctx145067_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145060_
           _eid145061_
           _rebind?145063_
           _phi145065_
           _ctx145067_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id145069_ _eid145070_ _rebind?145071_)
        (let* ((_phi145073_ (gx#current-expander-phi))
               (_ctx145075_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145069_
           _eid145070_
           _rebind?145071_
           _phi145073_
           _ctx145075_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id145077_ _eid145078_ _rebind?145079_ _phi145080_)
        (let ((_ctx145082_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145077_
           _eid145078_
           _rebind?145079_
           _phi145080_
           _ctx145082_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g152077_
        (let ((_g152076_ (##length _g152077_)))
          (cond ((##fx= _g152076_ 2)
                 (apply (lambda (_id145060_ _eid145061_)
                          (gx#core-bind-runtime-reference!__0
                           _id145060_
                           _eid145061_))
                        _g152077_))
                ((##fx= _g152076_ 3)
                 (apply (lambda (_id145069_ _eid145070_ _rebind?145071_)
                          (gx#core-bind-runtime-reference!__1
                           _id145069_
                           _eid145070_
                           _rebind?145071_))
                        _g152077_))
                ((##fx= _g152076_ 4)
                 (apply (lambda (_id145077_
                                 _eid145078_
                                 _rebind?145079_
                                 _phi145080_)
                          (gx#core-bind-runtime-reference!__2
                           _id145077_
                           _eid145078_
                           _rebind?145079_
                           _phi145080_))
                        _g152077_))
                ((##fx= _g152076_ 5)
                 (apply (lambda (_id145084_
                                 _eid145085_
                                 _rebind?145086_
                                 _phi145087_
                                 _ctx145088_)
                          (gx#core-bind-runtime-reference!__%
                           _id145084_
                           _eid145085_
                           _rebind?145086_
                           _phi145087_
                           _ctx145088_))
                        _g152077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g152077_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id145006_ _eid145007_ _rebind?145008_ _phi145009_ _ctx145010_)
        (gx#bind-identifier!__%
         _id145006_
         (##structure
          gx#extern-binding::t
          _eid145007_
          (gx#core-identifier-key _id145006_)
          _phi145009_)
         _rebind?145008_
         _phi145009_
         _ctx145010_)))
    (define gx#core-bind-extern!__0
      (lambda (_id145015_ _eid145016_)
        (let* ((_rebind?145018_ '#f)
               (_phi145020_ (gx#current-expander-phi))
               (_ctx145022_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145015_
           _eid145016_
           _rebind?145018_
           _phi145020_
           _ctx145022_))))
    (define gx#core-bind-extern!__1
      (lambda (_id145024_ _eid145025_ _rebind?145026_)
        (let* ((_phi145028_ (gx#current-expander-phi))
               (_ctx145030_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145024_
           _eid145025_
           _rebind?145026_
           _phi145028_
           _ctx145030_))))
    (define gx#core-bind-extern!__2
      (lambda (_id145032_ _eid145033_ _rebind?145034_ _phi145035_)
        (let ((_ctx145037_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145032_
           _eid145033_
           _rebind?145034_
           _phi145035_
           _ctx145037_))))
    (define gx#core-bind-extern!
      (lambda _g152079_
        (let ((_g152078_ (##length _g152079_)))
          (cond ((##fx= _g152078_ 2)
                 (apply (lambda (_id145015_ _eid145016_)
                          (gx#core-bind-extern!__0 _id145015_ _eid145016_))
                        _g152079_))
                ((##fx= _g152078_ 3)
                 (apply (lambda (_id145024_ _eid145025_ _rebind?145026_)
                          (gx#core-bind-extern!__1
                           _id145024_
                           _eid145025_
                           _rebind?145026_))
                        _g152079_))
                ((##fx= _g152078_ 4)
                 (apply (lambda (_id145032_
                                 _eid145033_
                                 _rebind?145034_
                                 _phi145035_)
                          (gx#core-bind-extern!__2
                           _id145032_
                           _eid145033_
                           _rebind?145034_
                           _phi145035_))
                        _g152079_))
                ((##fx= _g152078_ 5)
                 (apply (lambda (_id145039_
                                 _eid145040_
                                 _rebind?145041_
                                 _phi145042_
                                 _ctx145043_)
                          (gx#core-bind-extern!__%
                           _id145039_
                           _eid145040_
                           _rebind?145041_
                           _phi145042_
                           _ctx145043_))
                        _g152079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g152079_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id144960_ _e144961_ _rebind?144962_ _phi144963_ _ctx144964_)
        (gx#bind-identifier!__%
         _id144960_
         (let ((_key144969_ (gx#core-identifier-key _id144960_))
               (_e144970_
                (if (or (##structure-instance-of? _e144961_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e144961_
                         'gx#expander-context::t))
                    _e144961_
                    (##structure
                     gx#user-expander::t
                     _e144961_
                     _ctx144964_
                     _phi144963_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key144969_ '#t _phi144963_ _ctx144964_)
            _key144969_
            _phi144963_
            _e144970_))
         _rebind?144962_
         _phi144963_
         _ctx144964_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id144975_ _e144976_)
        (let* ((_rebind?144978_ '#f)
               (_phi144980_ (gx#current-expander-phi))
               (_ctx144982_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id144975_
           _e144976_
           _rebind?144978_
           _phi144980_
           _ctx144982_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id144984_ _e144985_ _rebind?144986_)
        (let* ((_phi144988_ (gx#current-expander-phi))
               (_ctx144990_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id144984_
           _e144985_
           _rebind?144986_
           _phi144988_
           _ctx144990_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id144992_ _e144993_ _rebind?144994_ _phi144995_)
        (let ((_ctx144997_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id144992_
           _e144993_
           _rebind?144994_
           _phi144995_
           _ctx144997_))))
    (define gx#core-bind-syntax!
      (lambda _g152081_
        (let ((_g152080_ (##length _g152081_)))
          (cond ((##fx= _g152080_ 2)
                 (apply (lambda (_id144975_ _e144976_)
                          (gx#core-bind-syntax!__0 _id144975_ _e144976_))
                        _g152081_))
                ((##fx= _g152080_ 3)
                 (apply (lambda (_id144984_ _e144985_ _rebind?144986_)
                          (gx#core-bind-syntax!__1
                           _id144984_
                           _e144985_
                           _rebind?144986_))
                        _g152081_))
                ((##fx= _g152080_ 4)
                 (apply (lambda (_id144992_
                                 _e144993_
                                 _rebind?144994_
                                 _phi144995_)
                          (gx#core-bind-syntax!__2
                           _id144992_
                           _e144993_
                           _rebind?144994_
                           _phi144995_))
                        _g152081_))
                ((##fx= _g152080_ 5)
                 (apply (lambda (_id144999_
                                 _e145000_
                                 _rebind?145001_
                                 _phi145002_
                                 _ctx145003_)
                          (gx#core-bind-syntax!__%
                           _id144999_
                           _e145000_
                           _rebind?145001_
                           _phi145002_
                           _ctx145003_))
                        _g152081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g152081_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id144943_ _e144944_ _rebind?144945_)
        (gx#core-bind-syntax!__%
         _id144943_
         _e144944_
         _rebind?144945_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id144950_ _e144951_)
        (let ((_rebind?144953_ '#f))
          (gx#core-bind-root-syntax!__%
           _id144950_
           _e144951_
           _rebind?144953_))))
    (define gx#core-bind-root-syntax!
      (lambda _g152083_
        (let ((_g152082_ (##length _g152083_)))
          (cond ((##fx= _g152082_ 2)
                 (apply (lambda (_id144950_ _e144951_)
                          (gx#core-bind-root-syntax!__0 _id144950_ _e144951_))
                        _g152083_))
                ((##fx= _g152082_ 3)
                 (apply (lambda (_id144955_ _e144956_ _rebind?144957_)
                          (gx#core-bind-root-syntax!__%
                           _id144955_
                           _e144956_
                           _rebind?144957_))
                        _g152083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g152083_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id144901_
               _alias-id144902_
               _rebind?144903_
               _phi144904_
               _ctx144905_)
        (gx#bind-identifier!__%
         _id144901_
         (let ((_key144907_ (gx#core-identifier-key _id144901_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key144907_ '#t _phi144904_ _ctx144905_)
            _key144907_
            _phi144904_
            _alias-id144902_))
         _rebind?144903_
         _phi144904_
         _ctx144905_)))
    (define gx#core-bind-alias!__0
      (lambda (_id144912_ _alias-id144913_)
        (let* ((_rebind?144915_ '#f)
               (_phi144917_ (gx#current-expander-phi))
               (_ctx144919_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144912_
           _alias-id144913_
           _rebind?144915_
           _phi144917_
           _ctx144919_))))
    (define gx#core-bind-alias!__1
      (lambda (_id144921_ _alias-id144922_ _rebind?144923_)
        (let* ((_phi144925_ (gx#current-expander-phi))
               (_ctx144927_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144921_
           _alias-id144922_
           _rebind?144923_
           _phi144925_
           _ctx144927_))))
    (define gx#core-bind-alias!__2
      (lambda (_id144929_ _alias-id144930_ _rebind?144931_ _phi144932_)
        (let ((_ctx144934_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144929_
           _alias-id144930_
           _rebind?144931_
           _phi144932_
           _ctx144934_))))
    (define gx#core-bind-alias!
      (lambda _g152085_
        (let ((_g152084_ (##length _g152085_)))
          (cond ((##fx= _g152084_ 2)
                 (apply (lambda (_id144912_ _alias-id144913_)
                          (gx#core-bind-alias!__0 _id144912_ _alias-id144913_))
                        _g152085_))
                ((##fx= _g152084_ 3)
                 (apply (lambda (_id144921_ _alias-id144922_ _rebind?144923_)
                          (gx#core-bind-alias!__1
                           _id144921_
                           _alias-id144922_
                           _rebind?144923_))
                        _g152085_))
                ((##fx= _g152084_ 4)
                 (apply (lambda (_id144929_
                                 _alias-id144930_
                                 _rebind?144931_
                                 _phi144932_)
                          (gx#core-bind-alias!__2
                           _id144929_
                           _alias-id144930_
                           _rebind?144931_
                           _phi144932_))
                        _g152085_))
                ((##fx= _g152084_ 5)
                 (apply (lambda (_id144936_
                                 _alias-id144937_
                                 _rebind?144938_
                                 _phi144939_
                                 _ctx144940_)
                          (gx#core-bind-alias!__%
                           _id144936_
                           _alias-id144937_
                           _rebind?144938_
                           _phi144939_
                           _ctx144940_))
                        _g152085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g152085_))))))
    (define gx#make-binding-id__%
      (lambda (_key144858_ _syntax?144859_ _phi144860_ _ctx144861_)
        (if (uninterned-symbol? _key144858_)
            (gensym 'L)
            (if (pair? _key144858_)
                (gensym (car _key144858_))
                (if (##structure-instance-of? _ctx144861_ 'gx#top-context::t)
                    (let ((_ns144863_
                           (gx#core-context-namespace__% _ctx144861_)))
                      (if (and (fxzero? _phi144860_) (not _syntax?144859_))
                          (if _ns144863_
                              (make-symbol__1 _ns144863_ '"#" _key144858_)
                              _key144858_)
                          (if _syntax?144859_
                              (make-symbol__1
                               (let ((_$e144865_ _ns144863_))
                                 (if _$e144865_ _$e144865_ '""))
                               '"[:"
                               (number->string _phi144860_)
                               '":]#"
                               _key144858_)
                              (make-symbol__1
                               (let ((_$e144868_ _ns144863_))
                                 (if _$e144868_ _$e144868_ '""))
                               '"["
                               (number->string _phi144860_)
                               '"]#"
                               _key144858_))))
                    (gensym _key144858_))))))
    (define gx#make-binding-id__0
      (lambda (_key144874_)
        (let* ((_syntax?144876_ '#f)
               (_phi144878_ (gx#current-expander-phi))
               (_ctx144880_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144874_
           _syntax?144876_
           _phi144878_
           _ctx144880_))))
    (define gx#make-binding-id__1
      (lambda (_key144882_ _syntax?144883_)
        (let* ((_phi144885_ (gx#current-expander-phi))
               (_ctx144887_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144882_
           _syntax?144883_
           _phi144885_
           _ctx144887_))))
    (define gx#make-binding-id__2
      (lambda (_key144889_ _syntax?144890_ _phi144891_)
        (let ((_ctx144893_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144889_
           _syntax?144890_
           _phi144891_
           _ctx144893_))))
    (define gx#make-binding-id
      (lambda _g152087_
        (let ((_g152086_ (##length _g152087_)))
          (cond ((##fx= _g152086_ 1)
                 (apply (lambda (_key144874_)
                          (gx#make-binding-id__0 _key144874_))
                        _g152087_))
                ((##fx= _g152086_ 2)
                 (apply (lambda (_key144882_ _syntax?144883_)
                          (gx#make-binding-id__1 _key144882_ _syntax?144883_))
                        _g152087_))
                ((##fx= _g152086_ 3)
                 (apply (lambda (_key144889_ _syntax?144890_ _phi144891_)
                          (gx#make-binding-id__2
                           _key144889_
                           _syntax?144890_
                           _phi144891_))
                        _g152087_))
                ((##fx= _g152086_ 4)
                 (apply (lambda (_key144895_
                                 _syntax?144896_
                                 _phi144897_
                                 _ctx144898_)
                          (gx#make-binding-id__%
                           _key144895_
                           _syntax?144896_
                           _phi144897_
                           _ctx144898_))
                        _g152087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g152087_))))))))
