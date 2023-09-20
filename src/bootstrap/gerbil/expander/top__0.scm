(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1695199285)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx12530_)
        (letrec ((_expand-special12532_
                  (lambda (_hd12534_ _K12535_ _rest12536_ _r12537_)
                    (_K12535_
                     _rest12536_
                     (cons (gx#core-expand-top _hd12534_) _r12537_)))))
          (gx#core-expand-block__0 _stx12530_ _expand-special12532_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx12283_)
        (letrec ((_expand-special12285_
                  (lambda (_hd12405_ _K12406_ _rest12407_ _r12408_)
                    (let* ((_K12412_
                            (lambda (_e12410_)
                              (_K12406_ _rest12407_ (cons _e12410_ _r12408_))))
                           (_e1241312442_ _hd12405_)
                           (_E1243712446_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1241312442_)))
                           (_E1243312458_
                            (lambda ()
                              (if (gx#stx-pair? _e1241312442_)
                                  (let ((_e1243812450_
                                         (gx#syntax-e _e1241312442_)))
                                    (let ((_hd1243912453_
                                           (##car _e1243812450_))
                                          (_tl1244012455_
                                           (##cdr _e1243812450_)))
                                      (if (and (gx#identifier? _hd1243912453_)
                                               (gx#core-identifier=?
                                                _hd1243912453_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K12412_
                                               (gx#core-expand-define-runtime%
                                                _hd12405_))
                                              (_E1243712446_))
                                          (_E1243712446_))))
                                  (_E1243712446_))))
                           (_E1242912470_
                            (lambda ()
                              (if (gx#stx-pair? _e1241312442_)
                                  (let ((_e1243412462_
                                         (gx#syntax-e _e1241312442_)))
                                    (let ((_hd1243512465_
                                           (##car _e1243412462_))
                                          (_tl1243612467_
                                           (##cdr _e1243412462_)))
                                      (if (and (gx#identifier? _hd1243512465_)
                                               (gx#core-identifier=?
                                                _hd1243512465_
                                                '%#define-alias))
                                          (if '#t
                                              (_K12412_
                                               (gx#core-expand-define-alias%
                                                _hd12405_))
                                              (_E1243312458_))
                                          (_E1243312458_))))
                                  (_E1243312458_))))
                           (_E1241912482_
                            (lambda ()
                              (if (gx#stx-pair? _e1241312442_)
                                  (let ((_e1243012474_
                                         (gx#syntax-e _e1241312442_)))
                                    (let ((_hd1243112477_
                                           (##car _e1243012474_))
                                          (_tl1243212479_
                                           (##cdr _e1243012474_)))
                                      (if (and (gx#identifier? _hd1243112477_)
                                               (gx#core-identifier=?
                                                _hd1243112477_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K12412_
                                               (gx#core-expand-define-syntax%
                                                _hd12405_))
                                              (_E1242912470_))
                                          (_E1242912470_))))
                                  (_E1242912470_))))
                           (_E1241512514_
                            (lambda ()
                              (if (gx#stx-pair? _e1241312442_)
                                  (let ((_e1242012486_
                                         (gx#syntax-e _e1241312442_)))
                                    (let ((_hd1242112489_
                                           (##car _e1242012486_))
                                          (_tl1242212491_
                                           (##cdr _e1242012486_)))
                                      (if (and (gx#identifier? _hd1242112489_)
                                               (gx#core-identifier=?
                                                _hd1242112489_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl1242212491_)
                                              (let ((_e1242312494_
                                                     (gx#syntax-e
                                                      _tl1242212491_)))
                                                (let ((_hd1242412497_
                                                       (##car _e1242312494_))
                                                      (_tl1242512499_
                                                       (##cdr _e1242312494_)))
                                                  (let ((_hd-bind12502_
                                                         _hd1242412497_))
                                                    (if (gx#stx-pair?
                                                         _tl1242512499_)
                                                        (let ((_e1242612504_
                                                               (gx#syntax-e
                                                                _tl1242512499_)))
                                                          (let ((_hd1242712507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1242612504_))
                        (_tl1242812509_ (##cdr _e1242612504_)))
                    (let ((_expr12512_ _hd1242712507_))
                      (if (gx#stx-null? _tl1242812509_)
                          (if (gx#core-bind-values? _hd-bind12502_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind12502_)
                                (_K12412_ _hd12405_))
                              (_E1241912482_))
                          (_E1241912482_)))))
                (_E1241912482_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1241912482_))
                                          (_E1241912482_))))
                                  (_E1241912482_))))
                           (_E1241412526_
                            (lambda ()
                              (if (gx#stx-pair? _e1241312442_)
                                  (let ((_e1241612518_
                                         (gx#syntax-e _e1241312442_)))
                                    (let ((_hd1241712521_
                                           (##car _e1241612518_))
                                          (_tl1241812523_
                                           (##cdr _e1241612518_)))
                                      (if (and (gx#identifier? _hd1241712521_)
                                               (gx#core-identifier=?
                                                _hd1241712521_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K12412_
                                               (gx#core-expand-begin-syntax%
                                                _hd12405_))
                                              (_E1241512514_))
                                          (_E1241512514_))))
                                  (_E1241512514_)))))
                      (_E1241412526_))))
                 (_eval-body12286_
                  (lambda (_rbody12294_)
                    (let _lp12296_ ((_rest12298_ _rbody12294_)
                                    (_body12299_ '())
                                    (_ebody12300_ '()))
                      (let* ((_rest1230112309_ _rest12298_)
                             (_else1230312317_
                              (lambda ()
                                (values _body12299_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody12300_)
                                          (gx#stx-source _stx12283_))))))
                             (_K1230512393_
                              (lambda (_rest12320_ _hd12321_)
                                (let* ((_e1232212339_ _hd12321_)
                                       (_E1233412343_
                                        (lambda ()
                                          (_lp12296_
                                           _rest12320_
                                           (cons _hd12321_ _body12299_)
                                           (cons _hd12321_ _ebody12300_))))
                                       (_E1232412355_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1232212339_)
                                              (let ((_e1233512347_
                                                     (gx#syntax-e
                                                      _e1232212339_)))
                                                (let ((_hd1233612350_
                                                       (##car _e1233512347_))
                                                      (_tl1233712352_
                                                       (##cdr _e1233512347_)))
                                                  (if (and (gx#identifier?
                                                            _hd1233612350_)
                                                           (gx#core-identifier=?
                                                            _hd1233612350_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp12296_
                                                           _rest12320_
                                                           (cons _hd12321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body12299_)
                   _ebody12300_)
                  (_E1233412343_))
              (_E1233412343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1233412343_))))
                                       (_E1232312389_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1232212339_)
                                              (let ((_e1232512359_
                                                     (gx#syntax-e
                                                      _e1232212339_)))
                                                (let ((_hd1232612362_
                                                       (##car _e1232512359_))
                                                      (_tl1232712364_
                                                       (##cdr _e1232512359_)))
                                                  (if (and (gx#identifier?
                                                            _hd1232612362_)
                                                           (gx#core-identifier=?
                                                            _hd1232612362_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl1232712364_)
                                                          (let ((_e1232812367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1232712364_)))
                    (let ((_hd1232912370_ (##car _e1232812367_))
                          (_tl1233012372_ (##cdr _e1232812367_)))
                      (let ((_hd-bind12375_ _hd1232912370_))
                        (if (gx#stx-pair? _tl1233012372_)
                            (let ((_e1233112377_ (gx#syntax-e _tl1233012372_)))
                              (let ((_hd1233212380_ (##car _e1233112377_))
                                    (_tl1233312382_ (##cdr _e1233112377_)))
                                (let ((_expr12385_ _hd1233212380_))
                                  (if (gx#stx-null? _tl1233312382_)
                                      (if '#t
                                          (let ((_ehd12387_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind12375_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr12385_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd12321_))))
                                            (_lp12296_
                                             _rest12320_
                                             (cons _ehd12387_ _body12299_)
                                             (cons _ehd12387_ _ebody12300_)))
                                          (_E1232412355_))
                                      (_E1232412355_)))))
                            (_E1232412355_)))))
                  (_E1232412355_))
              (_E1232412355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1232412355_)))))
                                  (_E1232312389_)))))
                        (if (##pair? _rest1230112309_)
                            (let ((_hd1230612396_ (##car _rest1230112309_))
                                  (_tl1230712398_ (##cdr _rest1230112309_)))
                              (let* ((_hd12401_ _hd1230612396_)
                                     (_rest12403_ _tl1230712398_))
                                (_K1230512393_ _rest12403_ _hd12401_)))
                            (_else1230312317_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody12289_
                     (gx#core-expand-block__1
                      _stx12283_
                      _expand-special12285_
                      '#f))
                    (_g12553_ (_eval-body12286_ _rbody12289_)))
               (begin
                 (let ((_g12554_
                        (if (##values? _g12553_)
                            (##vector-length _g12553_)
                            1)))
                   (if (not (##fx= _g12554_ 2))
                       (error "Context expects 2 values" _g12554_)))
                 (let ((_expanded-body12291_ (##vector-ref _g12553_ 0))
                       (_value12292_ (##vector-ref _g12553_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body12291_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value12292_ '())))
                    (gx#stx-source _stx12283_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx12253_)
        (let* ((_e1225412261_ _stx12253_)
               (_E1225612265_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1225412261_)))
               (_E1225512279_
                (lambda ()
                  (if (gx#stx-pair? _e1225412261_)
                      (let ((_e1225712269_ (gx#syntax-e _e1225412261_)))
                        (let ((_hd1225812272_ (##car _e1225712269_))
                              (_tl1225912274_ (##cdr _e1225712269_)))
                          (let ((_body12277_ _tl1225912274_))
                            (if (gx#stx-list? _body12277_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body12277_)
                                 (gx#stx-source _stx12253_))
                                (_E1225612265_)))))
                      (_E1225612265_)))))
          (_E1225512279_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx12251_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx12251_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx12197_)
        (let* ((_e1219812211_ _stx12197_)
               (_E1220012215_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1219812211_)))
               (_E1219912247_
                (lambda ()
                  (if (gx#stx-pair? _e1219812211_)
                      (let ((_e1220112219_ (gx#syntax-e _e1219812211_)))
                        (let ((_hd1220212222_ (##car _e1220112219_))
                              (_tl1220312224_ (##cdr _e1220112219_)))
                          (if (gx#stx-pair? _tl1220312224_)
                              (let ((_e1220412227_
                                     (gx#syntax-e _tl1220312224_)))
                                (let ((_hd1220512230_ (##car _e1220412227_))
                                      (_tl1220612232_ (##cdr _e1220412227_)))
                                  (let ((_ann12235_ _hd1220512230_))
                                    (if (gx#stx-pair? _tl1220612232_)
                                        (let ((_e1220712237_
                                               (gx#syntax-e _tl1220612232_)))
                                          (let ((_hd1220812240_
                                                 (##car _e1220712237_))
                                                (_tl1220912242_
                                                 (##cdr _e1220712237_)))
                                            (let ((_expr12245_ _hd1220812240_))
                                              (if (gx#stx-null? _tl1220912242_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann12235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr12245_) '())))
               (gx#stx-source _stx12197_))
              (_E1220012215_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1220012215_)))))
                                        (_E1220012215_)))))
                              (_E1220012215_))))
                      (_E1220012215_)))))
          (_E1219912247_))))
    (define gx#core-expand-local-block
      (lambda (_stx11921_ _body11922_)
        (letrec ((_expand-special11924_
                  (lambda (_hd12192_ _K12193_ _rest12194_ _r12195_)
                    (_K12193_
                     '()
                     (cons (_expand-internal11925_ _hd12192_ _rest12194_)
                           _r12195_))))
                 (_expand-internal11925_
                  (lambda (_hd12188_ _rest12189_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal11927_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd12188_ _rest12189_))
                          (gx#stx-source _stx11921_))
                         _expand-internal-special11926_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj12547 (make-object gx#local-context::t '5)))
                       (gx#local-context:::init!__0 __obj12547)
                       __obj12547))))
                 (_expand-internal-special11926_
                  (lambda (_hd12083_ _K12084_ _rest12085_ _r12086_)
                    (let* ((_e1208712112_ _hd12083_)
                           (_E1210712116_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1208712112_)))
                           (_E1210312128_
                            (lambda ()
                              (if (gx#stx-pair? _e1208712112_)
                                  (let ((_e1210812120_
                                         (gx#syntax-e _e1208712112_)))
                                    (let ((_hd1210912123_
                                           (##car _e1210812120_))
                                          (_tl1211012125_
                                           (##cdr _e1210812120_)))
                                      (if (and (gx#identifier? _hd1210912123_)
                                               (gx#core-identifier=?
                                                _hd1210912123_
                                                '%#declare))
                                          (if '#t
                                              (_K12084_
                                               _rest12085_
                                               (cons (gx#core-expand-declare%
                                                      _hd12083_)
                                                     _r12086_))
                                              (_E1210712116_))
                                          (_E1210712116_))))
                                  (_E1210712116_))))
                           (_E1209912140_
                            (lambda ()
                              (if (gx#stx-pair? _e1208712112_)
                                  (let ((_e1210412132_
                                         (gx#syntax-e _e1208712112_)))
                                    (let ((_hd1210512135_
                                           (##car _e1210412132_))
                                          (_tl1210612137_
                                           (##cdr _e1210412132_)))
                                      (if (and (gx#identifier? _hd1210512135_)
                                               (gx#core-identifier=?
                                                _hd1210512135_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd12083_)
                                                (_K12084_
                                                 _rest12085_
                                                 _r12086_))
                                              (_E1210312128_))
                                          (_E1210312128_))))
                                  (_E1210312128_))))
                           (_E1208912152_
                            (lambda ()
                              (if (gx#stx-pair? _e1208712112_)
                                  (let ((_e1210012144_
                                         (gx#syntax-e _e1208712112_)))
                                    (let ((_hd1210112147_
                                           (##car _e1210012144_))
                                          (_tl1210212149_
                                           (##cdr _e1210012144_)))
                                      (if (and (gx#identifier? _hd1210112147_)
                                               (gx#core-identifier=?
                                                _hd1210112147_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd12083_)
                                                (_K12084_
                                                 _rest12085_
                                                 _r12086_))
                                              (_E1209912140_))
                                          (_E1209912140_))))
                                  (_E1209912140_))))
                           (_E1208812184_
                            (lambda ()
                              (if (gx#stx-pair? _e1208712112_)
                                  (let ((_e1209012156_
                                         (gx#syntax-e _e1208712112_)))
                                    (let ((_hd1209112159_
                                           (##car _e1209012156_))
                                          (_tl1209212161_
                                           (##cdr _e1209012156_)))
                                      (if (and (gx#identifier? _hd1209112159_)
                                               (gx#core-identifier=?
                                                _hd1209112159_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl1209212161_)
                                              (let ((_e1209312164_
                                                     (gx#syntax-e
                                                      _tl1209212161_)))
                                                (let ((_hd1209412167_
                                                       (##car _e1209312164_))
                                                      (_tl1209512169_
                                                       (##cdr _e1209312164_)))
                                                  (let ((_hd-bind12172_
                                                         _hd1209412167_))
                                                    (if (gx#stx-pair?
                                                         _tl1209512169_)
                                                        (let ((_e1209612174_
                                                               (gx#syntax-e
                                                                _tl1209512169_)))
                                                          (let ((_hd1209712177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1209612174_))
                        (_tl1209812179_ (##cdr _e1209612174_)))
                    (let ((_expr12182_ _hd1209712177_))
                      (if (gx#stx-null? _tl1209812179_)
                          (if (gx#core-bind-values? _hd-bind12172_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind12172_)
                                (_K12084_
                                 _rest12085_
                                 (cons _hd12083_ _r12086_)))
                              (_E1208912152_))
                          (_E1208912152_)))))
                (_E1208912152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1208912152_))
                                          (_E1208912152_))))
                                  (_E1208912152_)))))
                      (_E1208812184_))))
                 (_wrap-internal11927_
                  (lambda (_rbody11929_)
                    (let _lp11931_ ((_rest11933_ _rbody11929_)
                                    (_decls11934_ '())
                                    (_bind11935_ '())
                                    (_body11936_ '()))
                      (let* ((_e1193711944_ _rest11933_)
                             (_E1193911993_
                              (lambda ()
                                (let* ((_body11988_
                                        (let* ((_body1194711957_ _body11936_)
                                               (_else1195011965_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body11936_)
                                                   (gx#stx-source
                                                    _stx11921_)))))
                                          (let ((_K1195511985_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _stx11921_)))
                                                (_K1195211971_
                                                 (lambda (_expr11969_)
                                                   _expr11969_)))
                                            (let ((_try-match1194911981_
                                                   (lambda ()
                                                     (if (##pair? _body1194711957_)
                                                         (let ((_tl1195411976_
                                                                (##cdr _body1194711957_))
                                                               (_hd1195311974_
                                                                (##car _body1194711957_)))
                                                           (if (##null? _tl1195411976_)
                                                               (let ((_expr11979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd1195311974_))
                         (_K1195211971_ _expr11979_))
                       (_else1195011965_)))
                 (_else1195011965_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body1194711957_)
                                                  (_K1195511985_)
                                                  (_try-match1194911981_))))))
                                       (_body11990_
                                        (if (null? _bind11935_)
                                            _body11988_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind11935_
                                                         (cons _body11988_
                                                               '())))
                                             (gx#stx-source _stx11921_)))))
                                  (if (null? _decls11934_)
                                      _body11990_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls11934_
                                                   (cons _body11990_ '())))
                                       (gx#stx-source _stx11921_))))))
                             (_E1193812079_
                              (lambda ()
                                (if (gx#stx-pair? _e1193711944_)
                                    (let ((_e1194011997_
                                           (gx#syntax-e _e1193711944_)))
                                      (let ((_hd1194112000_
                                             (##car _e1194011997_))
                                            (_tl1194212002_
                                             (##cdr _e1194011997_)))
                                        (let* ((_hd12005_ _hd1194112000_)
                                               (_rest12007_ _tl1194212002_))
                                          (if '#t
                                              (let* ((_e1200812025_ _hd12005_)
                                                     (_E1202012029_
                                                      (lambda ()
                                                        (if (null? _bind11935_)
                                                            (_lp11931_
                                                             _rest12007_
                                                             _decls11934_
                                                             _bind11935_
                                                             (cons _hd12005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body11936_))
                    (_lp11931_
                     _rest12007_
                     _decls11934_
                     (cons (cons '#f (cons _hd12005_ '())) _bind11935_)
                     _body11936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1201012043_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1200812025_)
                                                            (let ((_e1202112033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1200812025_)))
                      (let ((_hd1202212036_ (##car _e1202112033_))
                            (_tl1202312038_ (##cdr _e1202112033_)))
                        (if (and (gx#identifier? _hd1202212036_)
                                 (gx#core-identifier=?
                                  _hd1202212036_
                                  '%#declare))
                            (let ((_xdecls12041_ _tl1202312038_))
                              (if '#t
                                  (_lp11931_
                                   _rest12007_
                                   (gx#stx-foldr
                                    cons
                                    _decls11934_
                                    _xdecls12041_)
                                   _bind11935_
                                   _body11936_)
                                  (_E1202012029_)))
                            (_E1202012029_))))
                    (_E1202012029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1200912075_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1200812025_)
                                                            (let ((_e1201112047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1200812025_)))
                      (let ((_hd1201212050_ (##car _e1201112047_))
                            (_tl1201312052_ (##cdr _e1201112047_)))
                        (if (and (gx#identifier? _hd1201212050_)
                                 (gx#core-identifier=?
                                  _hd1201212050_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl1201312052_)
                                (let ((_e1201412055_
                                       (gx#syntax-e _tl1201312052_)))
                                  (let ((_hd1201512058_ (##car _e1201412055_))
                                        (_tl1201612060_ (##cdr _e1201412055_)))
                                    (let ((_hd-bind12063_ _hd1201512058_))
                                      (if (gx#stx-pair? _tl1201612060_)
                                          (let ((_e1201712065_
                                                 (gx#syntax-e _tl1201612060_)))
                                            (let ((_hd1201812068_
                                                   (##car _e1201712065_))
                                                  (_tl1201912070_
                                                   (##cdr _e1201712065_)))
                                              (let ((_expr12073_
                                                     _hd1201812068_))
                                                (if (gx#stx-null?
                                                     _tl1201912070_)
                                                    (if '#t
                                                        (_lp11931_
                                                         _rest12007_
                                                         _decls11934_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind12063_)
                             (cons (gx#core-expand-expression _expr12073_)
                                   '()))
                       _bind11935_)
                 _body11936_)
                (_E1201012043_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1201012043_)))))
                                          (_E1201012043_)))))
                                (_E1201012043_))
                            (_E1201012043_))))
                    (_E1201012043_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1200912075_))
                                              (_E1193911993_)))))
                                    (_E1193911993_)))))
                        (_E1193812079_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body11922_)
            (gx#stx-source _stx11921_))
           _expand-special11924_))))
    (define gx#core-expand-declare%
      (lambda (_stx11859_)
        (let* ((_e1186011867_ _stx11859_)
               (_E1186211871_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1186011867_)))
               (_E1186111917_
                (lambda ()
                  (if (gx#stx-pair? _e1186011867_)
                      (let ((_e1186311875_ (gx#syntax-e _e1186011867_)))
                        (let ((_hd1186411878_ (##car _e1186311875_))
                              (_tl1186511880_ (##cdr _e1186311875_)))
                          (let ((_body11883_ _tl1186511880_))
                            (if (gx#stx-list? _body11883_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl11885_)
                                     (let* ((_e1188611893_ _decl11885_)
                                            (_E1188811897_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e1188611893_)))
                                            (_E1188711913_
                                             (lambda ()
                                               (if (gx#stx-pair? _e1188611893_)
                                                   (let ((_e1188911901_
                                                          (gx#syntax-e
                                                           _e1188611893_)))
                                                     (let ((_hd1189011904_
                                                            (##car _e1188911901_))
                                                           (_tl1189111906_
                                                            (##cdr _e1188911901_)))
                                                       (let* ((_head11909_
                                                               _hd1189011904_)
                                                              (_args11911_
                                                               _tl1189111906_))
                                                         (if (gx#stx-list?
                                                              _args11911_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl11885_)
                                                             (_E1188811897_)))))
                                                   (_E1188811897_)))))
                                       (_E1188711913_)))
                                   _body11883_))
                                 (gx#stx-source _stx11859_))
                                (_E1186211871_)))))
                      (_E1186211871_)))))
          (_E1186111917_))))
    (define gx#core-expand-extern%
      (lambda (_stx11763_)
        (let* ((_e1176411771_ _stx11763_)
               (_E1176611775_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1176411771_)))
               (_E1176511855_
                (lambda ()
                  (if (gx#stx-pair? _e1176411771_)
                      (let ((_e1176711779_ (gx#syntax-e _e1176411771_)))
                        (let ((_hd1176811782_ (##car _e1176711779_))
                              (_tl1176911784_ (##cdr _e1176711779_)))
                          (let ((_body11787_ _tl1176911784_))
                            (if '#t
                                (let _lp11789_ ((_rest11791_ _body11787_)
                                                (_r11792_ '()))
                                  (let* ((_e1179311807_ _rest11791_)
                                         (_E1180511811_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _stx11763_)))
                                         (_E1179511815_
                                          (lambda ()
                                            (if (gx#stx-null? _e1179311807_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r11792_))
                                                     (gx#stx-source
                                                      _stx11763_))
                                                    (_E1180511811_))
                                                (_E1180511811_))))
                                         (_E1179411851_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1179311807_)
                                                (let ((_e1179611819_
                                                       (gx#syntax-e
                                                        _e1179311807_)))
                                                  (let ((_hd1179711822_
                                                         (##car _e1179611819_))
                                                        (_tl1179811824_
                                                         (##cdr _e1179611819_)))
                                                    (if (gx#stx-pair?
                                                         _hd1179711822_)
                                                        (let ((_e1179911827_
                                                               (gx#syntax-e
                                                                _hd1179711822_)))
                                                          (let ((_hd1180011830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1179911827_))
                        (_tl1180111832_ (##cdr _e1179911827_)))
                    (let ((_id11835_ _hd1180011830_))
                      (if (gx#stx-pair? _tl1180111832_)
                          (let ((_e1180211837_ (gx#syntax-e _tl1180111832_)))
                            (let ((_hd1180311840_ (##car _e1180211837_))
                                  (_tl1180411842_ (##cdr _e1180211837_)))
                              (let ((_eid11845_ _hd1180311840_))
                                (if (gx#stx-null? _tl1180411842_)
                                    (let ((_rest11847_ _tl1179811824_))
                                      (if (and (gx#identifier? _id11835_)
                                               (gx#identifier? _eid11845_))
                                          (let ((_eid11849_
                                                 (gx#stx-e _eid11845_)))
                                            (gx#core-bind-extern!__0
                                             _id11835_
                                             _eid11849_)
                                            (_lp11789_
                                             _rest11847_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id11835_)
                                                         (cons _eid11849_ '()))
                                                   _r11792_)))
                                          (_E1179511815_)))
                                    (_E1179511815_)))))
                          (_E1179511815_)))))
                (_E1179511815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1179511815_)))))
                                    (_E1179411851_)))
                                (_E1176611775_)))))
                      (_E1176611775_)))))
          (_E1176511855_))))
    (define gx#core-expand-define-values%
      (lambda (_stx11709_)
        (let* ((_e1171011723_ _stx11709_)
               (_E1171211727_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1171011723_)))
               (_E1171111759_
                (lambda ()
                  (if (gx#stx-pair? _e1171011723_)
                      (let ((_e1171311731_ (gx#syntax-e _e1171011723_)))
                        (let ((_hd1171411734_ (##car _e1171311731_))
                              (_tl1171511736_ (##cdr _e1171311731_)))
                          (if (gx#stx-pair? _tl1171511736_)
                              (let ((_e1171611739_
                                     (gx#syntax-e _tl1171511736_)))
                                (let ((_hd1171711742_ (##car _e1171611739_))
                                      (_tl1171811744_ (##cdr _e1171611739_)))
                                  (let ((_hd11747_ _hd1171711742_))
                                    (if (gx#stx-pair? _tl1171811744_)
                                        (let ((_e1171911749_
                                               (gx#syntax-e _tl1171811744_)))
                                          (let ((_hd1172011752_
                                                 (##car _e1171911749_))
                                                (_tl1172111754_
                                                 (##cdr _e1171911749_)))
                                            (let ((_expr11757_ _hd1172011752_))
                                              (if (gx#stx-null? _tl1172111754_)
                                                  (if (gx#core-bind-values?
                                                       _hd11747_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd11747_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd11747_)
                             (cons (gx#core-expand-expression _expr11757_)
                                   '())))
                 (gx#stx-source _stx11709_)))
              (_E1171211727_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1171211727_)))))
                                        (_E1171211727_)))))
                              (_E1171211727_))))
                      (_E1171211727_)))))
          (_E1171111759_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx11653_)
        (let* ((_e1165411667_ _stx11653_)
               (_E1165611671_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1165411667_)))
               (_E1165511705_
                (lambda ()
                  (if (gx#stx-pair? _e1165411667_)
                      (let ((_e1165711675_ (gx#syntax-e _e1165411667_)))
                        (let ((_hd1165811678_ (##car _e1165711675_))
                              (_tl1165911680_ (##cdr _e1165711675_)))
                          (if (gx#stx-pair? _tl1165911680_)
                              (let ((_e1166011683_
                                     (gx#syntax-e _tl1165911680_)))
                                (let ((_hd1166111686_ (##car _e1166011683_))
                                      (_tl1166211688_ (##cdr _e1166011683_)))
                                  (let ((_id11691_ _hd1166111686_))
                                    (if (gx#stx-pair? _tl1166211688_)
                                        (let ((_e1166311693_
                                               (gx#syntax-e _tl1166211688_)))
                                          (let ((_hd1166411696_
                                                 (##car _e1166311693_))
                                                (_tl1166511698_
                                                 (##cdr _e1166311693_)))
                                            (let ((_binding-id11701_
                                                   _hd1166411696_))
                                              (if (gx#stx-null? _tl1166511698_)
                                                  (if (and (gx#identifier?
                                                            _id11691_)
                                                           (gx#identifier?
                                                            _binding-id11701_))
                                                      (let ((_eid11703_
                                                             (gx#stx-e
                                                              _binding-id11701_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id11691_
                                                         _eid11703_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id11691_)
                             (cons _eid11703_ '())))))
              (_E1165611671_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1165611671_)))))
                                        (_E1165611671_)))))
                              (_E1165611671_))))
                      (_E1165611671_)))))
          (_E1165511705_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx11596_)
        (let* ((_e1159711610_ _stx11596_)
               (_E1159911614_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1159711610_)))
               (_E1159811649_
                (lambda ()
                  (if (gx#stx-pair? _e1159711610_)
                      (let ((_e1160011618_ (gx#syntax-e _e1159711610_)))
                        (let ((_hd1160111621_ (##car _e1160011618_))
                              (_tl1160211623_ (##cdr _e1160011618_)))
                          (if (gx#stx-pair? _tl1160211623_)
                              (let ((_e1160311626_
                                     (gx#syntax-e _tl1160211623_)))
                                (let ((_hd1160411629_ (##car _e1160311626_))
                                      (_tl1160511631_ (##cdr _e1160311626_)))
                                  (let ((_id11634_ _hd1160411629_))
                                    (if (gx#stx-pair? _tl1160511631_)
                                        (let ((_e1160611636_
                                               (gx#syntax-e _tl1160511631_)))
                                          (let ((_hd1160711639_
                                                 (##car _e1160611636_))
                                                (_tl1160811641_
                                                 (##cdr _e1160611636_)))
                                            (let ((_expr11644_ _hd1160711639_))
                                              (if (gx#stx-null? _tl1160811641_)
                                                  (if (gx#identifier?
                                                       _id11634_)
                                                      (let ((_g12555_
                                                             (gx#core-expand-expression+1
                                                              _expr11644_)))
                                                        (begin
                                                          (let ((_g12556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g12555_)
                             (##vector-length _g12555_)
                             1)))
                    (if (not (##fx= _g12556_ 2))
                        (error "Context expects 2 values" _g12556_)))
                  (let ((_e-stx11646_ (##vector-ref _g12555_ 0))
                        (_e11647_ (##vector-ref _g12555_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id11634_ _e11647_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id11634_)
                                   (cons _e-stx11646_ '())))
                       (gx#stx-source _stx11596_))))))
              (_E1159911614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1159911614_)))))
                                        (_E1159911614_)))))
                              (_E1159911614_))))
                      (_E1159911614_)))))
          (_E1159811649_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx11540_)
        (let* ((_e1154111554_ _stx11540_)
               (_E1154311558_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1154111554_)))
               (_E1154211592_
                (lambda ()
                  (if (gx#stx-pair? _e1154111554_)
                      (let ((_e1154411562_ (gx#syntax-e _e1154111554_)))
                        (let ((_hd1154511565_ (##car _e1154411562_))
                              (_tl1154611567_ (##cdr _e1154411562_)))
                          (if (gx#stx-pair? _tl1154611567_)
                              (let ((_e1154711570_
                                     (gx#syntax-e _tl1154611567_)))
                                (let ((_hd1154811573_ (##car _e1154711570_))
                                      (_tl1154911575_ (##cdr _e1154711570_)))
                                  (let ((_id11578_ _hd1154811573_))
                                    (if (gx#stx-pair? _tl1154911575_)
                                        (let ((_e1155011580_
                                               (gx#syntax-e _tl1154911575_)))
                                          (let ((_hd1155111583_
                                                 (##car _e1155011580_))
                                                (_tl1155211585_
                                                 (##cdr _e1155011580_)))
                                            (let ((_alias-id11588_
                                                   _hd1155111583_))
                                              (if (gx#stx-null? _tl1155211585_)
                                                  (if (and (gx#identifier?
                                                            _id11578_)
                                                           (gx#identifier?
                                                            _alias-id11588_))
                                                      (let ((_alias-id11590_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id11588_)))
                                                        (gx#core-bind-alias!__0
                                                         _id11578_
                                                         _alias-id11590_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id11578_)
                             (cons _alias-id11590_ '())))))
              (_E1154311558_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1154311558_)))))
                                        (_E1154311558_)))))
                              (_E1154311558_))))
                      (_E1154311558_)))))
          (_E1154211592_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx11483_ _wrap?11484_)
        (let* ((_e1148511495_ _stx11483_)
               (_E1148711499_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1148511495_)))
               (_E1148611526_
                (lambda ()
                  (if (gx#stx-pair? _e1148511495_)
                      (let ((_e1148811503_ (gx#syntax-e _e1148511495_)))
                        (let ((_hd1148911506_ (##car _e1148811503_))
                              (_tl1149011508_ (##cdr _e1148811503_)))
                          (if (gx#stx-pair? _tl1149011508_)
                              (let ((_e1149111511_
                                     (gx#syntax-e _tl1149011508_)))
                                (let ((_hd1149211514_ (##car _e1149111511_))
                                      (_tl1149311516_ (##cdr _e1149111511_)))
                                  (let* ((_hd11519_ _hd1149211514_)
                                         (_body11521_ _tl1149311516_))
                                    (if (gx#core-bind-values? _hd11519_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd11519_)
                                           (let ((_body11524_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd11519_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx11483_
                                                               _body11521_)
                                                              '()))))
                                             (if _wrap?11484_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body11524_)
                                                  (gx#stx-source _stx11483_))
                                                 _body11524_)))
                                         gx#current-expander-context
                                         (let ((__obj12548
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj12548)
                                           __obj12548))
                                        (_E1148711499_)))))
                              (_E1148711499_))))
                      (_E1148711499_)))))
          (_E1148611526_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx11533_)
        (let ((_wrap?11535_ '#t))
          (gx#core-expand-lambda%__% _stx11533_ _wrap?11535_))))
    (define gx#core-expand-lambda%
      (lambda _g12558_
        (let ((_g12557_ (##length _g12558_)))
          (cond ((##fx= _g12557_ 1) (apply gx#core-expand-lambda%__0 _g12558_))
                ((##fx= _g12557_ 2) (apply gx#core-expand-lambda%__% _g12558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g12558_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx11447_)
        (let* ((_e1144811455_ _stx11447_)
               (_E1145011459_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1144811455_)))
               (_E1144911478_
                (lambda ()
                  (if (gx#stx-pair? _e1144811455_)
                      (let ((_e1145111463_ (gx#syntax-e _e1144811455_)))
                        (let ((_hd1145211466_ (##car _e1145111463_))
                              (_tl1145311468_ (##cdr _e1145111463_)))
                          (let ((_clauses11471_ _tl1145311468_))
                            (if (gx#stx-list? _clauses11471_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause11473_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause11473_)
                                       (let ((_$e11475_
                                              (gx#stx-source _clause11473_)))
                                         (if _$e11475_
                                             _$e11475_
                                             (gx#stx-source _stx11447_))))
                                      '#f))
                                   _clauses11471_))
                                 (gx#stx-source _stx11447_))
                                (_E1145011459_)))))
                      (_E1145011459_)))))
          (_E1144911478_))))
    (define gx#core-expand-let-values%
      (lambda (_stx11401_)
        (let* ((_e1140211412_ _stx11401_)
               (_E1140411416_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1140211412_)))
               (_E1140311443_
                (lambda ()
                  (if (gx#stx-pair? _e1140211412_)
                      (let ((_e1140511420_ (gx#syntax-e _e1140211412_)))
                        (let ((_hd1140611423_ (##car _e1140511420_))
                              (_tl1140711425_ (##cdr _e1140511420_)))
                          (if (gx#stx-pair? _tl1140711425_)
                              (let ((_e1140811428_
                                     (gx#syntax-e _tl1140711425_)))
                                (let ((_hd1140911431_ (##car _e1140811428_))
                                      (_tl1141011433_ (##cdr _e1140811428_)))
                                  (let* ((_hd11436_ _hd1140911431_)
                                         (_body11438_ _tl1141011433_))
                                    (if (gx#core-expand-let-bind? _hd11436_)
                                        (let ((_expressions11440_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd11436_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd11436_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd11436_
                                                           _expressions11440_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx11401_
                         _body11438_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx11401_)))
                                           gx#current-expander-context
                                           (let ((__obj12549
                                                  (make-object
                                                   gx#local-context::t
                                                   '5)))
                                             (gx#local-context:::init!__0
                                              __obj12549)
                                             __obj12549)))
                                        (_E1140411416_)))))
                              (_E1140411416_))))
                      (_E1140411416_)))))
          (_E1140311443_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx11346_ _form11347_)
        (let* ((_e1134811358_ _stx11346_)
               (_E1135011362_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1134811358_)))
               (_E1134911387_
                (lambda ()
                  (if (gx#stx-pair? _e1134811358_)
                      (let ((_e1135111366_ (gx#syntax-e _e1134811358_)))
                        (let ((_hd1135211369_ (##car _e1135111366_))
                              (_tl1135311371_ (##cdr _e1135111366_)))
                          (if (gx#stx-pair? _tl1135311371_)
                              (let ((_e1135411374_
                                     (gx#syntax-e _tl1135311371_)))
                                (let ((_hd1135511377_ (##car _e1135411374_))
                                      (_tl1135611379_ (##cdr _e1135411374_)))
                                  (let* ((_hd11382_ _hd1135511377_)
                                         (_body11384_ _tl1135611379_))
                                    (if (gx#core-expand-let-bind? _hd11382_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd11382_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form11347_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd11382_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd11382_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx11346_
                                                               _body11384_)
                                                              '())))
                                            (gx#stx-source _stx11346_)))
                                         gx#current-expander-context
                                         (let ((__obj12550
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj12550)
                                           __obj12550))
                                        (_E1135011362_)))))
                              (_E1135011362_))))
                      (_E1135011362_)))))
          (_E1134911387_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx11394_)
        (let ((_form11396_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx11394_ _form11396_))))
    (define gx#core-expand-letrec-values%
      (lambda _g12560_
        (let ((_g12559_ (##length _g12560_)))
          (cond ((##fx= _g12559_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g12560_))
                ((##fx= _g12559_ 2)
                 (apply gx#core-expand-letrec-values%__% _g12560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g12560_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx11343_)
        (gx#core-expand-letrec-values%__% _stx11343_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx11300_)
        (if (gx#stx-list? _stx11300_)
            (gx#stx-andmap
             (lambda (_bind11302_)
               (let* ((_e1130311313_ _bind11302_)
                      (_E1130511317_ (lambda () '#f))
                      (_E1130411339_
                       (lambda ()
                         (if (gx#stx-pair? _e1130311313_)
                             (let ((_e1130611321_ (gx#syntax-e _e1130311313_)))
                               (let ((_hd1130711324_ (##car _e1130611321_))
                                     (_tl1130811326_ (##cdr _e1130611321_)))
                                 (let ((_hd11329_ _hd1130711324_))
                                   (if (gx#stx-pair? _tl1130811326_)
                                       (let ((_e1130911331_
                                              (gx#syntax-e _tl1130811326_)))
                                         (let ((_hd1131011334_
                                                (##car _e1130911331_))
                                               (_tl1131111336_
                                                (##cdr _e1130911331_)))
                                           (if (gx#stx-null? _tl1131111336_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd11329_)
                                                   (_E1130511317_))
                                               (_E1130511317_))))
                                       (_E1130511317_)))))
                             (_E1130511317_)))))
                 (_E1130411339_)))
             _stx11300_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind11259_)
        (let* ((_e1126011270_ _bind11259_)
               (_E1126211274_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1126011270_)))
               (_E1126111296_
                (lambda ()
                  (if (gx#stx-pair? _e1126011270_)
                      (let ((_e1126311278_ (gx#syntax-e _e1126011270_)))
                        (let ((_hd1126411281_ (##car _e1126311278_))
                              (_tl1126511283_ (##cdr _e1126311278_)))
                          (if (gx#stx-pair? _tl1126511283_)
                              (let ((_e1126611286_
                                     (gx#syntax-e _tl1126511283_)))
                                (let ((_hd1126711289_ (##car _e1126611286_))
                                      (_tl1126811291_ (##cdr _e1126611286_)))
                                  (let ((_expr11294_ _hd1126711289_))
                                    (if (gx#stx-null? _tl1126811291_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr11294_)
                                            (_E1126211274_))
                                        (_E1126211274_)))))
                              (_E1126211274_))))
                      (_E1126211274_)))))
          (_E1126111296_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind11218_)
        (let* ((_e1121911229_ _bind11218_)
               (_E1122111233_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1121911229_)))
               (_E1122011255_
                (lambda ()
                  (if (gx#stx-pair? _e1121911229_)
                      (let ((_e1122211237_ (gx#syntax-e _e1121911229_)))
                        (let ((_hd1122311240_ (##car _e1122211237_))
                              (_tl1122411242_ (##cdr _e1122211237_)))
                          (let ((_hd11245_ _hd1122311240_))
                            (if (gx#stx-pair? _tl1122411242_)
                                (let ((_e1122511247_
                                       (gx#syntax-e _tl1122411242_)))
                                  (let ((_hd1122611250_ (##car _e1122511247_))
                                        (_tl1122711252_ (##cdr _e1122511247_)))
                                    (if (gx#stx-null? _tl1122711252_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd11245_)
                                            (_E1122111233_))
                                        (_E1122111233_))))
                                (_E1122111233_)))))
                      (_E1122111233_)))))
          (_E1122011255_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind11176_ _expr11177_)
        (let* ((_e1117811188_ _bind11176_)
               (_E1118011192_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1117811188_)))
               (_E1117911214_
                (lambda ()
                  (if (gx#stx-pair? _e1117811188_)
                      (let ((_e1118111196_ (gx#syntax-e _e1117811188_)))
                        (let ((_hd1118211199_ (##car _e1118111196_))
                              (_tl1118311201_ (##cdr _e1118111196_)))
                          (let ((_hd11204_ _hd1118211199_))
                            (if (gx#stx-pair? _tl1118311201_)
                                (let ((_e1118411206_
                                       (gx#syntax-e _tl1118311201_)))
                                  (let ((_hd1118511209_ (##car _e1118411206_))
                                        (_tl1118611211_ (##cdr _e1118411206_)))
                                    (if (gx#stx-null? _tl1118611211_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd11204_)
                                                  (cons _expr11177_ '()))
                                            (_E1118011192_))
                                        (_E1118011192_))))
                                (_E1118011192_)))))
                      (_E1118011192_)))))
          (_E1117911214_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx11130_)
        (let* ((_e1113111141_ _stx11130_)
               (_E1113311145_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1113111141_)))
               (_E1113211172_
                (lambda ()
                  (if (gx#stx-pair? _e1113111141_)
                      (let ((_e1113411149_ (gx#syntax-e _e1113111141_)))
                        (let ((_hd1113511152_ (##car _e1113411149_))
                              (_tl1113611154_ (##cdr _e1113411149_)))
                          (if (gx#stx-pair? _tl1113611154_)
                              (let ((_e1113711157_
                                     (gx#syntax-e _tl1113611154_)))
                                (let ((_hd1113811160_ (##car _e1113711157_))
                                      (_tl1113911162_ (##cdr _e1113711157_)))
                                  (let* ((_hd11165_ _hd1113811160_)
                                         (_body11167_ _tl1113911162_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd11165_)
                                        (let ((_expanders11169_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd11165_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd11165_
                                              _expanders11169_)
                                             (gx#core-expand-local-block
                                              _stx11130_
                                              _body11167_))
                                           gx#current-expander-context
                                           (let ((__obj12551
                                                  (make-object
                                                   gx#local-context::t
                                                   '5)))
                                             (gx#local-context:::init!__0
                                              __obj12551)
                                             __obj12551)))
                                        (_E1113311145_)))))
                              (_E1113311145_))))
                      (_E1113311145_)))))
          (_E1113211172_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx11079_)
        (let* ((_e1108011090_ _stx11079_)
               (_E1108211094_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1108011090_)))
               (_E1108111126_
                (lambda ()
                  (if (gx#stx-pair? _e1108011090_)
                      (let ((_e1108311098_ (gx#syntax-e _e1108011090_)))
                        (let ((_hd1108411101_ (##car _e1108311098_))
                              (_tl1108511103_ (##cdr _e1108311098_)))
                          (if (gx#stx-pair? _tl1108511103_)
                              (let ((_e1108611106_
                                     (gx#syntax-e _tl1108511103_)))
                                (let ((_hd1108711109_ (##car _e1108611106_))
                                      (_tl1108811111_ (##cdr _e1108611106_)))
                                  (let* ((_hd11114_ _hd1108711109_)
                                         (_body11116_ _tl1108811111_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd11114_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd11114_
                                            (make-list
                                             (gx#stx-length _hd11114_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g1111811121_
                                                     _g1111911123_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g1111811121_
                                               _g1111911123_
                                               '#t))
                                            _hd11114_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd11114_))
                                           (gx#core-expand-local-block
                                            _stx11079_
                                            _body11116_))
                                         gx#current-expander-context
                                         (let ((__obj12552
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj12552)
                                           __obj12552))
                                        (_E1108211094_)))))
                              (_E1108211094_))))
                      (_E1108211094_)))))
          (_E1108111126_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx11036_)
        (if (gx#stx-list? _stx11036_)
            (gx#stx-andmap
             (lambda (_bind11038_)
               (let* ((_e1103911049_ _bind11038_)
                      (_E1104111053_ (lambda () '#f))
                      (_E1104011075_
                       (lambda ()
                         (if (gx#stx-pair? _e1103911049_)
                             (let ((_e1104211057_ (gx#syntax-e _e1103911049_)))
                               (let ((_hd1104311060_ (##car _e1104211057_))
                                     (_tl1104411062_ (##cdr _e1104211057_)))
                                 (let ((_hd11065_ _hd1104311060_))
                                   (if (gx#stx-pair? _tl1104411062_)
                                       (let ((_e1104511067_
                                              (gx#syntax-e _tl1104411062_)))
                                         (let ((_hd1104611070_
                                                (##car _e1104511067_))
                                               (_tl1104711072_
                                                (##cdr _e1104511067_)))
                                           (if (gx#stx-null? _tl1104711072_)
                                               (if '#t
                                                   (gx#identifier? _hd11065_)
                                                   (_E1104111053_))
                                               (_E1104111053_))))
                                       (_E1104111053_)))))
                             (_E1104111053_)))))
                 (_E1104011075_)))
             _stx11036_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind10993_)
        (let* ((_e1099411004_ _bind10993_)
               (_E1099611008_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1099411004_)))
               (_E1099511032_
                (lambda ()
                  (if (gx#stx-pair? _e1099411004_)
                      (let ((_e1099711012_ (gx#syntax-e _e1099411004_)))
                        (let ((_hd1099811015_ (##car _e1099711012_))
                              (_tl1099911017_ (##cdr _e1099711012_)))
                          (if (gx#stx-pair? _tl1099911017_)
                              (let ((_e1100011020_
                                     (gx#syntax-e _tl1099911017_)))
                                (let ((_hd1100111023_ (##car _e1100011020_))
                                      (_tl1100211025_ (##cdr _e1100011020_)))
                                  (let ((_expr11028_ _hd1100111023_))
                                    (if (gx#stx-null? _tl1100211025_)
                                        (if '#t
                                            (let ((_g12561_
                                                   (gx#core-expand-expression+1
                                                    _expr11028_)))
                                              (begin
                                                (let ((_g12562_
                                                       (if (##values? _g12561_)
                                                           (##vector-length
                                                            _g12561_)
                                                           1)))
                                                  (if (not (##fx= _g12562_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12562_)))
                                                (let ((_e11030_
                                                       (##vector-ref
                                                        _g12561_
                                                        1)))
                                                  _e11030_)))
                                            (_E1099611008_))
                                        (_E1099611008_)))))
                              (_E1099611008_))))
                      (_E1099611008_)))))
          (_E1099511032_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind10938_ _e10939_ _rebind?10940_)
        (let* ((_e1094110951_ _bind10938_)
               (_E1094310955_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1094110951_)))
               (_E1094210977_
                (lambda ()
                  (if (gx#stx-pair? _e1094110951_)
                      (let ((_e1094410959_ (gx#syntax-e _e1094110951_)))
                        (let ((_hd1094510962_ (##car _e1094410959_))
                              (_tl1094610964_ (##cdr _e1094410959_)))
                          (let ((_id10967_ _hd1094510962_))
                            (if (gx#stx-pair? _tl1094610964_)
                                (let ((_e1094710969_
                                       (gx#syntax-e _tl1094610964_)))
                                  (let ((_hd1094810972_ (##car _e1094710969_))
                                        (_tl1094910974_ (##cdr _e1094710969_)))
                                    (if (gx#stx-null? _tl1094910974_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id10967_
                                             _e10939_
                                             _rebind?10940_)
                                            (_E1094310955_))
                                        (_E1094310955_))))
                                (_E1094310955_)))))
                      (_E1094310955_)))))
          (_E1094210977_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind10984_ _e10985_)
        (let ((_rebind?10987_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind10984_
           _e10985_
           _rebind?10987_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g12564_
        (let ((_g12563_ (##length _g12564_)))
          (cond ((##fx= _g12563_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g12564_))
                ((##fx= _g12563_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g12564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g12564_))))))
    (define gx#core-expand-expression%
      (lambda (_stx10896_)
        (let* ((_e1089710907_ _stx10896_)
               (_E1089910911_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1089710907_)))
               (_E1089810933_
                (lambda ()
                  (if (gx#stx-pair? _e1089710907_)
                      (let ((_e1090010915_ (gx#syntax-e _e1089710907_)))
                        (let ((_hd1090110918_ (##car _e1090010915_))
                              (_tl1090210920_ (##cdr _e1090010915_)))
                          (if (gx#stx-pair? _tl1090210920_)
                              (let ((_e1090310923_
                                     (gx#syntax-e _tl1090210920_)))
                                (let ((_hd1090410926_ (##car _e1090310923_))
                                      (_tl1090510928_ (##cdr _e1090310923_)))
                                  (let ((_expr10931_ _hd1090410926_))
                                    (if (gx#stx-null? _tl1090510928_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr10931_)
                                            (_E1089910911_))
                                        (_E1089910911_)))))
                              (_E1089910911_))))
                      (_E1089910911_)))))
          (_E1089810933_))))
    (define gx#core-expand-quote%
      (lambda (_stx10855_)
        (let* ((_e1085610866_ _stx10855_)
               (_E1085810870_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1085610866_)))
               (_E1085710892_
                (lambda ()
                  (if (gx#stx-pair? _e1085610866_)
                      (let ((_e1085910874_ (gx#syntax-e _e1085610866_)))
                        (let ((_hd1086010877_ (##car _e1085910874_))
                              (_tl1086110879_ (##cdr _e1085910874_)))
                          (if (gx#stx-pair? _tl1086110879_)
                              (let ((_e1086210882_
                                     (gx#syntax-e _tl1086110879_)))
                                (let ((_hd1086310885_ (##car _e1086210882_))
                                      (_tl1086410887_ (##cdr _e1086210882_)))
                                  (let ((_e10890_ _hd1086310885_))
                                    (if (gx#stx-null? _tl1086410887_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e10890_)
                                                         '()))
                                             (gx#stx-source _stx10855_))
                                            (_E1085810870_))
                                        (_E1085810870_)))))
                              (_E1085810870_))))
                      (_E1085810870_)))))
          (_E1085710892_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx10814_)
        (let* ((_e1081510825_ _stx10814_)
               (_E1081710829_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1081510825_)))
               (_E1081610851_
                (lambda ()
                  (if (gx#stx-pair? _e1081510825_)
                      (let ((_e1081810833_ (gx#syntax-e _e1081510825_)))
                        (let ((_hd1081910836_ (##car _e1081810833_))
                              (_tl1082010838_ (##cdr _e1081810833_)))
                          (if (gx#stx-pair? _tl1082010838_)
                              (let ((_e1082110841_
                                     (gx#syntax-e _tl1082010838_)))
                                (let ((_hd1082210844_ (##car _e1082110841_))
                                      (_tl1082310846_ (##cdr _e1082110841_)))
                                  (let ((_e10849_ _hd1082210844_))
                                    (if (gx#stx-null? _tl1082310846_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e10849_)
                                                         '()))
                                             (gx#stx-source _stx10814_))
                                            (_E1081710829_))
                                        (_E1081710829_)))))
                              (_E1081710829_))))
                      (_E1081710829_)))))
          (_E1081610851_))))
    (define gx#core-expand-call%
      (lambda (_stx10771_)
        (let* ((_e1077210782_ _stx10771_)
               (_E1077410786_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1077210782_)))
               (_E1077310810_
                (lambda ()
                  (if (gx#stx-pair? _e1077210782_)
                      (let ((_e1077510790_ (gx#syntax-e _e1077210782_)))
                        (let ((_hd1077610793_ (##car _e1077510790_))
                              (_tl1077710795_ (##cdr _e1077510790_)))
                          (if (gx#stx-pair? _tl1077710795_)
                              (let ((_e1077810798_
                                     (gx#syntax-e _tl1077710795_)))
                                (let ((_hd1077910801_ (##car _e1077810798_))
                                      (_tl1078010803_ (##cdr _e1077810798_)))
                                  (let* ((_rator10806_ _hd1077910801_)
                                         (_args10808_ _tl1078010803_))
                                    (if (gx#stx-list? _args10808_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator10806_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args10808_))
                                         (gx#stx-source _stx10771_))
                                        (_E1077410786_)))))
                              (_E1077410786_))))
                      (_E1077410786_)))))
          (_E1077310810_))))
    (define gx#core-expand-if%
      (lambda (_stx10704_)
        (let* ((_e1070510721_ _stx10704_)
               (_E1070710725_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1070510721_)))
               (_E1070610767_
                (lambda ()
                  (if (gx#stx-pair? _e1070510721_)
                      (let ((_e1070810729_ (gx#syntax-e _e1070510721_)))
                        (let ((_hd1070910732_ (##car _e1070810729_))
                              (_tl1071010734_ (##cdr _e1070810729_)))
                          (if (gx#stx-pair? _tl1071010734_)
                              (let ((_e1071110737_
                                     (gx#syntax-e _tl1071010734_)))
                                (let ((_hd1071210740_ (##car _e1071110737_))
                                      (_tl1071310742_ (##cdr _e1071110737_)))
                                  (let ((_test10745_ _hd1071210740_))
                                    (if (gx#stx-pair? _tl1071310742_)
                                        (let ((_e1071410747_
                                               (gx#syntax-e _tl1071310742_)))
                                          (let ((_hd1071510750_
                                                 (##car _e1071410747_))
                                                (_tl1071610752_
                                                 (##cdr _e1071410747_)))
                                            (let ((_K10755_ _hd1071510750_))
                                              (if (gx#stx-pair? _tl1071610752_)
                                                  (let ((_e1071710757_
                                                         (gx#syntax-e
                                                          _tl1071610752_)))
                                                    (let ((_hd1071810760_
                                                           (##car _e1071710757_))
                                                          (_tl1071910762_
                                                           (##cdr _e1071710757_)))
                                                      (let ((_E10765_
                                                             _hd1071810760_))
                                                        (if (gx#stx-null?
                                                             _tl1071910762_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test10745_)
                                     (cons (gx#core-expand-expression _K10755_)
                                           (cons (gx#core-expand-expression
                                                  _E10765_)
                                                 '()))))
                         (gx#stx-source _stx10704_))
                        (_E1070710725_))
                    (_E1070710725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1070710725_)))))
                                        (_E1070710725_)))))
                              (_E1070710725_))))
                      (_E1070710725_)))))
          (_E1070610767_))))
    (define gx#core-expand-ref%
      (lambda (_stx10663_)
        (let* ((_e1066410674_ _stx10663_)
               (_E1066610678_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1066410674_)))
               (_E1066510700_
                (lambda ()
                  (if (gx#stx-pair? _e1066410674_)
                      (let ((_e1066710682_ (gx#syntax-e _e1066410674_)))
                        (let ((_hd1066810685_ (##car _e1066710682_))
                              (_tl1066910687_ (##cdr _e1066710682_)))
                          (if (gx#stx-pair? _tl1066910687_)
                              (let ((_e1067010690_
                                     (gx#syntax-e _tl1066910687_)))
                                (let ((_hd1067110693_ (##car _e1067010690_))
                                      (_tl1067210695_ (##cdr _e1067010690_)))
                                  (let ((_id10698_ _hd1067110693_))
                                    (if (gx#stx-null? _tl1067210695_)
                                        (if (gx#identifier? _id10698_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id10698_
                                                          _stx10663_)
                                                         '()))
                                             (gx#stx-source _stx10663_))
                                            (_E1066610678_))
                                        (_E1066610678_)))))
                              (_E1066610678_))))
                      (_E1066610678_)))))
          (_E1066510700_))))
    (define gx#core-expand-setq%
      (lambda (_stx10609_)
        (let* ((_e1061010623_ _stx10609_)
               (_E1061210627_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1061010623_)))
               (_E1061110659_
                (lambda ()
                  (if (gx#stx-pair? _e1061010623_)
                      (let ((_e1061310631_ (gx#syntax-e _e1061010623_)))
                        (let ((_hd1061410634_ (##car _e1061310631_))
                              (_tl1061510636_ (##cdr _e1061310631_)))
                          (if (gx#stx-pair? _tl1061510636_)
                              (let ((_e1061610639_
                                     (gx#syntax-e _tl1061510636_)))
                                (let ((_hd1061710642_ (##car _e1061610639_))
                                      (_tl1061810644_ (##cdr _e1061610639_)))
                                  (let ((_id10647_ _hd1061710642_))
                                    (if (gx#stx-pair? _tl1061810644_)
                                        (let ((_e1061910649_
                                               (gx#syntax-e _tl1061810644_)))
                                          (let ((_hd1062010652_
                                                 (##car _e1061910649_))
                                                (_tl1062110654_
                                                 (##cdr _e1061910649_)))
                                            (let ((_expr10657_ _hd1062010652_))
                                              (if (gx#stx-null? _tl1062110654_)
                                                  (if (gx#identifier?
                                                       _id10647_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10647_
                            _stx10609_)
                           (cons (gx#core-expand-expression _expr10657_) '())))
               (gx#stx-source _stx10609_))
              (_E1061210627_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1061210627_)))))
                                        (_E1061210627_)))))
                              (_E1061210627_))))
                      (_E1061210627_)))))
          (_E1061110659_))))
    (define gx#macro-expand-extern
      (lambda (_stx10457_)
        (letrec ((_generate10459_
                  (lambda (_body10489_)
                    (let _lp10491_ ((_rest10493_ _body10489_)
                                    (_ns10494_ (gx#core-context-namespace__0))
                                    (_r10495_ '()))
                      (let* ((_e1049610511_ _rest10493_)
                             (_E1050910515_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1049610511_)))
                             (_E1050510519_
                              (lambda ()
                                (if (gx#stx-null? _e1049610511_)
                                    (if '#t (reverse _r10495_) (_E1050910515_))
                                    (_E1050910515_))))
                             (_E1049810576_
                              (lambda ()
                                (if (gx#stx-pair? _e1049610511_)
                                    (let ((_e1050610523_
                                           (gx#syntax-e _e1049610511_)))
                                      (let ((_hd1050710526_
                                             (##car _e1050610523_))
                                            (_tl1050810528_
                                             (##cdr _e1050610523_)))
                                        (let* ((_hd10531_ _hd1050710526_)
                                               (_rest10533_ _tl1050810528_))
                                          (if '#t
                                              (if (gx#identifier? _hd10531_)
                                                  (_lp10491_
                                                   _rest10533_
                                                   _ns10494_
                                                   (cons (cons _hd10531_
                                                               (cons (if _ns10494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd10531_
                                  _ns10494_
                                  '"#"
                                  _hd10531_)
                                 _hd10531_)
                             '()))
                 _r10495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e1053410544_
                                                          _hd10531_)
                                                         (_E1053610548_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1053410544_)))
                                                         (_E1053510572_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1053410544_)
                        (let ((_e1053710552_ (gx#syntax-e _e1053410544_)))
                          (let ((_hd1053810555_ (##car _e1053710552_))
                                (_tl1053910557_ (##cdr _e1053710552_)))
                            (let ((_id10560_ _hd1053810555_))
                              (if (gx#stx-pair? _tl1053910557_)
                                  (let ((_e1054010562_
                                         (gx#syntax-e _tl1053910557_)))
                                    (let ((_hd1054110565_
                                           (##car _e1054010562_))
                                          (_tl1054210567_
                                           (##cdr _e1054010562_)))
                                      (let ((_eid10570_ _hd1054110565_))
                                        (if (gx#stx-null? _tl1054210567_)
                                            (if (and (gx#identifier? _id10560_)
                                                     (gx#identifier?
                                                      _eid10570_))
                                                (_lp10491_
                                                 _rest10533_
                                                 _ns10494_
                                                 (cons (cons _id10560_
                                                             (cons _eid10570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r10495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1053610548_))
                                            (_E1053610548_)))))
                                  (_E1053610548_)))))
                        (_E1053610548_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1053510572_)))
                                              (_E1050510519_)))))
                                    (_E1050510519_))))
                             (_E1049710605_
                              (lambda ()
                                (if (gx#stx-pair? _e1049610511_)
                                    (let ((_e1049910580_
                                           (gx#syntax-e _e1049610511_)))
                                      (let ((_hd1050010583_
                                             (##car _e1049910580_))
                                            (_tl1050110585_
                                             (##cdr _e1049910580_)))
                                        (if (eq? (gx#stx-e _hd1050010583_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl1050110585_)
                                                (let ((_e1050210588_
                                                       (gx#syntax-e
                                                        _tl1050110585_)))
                                                  (let ((_hd1050310591_
                                                         (##car _e1050210588_))
                                                        (_tl1050410593_
                                                         (##cdr _e1050210588_)))
                                                    (let* ((_ns10596_
                                                            _hd1050310591_)
                                                           (_rest10598_
                                                            _tl1050410593_))
                                                      (if '#t
                                                          (let ((_ns10603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns10596_)
                             (symbol->string (gx#stx-e _ns10596_))
                             (if (or (gx#stx-string? _ns10596_)
                                     (gx#stx-false? _ns10596_))
                                 (gx#stx-e _ns10596_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx10457_
                                  _ns10596_)))))
                    (_lp10491_ _rest10598_ _ns10603_ _r10495_))
                  (_E1049810576_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1049810576_))
                                            (_E1049810576_))))
                                    (_E1049810576_)))))
                        (_E1049710605_))))))
          (let* ((_e1046010467_ _stx10457_)
                 (_E1046210471_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1046010467_)))
                 (_E1046110485_
                  (lambda ()
                    (if (gx#stx-pair? _e1046010467_)
                        (let ((_e1046310475_ (gx#syntax-e _e1046010467_)))
                          (let ((_hd1046410478_ (##car _e1046310475_))
                                (_tl1046510480_ (##cdr _e1046310475_)))
                            (let ((_body10483_ _tl1046510480_))
                              (if (gx#stx-list? _body10483_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate10459_ _body10483_))
                                  (_E1046210471_)))))
                        (_E1046210471_)))))
            (_E1046110485_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx10403_)
        (let* ((_e1040410417_ _stx10403_)
               (_E1040610421_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1040410417_)))
               (_E1040510453_
                (lambda ()
                  (if (gx#stx-pair? _e1040410417_)
                      (let ((_e1040710425_ (gx#syntax-e _e1040410417_)))
                        (let ((_hd1040810428_ (##car _e1040710425_))
                              (_tl1040910430_ (##cdr _e1040710425_)))
                          (if (gx#stx-pair? _tl1040910430_)
                              (let ((_e1041010433_
                                     (gx#syntax-e _tl1040910430_)))
                                (let ((_hd1041110436_ (##car _e1041010433_))
                                      (_tl1041210438_ (##cdr _e1041010433_)))
                                  (let ((_hd10441_ _hd1041110436_))
                                    (if (gx#stx-pair? _tl1041210438_)
                                        (let ((_e1041310443_
                                               (gx#syntax-e _tl1041210438_)))
                                          (let ((_hd1041410446_
                                                 (##car _e1041310443_))
                                                (_tl1041510448_
                                                 (##cdr _e1041310443_)))
                                            (let ((_expr10451_ _hd1041410446_))
                                              (if (gx#stx-null? _tl1041510448_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd10441_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd10441_)
                          (cons _expr10451_ '())))
              (_E1040610421_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1040610421_)))))
                                        (_E1040610421_)))))
                              (_E1040610421_))))
                      (_E1040610421_)))))
          (_E1040510453_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx10349_)
        (let* ((_e1035010363_ _stx10349_)
               (_E1035210367_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1035010363_)))
               (_E1035110399_
                (lambda ()
                  (if (gx#stx-pair? _e1035010363_)
                      (let ((_e1035310371_ (gx#syntax-e _e1035010363_)))
                        (let ((_hd1035410374_ (##car _e1035310371_))
                              (_tl1035510376_ (##cdr _e1035310371_)))
                          (if (gx#stx-pair? _tl1035510376_)
                              (let ((_e1035610379_
                                     (gx#syntax-e _tl1035510376_)))
                                (let ((_hd1035710382_ (##car _e1035610379_))
                                      (_tl1035810384_ (##cdr _e1035610379_)))
                                  (let ((_hd10387_ _hd1035710382_))
                                    (if (gx#stx-pair? _tl1035810384_)
                                        (let ((_e1035910389_
                                               (gx#syntax-e _tl1035810384_)))
                                          (let ((_hd1036010392_
                                                 (##car _e1035910389_))
                                                (_tl1036110394_
                                                 (##cdr _e1035910389_)))
                                            (let ((_expr10397_ _hd1036010392_))
                                              (if (gx#stx-null? _tl1036110394_)
                                                  (if (gx#identifier?
                                                       _hd10387_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd10387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr10397_ '())))
              (_E1035210367_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1035210367_)))))
                                        (_E1035210367_)))))
                              (_E1035210367_))))
                      (_E1035210367_)))))
          (_E1035110399_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx10295_)
        (let* ((_e1029610309_ _stx10295_)
               (_E1029810313_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1029610309_)))
               (_E1029710345_
                (lambda ()
                  (if (gx#stx-pair? _e1029610309_)
                      (let ((_e1029910317_ (gx#syntax-e _e1029610309_)))
                        (let ((_hd1030010320_ (##car _e1029910317_))
                              (_tl1030110322_ (##cdr _e1029910317_)))
                          (if (gx#stx-pair? _tl1030110322_)
                              (let ((_e1030210325_
                                     (gx#syntax-e _tl1030110322_)))
                                (let ((_hd1030310328_ (##car _e1030210325_))
                                      (_tl1030410330_ (##cdr _e1030210325_)))
                                  (let ((_id10333_ _hd1030310328_))
                                    (if (gx#stx-pair? _tl1030410330_)
                                        (let ((_e1030510335_
                                               (gx#syntax-e _tl1030410330_)))
                                          (let ((_hd1030610338_
                                                 (##car _e1030510335_))
                                                (_tl1030710340_
                                                 (##cdr _e1030510335_)))
                                            (let ((_alias-id10343_
                                                   _hd1030610338_))
                                              (if (gx#stx-null? _tl1030710340_)
                                                  (if (and (gx#identifier?
                                                            _id10333_)
                                                           (gx#identifier?
                                                            _alias-id10343_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id10333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id10343_ '())))
              (_E1029810313_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1029810313_)))))
                                        (_E1029810313_)))))
                              (_E1029810313_))))
                      (_E1029810313_)))))
          (_E1029710345_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx10252_)
        (let* ((_e1025310263_ _stx10252_)
               (_E1025510267_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1025310263_)))
               (_E1025410291_
                (lambda ()
                  (if (gx#stx-pair? _e1025310263_)
                      (let ((_e1025610271_ (gx#syntax-e _e1025310263_)))
                        (let ((_hd1025710274_ (##car _e1025610271_))
                              (_tl1025810276_ (##cdr _e1025610271_)))
                          (if (gx#stx-pair? _tl1025810276_)
                              (let ((_e1025910279_
                                     (gx#syntax-e _tl1025810276_)))
                                (let ((_hd1026010282_ (##car _e1025910279_))
                                      (_tl1026110284_ (##cdr _e1025910279_)))
                                  (let* ((_hd10287_ _hd1026010282_)
                                         (_body10289_ _tl1026110284_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd10287_)
                                             (gx#stx-list? _body10289_)
                                             (not (gx#stx-null? _body10289_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd10287_)
                                         _body10289_)
                                        (_E1025510267_)))))
                              (_E1025510267_))))
                      (_E1025510267_)))))
          (_E1025410291_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx10188_)
        (letrec ((_generate10190_
                  (lambda (_clause10220_)
                    (let* ((_e1022110228_ _clause10220_)
                           (_E1022310232_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx10188_
                               _clause10220_)))
                           (_E1022210248_
                            (lambda ()
                              (if (gx#stx-pair? _e1022110228_)
                                  (let ((_e1022410236_
                                         (gx#syntax-e _e1022110228_)))
                                    (let ((_hd1022510239_
                                           (##car _e1022410236_))
                                          (_tl1022610241_
                                           (##cdr _e1022410236_)))
                                      (let* ((_hd10244_ _hd1022510239_)
                                             (_body10246_ _tl1022610241_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd10244_)
                                                 (gx#stx-list? _body10246_)
                                                 (not (gx#stx-null?
                                                       _body10246_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd10244_)
                                                   _body10246_)
                                             (gx#stx-source _clause10220_))
                                            (_E1022310232_)))))
                                  (_E1022310232_)))))
                      (_E1022210248_)))))
          (let* ((_e1019110198_ _stx10188_)
                 (_E1019310202_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1019110198_)))
                 (_E1019210216_
                  (lambda ()
                    (if (gx#stx-pair? _e1019110198_)
                        (let ((_e1019410206_ (gx#syntax-e _e1019110198_)))
                          (let ((_hd1019510209_ (##car _e1019410206_))
                                (_tl1019610211_ (##cdr _e1019410206_)))
                            (let ((_clauses10214_ _tl1019610211_))
                              (if (gx#stx-list? _clauses10214_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate10190_
                                    _clauses10214_))
                                  (_E1019310202_)))))
                        (_E1019310202_)))))
            (_E1019210216_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx10089_ _form10090_)
        (letrec ((_generate10092_
                  (lambda (_bind10135_)
                    (let* ((_e1013610146_ _bind10135_)
                           (_E1013810150_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx10089_
                               _bind10135_)))
                           (_E1013710174_
                            (lambda ()
                              (if (gx#stx-pair? _e1013610146_)
                                  (let ((_e1013910154_
                                         (gx#syntax-e _e1013610146_)))
                                    (let ((_hd1014010157_
                                           (##car _e1013910154_))
                                          (_tl1014110159_
                                           (##cdr _e1013910154_)))
                                      (let ((_ids10162_ _hd1014010157_))
                                        (if (gx#stx-pair? _tl1014110159_)
                                            (let ((_e1014210164_
                                                   (gx#syntax-e
                                                    _tl1014110159_)))
                                              (let ((_hd1014310167_
                                                     (##car _e1014210164_))
                                                    (_tl1014410169_
                                                     (##cdr _e1014210164_)))
                                                (let ((_expr10172_
                                                       _hd1014310167_))
                                                  (if (gx#stx-null?
                                                       _tl1014410169_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids10162_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids10162_)
                        (cons _expr10172_ '()))
                  (_E1013810150_))
              (_E1013810150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1013810150_)))))
                                  (_E1013810150_)))))
                      (_E1013710174_)))))
          (let* ((_e1009310103_ _stx10089_)
                 (_E1009510107_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1009310103_)))
                 (_E1009410131_
                  (lambda ()
                    (if (gx#stx-pair? _e1009310103_)
                        (let ((_e1009610111_ (gx#syntax-e _e1009310103_)))
                          (let ((_hd1009710114_ (##car _e1009610111_))
                                (_tl1009810116_ (##cdr _e1009610111_)))
                            (if (gx#stx-pair? _tl1009810116_)
                                (let ((_e1009910119_
                                       (gx#syntax-e _tl1009810116_)))
                                  (let ((_hd1010010122_ (##car _e1009910119_))
                                        (_tl1010110124_ (##cdr _e1009910119_)))
                                    (let* ((_hd10127_ _hd1010010122_)
                                           (_body10129_ _tl1010110124_))
                                      (if (and (gx#stx-list? _hd10127_)
                                               (gx#stx-list? _body10129_)
                                               (not (gx#stx-null?
                                                     _body10129_)))
                                          (gx#core-cons*
                                           _form10090_
                                           (gx#stx-map1
                                            _generate10092_
                                            _hd10127_)
                                           _body10129_)
                                          (_E1009510107_)))))
                                (_E1009510107_))))
                        (_E1009510107_)))))
            (_E1009410131_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx10181_)
        (let ((_form10183_ '%#let-values))
          (gx#macro-expand-let-values__% _stx10181_ _form10183_))))
    (define gx#macro-expand-let-values
      (lambda _g12566_
        (let ((_g12565_ (##length _g12566_)))
          (cond ((##fx= _g12565_ 1)
                 (apply gx#macro-expand-let-values__0 _g12566_))
                ((##fx= _g12565_ 2)
                 (apply gx#macro-expand-let-values__% _g12566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g12566_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx10086_)
        (gx#macro-expand-let-values__% _stx10086_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx10084_)
        (gx#macro-expand-let-values__% _stx10084_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx9975_)
        (let* ((_e997610002_ _stx9975_)
               (_E998810006_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e997610002_)))
               (_E997810048_
                (lambda ()
                  (if (gx#stx-pair? _e997610002_)
                      (let ((_e998910010_ (gx#syntax-e _e997610002_)))
                        (let ((_hd999010013_ (##car _e998910010_))
                              (_tl999110015_ (##cdr _e998910010_)))
                          (if (gx#stx-pair? _tl999110015_)
                              (let ((_e999210018_ (gx#syntax-e _tl999110015_)))
                                (let ((_hd999310021_ (##car _e999210018_))
                                      (_tl999410023_ (##cdr _e999210018_)))
                                  (let ((_test10026_ _hd999310021_))
                                    (if (gx#stx-pair? _tl999410023_)
                                        (let ((_e999510028_
                                               (gx#syntax-e _tl999410023_)))
                                          (let ((_hd999610031_
                                                 (##car _e999510028_))
                                                (_tl999710033_
                                                 (##cdr _e999510028_)))
                                            (let ((_K10036_ _hd999610031_))
                                              (if (gx#stx-pair? _tl999710033_)
                                                  (let ((_e999810038_
                                                         (gx#syntax-e
                                                          _tl999710033_)))
                                                    (let ((_hd999910041_
                                                           (##car _e999810038_))
                                                          (_tl1000010043_
                                                           (##cdr _e999810038_)))
                                                      (let ((_E10046_
                                                             _hd999910041_))
                                                        (if (gx#stx-null?
                                                             _tl1000010043_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test10026_
                         _K10036_
                         _E10046_)
                        (_E998810006_))
                    (_E998810006_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E998810006_)))))
                                        (_E998810006_)))))
                              (_E998810006_))))
                      (_E998810006_))))
               (_E997710080_
                (lambda ()
                  (if (gx#stx-pair? _e997610002_)
                      (let ((_e997910052_ (gx#syntax-e _e997610002_)))
                        (let ((_hd998010055_ (##car _e997910052_))
                              (_tl998110057_ (##cdr _e997910052_)))
                          (if (gx#stx-pair? _tl998110057_)
                              (let ((_e998210060_ (gx#syntax-e _tl998110057_)))
                                (let ((_hd998310063_ (##car _e998210060_))
                                      (_tl998410065_ (##cdr _e998210060_)))
                                  (let ((_test10068_ _hd998310063_))
                                    (if (gx#stx-pair? _tl998410065_)
                                        (let ((_e998510070_
                                               (gx#syntax-e _tl998410065_)))
                                          (let ((_hd998610073_
                                                 (##car _e998510070_))
                                                (_tl998710075_
                                                 (##cdr _e998510070_)))
                                            (let ((_K10078_ _hd998610073_))
                                              (if (gx#stx-null? _tl998710075_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test10068_
                                                       _K10078_
                                                       '#!void)
                                                      (_E997810048_))
                                                  (_E997810048_)))))
                                        (_E997810048_)))))
                              (_E997810048_))))
                      (_E997810048_)))))
          (_E997710080_))))
    (define gx#free-identifier=?
      (lambda (_xid9963_ _yid9964_)
        (let ((_xe9966_ (gx#resolve-identifier__0 _xid9963_))
              (_ye9967_ (gx#resolve-identifier__0 _yid9964_)))
          (if (and _xe9966_ _ye9967_)
              (let ((_$e9969_ (eq? _xe9966_ _ye9967_)))
                (if _$e9969_
                    _$e9969_
                    (if (##structure-instance-of? _xe9966_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye9967_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe9966_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye9967_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe9966_ _ye9967_)
                  '#f
                  (gx#stx-eq? _xid9963_ _yid9964_))))))
    (define gx#bound-identifier=?
      (lambda (_xid9947_ _yid9948_)
        (letrec ((_context9950_
                  (lambda (_e9961_)
                    (if (##structure-direct-instance-of?
                         _e9961_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e9961_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks9951_
                  (lambda (_e9959_)
                    (if (symbol? _e9959_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e9959_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e9959_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e9959_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap9952_
                  (lambda (_e9957_)
                    (if (symbol? _e9957_)
                        _e9957_
                        (gx#syntax-local-unwrap _e9957_)))))
          (let ((_x9954_ (_unwrap9952_ _xid9947_))
                (_y9955_ (_unwrap9952_ _yid9948_)))
            (if (gx#stx-eq? _x9954_ _y9955_)
                (if (eq? (_context9950_ _x9954_) (_context9950_ _y9955_))
                    (equal? (_marks9951_ _x9954_) (_marks9951_ _y9955_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx9945_)
        (if (gx#identifier? _stx9945_)
            (gx#core-identifier=? _stx9945_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx9943_)
        (if (gx#identifier? _stx9943_)
            (gx#core-identifier=? _stx9943_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x9941_)
        (if (gx#identifier? _x9941_)
            (if (not (gx#underscore? _x9941_)) _x9941_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx9887_ _where9888_)
        (let _lp9890_ ((_rest9892_ (gx#syntax->list _stx9887_)))
          (let* ((_rest98939901_ _rest9892_)
                 (_else98959909_ (lambda () '#t))
                 (_K98979919_
                  (lambda (_rest9912_ _hd9913_)
                    (if (not (gx#identifier? _hd9913_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where9888_
                         _hd9913_)
                        (if (find (lambda (_g99149916_)
                                    (gx#bound-identifier=?
                                     _g99149916_
                                     _hd9913_))
                                  _rest9912_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where9888_
                             _hd9913_)
                            (_lp9890_ _rest9912_))))))
            (if (##pair? _rest98939901_)
                (let ((_hd98989922_ (##car _rest98939901_))
                      (_tl98999924_ (##cdr _rest98939901_)))
                  (let* ((_hd9927_ _hd98989922_) (_rest9929_ _tl98999924_))
                    (_K98979919_ _rest9929_ _hd9927_)))
                (_else98959909_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx9934_)
        (let ((_where9936_ _stx9934_))
          (gx#check-duplicate-identifiers__% _stx9934_ _where9936_))))
    (define gx#check-duplicate-identifiers
      (lambda _g12568_
        (let ((_g12567_ (##length _g12568_)))
          (cond ((##fx= _g12567_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g12568_))
                ((##fx= _g12567_ 2)
                 (apply gx#check-duplicate-identifiers__% _g12568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g12568_))))))
    (define gx#core-bind-values?
      (lambda (_stx9879_)
        (gx#stx-andmap
         (lambda (_x9881_)
           (let ((_$e9883_ (gx#identifier? _x9881_)))
             (if _$e9883_ _$e9883_ (gx#stx-false? _x9881_))))
         _stx9879_)))
    (define gx#core-bind-values!__%
      (lambda (_stx9843_ _rebind?9844_ _phi9845_ _ctx9846_)
        (gx#stx-for-each1
         (lambda (_id9848_)
           (if (gx#identifier? _id9848_)
               (gx#core-bind-runtime!__%
                _id9848_
                _rebind?9844_
                _phi9845_
                _ctx9846_)
               '#!void))
         _stx9843_)))
    (define gx#core-bind-values!__0
      (lambda (_stx9853_)
        (let* ((_rebind?9855_ '#f)
               (_phi9857_ (gx#current-expander-phi))
               (_ctx9859_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx9853_
           _rebind?9855_
           _phi9857_
           _ctx9859_))))
    (define gx#core-bind-values!__1
      (lambda (_stx9861_ _rebind?9862_)
        (let* ((_phi9864_ (gx#current-expander-phi))
               (_ctx9866_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx9861_
           _rebind?9862_
           _phi9864_
           _ctx9866_))))
    (define gx#core-bind-values!__2
      (lambda (_stx9868_ _rebind?9869_ _phi9870_)
        (let ((_ctx9872_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx9868_
           _rebind?9869_
           _phi9870_
           _ctx9872_))))
    (define gx#core-bind-values!
      (lambda _g12570_
        (let ((_g12569_ (##length _g12570_)))
          (cond ((##fx= _g12569_ 1) (apply gx#core-bind-values!__0 _g12570_))
                ((##fx= _g12569_ 2) (apply gx#core-bind-values!__1 _g12570_))
                ((##fx= _g12569_ 3) (apply gx#core-bind-values!__2 _g12570_))
                ((##fx= _g12569_ 4) (apply gx#core-bind-values!__% _g12570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g12570_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx9838_)
        (gx#stx-map1
         (lambda (_x9840_)
           (if (gx#identifier? _x9840_) (gx#core-quote-syntax__0 _x9840_) '#f))
         _stx9838_)))
    (define gx#core-runtime-ref?
      (lambda (_stx9831_)
        (if (gx#identifier? _stx9831_)
            (let* ((_bind9833_ (gx#resolve-identifier__0 _stx9831_))
                   (_$e9835_ (not _bind9833_)))
              (if _$e9835_
                  _$e9835_
                  (##structure-instance-of?
                   _bind9833_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id9823_ _form9824_)
        (let ((_bind9826_ (gx#resolve-identifier__0 _id9823_)))
          (if (##structure-instance-of? _bind9826_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id9823_)
              (if (not _bind9826_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id9823_)))
                      (gx#core-quote-syntax__0 _id9823_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form9824_
                       _id9823_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form9824_
                   _id9823_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id9782_ _rebind?9783_ _phi9784_ _ctx9785_)
        (let* ((_key9787_ (gx#core-identifier-key _id9782_))
               (_eid9789_
                (gx#make-binding-id__% _key9787_ '#f _phi9784_ _ctx9785_))
               (_bind9791_
                (if (##structure-instance-of? _ctx9785_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid9789_
                     _key9787_
                     _phi9784_
                     _ctx9785_)
                    (if (##structure-instance-of? _ctx9785_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid9789_
                         _key9787_
                         _phi9784_)
                        (if (##structure-instance-of?
                             _ctx9785_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid9789_
                             _key9787_
                             _phi9784_)
                            (##structure
                             gx#runtime-binding::t
                             _eid9789_
                             _key9787_
                             _phi9784_))))))
          (gx#bind-identifier!__%
           _id9782_
           _bind9791_
           _rebind?9783_
           _phi9784_
           _ctx9785_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id9797_)
        (let* ((_rebind?9799_ '#f)
               (_phi9801_ (gx#current-expander-phi))
               (_ctx9803_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id9797_
           _rebind?9799_
           _phi9801_
           _ctx9803_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id9805_ _rebind?9806_)
        (let* ((_phi9808_ (gx#current-expander-phi))
               (_ctx9810_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id9805_
           _rebind?9806_
           _phi9808_
           _ctx9810_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id9812_ _rebind?9813_ _phi9814_)
        (let ((_ctx9816_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id9812_
           _rebind?9813_
           _phi9814_
           _ctx9816_))))
    (define gx#core-bind-runtime!
      (lambda _g12572_
        (let ((_g12571_ (##length _g12572_)))
          (cond ((##fx= _g12571_ 1) (apply gx#core-bind-runtime!__0 _g12572_))
                ((##fx= _g12571_ 2) (apply gx#core-bind-runtime!__1 _g12572_))
                ((##fx= _g12571_ 3) (apply gx#core-bind-runtime!__2 _g12572_))
                ((##fx= _g12571_ 4) (apply gx#core-bind-runtime!__% _g12572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g12572_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id9737_ _eid9738_ _rebind?9739_ _phi9740_ _ctx9741_)
        (let* ((_key9743_ (gx#core-identifier-key _id9737_))
               (_bind9745_
                (if (##structure-instance-of? _ctx9741_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid9738_
                     _key9743_
                     _phi9740_
                     _ctx9741_)
                    (if (##structure-instance-of? _ctx9741_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid9738_
                         _key9743_
                         _phi9740_)
                        (##structure
                         gx#runtime-binding::t
                         _eid9738_
                         _key9743_
                         _phi9740_)))))
          (gx#bind-identifier!__%
           _id9737_
           _bind9745_
           _rebind?9739_
           _phi9740_
           _ctx9741_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id9751_ _eid9752_)
        (let* ((_rebind?9754_ '#f)
               (_phi9756_ (gx#current-expander-phi))
               (_ctx9758_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id9751_
           _eid9752_
           _rebind?9754_
           _phi9756_
           _ctx9758_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id9760_ _eid9761_ _rebind?9762_)
        (let* ((_phi9764_ (gx#current-expander-phi))
               (_ctx9766_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id9760_
           _eid9761_
           _rebind?9762_
           _phi9764_
           _ctx9766_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id9768_ _eid9769_ _rebind?9770_ _phi9771_)
        (let ((_ctx9773_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id9768_
           _eid9769_
           _rebind?9770_
           _phi9771_
           _ctx9773_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g12574_
        (let ((_g12573_ (##length _g12574_)))
          (cond ((##fx= _g12573_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g12574_))
                ((##fx= _g12573_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g12574_))
                ((##fx= _g12573_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g12574_))
                ((##fx= _g12573_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g12574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g12574_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id9697_ _eid9698_ _rebind?9699_ _phi9700_ _ctx9701_)
        (gx#bind-identifier!__%
         _id9697_
         (##structure
          gx#extern-binding::t
          _eid9698_
          (gx#core-identifier-key _id9697_)
          _phi9700_)
         _rebind?9699_
         _phi9700_
         _ctx9701_)))
    (define gx#core-bind-extern!__0
      (lambda (_id9706_ _eid9707_)
        (let* ((_rebind?9709_ '#f)
               (_phi9711_ (gx#current-expander-phi))
               (_ctx9713_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id9706_
           _eid9707_
           _rebind?9709_
           _phi9711_
           _ctx9713_))))
    (define gx#core-bind-extern!__1
      (lambda (_id9715_ _eid9716_ _rebind?9717_)
        (let* ((_phi9719_ (gx#current-expander-phi))
               (_ctx9721_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id9715_
           _eid9716_
           _rebind?9717_
           _phi9719_
           _ctx9721_))))
    (define gx#core-bind-extern!__2
      (lambda (_id9723_ _eid9724_ _rebind?9725_ _phi9726_)
        (let ((_ctx9728_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id9723_
           _eid9724_
           _rebind?9725_
           _phi9726_
           _ctx9728_))))
    (define gx#core-bind-extern!
      (lambda _g12576_
        (let ((_g12575_ (##length _g12576_)))
          (cond ((##fx= _g12575_ 2) (apply gx#core-bind-extern!__0 _g12576_))
                ((##fx= _g12575_ 3) (apply gx#core-bind-extern!__1 _g12576_))
                ((##fx= _g12575_ 4) (apply gx#core-bind-extern!__2 _g12576_))
                ((##fx= _g12575_ 5) (apply gx#core-bind-extern!__% _g12576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g12576_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id9651_ _e9652_ _rebind?9653_ _phi9654_ _ctx9655_)
        (gx#bind-identifier!__%
         _id9651_
         (let ((_key9660_ (gx#core-identifier-key _id9651_))
               (_e9661_ (if (or (##structure-instance-of?
                                 _e9652_
                                 'gx#expander::t)
                                (##structure-instance-of?
                                 _e9652_
                                 'gx#expander-context::t))
                            _e9652_
                            (##structure
                             gx#user-expander::t
                             _e9652_
                             _ctx9655_
                             _phi9654_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key9660_ '#t _phi9654_ _ctx9655_)
            _key9660_
            _phi9654_
            _e9661_))
         _rebind?9653_
         _phi9654_
         _ctx9655_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id9666_ _e9667_)
        (let* ((_rebind?9669_ '#f)
               (_phi9671_ (gx#current-expander-phi))
               (_ctx9673_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id9666_
           _e9667_
           _rebind?9669_
           _phi9671_
           _ctx9673_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id9675_ _e9676_ _rebind?9677_)
        (let* ((_phi9679_ (gx#current-expander-phi))
               (_ctx9681_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id9675_
           _e9676_
           _rebind?9677_
           _phi9679_
           _ctx9681_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id9683_ _e9684_ _rebind?9685_ _phi9686_)
        (let ((_ctx9688_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id9683_
           _e9684_
           _rebind?9685_
           _phi9686_
           _ctx9688_))))
    (define gx#core-bind-syntax!
      (lambda _g12578_
        (let ((_g12577_ (##length _g12578_)))
          (cond ((##fx= _g12577_ 2) (apply gx#core-bind-syntax!__0 _g12578_))
                ((##fx= _g12577_ 3) (apply gx#core-bind-syntax!__1 _g12578_))
                ((##fx= _g12577_ 4) (apply gx#core-bind-syntax!__2 _g12578_))
                ((##fx= _g12577_ 5) (apply gx#core-bind-syntax!__% _g12578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g12578_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id9634_ _e9635_ _rebind?9636_)
        (gx#core-bind-syntax!__%
         _id9634_
         _e9635_
         _rebind?9636_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id9641_ _e9642_)
        (let ((_rebind?9644_ '#f))
          (gx#core-bind-root-syntax!__% _id9641_ _e9642_ _rebind?9644_))))
    (define gx#core-bind-root-syntax!
      (lambda _g12580_
        (let ((_g12579_ (##length _g12580_)))
          (cond ((##fx= _g12579_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g12580_))
                ((##fx= _g12579_ 3)
                 (apply gx#core-bind-root-syntax!__% _g12580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g12580_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id9592_ _alias-id9593_ _rebind?9594_ _phi9595_ _ctx9596_)
        (gx#bind-identifier!__%
         _id9592_
         (let ((_key9598_ (gx#core-identifier-key _id9592_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key9598_ '#t _phi9595_ _ctx9596_)
            _key9598_
            _phi9595_
            _alias-id9593_))
         _rebind?9594_
         _phi9595_
         _ctx9596_)))
    (define gx#core-bind-alias!__0
      (lambda (_id9603_ _alias-id9604_)
        (let* ((_rebind?9606_ '#f)
               (_phi9608_ (gx#current-expander-phi))
               (_ctx9610_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id9603_
           _alias-id9604_
           _rebind?9606_
           _phi9608_
           _ctx9610_))))
    (define gx#core-bind-alias!__1
      (lambda (_id9612_ _alias-id9613_ _rebind?9614_)
        (let* ((_phi9616_ (gx#current-expander-phi))
               (_ctx9618_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id9612_
           _alias-id9613_
           _rebind?9614_
           _phi9616_
           _ctx9618_))))
    (define gx#core-bind-alias!__2
      (lambda (_id9620_ _alias-id9621_ _rebind?9622_ _phi9623_)
        (let ((_ctx9625_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id9620_
           _alias-id9621_
           _rebind?9622_
           _phi9623_
           _ctx9625_))))
    (define gx#core-bind-alias!
      (lambda _g12582_
        (let ((_g12581_ (##length _g12582_)))
          (cond ((##fx= _g12581_ 2) (apply gx#core-bind-alias!__0 _g12582_))
                ((##fx= _g12581_ 3) (apply gx#core-bind-alias!__1 _g12582_))
                ((##fx= _g12581_ 4) (apply gx#core-bind-alias!__2 _g12582_))
                ((##fx= _g12581_ 5) (apply gx#core-bind-alias!__% _g12582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g12582_))))))
    (define gx#make-binding-id__%
      (lambda (_key9549_ _syntax?9550_ _phi9551_ _ctx9552_)
        (if (uninterned-symbol? _key9549_)
            (gensym 'L)
            (if (pair? _key9549_)
                (gensym (car _key9549_))
                (if (##structure-instance-of? _ctx9552_ 'gx#top-context::t)
                    (let ((_ns9554_ (gx#core-context-namespace__% _ctx9552_)))
                      (if (and (fxzero? _phi9551_) (not _syntax?9550_))
                          (if _ns9554_
                              (make-symbol _ns9554_ '"#" _key9549_)
                              _key9549_)
                          (if _syntax?9550_
                              (make-symbol
                               (let ((_$e9556_ _ns9554_))
                                 (if _$e9556_ _$e9556_ '""))
                               '"[:"
                               (number->string _phi9551_)
                               '":]#"
                               _key9549_)
                              (make-symbol
                               (let ((_$e9559_ _ns9554_))
                                 (if _$e9559_ _$e9559_ '""))
                               '"["
                               (number->string _phi9551_)
                               '"]#"
                               _key9549_))))
                    (gensym _key9549_))))))
    (define gx#make-binding-id__0
      (lambda (_key9565_)
        (let* ((_syntax?9567_ '#f)
               (_phi9569_ (gx#current-expander-phi))
               (_ctx9571_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key9565_
           _syntax?9567_
           _phi9569_
           _ctx9571_))))
    (define gx#make-binding-id__1
      (lambda (_key9573_ _syntax?9574_)
        (let* ((_phi9576_ (gx#current-expander-phi))
               (_ctx9578_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key9573_
           _syntax?9574_
           _phi9576_
           _ctx9578_))))
    (define gx#make-binding-id__2
      (lambda (_key9580_ _syntax?9581_ _phi9582_)
        (let ((_ctx9584_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key9580_
           _syntax?9581_
           _phi9582_
           _ctx9584_))))
    (define gx#make-binding-id
      (lambda _g12584_
        (let ((_g12583_ (##length _g12584_)))
          (cond ((##fx= _g12583_ 1) (apply gx#make-binding-id__0 _g12584_))
                ((##fx= _g12583_ 2) (apply gx#make-binding-id__1 _g12584_))
                ((##fx= _g12583_ 3) (apply gx#make-binding-id__2 _g12584_))
                ((##fx= _g12583_ 4) (apply gx#make-binding-id__% _g12584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g12584_))))))))
