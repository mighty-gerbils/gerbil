(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-compile-top-syntax
    (lambda (_stx15561_)
      (let* ((_e1556215569_ _stx15561_)
             (_E1556415573_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1556215569_)))
             (_E1556315587_
              (lambda ()
                (if (gx#stx-pair? _e1556215569_)
                    (let ((_e1556515577_ (gx#syntax-e _e1556215569_)))
                      (let ((_hd1556615580_ (##car _e1556515577_))
                            (_tl1556715582_ (##cdr _e1556515577_)))
                        (let ((_form15585_ _hd1556615580_))
                          (if '#t
                              (call-method
                               (gx#syntax-local-e__0 _form15585_)
                               'compile-top-syntax
                               _stx15561_)
                              (_E1556415573_)))))
                    (_E1556415573_)))))
        (_E1556315587_))))
  (define gx#core-expander::compile-top-syntax
    (lambda (_self15521_ _stx15522_)
      (let* ((_self1552315531_ _self15521_)
             (_E1552515535_
              (lambda () (error '"No clause matching" _self1552315531_)))
             (_K1552615547_
              (lambda (_K15538_)
                (let ((_$e15540_ (gx#stx-source _stx15522_)))
                  (if _$e15540_
                      ((lambda (_g1554215544_)
                         (gx#stx-wrap-source
                          (_K15538_ _stx15522_)
                          _g1554215544_))
                       _$e15540_)
                      (_K15538_ _stx15522_))))))
        (if (##structure-instance-of?
             _self1552315531_
             (##type-id gx#core-expander::t))
            (let* ((_e1552715550_ (##vector-ref _self1552315531_ '1))
                   (_e1552815553_ (##vector-ref _self1552315531_ '2))
                   (_e1552915556_ (##vector-ref _self1552315531_ '3))
                   (_K15559_ _e1552915556_))
              (_K1552615547_ _K15559_))
            (_E1552515535_)))))
  (bind-method!
   gx#core-expander::t
   'compile-top-syntax
   gx#core-expander::compile-top-syntax
   '#f)
  (define gx#core-compile-top-error
    (lambda (_stx15395_)
      (gx#raise-syntax-error 'compile '"Cannot compile form" _stx15395_)))
  (define gx#core-compile-top-begin%
    (lambda (_stx15365_)
      (let* ((_e1536615373_ _stx15365_)
             (_E1536815377_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1536615373_)))
             (_E1536715391_
              (lambda ()
                (if (gx#stx-pair? _e1536615373_)
                    (let ((_e1536915381_ (gx#syntax-e _e1536615373_)))
                      (let ((_hd1537015384_ (##car _e1536915381_))
                            (_tl1537115386_ (##cdr _e1536915381_)))
                        (let ((_body15389_ _tl1537115386_))
                          (if '#t
                              (cons '%#begin
                                    (gx#stx-map1
                                     gx#core-compile-top-syntax
                                     _body15389_))
                              (_E1536815377_)))))
                    (_E1536815377_)))))
        (_E1536715391_))))
  (define gx#core-compile-top-begin-syntax%
    (lambda (_stx15334_)
      (let* ((_e1533515342_ _stx15334_)
             (_E1533715346_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1533515342_)))
             (_E1533615361_
              (lambda ()
                (if (gx#stx-pair? _e1533515342_)
                    (let ((_e1533815350_ (gx#syntax-e _e1533515342_)))
                      (let ((_hd1533915353_ (##car _e1533815350_))
                            (_tl1534015355_ (##cdr _e1533815350_)))
                        (let ((_body15358_ _tl1534015355_))
                          (if '#t
                              (cons '%#begin-syntax
                                    (call-with-parameters
                                     (lambda ()
                                       (gx#stx-map1
                                        gx#core-compile-top-syntax
                                        _body15358_))
                                     gx#current-expander-phi
                                     (fx+ (gx#current-expander-phi) '1)))
                              (_E1533715346_)))))
                    (_E1533715346_)))))
        (_E1533615361_))))
  (define gx#core-compile-top-begin-foreign%
    (lambda (_stx15304_)
      (let* ((_e1530515312_ _stx15304_)
             (_E1530715316_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1530515312_)))
             (_E1530615330_
              (lambda ()
                (if (gx#stx-pair? _e1530515312_)
                    (let ((_e1530815320_ (gx#syntax-e _e1530515312_)))
                      (let ((_hd1530915323_ (##car _e1530815320_))
                            (_tl1531015325_ (##cdr _e1530815320_)))
                        (let ((_body15328_ _tl1531015325_))
                          (if '#t
                              (cons '%#begin-foreign _body15328_)
                              (_E1530715316_)))))
                    (_E1530715316_)))))
        (_E1530615330_))))
  (define gx#core-compile-top-begin-annotation%
    (lambda (_stx15250_)
      (let* ((_e1525115264_ _stx15250_)
             (_E1525315268_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1525115264_)))
             (_E1525215300_
              (lambda ()
                (if (gx#stx-pair? _e1525115264_)
                    (let ((_e1525415272_ (gx#syntax-e _e1525115264_)))
                      (let ((_hd1525515275_ (##car _e1525415272_))
                            (_tl1525615277_ (##cdr _e1525415272_)))
                        (if (gx#stx-pair? _tl1525615277_)
                            (let ((_e1525715280_ (gx#syntax-e _tl1525615277_)))
                              (let ((_hd1525815283_ (##car _e1525715280_))
                                    (_tl1525915285_ (##cdr _e1525715280_)))
                                (let ((_ann15288_ _hd1525815283_))
                                  (if (gx#stx-pair? _tl1525915285_)
                                      (let ((_e1526015290_
                                             (gx#syntax-e _tl1525915285_)))
                                        (let ((_hd1526115293_
                                               (##car _e1526015290_))
                                              (_tl1526215295_
                                               (##cdr _e1526015290_)))
                                          (let ((_expr15298_ _hd1526115293_))
                                            (if (gx#stx-null? _tl1526215295_)
                                                (if '#t
                                                    (gx#core-compile-top-syntax
                                                     _expr15298_)
                                                    (_E1525315268_))
                                                (_E1525315268_)))))
                                      (_E1525315268_)))))
                            (_E1525315268_))))
                    (_E1525315268_)))))
        (_E1525215300_))))
  (define gx#core-compile-top-import%
    (lambda (_stx15220_)
      (let* ((_e1522115228_ _stx15220_)
             (_E1522315232_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1522115228_)))
             (_E1522215246_
              (lambda ()
                (if (gx#stx-pair? _e1522115228_)
                    (let ((_e1522415236_ (gx#syntax-e _e1522115228_)))
                      (let ((_hd1522515239_ (##car _e1522415236_))
                            (_tl1522615241_ (##cdr _e1522415236_)))
                        (let ((_body15244_ _tl1522615241_))
                          (if '#t
                              (cons '%#import (gx#syntax->list _body15244_))
                              (_E1522315232_)))))
                    (_E1522315232_)))))
        (_E1522215246_))))
  (define gx#core-compile-top-module%
    (lambda (_stx15177_)
      (let* ((_e1517815188_ _stx15177_)
             (_E1518015192_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1517815188_)))
             (_E1517915216_
              (lambda ()
                (if (gx#stx-pair? _e1517815188_)
                    (let ((_e1518115196_ (gx#syntax-e _e1517815188_)))
                      (let ((_hd1518215199_ (##car _e1518115196_))
                            (_tl1518315201_ (##cdr _e1518115196_)))
                        (if (gx#stx-pair? _tl1518315201_)
                            (let ((_e1518415204_ (gx#syntax-e _tl1518315201_)))
                              (let ((_hd1518515207_ (##car _e1518415204_))
                                    (_tl1518615209_ (##cdr _e1518415204_)))
                                (let* ((_hd15212_ _hd1518515207_)
                                       (_body15214_ _tl1518615209_))
                                  (if '#t
                                      (cons* '%#module
                                             (##structure-ref
                                              (gx#syntax-local-e__0 _hd15212_)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _body15214_))
                                      (_E1518015192_)))))
                            (_E1518015192_))))
                    (_E1518015192_)))))
        (_E1517915216_))))
  (define gx#core-compile-top-export%
    (lambda (_stx15147_)
      (let* ((_e1514815155_ _stx15147_)
             (_E1515015159_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1514815155_)))
             (_E1514915173_
              (lambda ()
                (if (gx#stx-pair? _e1514815155_)
                    (let ((_e1515115163_ (gx#syntax-e _e1514815155_)))
                      (let ((_hd1515215166_ (##car _e1515115163_))
                            (_tl1515315168_ (##cdr _e1515115163_)))
                        (let ((_body15171_ _tl1515315168_))
                          (if '#t
                              (cons '%#export (gx#syntax->list _body15171_))
                              (_E1515015159_)))))
                    (_E1515015159_)))))
        (_E1514915173_))))
  (define gx#core-compile-top-provide%
    (lambda (_stx15117_)
      (let* ((_e1511815125_ _stx15117_)
             (_E1512015129_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1511815125_)))
             (_E1511915143_
              (lambda ()
                (if (gx#stx-pair? _e1511815125_)
                    (let ((_e1512115133_ (gx#syntax-e _e1511815125_)))
                      (let ((_hd1512215136_ (##car _e1512115133_))
                            (_tl1512315138_ (##cdr _e1512115133_)))
                        (let ((_body15141_ _tl1512315138_))
                          (if '#t
                              (cons '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body15141_))
                              (_E1512015129_)))))
                    (_E1512015129_)))))
        (_E1511915143_))))
  (define gx#core-compile-top-extern%
    (lambda (_stx15042_)
      (letrec ((_generate15044_
                (lambda (_hd15074_)
                  (let* ((_e1507515085_ _hd15074_)
                         (_E1507715089_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1507515085_)))
                         (_E1507615113_
                          (lambda ()
                            (if (gx#stx-pair? _e1507515085_)
                                (let ((_e1507815093_
                                       (gx#syntax-e _e1507515085_)))
                                  (let ((_hd1507915096_ (##car _e1507815093_))
                                        (_tl1508015098_ (##cdr _e1507815093_)))
                                    (let ((_id15101_ _hd1507915096_))
                                      (if (gx#stx-pair? _tl1508015098_)
                                          (let ((_e1508115103_
                                                 (gx#syntax-e _tl1508015098_)))
                                            (let ((_hd1508215106_
                                                   (##car _e1508115103_))
                                                  (_tl1508315108_
                                                   (##cdr _e1508115103_)))
                                              (let ((_eid15111_
                                                     _hd1508215106_))
                                                (if (gx#stx-null?
                                                     _tl1508315108_)
                                                    (if '#t
                                                        (cons (gx#core-quote-syntax__0
                                                               _id15101_)
                                                              (cons (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _eid15111_)
                            '()))
                (_E1507715089_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1507715089_)))))
                                          (_E1507715089_)))))
                                (_E1507715089_)))))
                    (_E1507615113_)))))
        (let* ((_e1504515052_ _stx15042_)
               (_E1504715056_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1504515052_)))
               (_E1504615070_
                (lambda ()
                  (if (gx#stx-pair? _e1504515052_)
                      (let ((_e1504815060_ (gx#syntax-e _e1504515052_)))
                        (let ((_hd1504915063_ (##car _e1504815060_))
                              (_tl1505015065_ (##cdr _e1504815060_)))
                          (let ((_body15068_ _tl1505015065_))
                            (if '#t
                                (cons '%#extern
                                      (gx#stx-map1
                                       _generate15044_
                                       _body15068_))
                                (_E1504715056_)))))
                      (_E1504715056_)))))
          (_E1504615070_)))))
  (define gx#core-compile-top-define-values%
    (lambda (_stx14988_)
      (let* ((_e1498915002_ _stx14988_)
             (_E1499115006_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1498915002_)))
             (_E1499015038_
              (lambda ()
                (if (gx#stx-pair? _e1498915002_)
                    (let ((_e1499215010_ (gx#syntax-e _e1498915002_)))
                      (let ((_hd1499315013_ (##car _e1499215010_))
                            (_tl1499415015_ (##cdr _e1499215010_)))
                        (if (gx#stx-pair? _tl1499415015_)
                            (let ((_e1499515018_ (gx#syntax-e _tl1499415015_)))
                              (let ((_hd1499615021_ (##car _e1499515018_))
                                    (_tl1499715023_ (##cdr _e1499515018_)))
                                (let ((_hd15026_ _hd1499615021_))
                                  (if (gx#stx-pair? _tl1499715023_)
                                      (let ((_e1499815028_
                                             (gx#syntax-e _tl1499715023_)))
                                        (let ((_hd1499915031_
                                               (##car _e1499815028_))
                                              (_tl1500015033_
                                               (##cdr _e1499815028_)))
                                          (let ((_expr15036_ _hd1499915031_))
                                            (if (gx#stx-null? _tl1500015033_)
                                                (if '#t
                                                    (cons '%#define-values
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-compile-top-runtime-bind
                         _hd15026_)
                        (cons (gx#core-compile-top-syntax _expr15036_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1499115006_))
                                                (_E1499115006_)))))
                                      (_E1499115006_)))))
                            (_E1499115006_))))
                    (_E1499115006_)))))
        (_E1499015038_))))
  (define gx#core-compile-top-define-syntax%
    (lambda (_stx14933_)
      (let* ((_e1493414947_ _stx14933_)
             (_E1493614951_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1493414947_)))
             (_E1493514984_
              (lambda ()
                (if (gx#stx-pair? _e1493414947_)
                    (let ((_e1493714955_ (gx#syntax-e _e1493414947_)))
                      (let ((_hd1493814958_ (##car _e1493714955_))
                            (_tl1493914960_ (##cdr _e1493714955_)))
                        (if (gx#stx-pair? _tl1493914960_)
                            (let ((_e1494014963_ (gx#syntax-e _tl1493914960_)))
                              (let ((_hd1494114966_ (##car _e1494014963_))
                                    (_tl1494214968_ (##cdr _e1494014963_)))
                                (let ((_hd14971_ _hd1494114966_))
                                  (if (gx#stx-pair? _tl1494214968_)
                                      (let ((_e1494314973_
                                             (gx#syntax-e _tl1494214968_)))
                                        (let ((_hd1494414976_
                                               (##car _e1494314973_))
                                              (_tl1494514978_
                                               (##cdr _e1494314973_)))
                                          (let ((_expr14981_ _hd1494414976_))
                                            (if (gx#stx-null? _tl1494514978_)
                                                (if '#t
                                                    (cons '%#define-syntax
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd14971_)
                        (cons (call-with-parameters
                               (lambda ()
                                 (gx#core-compile-top-syntax _expr14981_))
                               gx#current-expander-phi
                               (fx+ (gx#current-expander-phi) '1))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1493614951_))
                                                (_E1493614951_)))))
                                      (_E1493614951_)))))
                            (_E1493614951_))))
                    (_E1493614951_)))))
        (_E1493514984_))))
  (define gx#core-compile-top-define-alias%
    (lambda (_stx14879_)
      (let* ((_e1488014893_ _stx14879_)
             (_E1488214897_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1488014893_)))
             (_E1488114929_
              (lambda ()
                (if (gx#stx-pair? _e1488014893_)
                    (let ((_e1488314901_ (gx#syntax-e _e1488014893_)))
                      (let ((_hd1488414904_ (##car _e1488314901_))
                            (_tl1488514906_ (##cdr _e1488314901_)))
                        (if (gx#stx-pair? _tl1488514906_)
                            (let ((_e1488614909_ (gx#syntax-e _tl1488514906_)))
                              (let ((_hd1488714912_ (##car _e1488614909_))
                                    (_tl1488814914_ (##cdr _e1488614909_)))
                                (let ((_hd14917_ _hd1488714912_))
                                  (if (gx#stx-pair? _tl1488814914_)
                                      (let ((_e1488914919_
                                             (gx#syntax-e _tl1488814914_)))
                                        (let ((_hd1489014922_
                                               (##car _e1488914919_))
                                              (_tl1489114924_
                                               (##cdr _e1488914919_)))
                                          (let ((_alias-id14927_
                                                 _hd1489014922_))
                                            (if (gx#stx-null? _tl1489114924_)
                                                (if '#t
                                                    (cons '%#define-alias
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd14917_)
                        (cons (gx#core-quote-syntax__0 _alias-id14927_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1488214897_))
                                                (_E1488214897_)))))
                                      (_E1488214897_)))))
                            (_E1488214897_))))
                    (_E1488214897_)))))
        (_E1488114929_))))
  (define gx#core-compile-top-define-runtime%
    (lambda (_stx14825_)
      (let* ((_e1482614839_ _stx14825_)
             (_E1482814843_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1482614839_)))
             (_E1482714875_
              (lambda ()
                (if (gx#stx-pair? _e1482614839_)
                    (let ((_e1482914847_ (gx#syntax-e _e1482614839_)))
                      (let ((_hd1483014850_ (##car _e1482914847_))
                            (_tl1483114852_ (##cdr _e1482914847_)))
                        (if (gx#stx-pair? _tl1483114852_)
                            (let ((_e1483214855_ (gx#syntax-e _tl1483114852_)))
                              (let ((_hd1483314858_ (##car _e1483214855_))
                                    (_tl1483414860_ (##cdr _e1483214855_)))
                                (let ((_id14863_ _hd1483314858_))
                                  (if (gx#stx-pair? _tl1483414860_)
                                      (let ((_e1483514865_
                                             (gx#syntax-e _tl1483414860_)))
                                        (let ((_hd1483614868_
                                               (##car _e1483514865_))
                                              (_tl1483714870_
                                               (##cdr _e1483514865_)))
                                          (let ((_binding-id14873_
                                                 _hd1483614868_))
                                            (if (gx#stx-null? _tl1483714870_)
                                                (if '#t
                                                    (cons '%#define-runtime
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14863_)
                        (cons (gx#core-quote-syntax__0 _binding-id14873_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1482814843_))
                                                (_E1482814843_)))))
                                      (_E1482814843_)))))
                            (_E1482814843_))))
                    (_E1482814843_)))))
        (_E1482714875_))))
  (define gx#core-compile-top-declare%
    (lambda (_stx14795_)
      (let* ((_e1479614803_ _stx14795_)
             (_E1479814807_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1479614803_)))
             (_E1479714821_
              (lambda ()
                (if (gx#stx-pair? _e1479614803_)
                    (let ((_e1479914811_ (gx#syntax-e _e1479614803_)))
                      (let ((_hd1480014814_ (##car _e1479914811_))
                            (_tl1480114816_ (##cdr _e1479914811_)))
                        (let ((_decls14819_ _tl1480114816_))
                          (if '#t
                              (cons '%#declare _decls14819_)
                              (_E1479814807_)))))
                    (_E1479814807_)))))
        (_E1479714821_))))
  (define gx#core-compile-top-lambda%
    (lambda (_stx14765_)
      (let* ((_e1476614773_ _stx14765_)
             (_E1476814777_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1476614773_)))
             (_E1476714791_
              (lambda ()
                (if (gx#stx-pair? _e1476614773_)
                    (let ((_e1476914781_ (gx#syntax-e _e1476614773_)))
                      (let ((_hd1477014784_ (##car _e1476914781_))
                            (_tl1477114786_ (##cdr _e1476914781_)))
                        (let ((_clause14789_ _tl1477114786_))
                          (if '#t
                              (cons '%#lambda
                                    (gx#core-compile-top-lambda-clause
                                     _clause14789_))
                              (_E1476814777_)))))
                    (_E1476814777_)))))
        (_E1476714791_))))
  (define gx#core-compile-top-lambda-clause
    (lambda (_stx14722_)
      (let* ((_e1472314733_ _stx14722_)
             (_E1472514737_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1472314733_)))
             (_E1472414761_
              (lambda ()
                (if (gx#stx-pair? _e1472314733_)
                    (let ((_e1472614741_ (gx#syntax-e _e1472314733_)))
                      (let ((_hd1472714744_ (##car _e1472614741_))
                            (_tl1472814746_ (##cdr _e1472614741_)))
                        (let ((_hd14749_ _hd1472714744_))
                          (if (gx#stx-pair? _tl1472814746_)
                              (let ((_e1472914751_
                                     (gx#syntax-e _tl1472814746_)))
                                (let ((_hd1473014754_ (##car _e1472914751_))
                                      (_tl1473114756_ (##cdr _e1472914751_)))
                                  (let ((_body14759_ _hd1473014754_))
                                    (if (gx#stx-null? _tl1473114756_)
                                        (if '#t
                                            (cons (gx#stx-map1
                                                   gx#core-compile-top-runtime-bind
                                                   _hd14749_)
                                                  (cons (gx#core-compile-top-syntax
                                                         _body14759_)
                                                        '()))
                                            (_E1472514737_))
                                        (_E1472514737_)))))
                              (_E1472514737_)))))
                    (_E1472514737_)))))
        (_E1472414761_))))
  (define gx#core-compile-top-case-lambda%
    (lambda (_stx14692_)
      (let* ((_e1469314700_ _stx14692_)
             (_E1469514704_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1469314700_)))
             (_E1469414718_
              (lambda ()
                (if (gx#stx-pair? _e1469314700_)
                    (let ((_e1469614708_ (gx#syntax-e _e1469314700_)))
                      (let ((_hd1469714711_ (##car _e1469614708_))
                            (_tl1469814713_ (##cdr _e1469614708_)))
                        (let ((_clauses14716_ _tl1469814713_))
                          (if '#t
                              (cons '%#case-lambda
                                    (gx#stx-map1
                                     gx#core-compile-top-lambda-clause
                                     _clauses14716_))
                              (_E1469514704_)))))
                    (_E1469514704_)))))
        (_E1469414718_))))
  (begin
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx14627_ _form14628_)
        (let* ((_e1462914642_ _stx14627_)
               (_E1463114646_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1462914642_)))
               (_E1463014678_
                (lambda ()
                  (if (gx#stx-pair? _e1462914642_)
                      (let ((_e1463214650_ (gx#syntax-e _e1462914642_)))
                        (let ((_hd1463314653_ (##car _e1463214650_))
                              (_tl1463414655_ (##cdr _e1463214650_)))
                          (if (gx#stx-pair? _tl1463414655_)
                              (let ((_e1463514658_
                                     (gx#syntax-e _tl1463414655_)))
                                (let ((_hd1463614661_ (##car _e1463514658_))
                                      (_tl1463714663_ (##cdr _e1463514658_)))
                                  (let ((_hd14666_ _hd1463614661_))
                                    (if (gx#stx-pair? _tl1463714663_)
                                        (let ((_e1463814668_
                                               (gx#syntax-e _tl1463714663_)))
                                          (let ((_hd1463914671_
                                                 (##car _e1463814668_))
                                                (_tl1464014673_
                                                 (##cdr _e1463814668_)))
                                            (let ((_body14676_ _hd1463914671_))
                                              (if (gx#stx-null? _tl1464014673_)
                                                  (if '#t
                                                      (cons _form14628_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd14666_)
                          (cons (gx#core-compile-top-syntax _body14676_) '())))
              (_E1463114646_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1463114646_)))))
                                        (_E1463114646_)))))
                              (_E1463114646_))))
                      (_E1463114646_)))))
          (_E1463014678_))))
    (begin
      (define gx#core-compile-top-let-values%__0
        (lambda (_stx14685_)
          (let ((_form14687_ '%#let-values))
            (gx#core-compile-top-let-values%__% _stx14685_ _form14687_))))
      (define gx#core-compile-top-let-values%
        (lambda _g15591_
          (let ((_g15590_ (length _g15591_)))
            (cond ((fx= _g15590_ 1)
                   (apply gx#core-compile-top-let-values%__0 _g15591_))
                  ((fx= _g15590_ 2)
                   (apply gx#core-compile-top-let-values%__% _g15591_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g15591_))))))))
  (define gx#core-compile-top-letrec-values%
    (lambda (_stx14624_)
      (gx#core-compile-top-let-values%__% _stx14624_ '%#letrec-values)))
  (define gx#core-compile-top-letrec*-values%
    (lambda (_stx14622_)
      (gx#core-compile-top-let-values%__% _stx14622_ '%#letrec*-values)))
  (define gx#core-compile-top-quote%
    (lambda (_stx14581_)
      (let* ((_e1458214592_ _stx14581_)
             (_E1458414596_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1458214592_)))
             (_E1458314618_
              (lambda ()
                (if (gx#stx-pair? _e1458214592_)
                    (let ((_e1458514600_ (gx#syntax-e _e1458214592_)))
                      (let ((_hd1458614603_ (##car _e1458514600_))
                            (_tl1458714605_ (##cdr _e1458514600_)))
                        (if (gx#stx-pair? _tl1458714605_)
                            (let ((_e1458814608_ (gx#syntax-e _tl1458714605_)))
                              (let ((_hd1458914611_ (##car _e1458814608_))
                                    (_tl1459014613_ (##cdr _e1458814608_)))
                                (let ((_e14616_ _hd1458914611_))
                                  (if (gx#stx-null? _tl1459014613_)
                                      (if '#t
                                          (cons '%#quote
                                                (cons (gx#syntax->datum
                                                       _e14616_)
                                                      '()))
                                          (_E1458414596_))
                                      (_E1458414596_)))))
                            (_E1458414596_))))
                    (_E1458414596_)))))
        (_E1458314618_))))
  (define gx#core-compile-top-quote-syntax%
    (lambda (_stx14540_)
      (let* ((_e1454114551_ _stx14540_)
             (_E1454314555_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1454114551_)))
             (_E1454214577_
              (lambda ()
                (if (gx#stx-pair? _e1454114551_)
                    (let ((_e1454414559_ (gx#syntax-e _e1454114551_)))
                      (let ((_hd1454514562_ (##car _e1454414559_))
                            (_tl1454614564_ (##cdr _e1454414559_)))
                        (if (gx#stx-pair? _tl1454614564_)
                            (let ((_e1454714567_ (gx#syntax-e _tl1454614564_)))
                              (let ((_hd1454814570_ (##car _e1454714567_))
                                    (_tl1454914572_ (##cdr _e1454714567_)))
                                (let ((_e14575_ _hd1454814570_))
                                  (if (gx#stx-null? _tl1454914572_)
                                      (if '#t
                                          (cons '%#quote-syntax
                                                (cons (gx#core-quote-syntax__0
                                                       _e14575_)
                                                      '()))
                                          (_E1454314555_))
                                      (_E1454314555_)))))
                            (_E1454314555_))))
                    (_E1454314555_)))))
        (_E1454214577_))))
  (define gx#core-compile-top-call%
    (lambda (_stx14497_)
      (let* ((_e1449814508_ _stx14497_)
             (_E1450014512_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1449814508_)))
             (_E1449914536_
              (lambda ()
                (if (gx#stx-pair? _e1449814508_)
                    (let ((_e1450114516_ (gx#syntax-e _e1449814508_)))
                      (let ((_hd1450214519_ (##car _e1450114516_))
                            (_tl1450314521_ (##cdr _e1450114516_)))
                        (if (gx#stx-pair? _tl1450314521_)
                            (let ((_e1450414524_ (gx#syntax-e _tl1450314521_)))
                              (let ((_hd1450514527_ (##car _e1450414524_))
                                    (_tl1450614529_ (##cdr _e1450414524_)))
                                (let* ((_rator14532_ _hd1450514527_)
                                       (_args14534_ _tl1450614529_))
                                  (if '#t
                                      (cons* '%#call
                                             (gx#core-compile-top-syntax
                                              _rator14532_)
                                             (gx#stx-map1
                                              gx#core-compile-top-syntax
                                              _args14534_))
                                      (_E1450014512_)))))
                            (_E1450014512_))))
                    (_E1450014512_)))))
        (_E1449914536_))))
  (define gx#core-compile-top-if%
    (lambda (_stx14430_)
      (let* ((_e1443114447_ _stx14430_)
             (_E1443314451_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1443114447_)))
             (_E1443214493_
              (lambda ()
                (if (gx#stx-pair? _e1443114447_)
                    (let ((_e1443414455_ (gx#syntax-e _e1443114447_)))
                      (let ((_hd1443514458_ (##car _e1443414455_))
                            (_tl1443614460_ (##cdr _e1443414455_)))
                        (if (gx#stx-pair? _tl1443614460_)
                            (let ((_e1443714463_ (gx#syntax-e _tl1443614460_)))
                              (let ((_hd1443814466_ (##car _e1443714463_))
                                    (_tl1443914468_ (##cdr _e1443714463_)))
                                (let ((_test14471_ _hd1443814466_))
                                  (if (gx#stx-pair? _tl1443914468_)
                                      (let ((_e1444014473_
                                             (gx#syntax-e _tl1443914468_)))
                                        (let ((_hd1444114476_
                                               (##car _e1444014473_))
                                              (_tl1444214478_
                                               (##cdr _e1444014473_)))
                                          (let ((_K14481_ _hd1444114476_))
                                            (if (gx#stx-pair? _tl1444214478_)
                                                (let ((_e1444314483_
                                                       (gx#syntax-e
                                                        _tl1444214478_)))
                                                  (let ((_hd1444414486_
                                                         (##car _e1444314483_))
                                                        (_tl1444514488_
                                                         (##cdr _e1444314483_)))
                                                    (let ((_E14491_
                                                           _hd1444414486_))
                                                      (if (gx#stx-null?
                                                           _tl1444514488_)
                                                          (if '#t
                                                              (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#core-compile-top-syntax _test14471_)
                                  (cons (gx#core-compile-top-syntax _K14481_)
                                        (cons (gx#core-compile-top-syntax
                                               _E14491_)
                                              '()))))
                      (_E1443314451_))
                  (_E1443314451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1443314451_)))))
                                      (_E1443314451_)))))
                            (_E1443314451_))))
                    (_E1443314451_)))))
        (_E1443214493_))))
  (define gx#core-compile-top-ref%
    (lambda (_stx14389_)
      (let* ((_e1439014400_ _stx14389_)
             (_E1439214404_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1439014400_)))
             (_E1439114426_
              (lambda ()
                (if (gx#stx-pair? _e1439014400_)
                    (let ((_e1439314408_ (gx#syntax-e _e1439014400_)))
                      (let ((_hd1439414411_ (##car _e1439314408_))
                            (_tl1439514413_ (##cdr _e1439314408_)))
                        (if (gx#stx-pair? _tl1439514413_)
                            (let ((_e1439614416_ (gx#syntax-e _tl1439514413_)))
                              (let ((_hd1439714419_ (##car _e1439614416_))
                                    (_tl1439814421_ (##cdr _e1439614416_)))
                                (let ((_id14424_ _hd1439714419_))
                                  (if (gx#stx-null? _tl1439814421_)
                                      (if (gx#identifier? _id14424_)
                                          (cons '%#ref
                                                (cons (gx#core-compile-top-runtime-ref
                                                       _id14424_)
                                                      '()))
                                          (_E1439214404_))
                                      (_E1439214404_)))))
                            (_E1439214404_))))
                    (_E1439214404_)))))
        (_E1439114426_))))
  (define gx#core-compile-top-setq%
    (lambda (_stx14335_)
      (let* ((_e1433614349_ _stx14335_)
             (_E1433814353_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1433614349_)))
             (_E1433714385_
              (lambda ()
                (if (gx#stx-pair? _e1433614349_)
                    (let ((_e1433914357_ (gx#syntax-e _e1433614349_)))
                      (let ((_hd1434014360_ (##car _e1433914357_))
                            (_tl1434114362_ (##cdr _e1433914357_)))
                        (if (gx#stx-pair? _tl1434114362_)
                            (let ((_e1434214365_ (gx#syntax-e _tl1434114362_)))
                              (let ((_hd1434314368_ (##car _e1434214365_))
                                    (_tl1434414370_ (##cdr _e1434214365_)))
                                (let ((_id14373_ _hd1434314368_))
                                  (if (gx#stx-pair? _tl1434414370_)
                                      (let ((_e1434514375_
                                             (gx#syntax-e _tl1434414370_)))
                                        (let ((_hd1434614378_
                                               (##car _e1434514375_))
                                              (_tl1434714380_
                                               (##cdr _e1434514375_)))
                                          (let ((_expr14383_ _hd1434614378_))
                                            (if (gx#stx-null? _tl1434714380_)
                                                (if (gx#identifier? _id14373_)
                                                    (cons '%#set!
                                                          (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id14373_)
                        (cons (gx#core-compile-top-syntax _expr14383_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1433814353_))
                                                (_E1433814353_)))))
                                      (_E1433814353_)))))
                            (_E1433814353_))))
                    (_E1433814353_)))))
        (_E1433714385_))))
  (define gx#core-compile-top-runtime-ref
    (lambda (_id14330_)
      (let ((_$e14332_ (gx#resolve-identifier__0 _id14330_)))
        (if _$e14332_
            (##structure-ref _$e14332_ '1 gx#binding::t '#f)
            _id14330_))))
  (define gx#core-compile-top-runtime-bind
    (lambda (_hd14328_)
      (if (gx#identifier? _hd14328_)
          (gx#core-compile-top-runtime-ref _hd14328_)
          '#f))))
