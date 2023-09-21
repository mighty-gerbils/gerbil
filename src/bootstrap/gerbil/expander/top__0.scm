(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1695337508)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx13718_)
        (letrec ((_expand-special13720_
                  (lambda (_hd13722_ _K13723_ _rest13724_ _r13725_)
                    (_K13723_
                     _rest13724_
                     (cons (gx#core-expand-top _hd13722_) _r13725_)))))
          (gx#core-expand-block__0 _stx13718_ _expand-special13720_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx13471_)
        (letrec ((_expand-special13473_
                  (lambda (_hd13593_ _K13594_ _rest13595_ _r13596_)
                    (let* ((_K13600_
                            (lambda (_e13598_)
                              (_K13594_ _rest13595_ (cons _e13598_ _r13596_))))
                           (_e1360113630_ _hd13593_)
                           (_E1362513634_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1360113630_)))
                           (_E1362113646_
                            (lambda ()
                              (if (gx#stx-pair? _e1360113630_)
                                  (let ((_e1362613638_
                                         (gx#syntax-e _e1360113630_)))
                                    (let ((_hd1362713641_
                                           (##car _e1362613638_))
                                          (_tl1362813643_
                                           (##cdr _e1362613638_)))
                                      (if (and (gx#identifier? _hd1362713641_)
                                               (gx#core-identifier=?
                                                _hd1362713641_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K13600_
                                               (gx#core-expand-define-runtime%
                                                _hd13593_))
                                              (_E1362513634_))
                                          (_E1362513634_))))
                                  (_E1362513634_))))
                           (_E1361713658_
                            (lambda ()
                              (if (gx#stx-pair? _e1360113630_)
                                  (let ((_e1362213650_
                                         (gx#syntax-e _e1360113630_)))
                                    (let ((_hd1362313653_
                                           (##car _e1362213650_))
                                          (_tl1362413655_
                                           (##cdr _e1362213650_)))
                                      (if (and (gx#identifier? _hd1362313653_)
                                               (gx#core-identifier=?
                                                _hd1362313653_
                                                '%#define-alias))
                                          (if '#t
                                              (_K13600_
                                               (gx#core-expand-define-alias%
                                                _hd13593_))
                                              (_E1362113646_))
                                          (_E1362113646_))))
                                  (_E1362113646_))))
                           (_E1360713670_
                            (lambda ()
                              (if (gx#stx-pair? _e1360113630_)
                                  (let ((_e1361813662_
                                         (gx#syntax-e _e1360113630_)))
                                    (let ((_hd1361913665_
                                           (##car _e1361813662_))
                                          (_tl1362013667_
                                           (##cdr _e1361813662_)))
                                      (if (and (gx#identifier? _hd1361913665_)
                                               (gx#core-identifier=?
                                                _hd1361913665_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K13600_
                                               (gx#core-expand-define-syntax%
                                                _hd13593_))
                                              (_E1361713658_))
                                          (_E1361713658_))))
                                  (_E1361713658_))))
                           (_E1360313702_
                            (lambda ()
                              (if (gx#stx-pair? _e1360113630_)
                                  (let ((_e1360813674_
                                         (gx#syntax-e _e1360113630_)))
                                    (let ((_hd1360913677_
                                           (##car _e1360813674_))
                                          (_tl1361013679_
                                           (##cdr _e1360813674_)))
                                      (if (and (gx#identifier? _hd1360913677_)
                                               (gx#core-identifier=?
                                                _hd1360913677_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl1361013679_)
                                              (let ((_e1361113682_
                                                     (gx#syntax-e
                                                      _tl1361013679_)))
                                                (let ((_hd1361213685_
                                                       (##car _e1361113682_))
                                                      (_tl1361313687_
                                                       (##cdr _e1361113682_)))
                                                  (let ((_hd-bind13690_
                                                         _hd1361213685_))
                                                    (if (gx#stx-pair?
                                                         _tl1361313687_)
                                                        (let ((_e1361413692_
                                                               (gx#syntax-e
                                                                _tl1361313687_)))
                                                          (let ((_hd1361513695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1361413692_))
                        (_tl1361613697_ (##cdr _e1361413692_)))
                    (let ((_expr13700_ _hd1361513695_))
                      (if (gx#stx-null? _tl1361613697_)
                          (if (gx#core-bind-values? _hd-bind13690_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind13690_)
                                (_K13600_ _hd13593_))
                              (_E1360713670_))
                          (_E1360713670_)))))
                (_E1360713670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1360713670_))
                                          (_E1360713670_))))
                                  (_E1360713670_))))
                           (_E1360213714_
                            (lambda ()
                              (if (gx#stx-pair? _e1360113630_)
                                  (let ((_e1360413706_
                                         (gx#syntax-e _e1360113630_)))
                                    (let ((_hd1360513709_
                                           (##car _e1360413706_))
                                          (_tl1360613711_
                                           (##cdr _e1360413706_)))
                                      (if (and (gx#identifier? _hd1360513709_)
                                               (gx#core-identifier=?
                                                _hd1360513709_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K13600_
                                               (gx#core-expand-begin-syntax%
                                                _hd13593_))
                                              (_E1360313702_))
                                          (_E1360313702_))))
                                  (_E1360313702_)))))
                      (_E1360213714_))))
                 (_eval-body13474_
                  (lambda (_rbody13482_)
                    (let _lp13484_ ((_rest13486_ _rbody13482_)
                                    (_body13487_ '())
                                    (_ebody13488_ '()))
                      (let* ((_rest1348913497_ _rest13486_)
                             (_else1349113505_
                              (lambda ()
                                (values _body13487_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody13488_)
                                          (gx#stx-source _stx13471_))))))
                             (_K1349313581_
                              (lambda (_rest13508_ _hd13509_)
                                (let* ((_e1351013527_ _hd13509_)
                                       (_E1352213531_
                                        (lambda ()
                                          (_lp13484_
                                           _rest13508_
                                           (cons _hd13509_ _body13487_)
                                           (cons _hd13509_ _ebody13488_))))
                                       (_E1351213543_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1351013527_)
                                              (let ((_e1352313535_
                                                     (gx#syntax-e
                                                      _e1351013527_)))
                                                (let ((_hd1352413538_
                                                       (##car _e1352313535_))
                                                      (_tl1352513540_
                                                       (##cdr _e1352313535_)))
                                                  (if (and (gx#identifier?
                                                            _hd1352413538_)
                                                           (gx#core-identifier=?
                                                            _hd1352413538_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp13484_
                                                           _rest13508_
                                                           (cons _hd13509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body13487_)
                   _ebody13488_)
                  (_E1352213531_))
              (_E1352213531_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1352213531_))))
                                       (_E1351113577_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1351013527_)
                                              (let ((_e1351313547_
                                                     (gx#syntax-e
                                                      _e1351013527_)))
                                                (let ((_hd1351413550_
                                                       (##car _e1351313547_))
                                                      (_tl1351513552_
                                                       (##cdr _e1351313547_)))
                                                  (if (and (gx#identifier?
                                                            _hd1351413550_)
                                                           (gx#core-identifier=?
                                                            _hd1351413550_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl1351513552_)
                                                          (let ((_e1351613555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1351513552_)))
                    (let ((_hd1351713558_ (##car _e1351613555_))
                          (_tl1351813560_ (##cdr _e1351613555_)))
                      (let ((_hd-bind13563_ _hd1351713558_))
                        (if (gx#stx-pair? _tl1351813560_)
                            (let ((_e1351913565_ (gx#syntax-e _tl1351813560_)))
                              (let ((_hd1352013568_ (##car _e1351913565_))
                                    (_tl1352113570_ (##cdr _e1351913565_)))
                                (let ((_expr13573_ _hd1352013568_))
                                  (if (gx#stx-null? _tl1352113570_)
                                      (if '#t
                                          (let ((_ehd13575_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind13563_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr13573_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd13509_))))
                                            (_lp13484_
                                             _rest13508_
                                             (cons _ehd13575_ _body13487_)
                                             (cons _ehd13575_ _ebody13488_)))
                                          (_E1351213543_))
                                      (_E1351213543_)))))
                            (_E1351213543_)))))
                  (_E1351213543_))
              (_E1351213543_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1351213543_)))))
                                  (_E1351113577_)))))
                        (if (##pair? _rest1348913497_)
                            (let ((_hd1349413584_ (##car _rest1348913497_))
                                  (_tl1349513586_ (##cdr _rest1348913497_)))
                              (let* ((_hd13589_ _hd1349413584_)
                                     (_rest13591_ _tl1349513586_))
                                (_K1349313581_ _rest13591_ _hd13589_)))
                            (_else1349113505_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody13477_
                     (gx#core-expand-block__1
                      _stx13471_
                      _expand-special13473_
                      '#f))
                    (_g13741_ (_eval-body13474_ _rbody13477_)))
               (begin
                 (let ((_g13742_
                        (if (##values? _g13741_)
                            (##vector-length _g13741_)
                            1)))
                   (if (not (##fx= _g13742_ 2))
                       (error "Context expects 2 values" _g13742_)))
                 (let ((_expanded-body13479_ (##vector-ref _g13741_ 0))
                       (_value13480_ (##vector-ref _g13741_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body13479_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value13480_ '())))
                    (gx#stx-source _stx13471_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx13441_)
        (let* ((_e1344213449_ _stx13441_)
               (_E1344413453_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1344213449_)))
               (_E1344313467_
                (lambda ()
                  (if (gx#stx-pair? _e1344213449_)
                      (let ((_e1344513457_ (gx#syntax-e _e1344213449_)))
                        (let ((_hd1344613460_ (##car _e1344513457_))
                              (_tl1344713462_ (##cdr _e1344513457_)))
                          (let ((_body13465_ _tl1344713462_))
                            (if (gx#stx-list? _body13465_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body13465_)
                                 (gx#stx-source _stx13441_))
                                (_E1344413453_)))))
                      (_E1344413453_)))))
          (_E1344313467_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx13439_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx13439_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx13385_)
        (let* ((_e1338613399_ _stx13385_)
               (_E1338813403_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1338613399_)))
               (_E1338713435_
                (lambda ()
                  (if (gx#stx-pair? _e1338613399_)
                      (let ((_e1338913407_ (gx#syntax-e _e1338613399_)))
                        (let ((_hd1339013410_ (##car _e1338913407_))
                              (_tl1339113412_ (##cdr _e1338913407_)))
                          (if (gx#stx-pair? _tl1339113412_)
                              (let ((_e1339213415_
                                     (gx#syntax-e _tl1339113412_)))
                                (let ((_hd1339313418_ (##car _e1339213415_))
                                      (_tl1339413420_ (##cdr _e1339213415_)))
                                  (let ((_ann13423_ _hd1339313418_))
                                    (if (gx#stx-pair? _tl1339413420_)
                                        (let ((_e1339513425_
                                               (gx#syntax-e _tl1339413420_)))
                                          (let ((_hd1339613428_
                                                 (##car _e1339513425_))
                                                (_tl1339713430_
                                                 (##cdr _e1339513425_)))
                                            (let ((_expr13433_ _hd1339613428_))
                                              (if (gx#stx-null? _tl1339713430_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann13423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr13433_) '())))
               (gx#stx-source _stx13385_))
              (_E1338813403_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1338813403_)))))
                                        (_E1338813403_)))))
                              (_E1338813403_))))
                      (_E1338813403_)))))
          (_E1338713435_))))
    (define gx#core-expand-local-block
      (lambda (_stx13109_ _body13110_)
        (letrec ((_expand-special13112_
                  (lambda (_hd13380_ _K13381_ _rest13382_ _r13383_)
                    (_K13381_
                     '()
                     (cons (_expand-internal13113_ _hd13380_ _rest13382_)
                           _r13383_))))
                 (_expand-internal13113_
                  (lambda (_hd13376_ _rest13377_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal13115_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd13376_ _rest13377_))
                          (gx#stx-source _stx13109_))
                         _expand-internal-special13114_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj13735 (make-object gx#local-context::t '5)))
                       (gx#local-context:::init!__0 __obj13735)
                       __obj13735))))
                 (_expand-internal-special13114_
                  (lambda (_hd13271_ _K13272_ _rest13273_ _r13274_)
                    (let* ((_e1327513300_ _hd13271_)
                           (_E1329513304_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1327513300_)))
                           (_E1329113316_
                            (lambda ()
                              (if (gx#stx-pair? _e1327513300_)
                                  (let ((_e1329613308_
                                         (gx#syntax-e _e1327513300_)))
                                    (let ((_hd1329713311_
                                           (##car _e1329613308_))
                                          (_tl1329813313_
                                           (##cdr _e1329613308_)))
                                      (if (and (gx#identifier? _hd1329713311_)
                                               (gx#core-identifier=?
                                                _hd1329713311_
                                                '%#declare))
                                          (if '#t
                                              (_K13272_
                                               _rest13273_
                                               (cons (gx#core-expand-declare%
                                                      _hd13271_)
                                                     _r13274_))
                                              (_E1329513304_))
                                          (_E1329513304_))))
                                  (_E1329513304_))))
                           (_E1328713328_
                            (lambda ()
                              (if (gx#stx-pair? _e1327513300_)
                                  (let ((_e1329213320_
                                         (gx#syntax-e _e1327513300_)))
                                    (let ((_hd1329313323_
                                           (##car _e1329213320_))
                                          (_tl1329413325_
                                           (##cdr _e1329213320_)))
                                      (if (and (gx#identifier? _hd1329313323_)
                                               (gx#core-identifier=?
                                                _hd1329313323_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd13271_)
                                                (_K13272_
                                                 _rest13273_
                                                 _r13274_))
                                              (_E1329113316_))
                                          (_E1329113316_))))
                                  (_E1329113316_))))
                           (_E1327713340_
                            (lambda ()
                              (if (gx#stx-pair? _e1327513300_)
                                  (let ((_e1328813332_
                                         (gx#syntax-e _e1327513300_)))
                                    (let ((_hd1328913335_
                                           (##car _e1328813332_))
                                          (_tl1329013337_
                                           (##cdr _e1328813332_)))
                                      (if (and (gx#identifier? _hd1328913335_)
                                               (gx#core-identifier=?
                                                _hd1328913335_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd13271_)
                                                (_K13272_
                                                 _rest13273_
                                                 _r13274_))
                                              (_E1328713328_))
                                          (_E1328713328_))))
                                  (_E1328713328_))))
                           (_E1327613372_
                            (lambda ()
                              (if (gx#stx-pair? _e1327513300_)
                                  (let ((_e1327813344_
                                         (gx#syntax-e _e1327513300_)))
                                    (let ((_hd1327913347_
                                           (##car _e1327813344_))
                                          (_tl1328013349_
                                           (##cdr _e1327813344_)))
                                      (if (and (gx#identifier? _hd1327913347_)
                                               (gx#core-identifier=?
                                                _hd1327913347_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl1328013349_)
                                              (let ((_e1328113352_
                                                     (gx#syntax-e
                                                      _tl1328013349_)))
                                                (let ((_hd1328213355_
                                                       (##car _e1328113352_))
                                                      (_tl1328313357_
                                                       (##cdr _e1328113352_)))
                                                  (let ((_hd-bind13360_
                                                         _hd1328213355_))
                                                    (if (gx#stx-pair?
                                                         _tl1328313357_)
                                                        (let ((_e1328413362_
                                                               (gx#syntax-e
                                                                _tl1328313357_)))
                                                          (let ((_hd1328513365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1328413362_))
                        (_tl1328613367_ (##cdr _e1328413362_)))
                    (let ((_expr13370_ _hd1328513365_))
                      (if (gx#stx-null? _tl1328613367_)
                          (if (gx#core-bind-values? _hd-bind13360_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind13360_)
                                (_K13272_
                                 _rest13273_
                                 (cons _hd13271_ _r13274_)))
                              (_E1327713340_))
                          (_E1327713340_)))))
                (_E1327713340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1327713340_))
                                          (_E1327713340_))))
                                  (_E1327713340_)))))
                      (_E1327613372_))))
                 (_wrap-internal13115_
                  (lambda (_rbody13117_)
                    (let _lp13119_ ((_rest13121_ _rbody13117_)
                                    (_decls13122_ '())
                                    (_bind13123_ '())
                                    (_body13124_ '()))
                      (let* ((_e1312513132_ _rest13121_)
                             (_E1312713181_
                              (lambda ()
                                (let* ((_body13176_
                                        (let* ((_body1313513145_ _body13124_)
                                               (_else1313813153_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body13124_)
                                                   (gx#stx-source
                                                    _stx13109_)))))
                                          (let ((_K1314313173_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _stx13109_)))
                                                (_K1314013159_
                                                 (lambda (_expr13157_)
                                                   _expr13157_)))
                                            (let ((_try-match1313713169_
                                                   (lambda ()
                                                     (if (##pair? _body1313513145_)
                                                         (let ((_tl1314213164_
                                                                (##cdr _body1313513145_))
                                                               (_hd1314113162_
                                                                (##car _body1313513145_)))
                                                           (if (##null? _tl1314213164_)
                                                               (let ((_expr13167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd1314113162_))
                         (_K1314013159_ _expr13167_))
                       (_else1313813153_)))
                 (_else1313813153_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body1313513145_)
                                                  (_K1314313173_)
                                                  (_try-match1313713169_))))))
                                       (_body13178_
                                        (if (null? _bind13123_)
                                            _body13176_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind13123_
                                                         (cons _body13176_
                                                               '())))
                                             (gx#stx-source _stx13109_)))))
                                  (if (null? _decls13122_)
                                      _body13178_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls13122_
                                                   (cons _body13178_ '())))
                                       (gx#stx-source _stx13109_))))))
                             (_E1312613267_
                              (lambda ()
                                (if (gx#stx-pair? _e1312513132_)
                                    (let ((_e1312813185_
                                           (gx#syntax-e _e1312513132_)))
                                      (let ((_hd1312913188_
                                             (##car _e1312813185_))
                                            (_tl1313013190_
                                             (##cdr _e1312813185_)))
                                        (let* ((_hd13193_ _hd1312913188_)
                                               (_rest13195_ _tl1313013190_))
                                          (if '#t
                                              (let* ((_e1319613213_ _hd13193_)
                                                     (_E1320813217_
                                                      (lambda ()
                                                        (if (null? _bind13123_)
                                                            (_lp13119_
                                                             _rest13195_
                                                             _decls13122_
                                                             _bind13123_
                                                             (cons _hd13193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body13124_))
                    (_lp13119_
                     _rest13195_
                     _decls13122_
                     (cons (cons '#f (cons _hd13193_ '())) _bind13123_)
                     _body13124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1319813231_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1319613213_)
                                                            (let ((_e1320913221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1319613213_)))
                      (let ((_hd1321013224_ (##car _e1320913221_))
                            (_tl1321113226_ (##cdr _e1320913221_)))
                        (if (and (gx#identifier? _hd1321013224_)
                                 (gx#core-identifier=?
                                  _hd1321013224_
                                  '%#declare))
                            (let ((_xdecls13229_ _tl1321113226_))
                              (if '#t
                                  (_lp13119_
                                   _rest13195_
                                   (gx#stx-foldr
                                    cons
                                    _decls13122_
                                    _xdecls13229_)
                                   _bind13123_
                                   _body13124_)
                                  (_E1320813217_)))
                            (_E1320813217_))))
                    (_E1320813217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1319713263_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1319613213_)
                                                            (let ((_e1319913235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1319613213_)))
                      (let ((_hd1320013238_ (##car _e1319913235_))
                            (_tl1320113240_ (##cdr _e1319913235_)))
                        (if (and (gx#identifier? _hd1320013238_)
                                 (gx#core-identifier=?
                                  _hd1320013238_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl1320113240_)
                                (let ((_e1320213243_
                                       (gx#syntax-e _tl1320113240_)))
                                  (let ((_hd1320313246_ (##car _e1320213243_))
                                        (_tl1320413248_ (##cdr _e1320213243_)))
                                    (let ((_hd-bind13251_ _hd1320313246_))
                                      (if (gx#stx-pair? _tl1320413248_)
                                          (let ((_e1320513253_
                                                 (gx#syntax-e _tl1320413248_)))
                                            (let ((_hd1320613256_
                                                   (##car _e1320513253_))
                                                  (_tl1320713258_
                                                   (##cdr _e1320513253_)))
                                              (let ((_expr13261_
                                                     _hd1320613256_))
                                                (if (gx#stx-null?
                                                     _tl1320713258_)
                                                    (if '#t
                                                        (_lp13119_
                                                         _rest13195_
                                                         _decls13122_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind13251_)
                             (cons (gx#core-expand-expression _expr13261_)
                                   '()))
                       _bind13123_)
                 _body13124_)
                (_E1319813231_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1319813231_)))))
                                          (_E1319813231_)))))
                                (_E1319813231_))
                            (_E1319813231_))))
                    (_E1319813231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1319713263_))
                                              (_E1312713181_)))))
                                    (_E1312713181_)))))
                        (_E1312613267_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body13110_)
            (gx#stx-source _stx13109_))
           _expand-special13112_))))
    (define gx#core-expand-declare%
      (lambda (_stx13047_)
        (let* ((_e1304813055_ _stx13047_)
               (_E1305013059_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1304813055_)))
               (_E1304913105_
                (lambda ()
                  (if (gx#stx-pair? _e1304813055_)
                      (let ((_e1305113063_ (gx#syntax-e _e1304813055_)))
                        (let ((_hd1305213066_ (##car _e1305113063_))
                              (_tl1305313068_ (##cdr _e1305113063_)))
                          (let ((_body13071_ _tl1305313068_))
                            (if (gx#stx-list? _body13071_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl13073_)
                                     (let* ((_e1307413081_ _decl13073_)
                                            (_E1307613085_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e1307413081_)))
                                            (_E1307513101_
                                             (lambda ()
                                               (if (gx#stx-pair? _e1307413081_)
                                                   (let ((_e1307713089_
                                                          (gx#syntax-e
                                                           _e1307413081_)))
                                                     (let ((_hd1307813092_
                                                            (##car _e1307713089_))
                                                           (_tl1307913094_
                                                            (##cdr _e1307713089_)))
                                                       (let* ((_head13097_
                                                               _hd1307813092_)
                                                              (_args13099_
                                                               _tl1307913094_))
                                                         (if (gx#stx-list?
                                                              _args13099_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl13073_)
                                                             (_E1307613085_)))))
                                                   (_E1307613085_)))))
                                       (_E1307513101_)))
                                   _body13071_))
                                 (gx#stx-source _stx13047_))
                                (_E1305013059_)))))
                      (_E1305013059_)))))
          (_E1304913105_))))
    (define gx#core-expand-extern%
      (lambda (_stx12951_)
        (let* ((_e1295212959_ _stx12951_)
               (_E1295412963_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1295212959_)))
               (_E1295313043_
                (lambda ()
                  (if (gx#stx-pair? _e1295212959_)
                      (let ((_e1295512967_ (gx#syntax-e _e1295212959_)))
                        (let ((_hd1295612970_ (##car _e1295512967_))
                              (_tl1295712972_ (##cdr _e1295512967_)))
                          (let ((_body12975_ _tl1295712972_))
                            (if '#t
                                (let _lp12977_ ((_rest12979_ _body12975_)
                                                (_r12980_ '()))
                                  (let* ((_e1298112995_ _rest12979_)
                                         (_E1299312999_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _stx12951_)))
                                         (_E1298313003_
                                          (lambda ()
                                            (if (gx#stx-null? _e1298112995_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r12980_))
                                                     (gx#stx-source
                                                      _stx12951_))
                                                    (_E1299312999_))
                                                (_E1299312999_))))
                                         (_E1298213039_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1298112995_)
                                                (let ((_e1298413007_
                                                       (gx#syntax-e
                                                        _e1298112995_)))
                                                  (let ((_hd1298513010_
                                                         (##car _e1298413007_))
                                                        (_tl1298613012_
                                                         (##cdr _e1298413007_)))
                                                    (if (gx#stx-pair?
                                                         _hd1298513010_)
                                                        (let ((_e1298713015_
                                                               (gx#syntax-e
                                                                _hd1298513010_)))
                                                          (let ((_hd1298813018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1298713015_))
                        (_tl1298913020_ (##cdr _e1298713015_)))
                    (let ((_id13023_ _hd1298813018_))
                      (if (gx#stx-pair? _tl1298913020_)
                          (let ((_e1299013025_ (gx#syntax-e _tl1298913020_)))
                            (let ((_hd1299113028_ (##car _e1299013025_))
                                  (_tl1299213030_ (##cdr _e1299013025_)))
                              (let ((_eid13033_ _hd1299113028_))
                                (if (gx#stx-null? _tl1299213030_)
                                    (let ((_rest13035_ _tl1298613012_))
                                      (if (and (gx#identifier? _id13023_)
                                               (gx#identifier? _eid13033_))
                                          (let ((_eid13037_
                                                 (gx#stx-e _eid13033_)))
                                            (gx#core-bind-extern!__0
                                             _id13023_
                                             _eid13037_)
                                            (_lp12977_
                                             _rest13035_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id13023_)
                                                         (cons _eid13037_ '()))
                                                   _r12980_)))
                                          (_E1298313003_)))
                                    (_E1298313003_)))))
                          (_E1298313003_)))))
                (_E1298313003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1298313003_)))))
                                    (_E1298213039_)))
                                (_E1295412963_)))))
                      (_E1295412963_)))))
          (_E1295313043_))))
    (define gx#core-expand-define-values%
      (lambda (_stx12897_)
        (let* ((_e1289812911_ _stx12897_)
               (_E1290012915_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1289812911_)))
               (_E1289912947_
                (lambda ()
                  (if (gx#stx-pair? _e1289812911_)
                      (let ((_e1290112919_ (gx#syntax-e _e1289812911_)))
                        (let ((_hd1290212922_ (##car _e1290112919_))
                              (_tl1290312924_ (##cdr _e1290112919_)))
                          (if (gx#stx-pair? _tl1290312924_)
                              (let ((_e1290412927_
                                     (gx#syntax-e _tl1290312924_)))
                                (let ((_hd1290512930_ (##car _e1290412927_))
                                      (_tl1290612932_ (##cdr _e1290412927_)))
                                  (let ((_hd12935_ _hd1290512930_))
                                    (if (gx#stx-pair? _tl1290612932_)
                                        (let ((_e1290712937_
                                               (gx#syntax-e _tl1290612932_)))
                                          (let ((_hd1290812940_
                                                 (##car _e1290712937_))
                                                (_tl1290912942_
                                                 (##cdr _e1290712937_)))
                                            (let ((_expr12945_ _hd1290812940_))
                                              (if (gx#stx-null? _tl1290912942_)
                                                  (if (gx#core-bind-values?
                                                       _hd12935_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd12935_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd12935_)
                             (cons (gx#core-expand-expression _expr12945_)
                                   '())))
                 (gx#stx-source _stx12897_)))
              (_E1290012915_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1290012915_)))))
                                        (_E1290012915_)))))
                              (_E1290012915_))))
                      (_E1290012915_)))))
          (_E1289912947_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx12841_)
        (let* ((_e1284212855_ _stx12841_)
               (_E1284412859_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1284212855_)))
               (_E1284312893_
                (lambda ()
                  (if (gx#stx-pair? _e1284212855_)
                      (let ((_e1284512863_ (gx#syntax-e _e1284212855_)))
                        (let ((_hd1284612866_ (##car _e1284512863_))
                              (_tl1284712868_ (##cdr _e1284512863_)))
                          (if (gx#stx-pair? _tl1284712868_)
                              (let ((_e1284812871_
                                     (gx#syntax-e _tl1284712868_)))
                                (let ((_hd1284912874_ (##car _e1284812871_))
                                      (_tl1285012876_ (##cdr _e1284812871_)))
                                  (let ((_id12879_ _hd1284912874_))
                                    (if (gx#stx-pair? _tl1285012876_)
                                        (let ((_e1285112881_
                                               (gx#syntax-e _tl1285012876_)))
                                          (let ((_hd1285212884_
                                                 (##car _e1285112881_))
                                                (_tl1285312886_
                                                 (##cdr _e1285112881_)))
                                            (let ((_binding-id12889_
                                                   _hd1285212884_))
                                              (if (gx#stx-null? _tl1285312886_)
                                                  (if (and (gx#identifier?
                                                            _id12879_)
                                                           (gx#identifier?
                                                            _binding-id12889_))
                                                      (let ((_eid12891_
                                                             (gx#stx-e
                                                              _binding-id12889_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id12879_
                                                         _eid12891_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id12879_)
                             (cons _eid12891_ '())))))
              (_E1284412859_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1284412859_)))))
                                        (_E1284412859_)))))
                              (_E1284412859_))))
                      (_E1284412859_)))))
          (_E1284312893_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx12784_)
        (let* ((_e1278512798_ _stx12784_)
               (_E1278712802_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1278512798_)))
               (_E1278612837_
                (lambda ()
                  (if (gx#stx-pair? _e1278512798_)
                      (let ((_e1278812806_ (gx#syntax-e _e1278512798_)))
                        (let ((_hd1278912809_ (##car _e1278812806_))
                              (_tl1279012811_ (##cdr _e1278812806_)))
                          (if (gx#stx-pair? _tl1279012811_)
                              (let ((_e1279112814_
                                     (gx#syntax-e _tl1279012811_)))
                                (let ((_hd1279212817_ (##car _e1279112814_))
                                      (_tl1279312819_ (##cdr _e1279112814_)))
                                  (let ((_id12822_ _hd1279212817_))
                                    (if (gx#stx-pair? _tl1279312819_)
                                        (let ((_e1279412824_
                                               (gx#syntax-e _tl1279312819_)))
                                          (let ((_hd1279512827_
                                                 (##car _e1279412824_))
                                                (_tl1279612829_
                                                 (##cdr _e1279412824_)))
                                            (let ((_expr12832_ _hd1279512827_))
                                              (if (gx#stx-null? _tl1279612829_)
                                                  (if (gx#identifier?
                                                       _id12822_)
                                                      (let ((_g13743_
                                                             (gx#core-expand-expression+1
                                                              _expr12832_)))
                                                        (begin
                                                          (let ((_g13744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g13743_)
                             (##vector-length _g13743_)
                             1)))
                    (if (not (##fx= _g13744_ 2))
                        (error "Context expects 2 values" _g13744_)))
                  (let ((_e-stx12834_ (##vector-ref _g13743_ 0))
                        (_e12835_ (##vector-ref _g13743_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id12822_ _e12835_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id12822_)
                                   (cons _e-stx12834_ '())))
                       (gx#stx-source _stx12784_))))))
              (_E1278712802_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1278712802_)))))
                                        (_E1278712802_)))))
                              (_E1278712802_))))
                      (_E1278712802_)))))
          (_E1278612837_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx12728_)
        (let* ((_e1272912742_ _stx12728_)
               (_E1273112746_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1272912742_)))
               (_E1273012780_
                (lambda ()
                  (if (gx#stx-pair? _e1272912742_)
                      (let ((_e1273212750_ (gx#syntax-e _e1272912742_)))
                        (let ((_hd1273312753_ (##car _e1273212750_))
                              (_tl1273412755_ (##cdr _e1273212750_)))
                          (if (gx#stx-pair? _tl1273412755_)
                              (let ((_e1273512758_
                                     (gx#syntax-e _tl1273412755_)))
                                (let ((_hd1273612761_ (##car _e1273512758_))
                                      (_tl1273712763_ (##cdr _e1273512758_)))
                                  (let ((_id12766_ _hd1273612761_))
                                    (if (gx#stx-pair? _tl1273712763_)
                                        (let ((_e1273812768_
                                               (gx#syntax-e _tl1273712763_)))
                                          (let ((_hd1273912771_
                                                 (##car _e1273812768_))
                                                (_tl1274012773_
                                                 (##cdr _e1273812768_)))
                                            (let ((_alias-id12776_
                                                   _hd1273912771_))
                                              (if (gx#stx-null? _tl1274012773_)
                                                  (if (and (gx#identifier?
                                                            _id12766_)
                                                           (gx#identifier?
                                                            _alias-id12776_))
                                                      (let ((_alias-id12778_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id12776_)))
                                                        (gx#core-bind-alias!__0
                                                         _id12766_
                                                         _alias-id12778_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id12766_)
                             (cons _alias-id12778_ '())))))
              (_E1273112746_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1273112746_)))))
                                        (_E1273112746_)))))
                              (_E1273112746_))))
                      (_E1273112746_)))))
          (_E1273012780_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx12671_ _wrap?12672_)
        (let* ((_e1267312683_ _stx12671_)
               (_E1267512687_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1267312683_)))
               (_E1267412714_
                (lambda ()
                  (if (gx#stx-pair? _e1267312683_)
                      (let ((_e1267612691_ (gx#syntax-e _e1267312683_)))
                        (let ((_hd1267712694_ (##car _e1267612691_))
                              (_tl1267812696_ (##cdr _e1267612691_)))
                          (if (gx#stx-pair? _tl1267812696_)
                              (let ((_e1267912699_
                                     (gx#syntax-e _tl1267812696_)))
                                (let ((_hd1268012702_ (##car _e1267912699_))
                                      (_tl1268112704_ (##cdr _e1267912699_)))
                                  (let* ((_hd12707_ _hd1268012702_)
                                         (_body12709_ _tl1268112704_))
                                    (if (gx#core-bind-values? _hd12707_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd12707_)
                                           (let ((_body12712_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd12707_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx12671_
                                                               _body12709_)
                                                              '()))))
                                             (if _wrap?12672_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body12712_)
                                                  (gx#stx-source _stx12671_))
                                                 _body12712_)))
                                         gx#current-expander-context
                                         (let ((__obj13736
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj13736)
                                           __obj13736))
                                        (_E1267512687_)))))
                              (_E1267512687_))))
                      (_E1267512687_)))))
          (_E1267412714_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx12721_)
        (let ((_wrap?12723_ '#t))
          (gx#core-expand-lambda%__% _stx12721_ _wrap?12723_))))
    (define gx#core-expand-lambda%
      (lambda _g13746_
        (let ((_g13745_ (##length _g13746_)))
          (cond ((##fx= _g13745_ 1)
                 (apply (lambda (_stx12721_)
                          (gx#core-expand-lambda%__0 _stx12721_))
                        _g13746_))
                ((##fx= _g13745_ 2)
                 (apply (lambda (_stx12725_ _wrap?12726_)
                          (gx#core-expand-lambda%__% _stx12725_ _wrap?12726_))
                        _g13746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g13746_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx12635_)
        (let* ((_e1263612643_ _stx12635_)
               (_E1263812647_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1263612643_)))
               (_E1263712666_
                (lambda ()
                  (if (gx#stx-pair? _e1263612643_)
                      (let ((_e1263912651_ (gx#syntax-e _e1263612643_)))
                        (let ((_hd1264012654_ (##car _e1263912651_))
                              (_tl1264112656_ (##cdr _e1263912651_)))
                          (let ((_clauses12659_ _tl1264112656_))
                            (if (gx#stx-list? _clauses12659_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause12661_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause12661_)
                                       (let ((_$e12663_
                                              (gx#stx-source _clause12661_)))
                                         (if _$e12663_
                                             _$e12663_
                                             (gx#stx-source _stx12635_))))
                                      '#f))
                                   _clauses12659_))
                                 (gx#stx-source _stx12635_))
                                (_E1263812647_)))))
                      (_E1263812647_)))))
          (_E1263712666_))))
    (define gx#core-expand-let-values%
      (lambda (_stx12589_)
        (let* ((_e1259012600_ _stx12589_)
               (_E1259212604_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1259012600_)))
               (_E1259112631_
                (lambda ()
                  (if (gx#stx-pair? _e1259012600_)
                      (let ((_e1259312608_ (gx#syntax-e _e1259012600_)))
                        (let ((_hd1259412611_ (##car _e1259312608_))
                              (_tl1259512613_ (##cdr _e1259312608_)))
                          (if (gx#stx-pair? _tl1259512613_)
                              (let ((_e1259612616_
                                     (gx#syntax-e _tl1259512613_)))
                                (let ((_hd1259712619_ (##car _e1259612616_))
                                      (_tl1259812621_ (##cdr _e1259612616_)))
                                  (let* ((_hd12624_ _hd1259712619_)
                                         (_body12626_ _tl1259812621_))
                                    (if (gx#core-expand-let-bind? _hd12624_)
                                        (let ((_expressions12628_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd12624_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd12624_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd12624_
                                                           _expressions12628_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx12589_
                         _body12626_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx12589_)))
                                           gx#current-expander-context
                                           (let ((__obj13737
                                                  (make-object
                                                   gx#local-context::t
                                                   '5)))
                                             (gx#local-context:::init!__0
                                              __obj13737)
                                             __obj13737)))
                                        (_E1259212604_)))))
                              (_E1259212604_))))
                      (_E1259212604_)))))
          (_E1259112631_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx12534_ _form12535_)
        (let* ((_e1253612546_ _stx12534_)
               (_E1253812550_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1253612546_)))
               (_E1253712575_
                (lambda ()
                  (if (gx#stx-pair? _e1253612546_)
                      (let ((_e1253912554_ (gx#syntax-e _e1253612546_)))
                        (let ((_hd1254012557_ (##car _e1253912554_))
                              (_tl1254112559_ (##cdr _e1253912554_)))
                          (if (gx#stx-pair? _tl1254112559_)
                              (let ((_e1254212562_
                                     (gx#syntax-e _tl1254112559_)))
                                (let ((_hd1254312565_ (##car _e1254212562_))
                                      (_tl1254412567_ (##cdr _e1254212562_)))
                                  (let* ((_hd12570_ _hd1254312565_)
                                         (_body12572_ _tl1254412567_))
                                    (if (gx#core-expand-let-bind? _hd12570_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd12570_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form12535_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd12570_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd12570_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx12534_
                                                               _body12572_)
                                                              '())))
                                            (gx#stx-source _stx12534_)))
                                         gx#current-expander-context
                                         (let ((__obj13738
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj13738)
                                           __obj13738))
                                        (_E1253812550_)))))
                              (_E1253812550_))))
                      (_E1253812550_)))))
          (_E1253712575_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx12582_)
        (let ((_form12584_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx12582_ _form12584_))))
    (define gx#core-expand-letrec-values%
      (lambda _g13748_
        (let ((_g13747_ (##length _g13748_)))
          (cond ((##fx= _g13747_ 1)
                 (apply (lambda (_stx12582_)
                          (gx#core-expand-letrec-values%__0 _stx12582_))
                        _g13748_))
                ((##fx= _g13747_ 2)
                 (apply (lambda (_stx12586_ _form12587_)
                          (gx#core-expand-letrec-values%__%
                           _stx12586_
                           _form12587_))
                        _g13748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g13748_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx12531_)
        (gx#core-expand-letrec-values%__% _stx12531_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx12488_)
        (if (gx#stx-list? _stx12488_)
            (gx#stx-andmap
             (lambda (_bind12490_)
               (let* ((_e1249112501_ _bind12490_)
                      (_E1249312505_ (lambda () '#f))
                      (_E1249212527_
                       (lambda ()
                         (if (gx#stx-pair? _e1249112501_)
                             (let ((_e1249412509_ (gx#syntax-e _e1249112501_)))
                               (let ((_hd1249512512_ (##car _e1249412509_))
                                     (_tl1249612514_ (##cdr _e1249412509_)))
                                 (let ((_hd12517_ _hd1249512512_))
                                   (if (gx#stx-pair? _tl1249612514_)
                                       (let ((_e1249712519_
                                              (gx#syntax-e _tl1249612514_)))
                                         (let ((_hd1249812522_
                                                (##car _e1249712519_))
                                               (_tl1249912524_
                                                (##cdr _e1249712519_)))
                                           (if (gx#stx-null? _tl1249912524_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd12517_)
                                                   (_E1249312505_))
                                               (_E1249312505_))))
                                       (_E1249312505_)))))
                             (_E1249312505_)))))
                 (_E1249212527_)))
             _stx12488_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind12447_)
        (let* ((_e1244812458_ _bind12447_)
               (_E1245012462_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1244812458_)))
               (_E1244912484_
                (lambda ()
                  (if (gx#stx-pair? _e1244812458_)
                      (let ((_e1245112466_ (gx#syntax-e _e1244812458_)))
                        (let ((_hd1245212469_ (##car _e1245112466_))
                              (_tl1245312471_ (##cdr _e1245112466_)))
                          (if (gx#stx-pair? _tl1245312471_)
                              (let ((_e1245412474_
                                     (gx#syntax-e _tl1245312471_)))
                                (let ((_hd1245512477_ (##car _e1245412474_))
                                      (_tl1245612479_ (##cdr _e1245412474_)))
                                  (let ((_expr12482_ _hd1245512477_))
                                    (if (gx#stx-null? _tl1245612479_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr12482_)
                                            (_E1245012462_))
                                        (_E1245012462_)))))
                              (_E1245012462_))))
                      (_E1245012462_)))))
          (_E1244912484_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind12406_)
        (let* ((_e1240712417_ _bind12406_)
               (_E1240912421_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1240712417_)))
               (_E1240812443_
                (lambda ()
                  (if (gx#stx-pair? _e1240712417_)
                      (let ((_e1241012425_ (gx#syntax-e _e1240712417_)))
                        (let ((_hd1241112428_ (##car _e1241012425_))
                              (_tl1241212430_ (##cdr _e1241012425_)))
                          (let ((_hd12433_ _hd1241112428_))
                            (if (gx#stx-pair? _tl1241212430_)
                                (let ((_e1241312435_
                                       (gx#syntax-e _tl1241212430_)))
                                  (let ((_hd1241412438_ (##car _e1241312435_))
                                        (_tl1241512440_ (##cdr _e1241312435_)))
                                    (if (gx#stx-null? _tl1241512440_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd12433_)
                                            (_E1240912421_))
                                        (_E1240912421_))))
                                (_E1240912421_)))))
                      (_E1240912421_)))))
          (_E1240812443_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind12364_ _expr12365_)
        (let* ((_e1236612376_ _bind12364_)
               (_E1236812380_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1236612376_)))
               (_E1236712402_
                (lambda ()
                  (if (gx#stx-pair? _e1236612376_)
                      (let ((_e1236912384_ (gx#syntax-e _e1236612376_)))
                        (let ((_hd1237012387_ (##car _e1236912384_))
                              (_tl1237112389_ (##cdr _e1236912384_)))
                          (let ((_hd12392_ _hd1237012387_))
                            (if (gx#stx-pair? _tl1237112389_)
                                (let ((_e1237212394_
                                       (gx#syntax-e _tl1237112389_)))
                                  (let ((_hd1237312397_ (##car _e1237212394_))
                                        (_tl1237412399_ (##cdr _e1237212394_)))
                                    (if (gx#stx-null? _tl1237412399_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd12392_)
                                                  (cons _expr12365_ '()))
                                            (_E1236812380_))
                                        (_E1236812380_))))
                                (_E1236812380_)))))
                      (_E1236812380_)))))
          (_E1236712402_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx12318_)
        (let* ((_e1231912329_ _stx12318_)
               (_E1232112333_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1231912329_)))
               (_E1232012360_
                (lambda ()
                  (if (gx#stx-pair? _e1231912329_)
                      (let ((_e1232212337_ (gx#syntax-e _e1231912329_)))
                        (let ((_hd1232312340_ (##car _e1232212337_))
                              (_tl1232412342_ (##cdr _e1232212337_)))
                          (if (gx#stx-pair? _tl1232412342_)
                              (let ((_e1232512345_
                                     (gx#syntax-e _tl1232412342_)))
                                (let ((_hd1232612348_ (##car _e1232512345_))
                                      (_tl1232712350_ (##cdr _e1232512345_)))
                                  (let* ((_hd12353_ _hd1232612348_)
                                         (_body12355_ _tl1232712350_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd12353_)
                                        (let ((_expanders12357_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd12353_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd12353_
                                              _expanders12357_)
                                             (gx#core-expand-local-block
                                              _stx12318_
                                              _body12355_))
                                           gx#current-expander-context
                                           (let ((__obj13739
                                                  (make-object
                                                   gx#local-context::t
                                                   '5)))
                                             (gx#local-context:::init!__0
                                              __obj13739)
                                             __obj13739)))
                                        (_E1232112333_)))))
                              (_E1232112333_))))
                      (_E1232112333_)))))
          (_E1232012360_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx12267_)
        (let* ((_e1226812278_ _stx12267_)
               (_E1227012282_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1226812278_)))
               (_E1226912314_
                (lambda ()
                  (if (gx#stx-pair? _e1226812278_)
                      (let ((_e1227112286_ (gx#syntax-e _e1226812278_)))
                        (let ((_hd1227212289_ (##car _e1227112286_))
                              (_tl1227312291_ (##cdr _e1227112286_)))
                          (if (gx#stx-pair? _tl1227312291_)
                              (let ((_e1227412294_
                                     (gx#syntax-e _tl1227312291_)))
                                (let ((_hd1227512297_ (##car _e1227412294_))
                                      (_tl1227612299_ (##cdr _e1227412294_)))
                                  (let* ((_hd12302_ _hd1227512297_)
                                         (_body12304_ _tl1227612299_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd12302_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd12302_
                                            (make-list
                                             (gx#stx-length _hd12302_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g1230612309_
                                                     _g1230712311_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g1230612309_
                                               _g1230712311_
                                               '#t))
                                            _hd12302_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd12302_))
                                           (gx#core-expand-local-block
                                            _stx12267_
                                            _body12304_))
                                         gx#current-expander-context
                                         (let ((__obj13740
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (gx#local-context:::init!__0
                                            __obj13740)
                                           __obj13740))
                                        (_E1227012282_)))))
                              (_E1227012282_))))
                      (_E1227012282_)))))
          (_E1226912314_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx12224_)
        (if (gx#stx-list? _stx12224_)
            (gx#stx-andmap
             (lambda (_bind12226_)
               (let* ((_e1222712237_ _bind12226_)
                      (_E1222912241_ (lambda () '#f))
                      (_E1222812263_
                       (lambda ()
                         (if (gx#stx-pair? _e1222712237_)
                             (let ((_e1223012245_ (gx#syntax-e _e1222712237_)))
                               (let ((_hd1223112248_ (##car _e1223012245_))
                                     (_tl1223212250_ (##cdr _e1223012245_)))
                                 (let ((_hd12253_ _hd1223112248_))
                                   (if (gx#stx-pair? _tl1223212250_)
                                       (let ((_e1223312255_
                                              (gx#syntax-e _tl1223212250_)))
                                         (let ((_hd1223412258_
                                                (##car _e1223312255_))
                                               (_tl1223512260_
                                                (##cdr _e1223312255_)))
                                           (if (gx#stx-null? _tl1223512260_)
                                               (if '#t
                                                   (gx#identifier? _hd12253_)
                                                   (_E1222912241_))
                                               (_E1222912241_))))
                                       (_E1222912241_)))))
                             (_E1222912241_)))))
                 (_E1222812263_)))
             _stx12224_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind12181_)
        (let* ((_e1218212192_ _bind12181_)
               (_E1218412196_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1218212192_)))
               (_E1218312220_
                (lambda ()
                  (if (gx#stx-pair? _e1218212192_)
                      (let ((_e1218512200_ (gx#syntax-e _e1218212192_)))
                        (let ((_hd1218612203_ (##car _e1218512200_))
                              (_tl1218712205_ (##cdr _e1218512200_)))
                          (if (gx#stx-pair? _tl1218712205_)
                              (let ((_e1218812208_
                                     (gx#syntax-e _tl1218712205_)))
                                (let ((_hd1218912211_ (##car _e1218812208_))
                                      (_tl1219012213_ (##cdr _e1218812208_)))
                                  (let ((_expr12216_ _hd1218912211_))
                                    (if (gx#stx-null? _tl1219012213_)
                                        (if '#t
                                            (let ((_g13749_
                                                   (gx#core-expand-expression+1
                                                    _expr12216_)))
                                              (begin
                                                (let ((_g13750_
                                                       (if (##values? _g13749_)
                                                           (##vector-length
                                                            _g13749_)
                                                           1)))
                                                  (if (not (##fx= _g13750_ 2))
                                                      (error "Context expects 2 values"
                                                             _g13750_)))
                                                (let ((_e12218_
                                                       (##vector-ref
                                                        _g13749_
                                                        1)))
                                                  _e12218_)))
                                            (_E1218412196_))
                                        (_E1218412196_)))))
                              (_E1218412196_))))
                      (_E1218412196_)))))
          (_E1218312220_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind12126_ _e12127_ _rebind?12128_)
        (let* ((_e1212912139_ _bind12126_)
               (_E1213112143_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1212912139_)))
               (_E1213012165_
                (lambda ()
                  (if (gx#stx-pair? _e1212912139_)
                      (let ((_e1213212147_ (gx#syntax-e _e1212912139_)))
                        (let ((_hd1213312150_ (##car _e1213212147_))
                              (_tl1213412152_ (##cdr _e1213212147_)))
                          (let ((_id12155_ _hd1213312150_))
                            (if (gx#stx-pair? _tl1213412152_)
                                (let ((_e1213512157_
                                       (gx#syntax-e _tl1213412152_)))
                                  (let ((_hd1213612160_ (##car _e1213512157_))
                                        (_tl1213712162_ (##cdr _e1213512157_)))
                                    (if (gx#stx-null? _tl1213712162_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id12155_
                                             _e12127_
                                             _rebind?12128_)
                                            (_E1213112143_))
                                        (_E1213112143_))))
                                (_E1213112143_)))))
                      (_E1213112143_)))))
          (_E1213012165_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind12172_ _e12173_)
        (let ((_rebind?12175_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind12172_
           _e12173_
           _rebind?12175_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g13752_
        (let ((_g13751_ (##length _g13752_)))
          (cond ((##fx= _g13751_ 2)
                 (apply (lambda (_bind12172_ _e12173_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind12172_
                           _e12173_))
                        _g13752_))
                ((##fx= _g13751_ 3)
                 (apply (lambda (_bind12177_ _e12178_ _rebind?12179_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind12177_
                           _e12178_
                           _rebind?12179_))
                        _g13752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g13752_))))))
    (define gx#core-expand-expression%
      (lambda (_stx12084_)
        (let* ((_e1208512095_ _stx12084_)
               (_E1208712099_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1208512095_)))
               (_E1208612121_
                (lambda ()
                  (if (gx#stx-pair? _e1208512095_)
                      (let ((_e1208812103_ (gx#syntax-e _e1208512095_)))
                        (let ((_hd1208912106_ (##car _e1208812103_))
                              (_tl1209012108_ (##cdr _e1208812103_)))
                          (if (gx#stx-pair? _tl1209012108_)
                              (let ((_e1209112111_
                                     (gx#syntax-e _tl1209012108_)))
                                (let ((_hd1209212114_ (##car _e1209112111_))
                                      (_tl1209312116_ (##cdr _e1209112111_)))
                                  (let ((_expr12119_ _hd1209212114_))
                                    (if (gx#stx-null? _tl1209312116_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr12119_)
                                            (_E1208712099_))
                                        (_E1208712099_)))))
                              (_E1208712099_))))
                      (_E1208712099_)))))
          (_E1208612121_))))
    (define gx#core-expand-quote%
      (lambda (_stx12043_)
        (let* ((_e1204412054_ _stx12043_)
               (_E1204612058_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1204412054_)))
               (_E1204512080_
                (lambda ()
                  (if (gx#stx-pair? _e1204412054_)
                      (let ((_e1204712062_ (gx#syntax-e _e1204412054_)))
                        (let ((_hd1204812065_ (##car _e1204712062_))
                              (_tl1204912067_ (##cdr _e1204712062_)))
                          (if (gx#stx-pair? _tl1204912067_)
                              (let ((_e1205012070_
                                     (gx#syntax-e _tl1204912067_)))
                                (let ((_hd1205112073_ (##car _e1205012070_))
                                      (_tl1205212075_ (##cdr _e1205012070_)))
                                  (let ((_e12078_ _hd1205112073_))
                                    (if (gx#stx-null? _tl1205212075_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e12078_)
                                                         '()))
                                             (gx#stx-source _stx12043_))
                                            (_E1204612058_))
                                        (_E1204612058_)))))
                              (_E1204612058_))))
                      (_E1204612058_)))))
          (_E1204512080_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx12002_)
        (let* ((_e1200312013_ _stx12002_)
               (_E1200512017_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1200312013_)))
               (_E1200412039_
                (lambda ()
                  (if (gx#stx-pair? _e1200312013_)
                      (let ((_e1200612021_ (gx#syntax-e _e1200312013_)))
                        (let ((_hd1200712024_ (##car _e1200612021_))
                              (_tl1200812026_ (##cdr _e1200612021_)))
                          (if (gx#stx-pair? _tl1200812026_)
                              (let ((_e1200912029_
                                     (gx#syntax-e _tl1200812026_)))
                                (let ((_hd1201012032_ (##car _e1200912029_))
                                      (_tl1201112034_ (##cdr _e1200912029_)))
                                  (let ((_e12037_ _hd1201012032_))
                                    (if (gx#stx-null? _tl1201112034_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e12037_)
                                                         '()))
                                             (gx#stx-source _stx12002_))
                                            (_E1200512017_))
                                        (_E1200512017_)))))
                              (_E1200512017_))))
                      (_E1200512017_)))))
          (_E1200412039_))))
    (define gx#core-expand-call%
      (lambda (_stx11959_)
        (let* ((_e1196011970_ _stx11959_)
               (_E1196211974_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1196011970_)))
               (_E1196111998_
                (lambda ()
                  (if (gx#stx-pair? _e1196011970_)
                      (let ((_e1196311978_ (gx#syntax-e _e1196011970_)))
                        (let ((_hd1196411981_ (##car _e1196311978_))
                              (_tl1196511983_ (##cdr _e1196311978_)))
                          (if (gx#stx-pair? _tl1196511983_)
                              (let ((_e1196611986_
                                     (gx#syntax-e _tl1196511983_)))
                                (let ((_hd1196711989_ (##car _e1196611986_))
                                      (_tl1196811991_ (##cdr _e1196611986_)))
                                  (let* ((_rator11994_ _hd1196711989_)
                                         (_args11996_ _tl1196811991_))
                                    (if (gx#stx-list? _args11996_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator11994_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args11996_))
                                         (gx#stx-source _stx11959_))
                                        (_E1196211974_)))))
                              (_E1196211974_))))
                      (_E1196211974_)))))
          (_E1196111998_))))
    (define gx#core-expand-if%
      (lambda (_stx11892_)
        (let* ((_e1189311909_ _stx11892_)
               (_E1189511913_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1189311909_)))
               (_E1189411955_
                (lambda ()
                  (if (gx#stx-pair? _e1189311909_)
                      (let ((_e1189611917_ (gx#syntax-e _e1189311909_)))
                        (let ((_hd1189711920_ (##car _e1189611917_))
                              (_tl1189811922_ (##cdr _e1189611917_)))
                          (if (gx#stx-pair? _tl1189811922_)
                              (let ((_e1189911925_
                                     (gx#syntax-e _tl1189811922_)))
                                (let ((_hd1190011928_ (##car _e1189911925_))
                                      (_tl1190111930_ (##cdr _e1189911925_)))
                                  (let ((_test11933_ _hd1190011928_))
                                    (if (gx#stx-pair? _tl1190111930_)
                                        (let ((_e1190211935_
                                               (gx#syntax-e _tl1190111930_)))
                                          (let ((_hd1190311938_
                                                 (##car _e1190211935_))
                                                (_tl1190411940_
                                                 (##cdr _e1190211935_)))
                                            (let ((_K11943_ _hd1190311938_))
                                              (if (gx#stx-pair? _tl1190411940_)
                                                  (let ((_e1190511945_
                                                         (gx#syntax-e
                                                          _tl1190411940_)))
                                                    (let ((_hd1190611948_
                                                           (##car _e1190511945_))
                                                          (_tl1190711950_
                                                           (##cdr _e1190511945_)))
                                                      (let ((_E11953_
                                                             _hd1190611948_))
                                                        (if (gx#stx-null?
                                                             _tl1190711950_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test11933_)
                                     (cons (gx#core-expand-expression _K11943_)
                                           (cons (gx#core-expand-expression
                                                  _E11953_)
                                                 '()))))
                         (gx#stx-source _stx11892_))
                        (_E1189511913_))
                    (_E1189511913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1189511913_)))))
                                        (_E1189511913_)))))
                              (_E1189511913_))))
                      (_E1189511913_)))))
          (_E1189411955_))))
    (define gx#core-expand-ref%
      (lambda (_stx11851_)
        (let* ((_e1185211862_ _stx11851_)
               (_E1185411866_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1185211862_)))
               (_E1185311888_
                (lambda ()
                  (if (gx#stx-pair? _e1185211862_)
                      (let ((_e1185511870_ (gx#syntax-e _e1185211862_)))
                        (let ((_hd1185611873_ (##car _e1185511870_))
                              (_tl1185711875_ (##cdr _e1185511870_)))
                          (if (gx#stx-pair? _tl1185711875_)
                              (let ((_e1185811878_
                                     (gx#syntax-e _tl1185711875_)))
                                (let ((_hd1185911881_ (##car _e1185811878_))
                                      (_tl1186011883_ (##cdr _e1185811878_)))
                                  (let ((_id11886_ _hd1185911881_))
                                    (if (gx#stx-null? _tl1186011883_)
                                        (if (gx#identifier? _id11886_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id11886_
                                                          _stx11851_)
                                                         '()))
                                             (gx#stx-source _stx11851_))
                                            (_E1185411866_))
                                        (_E1185411866_)))))
                              (_E1185411866_))))
                      (_E1185411866_)))))
          (_E1185311888_))))
    (define gx#core-expand-setq%
      (lambda (_stx11797_)
        (let* ((_e1179811811_ _stx11797_)
               (_E1180011815_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1179811811_)))
               (_E1179911847_
                (lambda ()
                  (if (gx#stx-pair? _e1179811811_)
                      (let ((_e1180111819_ (gx#syntax-e _e1179811811_)))
                        (let ((_hd1180211822_ (##car _e1180111819_))
                              (_tl1180311824_ (##cdr _e1180111819_)))
                          (if (gx#stx-pair? _tl1180311824_)
                              (let ((_e1180411827_
                                     (gx#syntax-e _tl1180311824_)))
                                (let ((_hd1180511830_ (##car _e1180411827_))
                                      (_tl1180611832_ (##cdr _e1180411827_)))
                                  (let ((_id11835_ _hd1180511830_))
                                    (if (gx#stx-pair? _tl1180611832_)
                                        (let ((_e1180711837_
                                               (gx#syntax-e _tl1180611832_)))
                                          (let ((_hd1180811840_
                                                 (##car _e1180711837_))
                                                (_tl1180911842_
                                                 (##cdr _e1180711837_)))
                                            (let ((_expr11845_ _hd1180811840_))
                                              (if (gx#stx-null? _tl1180911842_)
                                                  (if (gx#identifier?
                                                       _id11835_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id11835_
                            _stx11797_)
                           (cons (gx#core-expand-expression _expr11845_) '())))
               (gx#stx-source _stx11797_))
              (_E1180011815_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1180011815_)))))
                                        (_E1180011815_)))))
                              (_E1180011815_))))
                      (_E1180011815_)))))
          (_E1179911847_))))
    (define gx#macro-expand-extern
      (lambda (_stx11645_)
        (letrec ((_generate11647_
                  (lambda (_body11677_)
                    (let _lp11679_ ((_rest11681_ _body11677_)
                                    (_ns11682_ (gx#core-context-namespace__0))
                                    (_r11683_ '()))
                      (let* ((_e1168411699_ _rest11681_)
                             (_E1169711703_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1168411699_)))
                             (_E1169311707_
                              (lambda ()
                                (if (gx#stx-null? _e1168411699_)
                                    (if '#t (reverse _r11683_) (_E1169711703_))
                                    (_E1169711703_))))
                             (_E1168611764_
                              (lambda ()
                                (if (gx#stx-pair? _e1168411699_)
                                    (let ((_e1169411711_
                                           (gx#syntax-e _e1168411699_)))
                                      (let ((_hd1169511714_
                                             (##car _e1169411711_))
                                            (_tl1169611716_
                                             (##cdr _e1169411711_)))
                                        (let* ((_hd11719_ _hd1169511714_)
                                               (_rest11721_ _tl1169611716_))
                                          (if '#t
                                              (if (gx#identifier? _hd11719_)
                                                  (_lp11679_
                                                   _rest11721_
                                                   _ns11682_
                                                   (cons (cons _hd11719_
                                                               (cons (if _ns11682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd11719_
                                  _ns11682_
                                  '"#"
                                  _hd11719_)
                                 _hd11719_)
                             '()))
                 _r11683_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e1172211732_
                                                          _hd11719_)
                                                         (_E1172411736_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1172211732_)))
                                                         (_E1172311760_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1172211732_)
                        (let ((_e1172511740_ (gx#syntax-e _e1172211732_)))
                          (let ((_hd1172611743_ (##car _e1172511740_))
                                (_tl1172711745_ (##cdr _e1172511740_)))
                            (let ((_id11748_ _hd1172611743_))
                              (if (gx#stx-pair? _tl1172711745_)
                                  (let ((_e1172811750_
                                         (gx#syntax-e _tl1172711745_)))
                                    (let ((_hd1172911753_
                                           (##car _e1172811750_))
                                          (_tl1173011755_
                                           (##cdr _e1172811750_)))
                                      (let ((_eid11758_ _hd1172911753_))
                                        (if (gx#stx-null? _tl1173011755_)
                                            (if (and (gx#identifier? _id11748_)
                                                     (gx#identifier?
                                                      _eid11758_))
                                                (_lp11679_
                                                 _rest11721_
                                                 _ns11682_
                                                 (cons (cons _id11748_
                                                             (cons _eid11758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r11683_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1172411736_))
                                            (_E1172411736_)))))
                                  (_E1172411736_)))))
                        (_E1172411736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1172311760_)))
                                              (_E1169311707_)))))
                                    (_E1169311707_))))
                             (_E1168511793_
                              (lambda ()
                                (if (gx#stx-pair? _e1168411699_)
                                    (let ((_e1168711768_
                                           (gx#syntax-e _e1168411699_)))
                                      (let ((_hd1168811771_
                                             (##car _e1168711768_))
                                            (_tl1168911773_
                                             (##cdr _e1168711768_)))
                                        (if (eq? (gx#stx-e _hd1168811771_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl1168911773_)
                                                (let ((_e1169011776_
                                                       (gx#syntax-e
                                                        _tl1168911773_)))
                                                  (let ((_hd1169111779_
                                                         (##car _e1169011776_))
                                                        (_tl1169211781_
                                                         (##cdr _e1169011776_)))
                                                    (let* ((_ns11784_
                                                            _hd1169111779_)
                                                           (_rest11786_
                                                            _tl1169211781_))
                                                      (if '#t
                                                          (let ((_ns11791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns11784_)
                             (symbol->string (gx#stx-e _ns11784_))
                             (if (or (gx#stx-string? _ns11784_)
                                     (gx#stx-false? _ns11784_))
                                 (gx#stx-e _ns11784_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx11645_
                                  _ns11784_)))))
                    (_lp11679_ _rest11786_ _ns11791_ _r11683_))
                  (_E1168611764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1168611764_))
                                            (_E1168611764_))))
                                    (_E1168611764_)))))
                        (_E1168511793_))))))
          (let* ((_e1164811655_ _stx11645_)
                 (_E1165011659_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1164811655_)))
                 (_E1164911673_
                  (lambda ()
                    (if (gx#stx-pair? _e1164811655_)
                        (let ((_e1165111663_ (gx#syntax-e _e1164811655_)))
                          (let ((_hd1165211666_ (##car _e1165111663_))
                                (_tl1165311668_ (##cdr _e1165111663_)))
                            (let ((_body11671_ _tl1165311668_))
                              (if (gx#stx-list? _body11671_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate11647_ _body11671_))
                                  (_E1165011659_)))))
                        (_E1165011659_)))))
            (_E1164911673_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx11591_)
        (let* ((_e1159211605_ _stx11591_)
               (_E1159411609_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1159211605_)))
               (_E1159311641_
                (lambda ()
                  (if (gx#stx-pair? _e1159211605_)
                      (let ((_e1159511613_ (gx#syntax-e _e1159211605_)))
                        (let ((_hd1159611616_ (##car _e1159511613_))
                              (_tl1159711618_ (##cdr _e1159511613_)))
                          (if (gx#stx-pair? _tl1159711618_)
                              (let ((_e1159811621_
                                     (gx#syntax-e _tl1159711618_)))
                                (let ((_hd1159911624_ (##car _e1159811621_))
                                      (_tl1160011626_ (##cdr _e1159811621_)))
                                  (let ((_hd11629_ _hd1159911624_))
                                    (if (gx#stx-pair? _tl1160011626_)
                                        (let ((_e1160111631_
                                               (gx#syntax-e _tl1160011626_)))
                                          (let ((_hd1160211634_
                                                 (##car _e1160111631_))
                                                (_tl1160311636_
                                                 (##cdr _e1160111631_)))
                                            (let ((_expr11639_ _hd1160211634_))
                                              (if (gx#stx-null? _tl1160311636_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd11629_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd11629_)
                          (cons _expr11639_ '())))
              (_E1159411609_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1159411609_)))))
                                        (_E1159411609_)))))
                              (_E1159411609_))))
                      (_E1159411609_)))))
          (_E1159311641_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx11537_)
        (let* ((_e1153811551_ _stx11537_)
               (_E1154011555_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1153811551_)))
               (_E1153911587_
                (lambda ()
                  (if (gx#stx-pair? _e1153811551_)
                      (let ((_e1154111559_ (gx#syntax-e _e1153811551_)))
                        (let ((_hd1154211562_ (##car _e1154111559_))
                              (_tl1154311564_ (##cdr _e1154111559_)))
                          (if (gx#stx-pair? _tl1154311564_)
                              (let ((_e1154411567_
                                     (gx#syntax-e _tl1154311564_)))
                                (let ((_hd1154511570_ (##car _e1154411567_))
                                      (_tl1154611572_ (##cdr _e1154411567_)))
                                  (let ((_hd11575_ _hd1154511570_))
                                    (if (gx#stx-pair? _tl1154611572_)
                                        (let ((_e1154711577_
                                               (gx#syntax-e _tl1154611572_)))
                                          (let ((_hd1154811580_
                                                 (##car _e1154711577_))
                                                (_tl1154911582_
                                                 (##cdr _e1154711577_)))
                                            (let ((_expr11585_ _hd1154811580_))
                                              (if (gx#stx-null? _tl1154911582_)
                                                  (if (gx#identifier?
                                                       _hd11575_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd11575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr11585_ '())))
              (_E1154011555_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1154011555_)))))
                                        (_E1154011555_)))))
                              (_E1154011555_))))
                      (_E1154011555_)))))
          (_E1153911587_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx11483_)
        (let* ((_e1148411497_ _stx11483_)
               (_E1148611501_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1148411497_)))
               (_E1148511533_
                (lambda ()
                  (if (gx#stx-pair? _e1148411497_)
                      (let ((_e1148711505_ (gx#syntax-e _e1148411497_)))
                        (let ((_hd1148811508_ (##car _e1148711505_))
                              (_tl1148911510_ (##cdr _e1148711505_)))
                          (if (gx#stx-pair? _tl1148911510_)
                              (let ((_e1149011513_
                                     (gx#syntax-e _tl1148911510_)))
                                (let ((_hd1149111516_ (##car _e1149011513_))
                                      (_tl1149211518_ (##cdr _e1149011513_)))
                                  (let ((_id11521_ _hd1149111516_))
                                    (if (gx#stx-pair? _tl1149211518_)
                                        (let ((_e1149311523_
                                               (gx#syntax-e _tl1149211518_)))
                                          (let ((_hd1149411526_
                                                 (##car _e1149311523_))
                                                (_tl1149511528_
                                                 (##cdr _e1149311523_)))
                                            (let ((_alias-id11531_
                                                   _hd1149411526_))
                                              (if (gx#stx-null? _tl1149511528_)
                                                  (if (and (gx#identifier?
                                                            _id11521_)
                                                           (gx#identifier?
                                                            _alias-id11531_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id11521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id11531_ '())))
              (_E1148611501_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1148611501_)))))
                                        (_E1148611501_)))))
                              (_E1148611501_))))
                      (_E1148611501_)))))
          (_E1148511533_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx11440_)
        (let* ((_e1144111451_ _stx11440_)
               (_E1144311455_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1144111451_)))
               (_E1144211479_
                (lambda ()
                  (if (gx#stx-pair? _e1144111451_)
                      (let ((_e1144411459_ (gx#syntax-e _e1144111451_)))
                        (let ((_hd1144511462_ (##car _e1144411459_))
                              (_tl1144611464_ (##cdr _e1144411459_)))
                          (if (gx#stx-pair? _tl1144611464_)
                              (let ((_e1144711467_
                                     (gx#syntax-e _tl1144611464_)))
                                (let ((_hd1144811470_ (##car _e1144711467_))
                                      (_tl1144911472_ (##cdr _e1144711467_)))
                                  (let* ((_hd11475_ _hd1144811470_)
                                         (_body11477_ _tl1144911472_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd11475_)
                                             (gx#stx-list? _body11477_)
                                             (not (gx#stx-null? _body11477_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd11475_)
                                         _body11477_)
                                        (_E1144311455_)))))
                              (_E1144311455_))))
                      (_E1144311455_)))))
          (_E1144211479_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx11376_)
        (letrec ((_generate11378_
                  (lambda (_clause11408_)
                    (let* ((_e1140911416_ _clause11408_)
                           (_E1141111420_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx11376_
                               _clause11408_)))
                           (_E1141011436_
                            (lambda ()
                              (if (gx#stx-pair? _e1140911416_)
                                  (let ((_e1141211424_
                                         (gx#syntax-e _e1140911416_)))
                                    (let ((_hd1141311427_
                                           (##car _e1141211424_))
                                          (_tl1141411429_
                                           (##cdr _e1141211424_)))
                                      (let* ((_hd11432_ _hd1141311427_)
                                             (_body11434_ _tl1141411429_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd11432_)
                                                 (gx#stx-list? _body11434_)
                                                 (not (gx#stx-null?
                                                       _body11434_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd11432_)
                                                   _body11434_)
                                             (gx#stx-source _clause11408_))
                                            (_E1141111420_)))))
                                  (_E1141111420_)))))
                      (_E1141011436_)))))
          (let* ((_e1137911386_ _stx11376_)
                 (_E1138111390_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1137911386_)))
                 (_E1138011404_
                  (lambda ()
                    (if (gx#stx-pair? _e1137911386_)
                        (let ((_e1138211394_ (gx#syntax-e _e1137911386_)))
                          (let ((_hd1138311397_ (##car _e1138211394_))
                                (_tl1138411399_ (##cdr _e1138211394_)))
                            (let ((_clauses11402_ _tl1138411399_))
                              (if (gx#stx-list? _clauses11402_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate11378_
                                    _clauses11402_))
                                  (_E1138111390_)))))
                        (_E1138111390_)))))
            (_E1138011404_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx11277_ _form11278_)
        (letrec ((_generate11280_
                  (lambda (_bind11323_)
                    (let* ((_e1132411334_ _bind11323_)
                           (_E1132611338_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx11277_
                               _bind11323_)))
                           (_E1132511362_
                            (lambda ()
                              (if (gx#stx-pair? _e1132411334_)
                                  (let ((_e1132711342_
                                         (gx#syntax-e _e1132411334_)))
                                    (let ((_hd1132811345_
                                           (##car _e1132711342_))
                                          (_tl1132911347_
                                           (##cdr _e1132711342_)))
                                      (let ((_ids11350_ _hd1132811345_))
                                        (if (gx#stx-pair? _tl1132911347_)
                                            (let ((_e1133011352_
                                                   (gx#syntax-e
                                                    _tl1132911347_)))
                                              (let ((_hd1133111355_
                                                     (##car _e1133011352_))
                                                    (_tl1133211357_
                                                     (##cdr _e1133011352_)))
                                                (let ((_expr11360_
                                                       _hd1133111355_))
                                                  (if (gx#stx-null?
                                                       _tl1133211357_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids11350_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids11350_)
                        (cons _expr11360_ '()))
                  (_E1132611338_))
              (_E1132611338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1132611338_)))))
                                  (_E1132611338_)))))
                      (_E1132511362_)))))
          (let* ((_e1128111291_ _stx11277_)
                 (_E1128311295_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1128111291_)))
                 (_E1128211319_
                  (lambda ()
                    (if (gx#stx-pair? _e1128111291_)
                        (let ((_e1128411299_ (gx#syntax-e _e1128111291_)))
                          (let ((_hd1128511302_ (##car _e1128411299_))
                                (_tl1128611304_ (##cdr _e1128411299_)))
                            (if (gx#stx-pair? _tl1128611304_)
                                (let ((_e1128711307_
                                       (gx#syntax-e _tl1128611304_)))
                                  (let ((_hd1128811310_ (##car _e1128711307_))
                                        (_tl1128911312_ (##cdr _e1128711307_)))
                                    (let* ((_hd11315_ _hd1128811310_)
                                           (_body11317_ _tl1128911312_))
                                      (if (and (gx#stx-list? _hd11315_)
                                               (gx#stx-list? _body11317_)
                                               (not (gx#stx-null?
                                                     _body11317_)))
                                          (gx#core-cons*
                                           _form11278_
                                           (gx#stx-map1
                                            _generate11280_
                                            _hd11315_)
                                           _body11317_)
                                          (_E1128311295_)))))
                                (_E1128311295_))))
                        (_E1128311295_)))))
            (_E1128211319_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx11369_)
        (let ((_form11371_ '%#let-values))
          (gx#macro-expand-let-values__% _stx11369_ _form11371_))))
    (define gx#macro-expand-let-values
      (lambda _g13754_
        (let ((_g13753_ (##length _g13754_)))
          (cond ((##fx= _g13753_ 1)
                 (apply (lambda (_stx11369_)
                          (gx#macro-expand-let-values__0 _stx11369_))
                        _g13754_))
                ((##fx= _g13753_ 2)
                 (apply (lambda (_stx11373_ _form11374_)
                          (gx#macro-expand-let-values__%
                           _stx11373_
                           _form11374_))
                        _g13754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g13754_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx11274_)
        (gx#macro-expand-let-values__% _stx11274_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx11272_)
        (gx#macro-expand-let-values__% _stx11272_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx11163_)
        (let* ((_e1116411190_ _stx11163_)
               (_E1117611194_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1116411190_)))
               (_E1116611236_
                (lambda ()
                  (if (gx#stx-pair? _e1116411190_)
                      (let ((_e1117711198_ (gx#syntax-e _e1116411190_)))
                        (let ((_hd1117811201_ (##car _e1117711198_))
                              (_tl1117911203_ (##cdr _e1117711198_)))
                          (if (gx#stx-pair? _tl1117911203_)
                              (let ((_e1118011206_
                                     (gx#syntax-e _tl1117911203_)))
                                (let ((_hd1118111209_ (##car _e1118011206_))
                                      (_tl1118211211_ (##cdr _e1118011206_)))
                                  (let ((_test11214_ _hd1118111209_))
                                    (if (gx#stx-pair? _tl1118211211_)
                                        (let ((_e1118311216_
                                               (gx#syntax-e _tl1118211211_)))
                                          (let ((_hd1118411219_
                                                 (##car _e1118311216_))
                                                (_tl1118511221_
                                                 (##cdr _e1118311216_)))
                                            (let ((_K11224_ _hd1118411219_))
                                              (if (gx#stx-pair? _tl1118511221_)
                                                  (let ((_e1118611226_
                                                         (gx#syntax-e
                                                          _tl1118511221_)))
                                                    (let ((_hd1118711229_
                                                           (##car _e1118611226_))
                                                          (_tl1118811231_
                                                           (##cdr _e1118611226_)))
                                                      (let ((_E11234_
                                                             _hd1118711229_))
                                                        (if (gx#stx-null?
                                                             _tl1118811231_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test11214_
                         _K11224_
                         _E11234_)
                        (_E1117611194_))
                    (_E1117611194_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1117611194_)))))
                                        (_E1117611194_)))))
                              (_E1117611194_))))
                      (_E1117611194_))))
               (_E1116511268_
                (lambda ()
                  (if (gx#stx-pair? _e1116411190_)
                      (let ((_e1116711240_ (gx#syntax-e _e1116411190_)))
                        (let ((_hd1116811243_ (##car _e1116711240_))
                              (_tl1116911245_ (##cdr _e1116711240_)))
                          (if (gx#stx-pair? _tl1116911245_)
                              (let ((_e1117011248_
                                     (gx#syntax-e _tl1116911245_)))
                                (let ((_hd1117111251_ (##car _e1117011248_))
                                      (_tl1117211253_ (##cdr _e1117011248_)))
                                  (let ((_test11256_ _hd1117111251_))
                                    (if (gx#stx-pair? _tl1117211253_)
                                        (let ((_e1117311258_
                                               (gx#syntax-e _tl1117211253_)))
                                          (let ((_hd1117411261_
                                                 (##car _e1117311258_))
                                                (_tl1117511263_
                                                 (##cdr _e1117311258_)))
                                            (let ((_K11266_ _hd1117411261_))
                                              (if (gx#stx-null? _tl1117511263_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test11256_
                                                       _K11266_
                                                       '#!void)
                                                      (_E1116611236_))
                                                  (_E1116611236_)))))
                                        (_E1116611236_)))))
                              (_E1116611236_))))
                      (_E1116611236_)))))
          (_E1116511268_))))
    (define gx#free-identifier=?
      (lambda (_xid11151_ _yid11152_)
        (let ((_xe11154_ (gx#resolve-identifier__0 _xid11151_))
              (_ye11155_ (gx#resolve-identifier__0 _yid11152_)))
          (if (and _xe11154_ _ye11155_)
              (let ((_$e11157_ (eq? _xe11154_ _ye11155_)))
                (if _$e11157_
                    _$e11157_
                    (if (##structure-instance-of? _xe11154_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye11155_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe11154_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye11155_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe11154_ _ye11155_)
                  '#f
                  (gx#stx-eq? _xid11151_ _yid11152_))))))
    (define gx#bound-identifier=?
      (lambda (_xid11135_ _yid11136_)
        (letrec ((_context11138_
                  (lambda (_e11149_)
                    (if (##structure-direct-instance-of?
                         _e11149_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e11149_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks11139_
                  (lambda (_e11147_)
                    (if (symbol? _e11147_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e11147_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e11147_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e11147_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap11140_
                  (lambda (_e11145_)
                    (if (symbol? _e11145_)
                        _e11145_
                        (gx#syntax-local-unwrap _e11145_)))))
          (let ((_x11142_ (_unwrap11140_ _xid11135_))
                (_y11143_ (_unwrap11140_ _yid11136_)))
            (if (gx#stx-eq? _x11142_ _y11143_)
                (if (eq? (_context11138_ _x11142_) (_context11138_ _y11143_))
                    (equal? (_marks11139_ _x11142_) (_marks11139_ _y11143_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx11133_)
        (if (gx#identifier? _stx11133_)
            (gx#core-identifier=? _stx11133_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx11131_)
        (if (gx#identifier? _stx11131_)
            (gx#core-identifier=? _stx11131_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x11129_)
        (if (gx#identifier? _x11129_)
            (if (not (gx#underscore? _x11129_)) _x11129_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx11075_ _where11076_)
        (let _lp11078_ ((_rest11080_ (gx#syntax->list _stx11075_)))
          (let* ((_rest1108111089_ _rest11080_)
                 (_else1108311097_ (lambda () '#t))
                 (_K1108511107_
                  (lambda (_rest11100_ _hd11101_)
                    (if (not (gx#identifier? _hd11101_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where11076_
                         _hd11101_)
                        (if (find (lambda (_g1110211104_)
                                    (gx#bound-identifier=?
                                     _g1110211104_
                                     _hd11101_))
                                  _rest11100_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where11076_
                             _hd11101_)
                            (_lp11078_ _rest11100_))))))
            (if (##pair? _rest1108111089_)
                (let ((_hd1108611110_ (##car _rest1108111089_))
                      (_tl1108711112_ (##cdr _rest1108111089_)))
                  (let* ((_hd11115_ _hd1108611110_)
                         (_rest11117_ _tl1108711112_))
                    (_K1108511107_ _rest11117_ _hd11115_)))
                (_else1108311097_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx11122_)
        (let ((_where11124_ _stx11122_))
          (gx#check-duplicate-identifiers__% _stx11122_ _where11124_))))
    (define gx#check-duplicate-identifiers
      (lambda _g13756_
        (let ((_g13755_ (##length _g13756_)))
          (cond ((##fx= _g13755_ 1)
                 (apply (lambda (_stx11122_)
                          (gx#check-duplicate-identifiers__0 _stx11122_))
                        _g13756_))
                ((##fx= _g13755_ 2)
                 (apply (lambda (_stx11126_ _where11127_)
                          (gx#check-duplicate-identifiers__%
                           _stx11126_
                           _where11127_))
                        _g13756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g13756_))))))
    (define gx#core-bind-values?
      (lambda (_stx11067_)
        (gx#stx-andmap
         (lambda (_x11069_)
           (let ((_$e11071_ (gx#identifier? _x11069_)))
             (if _$e11071_ _$e11071_ (gx#stx-false? _x11069_))))
         _stx11067_)))
    (define gx#core-bind-values!__%
      (lambda (_stx11031_ _rebind?11032_ _phi11033_ _ctx11034_)
        (gx#stx-for-each1
         (lambda (_id11036_)
           (if (gx#identifier? _id11036_)
               (gx#core-bind-runtime!__%
                _id11036_
                _rebind?11032_
                _phi11033_
                _ctx11034_)
               '#!void))
         _stx11031_)))
    (define gx#core-bind-values!__0
      (lambda (_stx11041_)
        (let* ((_rebind?11043_ '#f)
               (_phi11045_ (gx#current-expander-phi))
               (_ctx11047_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx11041_
           _rebind?11043_
           _phi11045_
           _ctx11047_))))
    (define gx#core-bind-values!__1
      (lambda (_stx11049_ _rebind?11050_)
        (let* ((_phi11052_ (gx#current-expander-phi))
               (_ctx11054_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx11049_
           _rebind?11050_
           _phi11052_
           _ctx11054_))))
    (define gx#core-bind-values!__2
      (lambda (_stx11056_ _rebind?11057_ _phi11058_)
        (let ((_ctx11060_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx11056_
           _rebind?11057_
           _phi11058_
           _ctx11060_))))
    (define gx#core-bind-values!
      (lambda _g13758_
        (let ((_g13757_ (##length _g13758_)))
          (cond ((##fx= _g13757_ 1)
                 (apply (lambda (_stx11041_)
                          (gx#core-bind-values!__0 _stx11041_))
                        _g13758_))
                ((##fx= _g13757_ 2)
                 (apply (lambda (_stx11049_ _rebind?11050_)
                          (gx#core-bind-values!__1 _stx11049_ _rebind?11050_))
                        _g13758_))
                ((##fx= _g13757_ 3)
                 (apply (lambda (_stx11056_ _rebind?11057_ _phi11058_)
                          (gx#core-bind-values!__2
                           _stx11056_
                           _rebind?11057_
                           _phi11058_))
                        _g13758_))
                ((##fx= _g13757_ 4)
                 (apply (lambda (_stx11062_
                                 _rebind?11063_
                                 _phi11064_
                                 _ctx11065_)
                          (gx#core-bind-values!__%
                           _stx11062_
                           _rebind?11063_
                           _phi11064_
                           _ctx11065_))
                        _g13758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g13758_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx11026_)
        (gx#stx-map1
         (lambda (_x11028_)
           (if (gx#identifier? _x11028_)
               (gx#core-quote-syntax__0 _x11028_)
               '#f))
         _stx11026_)))
    (define gx#core-runtime-ref?
      (lambda (_stx11019_)
        (if (gx#identifier? _stx11019_)
            (let* ((_bind11021_ (gx#resolve-identifier__0 _stx11019_))
                   (_$e11023_ (not _bind11021_)))
              (if _$e11023_
                  _$e11023_
                  (##structure-instance-of?
                   _bind11021_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id11011_ _form11012_)
        (let ((_bind11014_ (gx#resolve-identifier__0 _id11011_)))
          (if (##structure-instance-of? _bind11014_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id11011_)
              (if (not _bind11014_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id11011_)))
                      (gx#core-quote-syntax__0 _id11011_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form11012_
                       _id11011_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form11012_
                   _id11011_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id10970_ _rebind?10971_ _phi10972_ _ctx10973_)
        (let* ((_key10975_ (gx#core-identifier-key _id10970_))
               (_eid10977_
                (gx#make-binding-id__% _key10975_ '#f _phi10972_ _ctx10973_))
               (_bind10979_
                (if (##structure-instance-of? _ctx10973_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid10977_
                     _key10975_
                     _phi10972_
                     _ctx10973_)
                    (if (##structure-instance-of?
                         _ctx10973_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid10977_
                         _key10975_
                         _phi10972_)
                        (if (##structure-instance-of?
                             _ctx10973_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid10977_
                             _key10975_
                             _phi10972_)
                            (##structure
                             gx#runtime-binding::t
                             _eid10977_
                             _key10975_
                             _phi10972_))))))
          (gx#bind-identifier!__%
           _id10970_
           _bind10979_
           _rebind?10971_
           _phi10972_
           _ctx10973_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id10985_)
        (let* ((_rebind?10987_ '#f)
               (_phi10989_ (gx#current-expander-phi))
               (_ctx10991_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id10985_
           _rebind?10987_
           _phi10989_
           _ctx10991_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id10993_ _rebind?10994_)
        (let* ((_phi10996_ (gx#current-expander-phi))
               (_ctx10998_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id10993_
           _rebind?10994_
           _phi10996_
           _ctx10998_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id11000_ _rebind?11001_ _phi11002_)
        (let ((_ctx11004_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id11000_
           _rebind?11001_
           _phi11002_
           _ctx11004_))))
    (define gx#core-bind-runtime!
      (lambda _g13760_
        (let ((_g13759_ (##length _g13760_)))
          (cond ((##fx= _g13759_ 1)
                 (apply (lambda (_id10985_)
                          (gx#core-bind-runtime!__0 _id10985_))
                        _g13760_))
                ((##fx= _g13759_ 2)
                 (apply (lambda (_id10993_ _rebind?10994_)
                          (gx#core-bind-runtime!__1 _id10993_ _rebind?10994_))
                        _g13760_))
                ((##fx= _g13759_ 3)
                 (apply (lambda (_id11000_ _rebind?11001_ _phi11002_)
                          (gx#core-bind-runtime!__2
                           _id11000_
                           _rebind?11001_
                           _phi11002_))
                        _g13760_))
                ((##fx= _g13759_ 4)
                 (apply (lambda (_id11006_
                                 _rebind?11007_
                                 _phi11008_
                                 _ctx11009_)
                          (gx#core-bind-runtime!__%
                           _id11006_
                           _rebind?11007_
                           _phi11008_
                           _ctx11009_))
                        _g13760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g13760_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id10925_ _eid10926_ _rebind?10927_ _phi10928_ _ctx10929_)
        (let* ((_key10931_ (gx#core-identifier-key _id10925_))
               (_bind10933_
                (if (##structure-instance-of? _ctx10929_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid10926_
                     _key10931_
                     _phi10928_
                     _ctx10929_)
                    (if (##structure-instance-of?
                         _ctx10929_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid10926_
                         _key10931_
                         _phi10928_)
                        (##structure
                         gx#runtime-binding::t
                         _eid10926_
                         _key10931_
                         _phi10928_)))))
          (gx#bind-identifier!__%
           _id10925_
           _bind10933_
           _rebind?10927_
           _phi10928_
           _ctx10929_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id10939_ _eid10940_)
        (let* ((_rebind?10942_ '#f)
               (_phi10944_ (gx#current-expander-phi))
               (_ctx10946_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id10939_
           _eid10940_
           _rebind?10942_
           _phi10944_
           _ctx10946_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id10948_ _eid10949_ _rebind?10950_)
        (let* ((_phi10952_ (gx#current-expander-phi))
               (_ctx10954_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id10948_
           _eid10949_
           _rebind?10950_
           _phi10952_
           _ctx10954_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id10956_ _eid10957_ _rebind?10958_ _phi10959_)
        (let ((_ctx10961_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id10956_
           _eid10957_
           _rebind?10958_
           _phi10959_
           _ctx10961_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g13762_
        (let ((_g13761_ (##length _g13762_)))
          (cond ((##fx= _g13761_ 2)
                 (apply (lambda (_id10939_ _eid10940_)
                          (gx#core-bind-runtime-reference!__0
                           _id10939_
                           _eid10940_))
                        _g13762_))
                ((##fx= _g13761_ 3)
                 (apply (lambda (_id10948_ _eid10949_ _rebind?10950_)
                          (gx#core-bind-runtime-reference!__1
                           _id10948_
                           _eid10949_
                           _rebind?10950_))
                        _g13762_))
                ((##fx= _g13761_ 4)
                 (apply (lambda (_id10956_
                                 _eid10957_
                                 _rebind?10958_
                                 _phi10959_)
                          (gx#core-bind-runtime-reference!__2
                           _id10956_
                           _eid10957_
                           _rebind?10958_
                           _phi10959_))
                        _g13762_))
                ((##fx= _g13761_ 5)
                 (apply (lambda (_id10963_
                                 _eid10964_
                                 _rebind?10965_
                                 _phi10966_
                                 _ctx10967_)
                          (gx#core-bind-runtime-reference!__%
                           _id10963_
                           _eid10964_
                           _rebind?10965_
                           _phi10966_
                           _ctx10967_))
                        _g13762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g13762_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id10885_ _eid10886_ _rebind?10887_ _phi10888_ _ctx10889_)
        (gx#bind-identifier!__%
         _id10885_
         (##structure
          gx#extern-binding::t
          _eid10886_
          (gx#core-identifier-key _id10885_)
          _phi10888_)
         _rebind?10887_
         _phi10888_
         _ctx10889_)))
    (define gx#core-bind-extern!__0
      (lambda (_id10894_ _eid10895_)
        (let* ((_rebind?10897_ '#f)
               (_phi10899_ (gx#current-expander-phi))
               (_ctx10901_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id10894_
           _eid10895_
           _rebind?10897_
           _phi10899_
           _ctx10901_))))
    (define gx#core-bind-extern!__1
      (lambda (_id10903_ _eid10904_ _rebind?10905_)
        (let* ((_phi10907_ (gx#current-expander-phi))
               (_ctx10909_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id10903_
           _eid10904_
           _rebind?10905_
           _phi10907_
           _ctx10909_))))
    (define gx#core-bind-extern!__2
      (lambda (_id10911_ _eid10912_ _rebind?10913_ _phi10914_)
        (let ((_ctx10916_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id10911_
           _eid10912_
           _rebind?10913_
           _phi10914_
           _ctx10916_))))
    (define gx#core-bind-extern!
      (lambda _g13764_
        (let ((_g13763_ (##length _g13764_)))
          (cond ((##fx= _g13763_ 2)
                 (apply (lambda (_id10894_ _eid10895_)
                          (gx#core-bind-extern!__0 _id10894_ _eid10895_))
                        _g13764_))
                ((##fx= _g13763_ 3)
                 (apply (lambda (_id10903_ _eid10904_ _rebind?10905_)
                          (gx#core-bind-extern!__1
                           _id10903_
                           _eid10904_
                           _rebind?10905_))
                        _g13764_))
                ((##fx= _g13763_ 4)
                 (apply (lambda (_id10911_
                                 _eid10912_
                                 _rebind?10913_
                                 _phi10914_)
                          (gx#core-bind-extern!__2
                           _id10911_
                           _eid10912_
                           _rebind?10913_
                           _phi10914_))
                        _g13764_))
                ((##fx= _g13763_ 5)
                 (apply (lambda (_id10918_
                                 _eid10919_
                                 _rebind?10920_
                                 _phi10921_
                                 _ctx10922_)
                          (gx#core-bind-extern!__%
                           _id10918_
                           _eid10919_
                           _rebind?10920_
                           _phi10921_
                           _ctx10922_))
                        _g13764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g13764_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id10839_ _e10840_ _rebind?10841_ _phi10842_ _ctx10843_)
        (gx#bind-identifier!__%
         _id10839_
         (let ((_key10848_ (gx#core-identifier-key _id10839_))
               (_e10849_
                (if (or (##structure-instance-of? _e10840_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e10840_
                         'gx#expander-context::t))
                    _e10840_
                    (##structure
                     gx#user-expander::t
                     _e10840_
                     _ctx10843_
                     _phi10842_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key10848_ '#t _phi10842_ _ctx10843_)
            _key10848_
            _phi10842_
            _e10849_))
         _rebind?10841_
         _phi10842_
         _ctx10843_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id10854_ _e10855_)
        (let* ((_rebind?10857_ '#f)
               (_phi10859_ (gx#current-expander-phi))
               (_ctx10861_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id10854_
           _e10855_
           _rebind?10857_
           _phi10859_
           _ctx10861_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id10863_ _e10864_ _rebind?10865_)
        (let* ((_phi10867_ (gx#current-expander-phi))
               (_ctx10869_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id10863_
           _e10864_
           _rebind?10865_
           _phi10867_
           _ctx10869_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id10871_ _e10872_ _rebind?10873_ _phi10874_)
        (let ((_ctx10876_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id10871_
           _e10872_
           _rebind?10873_
           _phi10874_
           _ctx10876_))))
    (define gx#core-bind-syntax!
      (lambda _g13766_
        (let ((_g13765_ (##length _g13766_)))
          (cond ((##fx= _g13765_ 2)
                 (apply (lambda (_id10854_ _e10855_)
                          (gx#core-bind-syntax!__0 _id10854_ _e10855_))
                        _g13766_))
                ((##fx= _g13765_ 3)
                 (apply (lambda (_id10863_ _e10864_ _rebind?10865_)
                          (gx#core-bind-syntax!__1
                           _id10863_
                           _e10864_
                           _rebind?10865_))
                        _g13766_))
                ((##fx= _g13765_ 4)
                 (apply (lambda (_id10871_ _e10872_ _rebind?10873_ _phi10874_)
                          (gx#core-bind-syntax!__2
                           _id10871_
                           _e10872_
                           _rebind?10873_
                           _phi10874_))
                        _g13766_))
                ((##fx= _g13765_ 5)
                 (apply (lambda (_id10878_
                                 _e10879_
                                 _rebind?10880_
                                 _phi10881_
                                 _ctx10882_)
                          (gx#core-bind-syntax!__%
                           _id10878_
                           _e10879_
                           _rebind?10880_
                           _phi10881_
                           _ctx10882_))
                        _g13766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g13766_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id10822_ _e10823_ _rebind?10824_)
        (gx#core-bind-syntax!__%
         _id10822_
         _e10823_
         _rebind?10824_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id10829_ _e10830_)
        (let ((_rebind?10832_ '#f))
          (gx#core-bind-root-syntax!__% _id10829_ _e10830_ _rebind?10832_))))
    (define gx#core-bind-root-syntax!
      (lambda _g13768_
        (let ((_g13767_ (##length _g13768_)))
          (cond ((##fx= _g13767_ 2)
                 (apply (lambda (_id10829_ _e10830_)
                          (gx#core-bind-root-syntax!__0 _id10829_ _e10830_))
                        _g13768_))
                ((##fx= _g13767_ 3)
                 (apply (lambda (_id10834_ _e10835_ _rebind?10836_)
                          (gx#core-bind-root-syntax!__%
                           _id10834_
                           _e10835_
                           _rebind?10836_))
                        _g13768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g13768_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id10780_ _alias-id10781_ _rebind?10782_ _phi10783_ _ctx10784_)
        (gx#bind-identifier!__%
         _id10780_
         (let ((_key10786_ (gx#core-identifier-key _id10780_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key10786_ '#t _phi10783_ _ctx10784_)
            _key10786_
            _phi10783_
            _alias-id10781_))
         _rebind?10782_
         _phi10783_
         _ctx10784_)))
    (define gx#core-bind-alias!__0
      (lambda (_id10791_ _alias-id10792_)
        (let* ((_rebind?10794_ '#f)
               (_phi10796_ (gx#current-expander-phi))
               (_ctx10798_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id10791_
           _alias-id10792_
           _rebind?10794_
           _phi10796_
           _ctx10798_))))
    (define gx#core-bind-alias!__1
      (lambda (_id10800_ _alias-id10801_ _rebind?10802_)
        (let* ((_phi10804_ (gx#current-expander-phi))
               (_ctx10806_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id10800_
           _alias-id10801_
           _rebind?10802_
           _phi10804_
           _ctx10806_))))
    (define gx#core-bind-alias!__2
      (lambda (_id10808_ _alias-id10809_ _rebind?10810_ _phi10811_)
        (let ((_ctx10813_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id10808_
           _alias-id10809_
           _rebind?10810_
           _phi10811_
           _ctx10813_))))
    (define gx#core-bind-alias!
      (lambda _g13770_
        (let ((_g13769_ (##length _g13770_)))
          (cond ((##fx= _g13769_ 2)
                 (apply (lambda (_id10791_ _alias-id10792_)
                          (gx#core-bind-alias!__0 _id10791_ _alias-id10792_))
                        _g13770_))
                ((##fx= _g13769_ 3)
                 (apply (lambda (_id10800_ _alias-id10801_ _rebind?10802_)
                          (gx#core-bind-alias!__1
                           _id10800_
                           _alias-id10801_
                           _rebind?10802_))
                        _g13770_))
                ((##fx= _g13769_ 4)
                 (apply (lambda (_id10808_
                                 _alias-id10809_
                                 _rebind?10810_
                                 _phi10811_)
                          (gx#core-bind-alias!__2
                           _id10808_
                           _alias-id10809_
                           _rebind?10810_
                           _phi10811_))
                        _g13770_))
                ((##fx= _g13769_ 5)
                 (apply (lambda (_id10815_
                                 _alias-id10816_
                                 _rebind?10817_
                                 _phi10818_
                                 _ctx10819_)
                          (gx#core-bind-alias!__%
                           _id10815_
                           _alias-id10816_
                           _rebind?10817_
                           _phi10818_
                           _ctx10819_))
                        _g13770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g13770_))))))
    (define gx#make-binding-id__%
      (lambda (_key10737_ _syntax?10738_ _phi10739_ _ctx10740_)
        (if (uninterned-symbol? _key10737_)
            (gensym 'L)
            (if (pair? _key10737_)
                (gensym (car _key10737_))
                (if (##structure-instance-of? _ctx10740_ 'gx#top-context::t)
                    (let ((_ns10742_
                           (gx#core-context-namespace__% _ctx10740_)))
                      (if (and (fxzero? _phi10739_) (not _syntax?10738_))
                          (if _ns10742_
                              (make-symbol _ns10742_ '"#" _key10737_)
                              _key10737_)
                          (if _syntax?10738_
                              (make-symbol
                               (let ((_$e10744_ _ns10742_))
                                 (if _$e10744_ _$e10744_ '""))
                               '"[:"
                               (number->string _phi10739_)
                               '":]#"
                               _key10737_)
                              (make-symbol
                               (let ((_$e10747_ _ns10742_))
                                 (if _$e10747_ _$e10747_ '""))
                               '"["
                               (number->string _phi10739_)
                               '"]#"
                               _key10737_))))
                    (gensym _key10737_))))))
    (define gx#make-binding-id__0
      (lambda (_key10753_)
        (let* ((_syntax?10755_ '#f)
               (_phi10757_ (gx#current-expander-phi))
               (_ctx10759_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key10753_
           _syntax?10755_
           _phi10757_
           _ctx10759_))))
    (define gx#make-binding-id__1
      (lambda (_key10761_ _syntax?10762_)
        (let* ((_phi10764_ (gx#current-expander-phi))
               (_ctx10766_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key10761_
           _syntax?10762_
           _phi10764_
           _ctx10766_))))
    (define gx#make-binding-id__2
      (lambda (_key10768_ _syntax?10769_ _phi10770_)
        (let ((_ctx10772_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key10768_
           _syntax?10769_
           _phi10770_
           _ctx10772_))))
    (define gx#make-binding-id
      (lambda _g13772_
        (let ((_g13771_ (##length _g13772_)))
          (cond ((##fx= _g13771_ 1)
                 (apply (lambda (_key10753_)
                          (gx#make-binding-id__0 _key10753_))
                        _g13772_))
                ((##fx= _g13771_ 2)
                 (apply (lambda (_key10761_ _syntax?10762_)
                          (gx#make-binding-id__1 _key10761_ _syntax?10762_))
                        _g13772_))
                ((##fx= _g13771_ 3)
                 (apply (lambda (_key10768_ _syntax?10769_ _phi10770_)
                          (gx#make-binding-id__2
                           _key10768_
                           _syntax?10769_
                           _phi10770_))
                        _g13772_))
                ((##fx= _g13771_ 4)
                 (apply (lambda (_key10774_
                                 _syntax?10775_
                                 _phi10776_
                                 _ctx10777_)
                          (gx#make-binding-id__%
                           _key10774_
                           _syntax?10775_
                           _phi10776_
                           _ctx10777_))
                        _g13772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g13772_))))))))
