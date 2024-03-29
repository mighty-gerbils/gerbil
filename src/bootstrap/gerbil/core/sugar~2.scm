(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g23227_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23228_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23229_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23306_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23307_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23308_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23327_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23328_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23330_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23331_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23333_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23334_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23335_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23336_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23338_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g23339_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_stx7643_)
        (letrec ((_simple-lambda?7646_
                  (lambda (_hd11031_)
                    (gx#stx-andmap gx#identifier? _hd11031_)))
                 (_opt-lambda?7648_
                  (lambda (_hd10883_)
                    (let _lp10886_ ((_rest10889_ _hd10883_) (_opt?10891_ '#f))
                      (let* ((___stx2139421395_ _rest10889_)
                             (_g1089410906_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2139421395_))))
                        (let ((___kont2139721398_
                               (lambda (_L10938_ _L10940_)
                                 (let* ((___stx2137021371_ _L10940_)
                                        (_g1095610970_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2137021371_))))
                                   (let ((___kont2137321374_
                                          (lambda (_L11008_)
                                            (_lp10886_ _L10938_ '#t)))
                                         (___kont2137521376_
                                          (lambda ()
                                            (if (gx#identifier? _L10940_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?10891_))
                                                    (_lp10886_ _L10938_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match2139121392_
                                            (lambda (_e1096110988_
                                                     _hd1096010992_
                                                     _tl1095910995_
                                                     _e1096410998_
                                                     _hd1096311002_
                                                     _tl1096211005_)
                                              (let ((_L11008_ _hd1096010992_))
                                                (if (gx#identifier? _L11008_)
                                                    (___kont2137321374_
                                                     _L11008_)
                                                    (___kont2137521376_))))))
                                       (if (gx#stx-pair? ___stx2137021371_)
                                           (let ((_e1096110988_
                                                  (gx#syntax-e
                                                   ___stx2137021371_)))
                                             (let ((_tl1095910995_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1096110988_)))
                                                   (_hd1096010992_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1096110988_))))
                                               (if (gx#stx-pair?
                                                    _tl1095910995_)
                                                   (let ((_e1096410998_
                                                          (gx#syntax-e
                                                           _tl1095910995_)))
                                                     (let ((_tl1096211005_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1096410998_)))
                                                           (_hd1096311002_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1096410998_))))
                                                       (if (gx#stx-null?
                                                            _tl1096211005_)
                                                           (___match2139121392_
                                                            _e1096110988_
                                                            _hd1096010992_
                                                            _tl1095910995_
                                                            _e1096410998_
                                                            _hd1096311002_
                                                            _tl1096211005_)
                                                           (___kont2137521376_))))
                                                   (___kont2137521376_))))
                                           (___kont2137521376_)))))))
                              (___kont2139921400_
                               (lambda ()
                                 (if _opt?10891_
                                     (let ((_$e10917_
                                            (gx#stx-null? _rest10889_)))
                                       (if _$e10917_
                                           _$e10917_
                                           (gx#identifier? _rest10889_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx2139421395_)
                              (let ((_e1090010928_
                                     (gx#syntax-e ___stx2139421395_)))
                                (let ((_tl1089810935_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1090010928_)))
                                      (_hd1089910932_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1090010928_))))
                                  (___kont2139721398_
                                   _tl1089810935_
                                   _hd1089910932_)))
                              (___kont2139921400_)))))))
                 (_opt-lambda-split7649_
                  (lambda (_hd10735_)
                    (let _lp10738_ ((_rest10741_ _hd10735_)
                                    (_pre10743_ '())
                                    (_opt10744_ '()))
                      (let* ((___stx2143421435_ _rest10741_)
                             (_g1074710759_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2143421435_))))
                        (let ((___kont2143721438_
                               (lambda (_L10787_ _L10789_)
                                 (let* ((___stx2141021411_ _L10789_)
                                        (_g1080510820_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2141021411_))))
                                   (let ((___kont2141321414_
                                          (lambda (_L10858_ _L10860_)
                                            (_lp10738_
                                             _L10787_
                                             _pre10743_
                                             (cons (cons _L10860_ _L10858_)
                                                   _opt10744_))))
                                         (___kont2141521416_
                                          (lambda ()
                                            (_lp10738_
                                             _L10787_
                                             (cons _L10789_ _pre10743_)
                                             _opt10744_))))
                                     (if (gx#stx-pair? ___stx2141021411_)
                                         (let ((_e1081110838_
                                                (gx#syntax-e
                                                 ___stx2141021411_)))
                                           (let ((_tl1080910845_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1081110838_)))
                                                 (_hd1081010842_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1081110838_))))
                                             (if (gx#stx-pair? _tl1080910845_)
                                                 (let ((_e1081410848_
                                                        (gx#syntax-e
                                                         _tl1080910845_)))
                                                   (let ((_tl1081210855_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1081410848_)))
                                                         (_hd1081310852_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1081410848_))))
                                                     (if (gx#stx-null?
                                                          _tl1081210855_)
                                                         (___kont2141321414_
                                                          _hd1081310852_
                                                          _hd1081010842_)
                                                         (___kont2141521416_))))
                                                 (___kont2141521416_))))
                                         (___kont2141521416_))))))
                              (___kont2143921440_
                               (lambda ()
                                 (values (reverse _pre10743_)
                                         (reverse _opt10744_)
                                         _rest10741_))))
                          (if (gx#stx-pair? ___stx2143421435_)
                              (let ((_e1075310777_
                                     (gx#syntax-e ___stx2143421435_)))
                                (let ((_tl1075110784_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1075310777_)))
                                      (_hd1075210781_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1075310777_))))
                                  (___kont2143721438_
                                   _tl1075110784_
                                   _hd1075210781_)))
                              (___kont2143921440_)))))))
                 (_kw-lambda?7650_
                  (lambda (_hd10403_)
                    (let _lp10406_ ((_rest10409_ _hd10403_)
                                    (_opt?10411_ '#f)
                                    (_key?10412_ '#f))
                      (let* ((___stx2149821499_ _rest10409_)
                             (_g1041710447_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2149821499_))))
                        (let ((___kont2150121502_
                               (lambda (_L10642_ _L10644_ _L10645_)
                                 (let* ((___stx2147421475_ _L10644_)
                                        (_g1066010674_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2147421475_))))
                                   (let ((___kont2147721478_
                                          (lambda (_L10712_)
                                            (if (gx#identifier? _L10712_)
                                                (_lp10406_
                                                 _L10642_
                                                 _opt?10411_
                                                 '#t)
                                                '#f)))
                                         (___kont2147921480_
                                          (lambda ()
                                            (if (gx#identifier? _L10644_)
                                                (_lp10406_
                                                 _L10642_
                                                 _opt?10411_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx2147421475_)
                                         (let ((_e1066510692_
                                                (gx#syntax-e
                                                 ___stx2147421475_)))
                                           (let ((_tl1066310699_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1066510692_)))
                                                 (_hd1066410696_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1066510692_))))
                                             (if (gx#stx-pair? _tl1066310699_)
                                                 (let ((_e1066810702_
                                                        (gx#syntax-e
                                                         _tl1066310699_)))
                                                   (let ((_tl1066610709_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1066810702_)))
                                                         (_hd1066710706_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1066810702_))))
                                                     (if (gx#stx-null?
                                                          _tl1066610709_)
                                                         (___kont2147721478_
                                                          _hd1066410696_)
                                                         (___kont2147921480_))))
                                                 (___kont2147921480_))))
                                         (___kont2147921480_))))))
                              (___kont2150321504_
                               (lambda (_L10599_ _L10601_)
                                 (if (gx#identifier? _L10601_)
                                     (_lp10406_ _L10599_ _opt?10411_ '#t)
                                     '#f)))
                              (___kont2150521506_
                               (lambda (_L10479_ _L10481_)
                                 (let* ((___stx2145021451_ _L10481_)
                                        (_g1049710511_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2145021451_))))
                                   (let ((___kont2145321454_
                                          (lambda (_L10549_)
                                            (if (gx#identifier? _L10549_)
                                                (_lp10406_
                                                 _L10479_
                                                 '#t
                                                 _key?10412_)
                                                '#f)))
                                         (___kont2145521456_
                                          (lambda ()
                                            (if (gx#identifier? _L10481_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?10411_))
                                                    (_lp10406_
                                                     _L10479_
                                                     '#f
                                                     _key?10412_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx2145021451_)
                                         (let ((_e1050210529_
                                                (gx#syntax-e
                                                 ___stx2145021451_)))
                                           (let ((_tl1050010536_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1050210529_)))
                                                 (_hd1050110533_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1050210529_))))
                                             (if (gx#stx-pair? _tl1050010536_)
                                                 (let ((_e1050510539_
                                                        (gx#syntax-e
                                                         _tl1050010536_)))
                                                   (let ((_tl1050310546_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1050510539_)))
                                                         (_hd1050410543_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1050510539_))))
                                                     (if (gx#stx-null?
                                                          _tl1050310546_)
                                                         (___kont2145321454_
                                                          _hd1050110533_)
                                                         (___kont2145521456_))))
                                                 (___kont2145521456_))))
                                         (___kont2145521456_))))))
                              (___kont2150721508_
                               (lambda ()
                                 (if _key?10412_
                                     (let ((_$e10458_
                                            (gx#stx-null? _rest10409_)))
                                       (if _$e10458_
                                           _$e10458_
                                           (gx#identifier? _rest10409_)))
                                     '#f))))
                          (let ((___match2152121522_
                                 (lambda (_e1042410622_
                                          _hd1042310626_
                                          _tl1042210629_
                                          _e1042710632_
                                          _hd1042610636_
                                          _tl1042510639_)
                                   (let ((_L10642_ _tl1042510639_)
                                         (_L10644_ _hd1042610636_)
                                         (_L10645_ _hd1042310626_))
                                     (if (gx#stx-keyword? _L10645_)
                                         (___kont2150121502_
                                          _L10642_
                                          _L10644_
                                          _L10645_)
                                         (if (gx#stx-datum? _hd1042310626_)
                                             (let ((_e1043310585_
                                                    (gx#stx-e _hd1042310626_)))
                                               (if (equal? _e1043310585_
                                                           '#!key)
                                                   (___kont2150321504_
                                                    _tl1042510639_
                                                    _hd1042610636_)
                                                   (___kont2150521506_
                                                    _tl1042210629_
                                                    _hd1042310626_)))
                                             (___kont2150521506_
                                              _tl1042210629_
                                              _hd1042310626_)))))))
                            (if (gx#stx-pair? ___stx2149821499_)
                                (let ((_e1042410622_
                                       (gx#syntax-e ___stx2149821499_)))
                                  (let ((_tl1042210629_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1042410622_)))
                                        (_hd1042310626_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1042410622_))))
                                    (if (gx#stx-pair? _tl1042210629_)
                                        (let ((_e1042710632_
                                               (gx#syntax-e _tl1042210629_)))
                                          (let ((_tl1042510639_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1042710632_)))
                                                (_hd1042610636_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1042710632_))))
                                            (___match2152121522_
                                             _e1042410622_
                                             _hd1042310626_
                                             _tl1042210629_
                                             _e1042710632_
                                             _hd1042610636_
                                             _tl1042510639_)))
                                        (if (gx#stx-datum? _hd1042310626_)
                                            (let ((_e1043310585_
                                                   (gx#stx-e _hd1042310626_)))
                                              (___kont2150521506_
                                               _tl1042210629_
                                               _hd1042310626_))
                                            (___kont2150521506_
                                             _tl1042210629_
                                             _hd1042310626_)))))
                                (___kont2150721508_))))))))
                 (_kw-lambda-split7651_
                  (lambda (_hd10136_)
                    (let _lp10139_ ((_rest10142_ _hd10136_)
                                    (_kwvar10144_ '#f)
                                    (_kwargs10145_ '())
                                    (_args10146_ '()))
                      (let* ((___stx2157221573_ _rest10142_)
                             (_g1015110181_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2157221573_))))
                        (let ((___kont2157521576_
                               (lambda (_L10300_ _L10302_ _L10303_)
                                 (let ((_key10317_ (gx#stx-e _L10303_)))
                                   (if (let ((__tmp23156
                                              (lambda (_kwarg10320_)
                                                (eq? _key10317_
                                                     (car _kwarg10320_)))))
                                         (declare (not safe))
                                         (__find __tmp23156 _kwargs10145_))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _stx7643_
                                        _hd10136_
                                        _key10317_)
                                       (let* ((___stx2154821549_ _L10302_)
                                              (_g1032410339_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx2154821549_))))
                                         (let ((___kont2155121552_
                                                (lambda (_L10377_ _L10379_)
                                                  (_lp10139_
                                                   _L10300_
                                                   _kwvar10144_
                                                   (cons (list _key10317_
                                                               _L10379_
                                                               _L10377_)
                                                         _kwargs10145_)
                                                   _args10146_)))
                                               (___kont2155321554_
                                                (lambda ()
                                                  (_lp10139_
                                                   _L10300_
                                                   _kwvar10144_
                                                   (cons (list _key10317_
                                                               _L10302_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _L10303_ '()))))
                 _kwargs10145_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _args10146_))))
                                           (if (gx#stx-pair? ___stx2154821549_)
                                               (let ((_e1033010357_
                                                      (gx#syntax-e
                                                       ___stx2154821549_)))
                                                 (let ((_tl1032810364_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1033010357_)))
                                                       (_hd1032910361_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1033010357_))))
                                                   (if (gx#stx-pair?
                                                        _tl1032810364_)
                                                       (let ((_e1033310367_
                                                              (gx#syntax-e
                                                               _tl1032810364_)))
                                                         (let ((_tl1033110374_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e1033310367_)))
                       (_hd1033210371_
                        (let () (declare (not safe)) (##car _e1033310367_))))
                   (if (gx#stx-null? _tl1033110374_)
                       (___kont2155121552_ _hd1033210371_ _hd1032910361_)
                       (___kont2155321554_))))
               (___kont2155321554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2155321554_))))))))
                              (___kont2157721578_
                               (lambda (_L10257_ _L10259_)
                                 (if _kwvar10144_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _stx7643_
                                      _hd10136_
                                      _L10259_)
                                     (_lp10139_
                                      _L10257_
                                      _L10259_
                                      _kwargs10145_
                                      _args10146_))))
                              (___kont2157921580_
                               (lambda (_L10209_ _L10211_)
                                 (_lp10139_
                                  _L10209_
                                  _kwvar10144_
                                  _kwargs10145_
                                  (cons _L10211_ _args10146_))))
                              (___kont2158121582_
                               (lambda ()
                                 (values _kwvar10144_
                                         (reverse _kwargs10145_)
                                         (let ()
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            _rest10142_
                                            _args10146_))))))
                          (let ((___match2159521596_
                                 (lambda (_e1015810280_
                                          _hd1015710284_
                                          _tl1015610287_
                                          _e1016110290_
                                          _hd1016010294_
                                          _tl1015910297_)
                                   (let ((_L10300_ _tl1015910297_)
                                         (_L10302_ _hd1016010294_)
                                         (_L10303_ _hd1015710284_))
                                     (if (gx#stx-keyword? _L10303_)
                                         (___kont2157521576_
                                          _L10300_
                                          _L10302_
                                          _L10303_)
                                         (if (gx#stx-datum? _hd1015710284_)
                                             (let ((_e1016710243_
                                                    (gx#stx-e _hd1015710284_)))
                                               (if (equal? _e1016710243_
                                                           '#!key)
                                                   (___kont2157721578_
                                                    _tl1015910297_
                                                    _hd1016010294_)
                                                   (___kont2157921580_
                                                    _tl1015610287_
                                                    _hd1015710284_)))
                                             (___kont2157921580_
                                              _tl1015610287_
                                              _hd1015710284_)))))))
                            (if (gx#stx-pair? ___stx2157221573_)
                                (let ((_e1015810280_
                                       (gx#syntax-e ___stx2157221573_)))
                                  (let ((_tl1015610287_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1015810280_)))
                                        (_hd1015710284_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1015810280_))))
                                    (if (gx#stx-pair? _tl1015610287_)
                                        (let ((_e1016110290_
                                               (gx#syntax-e _tl1015610287_)))
                                          (let ((_tl1015910297_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1016110290_)))
                                                (_hd1016010294_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1016110290_))))
                                            (___match2159521596_
                                             _e1015810280_
                                             _hd1015710284_
                                             _tl1015610287_
                                             _e1016110290_
                                             _hd1016010294_
                                             _tl1015910297_)))
                                        (if (gx#stx-datum? _hd1015710284_)
                                            (let ((_e1016710243_
                                                   (gx#stx-e _hd1015710284_)))
                                              (___kont2157921580_
                                               _tl1015610287_
                                               _hd1015710284_))
                                            (___kont2157921580_
                                             _tl1015610287_
                                             _hd1015710284_)))))
                                (___kont2158121582_))))))))
                 (_check-duplicate-bindings7652_
                  (lambda (_hd9841_)
                    (let _lp9844_ ((_rest9847_ _hd9841_) (_ids9849_ '()))
                      (let* ((___stx2164621647_ _rest9847_)
                             (_g98529864_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2164621647_))))
                        (let ((___kont2164921650_
                               (lambda (_L9892_ _L9894_)
                                 (if (gx#identifier? _L9894_)
                                     (_lp9844_
                                      _L9892_
                                      (cons _L9894_ _ids9849_))
                                     (if (gx#stx-pair? _L9894_)
                                         (let* ((_g99099923_
                                                 (lambda (_g99109919_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g99109919_)))
                                                (_g99089964_
                                                 (lambda (_g99109927_)
                                                   (if (gx#stx-pair?
                                                        _g99109927_)
                                                       (let ((_e99149930_
                                                              (gx#syntax-e
                                                               _g99109927_)))
                                                         (let ((_hd99139934_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e99149930_)))
                       (_tl99129937_
                        (let () (declare (not safe)) (##cdr _e99149930_))))
                   (if (gx#stx-pair? _tl99129937_)
                       (let ((_e99179940_ (gx#syntax-e _tl99129937_)))
                         (let ((_hd99169944_
                                (let ()
                                  (declare (not safe))
                                  (##car _e99179940_)))
                               (_tl99159947_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e99179940_))))
                           (if (gx#stx-null? _tl99159947_)
                               ((lambda (_L9950_)
                                  (_lp9844_ _L9892_ (cons _L9950_ _ids9849_)))
                                _hd99139934_)
                               (_g99099923_ _g99109927_))))
                       (_g99099923_ _g99109927_))))
               (_g99099923_ _g99109927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g99089964_ _L9894_))
                                         (if (gx#stx-keyword? _L9894_)
                                             (let* ((_g99689980_
                                                     (lambda (_g99699976_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g99699976_)))
                                                    (_g996710082_
                                                     (lambda (_g99699984_)
                                                       (if (gx#stx-pair?
                                                            _g99699984_)
                                                           (let ((_e99749987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g99699984_)))
                     (let ((_hd99739991_
                            (let () (declare (not safe)) (##car _e99749987_)))
                           (_tl99729994_
                            (let () (declare (not safe)) (##cdr _e99749987_))))
                       ((lambda (_L9997_ _L9999_)
                          (let* ((___stx2162221623_ _L9999_)
                                 (_g1001110025_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx2162221623_))))
                            (let ((___kont2162521626_
                                   (lambda (_L10063_)
                                     (_lp9844_
                                      _L9997_
                                      (cons _L10063_ _ids9849_))))
                                  (___kont2162721628_
                                   (lambda ()
                                     (_lp9844_
                                      _L9997_
                                      (cons _L9999_ _ids9849_)))))
                              (if (gx#stx-pair? ___stx2162221623_)
                                  (let ((_e1001610043_
                                         (gx#syntax-e ___stx2162221623_)))
                                    (let ((_tl1001410050_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1001610043_)))
                                          (_hd1001510047_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1001610043_))))
                                      (if (gx#stx-pair? _tl1001410050_)
                                          (let ((_e1001910053_
                                                 (gx#syntax-e _tl1001410050_)))
                                            (let ((_tl1001710060_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1001910053_)))
                                                  (_hd1001810057_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1001910053_))))
                                              (if (gx#stx-null? _tl1001710060_)
                                                  (___kont2162521626_
                                                   _hd1001510047_)
                                                  (___kont2162721628_))))
                                          (___kont2162721628_))))
                                  (___kont2162721628_)))))
                        _tl99729994_
                        _hd99739991_)))
                   (_g99689980_ _g99699984_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g996710082_ _L9892_))
                                             (if (eq? (gx#stx-e _L9894_)
                                                      '#!key)
                                                 (let* ((_g1008610098_
                                                         (lambda (_g1008710094_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g1008710094_)))
                                                        (_g1008510128_
                                                         (lambda (_g1008710102_)
                                                           (if (gx#stx-pair?
                                                                _g1008710102_)
                                                               (let ((_e1009210105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1008710102_)))
                         (let ((_hd1009110109_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1009210105_)))
                               (_tl1009010112_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1009210105_))))
                           ((lambda (_L10115_ _L10117_)
                              (_lp9844_ _L10115_ (cons _L10117_ _ids9849_)))
                            _tl1009010112_
                            _hd1009110109_)))
                       (_g1008610098_ _g1008710102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1008510128_ _L9892_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (error '"BUG: check-duplicate-bindings"
                                                          _stx7643_
                                                          _rest9847_))))))))
                              (___kont2165121652_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _rest9847_)
                                      _ids9849_
                                      (cons _rest9847_ _ids9849_))
                                  _stx7643_))))
                          (if (gx#stx-pair? ___stx2164621647_)
                              (let ((_e98589882_
                                     (gx#syntax-e ___stx2164621647_)))
                                (let ((_tl98569889_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e98589882_)))
                                      (_hd98579886_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e98589882_))))
                                  (___kont2164921650_
                                   _tl98569889_
                                   _hd98579886_)))
                              (___kont2165121652_)))))))
                 (_generate-opt-primary7653_
                  (lambda (_pre9633_ _opt9635_ _tail9636_ _body9637_)
                    (let* ((_g96399680_
                            (lambda (_g96409676_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g96409676_)))
                           (_g96389837_
                            (lambda (_g96409684_)
                              (if (gx#stx-pair? _g96409684_)
                                  (let ((_e96479687_
                                         (gx#syntax-e _g96409684_)))
                                    (let ((_hd96469691_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e96479687_)))
                                          (_tl96459694_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e96479687_))))
                                      (if (gx#stx-pair/null? _hd96469691_)
                                          (let ((_g23157_
                                                 (gx#syntax-split-splice
                                                  _hd96469691_
                                                  '0)))
                                            (begin
                                              (let ((_g23158_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g23157_)
                                                           (##vector-length
                                                            _g23157_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g23158_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g23158_)))
                                              (let ((_target96489697_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g23157_
                                                        0)))
                                                    (_tl96509700_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g23157_
                                                        1))))
                                                (if (gx#stx-null? _tl96509700_)
                                                    (letrec ((_loop96519703_
                                                              (lambda (_hd96499707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _pre96559710_)
                        (if (gx#stx-pair? _hd96499707_)
                            (let ((_e96529713_ (gx#syntax-e _hd96499707_)))
                              (let ((_lp-hd96539717_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e96529713_)))
                                    (_lp-tl96549720_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e96529713_))))
                                (_loop96519703_
                                 _lp-tl96549720_
                                 (cons _lp-hd96539717_ _pre96559710_))))
                            (let ((_pre96569723_ (reverse _pre96559710_)))
                              (if (gx#stx-pair? _tl96459694_)
                                  (let ((_e96599727_
                                         (gx#syntax-e _tl96459694_)))
                                    (let ((_hd96589731_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e96599727_)))
                                          (_tl96579734_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e96599727_))))
                                      (if (gx#stx-pair/null? _hd96589731_)
                                          (let ((_g23159_
                                                 (gx#syntax-split-splice
                                                  _hd96589731_
                                                  '0)))
                                            (begin
                                              (let ((_g23160_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g23159_)
                                                           (##vector-length
                                                            _g23159_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g23160_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g23160_)))
                                              (let ((_target96609737_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g23159_
                                                        0)))
                                                    (_tl96629740_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g23159_
                                                        1))))
                                                (if (gx#stx-null? _tl96629740_)
                                                    (letrec ((_loop96639743_
                                                              (lambda (_hd96619747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _opt96679750_)
                        (if (gx#stx-pair? _hd96619747_)
                            (let ((_e96649753_ (gx#syntax-e _hd96619747_)))
                              (let ((_lp-hd96659757_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e96649753_)))
                                    (_lp-tl96669760_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e96649753_))))
                                (_loop96639743_
                                 _lp-tl96669760_
                                 (cons _lp-hd96659757_ _opt96679750_))))
                            (let ((_opt96689763_ (reverse _opt96679750_)))
                              (if (gx#stx-pair? _tl96579734_)
                                  (let ((_e96719767_
                                         (gx#syntax-e _tl96579734_)))
                                    (let ((_hd96709771_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e96719767_)))
                                          (_tl96699774_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e96719767_))))
                                      (if (gx#stx-pair? _tl96699774_)
                                          (let ((_e96749777_
                                                 (gx#syntax-e _tl96699774_)))
                                            (let ((_hd96739781_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e96749777_)))
                                                  (_tl96729784_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e96749777_))))
                                              (if (gx#stx-null? _tl96729784_)
                                                  ((lambda (_L9787_
                                                            _L9789_
                                                            _L9790_
                                                            _L9791_)
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (let ((__tmp23163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g98209825_ _g98219828_)
                                    (cons _g98209825_ _g98219828_)))
                                 (__tmp23161
                                  (let ((__tmp23162
                                         (lambda (_g98229831_ _g98239834_)
                                           (cons _g98229831_ _g98239834_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp23162 _L9789_ _L9790_))))
                             (declare (not safe))
                             (__foldr1 __tmp23163 __tmp23161 _L9791_))
                           _L9787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd96739781_
                                                   _hd96709771_
                                                   _opt96689763_
                                                   _pre96569723_)
                                                  (_g96399680_ _g96409684_))))
                                          (_g96399680_ _g96409684_))))
                                  (_g96399680_ _g96409684_)))))))
              (_loop96639743_ _target96609737_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g96399680_
                                                     _g96409684_)))))
                                          (_g96399680_ _g96409684_))))
                                  (_g96399680_ _g96409684_)))))))
              (_loop96519703_ _target96489697_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g96399680_
                                                     _g96409684_)))))
                                          (_g96399680_ _g96409684_))))
                                  (_g96399680_ _g96409684_)))))
                      (_g96389837_
                       (list _pre9633_
                             (map car _opt9635_)
                             _tail9636_
                             _body9637_)))))
                 (_generate-opt-dispatch7654_
                  (lambda (_primary9627_ _pre9629_ _opt9630_ _tail9631_)
                    (cons (list _pre9629_
                                (_generate-opt-clause7656_
                                 _primary9627_
                                 _pre9629_
                                 _opt9630_))
                          (_generate-opt-dispatch*7655_
                           _primary9627_
                           _pre9629_
                           _opt9630_
                           _tail9631_))))
                 (_generate-opt-dispatch*7655_
                  (lambda (_primary9184_ _pre9186_ _opt9187_ _tail9188_)
                    (let _recur9190_ ((_opt-rest9193_ _opt9187_)
                                      (_right9195_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest9193_))
                          (let* ((_hd9197_ (caar _opt-rest9193_))
                                 (_rest9200_ (cdr _opt-rest9193_))
                                 (_right*9203_ (cons _hd9197_ _right9195_))
                                 (_g92069223_
                                  (lambda (_g92079219_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g92079219_)))
                                 (_g92059406_
                                  (lambda (_g92079227_)
                                    (if (gx#stx-pair/null? _g92079227_)
                                        (let ((_g23164_
                                               (gx#syntax-split-splice
                                                _g92079227_
                                                '0)))
                                          (begin
                                            (let ((_g23165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g23164_)
                                                         (##vector-length
                                                          _g23164_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g23165_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g23165_)))
                                            (let ((_target92099230_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g23164_
                                                      0)))
                                                  (_tl92119233_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g23164_
                                                      1))))
                                              (if (gx#stx-null? _tl92119233_)
                                                  (letrec ((_loop92129236_
                                                            (lambda (_hd92109240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-bind92169243_)
                      (if (gx#stx-pair? _hd92109240_)
                          (let ((_e92139246_ (gx#syntax-e _hd92109240_)))
                            (let ((_lp-hd92149250_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e92139246_)))
                                  (_lp-tl92159253_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e92139246_))))
                              (_loop92129236_
                               _lp-tl92159253_
                               (cons _lp-hd92149250_ _pre-bind92169243_))))
                          (let ((_pre-bind92179256_
                                 (reverse _pre-bind92169243_)))
                            ((lambda (_L9260_)
                               (let ()
                                 (let* ((_g92819298_
                                         (lambda (_g92829294_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g92829294_)))
                                        (_g92809402_
                                         (lambda (_g92829302_)
                                           (if (gx#stx-pair/null? _g92829302_)
                                               (let ((_g23166_
                                                      (gx#syntax-split-splice
                                                       _g92829302_
                                                       '0)))
                                                 (begin
                                                   (let ((_g23167_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g23166_)
                        (##vector-length _g23166_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g23167_ 2)))
                 (error "Context expects 2 values" _g23167_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target92849305_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g23166_
                                                             0)))
                                                         (_tl92869308_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g23166_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl92869308_)
                                                         (letrec ((_loop92879311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd92859315_ _opt-bind92919318_)
                             (if (gx#stx-pair? _hd92859315_)
                                 (let ((_e92889321_
                                        (gx#syntax-e _hd92859315_)))
                                   (let ((_lp-hd92899325_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e92889321_)))
                                         (_lp-tl92909328_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e92889321_))))
                                     (_loop92879311_
                                      _lp-tl92909328_
                                      (cons _lp-hd92899325_
                                            _opt-bind92919318_))))
                                 (let ((_opt-bind92929331_
                                        (reverse _opt-bind92919318_)))
                                   ((lambda (_L9335_)
                                      (let ()
                                        (let* ((_g93529360_
                                                (lambda (_g93539356_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g93539356_)))
                                               (_g93519398_
                                                (lambda (_g93539364_)
                                                  ((lambda (_L9367_)
                                                     (let ()
                                                       (let ()
                                                         (cons (list (let ((__tmp23171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (lambda (_g93819386_ _g93829389_)
                                      (cons _g93819386_ _g93829389_)))
                                   (__tmp23168
                                    (let ((__tmp23170
                                           (lambda (_g93839392_ _g93849395_)
                                             (cons _g93839392_ _g93849395_)))
                                          (__tmp23169 (cons _L9367_ '())))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp23170
                                       __tmp23169
                                       _L9335_))))
                               (declare (not safe))
                               (__foldr1 __tmp23171 __tmp23168 _L9260_))
                             (_generate-opt-clause7656_
                              _primary9184_
                              (let ((__tmp23172 (reverse _right*9203_)))
                                (declare (not safe))
                                (__foldr1 cons __tmp23172 _pre9186_))
                              _rest9200_))
                       (_recur9190_ _rest9200_ _right*9203_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g93539364_))))
                                          (_g93519398_ _hd9197_))))
                                    _opt-bind92929331_))))))
                   (_loop92879311_ _target92849305_ '()))
                 (_g92819298_ _g92829302_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g92819298_ _g92829302_)))))
                                   (_g92809402_ (reverse _right9195_)))))
                             _pre-bind92179256_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop92129236_
                                                     _target92099230_
                                                     '()))
                                                  (_g92069223_ _g92079227_)))))
                                        (_g92069223_ _g92079227_)))))
                            (_g92059406_ _pre9186_))
                          (if (gx#stx-null? _tail9188_)
                              '()
                              (let* ((_g94109451_
                                      (lambda (_g94119447_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g94119447_)))
                                     (_g94099623_
                                      (lambda (_g94119455_)
                                        (if (gx#stx-pair? _g94119455_)
                                            (let ((_e94189458_
                                                   (gx#syntax-e _g94119455_)))
                                              (let ((_hd94179462_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e94189458_)))
                                                    (_tl94169465_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e94189458_))))
                                                (if (gx#stx-pair/null?
                                                     _hd94179462_)
                                                    (let ((_g23173_
                                                           (gx#syntax-split-splice
                                                            _hd94179462_
                                                            '0)))
                                                      (begin
                                                        (let ((_g23174_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g23173_)
                             (##vector-length _g23173_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g23174_ 2)))
                      (error "Context expects 2 values" _g23174_)))
                (let ((_target94199468_
                       (let () (declare (not safe)) (##vector-ref _g23173_ 0)))
                      (_tl94219471_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g23173_ 1))))
                  (if (gx#stx-null? _tl94219471_)
                      (letrec ((_loop94229474_
                                (lambda (_hd94209478_ _pre94269481_)
                                  (if (gx#stx-pair? _hd94209478_)
                                      (let ((_e94239484_
                                             (gx#syntax-e _hd94209478_)))
                                        (let ((_lp-hd94249488_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e94239484_)))
                                              (_lp-tl94259491_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e94239484_))))
                                          (_loop94229474_
                                           _lp-tl94259491_
                                           (cons _lp-hd94249488_
                                                 _pre94269481_))))
                                      (let ((_pre94279494_
                                             (reverse _pre94269481_)))
                                        (if (gx#stx-pair? _tl94169465_)
                                            (let ((_e94309498_
                                                   (gx#syntax-e _tl94169465_)))
                                              (let ((_hd94299502_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e94309498_)))
                                                    (_tl94289505_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e94309498_))))
                                                (if (gx#stx-pair/null?
                                                     _hd94299502_)
                                                    (let ((_g23175_
                                                           (gx#syntax-split-splice
                                                            _hd94299502_
                                                            '0)))
                                                      (begin
                                                        (let ((_g23176_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g23175_)
                             (##vector-length _g23175_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g23176_ 2)))
                      (error "Context expects 2 values" _g23176_)))
                (let ((_target94319508_
                       (let () (declare (not safe)) (##vector-ref _g23175_ 0)))
                      (_tl94339511_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g23175_ 1))))
                  (if (gx#stx-null? _tl94339511_)
                      (letrec ((_loop94349514_
                                (lambda (_hd94329518_ _opt94389521_)
                                  (if (gx#stx-pair? _hd94329518_)
                                      (let ((_e94359524_
                                             (gx#syntax-e _hd94329518_)))
                                        (let ((_lp-hd94369528_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e94359524_)))
                                              (_lp-tl94379531_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e94359524_))))
                                          (_loop94349514_
                                           _lp-tl94379531_
                                           (cons _lp-hd94369528_
                                                 _opt94389521_))))
                                      (let ((_opt94399534_
                                             (reverse _opt94389521_)))
                                        (if (gx#stx-pair? _tl94289505_)
                                            (let ((_e94429538_
                                                   (gx#syntax-e _tl94289505_)))
                                              (let ((_hd94419542_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e94429538_)))
                                                    (_tl94409545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e94429538_))))
                                                (if (gx#stx-pair? _tl94409545_)
                                                    (let ((_e94459548_
                                                           (gx#syntax-e
                                                            _tl94409545_)))
                                                      (let ((_hd94449552_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e94459548_)))
                    (_tl94439555_
                     (let () (declare (not safe)) (##cdr _e94459548_))))
                (if (gx#stx-null? _tl94439555_)
                    ((lambda (_L9558_ _L9560_ _L9561_ _L9562_)
                       (let ()
                         (list (list (let ((__tmp23179
                                            (lambda (_g95909595_ _g95919598_)
                                              (cons _g95909595_ _g95919598_)))
                                           (__tmp23177
                                            (let ((__tmp23178
                                                   (lambda (_g95929601_
                                                            _g95939604_)
                                                     (cons _g95929601_
                                                           _g95939604_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp23178
                                               _L9560_
                                               _L9561_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp23179
                                        __tmp23177
                                        _L9562_))
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'apply)
                                            (cons _L9558_
                                                  (let ((__tmp23183
                                                         (lambda (_g96069611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g96079614_)
                   (cons _g96069611_ _g96079614_)))
                (__tmp23180
                 (let ((__tmp23182
                        (lambda (_g96089617_ _g96099620_)
                          (cons _g96089617_ _g96099620_)))
                       (__tmp23181 (cons _L9560_ '())))
                   (declare (not safe))
                   (__foldr1 __tmp23182 __tmp23181 _L9561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp23183
                                                     __tmp23180
                                                     _L9562_))))
                                      (gx#stx-source _stx7643_))))))
                     _hd94449552_
                     _hd94419542_
                     _opt94399534_
                     _pre94279494_)
                    (_g94109451_ _g94119455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g94109451_
                                                     _g94119455_))))
                                            (_g94109451_ _g94119455_)))))))
                        (_loop94349514_ _target94319508_ '()))
                      (_g94109451_ _g94119455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g94109451_
                                                     _g94119455_))))
                                            (_g94109451_ _g94119455_)))))))
                        (_loop94229474_ _target94199468_ '()))
                      (_g94109451_ _g94119455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g94109451_
                                                     _g94119455_))))
                                            (_g94109451_ _g94119455_)))))
                                (_g94099623_
                                 (list _pre9186_
                                       (reverse _right9195_)
                                       _tail9188_
                                       _primary9184_))))))))
                 (_generate-opt-clause7656_
                  (lambda (_primary8882_ _pre8884_ _opt8885_)
                    (let _recur8887_ ((_opt-rest8890_ _opt8885_)
                                      (_right8892_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest8890_))
                          (let* ((_hd8894_ (car _opt-rest8890_))
                                 (_rest8897_ (cdr _opt-rest8890_))
                                 (_g89008908_
                                  (lambda (_g89018904_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g89018904_)))
                                 (_g88998997_
                                  (lambda (_g89018912_)
                                    ((lambda (_L8915_)
                                       (let ()
                                         (let* ((_g89318939_
                                                 (lambda (_g89328935_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g89328935_)))
                                                (_g89308993_
                                                 (lambda (_g89328943_)
                                                   ((lambda (_L8946_)
                                                      (let ()
                                                        (let* ((_g89598967_
                                                                (lambda (_g89608963_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g89608963_)))
                       (_g89588989_
                        (lambda (_g89608971_)
                          ((lambda (_L8974_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (cons (cons (cons _L8915_ '())
                                                         (cons _L8946_ '()))
                                                   '())
                                             (cons _L8974_ '()))))))
                           _g89608971_))))
                  (_g89588989_
                   (_recur8887_ _rest8897_ (cons _L8915_ _right8892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g89328943_))))
                                           (_g89308993_ (cdr _hd8894_)))))
                                     _g89018912_))))
                            (_g88998997_ (car _hd8894_)))
                          (let* ((_g90019038_
                                  (lambda (_g90029034_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g90029034_)))
                                 (_g90009180_
                                  (lambda (_g90029042_)
                                    (if (gx#stx-pair? _g90029042_)
                                        (let ((_e90089045_
                                               (gx#syntax-e _g90029042_)))
                                          (let ((_hd90079049_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e90089045_)))
                                                (_tl90069052_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e90089045_))))
                                            (if (gx#stx-pair/null?
                                                 _hd90079049_)
                                                (let ((_g23184_
                                                       (gx#syntax-split-splice
                                                        _hd90079049_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23185_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g23184_)
                         (##vector-length _g23184_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g23185_ 2)))
                  (error "Context expects 2 values" _g23185_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target90099055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g23184_
                                                              0)))
                                                          (_tl90119058_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g23184_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl90119058_)
                                                          (letrec ((_loop90129061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd90109065_ _pre90169068_)
                              (if (gx#stx-pair? _hd90109065_)
                                  (let ((_e90139071_
                                         (gx#syntax-e _hd90109065_)))
                                    (let ((_lp-hd90149075_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e90139071_)))
                                          (_lp-tl90159078_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e90139071_))))
                                      (_loop90129061_
                                       _lp-tl90159078_
                                       (cons _lp-hd90149075_ _pre90169068_))))
                                  (let ((_pre90179081_
                                         (reverse _pre90169068_)))
                                    (if (gx#stx-pair? _tl90069052_)
                                        (let ((_e90209085_
                                               (gx#syntax-e _tl90069052_)))
                                          (let ((_hd90199089_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e90209085_)))
                                                (_tl90189092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e90209085_))))
                                            (if (gx#stx-pair/null?
                                                 _hd90199089_)
                                                (let ((_g23186_
                                                       (gx#syntax-split-splice
                                                        _hd90199089_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23187_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g23186_)
                         (##vector-length _g23186_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g23187_ 2)))
                  (error "Context expects 2 values" _g23187_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target90219095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g23186_
                                                              0)))
                                                          (_tl90239098_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g23186_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl90239098_)
                                                          (letrec ((_loop90249101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd90229105_ _opt90289108_)
                              (if (gx#stx-pair? _hd90229105_)
                                  (let ((_e90259111_
                                         (gx#syntax-e _hd90229105_)))
                                    (let ((_lp-hd90269115_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e90259111_)))
                                          (_lp-tl90279118_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e90259111_))))
                                      (_loop90249101_
                                       _lp-tl90279118_
                                       (cons _lp-hd90269115_ _opt90289108_))))
                                  (let ((_opt90299121_
                                         (reverse _opt90289108_)))
                                    (if (gx#stx-pair? _tl90189092_)
                                        (let ((_e90329125_
                                               (gx#syntax-e _tl90189092_)))
                                          (let ((_hd90319129_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e90329125_)))
                                                (_tl90309132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e90329125_))))
                                            (if (gx#stx-null? _tl90309132_)
                                                ((lambda (_L9135_
                                                          _L9137_
                                                          _L9138_)
                                                   (let ()
                                                     (gx#stx-wrap-source
                                                      (cons _L9135_
                                                            (let ((__tmp23190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g91639168_ _g91649171_)
                             (cons _g91639168_ _g91649171_)))
                          (__tmp23188
                           (let ((__tmp23189
                                  (lambda (_g91659174_ _g91669177_)
                                    (cons _g91659174_ _g91669177_))))
                             (declare (not safe))
                             (__foldr1 __tmp23189 '() _L9137_))))
                      (declare (not safe))
                      (__foldr1 __tmp23190 __tmp23188 _L9138_)))
              (gx#stx-source _stx7643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd90319129_
                                                 _opt90299121_
                                                 _pre90179081_)
                                                (_g90019038_ _g90029042_))))
                                        (_g90019038_ _g90029042_)))))))
                    (_loop90249101_ _target90219095_ '()))
                  (_g90019038_ _g90029042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g90019038_ _g90029042_))))
                                        (_g90019038_ _g90029042_)))))))
                    (_loop90129061_ _target90099055_ '()))
                  (_g90019038_ _g90029042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g90019038_ _g90029042_))))
                                        (_g90019038_ _g90029042_)))))
                            (_g90009180_
                             (list _pre8884_
                                   (reverse _right8892_)
                                   _primary8882_)))))))
                 (_generate-kw-primary7657_
                  (lambda (_key8258_ _kwargs8260_ _args8261_ _body8262_)
                    (letrec ((_make-body8264_
                              (lambda (_kwargs8751_ _kwvals8753_)
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _kwargs8751_))
                                    (let* ((_kwarg8755_ (car _kwargs8751_))
                                           (_var8758_ (cadr _kwarg8755_))
                                           (_default8761_ (caddr _kwarg8755_))
                                           (_kwval8764_ (car _kwvals8753_))
                                           (_rest-kwargs8767_
                                            (cdr _kwargs8751_))
                                           (_rest-kwvals8770_
                                            (cdr _kwvals8753_)))
                                      (let* ((_g87758798_
                                              (lambda (_g87768794_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _g87768794_)))
                                             (_g87748878_
                                              (lambda (_g87768802_)
                                                (if (gx#stx-pair? _g87768802_)
                                                    (let ((_e87838805_
                                                           (gx#syntax-e
                                                            _g87768802_)))
                                                      (let ((_hd87828809_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e87838805_)))
                    (_tl87818812_
                     (let () (declare (not safe)) (##cdr _e87838805_))))
                (if (gx#stx-pair? _tl87818812_)
                    (let ((_e87868815_ (gx#syntax-e _tl87818812_)))
                      (let ((_hd87858819_
                             (let () (declare (not safe)) (##car _e87868815_)))
                            (_tl87848822_
                             (let ()
                               (declare (not safe))
                               (##cdr _e87868815_))))
                        (if (gx#stx-pair? _tl87848822_)
                            (let ((_e87898825_ (gx#syntax-e _tl87848822_)))
                              (let ((_hd87888829_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e87898825_)))
                                    (_tl87878832_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e87898825_))))
                                (if (gx#stx-pair? _tl87878832_)
                                    (let ((_e87928835_
                                           (gx#syntax-e _tl87878832_)))
                                      (let ((_hd87918839_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e87928835_)))
                                            (_tl87908842_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e87928835_))))
                                        (if (gx#stx-null? _tl87908842_)
                                            ((lambda (_L8845_
                                                      _L8847_
                                                      _L8848_
                                                      _L8849_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let-values)
                                                       (cons (cons (cons (cons _L8849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'eq?)
                                                         (cons _L8848_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'absent-value)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _L8847_
                                                         (cons _L8848_ '()))))
                                       '()))
                           '())
                     (cons _L8845_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd87918839_
                                             _hd87888829_
                                             _hd87858819_
                                             _hd87828809_)
                                            (_g87758798_ _g87768802_))))
                                    (_g87758798_ _g87768802_))))
                            (_g87758798_ _g87768802_))))
                    (_g87758798_ _g87768802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87758798_
                                                     _g87768802_)))))
                                        (_g87748878_
                                         (list _var8758_
                                               _kwval8764_
                                               _default8761_
                                               (_make-body8264_
                                                _rest-kwargs8767_
                                                _rest-kwvals8770_)))))
                                    (cons 'begin _body8262_))))
                             (_make-main8266_
                              (lambda ()
                                (let* ((_g85598567_
                                        (lambda (_g85608563_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g85608563_)))
                                       (_g85588743_
                                        (lambda (_g85608571_)
                                          ((lambda (_L8574_)
                                             (let ()
                                               (let* ((_g85868603_
                                                       (lambda (_g85878599_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g85878599_)))
                                                      (_g85858739_
                                                       (lambda (_g85878607_)
                                                         (if (gx#stx-pair/null?
                                                              _g85878607_)
                                                             (let ((_g23191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g85878607_ '0)))
                       (begin
                         (let ((_g23192_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g23191_)
                                      (##vector-length _g23191_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g23192_ 2)))
                               (error "Context expects 2 values" _g23192_)))
                         (let ((_target85898610_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g23191_ 0)))
                               (_tl85918613_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g23191_ 1))))
                           (if (gx#stx-null? _tl85918613_)
                               (letrec ((_loop85928616_
                                         (lambda (_hd85908620_ _kwval85968623_)
                                           (if (gx#stx-pair? _hd85908620_)
                                               (let ((_e85938626_
                                                      (gx#syntax-e
                                                       _hd85908620_)))
                                                 (let ((_lp-hd85948630_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e85938626_)))
                                                       (_lp-tl85958633_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e85938626_))))
                                                   (_loop85928616_
                                                    _lp-tl85958633_
                                                    (cons _lp-hd85948630_
                                                          _kwval85968623_))))
                                               (let ((_kwval85978636_
                                                      (reverse _kwval85968623_)))
                                                 ((lambda (_L8640_)
                                                    (let ()
                                                      (let* ((_g86578665_
                                                              (lambda (_g86588661_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g86588661_)))
                     (_g86568735_
                      (lambda (_g86588669_)
                        ((lambda (_L8672_)
                           (let ()
                             (let* ((_g86858693_
                                     (lambda (_g86868689_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g86868689_)))
                                    (_g86848723_
                                     (lambda (_g86868697_)
                                       ((lambda (_L8700_)
                                          (let ()
                                            (let ()
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L8574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp23193
                                (lambda (_g87148717_ _g87158720_)
                                  (cons _g87148717_ _g87158720_))))
                           (declare (not safe))
                           (__foldr1 __tmp23193 _L8672_ _L8640_)))
                   (cons _L8700_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _stx7643_)))))
                                        _g86868697_))))
                               (_g86848723_
                                (_make-body8264_
                                 _kwargs8260_
                                 (let ((__tmp23194
                                        (lambda (_g87268729_ _g87278732_)
                                          (cons _g87268729_ _g87278732_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp23194 '() _L8640_)))))))
                         _g86588669_))))
                (_g86568735_ _args8261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _kwval85978636_))))))
                                 (_loop85928616_ _target85898610_ '()))
                               (_g85868603_ _g85878607_)))))
                     (_g85868603_ _g85878607_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g85858739_
                                                  (gx#gentemps
                                                   (map cadr _kwargs8260_))))))
                                           _g85608571_))))
                                  (_g85588743_
                                   (let ((_$e8747_ _key8258_))
                                     (if _$e8747_ _$e8747_ '_))))))
                             (_make-dispatch8267_
                              (lambda (_main8367_)
                                (let* ((_g83708378_
                                        (lambda (_g83718374_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g83718374_)))
                                       (_g83698549_
                                        (lambda (_g83718382_)
                                          ((lambda (_L8385_)
                                             (let ()
                                               (let* ((_g83978414_
                                                       (lambda (_g83988410_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g83988410_)))
                                                      (_g83968510_
                                                       (lambda (_g83988418_)
                                                         (if (gx#stx-pair/null?
                                                              _g83988418_)
                                                             (let ((_g23195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g83988418_ '0)))
                       (begin
                         (let ((_g23196_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g23195_)
                                      (##vector-length _g23195_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g23196_ 2)))
                               (error "Context expects 2 values" _g23196_)))
                         (let ((_target84008421_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g23195_ 0)))
                               (_tl84028424_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g23195_ 1))))
                           (if (gx#stx-null? _tl84028424_)
                               (letrec ((_loop84038427_
                                         (lambda (_hd84018431_
                                                  _get-kw84078434_)
                                           (if (gx#stx-pair? _hd84018431_)
                                               (let ((_e84048437_
                                                      (gx#syntax-e
                                                       _hd84018431_)))
                                                 (let ((_lp-hd84058441_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e84048437_)))
                                                       (_lp-tl84068444_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e84048437_))))
                                                   (_loop84038427_
                                                    _lp-tl84068444_
                                                    (cons _lp-hd84058441_
                                                          _get-kw84078434_))))
                                               (let ((_get-kw84088447_
                                                      (reverse _get-kw84078434_)))
                                                 ((lambda (_L8451_)
                                                    (let ()
                                                      (let* ((_g84688476_
                                                              (lambda (_g84698472_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g84698472_)))
                     (_g84678506_
                      (lambda (_g84698480_)
                        ((lambda (_L8483_)
                           (let ()
                             (let ()
                               (gx#stx-wrap-source
                                (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (cons _L8385_
                                                  (gx#datum->syntax '#f 'args))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'apply)
                                                        (cons _L8483_
                                                              (cons _L8385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp23198
                                   (lambda (_g84978500_ _g84988503_)
                                     (cons _g84978500_ _g84988503_)))
                                  (__tmp23197
                                   (cons (gx#datum->syntax '#f 'args) '())))
                              (declare (not safe))
                              (__foldr1 __tmp23198 __tmp23197 _L8451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (gx#stx-source _stx7643_)))))
                         _g84698480_))))
                (_g84678506_ _main8367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _get-kw84088447_))))))
                                 (_loop84038427_ _target84008421_ '()))
                               (_g83978414_ _g83988418_)))))
                     (_g83978414_ _g83988418_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g83968510_
                                                  (map (lambda (_kwarg8514_)
                                                         (let* ((_g85178525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g85188521_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g85188521_)))
                        (_g85168545_
                         (lambda (_g85188529_)
                           ((lambda (_L8532_)
                              (let ()
                                (cons (gx#datum->syntax
                                       '#f
                                       'symbolic-table-ref)
                                      (cons _L8385_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L8532_ '()))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'absent-value)
                                                        '()))))))
                            _g85188529_))))
                   (_g85168545_ (car _kwarg8514_))))
               _kwargs8260_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g83718382_))))
                                  (_g83698549_
                                   (let ((_$e8553_ _key8258_))
                                     (if _$e8553_
                                         _$e8553_
                                         (gx#genident 'keys))))))))
                      (let* ((_g82698277_
                              (lambda (_g82708273_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g82708273_)))
                             (_g82688363_
                              (lambda (_g82708281_)
                                ((lambda (_L8284_)
                                   (let ()
                                     (let* ((_g82978305_
                                             (lambda (_g82988301_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g82988301_)))
                                            (_g82968359_
                                             (lambda (_g82988309_)
                                               ((lambda (_L8312_)
                                                  (let ()
                                                    (let* ((_g83258333_
                                                            (lambda (_g83268329_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g83268329_)))
                                                           (_g83248355_
                                                            (lambda (_g83268337_)
                                                              ((lambda (_L8340_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ()
                             (cons (gx#datum->syntax '#f 'let-values)
                                   (cons (cons (cons (cons _L8284_ '())
                                                     (cons _L8340_ '()))
                                               '())
                                         (cons _L8312_ '()))))))
                       _g83268337_))))
              (_g83248355_ (_make-main8266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g82988309_))))
                                       (_g82968359_
                                        (_make-dispatch8267_ _L8284_)))))
                                 _g82708281_))))
                        (_g82688363_ (gx#genident 'kw-lambda-main))))))
                 (_generate-kw-dispatch7658_
                  (lambda (_primary8171_ _kwargs8173_ _strict?8174_)
                    (let* ((_g81768195_
                            (lambda (_g81778191_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g81778191_)))
                           (_g81758254_
                            (lambda (_g81778199_)
                              (if (gx#stx-pair? _g81778199_)
                                  (let ((_e81838202_
                                         (gx#syntax-e _g81778199_)))
                                    (let ((_hd81828206_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e81838202_)))
                                          (_tl81818209_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e81838202_))))
                                      (if (gx#stx-pair? _tl81818209_)
                                          (let ((_e81868212_
                                                 (gx#syntax-e _tl81818209_)))
                                            (let ((_hd81858216_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e81868212_)))
                                                  (_tl81848219_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e81868212_))))
                                              (if (gx#stx-pair? _tl81848219_)
                                                  (let ((_e81898222_
                                                         (gx#syntax-e
                                                          _tl81848219_)))
                                                    (let ((_hd81888226_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e81898222_)))
                                                          (_tl81878229_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e81898222_))))
                                                      (if (gx#stx-null?
                                                           _tl81878229_)
                                                          ((lambda (_L8232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L8234_
                            _L8235_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons _L8232_
                                   (cons (cons (gx#datum->syntax '#f 'apply)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'keyword-dispatch)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L8235_ '()))
                   (cons _L8234_ (cons _L8232_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _hd81888226_
                   _hd81858216_
                   _hd81828206_)
                  (_g81768195_ _g81778199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g81768195_ _g81778199_))))
                                          (_g81768195_ _g81778199_))))
                                  (_g81768195_ _g81778199_)))))
                      (_g81758254_
                       (list (if _strict?8174_
                                 (_generate-kw-table7659_
                                  (map car _kwargs8173_))
                                 '#f)
                             _primary8171_
                             (gx#genident 'args))))))
                 (_generate-kw-table7659_
                  (lambda (_kws8145_)
                    (let _rehash8148_ ((_pht8151_
                                        (let ((__tmp23203 (length _kws8145_)))
                                          (declare (not safe))
                                          (##make-vector __tmp23203 '#f))))
                      (let _lp8154_ ((_rest8157_ _kws8145_))
                        (if (let () (declare (not safe)) (pair? _rest8157_))
                            (let* ((_key8160_ (car _rest8157_))
                                   (_rest8163_ (cdr _rest8157_))
                                   (_pos8166_
                                    (let ((__tmp23200 (keyword-hash _key8160_))
                                          (__tmp23199
                                           (vector-length _pht8151_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp23200 __tmp23199))))
                              (if (vector-ref _pht8151_ _pos8166_)
                                  (if (let ((__tmp23201
                                             (vector-length _pht8151_)))
                                        (declare (not safe))
                                        (##fx< __tmp23201 '8192))
                                      (_rehash8148_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp23202
                                                (vector-length _pht8151_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp23202))
                                         '2)
                                        '#f))
                                      (let ()
                                        (declare (not safe))
                                        (error '"Unresolvable keyword collision"
                                               _kws8145_)))
                                  (begin
                                    (vector-set! _pht8151_ _pos8166_ _key8160_)
                                    (_lp8154_ _rest8163_))))
                            _pht8151_))))))
          (let* ((___stx2166221663_ _stx7643_)
                 (_g76637694_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2166221663_))))
            (let ((___kont2166521666_
                   (lambda (_L8126_ _L8128_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _L8128_ _L8126_))))
                  (___kont2166721668_
                   (lambda (_L7898_ _L7900_)
                     (let ((_g23204_ (_opt-lambda-split7649_ _L7900_)))
                       (begin
                         (let ((_g23205_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g23204_)
                                      (##vector-length _g23204_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g23205_ 3)))
                               (error "Context expects 3 values" _g23205_)))
                         (let ((_pre7913_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g23204_ 0)))
                               (_opt7915_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g23204_ 1)))
                               (_tail7916_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g23204_ 2))))
                           (let* ((_g79187926_
                                   (lambda (_g79197922_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g79197922_)))
                                  (_g79178095_
                                   (lambda (_g79197930_)
                                     ((lambda (_L7933_)
                                        (let ()
                                          (let* ((_g79467954_
                                                  (lambda (_g79477950_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g79477950_)))
                                                 (_g79458091_
                                                  (lambda (_g79477958_)
                                                    ((lambda (_L7961_)
                                                       (let ()
                                                         (let* ((_g79747991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g79757987_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g79757987_)))
                        (_g79738087_
                         (lambda (_g79757995_)
                           (if (gx#stx-pair/null? _g79757995_)
                               (let ((_g23206_
                                      (gx#syntax-split-splice _g79757995_ '0)))
                                 (begin
                                   (let ((_g23207_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g23206_)
                                                (##vector-length _g23206_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g23207_ 2)))
                                         (error "Context expects 2 values"
                                                _g23207_)))
                                   (let ((_target79777998_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g23206_ 0)))
                                         (_tl79798001_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g23206_ 1))))
                                     (if (gx#stx-null? _tl79798001_)
                                         (letrec ((_loop79808004_
                                                   (lambda (_hd79788008_
                                                            _clause79848011_)
                                                     (if (gx#stx-pair?
                                                          _hd79788008_)
                                                         (let ((_e79818014_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd79788008_)))
                   (let ((_lp-hd79828018_
                          (let () (declare (not safe)) (##car _e79818014_)))
                         (_lp-tl79838021_
                          (let () (declare (not safe)) (##cdr _e79818014_))))
                     (_loop79808004_
                      _lp-tl79838021_
                      (cons _lp-hd79828018_ _clause79848011_))))
                 (let ((_clause79858024_ (reverse _clause79848011_)))
                   ((lambda (_L8028_)
                      (let ()
                        (let* ((_g80458053_
                                (lambda (_g80468049_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g80468049_)))
                               (_g80448075_
                                (lambda (_g80468057_)
                                  ((lambda (_L8060_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'let-values)
                                               (cons (cons (cons (cons _L7933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L7961_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L8060_ '()))))))
                                   _g80468057_))))
                          (_g80448075_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'case-lambda)
                                  (let ((__tmp23208
                                         (lambda (_g80788081_ _g80798084_)
                                           (cons _g80788081_ _g80798084_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp23208 '() _L8028_)))
                            (gx#stx-source _stx7643_))))))
                    _clause79858024_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop79808004_
                                            _target79777998_
                                            '()))
                                         (_g79747991_ _g79757995_)))))
                               (_g79747991_ _g79757995_)))))
                   (_g79738087_
                    (_generate-opt-dispatch7654_
                     _L7933_
                     _pre7913_
                     _opt7915_
                     _tail7916_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g79477958_))))
                                            (_g79458091_
                                             (gx#stx-wrap-source
                                              (_generate-opt-primary7653_
                                               _pre7913_
                                               _opt7915_
                                               _tail7916_
                                               _L7898_)
                                              (gx#stx-source _stx7643_))))))
                                      _g79197930_))))
                             (_g79178095_ (gx#genident 'opt-lambda))))))))
                  (___kont2166921670_
                   (lambda (_L7721_ _L7723_)
                     (let* ((_g77397746_
                             (lambda (_g77407742_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g77407742_)))
                            (_g77387867_
                             (lambda (_g77407750_)
                               ((lambda ()
                                  (let ()
                                    (let ((_g23209_
                                           (_kw-lambda-split7651_ _L7723_)))
                                      (begin
                                        (let ((_g23210_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g23209_)
                                                     (##vector-length _g23209_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g23210_ 3)))
                                              (error "Context expects 3 values"
                                                     _g23210_)))
                                        (let ((_key7759_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g23209_ 0)))
                                              (_kwargs7761_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g23209_ 1)))
                                              (_args7762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g23209_ 2))))
                                          (let* ((_g77647772_
                                                  (lambda (_g77657768_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g77657768_)))
                                                 (_g77637863_
                                                  (lambda (_g77657776_)
                                                    ((lambda (_L7779_)
                                                       (let ()
                                                         (let* ((_g77977805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g77987801_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g77987801_)))
                        (_g77967859_
                         (lambda (_g77987809_)
                           ((lambda (_L7812_)
                              (let ()
                                (let* ((_g78257833_
                                        (lambda (_g78267829_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g78267829_)))
                                       (_g78247855_
                                        (lambda (_g78267837_)
                                          ((lambda (_L7840_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let-values)
                                                       (cons (cons (cons (cons _L7779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons _L7812_ '()))
                           '())
                     (cons _L7840_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g78267837_))))
                                  (_g78247855_
                                   (gx#stx-wrap-source
                                    (_generate-kw-dispatch7658_
                                     _L7779_
                                     _kwargs7761_
                                     (let ()
                                       (declare (not safe))
                                       (not _key7759_)))
                                    (gx#stx-source _stx7643_))))))
                            _g77987809_))))
                   (_g77967859_
                    (gx#stx-wrap-source
                     (_generate-kw-primary7657_
                      _key7759_
                      _kwargs7761_
                      _args7762_
                      _L7721_)
                     (gx#stx-source _stx7643_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g77657776_))))
                                            (_g77637863_
                                             (gx#genident
                                              'kw-lambda))))))))))))
                       (_g77387867_
                        (_check-duplicate-bindings7652_ _L7723_))))))
              (let* ((___match2170721708_
                      (lambda (_e76857701_
                               _hd76847705_
                               _tl76837708_
                               _e76887711_
                               _hd76877715_
                               _tl76867718_)
                        (let ((_L7721_ _tl76867718_) (_L7723_ _hd76877715_))
                          (if (_kw-lambda?7650_ _L7723_)
                              (___kont2166921670_ _L7721_ _L7723_)
                              (let () (declare (not safe)) (_g76637694_))))))
                     (___match2169521696_
                      (lambda (_e76777878_
                               _hd76767882_
                               _tl76757885_
                               _e76807888_
                               _hd76797892_
                               _tl76787895_)
                        (let ((_L7898_ _tl76787895_) (_L7900_ _hd76797892_))
                          (if (_opt-lambda?7648_ _L7900_)
                              (___kont2166721668_ _L7898_ _L7900_)
                              (___match2170721708_
                               _e76777878_
                               _hd76767882_
                               _tl76757885_
                               _e76807888_
                               _hd76797892_
                               _tl76787895_)))))
                     (___match2168321684_
                      (lambda (_e76698106_
                               _hd76688110_
                               _tl76678113_
                               _e76728116_
                               _hd76718120_
                               _tl76708123_)
                        (let ((_L8126_ _tl76708123_) (_L8128_ _hd76718120_))
                          (if (_simple-lambda?7646_ _L8128_)
                              (___kont2166521666_ _L8126_ _L8128_)
                              (___match2169521696_
                               _e76698106_
                               _hd76688110_
                               _tl76678113_
                               _e76728116_
                               _hd76718120_
                               _tl76708123_))))))
                (if (gx#stx-pair? ___stx2166221663_)
                    (let ((_e76698106_ (gx#syntax-e ___stx2166221663_)))
                      (let ((_tl76678113_
                             (let () (declare (not safe)) (##cdr _e76698106_)))
                            (_hd76688110_
                             (let ()
                               (declare (not safe))
                               (##car _e76698106_))))
                        (if (gx#stx-pair? _tl76678113_)
                            (let ((_e76728116_ (gx#syntax-e _tl76678113_)))
                              (let ((_tl76708123_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e76728116_)))
                                    (_hd76718120_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e76728116_))))
                                (___match2168321684_
                                 _e76698106_
                                 _hd76688110_
                                 _tl76678113_
                                 _e76728116_
                                 _hd76718120_
                                 _tl76708123_)))
                            (let () (declare (not safe)) (_g76637694_)))))
                    (let () (declare (not safe)) (_g76637694_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_$stx11047_)
        (let* ((___stx2171021711_ _$stx11047_)
               (_g1105311117_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2171021711_))))
          (let ((___kont2171321714_
                 (lambda (_L11347_ _L11349_ _L11350_ _L11351_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _L11351_ _L11350_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _L11349_
                                                 (let ((__tmp23211
                                                        (lambda (_g1137311376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1137411379_)
                  (cons _g1137311376_ _g1137411379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp23211
                                                    '()
                                                    _L11347_))))
                                     '())))))
                (___kont2171721718_
                 (lambda (_L11239_ _L11241_ _L11242_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L11242_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _L11241_
                                                 (let ((__tmp23212
                                                        (lambda (_g1126111264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1126211267_)
                  (cons _g1126111264_ _g1126211267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp23212
                                                    '()
                                                    _L11239_))))
                                     '())))))
                (___kont2172121722_
                 (lambda (_L11154_ _L11156_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L11156_ '()) (cons _L11154_ '()))))))
            (let* ((___match2180121802_
                    (lambda (_e1110511124_
                             _hd1110411128_
                             _tl1110311131_
                             _e1110811134_
                             _hd1110711138_
                             _tl1110611141_
                             _e1111111144_
                             _hd1111011148_
                             _tl1110911151_)
                      (let ((_L11154_ _hd1111011148_)
                            (_L11156_ _hd1110711138_))
                        (if (gx#identifier? _L11156_)
                            (___kont2172121722_ _L11154_ _L11156_)
                            (let () (declare (not safe)) (_g1105311117_))))))
                   (___match2179321794_
                    (lambda (_e1110511124_
                             _hd1110411128_
                             _tl1110311131_
                             _e1110811134_
                             _hd1110711138_
                             _tl1110611141_)
                      (if (gx#stx-pair? _tl1110611141_)
                          (let ((_e1111111144_ (gx#syntax-e _tl1110611141_)))
                            (let ((_tl1110911151_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1111111144_)))
                                  (_hd1111011148_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1111111144_))))
                              (if (gx#stx-null? _tl1110911151_)
                                  (___match2180121802_
                                   _e1110511124_
                                   _hd1110411128_
                                   _tl1110311131_
                                   _e1110811134_
                                   _hd1110711138_
                                   _tl1110611141_
                                   _e1111111144_
                                   _hd1111011148_
                                   _tl1110911151_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1105311117_)))))
                          (let () (declare (not safe)) (_g1105311117_)))))
                   (___match2178121782_
                    (lambda (_e1108511179_
                             _hd1108411183_
                             _tl1108311186_
                             _e1108811189_
                             _hd1108711193_
                             _tl1108611196_
                             _e1109111199_
                             _hd1109011203_
                             _tl1108911206_
                             ___splice2171921720_
                             _target1109211209_
                             _tl1109411212_)
                      (letrec ((_loop1109511215_
                                (lambda (_hd1109311219_ _body1109911222_)
                                  (if (gx#stx-pair? _hd1109311219_)
                                      (let ((_e1109611225_
                                             (gx#syntax-e _hd1109311219_)))
                                        (let ((_lp-tl1109811232_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1109611225_)))
                                              (_lp-hd1109711229_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1109611225_))))
                                          (_loop1109511215_
                                           _lp-tl1109811232_
                                           (cons _lp-hd1109711229_
                                                 _body1109911222_))))
                                      (let ((_body1110011235_
                                             (reverse _body1109911222_)))
                                        (let ((_L11239_ _body1110011235_)
                                              (_L11241_ _tl1108911206_)
                                              (_L11242_ _hd1109011203_))
                                          (if (gx#identifier? _L11242_)
                                              (___kont2171721718_
                                               _L11239_
                                               _L11241_
                                               _L11242_)
                                              (___match2179321794_
                                               _e1108511179_
                                               _hd1108411183_
                                               _tl1108311186_
                                               _e1108811189_
                                               _hd1108711193_
                                               _tl1108611196_))))))))
                        (_loop1109511215_ _target1109211209_ '()))))
                   (___match2175521756_
                    (lambda (_e1106111277_
                             _hd1106011281_
                             _tl1105911284_
                             _e1106411287_
                             _hd1106311291_
                             _tl1106211294_
                             _e1106711297_
                             _hd1106611301_
                             _tl1106511304_
                             _e1107011307_
                             _hd1106911311_
                             _tl1106811314_
                             ___splice2171521716_
                             _target1107111317_
                             _tl1107311320_)
                      (letrec ((_loop1107411323_
                                (lambda (_hd1107211327_ _body1107811330_)
                                  (if (gx#stx-pair? _hd1107211327_)
                                      (let ((_e1107511333_
                                             (gx#syntax-e _hd1107211327_)))
                                        (let ((_lp-tl1107711340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1107511333_)))
                                              (_lp-hd1107611337_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1107511333_))))
                                          (_loop1107411323_
                                           _lp-tl1107711340_
                                           (cons _lp-hd1107611337_
                                                 _body1107811330_))))
                                      (let ((_body1107911343_
                                             (reverse _body1107811330_)))
                                        (___kont2171321714_
                                         _body1107911343_
                                         _tl1106511304_
                                         _tl1106811314_
                                         _hd1106911311_))))))
                        (_loop1107411323_ _target1107111317_ '())))))
              (if (gx#stx-pair? ___stx2171021711_)
                  (let ((_e1106111277_ (gx#syntax-e ___stx2171021711_)))
                    (let ((_tl1105911284_
                           (let () (declare (not safe)) (##cdr _e1106111277_)))
                          (_hd1106011281_
                           (let ()
                             (declare (not safe))
                             (##car _e1106111277_))))
                      (if (gx#stx-pair? _tl1105911284_)
                          (let ((_e1106411287_ (gx#syntax-e _tl1105911284_)))
                            (let ((_tl1106211294_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1106411287_)))
                                  (_hd1106311291_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1106411287_))))
                              (if (gx#stx-pair? _hd1106311291_)
                                  (let ((_e1106711297_
                                         (gx#syntax-e _hd1106311291_)))
                                    (let ((_tl1106511304_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1106711297_)))
                                          (_hd1106611301_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1106711297_))))
                                      (if (gx#stx-pair? _hd1106611301_)
                                          (let ((_e1107011307_
                                                 (gx#syntax-e _hd1106611301_)))
                                            (let ((_tl1106811314_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1107011307_)))
                                                  (_hd1106911311_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1107011307_))))
                                              (if (gx#stx-pair/null?
                                                   _tl1106211294_)
                                                  (let ((___splice2171521716_
                                                         (gx#syntax-split-splice
                                                          _tl1106211294_
                                                          '0)))
                                                    (let ((_tl1107311320_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2171521716_
                                                              '1)))
                                                          (_target1107111317_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2171521716_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1107311320_)
                                                          (___match2175521756_
                                                           _e1106111277_
                                                           _hd1106011281_
                                                           _tl1105911284_
                                                           _e1106411287_
                                                           _hd1106311291_
                                                           _tl1106211294_
                                                           _e1106711297_
                                                           _hd1106611301_
                                                           _tl1106511304_
                                                           _e1107011307_
                                                           _hd1106911311_
                                                           _tl1106811314_
                                                           ___splice2171521716_
                                                           _target1107111317_
                                                           _tl1107311320_)
                                                          (if (gx#stx-pair?
                                                               _tl1106211294_)
                                                              (let ((_e1111111144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1106211294_)))
                        (let ((_tl1110911151_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1111111144_)))
                              (_hd1111011148_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1111111144_))))
                          (if (gx#stx-null? _tl1110911151_)
                              (___match2180121802_
                               _e1106111277_
                               _hd1106011281_
                               _tl1105911284_
                               _e1106411287_
                               _hd1106311291_
                               _tl1106211294_
                               _e1111111144_
                               _hd1111011148_
                               _tl1110911151_)
                              (let () (declare (not safe)) (_g1105311117_)))))
                      (let () (declare (not safe)) (_g1105311117_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl1106211294_)
                                                      (let ((_e1111111144_
                                                             (gx#syntax-e
                                                              _tl1106211294_)))
                                                        (let ((_tl1110911151_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1111111144_)))
                      (_hd1111011148_
                       (let () (declare (not safe)) (##car _e1111111144_))))
                  (if (gx#stx-null? _tl1110911151_)
                      (___match2180121802_
                       _e1106111277_
                       _hd1106011281_
                       _tl1105911284_
                       _e1106411287_
                       _hd1106311291_
                       _tl1106211294_
                       _e1111111144_
                       _hd1111011148_
                       _tl1110911151_)
                      (let () (declare (not safe)) (_g1105311117_)))))
              (let () (declare (not safe)) (_g1105311117_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl1106211294_)
                                              (let ((___splice2171921720_
                                                     (gx#syntax-split-splice
                                                      _tl1106211294_
                                                      '0)))
                                                (let ((_tl1109411212_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2171921720_
                                                          '1)))
                                                      (_target1109211209_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2171921720_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1109411212_)
                                                      (___match2178121782_
                                                       _e1106111277_
                                                       _hd1106011281_
                                                       _tl1105911284_
                                                       _e1106411287_
                                                       _hd1106311291_
                                                       _tl1106211294_
                                                       _e1106711297_
                                                       _hd1106611301_
                                                       _tl1106511304_
                                                       ___splice2171921720_
                                                       _target1109211209_
                                                       _tl1109411212_)
                                                      (if (gx#stx-pair?
                                                           _tl1106211294_)
                                                          (let ((_e1111111144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1106211294_)))
                    (let ((_tl1110911151_
                           (let () (declare (not safe)) (##cdr _e1111111144_)))
                          (_hd1111011148_
                           (let ()
                             (declare (not safe))
                             (##car _e1111111144_))))
                      (if (gx#stx-null? _tl1110911151_)
                          (___match2180121802_
                           _e1106111277_
                           _hd1106011281_
                           _tl1105911284_
                           _e1106411287_
                           _hd1106311291_
                           _tl1106211294_
                           _e1111111144_
                           _hd1111011148_
                           _tl1110911151_)
                          (let () (declare (not safe)) (_g1105311117_)))))
                  (let () (declare (not safe)) (_g1105311117_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1106211294_)
                                                  (let ((_e1111111144_
                                                         (gx#syntax-e
                                                          _tl1106211294_)))
                                                    (let ((_tl1110911151_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1111111144_)))
                                                          (_hd1111011148_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1111111144_))))
                                                      (if (gx#stx-null?
                                                           _tl1110911151_)
                                                          (___match2180121802_
                                                           _e1106111277_
                                                           _hd1106011281_
                                                           _tl1105911284_
                                                           _e1106411287_
                                                           _hd1106311291_
                                                           _tl1106211294_
                                                           _e1111111144_
                                                           _hd1111011148_
                                                           _tl1110911151_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1105311117_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1105311117_)))))))
                                  (if (gx#stx-pair? _tl1106211294_)
                                      (let ((_e1111111144_
                                             (gx#syntax-e _tl1106211294_)))
                                        (let ((_tl1110911151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1111111144_)))
                                              (_hd1111011148_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1111111144_))))
                                          (if (gx#stx-null? _tl1110911151_)
                                              (___match2180121802_
                                               _e1106111277_
                                               _hd1106011281_
                                               _tl1105911284_
                                               _e1106411287_
                                               _hd1106311291_
                                               _tl1106211294_
                                               _e1111111144_
                                               _hd1111011148_
                                               _tl1110911151_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1105311117_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1105311117_))))))
                          (let () (declare (not safe)) (_g1105311117_)))))
                  (let () (declare (not safe)) (_g1105311117_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_$stx11388_)
        (let* ((_g1139211416_
                (lambda (_g1139311412_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1139311412_)))
               (_g1139111501_
                (lambda (_g1139311420_)
                  (if (gx#stx-pair? _g1139311420_)
                      (let ((_e1139811423_ (gx#syntax-e _g1139311420_)))
                        (let ((_hd1139711427_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1139811423_)))
                              (_tl1139611430_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1139811423_))))
                          (if (gx#stx-pair? _tl1139611430_)
                              (let ((_e1140111433_
                                     (gx#syntax-e _tl1139611430_)))
                                (let ((_hd1140011437_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1140111433_)))
                                      (_tl1139911440_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1140111433_))))
                                  (if (gx#stx-pair/null? _tl1139911440_)
                                      (let ((_g23213_
                                             (gx#syntax-split-splice
                                              _tl1139911440_
                                              '0)))
                                        (begin
                                          (let ((_g23214_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23213_)
                                                       (##vector-length
                                                        _g23213_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23214_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23214_)))
                                          (let ((_target1140211443_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23213_ 0)))
                                                (_tl1140411446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23213_ 1))))
                                            (if (gx#stx-null? _tl1140411446_)
                                                (letrec ((_loop1140511449_
                                                          (lambda (_hd1140311453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses1140911456_)
                    (if (gx#stx-pair? _hd1140311453_)
                        (let ((_e1140611459_ (gx#syntax-e _hd1140311453_)))
                          (let ((_lp-hd1140711463_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1140611459_)))
                                (_lp-tl1140811466_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1140611459_))))
                            (_loop1140511449_
                             _lp-tl1140811466_
                             (cons _lp-hd1140711463_ _clauses1140911456_))))
                        (let ((_clauses1141011469_
                               (reverse _clauses1140911456_)))
                          ((lambda (_L11473_ _L11475_)
                             (if (gx#identifier? _L11475_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _L11475_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (let ((__tmp23215
                                                                (lambda (_g1149211495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1149311498_)
                          (cons _g1149211495_ _g1149311498_))))
                   (declare (not safe))
                   (__foldr1 __tmp23215 '() _L11473_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_g1139211416_ _g1139311420_)))
                           _clauses1141011469_
                           _hd1140011437_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1140511449_
                                                   _target1140211443_
                                                   '()))
                                                (_g1139211416_
                                                 _g1139311420_)))))
                                      (_g1139211416_ _g1139311420_))))
                              (_g1139211416_ _g1139311420_))))
                      (_g1139211416_ _g1139311420_)))))
          (_g1139111501_ _$stx11388_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_$stx11506_)
        (let* ((_g1151011528_
                (lambda (_g1151111524_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1151111524_)))
               (_g1150911583_
                (lambda (_g1151111532_)
                  (if (gx#stx-pair? _g1151111532_)
                      (let ((_e1151611535_ (gx#syntax-e _g1151111532_)))
                        (let ((_hd1151511539_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1151611535_)))
                              (_tl1151411542_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1151611535_))))
                          (if (gx#stx-pair? _tl1151411542_)
                              (let ((_e1151911545_
                                     (gx#syntax-e _tl1151411542_)))
                                (let ((_hd1151811549_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1151911545_)))
                                      (_tl1151711552_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1151911545_))))
                                  (if (gx#stx-pair? _tl1151711552_)
                                      (let ((_e1152211555_
                                             (gx#syntax-e _tl1151711552_)))
                                        (let ((_hd1152111559_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1152211555_)))
                                              (_tl1152011562_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1152211555_))))
                                          (if (gx#stx-null? _tl1152011562_)
                                              ((lambda (_L11565_ _L11567_)
                                                 (if (gx#identifier-list?
                                                      _L11567_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _L11567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L11565_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1151011528_
                                                      _g1151111532_)))
                                               _hd1152111559_
                                               _hd1151811549_)
                                              (_g1151011528_ _g1151111532_))))
                                      (_g1151011528_ _g1151111532_))))
                              (_g1151011528_ _g1151111532_))))
                      (_g1151011528_ _g1151111532_)))))
          (_g1150911583_ _$stx11506_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_$stx11587_)
        (let* ((_g1159111615_
                (lambda (_g1159211611_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1159211611_)))
               (_g1159011700_
                (lambda (_g1159211619_)
                  (if (gx#stx-pair? _g1159211619_)
                      (let ((_e1159711622_ (gx#syntax-e _g1159211619_)))
                        (let ((_hd1159611626_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1159711622_)))
                              (_tl1159511629_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1159711622_))))
                          (if (gx#stx-pair? _tl1159511629_)
                              (let ((_e1160011632_
                                     (gx#syntax-e _tl1159511629_)))
                                (let ((_hd1159911636_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1160011632_)))
                                      (_tl1159811639_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1160011632_))))
                                  (if (gx#stx-pair/null? _tl1159811639_)
                                      (let ((_g23216_
                                             (gx#syntax-split-splice
                                              _tl1159811639_
                                              '0)))
                                        (begin
                                          (let ((_g23217_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23216_)
                                                       (##vector-length
                                                        _g23216_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23217_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23217_)))
                                          (let ((_target1160111642_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23216_ 0)))
                                                (_tl1160311645_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23216_ 1))))
                                            (if (gx#stx-null? _tl1160311645_)
                                                (letrec ((_loop1160411648_
                                                          (lambda (_hd1160211652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause1160811655_)
                    (if (gx#stx-pair? _hd1160211652_)
                        (let ((_e1160511658_ (gx#syntax-e _hd1160211652_)))
                          (let ((_lp-hd1160611662_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1160511658_)))
                                (_lp-tl1160711665_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1160511658_))))
                            (_loop1160411648_
                             _lp-tl1160711665_
                             (cons _lp-hd1160611662_ _clause1160811655_))))
                        (let ((_clause1160911668_
                               (reverse _clause1160811655_)))
                          ((lambda (_L11672_ _L11674_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _L11674_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (let ((__tmp23218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1169111694_ _g1169211697_)
                            (cons _g1169111694_ _g1169211697_))))
                     (declare (not safe))
                     (__foldr1 __tmp23218 '() _L11672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _clause1160911668_
                           _hd1159911636_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1160411648_
                                                   _target1160111642_
                                                   '()))
                                                (_g1159111615_
                                                 _g1159211619_)))))
                                      (_g1159111615_ _g1159211619_))))
                              (_g1159111615_ _g1159211619_))))
                      (_g1159111615_ _g1159211619_)))))
          (_g1159011700_ _$stx11587_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_stx11705_)
        (letrec ((_parse-clauses11708_
                  (lambda (_e14171_ _clauses14173_)
                    (let _lp14175_ ((_rest14178_ _clauses14173_)
                                    (_datums14180_ '())
                                    (_dispatch14181_ '())
                                    (_default14182_ '#f))
                      (let* ((___stx2190021901_ _rest14178_)
                             (_g1418514197_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2190021901_))))
                        (let ((___kont2190321904_
                               (lambda (_L14229_ _L14231_)
                                 (let* ((___stx2180421805_ _L14231_)
                                        (_g1424914322_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2180421805_))))
                                   (let ((___kont2180721808_
                                          (lambda (_L14687_)
                                            (if (gx#stx-null? _L14229_)
                                                (let* ((_g1470214710_
                                                        (lambda (_g1470314706_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1470314706_)))
                                                       (_g1470114729_
                                                        (lambda (_g1470314714_)
                                                          ((lambda (_L14717_)
                                                             (let ()
                                                               (_lp14175_
                                                                '()
                                                                _datums14180_
                                                                _dispatch14181_
                                                                (cons _L14687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L14717_ '())))))
                   _g1470314714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1470114729_ _e14171_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx11705_
                                                 _L14231_))))
                                         (___kont2180921810_
                                          (lambda (_L14627_)
                                            (if (gx#stx-null? _L14229_)
                                                (_lp14175_
                                                 '()
                                                 _datums14180_
                                                 _dispatch14181_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (let ((__tmp23219
                                                              (lambda (_g1464114644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1464214647_)
                        (cons _g1464114644_ _g1464214647_))))
                 (declare (not safe))
                 (__foldr1 __tmp23219 '() _L14627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx11705_
                                                 _L14231_))))
                                         (___kont2181321814_
                                          (lambda (_L14512_ _L14514_)
                                            (if (let ((__tmp23220
                                                       (let ((__tmp23221
                                                              (lambda (_g1453214535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1453314538_)
                        (cons _g1453214535_ _g1453314538_))))
                 (declare (not safe))
                 (__foldr1 __tmp23221 '() _L14514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp23220))
                                                (_lp14175_
                                                 _L14229_
                                                 _datums14180_
                                                 _dispatch14181_
                                                 _default14182_)
                                                (let* ((_g1454114549_
                                                        (lambda (_g1454214545_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1454214545_)))
                                                       (_g1454014576_
                                                        (lambda (_g1454214553_)
                                                          ((lambda (_L14556_)
                                                             (let ()
                                                               (_lp14175_
                                                                _L14229_
                                                                (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp23222
                                          (lambda (_g1456714570_ _g1456814573_)
                                            (cons _g1456714570_
                                                  _g1456814573_))))
                                     (declare (not safe))
                                     (__foldr1 __tmp23222 '() _L14514_)))
                              _datums14180_)
                        (cons (cons _L14512_ (cons _L14556_ '()))
                              _dispatch14181_)
                        _default14182_)))
                   _g1454214553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1454014576_ _e14171_)))))
                                         (___kont2181721818_
                                          (lambda (_L14399_ _L14401_)
                                            (if (let ((__tmp23223
                                                       (let ((__tmp23224
                                                              (lambda (_g1442014423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1442114426_)
                        (cons _g1442014423_ _g1442114426_))))
                 (declare (not safe))
                 (__foldr1 __tmp23224 '() _L14401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp23223))
                                                (_lp14175_
                                                 _L14229_
                                                 _datums14180_
                                                 _dispatch14181_
                                                 _default14182_)
                                                (_lp14175_
                                                 _L14229_
                                                 (cons (map gx#stx-e
                                                            (let ((__tmp23225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1442814431_ _g1442914434_)
                             (cons _g1442814431_ _g1442914434_))))
                      (declare (not safe))
                      (__foldr1 __tmp23225 '() _L14401_)))
               _datums14180_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (let ((__tmp23226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1443614439_ _g1443714442_)
                              (cons _g1443614439_ _g1443714442_))))
                       (declare (not safe))
                       (__foldr1 __tmp23226 '() _L14399_)))
               _dispatch14181_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _default14182_)))))
                                     (let* ((___match2189721898_
                                             (lambda (_e1429814329_
                                                      _hd1429714333_
                                                      _tl1429614336_
                                                      ___splice2181921820_
                                                      _target1429914339_
                                                      _tl1430114342_)
                                               (letrec ((_loop1430214345_
                                                         (lambda (_hd1430014349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1430614352_)
                   (if (gx#stx-pair? _hd1430014349_)
                       (let ((_e1430314355_ (gx#syntax-e _hd1430014349_)))
                         (let ((_lp-tl1430514362_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1430314355_)))
                               (_lp-hd1430414359_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1430314355_))))
                           (_loop1430214345_
                            _lp-tl1430514362_
                            (cons _lp-hd1430414359_ _datum1430614352_))))
                       (let ((_datum1430714365_ (reverse _datum1430614352_)))
                         (if (gx#stx-pair/null? _tl1429614336_)
                             (let ((___splice2182121822_
                                    (gx#syntax-split-splice
                                     _tl1429614336_
                                     '0)))
                               (let ((_tl1431014372_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice2182121822_
                                         '1)))
                                     (_target1430814369_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice2182121822_
                                         '0))))
                                 (if (gx#stx-null? _tl1431014372_)
                                     (letrec ((_loop1431114375_
                                               (lambda (_hd1430914379_
                                                        _body1431514382_)
                                                 (if (gx#stx-pair?
                                                      _hd1430914379_)
                                                     (let ((_e1431214385_
                                                            (gx#syntax-e
                                                             _hd1430914379_)))
                                                       (let ((_lp-tl1431414392_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1431214385_)))
                     (_lp-hd1431314389_
                      (let () (declare (not safe)) (##car _e1431214385_))))
                 (_loop1431114375_
                  _lp-tl1431414392_
                  (cons _lp-hd1431314389_ _body1431514382_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_body1431614395_
                                                            (reverse _body1431514382_)))
                                                       (___kont2181721818_
                                                        _body1431614395_
                                                        _datum1430714365_))))))
                                       (_loop1431114375_
                                        _target1430814369_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_g1424914322_)))))
                             (let ()
                               (declare (not safe))
                               (_g1424914322_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1430214345_
                                                  _target1429914339_
                                                  '()))))
                                            (___match2188321884_
                                             (lambda (_e1427814452_
                                                      _hd1427714456_
                                                      _tl1427614459_
                                                      ___splice2181521816_
                                                      _target1427914462_
                                                      _tl1428114465_)
                                               (letrec ((_loop1428214468_
                                                         (lambda (_hd1428014472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1428614475_)
                   (if (gx#stx-pair? _hd1428014472_)
                       (let ((_e1428314478_ (gx#syntax-e _hd1428014472_)))
                         (let ((_lp-tl1428514485_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1428314478_)))
                               (_lp-hd1428414482_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1428314478_))))
                           (_loop1428214468_
                            _lp-tl1428514485_
                            (cons _lp-hd1428414482_ _datum1428614475_))))
                       (let ((_datum1428714488_ (reverse _datum1428614475_)))
                         (if (gx#stx-pair? _tl1427614459_)
                             (let ((_e1429014492_
                                    (gx#syntax-e _tl1427614459_)))
                               (let ((_tl1428814499_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1429014492_)))
                                     (_hd1428914496_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1429014492_))))
                                 (if (gx#identifier? _hd1428914496_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g23227_|
                                          _hd1428914496_)
                                         (if (gx#stx-pair? _tl1428814499_)
                                             (let ((_e1429314502_
                                                    (gx#syntax-e
                                                     _tl1428814499_)))
                                               (let ((_tl1429114509_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1429314502_)))
                                                     (_hd1429214506_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1429314502_))))
                                                 (if (gx#stx-null?
                                                      _tl1429114509_)
                                                     (___kont2181321814_
                                                      _hd1429214506_
                                                      _datum1428714488_)
                                                     (___match2189721898_
                                                      _e1427814452_
                                                      _hd1427714456_
                                                      _tl1427614459_
                                                      ___splice2181521816_
                                                      _target1427914462_
                                                      _tl1428114465_))))
                                             (___match2189721898_
                                              _e1427814452_
                                              _hd1427714456_
                                              _tl1427614459_
                                              ___splice2181521816_
                                              _target1427914462_
                                              _tl1428114465_))
                                         (___match2189721898_
                                          _e1427814452_
                                          _hd1427714456_
                                          _tl1427614459_
                                          ___splice2181521816_
                                          _target1427914462_
                                          _tl1428114465_))
                                     (___match2189721898_
                                      _e1427814452_
                                      _hd1427714456_
                                      _tl1427614459_
                                      ___splice2181521816_
                                      _target1427914462_
                                      _tl1428114465_))))
                             (___match2189721898_
                              _e1427814452_
                              _hd1427714456_
                              _tl1427614459_
                              ___splice2181521816_
                              _target1427914462_
                              _tl1428114465_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1428214468_
                                                  _target1427914462_
                                                  '()))))
                                            (___match2186921870_
                                             (lambda (_e1426414587_
                                                      _hd1426314591_
                                                      _tl1426214594_
                                                      ___splice2181121812_
                                                      _target1426514597_
                                                      _tl1426714600_)
                                               (letrec ((_loop1426814603_
                                                         (lambda (_hd1426614607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1427214610_)
                   (if (gx#stx-pair? _hd1426614607_)
                       (let ((_e1426914613_ (gx#syntax-e _hd1426614607_)))
                         (let ((_lp-tl1427114620_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1426914613_)))
                               (_lp-hd1427014617_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1426914613_))))
                           (_loop1426814603_
                            _lp-tl1427114620_
                            (cons _lp-hd1427014617_ _body1427214610_))))
                       (let ((_body1427314623_ (reverse _body1427214610_)))
                         (___kont2180921810_ _body1427314623_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1426814603_
                                                  _target1426514597_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx2180421805_)
                                           (let ((_e1425414657_
                                                  (gx#syntax-e
                                                   ___stx2180421805_)))
                                             (let ((_tl1425214664_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1425414657_)))
                                                   (_hd1425314661_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1425414657_))))
                                               (if (gx#identifier?
                                                    _hd1425314661_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g23228_|
                                                        _hd1425314661_)
                                                       (if (gx#stx-pair?
                                                            _tl1425214664_)
                                                           (let ((_e1425714667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1425214664_)))
                     (let ((_tl1425514674_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1425714667_)))
                           (_hd1425614671_
                            (let ()
                              (declare (not safe))
                              (##car _e1425714667_))))
                       (if (gx#identifier? _hd1425614671_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g23229_|
                                _hd1425614671_)
                               (if (gx#stx-pair? _tl1425514674_)
                                   (let ((_e1426014677_
                                          (gx#syntax-e _tl1425514674_)))
                                     (let ((_tl1425814684_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1426014677_)))
                                           (_hd1425914681_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1426014677_))))
                                       (if (gx#stx-null? _tl1425814684_)
                                           (___kont2180721808_ _hd1425914681_)
                                           (if (gx#stx-pair/null?
                                                _tl1425214664_)
                                               (let ((___splice2181121812_
                                                      (gx#syntax-split-splice
                                                       _tl1425214664_
                                                       '0)))
                                                 (let ((_tl1426714600_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2181121812_
                                                           '1)))
                                                       (_target1426514597_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2181121812_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1426714600_)
                                                       (___match2186921870_
                                                        _e1425414657_
                                                        _hd1425314661_
                                                        _tl1425214664_
                                                        ___splice2181121812_
                                                        _target1426514597_
                                                        _tl1426714600_)
                                                       (if (gx#stx-pair/null?
                                                            _hd1425314661_)
                                                           (let ((___splice2181521816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd1425314661_ '0)))
                     (let ((_tl1428114465_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2181521816_ '1)))
                           (_target1427914462_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2181521816_ '0))))
                       (if (gx#stx-null? _tl1428114465_)
                           (___match2188321884_
                            _e1425414657_
                            _hd1425314661_
                            _tl1425214664_
                            ___splice2181521816_
                            _target1427914462_
                            _tl1428114465_)
                           (let () (declare (not safe)) (_g1424914322_)))))
                   (let () (declare (not safe)) (_g1424914322_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _hd1425314661_)
                                                   (let ((___splice2181521816_
                                                          (gx#syntax-split-splice
                                                           _hd1425314661_
                                                           '0)))
                                                     (let ((_tl1428114465_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2181521816_
                                                               '1)))
                                                           (_target1427914462_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2181521816_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1428114465_)
                                                           (___match2188321884_
                                                            _e1425414657_
                                                            _hd1425314661_
                                                            _tl1425214664_
                                                            ___splice2181521816_
                                                            _target1427914462_
                                                            _tl1428114465_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1424914322_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1424914322_)))))))
                                   (if (gx#stx-pair/null? _tl1425214664_)
                                       (let ((___splice2181121812_
                                              (gx#syntax-split-splice
                                               _tl1425214664_
                                               '0)))
                                         (let ((_tl1426714600_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2181121812_
                                                   '1)))
                                               (_target1426514597_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2181121812_
                                                   '0))))
                                           (if (gx#stx-null? _tl1426714600_)
                                               (___match2186921870_
                                                _e1425414657_
                                                _hd1425314661_
                                                _tl1425214664_
                                                ___splice2181121812_
                                                _target1426514597_
                                                _tl1426714600_)
                                               (if (gx#stx-pair/null?
                                                    _hd1425314661_)
                                                   (let ((___splice2181521816_
                                                          (gx#syntax-split-splice
                                                           _hd1425314661_
                                                           '0)))
                                                     (let ((_tl1428114465_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2181521816_
                                                               '1)))
                                                           (_target1427914462_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2181521816_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1428114465_)
                                                           (___match2188321884_
                                                            _e1425414657_
                                                            _hd1425314661_
                                                            _tl1425214664_
                                                            ___splice2181521816_
                                                            _target1427914462_
                                                            _tl1428114465_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1424914322_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1424914322_))))))
                                       (if (gx#stx-pair/null? _hd1425314661_)
                                           (let ((___splice2181521816_
                                                  (gx#syntax-split-splice
                                                   _hd1425314661_
                                                   '0)))
                                             (let ((_tl1428114465_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2181521816_
                                                       '1)))
                                                   (_target1427914462_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2181521816_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1428114465_)
                                                   (___match2188321884_
                                                    _e1425414657_
                                                    _hd1425314661_
                                                    _tl1425214664_
                                                    ___splice2181521816_
                                                    _target1427914462_
                                                    _tl1428114465_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1424914322_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1424914322_)))))
                               (if (gx#stx-pair/null? _tl1425214664_)
                                   (let ((___splice2181121812_
                                          (gx#syntax-split-splice
                                           _tl1425214664_
                                           '0)))
                                     (let ((_tl1426714600_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2181121812_
                                               '1)))
                                           (_target1426514597_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2181121812_
                                               '0))))
                                       (if (gx#stx-null? _tl1426714600_)
                                           (___match2186921870_
                                            _e1425414657_
                                            _hd1425314661_
                                            _tl1425214664_
                                            ___splice2181121812_
                                            _target1426514597_
                                            _tl1426714600_)
                                           (if (gx#stx-pair/null?
                                                _hd1425314661_)
                                               (let ((___splice2181521816_
                                                      (gx#syntax-split-splice
                                                       _hd1425314661_
                                                       '0)))
                                                 (let ((_tl1428114465_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2181521816_
                                                           '1)))
                                                       (_target1427914462_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2181521816_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1428114465_)
                                                       (___match2188321884_
                                                        _e1425414657_
                                                        _hd1425314661_
                                                        _tl1425214664_
                                                        ___splice2181521816_
                                                        _target1427914462_
                                                        _tl1428114465_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_g1424914322_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1424914322_))))))
                                   (if (gx#stx-pair/null? _hd1425314661_)
                                       (let ((___splice2181521816_
                                              (gx#syntax-split-splice
                                               _hd1425314661_
                                               '0)))
                                         (let ((_tl1428114465_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2181521816_
                                                   '1)))
                                               (_target1427914462_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2181521816_
                                                   '0))))
                                           (if (gx#stx-null? _tl1428114465_)
                                               (___match2188321884_
                                                _e1425414657_
                                                _hd1425314661_
                                                _tl1425214664_
                                                ___splice2181521816_
                                                _target1427914462_
                                                _tl1428114465_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1424914322_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1424914322_)))))
                           (if (gx#stx-pair/null? _tl1425214664_)
                               (let ((___splice2181121812_
                                      (gx#syntax-split-splice
                                       _tl1425214664_
                                       '0)))
                                 (let ((_tl1426714600_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice2181121812_
                                           '1)))
                                       (_target1426514597_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice2181121812_
                                           '0))))
                                   (if (gx#stx-null? _tl1426714600_)
                                       (___match2186921870_
                                        _e1425414657_
                                        _hd1425314661_
                                        _tl1425214664_
                                        ___splice2181121812_
                                        _target1426514597_
                                        _tl1426714600_)
                                       (if (gx#stx-pair/null? _hd1425314661_)
                                           (let ((___splice2181521816_
                                                  (gx#syntax-split-splice
                                                   _hd1425314661_
                                                   '0)))
                                             (let ((_tl1428114465_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2181521816_
                                                       '1)))
                                                   (_target1427914462_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2181521816_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1428114465_)
                                                   (___match2188321884_
                                                    _e1425414657_
                                                    _hd1425314661_
                                                    _tl1425214664_
                                                    ___splice2181521816_
                                                    _target1427914462_
                                                    _tl1428114465_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1424914322_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1424914322_))))))
                               (if (gx#stx-pair/null? _hd1425314661_)
                                   (let ((___splice2181521816_
                                          (gx#syntax-split-splice
                                           _hd1425314661_
                                           '0)))
                                     (let ((_tl1428114465_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2181521816_
                                               '1)))
                                           (_target1427914462_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2181521816_
                                               '0))))
                                       (if (gx#stx-null? _tl1428114465_)
                                           (___match2188321884_
                                            _e1425414657_
                                            _hd1425314661_
                                            _tl1425214664_
                                            ___splice2181521816_
                                            _target1427914462_
                                            _tl1428114465_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1424914322_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1424914322_)))))))
                   (if (gx#stx-pair/null? _tl1425214664_)
                       (let ((___splice2181121812_
                              (gx#syntax-split-splice _tl1425214664_ '0)))
                         (let ((_tl1426714600_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice2181121812_ '1)))
                               (_target1426514597_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice2181121812_ '0))))
                           (if (gx#stx-null? _tl1426714600_)
                               (___match2186921870_
                                _e1425414657_
                                _hd1425314661_
                                _tl1425214664_
                                ___splice2181121812_
                                _target1426514597_
                                _tl1426714600_)
                               (if (gx#stx-pair/null? _hd1425314661_)
                                   (let ((___splice2181521816_
                                          (gx#syntax-split-splice
                                           _hd1425314661_
                                           '0)))
                                     (let ((_tl1428114465_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2181521816_
                                               '1)))
                                           (_target1427914462_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2181521816_
                                               '0))))
                                       (if (gx#stx-null? _tl1428114465_)
                                           (___match2188321884_
                                            _e1425414657_
                                            _hd1425314661_
                                            _tl1425214664_
                                            ___splice2181521816_
                                            _target1427914462_
                                            _tl1428114465_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1424914322_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1424914322_))))))
                       (if (gx#stx-pair/null? _hd1425314661_)
                           (let ((___splice2181521816_
                                  (gx#syntax-split-splice _hd1425314661_ '0)))
                             (let ((_tl1428114465_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice2181521816_ '1)))
                                   (_target1427914462_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice2181521816_ '0))))
                               (if (gx#stx-null? _tl1428114465_)
                                   (___match2188321884_
                                    _e1425414657_
                                    _hd1425314661_
                                    _tl1425214664_
                                    ___splice2181521816_
                                    _target1427914462_
                                    _tl1428114465_)
                                   (let ()
                                     (declare (not safe))
                                     (_g1424914322_)))))
                           (let () (declare (not safe)) (_g1424914322_)))))
               (if (gx#stx-pair/null? _hd1425314661_)
                   (let ((___splice2181521816_
                          (gx#syntax-split-splice _hd1425314661_ '0)))
                     (let ((_tl1428114465_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2181521816_ '1)))
                           (_target1427914462_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2181521816_ '0))))
                       (if (gx#stx-null? _tl1428114465_)
                           (___match2188321884_
                            _e1425414657_
                            _hd1425314661_
                            _tl1425214664_
                            ___splice2181521816_
                            _target1427914462_
                            _tl1428114465_)
                           (let () (declare (not safe)) (_g1424914322_)))))
                   (let () (declare (not safe)) (_g1424914322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1425314661_)
                                                       (let ((___splice2181521816_
                                                              (gx#syntax-split-splice
                                                               _hd1425314661_
                                                               '0)))
                                                         (let ((_tl1428114465_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice2181521816_ '1)))
                       (_target1427914462_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice2181521816_ '0))))
                   (if (gx#stx-null? _tl1428114465_)
                       (___match2188321884_
                        _e1425414657_
                        _hd1425314661_
                        _tl1425214664_
                        ___splice2181521816_
                        _target1427914462_
                        _tl1428114465_)
                       (let () (declare (not safe)) (_g1424914322_)))))
               (let () (declare (not safe)) (_g1424914322_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g1424914322_))))))))
                              (___kont2190521906_
                               (lambda ()
                                 (_check-duplicate-datums11710_ _datums14180_)
                                 (values (reverse _datums14180_)
                                         (reverse _dispatch14181_)
                                         (let ((_$e14208_ _default14182_))
                                           (if _$e14208_
                                               _$e14208_
                                               '#!void))))))
                          (let ((_g1418414212_
                                 (lambda ()
                                   (if (gx#stx-null? ___stx2190021901_)
                                       (___kont2190521906_)
                                       (let ()
                                         (declare (not safe))
                                         (_g1418514197_))))))
                            (if (gx#stx-pair? ___stx2190021901_)
                                (let ((_e1419114219_
                                       (gx#syntax-e ___stx2190021901_)))
                                  (let ((_tl1418914226_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1419114219_)))
                                        (_hd1419014223_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1419114219_))))
                                    (___kont2190321904_
                                     _tl1418914226_
                                     _hd1419014223_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1418414212_)))))))))
                 (_check-duplicate-datums11710_
                  (lambda (_datums14159_)
                    (let ((_ht14162_
                           (let () (declare (not safe)) (make-hash-table))))
                      (for-each
                       (lambda (_lst14165_)
                         (for-each
                          (lambda (_datum14168_)
                            (if (let ()
                                  (declare (not safe))
                                  (hash-get _ht14162_ _datum14168_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx11705_
                                 _datum14168_)
                                (let ()
                                  (declare (not safe))
                                  (hash-put! _ht14162_ _datum14168_ '#t))))
                          _lst14165_))
                       _datums14159_))))
                 (_count-datums11711_
                  (lambda (_datums14152_)
                    (let ((__tmp23230
                           (lambda (_lst14155_ _r14157_)
                             (+ (length _lst14155_) _r14157_))))
                      (declare (not safe))
                      (__foldl1 __tmp23230 '0 _datums14152_))))
                 (_symbolic-datums?11712_
                  (lambda (_datums14146_)
                    (let ((__tmp23231
                           (lambda (_lst14149_)
                             (let ()
                               (declare (not safe))
                               (__andmap1 symbol? _lst14149_)))))
                      (declare (not safe))
                      (__andmap1 __tmp23231 _datums14146_))))
                 (_char-datums?11713_
                  (lambda (_datums14140_)
                    (let ((__tmp23232
                           (lambda (_lst14143_)
                             (let ()
                               (declare (not safe))
                               (__andmap1 char? _lst14143_)))))
                      (declare (not safe))
                      (__andmap1 __tmp23232 _datums14140_))))
                 (_fixnum-datums?11714_
                  (lambda (_datums14134_)
                    (let ((__tmp23233
                           (lambda (_lst14137_)
                             (let ()
                               (declare (not safe))
                               (__andmap1 fixnum? _lst14137_)))))
                      (declare (not safe))
                      (__andmap1 __tmp23233 _datums14134_))))
                 (_eq-datums?11715_
                  (lambda (_datums14117_)
                    (let ((__tmp23234
                           (lambda (_lst14120_)
                             (let ((__tmp23235
                                    (lambda (_x14123_)
                                      (let ((_$e14126_
                                             (let ()
                                               (declare (not safe))
                                               (symbol? _x14123_))))
                                        (if _$e14126_
                                            _$e14126_
                                            (let ((_$e14130_
                                                   (let ()
                                                     (declare (not safe))
                                                     (keyword? _x14123_))))
                                              (if _$e14130_
                                                  _$e14130_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__immediate?
                                                     _x14123_)))))))))
                               (declare (not safe))
                               (__andmap1 __tmp23235 _lst14120_)))))
                      (declare (not safe))
                      (__andmap1 __tmp23234 _datums14117_))))
                 (_generate-simple-case11716_
                  (lambda (_e13881_
                           _datums13883_
                           _dispatch13884_
                           _default13885_)
                    (let* ((_g1388713895_
                            (lambda (_g1388813891_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1388813891_)))
                           (_g1388614113_
                            (lambda (_g1388813899_)
                              ((lambda (_L13902_)
                                 (let ()
                                   (let _recur13914_ ((_datums13917_
                                                       _datums13883_)
                                                      (_dispatch13919_
                                                       _dispatch13884_))
                                     (let* ((___stx2191821919_ _datums13917_)
                                            (_g1392213943_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx2191821919_))))
                                       (let ((___kont2192121922_
                                              (lambda (_L14001_ _L14003_)
                                                (let* ((_g1402314035_
                                                        (lambda (_g1402414031_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1402414031_)))
                                                       (_g1402214105_
                                                        (lambda (_g1402414039_)
                                                          (if (gx#stx-pair?
                                                               _g1402414039_)
                                                              (let ((_e1402914042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g1402414039_)))
                        (let ((_hd1402814046_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1402914042_)))
                              (_tl1402714049_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1402914042_))))
                          ((lambda (_L14052_ _L14054_)
                             (let* ((_g1406614074_
                                     (lambda (_g1406714070_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g1406714070_)))
                                    (_g1406514101_
                                     (lambda (_g1406714078_)
                                       ((lambda (_L14081_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'or)
                                                              (let ((__tmp23236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1409214095_ _g1409314098_)
                               (cons (cons (gx#datum->syntax '#f '~case-test)
                                           (cons _g1409214095_
                                                 (cons _L13902_ '())))
                                     _g1409314098_))))
                        (declare (not safe))
                        (__foldr1 __tmp23236 '() _L14003_)))
                (cons _L14054_ (cons _L14081_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g1406714078_))))
                               (_g1406514101_
                                (_recur13914_ _L14001_ _L14052_))))
                           _tl1402714049_
                           _hd1402814046_)))
                      (_g1402314035_ _g1402414039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1402214105_
                                                   _dispatch13919_))))
                                             (___kont2192521926_
                                              (lambda () _default13885_)))
                                         (let ((___match2194121942_
                                                (lambda (_e1392813961_
                                                         _hd1392713965_
                                                         _tl1392613968_
                                                         ___splice2192321924_
                                                         _target1392913971_
                                                         _tl1393113974_)
                                                  (letrec ((_loop1393213977_
                                                            (lambda (_hd1393013981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _datum1393613984_)
                      (if (gx#stx-pair? _hd1393013981_)
                          (let ((_e1393313987_ (gx#syntax-e _hd1393013981_)))
                            (let ((_lp-tl1393513994_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1393313987_)))
                                  (_lp-hd1393413991_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1393313987_))))
                              (_loop1393213977_
                               _lp-tl1393513994_
                               (cons _lp-hd1393413991_ _datum1393613984_))))
                          (let ((_datum1393713997_
                                 (reverse _datum1393613984_)))
                            (___kont2192121922_
                             _tl1392613968_
                             _datum1393713997_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1393213977_
                                                     _target1392913971_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx2191821919_)
                                               (let ((_e1392813961_
                                                      (gx#syntax-e
                                                       ___stx2191821919_)))
                                                 (let ((_tl1392613968_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1392813961_)))
                                                       (_hd1392713965_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1392813961_))))
                                                   (if (gx#stx-pair/null?
                                                        _hd1392713965_)
                                                       (let ((___splice2192321924_
                                                              (gx#syntax-split-splice
                                                               _hd1392713965_
                                                               '0)))
                                                         (let ((_tl1393113974_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice2192321924_ '1)))
                       (_target1392913971_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice2192321924_ '0))))
                   (if (gx#stx-null? _tl1393113974_)
                       (___match2194121942_
                        _e1392813961_
                        _hd1392713965_
                        _tl1392613968_
                        ___splice2192321924_
                        _target1392913971_
                        _tl1393113974_)
                       (___kont2192521926_))))
               (___kont2192521926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2192521926_))))))))
                               _g1388813899_))))
                      (_g1388614113_ _e13881_))))
                 (_datum-dispatch-index11717_
                  (lambda (_datums13753_)
                    (let _lp13756_ ((_rest13759_ _datums13753_)
                                    (_ix13761_ '0)
                                    (_r13762_ '()))
                      (let* ((___stx2194421945_ _rest13759_)
                             (_g1376513786_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2194421945_))))
                        (let ((___kont2194721948_
                               (lambda (_L13844_ _L13846_)
                                 (_lp13756_
                                  _L13844_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _ix13761_ '1))
                                  (let ((__tmp23239
                                         (lambda (_x13865_ _r13867_)
                                           (cons (cons _x13865_ _ix13761_)
                                                 _r13867_)))
                                        (__tmp23237
                                         (let ((__tmp23238
                                                (lambda (_g1386813871_
                                                         _g1386913874_)
                                                  (cons _g1386813871_
                                                        _g1386913874_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp23238
                                            '()
                                            _L13846_))))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp23239
                                     _r13762_
                                     __tmp23237)))))
                              (___kont2195121952_ (lambda () _r13762_)))
                          (let ((___match2196721968_
                                 (lambda (_e1377113804_
                                          _hd1377013808_
                                          _tl1376913811_
                                          ___splice2194921950_
                                          _target1377213814_
                                          _tl1377413817_)
                                   (letrec ((_loop1377513820_
                                             (lambda (_hd1377313824_
                                                      _datum1377913827_)
                                               (if (gx#stx-pair?
                                                    _hd1377313824_)
                                                   (let ((_e1377613830_
                                                          (gx#syntax-e
                                                           _hd1377313824_)))
                                                     (let ((_lp-tl1377813837_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1377613830_)))
                                                           (_lp-hd1377713834_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1377613830_))))
                                                       (_loop1377513820_
                                                        _lp-tl1377813837_
                                                        (cons _lp-hd1377713834_
                                                              _datum1377913827_))))
                                                   (let ((_datum1378013840_
                                                          (reverse _datum1377913827_)))
                                                     (___kont2194721948_
                                                      _tl1376913811_
                                                      _datum1378013840_))))))
                                     (_loop1377513820_
                                      _target1377213814_
                                      '())))))
                            (if (gx#stx-pair? ___stx2194421945_)
                                (let ((_e1377113804_
                                       (gx#syntax-e ___stx2194421945_)))
                                  (let ((_tl1376913811_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1377113804_)))
                                        (_hd1377013808_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1377113804_))))
                                    (if (gx#stx-pair/null? _hd1377013808_)
                                        (let ((___splice2194921950_
                                               (gx#syntax-split-splice
                                                _hd1377013808_
                                                '0)))
                                          (let ((_tl1377413817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2194921950_
                                                    '1)))
                                                (_target1377213814_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2194921950_
                                                    '0))))
                                            (if (gx#stx-null? _tl1377413817_)
                                                (___match2196721968_
                                                 _e1377113804_
                                                 _hd1377013808_
                                                 _tl1376913811_
                                                 ___splice2194921950_
                                                 _target1377213814_
                                                 _tl1377413817_)
                                                (___kont2195121952_))))
                                        (___kont2195121952_))))
                                (___kont2195121952_))))))))
                 (_duplicate-indexes?11718_
                  (lambda (_xs13734_)
                    (let ((_ht13737_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (let _lp13740_ ((_rest13743_ _xs13734_))
                        (if (let () (declare (not safe)) (pair? _rest13743_))
                            (let* ((_ix13746_ (car _rest13743_))
                                   (_$e13749_
                                    (let ()
                                      (declare (not safe))
                                      (hash-get _ht13737_ _ix13746_))))
                              (if _$e13749_
                                  _$e13749_
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (hash-put! _ht13737_ _ix13746_ '#t))
                                    (_lp13740_ (cdr _rest13743_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table11719_
                  (lambda (_indexes13703_ _hash-e13705_)
                    (let _lp13707_ ((_len13710_
                                     (* '2 (length _indexes13703_))))
                      (let* ((_hs13716_
                              (map (lambda (_x13713_)
                                     (_hash-e13705_ (car _x13713_)))
                                   _indexes13703_))
                             (_xs13722_
                              (map (lambda (_h13719_)
                                     (fxmodulo _h13719_ _len13710_))
                                   _hs13716_)))
                        (if (_duplicate-indexes?11718_ _xs13722_)
                            (if (< _len13710_ '131072)
                                (_lp13707_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _len13710_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx11705_
                                 _indexes13703_))
                            (let ((_tab13727_ (make-vector _len13710_ '#f)))
                              (for-each
                               (lambda (_entry13730_ _x13732_)
                                 (vector-set!
                                  _tab13727_
                                  _x13732_
                                  _entry13730_))
                               _indexes13703_
                               _xs13722_)
                              _tab13727_))))))
                 (_generate-symbolic-dispatch11720_
                  (lambda (_e13306_
                           _datums13308_
                           _dispatch13309_
                           _default13310_)
                    (let* ((_indexes13312_
                            (_datum-dispatch-index11717_ _datums13308_))
                           (_tab13315_
                            (_generate-hash-dispatch-table11719_
                             _indexes13312_
                             symbol-hash)))
                      (if (= (length _dispatch13309_) '1)
                          (let* ((_tab13323_
                                  (vector-map
                                   (lambda (_x13320_)
                                     (if _x13320_ (car _x13320_) '#f))
                                   _tab13315_))
                                 (_g1332613364_
                                  (lambda (_g1332713360_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1332713360_)))
                                 (_g1332513495_
                                  (lambda (_g1332713368_)
                                    (if (gx#stx-pair? _g1332713368_)
                                        (let ((_e1333713371_
                                               (gx#syntax-e _g1332713368_)))
                                          (let ((_hd1333613375_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1333713371_)))
                                                (_tl1333513378_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1333713371_))))
                                            (if (gx#stx-pair? _tl1333513378_)
                                                (let ((_e1334013381_
                                                       (gx#syntax-e
                                                        _tl1333513378_)))
                                                  (let ((_hd1333913385_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1334013381_)))
                                                        (_tl1333813388_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1334013381_))))
                                                    (if (gx#stx-pair?
                                                         _tl1333813388_)
                                                        (let ((_e1334313391_
                                                               (gx#syntax-e
                                                                _tl1333813388_)))
                                                          (let ((_hd1334213395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1334313391_)))
                        (_tl1334113398_
                         (let () (declare (not safe)) (##cdr _e1334313391_))))
                    (if (gx#stx-pair? _tl1334113398_)
                        (let ((_e1334613401_ (gx#syntax-e _tl1334113398_)))
                          (let ((_hd1334513405_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1334613401_)))
                                (_tl1334413408_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1334613401_))))
                            (if (gx#stx-pair? _hd1334513405_)
                                (let ((_e1334913411_
                                       (gx#syntax-e _hd1334513405_)))
                                  (let ((_hd1334813415_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1334913411_)))
                                        (_tl1334713418_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1334913411_))))
                                    (if (gx#stx-null? _tl1334713418_)
                                        (if (gx#stx-pair? _tl1334413408_)
                                            (let ((_e1335213421_
                                                   (gx#syntax-e
                                                    _tl1334413408_)))
                                              (let ((_hd1335113425_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1335213421_)))
                                                    (_tl1335013428_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1335213421_))))
                                                (if (gx#stx-pair?
                                                     _tl1335013428_)
                                                    (let ((_e1335513431_
                                                           (gx#syntax-e
                                                            _tl1335013428_)))
                                                      (let ((_hd1335413435_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1335513431_)))
                    (_tl1335313438_
                     (let () (declare (not safe)) (##cdr _e1335513431_))))
                (if (gx#stx-pair? _tl1335313438_)
                    (let ((_e1335813441_ (gx#syntax-e _tl1335313438_)))
                      (let ((_hd1335713445_
                             (let ()
                               (declare (not safe))
                               (##car _e1335813441_)))
                            (_tl1335613448_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1335813441_))))
                        (if (gx#stx-null? _tl1335613448_)
                            ((lambda (_L13451_
                                      _L13453_
                                      _L13454_
                                      _L13455_
                                      _L13456_
                                      _L13457_
                                      _L13458_)
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L13457_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '() (cons _L13454_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L13456_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13453_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'symbol?)
                             (cons _L13458_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let*)
                                   (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##symbol-hash)
                         (cons _L13458_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##fxmodulo)
                               (cons (gx#datum->syntax '#f 'h)
                                     (cons _L13451_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'q)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _L13456_
                                           (cons (gx#datum->syntax '#f 'ix)
                                                 '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'eq?)
                         (cons (gx#datum->syntax '#f 'q) (cons _L13458_ '())))
                   (cons _L13455_ (cons (cons _L13457_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons _L13457_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))
                             _hd1335713445_
                             _hd1335413435_
                             _hd1335113425_
                             _hd1334813415_
                             _hd1334213395_
                             _hd1333913385_
                             _hd1333613375_)
                            (_g1332613364_ _g1332713368_))))
                    (_g1332613364_ _g1332713368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1332613364_
                                                     _g1332713368_))))
                                            (_g1332613364_ _g1332713368_))
                                        (_g1332613364_ _g1332713368_))))
                                (_g1332613364_ _g1332713368_))))
                        (_g1332613364_ _g1332713368_))))
                (_g1332613364_ _g1332713368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1332613364_
                                                 _g1332713368_))))
                                        (_g1332613364_ _g1332713368_)))))
                            (_g1332513495_
                             (list _e13306_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch13309_
                                   _default13310_
                                   _tab13323_
                                   (vector-length _tab13323_))))
                          (let* ((_g1349913543_
                                  (lambda (_g1350013539_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1350013539_)))
                                 (_g1349813699_
                                  (lambda (_g1350013547_)
                                    (if (gx#stx-pair? _g1350013547_)
                                        (let ((_e1351013550_
                                               (gx#syntax-e _g1350013547_)))
                                          (let ((_hd1350913554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1351013550_)))
                                                (_tl1350813557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1351013550_))))
                                            (if (gx#stx-pair? _tl1350813557_)
                                                (let ((_e1351313560_
                                                       (gx#syntax-e
                                                        _tl1350813557_)))
                                                  (let ((_hd1351213564_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1351313560_)))
                                                        (_tl1351113567_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1351313560_))))
                                                    (if (gx#stx-pair?
                                                         _tl1351113567_)
                                                        (let ((_e1351613570_
                                                               (gx#syntax-e
                                                                _tl1351113567_)))
                                                          (let ((_hd1351513574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1351613570_)))
                        (_tl1351413577_
                         (let () (declare (not safe)) (##cdr _e1351613570_))))
                    (if (gx#stx-pair? _tl1351413577_)
                        (let ((_e1351913580_ (gx#syntax-e _tl1351413577_)))
                          (let ((_hd1351813584_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1351913580_)))
                                (_tl1351713587_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1351913580_))))
                            (if (gx#stx-pair/null? _hd1351813584_)
                                (let ((_g23240_
                                       (gx#syntax-split-splice
                                        _hd1351813584_
                                        '0)))
                                  (begin
                                    (let ((_g23241_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g23240_)
                                                 (##vector-length _g23240_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g23241_ 2)))
                                          (error "Context expects 2 values"
                                                 _g23241_)))
                                    (let ((_target1352013590_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g23240_ 0)))
                                          (_tl1352213593_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g23240_ 1))))
                                      (if (gx#stx-null? _tl1352213593_)
                                          (letrec ((_loop1352313596_
                                                    (lambda (_hd1352113600_
                                                             _dispatch1352713603_)
                                                      (if (gx#stx-pair?
                                                           _hd1352113600_)
                                                          (let ((_e1352413606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1352113600_)))
                    (let ((_lp-hd1352513610_
                           (let () (declare (not safe)) (##car _e1352413606_)))
                          (_lp-tl1352613613_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1352413606_))))
                      (_loop1352313596_
                       _lp-tl1352613613_
                       (cons _lp-hd1352513610_ _dispatch1352713603_))))
                  (let ((_dispatch1352813616_ (reverse _dispatch1352713603_)))
                    (if (gx#stx-pair? _tl1351713587_)
                        (let ((_e1353113620_ (gx#syntax-e _tl1351713587_)))
                          (let ((_hd1353013624_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1353113620_)))
                                (_tl1352913627_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1353113620_))))
                            (if (gx#stx-pair? _tl1352913627_)
                                (let ((_e1353413630_
                                       (gx#syntax-e _tl1352913627_)))
                                  (let ((_hd1353313634_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1353413630_)))
                                        (_tl1353213637_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1353413630_))))
                                    (if (gx#stx-pair? _tl1353213637_)
                                        (let ((_e1353713640_
                                               (gx#syntax-e _tl1353213637_)))
                                          (let ((_hd1353613644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1353713640_)))
                                                (_tl1353513647_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1353713640_))))
                                            (if (gx#stx-null? _tl1353513647_)
                                                ((lambda (_L13650_
                                                          _L13652_
                                                          _L13653_
                                                          _L13654_
                                                          _L13655_
                                                          _L13656_
                                                          _L13657_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L13656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons _L13653_ '())))
                                           '()))
                               (cons (cons _L13655_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L13652_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'symbol?)
                                                 (cons _L13657_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'h)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##symbol-hash)
                                             (cons _L13657_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L13650_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L13655_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'eq?)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##car)
                                   (cons (gx#datum->syntax '#f 'q) '()))
                             (cons _L13657_ '())))
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'x)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##cdr)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'q)
                                                           '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch)
                                               (cons (gx#datum->syntax '#f 'x)
                                                     (let ((__tmp23242
                                                            (lambda (_g1369013693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1369113696_)
                      (cons _g1369013693_ _g1369113696_))))
               (declare (not safe))
               (__foldr1 __tmp23242 '() _L13654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L13656_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L13656_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L13656_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1353613644_
                                                 _hd1353313634_
                                                 _hd1353013624_
                                                 _dispatch1352813616_
                                                 _hd1351513574_
                                                 _hd1351213564_
                                                 _hd1350913554_)
                                                (_g1349913543_
                                                 _g1350013547_))))
                                        (_g1349913543_ _g1350013547_))))
                                (_g1349913543_ _g1350013547_))))
                        (_g1349913543_ _g1350013547_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1352313596_
                                             _target1352013590_
                                             '()))
                                          (_g1349913543_ _g1350013547_)))))
                                (_g1349913543_ _g1350013547_))))
                        (_g1349913543_ _g1350013547_))))
                (_g1349913543_ _g1350013547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1349913543_
                                                 _g1350013547_))))
                                        (_g1349913543_ _g1350013547_)))))
                            (_g1349813699_
                             (list _e13306_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch13309_
                                   _default13310_
                                   _tab13315_
                                   (vector-length _tab13315_))))))))
                 (_max-char11721_
                  (lambda (_datums13295_)
                    (let ((__tmp23243
                           (lambda (_lst13298_ _r13300_)
                             (let ((__tmp23244
                                    (lambda (_char13302_ _r13304_)
                                      (max (char->integer _char13302_)
                                           _r13304_))))
                               (declare (not safe))
                               (__foldl1 __tmp23244 _r13300_ _lst13298_)))))
                      (declare (not safe))
                      (__foldl1 __tmp23243 '0 _datums13295_))))
                 (_generate-char-dispatch-table11722_
                  (lambda (_indexes13274_)
                    (let* ((_ixs13280_
                            (map (lambda (_x13277_)
                                   (char->integer (car _x13277_)))
                                 _indexes13274_))
                           (_len13283_
                            (let ((__tmp23245
                                   (let ()
                                     (declare (not safe))
                                     (__foldl1 max '0 _ixs13280_))))
                              (declare (not safe))
                              (##fx+ __tmp23245 '1)))
                           (_vec13286_ (make-vector _len13283_ '#f)))
                      (for-each
                       (lambda (_entry13291_ _x13293_)
                         (vector-set! _vec13286_ _x13293_ (cdr _entry13291_)))
                       _indexes13274_
                       _ixs13280_)
                      _vec13286_)))
                 (_simple-char-range?11723_
                  (lambda (_tab13250_)
                    (let ((_end13253_ (vector-length _tab13250_)))
                      (let _lp13256_ ((_i13259_ '0))
                        (let ((_ix13262_ (vector-ref _tab13250_ _i13259_)))
                          (if _ix13262_
                              (let _lp213265_ ((_i13268_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _i13259_ '1))))
                                (if (fx< _i13268_ _end13253_)
                                    (let ((_ix*13271_
                                           (vector-ref _tab13250_ _i13268_)))
                                      (if (eq? _ix13262_ _ix*13271_)
                                          (_lp213265_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _i13268_ '1)))
                                          '#f))
                                    '#t))
                              (_lp13256_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i13259_ '1)))))))))
                 (_char-range-start11724_
                  (lambda (_tab13241_)
                    (let _lp13244_ ((_i13247_ '0))
                      (if (vector-ref _tab13241_ _i13247_)
                          _i13247_
                          (_lp13244_
                           (let ()
                             (declare (not safe))
                             (##fx+ _i13247_ '1)))))))
                 (_generate-char-dispatch11725_
                  (lambda (_e12864_
                           _datums12866_
                           _dispatch12867_
                           _default12868_)
                    (if (< (_max-char11721_ _datums12866_) '128)
                        (let* ((_indexes12870_
                                (_datum-dispatch-index11717_ _datums12866_))
                               (_tab12873_
                                (_generate-char-dispatch-table11722_
                                 _indexes12870_)))
                          (if (_simple-char-range?11723_ _tab12873_)
                              (let ((_start12878_
                                     (_char-range-start11724_ _tab12873_))
                                    (_end12880_ (vector-length _tab12873_)))
                                (let* ((_g1288212916_
                                        (lambda (_g1288312912_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1288312912_)))
                                       (_g1288113033_
                                        (lambda (_g1288312920_)
                                          (if (gx#stx-pair? _g1288312920_)
                                              (let ((_e1289212923_
                                                     (gx#syntax-e
                                                      _g1288312920_)))
                                                (let ((_hd1289112927_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1289212923_)))
                                                      (_tl1289012930_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1289212923_))))
                                                  (if (gx#stx-pair?
                                                       _tl1289012930_)
                                                      (let ((_e1289512933_
                                                             (gx#syntax-e
                                                              _tl1289012930_)))
                                                        (let ((_hd1289412937_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1289512933_)))
                      (_tl1289312940_
                       (let () (declare (not safe)) (##cdr _e1289512933_))))
                  (if (gx#stx-pair? _tl1289312940_)
                      (let ((_e1289812943_ (gx#syntax-e _tl1289312940_)))
                        (let ((_hd1289712947_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1289812943_)))
                              (_tl1289612950_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1289812943_))))
                          (if (gx#stx-pair? _hd1289712947_)
                              (let ((_e1290112953_
                                     (gx#syntax-e _hd1289712947_)))
                                (let ((_hd1290012957_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1290112953_)))
                                      (_tl1289912960_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1290112953_))))
                                  (if (gx#stx-null? _tl1289912960_)
                                      (if (gx#stx-pair? _tl1289612950_)
                                          (let ((_e1290412963_
                                                 (gx#syntax-e _tl1289612950_)))
                                            (let ((_hd1290312967_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1290412963_)))
                                                  (_tl1290212970_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1290412963_))))
                                              (if (gx#stx-pair? _tl1290212970_)
                                                  (let ((_e1290712973_
                                                         (gx#syntax-e
                                                          _tl1290212970_)))
                                                    (let ((_hd1290612977_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1290712973_)))
                                                          (_tl1290512980_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1290712973_))))
                                                      (if (gx#stx-pair?
                                                           _tl1290512980_)
                                                          (let ((_e1291012983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1290512980_)))
                    (let ((_hd1290912987_
                           (let () (declare (not safe)) (##car _e1291012983_)))
                          (_tl1290812990_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1291012983_))))
                      (if (gx#stx-null? _tl1290812990_)
                          ((lambda (_L12993_
                                    _L12995_
                                    _L12996_
                                    _L12997_
                                    _L12998_
                                    _L12999_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons _L12998_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L12996_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'char?)
                           (cons _L12999_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (gx#datum->syntax '#f 'ix)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##char->integer)
                                                         (cons _L12999_ '()))
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'and)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##fx>=)
                                   (cons (gx#datum->syntax '#f 'ix)
                                         (cons _L12995_ '())))
                             (cons (cons (gx#datum->syntax '#f '##fx<)
                                         (cons (gx#datum->syntax '#f 'ix)
                                               (cons _L12993_ '())))
                                   '())))
                 (cons _L12997_ (cons (cons _L12998_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L12998_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd1290912987_
                           _hd1290612977_
                           _hd1290312967_
                           _hd1290012957_
                           _hd1289412937_
                           _hd1289112927_)
                          (_g1288212916_ _g1288312920_))))
                  (_g1288212916_ _g1288312920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1288212916_
                                                   _g1288312920_))))
                                          (_g1288212916_ _g1288312920_))
                                      (_g1288212916_ _g1288312920_))))
                              (_g1288212916_ _g1288312920_))))
                      (_g1288212916_ _g1288312920_))))
              (_g1288212916_ _g1288312920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1288212916_ _g1288312920_)))))
                                  (_g1288113033_
                                   (list _e12864_
                                         (gx#genident 'default)
                                         _dispatch12867_
                                         _default12868_
                                         _start12878_
                                         _end12880_))))
                              (let* ((_g1303713081_
                                      (lambda (_g1303813077_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1303813077_)))
                                     (_g1303613237_
                                      (lambda (_g1303813085_)
                                        (if (gx#stx-pair? _g1303813085_)
                                            (let ((_e1304813088_
                                                   (gx#syntax-e
                                                    _g1303813085_)))
                                              (let ((_hd1304713092_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1304813088_)))
                                                    (_tl1304613095_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1304813088_))))
                                                (if (gx#stx-pair?
                                                     _tl1304613095_)
                                                    (let ((_e1305113098_
                                                           (gx#syntax-e
                                                            _tl1304613095_)))
                                                      (let ((_hd1305013102_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1305113098_)))
                    (_tl1304913105_
                     (let () (declare (not safe)) (##cdr _e1305113098_))))
                (if (gx#stx-pair? _tl1304913105_)
                    (let ((_e1305413108_ (gx#syntax-e _tl1304913105_)))
                      (let ((_hd1305313112_
                             (let ()
                               (declare (not safe))
                               (##car _e1305413108_)))
                            (_tl1305213115_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1305413108_))))
                        (if (gx#stx-pair? _tl1305213115_)
                            (let ((_e1305713118_ (gx#syntax-e _tl1305213115_)))
                              (let ((_hd1305613122_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1305713118_)))
                                    (_tl1305513125_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1305713118_))))
                                (if (gx#stx-pair/null? _hd1305613122_)
                                    (let ((_g23246_
                                           (gx#syntax-split-splice
                                            _hd1305613122_
                                            '0)))
                                      (begin
                                        (let ((_g23247_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g23246_)
                                                     (##vector-length _g23246_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g23247_ 2)))
                                              (error "Context expects 2 values"
                                                     _g23247_)))
                                        (let ((_target1305813128_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g23246_ 0)))
                                              (_tl1306013131_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g23246_ 1))))
                                          (if (gx#stx-null? _tl1306013131_)
                                              (letrec ((_loop1306113134_
                                                        (lambda (_hd1305913138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1306513141_)
                  (if (gx#stx-pair? _hd1305913138_)
                      (let ((_e1306213144_ (gx#syntax-e _hd1305913138_)))
                        (let ((_lp-hd1306313148_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1306213144_)))
                              (_lp-tl1306413151_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1306213144_))))
                          (_loop1306113134_
                           _lp-tl1306413151_
                           (cons _lp-hd1306313148_ _dispatch1306513141_))))
                      (let ((_dispatch1306613154_
                             (reverse _dispatch1306513141_)))
                        (if (gx#stx-pair? _tl1305513125_)
                            (let ((_e1306913158_ (gx#syntax-e _tl1305513125_)))
                              (let ((_hd1306813162_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1306913158_)))
                                    (_tl1306713165_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1306913158_))))
                                (if (gx#stx-pair? _tl1306713165_)
                                    (let ((_e1307213168_
                                           (gx#syntax-e _tl1306713165_)))
                                      (let ((_hd1307113172_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1307213168_)))
                                            (_tl1307013175_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1307213168_))))
                                        (if (gx#stx-pair? _tl1307013175_)
                                            (let ((_e1307513178_
                                                   (gx#syntax-e
                                                    _tl1307013175_)))
                                              (let ((_hd1307413182_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1307513178_)))
                                                    (_tl1307313185_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1307513178_))))
                                                (if (gx#stx-null?
                                                     _tl1307313185_)
                                                    ((lambda (_L13188_
                                                              _L13190_
                                                              _L13191_
                                                              _L13192_
                                                              _L13193_
                                                              _L13194_
                                                              _L13195_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L13194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L13191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons _L13193_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L13190_ '()))
                                                     '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'char?)
                                                     (cons _L13195_ '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'ix)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##char->integer)
                                           (cons _L13195_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f '##fx<)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ix)
                                                       (cons _L13188_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'x)
                           (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                       (cons _L13193_
                                             (cons (gx#datum->syntax '#f 'ix)
                                                   '())))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'x)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '~case-dispatch)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'x)
                                                         (let ((__tmp23248
                                                                (lambda (_g1322813231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1322913234_)
                          (cons _g1322813231_ _g1322913234_))))
                   (declare (not safe))
                   (__foldr1 __tmp23248 '() _L13192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L13194_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L13194_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L13194_ '())
                                                           '()))))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1307413182_
                                                     _hd1307113172_
                                                     _hd1306813162_
                                                     _dispatch1306613154_
                                                     _hd1305313112_
                                                     _hd1305013102_
                                                     _hd1304713092_)
                                                    (_g1303713081_
                                                     _g1303813085_))))
                                            (_g1303713081_ _g1303813085_))))
                                    (_g1303713081_ _g1303813085_))))
                            (_g1303713081_ _g1303813085_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1306113134_
                                                 _target1305813128_
                                                 '()))
                                              (_g1303713081_ _g1303813085_)))))
                                    (_g1303713081_ _g1303813085_))))
                            (_g1303713081_ _g1303813085_))))
                    (_g1303713081_ _g1303813085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1303713081_
                                                     _g1303813085_))))
                                            (_g1303713081_ _g1303813085_)))))
                                (_g1303613237_
                                 (list _e12864_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch12867_
                                       _default12868_
                                       _tab12873_
                                       (vector-length _tab12873_))))))
                        (_generate-char-dispatch/hash11726_
                         _e12864_
                         _datums12866_
                         _dispatch12867_
                         _default12868_))))
                 (_generate-char-dispatch/hash11726_
                  (lambda (_e12642_
                           _datums12644_
                           _dispatch12645_
                           _default12646_)
                    (let* ((_indexes12648_
                            (_datum-dispatch-index11717_ _datums12644_))
                           (_tab12651_
                            (_generate-hash-dispatch-table11719_
                             _indexes12648_
                             char->integer)))
                      (let* ((_g1265612700_
                              (lambda (_g1265712696_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1265712696_)))
                             (_g1265512860_
                              (lambda (_g1265712704_)
                                (if (gx#stx-pair? _g1265712704_)
                                    (let ((_e1266712707_
                                           (gx#syntax-e _g1265712704_)))
                                      (let ((_hd1266612711_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1266712707_)))
                                            (_tl1266512714_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1266712707_))))
                                        (if (gx#stx-pair? _tl1266512714_)
                                            (let ((_e1267012717_
                                                   (gx#syntax-e
                                                    _tl1266512714_)))
                                              (let ((_hd1266912721_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1267012717_)))
                                                    (_tl1266812724_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1267012717_))))
                                                (if (gx#stx-pair?
                                                     _tl1266812724_)
                                                    (let ((_e1267312727_
                                                           (gx#syntax-e
                                                            _tl1266812724_)))
                                                      (let ((_hd1267212731_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1267312727_)))
                    (_tl1267112734_
                     (let () (declare (not safe)) (##cdr _e1267312727_))))
                (if (gx#stx-pair? _tl1267112734_)
                    (let ((_e1267612737_ (gx#syntax-e _tl1267112734_)))
                      (let ((_hd1267512741_
                             (let ()
                               (declare (not safe))
                               (##car _e1267612737_)))
                            (_tl1267412744_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1267612737_))))
                        (if (gx#stx-pair/null? _hd1267512741_)
                            (let ((_g23249_
                                   (gx#syntax-split-splice _hd1267512741_ '0)))
                              (begin
                                (let ((_g23250_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g23249_)
                                             (##vector-length _g23249_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g23250_ 2)))
                                      (error "Context expects 2 values"
                                             _g23250_)))
                                (let ((_target1267712747_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g23249_ 0)))
                                      (_tl1267912750_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g23249_ 1))))
                                  (if (gx#stx-null? _tl1267912750_)
                                      (letrec ((_loop1268012753_
                                                (lambda (_hd1267812757_
                                                         _dispatch1268412760_)
                                                  (if (gx#stx-pair?
                                                       _hd1267812757_)
                                                      (let ((_e1268112763_
                                                             (gx#syntax-e
                                                              _hd1267812757_)))
                                                        (let ((_lp-hd1268212767_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1268112763_)))
                      (_lp-tl1268312770_
                       (let () (declare (not safe)) (##cdr _e1268112763_))))
                  (_loop1268012753_
                   _lp-tl1268312770_
                   (cons _lp-hd1268212767_ _dispatch1268412760_))))
              (let ((_dispatch1268512773_ (reverse _dispatch1268412760_)))
                (if (gx#stx-pair? _tl1267412744_)
                    (let ((_e1268812777_ (gx#syntax-e _tl1267412744_)))
                      (let ((_hd1268712781_
                             (let ()
                               (declare (not safe))
                               (##car _e1268812777_)))
                            (_tl1268612784_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1268812777_))))
                        (if (gx#stx-pair? _tl1268612784_)
                            (let ((_e1269112787_ (gx#syntax-e _tl1268612784_)))
                              (let ((_hd1269012791_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1269112787_)))
                                    (_tl1268912794_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1269112787_))))
                                (if (gx#stx-pair? _tl1268912794_)
                                    (let ((_e1269412797_
                                           (gx#syntax-e _tl1268912794_)))
                                      (let ((_hd1269312801_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1269412797_)))
                                            (_tl1269212804_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1269412797_))))
                                        (if (gx#stx-null? _tl1269212804_)
                                            ((lambda (_L12807_
                                                      _L12809_
                                                      _L12810_
                                                      _L12811_
                                                      _L12812_
                                                      _L12813_
                                                      _L12814_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L12813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '() (cons _L12810_ '())))
                                       '()))
                           (cons (cons _L12812_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L12809_ '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'char?)
                                             (cons _L12814_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '##char->integer)
                                         (cons _L12814_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _L12807_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _L12812_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'eq?)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _L12814_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (gx#datum->syntax '#f 'x)
                                     (cons (cons (gx#datum->syntax '#f '##cdr)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'q)
                                                       '()))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '~case-dispatch)
                                           (cons (gx#datum->syntax '#f 'x)
                                                 (let ((__tmp23251
                                                        (lambda (_g1285112854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1285212857_)
                  (cons _g1285112854_ _g1285212857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp23251
                                                    '()
                                                    _L12811_))))
                                     '())))
                   (cons (cons _L12813_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _L12813_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L12813_ '()) '()))))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1269312801_
                                             _hd1269012791_
                                             _hd1268712781_
                                             _dispatch1268512773_
                                             _hd1267212731_
                                             _hd1266912721_
                                             _hd1266612711_)
                                            (_g1265612700_ _g1265712704_))))
                                    (_g1265612700_ _g1265712704_))))
                            (_g1265612700_ _g1265712704_))))
                    (_g1265612700_ _g1265712704_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1268012753_
                                         _target1267712747_
                                         '()))
                                      (_g1265612700_ _g1265712704_)))))
                            (_g1265612700_ _g1265712704_))))
                    (_g1265612700_ _g1265712704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1265612700_
                                                     _g1265712704_))))
                                            (_g1265612700_ _g1265712704_))))
                                    (_g1265612700_ _g1265712704_)))))
                        (_g1265512860_
                         (list _e12642_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch12645_
                               _default12646_
                               _tab12651_
                               (vector-length _tab12651_)))))))
                 (_min-fixnum11727_
                  (lambda (_datums12635_)
                    (let ((__tmp23252
                           (lambda (_lst12638_ _r12640_)
                             (let ()
                               (declare (not safe))
                               (__foldl1 min _r12640_ _lst12638_)))))
                      (declare (not safe))
                      (__foldl1 __tmp23252 ##max-fixnum _datums12635_))))
                 (_max-fixnum11728_
                  (lambda (_datums12628_)
                    (let ((__tmp23253
                           (lambda (_lst12631_ _r12633_)
                             (let ()
                               (declare (not safe))
                               (__foldl1 max _r12633_ _lst12631_)))))
                      (declare (not safe))
                      (__foldl1 __tmp23253 ##min-fixnum _datums12628_))))
                 (_generate-fixnum-dispatch-table11729_
                  (lambda (_indexes12610_)
                    (let* ((_ixs12613_ (map car _indexes12610_))
                           (_len12616_
                            (let ((__tmp23254
                                   (let ()
                                     (declare (not safe))
                                     (__foldl1 max '0 _ixs12613_))))
                              (declare (not safe))
                              (##fx+ __tmp23254 '1)))
                           (_vec12619_ (make-vector _len12616_ '#f)))
                      (for-each
                       (lambda (_entry12624_ _x12626_)
                         (vector-set! _vec12619_ _x12626_ (cdr _entry12624_)))
                       _indexes12610_
                       _ixs12613_)
                      _vec12619_)))
                 (_generate-fixnum-dispatch11730_
                  (lambda (_e12344_
                           _datums12346_
                           _dispatch12347_
                           _default12348_)
                    (if (and (>= (_min-fixnum11727_ _datums12346_) '0)
                             (< (_max-fixnum11728_ _datums12346_) '1024))
                        (let* ((_indexes12350_
                                (_datum-dispatch-index11717_ _datums12346_))
                               (_tab12353_
                                (_generate-fixnum-dispatch-table11729_
                                 _indexes12350_))
                               (_dense?12356_
                                (let ((__tmp23255 (vector->list _tab12353_)))
                                  (declare (not safe))
                                  (__andmap1 values __tmp23255))))
                          (let* ((_g1236112405_
                                  (lambda (_g1236212401_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1236212401_)))
                                 (_g1236012606_
                                  (lambda (_g1236212409_)
                                    (if (gx#stx-pair? _g1236212409_)
                                        (let ((_e1237212412_
                                               (gx#syntax-e _g1236212409_)))
                                          (let ((_hd1237112416_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1237212412_)))
                                                (_tl1237012419_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1237212412_))))
                                            (if (gx#stx-pair? _tl1237012419_)
                                                (let ((_e1237512422_
                                                       (gx#syntax-e
                                                        _tl1237012419_)))
                                                  (let ((_hd1237412426_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1237512422_)))
                                                        (_tl1237312429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1237512422_))))
                                                    (if (gx#stx-pair?
                                                         _tl1237312429_)
                                                        (let ((_e1237812432_
                                                               (gx#syntax-e
                                                                _tl1237312429_)))
                                                          (let ((_hd1237712436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1237812432_)))
                        (_tl1237612439_
                         (let () (declare (not safe)) (##cdr _e1237812432_))))
                    (if (gx#stx-pair? _tl1237612439_)
                        (let ((_e1238112442_ (gx#syntax-e _tl1237612439_)))
                          (let ((_hd1238012446_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1238112442_)))
                                (_tl1237912449_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1238112442_))))
                            (if (gx#stx-pair/null? _hd1238012446_)
                                (let ((_g23256_
                                       (gx#syntax-split-splice
                                        _hd1238012446_
                                        '0)))
                                  (begin
                                    (let ((_g23257_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g23256_)
                                                 (##vector-length _g23256_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g23257_ 2)))
                                          (error "Context expects 2 values"
                                                 _g23257_)))
                                    (let ((_target1238212452_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g23256_ 0)))
                                          (_tl1238412455_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g23256_ 1))))
                                      (if (gx#stx-null? _tl1238412455_)
                                          (letrec ((_loop1238512458_
                                                    (lambda (_hd1238312462_
                                                             _dispatch1238912465_)
                                                      (if (gx#stx-pair?
                                                           _hd1238312462_)
                                                          (let ((_e1238612468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1238312462_)))
                    (let ((_lp-hd1238712472_
                           (let () (declare (not safe)) (##car _e1238612468_)))
                          (_lp-tl1238812475_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1238612468_))))
                      (_loop1238512458_
                       _lp-tl1238812475_
                       (cons _lp-hd1238712472_ _dispatch1238912465_))))
                  (let ((_dispatch1239012478_ (reverse _dispatch1238912465_)))
                    (if (gx#stx-pair? _tl1237912449_)
                        (let ((_e1239312482_ (gx#syntax-e _tl1237912449_)))
                          (let ((_hd1239212486_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1239312482_)))
                                (_tl1239112489_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1239312482_))))
                            (if (gx#stx-pair? _tl1239112489_)
                                (let ((_e1239612492_
                                       (gx#syntax-e _tl1239112489_)))
                                  (let ((_hd1239512496_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1239612492_)))
                                        (_tl1239412499_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1239612492_))))
                                    (if (gx#stx-pair? _tl1239412499_)
                                        (let ((_e1239912502_
                                               (gx#syntax-e _tl1239412499_)))
                                          (let ((_hd1239812506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1239912502_)))
                                                (_tl1239712509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1239912502_))))
                                            (if (gx#stx-null? _tl1239712509_)
                                                ((lambda (_L12512_
                                                          _L12514_
                                                          _L12515_
                                                          _L12516_
                                                          _L12517_
                                                          _L12518_
                                                          _L12519_)
                                                   (let ()
                                                     (let* ((_g1255812566_
                                                             (lambda (_g1255912562_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _g1255912562_)))
                                                            (_g1255712586_
                                                             (lambda (_g1255912570_)
                                                               ((lambda (_L12573_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _L12518_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons '() (cons _L12515_ '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _L12517_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L12514_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'fixnum?)
                        (cons _L12519_ '()))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f 'and)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx>=)
                                                      (cons _L12519_
                                                            (cons '0 '())))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##fx<)
                                                            (cons _L12519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L12512_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'x)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L12517_ (cons _L12519_ '())))
                          '()))
              (cons _L12573_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L12518_ '()) '()))))
                        (cons (cons _L12518_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _g1255912570_))))
               (_g1255712586_
                (if _dense?12356_
                    (cons (gx#datum->syntax '#f '~case-dispatch)
                          (cons (gx#datum->syntax '#f 'x)
                                (let ((__tmp23258
                                       (lambda (_g1258912592_ _g1259012595_)
                                         (cons _g1258912592_ _g1259012595_))))
                                  (declare (not safe))
                                  (__foldr1 __tmp23258 '() _L12516_))))
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (gx#datum->syntax '#f 'x)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '~case-dispatch)
                                            (cons (gx#datum->syntax '#f 'x)
                                                  (let ((__tmp23259
                                                         (lambda (_g1259712600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1259812603_)
                   (cons _g1259712600_ _g1259812603_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp23259
                                                     '()
                                                     _L12516_))))
                                      (cons (cons _L12518_ '()) '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1239812506_
                                                 _hd1239512496_
                                                 _hd1239212486_
                                                 _dispatch1239012478_
                                                 _hd1237712436_
                                                 _hd1237412426_
                                                 _hd1237112416_)
                                                (_g1236112405_
                                                 _g1236212409_))))
                                        (_g1236112405_ _g1236212409_))))
                                (_g1236112405_ _g1236212409_))))
                        (_g1236112405_ _g1236212409_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1238512458_
                                             _target1238212452_
                                             '()))
                                          (_g1236112405_ _g1236212409_)))))
                                (_g1236112405_ _g1236212409_))))
                        (_g1236112405_ _g1236212409_))))
                (_g1236112405_ _g1236212409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1236112405_
                                                 _g1236212409_))))
                                        (_g1236112405_ _g1236212409_)))))
                            (_g1236012606_
                             (list _e12344_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch12347_
                                   _default12348_
                                   _tab12353_
                                   (vector-length _tab12353_)))))
                        (_generate-fixnum-dispatch/hash11731_
                         _e12344_
                         _datums12346_
                         _dispatch12347_
                         _default12348_))))
                 (_generate-fixnum-dispatch/hash11731_
                  (lambda (_e12122_
                           _datums12124_
                           _dispatch12125_
                           _default12126_)
                    (let* ((_indexes12128_
                            (_datum-dispatch-index11717_ _datums12124_))
                           (_tab12131_
                            (_generate-hash-dispatch-table11719_
                             _indexes12128_
                             values)))
                      (let* ((_g1213612180_
                              (lambda (_g1213712176_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1213712176_)))
                             (_g1213512340_
                              (lambda (_g1213712184_)
                                (if (gx#stx-pair? _g1213712184_)
                                    (let ((_e1214712187_
                                           (gx#syntax-e _g1213712184_)))
                                      (let ((_hd1214612191_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1214712187_)))
                                            (_tl1214512194_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1214712187_))))
                                        (if (gx#stx-pair? _tl1214512194_)
                                            (let ((_e1215012197_
                                                   (gx#syntax-e
                                                    _tl1214512194_)))
                                              (let ((_hd1214912201_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1215012197_)))
                                                    (_tl1214812204_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1215012197_))))
                                                (if (gx#stx-pair?
                                                     _tl1214812204_)
                                                    (let ((_e1215312207_
                                                           (gx#syntax-e
                                                            _tl1214812204_)))
                                                      (let ((_hd1215212211_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1215312207_)))
                    (_tl1215112214_
                     (let () (declare (not safe)) (##cdr _e1215312207_))))
                (if (gx#stx-pair? _tl1215112214_)
                    (let ((_e1215612217_ (gx#syntax-e _tl1215112214_)))
                      (let ((_hd1215512221_
                             (let ()
                               (declare (not safe))
                               (##car _e1215612217_)))
                            (_tl1215412224_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1215612217_))))
                        (if (gx#stx-pair/null? _hd1215512221_)
                            (let ((_g23260_
                                   (gx#syntax-split-splice _hd1215512221_ '0)))
                              (begin
                                (let ((_g23261_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g23260_)
                                             (##vector-length _g23260_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g23261_ 2)))
                                      (error "Context expects 2 values"
                                             _g23261_)))
                                (let ((_target1215712227_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g23260_ 0)))
                                      (_tl1215912230_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g23260_ 1))))
                                  (if (gx#stx-null? _tl1215912230_)
                                      (letrec ((_loop1216012233_
                                                (lambda (_hd1215812237_
                                                         _dispatch1216412240_)
                                                  (if (gx#stx-pair?
                                                       _hd1215812237_)
                                                      (let ((_e1216112243_
                                                             (gx#syntax-e
                                                              _hd1215812237_)))
                                                        (let ((_lp-hd1216212247_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1216112243_)))
                      (_lp-tl1216312250_
                       (let () (declare (not safe)) (##cdr _e1216112243_))))
                  (_loop1216012233_
                   _lp-tl1216312250_
                   (cons _lp-hd1216212247_ _dispatch1216412240_))))
              (let ((_dispatch1216512253_ (reverse _dispatch1216412240_)))
                (if (gx#stx-pair? _tl1215412224_)
                    (let ((_e1216812257_ (gx#syntax-e _tl1215412224_)))
                      (let ((_hd1216712261_
                             (let ()
                               (declare (not safe))
                               (##car _e1216812257_)))
                            (_tl1216612264_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1216812257_))))
                        (if (gx#stx-pair? _tl1216612264_)
                            (let ((_e1217112267_ (gx#syntax-e _tl1216612264_)))
                              (let ((_hd1217012271_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1217112267_)))
                                    (_tl1216912274_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1217112267_))))
                                (if (gx#stx-pair? _tl1216912274_)
                                    (let ((_e1217412277_
                                           (gx#syntax-e _tl1216912274_)))
                                      (let ((_hd1217312281_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1217412277_)))
                                            (_tl1217212284_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1217412277_))))
                                        (if (gx#stx-null? _tl1217212284_)
                                            ((lambda (_L12287_
                                                      _L12289_
                                                      _L12290_
                                                      _L12291_
                                                      _L12292_
                                                      _L12293_
                                                      _L12294_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L12293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '() (cons _L12290_ '())))
                                       '()))
                           (cons (cons _L12292_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L12289_ '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                             (cons _L12294_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                         (cons _L12294_ (cons _L12287_ '())))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##vector-ref)
                                               (cons _L12292_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           '())))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'eq?)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _L12294_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (gx#datum->syntax '#f 'x)
                                     (cons (cons (gx#datum->syntax '#f '##cdr)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'q)
                                                       '()))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '~case-dispatch)
                                           (cons (gx#datum->syntax '#f 'x)
                                                 (let ((__tmp23262
                                                        (lambda (_g1233112334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1233212337_)
                  (cons _g1233112334_ _g1233212337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp23262
                                                    '()
                                                    _L12291_))))
                                     '())))
                   (cons (cons _L12293_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _L12293_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L12293_ '()) '()))))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1217312281_
                                             _hd1217012271_
                                             _hd1216712261_
                                             _dispatch1216512253_
                                             _hd1215212211_
                                             _hd1214912201_
                                             _hd1214612191_)
                                            (_g1213612180_ _g1213712184_))))
                                    (_g1213612180_ _g1213712184_))))
                            (_g1213612180_ _g1213712184_))))
                    (_g1213612180_ _g1213712184_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1216012233_
                                         _target1215712227_
                                         '()))
                                      (_g1213612180_ _g1213712184_)))))
                            (_g1213612180_ _g1213712184_))))
                    (_g1213612180_ _g1213712184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1213612180_
                                                     _g1213712184_))))
                                            (_g1213612180_ _g1213712184_))))
                                    (_g1213612180_ _g1213712184_)))))
                        (_g1213512340_
                         (list _e12122_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch12125_
                               _default12126_
                               _tab12131_
                               (vector-length _tab12131_)))))))
                 (_generate-generic-dispatch11732_
                  (lambda (_e11858_
                           _datums11860_
                           _dispatch11861_
                           _default11862_)
                    (let ((_g23263_
                           (if (_eq-datums?11715_ _datums11860_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e11864_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g23263_ 0)))
                              (_hashf11866_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g23263_ 1)))
                              (_eqf11867_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g23263_ 2))))
                          (let* ((_indexes11869_
                                  (_datum-dispatch-index11717_ _datums11860_))
                                 (_tab11872_
                                  (_generate-hash-dispatch-table11719_
                                   _indexes11869_
                                   _hash-e11864_)))
                            (let* ((_g1187711929_
                                    (lambda (_g1187811925_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1187811925_)))
                                   (_g1187612118_
                                    (lambda (_g1187811933_)
                                      (if (gx#stx-pair? _g1187811933_)
                                          (let ((_e1189011936_
                                                 (gx#syntax-e _g1187811933_)))
                                            (let ((_hd1188911940_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1189011936_)))
                                                  (_tl1188811943_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1189011936_))))
                                              (if (gx#stx-pair? _tl1188811943_)
                                                  (let ((_e1189311946_
                                                         (gx#syntax-e
                                                          _tl1188811943_)))
                                                    (let ((_hd1189211950_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1189311946_)))
                                                          (_tl1189111953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1189311946_))))
                                                      (if (gx#stx-pair?
                                                           _tl1189111953_)
                                                          (let ((_e1189611956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1189111953_)))
                    (let ((_hd1189511960_
                           (let () (declare (not safe)) (##car _e1189611956_)))
                          (_tl1189411963_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1189611956_))))
                      (if (gx#stx-pair? _tl1189411963_)
                          (let ((_e1189911966_ (gx#syntax-e _tl1189411963_)))
                            (let ((_hd1189811970_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1189911966_)))
                                  (_tl1189711973_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1189911966_))))
                              (if (gx#stx-pair/null? _hd1189811970_)
                                  (let ((_g23264_
                                         (gx#syntax-split-splice
                                          _hd1189811970_
                                          '0)))
                                    (begin
                                      (let ((_g23265_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g23264_)
                                                   (##vector-length _g23264_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g23265_ 2)))
                                            (error "Context expects 2 values"
                                                   _g23265_)))
                                      (let ((_target1190011976_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g23264_ 0)))
                                            (_tl1190211979_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g23264_ 1))))
                                        (if (gx#stx-null? _tl1190211979_)
                                            (letrec ((_loop1190311982_
                                                      (lambda (_hd1190111986_
                                                               _dispatch1190711989_)
                                                        (if (gx#stx-pair?
                                                             _hd1190111986_)
                                                            (let ((_e1190411992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1190111986_)))
                      (let ((_lp-hd1190511996_
                             (let ()
                               (declare (not safe))
                               (##car _e1190411992_)))
                            (_lp-tl1190611999_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1190411992_))))
                        (_loop1190311982_
                         _lp-tl1190611999_
                         (cons _lp-hd1190511996_ _dispatch1190711989_))))
                    (let ((_dispatch1190812002_
                           (reverse _dispatch1190711989_)))
                      (if (gx#stx-pair? _tl1189711973_)
                          (let ((_e1191112006_ (gx#syntax-e _tl1189711973_)))
                            (let ((_hd1191012010_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1191112006_)))
                                  (_tl1190912013_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1191112006_))))
                              (if (gx#stx-pair? _tl1190912013_)
                                  (let ((_e1191412016_
                                         (gx#syntax-e _tl1190912013_)))
                                    (let ((_hd1191312020_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1191412016_)))
                                          (_tl1191212023_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1191412016_))))
                                      (if (gx#stx-pair? _tl1191212023_)
                                          (let ((_e1191712026_
                                                 (gx#syntax-e _tl1191212023_)))
                                            (let ((_hd1191612030_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1191712026_)))
                                                  (_tl1191512033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1191712026_))))
                                              (if (gx#stx-pair? _tl1191512033_)
                                                  (let ((_e1192012036_
                                                         (gx#syntax-e
                                                          _tl1191512033_)))
                                                    (let ((_hd1191912040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1192012036_)))
                                                          (_tl1191812043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1192012036_))))
                                                      (if (gx#stx-pair?
                                                           _tl1191812043_)
                                                          (let ((_e1192312046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1191812043_)))
                    (let ((_hd1192212050_
                           (let () (declare (not safe)) (##car _e1192312046_)))
                          (_tl1192112053_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1192312046_))))
                      (if (gx#stx-null? _tl1192112053_)
                          ((lambda (_L12056_
                                    _L12058_
                                    _L12059_
                                    _L12060_
                                    _L12061_
                                    _L12062_
                                    _L12063_
                                    _L12064_
                                    _L12065_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L12064_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L12061_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L12063_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _L12060_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'h)
                                 (cons (cons _L12058_ (cons _L12065_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L12059_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L12063_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons _L12056_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##car)
                                   (cons (gx#datum->syntax '#f 'q) '()))
                             (cons _L12065_ '())))
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'x)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##cdr)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'q)
                                                           '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch)
                                               (cons (gx#datum->syntax '#f 'x)
                                                     (let ((__tmp23266
                                                            (lambda (_g1210912112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1211012115_)
                      (cons _g1210912112_ _g1211012115_))))
               (declare (not safe))
               (__foldr1 __tmp23266 '() _L12062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L12064_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L12064_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd1192212050_
                           _hd1191912040_
                           _hd1191612030_
                           _hd1191312020_
                           _hd1191012010_
                           _dispatch1190812002_
                           _hd1189511960_
                           _hd1189211950_
                           _hd1188911940_)
                          (_g1187711929_ _g1187811933_))))
                  (_g1187711929_ _g1187811933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1187711929_
                                                   _g1187811933_))))
                                          (_g1187711929_ _g1187811933_))))
                                  (_g1187711929_ _g1187811933_))))
                          (_g1187711929_ _g1187811933_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1190311982_
                                               _target1190011976_
                                               '()))
                                            (_g1187711929_ _g1187811933_)))))
                                  (_g1187711929_ _g1187811933_))))
                          (_g1187711929_ _g1187811933_))))
                  (_g1187711929_ _g1187811933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1187711929_
                                                   _g1187811933_))))
                                          (_g1187711929_ _g1187811933_)))))
                              (_g1187612118_
                               (list _e11858_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch11861_
                                     _default11862_
                                     _tab11872_
                                     (vector-length _tab11872_)
                                     _hashf11866_
                                     _eqf11867_))))))))))
          (let* ((_g1173411758_
                  (lambda (_g1173511754_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1173511754_)))
                 (_g1173311854_
                  (lambda (_g1173511762_)
                    (if (gx#stx-pair? _g1173511762_)
                        (let ((_e1174011765_ (gx#syntax-e _g1173511762_)))
                          (let ((_hd1173911769_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1174011765_)))
                                (_tl1173811772_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1174011765_))))
                            (if (gx#stx-pair? _tl1173811772_)
                                (let ((_e1174311775_
                                       (gx#syntax-e _tl1173811772_)))
                                  (let ((_hd1174211779_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1174311775_)))
                                        (_tl1174111782_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1174311775_))))
                                    (if (gx#stx-pair/null? _tl1174111782_)
                                        (let ((_g23267_
                                               (gx#syntax-split-splice
                                                _tl1174111782_
                                                '0)))
                                          (begin
                                            (let ((_g23268_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g23267_)
                                                         (##vector-length
                                                          _g23267_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g23268_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g23268_)))
                                            (let ((_target1174411785_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g23267_
                                                      0)))
                                                  (_tl1174611788_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g23267_
                                                      1))))
                                              (if (gx#stx-null? _tl1174611788_)
                                                  (letrec ((_loop1174711791_
                                                            (lambda (_hd1174511795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause1175111798_)
                      (if (gx#stx-pair? _hd1174511795_)
                          (let ((_e1174811801_ (gx#syntax-e _hd1174511795_)))
                            (let ((_lp-hd1174911805_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1174811801_)))
                                  (_lp-tl1175011808_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1174811801_))))
                              (_loop1174711791_
                               _lp-tl1175011808_
                               (cons _lp-hd1174911805_ _clause1175111798_))))
                          (let ((_clause1175211811_
                                 (reverse _clause1175111798_)))
                            ((lambda (_L11815_ _L11817_)
                               (let ((_g23269_
                                      (_parse-clauses11708_
                                       _L11817_
                                       (let ((__tmp23271
                                              (lambda (_g1183511838_
                                                       _g1183611841_)
                                                (cons _g1183511838_
                                                      _g1183611841_))))
                                         (declare (not safe))
                                         (__foldr1 __tmp23271 '() _L11815_)))))
                                 (begin
                                   (let ((_g23270_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g23269_)
                                                (##vector-length _g23269_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g23270_ 3)))
                                         (error "Context expects 3 values"
                                                _g23270_)))
                                   (let ((_datums11844_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g23269_ 0)))
                                         (_dispatch11846_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g23269_ 1)))
                                         (_default11847_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g23269_ 2))))
                                     (let ((_datum-count11849_
                                            (_count-datums11711_
                                             _datums11844_)))
                                       (if (< _datum-count11849_ '6)
                                           (_generate-simple-case11716_
                                            _L11817_
                                            _datums11844_
                                            _dispatch11846_
                                            _default11847_)
                                           (if (_char-datums?11713_
                                                _datums11844_)
                                               (_generate-char-dispatch11725_
                                                _L11817_
                                                _datums11844_
                                                _dispatch11846_
                                                _default11847_)
                                               (if (_fixnum-datums?11714_
                                                    _datums11844_)
                                                   (_generate-fixnum-dispatch11730_
                                                    _L11817_
                                                    _datums11844_
                                                    _dispatch11846_
                                                    _default11847_)
                                                   (if (< _datum-count11849_
                                                          '12)
                                                       (_generate-simple-case11716_
                                                        _L11817_
                                                        _datums11844_
                                                        _dispatch11846_
                                                        _default11847_)
                                                       (if (_symbolic-datums?11712_
                                                            _datums11844_)
                                                           (_generate-symbolic-dispatch11720_
                                                            _L11817_
                                                            _datums11844_
                                                            _dispatch11846_
                                                            _default11847_)
                                                           (_generate-generic-dispatch11732_
                                                            _L11817_
                                                            _datums11844_
                                                            _dispatch11846_
                                                            _default11847_)))))))))))
                             _clause1175211811_
                             _hd1174211779_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1174711791_
                                                     _target1174411785_
                                                     '()))
                                                  (_g1173411758_
                                                   _g1173511762_)))))
                                        (_g1173411758_ _g1173511762_))))
                                (_g1173411758_ _g1173511762_))))
                        (_g1173411758_ _g1173511762_)))))
            (_g1173311854_ _stx11705_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_stx14756_)
        (let* ((_g1475914777_
                (lambda (_g1476014773_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1476014773_)))
               (_g1475814843_
                (lambda (_g1476014781_)
                  (if (gx#stx-pair? _g1476014781_)
                      (let ((_e1476514784_ (gx#syntax-e _g1476014781_)))
                        (let ((_hd1476414788_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1476514784_)))
                              (_tl1476314791_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1476514784_))))
                          (if (gx#stx-pair? _tl1476314791_)
                              (let ((_e1476814794_
                                     (gx#syntax-e _tl1476314791_)))
                                (let ((_hd1476714798_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1476814794_)))
                                      (_tl1476614801_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1476814794_))))
                                  (if (gx#stx-pair? _tl1476614801_)
                                      (let ((_e1477114804_
                                             (gx#syntax-e _tl1476614801_)))
                                        (let ((_hd1477014808_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1477114804_)))
                                              (_tl1476914811_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1477114804_))))
                                          (if (gx#stx-null? _tl1476914811_)
                                              ((lambda (_L14814_ _L14816_)
                                                 (let ((_datum-e14832_
                                                        (gx#stx-e _L14816_)))
                                                   (if (or (let ()
                                                             (declare
                                                               (not safe))
                                                             (symbol? _datum-e14832_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (keyword?
                                                              _datum-e14832_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__immediate?
                                                              _datum-e14832_)))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _L14816_ '()))
                           (cons _L14814_ '())))
               (if (let () (declare (not safe)) (number? _datum-e14832_))
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L14816_ '()))
                               (cons _L14814_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L14816_ '()))
                               (cons _L14814_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1477014808_
                                               _hd1476714798_)
                                              (_g1475914777_ _g1476014781_))))
                                      (_g1475914777_ _g1476014781_))))
                              (_g1475914777_ _g1476014781_))))
                      (_g1475914777_ _g1476014781_)))))
          (_g1475814843_ _stx14756_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_$stx14847_)
        (let* ((_g1485114875_
                (lambda (_g1485214871_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1485214871_)))
               (_g1485014960_
                (lambda (_g1485214879_)
                  (if (gx#stx-pair? _g1485214879_)
                      (let ((_e1485714882_ (gx#syntax-e _g1485214879_)))
                        (let ((_hd1485614886_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1485714882_)))
                              (_tl1485514889_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1485714882_))))
                          (if (gx#stx-pair? _tl1485514889_)
                              (let ((_e1486014892_
                                     (gx#syntax-e _tl1485514889_)))
                                (let ((_hd1485914896_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1486014892_)))
                                      (_tl1485814899_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1486014892_))))
                                  (if (gx#stx-pair/null? _tl1485814899_)
                                      (let ((_g23272_
                                             (gx#syntax-split-splice
                                              _tl1485814899_
                                              '0)))
                                        (begin
                                          (let ((_g23273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23272_)
                                                       (##vector-length
                                                        _g23272_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23273_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23273_)))
                                          (let ((_target1486114902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23272_ 0)))
                                                (_tl1486314905_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23272_ 1))))
                                            (if (gx#stx-null? _tl1486314905_)
                                                (letrec ((_loop1486414908_
                                                          (lambda (_hd1486214912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _K1486814915_)
                    (if (gx#stx-pair? _hd1486214912_)
                        (let ((_e1486514918_ (gx#syntax-e _hd1486214912_)))
                          (let ((_lp-hd1486614922_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1486514918_)))
                                (_lp-tl1486714925_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1486514918_))))
                            (_loop1486414908_
                             _lp-tl1486714925_
                             (cons _lp-hd1486614922_ _K1486814915_))))
                        (let ((_K1486914928_ (reverse _K1486814915_)))
                          ((lambda (_L14932_ _L14934_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _L14934_
                                               (let ((__tmp23274
                                                      (lambda (_g1495114954_
                                                               _g1495214957_)
                                                        (cons _g1495114954_
                                                              _g1495214957_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp23274
                                                  '()
                                                  _L14932_))))))
                           _K1486914928_
                           _hd1485914896_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1486414908_
                                                   _target1486114902_
                                                   '()))
                                                (_g1485114875_
                                                 _g1485214879_)))))
                                      (_g1485114875_ _g1485214879_))))
                              (_g1485114875_ _g1485214879_))))
                      (_g1485114875_ _g1485214879_)))))
          (_g1485014960_ _$stx14847_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_stx14965_)
        (let* ((___stx2197021971_ _stx14965_)
               (_g1497215068_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2197021971_))))
          (let ((___kont2197321974_
                 (lambda (_L15545_ _L15547_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (___kont2197521976_
                 (lambda (_L15487_ _L15489_ _L15490_) _L15487_))
                (___kont2197721978_
                 (lambda (_L15384_ _L15386_ _L15387_ _L15388_)
                   (let* ((_g1540915417_
                           (lambda (_g1541015413_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1541015413_)))
                          (_g1540815436_
                           (lambda (_g1541015421_)
                             ((lambda (_L15424_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##fx=)
                                                    (cons _L15387_
                                                          (cons _L15424_ '())))
                                              (cons _L15386_
                                                    (cons _L15384_ '()))))))
                              _g1541015421_))))
                     (_g1540815436_ (gx#stx-e _L15388_)))))
                (___kont2197921980_
                 (lambda (_L15234_ _L15236_ _L15237_ _L15238_ _L15239_)
                   (let* ((_g1526315278_
                           (lambda (_g1526415274_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1526415274_)))
                          (_g1526215323_
                           (lambda (_g1526415282_)
                             (if (gx#stx-pair? _g1526415282_)
                                 (let ((_e1526915285_
                                        (gx#syntax-e _g1526415282_)))
                                   (let ((_hd1526815289_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1526915285_)))
                                         (_tl1526715292_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1526915285_))))
                                     (if (gx#stx-pair? _tl1526715292_)
                                         (let ((_e1527215295_
                                                (gx#syntax-e _tl1526715292_)))
                                           (let ((_hd1527115299_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1527215295_)))
                                                 (_tl1527015302_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1527215295_))))
                                             (if (gx#stx-null? _tl1527015302_)
                                                 ((lambda (_L15305_ _L15307_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##fx=)
                                (cons _L15238_ (cons _L15307_ '())))
                          (cons _L15237_
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx=)
                                                        (cons _L15238_
                                                              (cons _L15305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L15236_
                                                        (cons _L15234_ '()))))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1527115299_
                                                  _hd1526815289_)
                                                 (_g1526315278_
                                                  _g1526415282_))))
                                         (_g1526315278_ _g1526415282_))))
                                 (_g1526315278_ _g1526415282_)))))
                     (_g1526215323_
                      (list (gx#stx-e _L15239_)
                            (let ((__tmp23275 (gx#stx-e _L15239_)))
                              (declare (not safe))
                              (##fx+ __tmp23275 '1)))))))
                (___kont2198121982_
                 (lambda (_L15135_ _L15137_ _L15138_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _L15138_
                               (cons _L15137_
                                     (let ((__tmp23276
                                            (lambda (_g1515815161_
                                                     _g1515915164_)
                                              (cons _g1515815161_
                                                    _g1515915164_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp23276
                                        '()
                                        _L15135_))))))))
            (let ((___match2212722128_
                   (lambda (_e1504715075_
                            _hd1504615079_
                            _tl1504515082_
                            _e1505015085_
                            _hd1504915089_
                            _tl1504815092_
                            _e1505315095_
                            _hd1505215099_
                            _tl1505115102_
                            ___splice2198321984_
                            _target1505415105_
                            _tl1505615108_)
                     (letrec ((_loop1505715111_
                               (lambda (_hd1505515115_ _K1506115118_)
                                 (if (gx#stx-pair? _hd1505515115_)
                                     (let ((_e1505815121_
                                            (gx#syntax-e _hd1505515115_)))
                                       (let ((_lp-tl1506015128_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1505815121_)))
                                             (_lp-hd1505915125_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1505815121_))))
                                         (_loop1505715111_
                                          _lp-tl1506015128_
                                          (cons _lp-hd1505915125_
                                                _K1506115118_))))
                                     (let ((_K1506215131_
                                            (reverse _K1506115118_)))
                                       (___kont2198121982_
                                        _K1506215131_
                                        _hd1505215099_
                                        _hd1504915089_))))))
                       (_loop1505715111_ _target1505415105_ '())))))
              (if (gx#stx-pair? ___stx2197021971_)
                  (let ((_e1497815515_ (gx#syntax-e ___stx2197021971_)))
                    (let ((_tl1497615522_
                           (let () (declare (not safe)) (##cdr _e1497815515_)))
                          (_hd1497715519_
                           (let ()
                             (declare (not safe))
                             (##car _e1497815515_))))
                      (if (gx#stx-pair? _tl1497615522_)
                          (let ((_e1498115525_ (gx#syntax-e _tl1497615522_)))
                            (let ((_tl1497915532_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1498115525_)))
                                  (_hd1498015529_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1498115525_))))
                              (if (gx#stx-pair? _tl1497915532_)
                                  (let ((_e1498415535_
                                         (gx#syntax-e _tl1497915532_)))
                                    (let ((_tl1498215542_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1498415535_)))
                                          (_hd1498315539_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1498415535_))))
                                      (if (gx#stx-null? _tl1498215542_)
                                          (___kont2197321974_
                                           _hd1498315539_
                                           _hd1498015529_)
                                          (if (gx#stx-pair? _tl1498215542_)
                                              (let ((_e1499915477_
                                                     (gx#syntax-e
                                                      _tl1498215542_)))
                                                (let ((_tl1499715484_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1499915477_)))
                                                      (_hd1499815481_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1499915477_))))
                                                  (if (gx#stx-null?
                                                       _tl1499715484_)
                                                      (___kont2197521976_
                                                       _hd1499815481_
                                                       _hd1498315539_
                                                       _hd1498015529_)
                                                      (if (gx#stx-pair?
                                                           _tl1499715484_)
                                                          (let ((_e1501815374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1499715484_)))
                    (let ((_tl1501615381_
                           (let () (declare (not safe)) (##cdr _e1501815374_)))
                          (_hd1501715378_
                           (let ()
                             (declare (not safe))
                             (##car _e1501815374_))))
                      (if (gx#stx-null? _tl1501615381_)
                          (___kont2197721978_
                           _hd1501715378_
                           _hd1499815481_
                           _hd1498315539_
                           _hd1498015529_)
                          (if (gx#stx-pair? _tl1501615381_)
                              (let ((_e1504115224_
                                     (gx#syntax-e _tl1501615381_)))
                                (let ((_tl1503915231_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1504115224_)))
                                      (_hd1504015228_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1504115224_))))
                                  (if (gx#stx-null? _tl1503915231_)
                                      (___kont2197921980_
                                       _hd1504015228_
                                       _hd1501715378_
                                       _hd1499815481_
                                       _hd1498315539_
                                       _hd1498015529_)
                                      (if (gx#stx-pair/null? _tl1498215542_)
                                          (let ((___splice2198321984_
                                                 (gx#syntax-split-splice
                                                  _tl1498215542_
                                                  '0)))
                                            (let ((_tl1505615108_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2198321984_
                                                      '1)))
                                                  (_target1505415105_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2198321984_
                                                      '0))))
                                              (if (gx#stx-null? _tl1505615108_)
                                                  (___match2212722128_
                                                   _e1497815515_
                                                   _hd1497715519_
                                                   _tl1497615522_
                                                   _e1498115525_
                                                   _hd1498015529_
                                                   _tl1497915532_
                                                   _e1498415535_
                                                   _hd1498315539_
                                                   _tl1498215542_
                                                   ___splice2198321984_
                                                   _target1505415105_
                                                   _tl1505615108_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1497215068_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1497215068_))))))
                              (if (gx#stx-pair/null? _tl1498215542_)
                                  (let ((___splice2198321984_
                                         (gx#syntax-split-splice
                                          _tl1498215542_
                                          '0)))
                                    (let ((_tl1505615108_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2198321984_
                                              '1)))
                                          (_target1505415105_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2198321984_
                                              '0))))
                                      (if (gx#stx-null? _tl1505615108_)
                                          (___match2212722128_
                                           _e1497815515_
                                           _hd1497715519_
                                           _tl1497615522_
                                           _e1498115525_
                                           _hd1498015529_
                                           _tl1497915532_
                                           _e1498415535_
                                           _hd1498315539_
                                           _tl1498215542_
                                           ___splice2198321984_
                                           _target1505415105_
                                           _tl1505615108_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1497215068_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1497215068_)))))))
                  (if (gx#stx-pair/null? _tl1498215542_)
                      (let ((___splice2198321984_
                             (gx#syntax-split-splice _tl1498215542_ '0)))
                        (let ((_tl1505615108_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2198321984_ '1)))
                              (_target1505415105_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2198321984_ '0))))
                          (if (gx#stx-null? _tl1505615108_)
                              (___match2212722128_
                               _e1497815515_
                               _hd1497715519_
                               _tl1497615522_
                               _e1498115525_
                               _hd1498015529_
                               _tl1497915532_
                               _e1498415535_
                               _hd1498315539_
                               _tl1498215542_
                               ___splice2198321984_
                               _target1505415105_
                               _tl1505615108_)
                              (let () (declare (not safe)) (_g1497215068_)))))
                      (let () (declare (not safe)) (_g1497215068_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1498215542_)
                                                  (let ((___splice2198321984_
                                                         (gx#syntax-split-splice
                                                          _tl1498215542_
                                                          '0)))
                                                    (let ((_tl1505615108_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2198321984_
                                                              '1)))
                                                          (_target1505415105_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2198321984_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1505615108_)
                                                          (___match2212722128_
                                                           _e1497815515_
                                                           _hd1497715519_
                                                           _tl1497615522_
                                                           _e1498115525_
                                                           _hd1498015529_
                                                           _tl1497915532_
                                                           _e1498415535_
                                                           _hd1498315539_
                                                           _tl1498215542_
                                                           ___splice2198321984_
                                                           _target1505415105_
                                                           _tl1505615108_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1497215068_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1497215068_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1497215068_)))))
                          (let () (declare (not safe)) (_g1497215068_)))))
                  (let () (declare (not safe)) (_g1497215068_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_stx15567_)
        (letrec ((_split15570_
                  (lambda (_lst15931_ _mid15933_)
                    (let _lp15935_ ((_i15938_ '0)
                                    (_rest15940_ _lst15931_)
                                    (_left15941_ '()))
                      (if (fx< _i15938_ _mid15933_)
                          (_lp15935_
                           (let () (declare (not safe)) (##fx+ _i15938_ '1))
                           (cdr _rest15940_)
                           (cons (car _rest15940_) _left15941_))
                          (values (reverse _left15941_) _rest15940_))))))
          (let* ((_g1557315601_
                  (lambda (_g1557415597_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1557415597_)))
                 (_g1557215927_
                  (lambda (_g1557415605_)
                    (if (gx#stx-pair? _g1557415605_)
                        (let ((_e1558015608_ (gx#syntax-e _g1557415605_)))
                          (let ((_hd1557915612_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1558015608_)))
                                (_tl1557815615_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1558015608_))))
                            (if (gx#stx-pair? _tl1557815615_)
                                (let ((_e1558315618_
                                       (gx#syntax-e _tl1557815615_)))
                                  (let ((_hd1558215622_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1558315618_)))
                                        (_tl1558115625_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1558315618_))))
                                    (if (gx#stx-pair? _tl1558115625_)
                                        (let ((_e1558615628_
                                               (gx#syntax-e _tl1558115625_)))
                                          (let ((_hd1558515632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1558615628_)))
                                                (_tl1558415635_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1558615628_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1558415635_)
                                                (let ((_g23277_
                                                       (gx#syntax-split-splice
                                                        _tl1558415635_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g23277_)
                         (##vector-length _g23277_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g23278_ 2)))
                  (error "Context expects 2 values" _g23278_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1558715638_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g23277_
                                                              0)))
                                                          (_tl1558915641_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g23277_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1558915641_)
                                                          (letrec ((_loop1559015644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1558815648_ _K1559415651_)
                              (if (gx#stx-pair? _hd1558815648_)
                                  (let ((_e1559115654_
                                         (gx#syntax-e _hd1558815648_)))
                                    (let ((_lp-hd1559215658_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1559115654_)))
                                          (_lp-tl1559315661_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1559115654_))))
                                      (_loop1559015644_
                                       _lp-tl1559315661_
                                       (cons _lp-hd1559215658_
                                             _K1559415651_))))
                                  (let ((_K1559515664_
                                         (reverse _K1559415651_)))
                                    ((lambda (_L15668_ _L15670_ _L15671_)
                                       (let* ((_len15701_
                                               (length (let ((__tmp23279
                                                              (lambda (_g1569215695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1569315698_)
                        (cons _g1569215695_ _g1569315698_))))
                 (declare (not safe))
                 (__foldr1 __tmp23279 '() _L15668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_mid15704_
                                               (quotient _len15701_ '2))
                                              (_g23280_
                                               (_split15570_
                                                (let ((__tmp23282
                                                       (lambda (_g1570615709_
                                                                _g1570715712_)
                                                         (cons _g1570615709_
                                                               _g1570715712_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp23282
                                                   '()
                                                   _L15668_))
                                                _mid15704_)))
                                         (begin
                                           (let ((_g23281_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g23280_)
                                                        (##vector-length
                                                         _g23280_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g23281_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g23281_)))
                                           (let ((_left15715_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g23280_ 0)))
                                                 (_right15717_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g23280_
                                                     1))))
                                             (let ()
                                               (let* ((_g1572115762_
                                                       (lambda (_g1572215758_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1572215758_)))
                                                      (_g1572015923_
                                                       (lambda (_g1572215766_)
                                                         (if (gx#stx-pair?
                                                              _g1572215766_)
                                                             (let ((_e1572915769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1572215766_)))
                       (let ((_hd1572815773_
                              (let ()
                                (declare (not safe))
                                (##car _e1572915769_)))
                             (_tl1572715776_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1572915769_))))
                         (if (gx#stx-pair? _tl1572715776_)
                             (let ((_e1573215779_
                                    (gx#syntax-e _tl1572715776_)))
                               (let ((_hd1573115783_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1573215779_)))
                                     (_tl1573015786_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1573215779_))))
                                 (if (gx#stx-pair/null? _hd1573115783_)
                                     (let ((_g23283_
                                            (gx#syntax-split-splice
                                             _hd1573115783_
                                             '0)))
                                       (begin
                                         (let ((_g23284_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g23283_)
                                                      (##vector-length
                                                       _g23283_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g23284_ 2)))
                                               (error "Context expects 2 values"
                                                      _g23284_)))
                                         (let ((_target1573315789_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g23283_ 0)))
                                               (_tl1573515792_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g23283_ 1))))
                                           (if (gx#stx-null? _tl1573515792_)
                                               (letrec ((_loop1573615795_
                                                         (lambda (_hd1573415799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-left1574015802_)
                   (if (gx#stx-pair? _hd1573415799_)
                       (let ((_e1573715805_ (gx#syntax-e _hd1573415799_)))
                         (let ((_lp-hd1573815809_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1573715805_)))
                               (_lp-tl1573915812_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1573715805_))))
                           (_loop1573615795_
                            _lp-tl1573915812_
                            (cons _lp-hd1573815809_ _K-left1574015802_))))
                       (let ((_K-left1574115815_ (reverse _K-left1574015802_)))
                         (if (gx#stx-pair? _tl1573015786_)
                             (let ((_e1574415819_
                                    (gx#syntax-e _tl1573015786_)))
                               (let ((_hd1574315823_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1574415819_)))
                                     (_tl1574215826_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1574415819_))))
                                 (if (gx#stx-pair/null? _hd1574315823_)
                                     (let ((_g23285_
                                            (gx#syntax-split-splice
                                             _hd1574315823_
                                             '0)))
                                       (begin
                                         (let ((_g23286_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g23285_)
                                                      (##vector-length
                                                       _g23285_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g23286_ 2)))
                                               (error "Context expects 2 values"
                                                      _g23286_)))
                                         (let ((_target1574515829_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g23285_ 0)))
                                               (_tl1574715832_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g23285_ 1))))
                                           (if (gx#stx-null? _tl1574715832_)
                                               (letrec ((_loop1574815835_
                                                         (lambda (_hd1574615839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-right1575215842_)
                   (if (gx#stx-pair? _hd1574615839_)
                       (let ((_e1574915845_ (gx#syntax-e _hd1574615839_)))
                         (let ((_lp-hd1575015849_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1574915845_)))
                               (_lp-tl1575115852_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1574915845_))))
                           (_loop1574815835_
                            _lp-tl1575115852_
                            (cons _lp-hd1575015849_ _K-right1575215842_))))
                       (let ((_K-right1575315855_
                              (reverse _K-right1575215842_)))
                         (if (gx#stx-pair? _tl1574215826_)
                             (let ((_e1575615859_
                                    (gx#syntax-e _tl1574215826_)))
                               (let ((_hd1575515863_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1575615859_)))
                                     (_tl1575415866_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1575615859_))))
                                 (if (gx#stx-null? _tl1575415866_)
                                     ((lambda (_L15869_
                                               _L15871_
                                               _L15872_
                                               _L15873_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##fx<)
                                                            (cons _L15670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L15869_ '())))
              (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                          (cons _L15671_
                                (cons _L15670_
                                      (let ((__tmp23287
                                             (lambda (_g1590815911_
                                                      _g1590915914_)
                                               (cons _g1590815911_
                                                     _g1590915914_))))
                                        (declare (not safe))
                                        (__foldr1 __tmp23287 '() _L15872_)))))
                    (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                                (cons _L15869_
                                      (cons _L15670_
                                            (let ((__tmp23288
                                                   (lambda (_g1590615917_
                                                            _g1590715920_)
                                                     (cons _g1590615917_
                                                           _g1590715920_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp23288
                                               '()
                                               _L15871_)))))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _hd1575515863_
                                      _K-right1575315855_
                                      _K-left1574115815_
                                      _hd1572815773_)
                                     (_g1572115762_ _g1572215766_))))
                             (_g1572115762_ _g1572215766_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1574815835_
                                                  _target1574515829_
                                                  '()))
                                               (_g1572115762_
                                                _g1572215766_)))))
                                     (_g1572115762_ _g1572215766_))))
                             (_g1572115762_ _g1572215766_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1573615795_
                                                  _target1573315789_
                                                  '()))
                                               (_g1572115762_
                                                _g1572215766_)))))
                                     (_g1572115762_ _g1572215766_))))
                             (_g1572115762_ _g1572215766_))))
                     (_g1572115762_ _g1572215766_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1572015923_
                                                  (list _mid15704_
                                                        _left15715_
                                                        _right15717_
                                                        (fx+ _mid15704_
                                                             (gx#stx-e
                                                              _L15671_))))))))))
                                     _K1559515664_
                                     _hd1558515632_
                                     _hd1558215622_))))))
                    (_loop1559015644_ _target1558715638_ '()))
                  (_g1557315601_ _g1557415605_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1557315601_
                                                 _g1557415605_))))
                                        (_g1557315601_ _g1557415605_))))
                                (_g1557315601_ _g1557415605_))))
                        (_g1557315601_ _g1557415605_)))))
            (_g1557215927_ _stx15567_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do|
      (lambda (_$stx15947_)
        (let* ((_g1595116022_
                (lambda (_g1595216018_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1595216018_)))
               (_g1595016311_
                (lambda (_g1595216026_)
                  (if (gx#stx-pair? _g1595216026_)
                      (let ((_e1596116029_ (gx#syntax-e _g1595216026_)))
                        (let ((_hd1596016033_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1596116029_)))
                              (_tl1595916036_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1596116029_))))
                          (if (gx#stx-pair? _tl1595916036_)
                              (let ((_e1596416039_
                                     (gx#syntax-e _tl1595916036_)))
                                (let ((_hd1596316043_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1596416039_)))
                                      (_tl1596216046_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1596416039_))))
                                  (if (gx#stx-pair/null? _hd1596316043_)
                                      (let ((_g23289_
                                             (gx#syntax-split-splice
                                              _hd1596316043_
                                              '0)))
                                        (begin
                                          (let ((_g23290_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23289_)
                                                       (##vector-length
                                                        _g23289_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23290_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23290_)))
                                          (let ((_target1596516049_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23289_ 0)))
                                                (_tl1596716052_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23289_ 1))))
                                            (if (gx#stx-null? _tl1596716052_)
                                                (letrec ((_loop1596816055_
                                                          (lambda (_hd1596616059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _step1597216062_
                           _init1597316064_
                           _var1597416066_)
                    (if (gx#stx-pair? _hd1596616059_)
                        (let ((_e1596916069_ (gx#syntax-e _hd1596616059_)))
                          (let ((_lp-hd1597016073_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1596916069_)))
                                (_lp-tl1597116076_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1596916069_))))
                            (if (gx#stx-pair? _lp-hd1597016073_)
                                (let ((_e1598016079_
                                       (gx#syntax-e _lp-hd1597016073_)))
                                  (let ((_hd1597916083_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1598016079_)))
                                        (_tl1597816086_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1598016079_))))
                                    (if (gx#stx-pair? _tl1597816086_)
                                        (let ((_e1598316089_
                                               (gx#syntax-e _tl1597816086_)))
                                          (let ((_hd1598216093_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1598316089_)))
                                                (_tl1598116096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1598316089_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1598116096_)
                                                (let ((_g23291_
                                                       (gx#syntax-split-splice
                                                        _tl1598116096_
                                                        '0)))
                                                  (begin
                                                    (let ((_g23292_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g23291_)
                         (##vector-length _g23291_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g23292_ 2)))
                  (error "Context expects 2 values" _g23292_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1598416099_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g23291_
                                                              0)))
                                                          (_tl1598616102_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g23291_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1598616102_)
                                                          (letrec ((_loop1598716105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1598516109_ _step1599116112_)
                              (if (gx#stx-pair? _hd1598516109_)
                                  (let ((_e1598816115_
                                         (gx#syntax-e _hd1598516109_)))
                                    (let ((_lp-hd1598916119_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1598816115_)))
                                          (_lp-tl1599016122_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1598816115_))))
                                      (_loop1598716105_
                                       _lp-tl1599016122_
                                       (cons _lp-hd1598916119_
                                             _step1599116112_))))
                                  (let ((_step1599216125_
                                         (reverse _step1599116112_)))
                                    (_loop1596816055_
                                     _lp-tl1597116076_
                                     (cons _step1599216125_ _step1597216062_)
                                     (cons _hd1598216093_ _init1597316064_)
                                     (cons _hd1597916083_
                                           _var1597416066_)))))))
                    (_loop1598716105_ _target1598416099_ '()))
                  (_g1595116022_ _g1595216026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1595116022_
                                                 _g1595216026_))))
                                        (_g1595116022_ _g1595216026_))))
                                (_g1595116022_ _g1595216026_))))
                        (let ((_step1597516129_ (reverse _step1597216062_))
                              (_init1597616132_ (reverse _init1597316064_))
                              (_var1597716134_ (reverse _var1597416066_)))
                          (if (gx#stx-pair? _tl1596216046_)
                              (let ((_e1599516137_
                                     (gx#syntax-e _tl1596216046_)))
                                (let ((_hd1599416141_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1599516137_)))
                                      (_tl1599316144_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1599516137_))))
                                  (if (gx#stx-pair? _hd1599416141_)
                                      (let ((_e1599816147_
                                             (gx#syntax-e _hd1599416141_)))
                                        (let ((_hd1599716151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1599816147_)))
                                              (_tl1599616154_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1599816147_))))
                                          (if (gx#stx-pair/null?
                                               _tl1599616154_)
                                              (let ((_g23293_
                                                     (gx#syntax-split-splice
                                                      _tl1599616154_
                                                      '0)))
                                                (begin
                                                  (let ((_g23294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g23293_)
                                                               (##vector-length
                                                                _g23293_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g23294_ 2)))
                (error "Context expects 2 values" _g23294_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1599916157_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g23293_
                                                            0)))
                                                        (_tl1600116160_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g23293_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1600116160_)
                                                        (letrec ((_loop1600216163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1600016167_ _fini1600616170_)
                            (if (gx#stx-pair? _hd1600016167_)
                                (let ((_e1600316173_
                                       (gx#syntax-e _hd1600016167_)))
                                  (let ((_lp-hd1600416177_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1600316173_)))
                                        (_lp-tl1600516180_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1600316173_))))
                                    (_loop1600216163_
                                     _lp-tl1600516180_
                                     (cons _lp-hd1600416177_
                                           _fini1600616170_))))
                                (let ((_fini1600716183_
                                       (reverse _fini1600616170_)))
                                  (if (gx#stx-pair/null? _tl1599316144_)
                                      (let ((_g23295_
                                             (gx#syntax-split-splice
                                              _tl1599316144_
                                              '0)))
                                        (begin
                                          (let ((_g23296_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23295_)
                                                       (##vector-length
                                                        _g23295_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23296_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23296_)))
                                          (let ((_target1600816187_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23295_ 0)))
                                                (_tl1601016190_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23295_ 1))))
                                            (if (gx#stx-null? _tl1601016190_)
                                                (letrec ((_loop1601116193_
                                                          (lambda (_hd1600916197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1601516200_)
                    (if (gx#stx-pair? _hd1600916197_)
                        (let ((_e1601216203_ (gx#syntax-e _hd1600916197_)))
                          (let ((_lp-hd1601316207_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1601216203_)))
                                (_lp-tl1601416210_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1601216203_))))
                            (_loop1601116193_
                             _lp-tl1601416210_
                             (cons _lp-hd1601316207_ _body1601516200_))))
                        (let ((_body1601616213_ (reverse _body1601516200_)))
                          ((lambda (_L16217_
                                    _L16219_
                                    _L16220_
                                    _L16221_
                                    _L16222_
                                    _L16223_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (let ((__tmp23297
                                         (lambda (_g1625616259_ _g1625716262_)
                                           (cons _g1625616259_
                                                 _g1625716262_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp23297 '() _L16223_)))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L16222_
                                                      _L16223_)
                                                     (let ((__tmp23298
                                                            (lambda (_g1627316277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1627416280_
                             _g1627516282_)
                      (cons (cons _g1627416280_ (cons _g1627316277_ '()))
                            _g1627516282_))))
               (declare (not safe))
               (__foldr2 __tmp23298 '() _L16222_ _L16223_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _L16220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (let ((__tmp23299
                                                      (lambda (_g1627116285_
                                                               _g1627216288_)
                                                        (cons _g1627116285_
                                                              _g1627216288_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp23299
                                                  '()
                                                  _L16219_))))
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (let ((__tmp23303
                                                      (lambda (_g1626416291_
                                                               _g1626516294_)
                                                        (cons _g1626416291_
                                                              _g1626516294_)))
                                                     (__tmp23300
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$loop)
                          (begin
                            (gx#syntax-check-splice-targets _L16221_ _L16223_)
                            (let ((__tmp23301
                                   (lambda (_g1626616297_
                                            _g1626716300_
                                            _g1626816302_)
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons _g1626716300_
                                                       (let ((__tmp23302
                                                              (lambda (_g1626916305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1627016308_)
                        (cons _g1626916305_ _g1627016308_))))
                 (declare (not safe))
                 (__foldr1 __tmp23302 '() _g1626616297_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1626816302_))))
                              (declare (not safe))
                              (__foldr2 __tmp23301 '() _L16221_ _L16223_))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp23303
                                                  __tmp23300
                                                  _L16217_)))
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_g1595116022_ _g1595216026_)))
                           _body1601616213_
                           _fini1600716183_
                           _hd1599716151_
                           _step1597516129_
                           _init1597616132_
                           _var1597716134_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1601116193_
                                                   _target1600816187_
                                                   '()))
                                                (_g1595116022_
                                                 _g1595216026_)))))
                                      (_g1595116022_ _g1595216026_)))))))
                  (_loop1600216163_ _target1599916157_ '()))
                (_g1595116022_ _g1595216026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1595116022_ _g1595216026_))))
                                      (_g1595116022_ _g1595216026_))))
                              (_g1595116022_ _g1595216026_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1596816055_
                                                   _target1596516049_
                                                   '()
                                                   '()
                                                   '()))
                                                (_g1595116022_
                                                 _g1595216026_)))))
                                      (_g1595116022_ _g1595216026_))))
                              (_g1595116022_ _g1595216026_))))
                      (_g1595116022_ _g1595216026_)))))
          (_g1595016311_ _$stx15947_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do-while|
      (lambda (_$stx16319_)
        (let* ((_g1632316346_
                (lambda (_g1632416342_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1632416342_)))
               (_g1632216417_
                (lambda (_g1632416350_)
                  (if (gx#stx-pair? _g1632416350_)
                      (let ((_e1633116353_ (gx#syntax-e _g1632416350_)))
                        (let ((_hd1633016357_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1633116353_)))
                              (_tl1632916360_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1633116353_))))
                          (if (gx#stx-pair? _tl1632916360_)
                              (let ((_e1633416363_
                                     (gx#syntax-e _tl1632916360_)))
                                (let ((_hd1633316367_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1633416363_)))
                                      (_tl1633216370_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1633416363_))))
                                  (if (gx#stx-pair? _tl1633216370_)
                                      (let ((_e1633716373_
                                             (gx#syntax-e _tl1633216370_)))
                                        (let ((_hd1633616377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1633716373_)))
                                              (_tl1633516380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1633716373_))))
                                          (if (gx#stx-pair? _hd1633616377_)
                                              (let ((_e1634016383_
                                                     (gx#syntax-e
                                                      _hd1633616377_)))
                                                (let ((_hd1633916387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1634016383_)))
                                                      (_tl1633816390_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1634016383_))))
                                                  ((lambda (_L16393_
                                                            _L16395_
                                                            _L16396_
                                                            _L16397_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _L16397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _L16396_ '()))
                                     _L16395_)
                               _L16393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1633516380_
                                                   _tl1633816390_
                                                   _hd1633916387_
                                                   _hd1633316367_)))
                                              (_g1632316346_ _g1632416350_))))
                                      (_g1632316346_ _g1632416350_))))
                              (_g1632316346_ _g1632416350_))))
                      (_g1632316346_ _g1632416350_)))))
          (_g1632216417_ _$stx16319_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_$stx16421_)
        (let* ((___stx2213022131_ _$stx16421_)
               (_g1642616457_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2213022131_))))
          (let ((___kont2213322134_ (lambda (_L16569_) _L16569_))
                (___kont2213522136_
                 (lambda (_L16514_ _L16516_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _L16516_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (let ((__tmp23304
                                                              (lambda (_g1653316536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1653416539_)
                        (cons _g1653316536_ _g1653416539_))))
                 (declare (not safe))
                 (__foldr1 __tmp23304 '() _L16514_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((___match2217322174_
                   (lambda (_e1643916464_
                            _hd1643816468_
                            _tl1643716471_
                            _e1644216474_
                            _hd1644116478_
                            _tl1644016481_
                            ___splice2213722138_
                            _target1644316484_
                            _tl1644516487_)
                     (letrec ((_loop1644616490_
                               (lambda (_hd1644416494_ _rest1645016497_)
                                 (if (gx#stx-pair? _hd1644416494_)
                                     (let ((_e1644716500_
                                            (gx#syntax-e _hd1644416494_)))
                                       (let ((_lp-tl1644916507_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1644716500_)))
                                             (_lp-hd1644816504_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1644716500_))))
                                         (_loop1644616490_
                                          _lp-tl1644916507_
                                          (cons _lp-hd1644816504_
                                                _rest1645016497_))))
                                     (let ((_rest1645116510_
                                            (reverse _rest1645016497_)))
                                       (___kont2213522136_
                                        _rest1645116510_
                                        _hd1644116478_))))))
                       (_loop1644616490_ _target1644316484_ '())))))
              (if (gx#stx-pair? ___stx2213022131_)
                  (let ((_e1643116549_ (gx#syntax-e ___stx2213022131_)))
                    (let ((_tl1642916556_
                           (let () (declare (not safe)) (##cdr _e1643116549_)))
                          (_hd1643016553_
                           (let ()
                             (declare (not safe))
                             (##car _e1643116549_))))
                      (if (gx#stx-pair? _tl1642916556_)
                          (let ((_e1643416559_ (gx#syntax-e _tl1642916556_)))
                            (let ((_tl1643216566_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1643416559_)))
                                  (_hd1643316563_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1643416559_))))
                              (if (gx#stx-null? _tl1643216566_)
                                  (___kont2213322134_ _hd1643316563_)
                                  (if (gx#stx-pair/null? _tl1643216566_)
                                      (let ((___splice2213722138_
                                             (gx#syntax-split-splice
                                              _tl1643216566_
                                              '0)))
                                        (let ((_tl1644516487_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2213722138_
                                                  '1)))
                                              (_target1644316484_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2213722138_
                                                  '0))))
                                          (if (gx#stx-null? _tl1644516487_)
                                              (___match2217322174_
                                               _e1643116549_
                                               _hd1643016553_
                                               _tl1642916556_
                                               _e1643416559_
                                               _hd1643316563_
                                               _tl1643216566_
                                               ___splice2213722138_
                                               _target1644316484_
                                               _tl1644516487_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1642616457_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1642616457_))))))
                          (let () (declare (not safe)) (_g1642616457_)))))
                  (let () (declare (not safe)) (_g1642616457_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_$stx16587_)
        (let* ((___stx2217622177_ _$stx16587_)
               (_g1659316646_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2217622177_))))
          (let ((___kont2217922180_
                 (lambda (_L16848_ _L16850_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _L16850_ (cons _L16848_ '())) '())
                               (cons _L16850_ '())))))
                (___kont2218122182_
                 (lambda (_L16792_ _L16794_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _L16794_ (cons _L16792_ '())) '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _L16794_)
                                     '())))))
                (___kont2218322184_
                 (lambda (_L16713_ _L16715_ _L16716_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _L16716_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _L16715_
                                                             (let ((__tmp23305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1673616739_ _g1673716742_)
                              (cons _g1673616739_ _g1673716742_))))
                       (declare (not safe))
                       (__foldr1 __tmp23305 '() _L16713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _L16716_ '()))))))
            (let* ((___match2226322264_
                    (lambda (_e1662516653_
                             _hd1662416657_
                             _tl1662316660_
                             _e1662816663_
                             _hd1662716667_
                             _tl1662616670_
                             _e1663116673_
                             _hd1663016677_
                             _tl1662916680_
                             ___splice2218522186_
                             _target1663216683_
                             _tl1663416686_)
                      (letrec ((_loop1663516689_
                                (lambda (_hd1663316693_ _body1663916696_)
                                  (if (gx#stx-pair? _hd1663316693_)
                                      (let ((_e1663616699_
                                             (gx#syntax-e _hd1663316693_)))
                                        (let ((_lp-tl1663816706_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1663616699_)))
                                              (_lp-hd1663716703_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1663616699_))))
                                          (_loop1663516689_
                                           _lp-tl1663816706_
                                           (cons _lp-hd1663716703_
                                                 _body1663916696_))))
                                      (let ((_body1664016709_
                                             (reverse _body1663916696_)))
                                        (let ((_L16713_ _body1664016709_)
                                              (_L16715_ _tl1662916680_)
                                              (_L16716_ _hd1663016677_))
                                          (if (gx#identifier? _L16716_)
                                              (___kont2218322184_
                                               _L16713_
                                               _L16715_
                                               _L16716_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1659316646_)))))))))
                        (_loop1663516689_ _target1663216683_ '()))))
                   (___match2223722238_
                    (lambda (_e1661016752_
                             _hd1660916756_
                             _tl1660816759_
                             _e1661316762_
                             _hd1661216766_
                             _tl1661116769_
                             _e1661616772_
                             _hd1661516776_
                             _tl1661416779_
                             _e1661916782_
                             _hd1661816786_
                             _tl1661716789_)
                      (let ((_L16792_ _hd1661816786_)
                            (_L16794_ _tl1661416779_))
                        (if (gx#identifier-list? _L16794_)
                            (___kont2218122182_ _L16792_ _L16794_)
                            (if (gx#stx-pair/null? _tl1661116769_)
                                (let ((___splice2218522186_
                                       (gx#syntax-split-splice
                                        _tl1661116769_
                                        '0)))
                                  (let ((_tl1663416686_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2218522186_
                                            '1)))
                                        (_target1663216683_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2218522186_
                                            '0))))
                                    (if (gx#stx-null? _tl1663416686_)
                                        (___match2226322264_
                                         _e1661016752_
                                         _hd1660916756_
                                         _tl1660816759_
                                         _e1661316762_
                                         _hd1661216766_
                                         _tl1661116769_
                                         _e1661616772_
                                         _hd1661516776_
                                         _tl1661416779_
                                         ___splice2218522186_
                                         _target1663216683_
                                         _tl1663416686_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1659316646_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1659316646_)))))))
                   (___match2220722208_
                    (lambda (_e1659916818_
                             _hd1659816822_
                             _tl1659716825_
                             _e1660216828_
                             _hd1660116832_
                             _tl1660016835_
                             _e1660516838_
                             _hd1660416842_
                             _tl1660316845_)
                      (let ((_L16848_ _hd1660416842_)
                            (_L16850_ _hd1660116832_))
                        (if (gx#identifier? _L16850_)
                            (___kont2217922180_ _L16848_ _L16850_)
                            (if (gx#stx-pair? _hd1660116832_)
                                (let ((_e1661616772_
                                       (gx#syntax-e _hd1660116832_)))
                                  (let ((_tl1661416779_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1661616772_)))
                                        (_hd1661516776_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1661616772_))))
                                    (if (gx#identifier? _hd1661516776_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g23306_|
                                             _hd1661516776_)
                                            (___match2223722238_
                                             _e1659916818_
                                             _hd1659816822_
                                             _tl1659716825_
                                             _e1660216828_
                                             _hd1660116832_
                                             _tl1660016835_
                                             _e1661616772_
                                             _hd1661516776_
                                             _tl1661416779_
                                             _e1660516838_
                                             _hd1660416842_
                                             _tl1660316845_)
                                            (if (gx#stx-pair/null?
                                                 _tl1660016835_)
                                                (let ((___splice2218522186_
                                                       (gx#syntax-split-splice
                                                        _tl1660016835_
                                                        '0)))
                                                  (let ((_tl1663416686_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2218522186_
                                                            '1)))
                                                        (_target1663216683_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2218522186_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl1663416686_)
                                                        (___match2226322264_
                                                         _e1659916818_
                                                         _hd1659816822_
                                                         _tl1659716825_
                                                         _e1660216828_
                                                         _hd1660116832_
                                                         _tl1660016835_
                                                         _e1661616772_
                                                         _hd1661516776_
                                                         _tl1661416779_
                                                         ___splice2218522186_
                                                         _target1663216683_
                                                         _tl1663416686_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g1659316646_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1659316646_))))
                                        (if (gx#stx-pair/null? _tl1660016835_)
                                            (let ((___splice2218522186_
                                                   (gx#syntax-split-splice
                                                    _tl1660016835_
                                                    '0)))
                                              (let ((_tl1663416686_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2218522186_
                                                        '1)))
                                                    (_target1663216683_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2218522186_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1663416686_)
                                                    (___match2226322264_
                                                     _e1659916818_
                                                     _hd1659816822_
                                                     _tl1659716825_
                                                     _e1660216828_
                                                     _hd1660116832_
                                                     _tl1660016835_
                                                     _e1661616772_
                                                     _hd1661516776_
                                                     _tl1661416779_
                                                     ___splice2218522186_
                                                     _target1663216683_
                                                     _tl1663416686_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1659316646_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g1659316646_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g1659316646_))))))))
              (if (gx#stx-pair? ___stx2217622177_)
                  (let ((_e1659916818_ (gx#syntax-e ___stx2217622177_)))
                    (let ((_tl1659716825_
                           (let () (declare (not safe)) (##cdr _e1659916818_)))
                          (_hd1659816822_
                           (let ()
                             (declare (not safe))
                             (##car _e1659916818_))))
                      (if (gx#stx-pair? _tl1659716825_)
                          (let ((_e1660216828_ (gx#syntax-e _tl1659716825_)))
                            (let ((_tl1660016835_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1660216828_)))
                                  (_hd1660116832_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1660216828_))))
                              (if (gx#stx-pair? _tl1660016835_)
                                  (let ((_e1660516838_
                                         (gx#syntax-e _tl1660016835_)))
                                    (let ((_tl1660316845_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1660516838_)))
                                          (_hd1660416842_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1660516838_))))
                                      (if (gx#stx-null? _tl1660316845_)
                                          (___match2220722208_
                                           _e1659916818_
                                           _hd1659816822_
                                           _tl1659716825_
                                           _e1660216828_
                                           _hd1660116832_
                                           _tl1660016835_
                                           _e1660516838_
                                           _hd1660416842_
                                           _tl1660316845_)
                                          (if (gx#stx-pair? _hd1660116832_)
                                              (let ((_e1661616772_
                                                     (gx#syntax-e
                                                      _hd1660116832_)))
                                                (let ((_tl1661416779_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1661616772_)))
                                                      (_hd1661516776_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1661616772_))))
                                                  (if (gx#stx-pair/null?
                                                       _tl1660016835_)
                                                      (let ((___splice2218522186_
                                                             (gx#syntax-split-splice
                                                              _tl1660016835_
                                                              '0)))
                                                        (let ((_tl1663416686_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice2218522186_ '1)))
                      (_target1663216683_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice2218522186_ '0))))
                  (if (gx#stx-null? _tl1663416686_)
                      (___match2226322264_
                       _e1659916818_
                       _hd1659816822_
                       _tl1659716825_
                       _e1660216828_
                       _hd1660116832_
                       _tl1660016835_
                       _e1661616772_
                       _hd1661516776_
                       _tl1661416779_
                       ___splice2218522186_
                       _target1663216683_
                       _tl1663416686_)
                      (let () (declare (not safe)) (_g1659316646_)))))
              (let () (declare (not safe)) (_g1659316646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1659316646_))))))
                                  (if (gx#stx-pair? _hd1660116832_)
                                      (let ((_e1661616772_
                                             (gx#syntax-e _hd1660116832_)))
                                        (let ((_tl1661416779_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1661616772_)))
                                              (_hd1661516776_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1661616772_))))
                                          (if (gx#stx-pair/null?
                                               _tl1660016835_)
                                              (let ((___splice2218522186_
                                                     (gx#syntax-split-splice
                                                      _tl1660016835_
                                                      '0)))
                                                (let ((_tl1663416686_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2218522186_
                                                          '1)))
                                                      (_target1663216683_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2218522186_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1663416686_)
                                                      (___match2226322264_
                                                       _e1659916818_
                                                       _hd1659816822_
                                                       _tl1659716825_
                                                       _e1660216828_
                                                       _hd1660116832_
                                                       _tl1660016835_
                                                       _e1661616772_
                                                       _hd1661516776_
                                                       _tl1661416779_
                                                       ___splice2218522186_
                                                       _target1663216683_
                                                       _tl1663416686_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1659316646_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1659316646_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1659316646_))))))
                          (let () (declare (not safe)) (_g1659316646_)))))
                  (let () (declare (not safe)) (_g1659316646_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_stx16870_)
        (letrec ((_let-bind?16873_
                  (lambda (_x17796_)
                    (let* ((___stx2226622267_ _x17796_)
                           (_g1780117820_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2226622267_))))
                      (let ((___kont2226922270_
                             (lambda (_L17888_ _L17890_)
                               (_let-head?16876_ _L17890_)))
                            (___kont2227122272_ (lambda (_L17848_) '#t))
                            (___kont2227322274_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx2226622267_)
                            (let ((_e1780717868_
                                   (gx#syntax-e ___stx2226622267_)))
                              (let ((_tl1780517875_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1780717868_)))
                                    (_hd1780617872_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1780717868_))))
                                (if (gx#stx-pair? _tl1780517875_)
                                    (let ((_e1781017878_
                                           (gx#syntax-e _tl1780517875_)))
                                      (let ((_tl1780817885_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1781017878_)))
                                            (_hd1780917882_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1781017878_))))
                                        (if (gx#stx-null? _tl1780817885_)
                                            (___kont2226922270_
                                             _hd1780917882_
                                             _hd1780617872_)
                                            (___kont2227322274_))))
                                    (if (gx#stx-null? _tl1780517875_)
                                        (___kont2227122272_ _hd1780617872_)
                                        (___kont2227322274_)))))
                            (___kont2227322274_))))))
                 (_let-bind16875_
                  (lambda (_x17698_)
                    (let* ((___stx2230022301_ _x17698_)
                           (_g1770217721_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2230022301_))))
                      (let ((___kont2230322304_
                             (lambda (_L17777_ _L17779_) _x17698_))
                            (___kont2230522306_
                             (lambda (_L17738_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _L17738_ '())))))
                        (if (gx#stx-pair? ___stx2230022301_)
                            (let ((_e1770817757_
                                   (gx#syntax-e ___stx2230022301_)))
                              (let ((_tl1770617764_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1770817757_)))
                                    (_hd1770717761_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1770817757_))))
                                (if (gx#stx-pair? _tl1770617764_)
                                    (let ((_e1771117767_
                                           (gx#syntax-e _tl1770617764_)))
                                      (let ((_tl1770917774_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1771117767_)))
                                            (_hd1771017771_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1771117767_))))
                                        (if (gx#stx-null? _tl1770917774_)
                                            (___kont2230322304_
                                             _hd1771017771_
                                             _hd1770717761_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1770217721_)))))
                                    (if (gx#stx-null? _tl1770617764_)
                                        (___kont2230522306_ _hd1770717761_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1770217721_))))))
                            (let () (declare (not safe)) (_g1770217721_)))))))
                 (_let-head?16876_
                  (lambda (_x17638_)
                    (let* ((___stx2233222333_ _x17638_)
                           (_g1764217653_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2233222333_))))
                      (let ((___kont2233522336_
                             (lambda (_L17681_)
                               (gx#stx-andmap gx#identifier? _L17681_)))
                            (___kont2233722338_
                             (lambda () (gx#identifier? _x17638_))))
                        (if (gx#stx-pair? ___stx2233222333_)
                            (let ((_e1764717671_
                                   (gx#syntax-e ___stx2233222333_)))
                              (let ((_tl1764517678_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1764717671_)))
                                    (_hd1764617675_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1764717671_))))
                                (if (gx#identifier? _hd1764617675_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g23307_|
                                         _hd1764617675_)
                                        (___kont2233522336_ _tl1764517678_)
                                        (___kont2233722338_))
                                    (___kont2233722338_))))
                            (___kont2233722338_))))))
                 (_let-head16877_
                  (lambda (_x17578_)
                    (let* ((___stx2235222353_ _x17578_)
                           (_g1758217593_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2235222353_))))
                      (let ((___kont2235522356_ (lambda (_L17621_) _L17621_))
                            (___kont2235722358_ (lambda () (list _x17578_))))
                        (if (gx#stx-pair? ___stx2235222353_)
                            (let ((_e1758717611_
                                   (gx#syntax-e ___stx2235222353_)))
                              (let ((_tl1758517618_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1758717611_)))
                                    (_hd1758617615_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1758717611_))))
                                (if (gx#identifier? _hd1758617615_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g23308_|
                                         _hd1758617615_)
                                        (___kont2235522356_ _tl1758517618_)
                                        (___kont2235722358_))
                                    (___kont2235722358_))))
                            (___kont2235722358_)))))))
          (let* ((___stx2237222373_ _stx16870_)
                 (_g1688116953_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2237222373_))))
            (let ((___kont2237522376_
                   (lambda (_L17551_ _L17553_ _L17554_ _L17555_)
                     (cons _L17555_
                           (cons (cons (cons _L17554_ (cons _L17553_ '())) '())
                                 _L17551_))))
                  (___kont2237722378_
                   (lambda (_L17473_ _L17475_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _L17475_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (let ((__tmp23309
                                                          (lambda (_g1749517498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1749617501_)
                    (cons _g1749517498_ _g1749617501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp23309
                                                      '()
                                                      _L17473_))))
                                       '())))))
                  (___kont2238122382_
                   (lambda (_L17040_ _L17042_)
                     (let* ((_g1707317099_
                             (lambda (_g1707417095_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1707417095_)))
                            (_g1707217384_
                             (lambda (_g1707417103_)
                               (if (gx#stx-pair/null? _g1707417103_)
                                   (let ((_g23310_
                                          (gx#syntax-split-splice
                                           _g1707417103_
                                           '0)))
                                     (begin
                                       (let ((_g23311_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g23310_)
                                                    (##vector-length _g23310_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g23311_ 2)))
                                             (error "Context expects 2 values"
                                                    _g23311_)))
                                       (let ((_target1707717106_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g23310_ 0)))
                                             (_tl1707917109_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g23310_ 1))))
                                         (if (gx#stx-null? _tl1707917109_)
                                             (letrec ((_loop1708017112_
                                                       (lambda (_hd1707817116_
                                                                _e1708417119_
                                                                _hd1708517121_)
                                                         (if (gx#stx-pair?
                                                              _hd1707817116_)
                                                             (let ((_e1708117124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1707817116_)))
                       (let ((_lp-hd1708217128_
                              (let ()
                                (declare (not safe))
                                (##car _e1708117124_)))
                             (_lp-tl1708317131_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1708117124_))))
                         (if (gx#stx-pair? _lp-hd1708217128_)
                             (let ((_e1709017134_
                                    (gx#syntax-e _lp-hd1708217128_)))
                               (let ((_hd1708917138_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1709017134_)))
                                     (_tl1708817141_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1709017134_))))
                                 (if (gx#stx-pair? _tl1708817141_)
                                     (let ((_e1709317144_
                                            (gx#syntax-e _tl1708817141_)))
                                       (let ((_hd1709217148_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1709317144_)))
                                             (_tl1709117151_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1709317144_))))
                                         (if (gx#stx-null? _tl1709117151_)
                                             (_loop1708017112_
                                              _lp-tl1708317131_
                                              (cons _hd1709217148_
                                                    _e1708417119_)
                                              (cons _hd1708917138_
                                                    _hd1708517121_))
                                             (_g1707317099_ _g1707417103_))))
                                     (_g1707317099_ _g1707417103_))))
                             (_g1707317099_ _g1707417103_))))
                     (let ((_e1708617154_ (reverse _e1708417119_))
                           (_hd1708717157_ (reverse _hd1708517121_)))
                       ((lambda (_L17160_ _L17162_)
                          (let ()
                            (let* ((_g1717817195_
                                    (lambda (_g1717917191_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1717917191_)))
                                   (_g1717717372_
                                    (lambda (_g1717917199_)
                                      (if (gx#stx-pair/null? _g1717917199_)
                                          (let ((_g23312_
                                                 (gx#syntax-split-splice
                                                  _g1717917199_
                                                  '0)))
                                            (begin
                                              (let ((_g23313_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g23312_)
                                                           (##vector-length
                                                            _g23312_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g23313_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g23313_)))
                                              (let ((_target1718117202_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g23312_
                                                        0)))
                                                    (_tl1718317205_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g23312_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1718317205_)
                                                    (letrec ((_loop1718417208_
                                                              (lambda (_hd1718217212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _$e1718817215_)
                        (if (gx#stx-pair? _hd1718217212_)
                            (let ((_e1718517218_ (gx#syntax-e _hd1718217212_)))
                              (let ((_lp-hd1718617222_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1718517218_)))
                                    (_lp-tl1718717225_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1718517218_))))
                                (_loop1718417208_
                                 _lp-tl1718717225_
                                 (cons _lp-hd1718617222_ _$e1718817215_))))
                            (let ((_$e1718917228_ (reverse _$e1718817215_)))
                              ((lambda (_L17232_)
                                 (let ()
                                   (let* ((_g1724917266_
                                           (lambda (_g1725017262_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1725017262_)))
                                          (_g1724817360_
                                           (lambda (_g1725017270_)
                                             (if (gx#stx-pair/null?
                                                  _g1725017270_)
                                                 (let ((_g23314_
                                                        (gx#syntax-split-splice
                                                         _g1725017270_
                                                         '0)))
                                                   (begin
                                                     (let ((_g23315_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g23314_)
                          (##vector-length _g23314_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g23315_ 2)))
                   (error "Context expects 2 values" _g23315_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1725217273_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g23314_
                                                               0)))
                                                           (_tl1725417276_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g23314_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl1725417276_)
                                                           (letrec ((_loop1725517279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1725317283_ _hd-bind1725917286_)
                               (if (gx#stx-pair? _hd1725317283_)
                                   (let ((_e1725617289_
                                          (gx#syntax-e _hd1725317283_)))
                                     (let ((_lp-hd1725717293_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1725617289_)))
                                           (_lp-tl1725817296_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1725617289_))))
                                       (_loop1725517279_
                                        _lp-tl1725817296_
                                        (cons _lp-hd1725717293_
                                              _hd-bind1725917286_))))
                                   (let ((_hd-bind1726017299_
                                          (reverse _hd-bind1725917286_)))
                                     ((lambda (_L17303_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (begin
                                                          (gx#syntax-check-splice-targets
                                                           _L17160_
                                                           _L17232_)
                                                          (let ((__tmp23316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1732817332_ _g1732917335_ _g1733017337_)
                           (cons (cons (cons _g1732917335_ '())
                                       (cons _g1732817332_ '()))
                                 _g1733017337_))))
                    (declare (not safe))
                    (__foldr2 __tmp23316 '() _L17160_ _L17232_)))
                (cons (cons (gx#datum->syntax '#f 'and)
                            (let ((__tmp23320
                                   (lambda (_g1732117340_ _g1732217343_)
                                     (cons _g1732117340_ _g1732217343_)))
                                  (__tmp23317
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'let-values)
                                               (cons (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L17232_
                                                        _L17303_)
                                                       (let ((__tmp23318
                                                              (lambda (_g1732517346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1732617349_
                               _g1732717351_)
                        (cons (cons _g1732617349_ (cons _g1732517346_ '()))
                              _g1732717351_))))
                 (declare (not safe))
                 (__foldr2 __tmp23318 '() _L17232_ _L17303_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp23319
                                                            (lambda (_g1732317354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1732417357_)
                      (cons _g1732317354_ _g1732417357_))))
               (declare (not safe))
               (__foldr1 __tmp23319 '() _L17040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                              (declare (not safe))
                              (__foldr1 __tmp23320 __tmp23317 _L17232_)))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _hd-bind1726017299_))))))
                     (_loop1725517279_ _target1725217273_ '()))
                   (_g1724917266_ _g1725017270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1724917266_
                                                  _g1725017270_)))))
                                     (_g1724817360_
                                      (gx#stx-map
                                       _let-head16877_
                                       (let ((__tmp23321
                                              (lambda (_g1736317366_
                                                       _g1736417369_)
                                                (cons _g1736317366_
                                                      _g1736417369_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp23321
                                          '()
                                          _L17162_)))))))
                               _$e1718917228_))))))
              (_loop1718417208_ _target1718117202_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1717817195_
                                                     _g1717917199_)))))
                                          (_g1717817195_ _g1717917199_)))))
                              (_g1717717372_
                               (gx#gentemps
                                (let ((__tmp23322
                                       (lambda (_g1737517378_ _g1737617381_)
                                         (cons _g1737517378_ _g1737617381_))))
                                  (declare (not safe))
                                  (__foldr1 __tmp23322 '() _L17162_)))))))
                        _e1708617154_
                        _hd1708717157_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1708017112_
                                                _target1707717106_
                                                '()
                                                '()))
                                             (_g1707317099_ _g1707417103_)))))
                                   (_g1707317099_ _g1707417103_)))))
                       (_g1707217384_
                        (gx#stx-map
                         _let-bind16875_
                         (let ((__tmp23323
                                (lambda (_g1738717390_ _g1738817393_)
                                  (cons _g1738717390_ _g1738817393_))))
                           (declare (not safe))
                           (__foldr1 __tmp23323 '() _L17042_))))))))
              (let* ((___match2246922470_
                      (lambda (_e1692616960_
                               _hd1692516964_
                               _tl1692416967_
                               _e1692916970_
                               _hd1692816974_
                               _tl1692716977_
                               ___splice2238322384_
                               _target1693016980_
                               _tl1693216983_)
                        (letrec ((_loop1693316986_
                                  (lambda (_hd1693116990_ _bind1693716993_)
                                    (if (gx#stx-pair? _hd1693116990_)
                                        (let ((_e1693416996_
                                               (gx#syntax-e _hd1693116990_)))
                                          (let ((_lp-tl1693617003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1693416996_)))
                                                (_lp-hd1693517000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1693416996_))))
                                            (_loop1693316986_
                                             _lp-tl1693617003_
                                             (cons _lp-hd1693517000_
                                                   _bind1693716993_))))
                                        (let ((_bind1693817006_
                                               (reverse _bind1693716993_)))
                                          (if (gx#stx-pair/null?
                                               _tl1692716977_)
                                              (let ((___splice2238522386_
                                                     (gx#syntax-split-splice
                                                      _tl1692716977_
                                                      '0)))
                                                (let ((_tl1694117013_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2238522386_
                                                          '1)))
                                                      (_target1693917010_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2238522386_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1694117013_)
                                                      (letrec ((_loop1694217016_
                                                                (lambda (_hd1694017020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1694617023_)
                          (if (gx#stx-pair? _hd1694017020_)
                              (let ((_e1694317026_
                                     (gx#syntax-e _hd1694017020_)))
                                (let ((_lp-tl1694517033_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1694317026_)))
                                      (_lp-hd1694417030_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1694317026_))))
                                  (_loop1694217016_
                                   _lp-tl1694517033_
                                   (cons _lp-hd1694417030_ _body1694617023_))))
                              (let ((_body1694717036_
                                     (reverse _body1694617023_)))
                                (let ((_L17040_ _body1694717036_)
                                      (_L17042_ _bind1693817006_))
                                  (if (gx#stx-andmap
                                       _let-bind?16873_
                                       (let ((__tmp23324
                                              (lambda (_g1706417067_
                                                       _g1706517070_)
                                                (cons _g1706417067_
                                                      _g1706517070_))))
                                         (declare (not safe))
                                         (__foldr1 __tmp23324 '() _L17042_)))
                                      (___kont2238122382_ _L17040_ _L17042_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1688116953_)))))))))
                (_loop1694217016_ _target1693917010_ '()))
              (let () (declare (not safe)) (_g1688116953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1688116953_))))))))
                          (_loop1693316986_ _target1693016980_ '()))))
                     (___match2244922450_
                      (lambda (_e1690317403_
                               _hd1690217407_
                               _tl1690117410_
                               _e1690617413_
                               _hd1690517417_
                               _tl1690417420_
                               _e1690917423_
                               _hd1690817427_
                               _tl1690717430_
                               _e1691217433_
                               _hd1691117437_
                               _tl1691017440_
                               ___splice2237922380_
                               _target1691317443_
                               _tl1691517446_)
                        (letrec ((_loop1691617449_
                                  (lambda (_hd1691417453_ _body1692017456_)
                                    (if (gx#stx-pair? _hd1691417453_)
                                        (let ((_e1691717459_
                                               (gx#syntax-e _hd1691417453_)))
                                          (let ((_lp-tl1691917466_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1691717459_)))
                                                (_lp-hd1691817463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1691717459_))))
                                            (_loop1691617449_
                                             _lp-tl1691917466_
                                             (cons _lp-hd1691817463_
                                                   _body1692017456_))))
                                        (let ((_body1692117469_
                                               (reverse _body1692017456_)))
                                          (___kont2237722378_
                                           _body1692117469_
                                           _hd1691117437_))))))
                          (_loop1691617449_ _target1691317443_ '()))))
                     (___match2241322414_
                      (lambda (_e1688917511_
                               _hd1688817515_
                               _tl1688717518_
                               _e1689217521_
                               _hd1689117525_
                               _tl1689017528_
                               _e1689517531_
                               _hd1689417535_
                               _tl1689317538_
                               _e1689817541_
                               _hd1689717545_
                               _tl1689617548_)
                        (let ((_L17551_ _tl1689017528_)
                              (_L17553_ _hd1689717545_)
                              (_L17554_ _hd1689417535_)
                              (_L17555_ _hd1688817515_))
                          (if (_let-head?16876_ _L17554_)
                              (___kont2237522376_
                               _L17551_
                               _L17553_
                               _L17554_
                               _L17555_)
                              (if (gx#stx-pair? _hd1689417535_)
                                  (let ((_e1691217433_
                                         (gx#syntax-e _hd1689417535_)))
                                    (let ((_tl1691017440_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1691217433_)))
                                          (_hd1691117437_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1691217433_))))
                                      (if (gx#stx-pair/null? _hd1689117525_)
                                          (let ((___splice2238322384_
                                                 (gx#syntax-split-splice
                                                  _hd1689117525_
                                                  '0)))
                                            (let ((_tl1693216983_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2238322384_
                                                      '1)))
                                                  (_target1693016980_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2238322384_
                                                      '0))))
                                              (if (gx#stx-null? _tl1693216983_)
                                                  (___match2246922470_
                                                   _e1688917511_
                                                   _hd1688817515_
                                                   _tl1688717518_
                                                   _e1689217521_
                                                   _hd1689117525_
                                                   _tl1689017528_
                                                   ___splice2238322384_
                                                   _target1693016980_
                                                   _tl1693216983_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1688116953_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1688116953_)))))
                                  (if (gx#stx-pair/null? _hd1689117525_)
                                      (let ((___splice2238322384_
                                             (gx#syntax-split-splice
                                              _hd1689117525_
                                              '0)))
                                        (let ((_tl1693216983_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2238322384_
                                                  '1)))
                                              (_target1693016980_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2238322384_
                                                  '0))))
                                          (if (gx#stx-null? _tl1693216983_)
                                              (___match2246922470_
                                               _e1688917511_
                                               _hd1688817515_
                                               _tl1688717518_
                                               _e1689217521_
                                               _hd1689117525_
                                               _tl1689017528_
                                               ___splice2238322384_
                                               _target1693016980_
                                               _tl1693216983_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1688116953_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1688116953_)))))))))
                (if (gx#stx-pair? ___stx2237222373_)
                    (let ((_e1688917511_ (gx#syntax-e ___stx2237222373_)))
                      (let ((_tl1688717518_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1688917511_)))
                            (_hd1688817515_
                             (let ()
                               (declare (not safe))
                               (##car _e1688917511_))))
                        (if (gx#stx-pair? _tl1688717518_)
                            (let ((_e1689217521_ (gx#syntax-e _tl1688717518_)))
                              (let ((_tl1689017528_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1689217521_)))
                                    (_hd1689117525_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1689217521_))))
                                (if (gx#stx-pair? _hd1689117525_)
                                    (let ((_e1689517531_
                                           (gx#syntax-e _hd1689117525_)))
                                      (let ((_tl1689317538_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1689517531_)))
                                            (_hd1689417535_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1689517531_))))
                                        (if (gx#stx-pair? _tl1689317538_)
                                            (let ((_e1689817541_
                                                   (gx#syntax-e
                                                    _tl1689317538_)))
                                              (let ((_tl1689617548_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1689817541_)))
                                                    (_hd1689717545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1689817541_))))
                                                (if (gx#stx-null?
                                                     _tl1689617548_)
                                                    (___match2241322414_
                                                     _e1688917511_
                                                     _hd1688817515_
                                                     _tl1688717518_
                                                     _e1689217521_
                                                     _hd1689117525_
                                                     _tl1689017528_
                                                     _e1689517531_
                                                     _hd1689417535_
                                                     _tl1689317538_
                                                     _e1689817541_
                                                     _hd1689717545_
                                                     _tl1689617548_)
                                                    (if (gx#stx-pair?
                                                         _hd1689417535_)
                                                        (let ((_e1691217433_
                                                               (gx#syntax-e
                                                                _hd1689417535_)))
                                                          (let ((_tl1691017440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1691217433_)))
                        (_hd1691117437_
                         (let () (declare (not safe)) (##car _e1691217433_))))
                    (if (gx#stx-pair/null? _hd1689117525_)
                        (let ((___splice2238322384_
                               (gx#syntax-split-splice _hd1689117525_ '0)))
                          (let ((_tl1693216983_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2238322384_ '1)))
                                (_target1693016980_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2238322384_ '0))))
                            (if (gx#stx-null? _tl1693216983_)
                                (___match2246922470_
                                 _e1688917511_
                                 _hd1688817515_
                                 _tl1688717518_
                                 _e1689217521_
                                 _hd1689117525_
                                 _tl1689017528_
                                 ___splice2238322384_
                                 _target1693016980_
                                 _tl1693216983_)
                                (let ()
                                  (declare (not safe))
                                  (_g1688116953_)))))
                        (let () (declare (not safe)) (_g1688116953_)))))
                (if (gx#stx-pair/null? _hd1689117525_)
                    (let ((___splice2238322384_
                           (gx#syntax-split-splice _hd1689117525_ '0)))
                      (let ((_tl1693216983_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2238322384_ '1)))
                            (_target1693016980_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2238322384_ '0))))
                        (if (gx#stx-null? _tl1693216983_)
                            (___match2246922470_
                             _e1688917511_
                             _hd1688817515_
                             _tl1688717518_
                             _e1689217521_
                             _hd1689117525_
                             _tl1689017528_
                             ___splice2238322384_
                             _target1693016980_
                             _tl1693216983_)
                            (let () (declare (not safe)) (_g1688116953_)))))
                    (let () (declare (not safe)) (_g1688116953_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _hd1689417535_)
                                                (let ((_e1691217433_
                                                       (gx#syntax-e
                                                        _hd1689417535_)))
                                                  (let ((_tl1691017440_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1691217433_)))
                                                        (_hd1691117437_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1691217433_))))
                                                    (if (gx#stx-null?
                                                         _tl1691017440_)
                                                        (if (gx#stx-null?
                                                             _tl1689317538_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1689017528_)
                        (let ((___splice2237922380_
                               (gx#syntax-split-splice _tl1689017528_ '0)))
                          (let ((_tl1691517446_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2237922380_ '1)))
                                (_target1691317443_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2237922380_ '0))))
                            (if (gx#stx-null? _tl1691517446_)
                                (___match2244922450_
                                 _e1688917511_
                                 _hd1688817515_
                                 _tl1688717518_
                                 _e1689217521_
                                 _hd1689117525_
                                 _tl1689017528_
                                 _e1689517531_
                                 _hd1689417535_
                                 _tl1689317538_
                                 _e1691217433_
                                 _hd1691117437_
                                 _tl1691017440_
                                 ___splice2237922380_
                                 _target1691317443_
                                 _tl1691517446_)
                                (if (gx#stx-pair/null? _hd1689117525_)
                                    (let ((___splice2238322384_
                                           (gx#syntax-split-splice
                                            _hd1689117525_
                                            '0)))
                                      (let ((_tl1693216983_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2238322384_
                                                '1)))
                                            (_target1693016980_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2238322384_
                                                '0))))
                                        (if (gx#stx-null? _tl1693216983_)
                                            (___match2246922470_
                                             _e1688917511_
                                             _hd1688817515_
                                             _tl1688717518_
                                             _e1689217521_
                                             _hd1689117525_
                                             _tl1689017528_
                                             ___splice2238322384_
                                             _target1693016980_
                                             _tl1693216983_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1688116953_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g1688116953_))))))
                        (if (gx#stx-pair/null? _hd1689117525_)
                            (let ((___splice2238322384_
                                   (gx#syntax-split-splice _hd1689117525_ '0)))
                              (let ((_tl1693216983_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice2238322384_ '1)))
                                    (_target1693016980_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice2238322384_
                                        '0))))
                                (if (gx#stx-null? _tl1693216983_)
                                    (___match2246922470_
                                     _e1688917511_
                                     _hd1688817515_
                                     _tl1688717518_
                                     _e1689217521_
                                     _hd1689117525_
                                     _tl1689017528_
                                     ___splice2238322384_
                                     _target1693016980_
                                     _tl1693216983_)
                                    (let ()
                                      (declare (not safe))
                                      (_g1688116953_)))))
                            (let () (declare (not safe)) (_g1688116953_))))
                    (if (gx#stx-pair/null? _hd1689117525_)
                        (let ((___splice2238322384_
                               (gx#syntax-split-splice _hd1689117525_ '0)))
                          (let ((_tl1693216983_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2238322384_ '1)))
                                (_target1693016980_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2238322384_ '0))))
                            (if (gx#stx-null? _tl1693216983_)
                                (___match2246922470_
                                 _e1688917511_
                                 _hd1688817515_
                                 _tl1688717518_
                                 _e1689217521_
                                 _hd1689117525_
                                 _tl1689017528_
                                 ___splice2238322384_
                                 _target1693016980_
                                 _tl1693216983_)
                                (let ()
                                  (declare (not safe))
                                  (_g1688116953_)))))
                        (let () (declare (not safe)) (_g1688116953_))))
                (if (gx#stx-pair/null? _hd1689117525_)
                    (let ((___splice2238322384_
                           (gx#syntax-split-splice _hd1689117525_ '0)))
                      (let ((_tl1693216983_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2238322384_ '1)))
                            (_target1693016980_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2238322384_ '0))))
                        (if (gx#stx-null? _tl1693216983_)
                            (___match2246922470_
                             _e1688917511_
                             _hd1688817515_
                             _tl1688717518_
                             _e1689217521_
                             _hd1689117525_
                             _tl1689017528_
                             ___splice2238322384_
                             _target1693016980_
                             _tl1693216983_)
                            (let () (declare (not safe)) (_g1688116953_)))))
                    (let () (declare (not safe)) (_g1688116953_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd1689117525_)
                                                    (let ((___splice2238322384_
                                                           (gx#syntax-split-splice
                                                            _hd1689117525_
                                                            '0)))
                                                      (let ((_tl1693216983_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice2238322384_ '1)))
                    (_target1693016980_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice2238322384_ '0))))
                (if (gx#stx-null? _tl1693216983_)
                    (___match2246922470_
                     _e1688917511_
                     _hd1688817515_
                     _tl1688717518_
                     _e1689217521_
                     _hd1689117525_
                     _tl1689017528_
                     ___splice2238322384_
                     _target1693016980_
                     _tl1693216983_)
                    (let () (declare (not safe)) (_g1688116953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1688116953_)))))))
                                    (if (gx#stx-pair/null? _hd1689117525_)
                                        (let ((___splice2238322384_
                                               (gx#syntax-split-splice
                                                _hd1689117525_
                                                '0)))
                                          (let ((_tl1693216983_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2238322384_
                                                    '1)))
                                                (_target1693016980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2238322384_
                                                    '0))))
                                            (if (gx#stx-null? _tl1693216983_)
                                                (___match2246922470_
                                                 _e1688917511_
                                                 _hd1688817515_
                                                 _tl1688717518_
                                                 _e1689217521_
                                                 _hd1689117525_
                                                 _tl1689017528_
                                                 ___splice2238322384_
                                                 _target1693016980_
                                                 _tl1693216983_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1688116953_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1688116953_))))))
                            (let () (declare (not safe)) (_g1688116953_)))))
                    (let () (declare (not safe)) (_g1688116953_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_$stx17913_)
        (let* ((___stx2247222473_ _$stx17913_)
               (_g1791917970_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2247222473_))))
          (let ((___kont2247522476_ (lambda () '#t))
                (___kont2247722478_
                 (lambda (_L18128_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (let ((__tmp23325
                                      (lambda (_g1814418147_ _g1814518150_)
                                        (cons _g1814418147_ _g1814518150_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp23325 '() _L18128_))))))
                (___kont2248122482_
                 (lambda (_L18037_ _L18039_ _L18040_ _L18041_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _L18040_ '())
                               (cons (cons _L18041_
                                           (cons _L18039_
                                                 (let ((__tmp23326
                                                        (lambda (_g1806218065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1806318068_)
                  (cons _g1806218065_ _g1806318068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp23326
                                                    '()
                                                    _L18037_))))
                                     '()))))))
            (let* ((___match2254922550_
                    (lambda (_e1794917977_
                             _hd1794817981_
                             _tl1794717984_
                             _e1795217987_
                             _hd1795117991_
                             _tl1795017994_
                             _e1795517997_
                             _hd1795418001_
                             _tl1795318004_
                             ___splice2248322484_
                             _target1795618007_
                             _tl1795818010_)
                      (letrec ((_loop1795918013_
                                (lambda (_hd1795718017_ _body1796318020_)
                                  (if (gx#stx-pair? _hd1795718017_)
                                      (let ((_e1796018023_
                                             (gx#syntax-e _hd1795718017_)))
                                        (let ((_lp-tl1796218030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1796018023_)))
                                              (_lp-hd1796118027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1796018023_))))
                                          (_loop1795918013_
                                           _lp-tl1796218030_
                                           (cons _lp-hd1796118027_
                                                 _body1796318020_))))
                                      (let ((_body1796418033_
                                             (reverse _body1796318020_)))
                                        (___kont2248122482_
                                         _body1796418033_
                                         _tl1795318004_
                                         _hd1795418001_
                                         _hd1794817981_))))))
                        (_loop1795918013_ _target1795618007_ '()))))
                   (___match2252322524_
                    (lambda (_e1793018078_
                             _hd1792918082_
                             _tl1792818085_
                             _e1793318088_
                             _hd1793218092_
                             _tl1793118095_
                             ___splice2247922480_
                             _target1793418098_
                             _tl1793618101_)
                      (letrec ((_loop1793718104_
                                (lambda (_hd1793518108_ _body1794118111_)
                                  (if (gx#stx-pair? _hd1793518108_)
                                      (let ((_e1793818114_
                                             (gx#syntax-e _hd1793518108_)))
                                        (let ((_lp-tl1794018121_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1793818114_)))
                                              (_lp-hd1793918118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1793818114_))))
                                          (_loop1793718104_
                                           _lp-tl1794018121_
                                           (cons _lp-hd1793918118_
                                                 _body1794118111_))))
                                      (let ((_body1794218124_
                                             (reverse _body1794118111_)))
                                        (___kont2247722478_
                                         _body1794218124_))))))
                        (_loop1793718104_ _target1793418098_ '())))))
              (if (gx#stx-pair? ___stx2247222473_)
                  (let ((_e1792318160_ (gx#syntax-e ___stx2247222473_)))
                    (let ((_tl1792118167_
                           (let () (declare (not safe)) (##cdr _e1792318160_)))
                          (_hd1792218164_
                           (let ()
                             (declare (not safe))
                             (##car _e1792318160_))))
                      (if (gx#stx-pair? _tl1792118167_)
                          (let ((_e1792618170_ (gx#syntax-e _tl1792118167_)))
                            (let ((_tl1792418177_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1792618170_)))
                                  (_hd1792518174_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1792618170_))))
                              (if (gx#stx-null? _hd1792518174_)
                                  (if (gx#stx-null? _tl1792418177_)
                                      (___kont2247522476_)
                                      (if (gx#stx-pair/null? _tl1792418177_)
                                          (let ((___splice2247922480_
                                                 (gx#syntax-split-splice
                                                  _tl1792418177_
                                                  '0)))
                                            (let ((_tl1793618101_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2247922480_
                                                      '1)))
                                                  (_target1793418098_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2247922480_
                                                      '0))))
                                              (if (gx#stx-null? _tl1793618101_)
                                                  (___match2252322524_
                                                   _e1792318160_
                                                   _hd1792218164_
                                                   _tl1792118167_
                                                   _e1792618170_
                                                   _hd1792518174_
                                                   _tl1792418177_
                                                   ___splice2247922480_
                                                   _target1793418098_
                                                   _tl1793618101_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1791917970_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1791917970_))))
                                  (if (gx#stx-pair? _hd1792518174_)
                                      (let ((_e1795517997_
                                             (gx#syntax-e _hd1792518174_)))
                                        (let ((_tl1795318004_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1795517997_)))
                                              (_hd1795418001_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1795517997_))))
                                          (if (gx#stx-pair/null?
                                               _tl1792418177_)
                                              (let ((___splice2248322484_
                                                     (gx#syntax-split-splice
                                                      _tl1792418177_
                                                      '0)))
                                                (let ((_tl1795818010_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2248322484_
                                                          '1)))
                                                      (_target1795618007_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2248322484_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1795818010_)
                                                      (___match2254922550_
                                                       _e1792318160_
                                                       _hd1792218164_
                                                       _tl1792118167_
                                                       _e1792618170_
                                                       _hd1792518174_
                                                       _tl1792418177_
                                                       _e1795517997_
                                                       _hd1795418001_
                                                       _tl1795318004_
                                                       ___splice2248322484_
                                                       _target1795618007_
                                                       _tl1795818010_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1791917970_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1791917970_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1791917970_))))))
                          (let () (declare (not safe)) (_g1791917970_)))))
                  (let () (declare (not safe)) (_g1791917970_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_$stx18190_)
        (let* ((___stx2255222553_ _$stx18190_)
               (_g1820118279_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2255222553_))))
          (let ((___kont2255522556_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (___kont2255722558_
                 (lambda (_L18610_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _L18610_ '()))))
                (___kont2255922560_
                 (lambda (_L18558_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _L18558_ '()))))
                (___kont2256122562_ (lambda (_L18505_) _L18505_))
                (___kont2256322564_ (lambda (_L18447_ _L18449_) _L18449_))
                (___kont2256522566_
                 (lambda (_L18389_ _L18391_ _L18392_ _L18393_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _L18393_ _L18389_)
                                     (cons _L18392_ '()))))))
                (___kont2256722568_
                 (lambda (_L18335_ _L18337_ _L18338_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _L18337_ (cons (cons _L18338_ _L18335_) '())))))
                (___kont2256922570_ (lambda (_L18296_) _L18296_)))
            (let* ((___match2269122692_
                    (lambda (_e1825418359_
                             _hd1825318363_
                             _tl1825218366_
                             _e1825718369_
                             _hd1825618373_
                             _tl1825518376_
                             _e1826018379_
                             _hd1825918383_
                             _tl1825818386_)
                      (let ((_L18389_ _tl1825818386_)
                            (_L18391_ _hd1825918383_)
                            (_L18392_ _hd1825618373_)
                            (_L18393_ _hd1825318363_))
                        (if (gx#ellipsis? _L18391_)
                            (___kont2256522566_
                             _L18389_
                             _L18391_
                             _L18392_
                             _L18393_)
                            (___kont2256722568_
                             _tl1825518376_
                             _hd1825618373_
                             _hd1825318363_)))))
                   (___match2267322674_
                    (lambda (_e1824118417_
                             _hd1824018421_
                             _tl1823918424_
                             _e1824418427_
                             _hd1824318431_
                             _tl1824218434_
                             _e1824718437_
                             _hd1824618441_
                             _tl1824518444_)
                      (let ((_L18447_ _hd1824618441_)
                            (_L18449_ _hd1824318431_))
                        (if (gx#ellipsis? _L18447_)
                            (___kont2256322564_ _L18447_ _L18449_)
                            (___match2269122692_
                             _e1824118417_
                             _hd1824018421_
                             _tl1823918424_
                             _e1824418427_
                             _hd1824318431_
                             _tl1824218434_
                             _e1824718437_
                             _hd1824618441_
                             _tl1824518444_))))))
              (if (gx#stx-pair? ___stx2255222553_)
                  (let ((_e1820518632_ (gx#syntax-e ___stx2255222553_)))
                    (let ((_tl1820318639_
                           (let () (declare (not safe)) (##cdr _e1820518632_)))
                          (_hd1820418636_
                           (let ()
                             (declare (not safe))
                             (##car _e1820518632_))))
                      (if (gx#stx-null? _tl1820318639_)
                          (___kont2255522556_)
                          (if (gx#stx-pair? _tl1820318639_)
                              (let ((_e1821218590_
                                     (gx#syntax-e _tl1820318639_)))
                                (let ((_tl1821018597_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1821218590_)))
                                      (_hd1821118594_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1821218590_))))
                                  (if (gx#identifier? _hd1821118594_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g23327_|
                                           _hd1821118594_)
                                          (if (gx#stx-pair? _tl1821018597_)
                                              (let ((_e1821518600_
                                                     (gx#syntax-e
                                                      _tl1821018597_)))
                                                (let ((_tl1821318607_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1821518600_)))
                                                      (_hd1821418604_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1821518600_))))
                                                  (if (gx#stx-null?
                                                       _tl1821318607_)
                                                      (___kont2255722558_
                                                       _hd1821418604_)
                                                      (___match2269122692_
                                                       _e1820518632_
                                                       _hd1820418636_
                                                       _tl1820318639_
                                                       _e1821218590_
                                                       _hd1821118594_
                                                       _tl1821018597_
                                                       _e1821518600_
                                                       _hd1821418604_
                                                       _tl1821318607_))))
                                              (___kont2256722568_
                                               _tl1821018597_
                                               _hd1821118594_
                                               _hd1820418636_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g23328_|
                                               _hd1821118594_)
                                              (if (gx#stx-pair? _tl1821018597_)
                                                  (let ((_e1822518548_
                                                         (gx#syntax-e
                                                          _tl1821018597_)))
                                                    (let ((_tl1822318555_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1822518548_)))
                                                          (_hd1822418552_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1822518548_))))
                                                      (if (gx#stx-null?
                                                           _tl1822318555_)
                                                          (___kont2255922560_
                                                           _hd1822418552_)
                                                          (___match2269122692_
                                                           _e1820518632_
                                                           _hd1820418636_
                                                           _tl1820318639_
                                                           _e1821218590_
                                                           _hd1821118594_
                                                           _tl1821018597_
                                                           _e1822518548_
                                                           _hd1822418552_
                                                           _tl1822318555_))))
                                                  (___kont2256722568_
                                                   _tl1821018597_
                                                   _hd1821118594_
                                                   _hd1820418636_))
                                              (if (gx#stx-pair? _tl1821018597_)
                                                  (let ((_e1824718437_
                                                         (gx#syntax-e
                                                          _tl1821018597_)))
                                                    (let ((_tl1824518444_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1824718437_)))
                                                          (_hd1824618441_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1824718437_))))
                                                      (if (gx#stx-null?
                                                           _tl1824518444_)
                                                          (___match2267322674_
                                                           _e1820518632_
                                                           _hd1820418636_
                                                           _tl1820318639_
                                                           _e1821218590_
                                                           _hd1821118594_
                                                           _tl1821018597_
                                                           _e1824718437_
                                                           _hd1824618441_
                                                           _tl1824518444_)
                                                          (___match2269122692_
                                                           _e1820518632_
                                                           _hd1820418636_
                                                           _tl1820318639_
                                                           _e1821218590_
                                                           _hd1821118594_
                                                           _tl1821018597_
                                                           _e1824718437_
                                                           _hd1824618441_
                                                           _tl1824518444_))))
                                                  (___kont2256722568_
                                                   _tl1821018597_
                                                   _hd1821118594_
                                                   _hd1820418636_))))
                                      (if (gx#stx-datum? _hd1821118594_)
                                          (let ((_e1823318491_
                                                 (gx#stx-e _hd1821118594_)))
                                            (if (equal? _e1823318491_ '::)
                                                (if (gx#stx-pair?
                                                     _tl1821018597_)
                                                    (let ((_e1823618495_
                                                           (gx#syntax-e
                                                            _tl1821018597_)))
                                                      (let ((_tl1823418502_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1823618495_)))
                    (_hd1823518499_
                     (let () (declare (not safe)) (##car _e1823618495_))))
                (if (gx#stx-null? _tl1823418502_)
                    (___kont2256122562_ _hd1823518499_)
                    (___match2269122692_
                     _e1820518632_
                     _hd1820418636_
                     _tl1820318639_
                     _e1821218590_
                     _hd1821118594_
                     _tl1821018597_
                     _e1823618495_
                     _hd1823518499_
                     _tl1823418502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2256722568_
                                                     _tl1821018597_
                                                     _hd1821118594_
                                                     _hd1820418636_))
                                                (if (gx#stx-pair?
                                                     _tl1821018597_)
                                                    (let ((_e1824718437_
                                                           (gx#syntax-e
                                                            _tl1821018597_)))
                                                      (let ((_tl1824518444_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1824718437_)))
                    (_hd1824618441_
                     (let () (declare (not safe)) (##car _e1824718437_))))
                (if (gx#stx-null? _tl1824518444_)
                    (___match2267322674_
                     _e1820518632_
                     _hd1820418636_
                     _tl1820318639_
                     _e1821218590_
                     _hd1821118594_
                     _tl1821018597_
                     _e1824718437_
                     _hd1824618441_
                     _tl1824518444_)
                    (___match2269122692_
                     _e1820518632_
                     _hd1820418636_
                     _tl1820318639_
                     _e1821218590_
                     _hd1821118594_
                     _tl1821018597_
                     _e1824718437_
                     _hd1824618441_
                     _tl1824518444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2256722568_
                                                     _tl1821018597_
                                                     _hd1821118594_
                                                     _hd1820418636_))))
                                          (if (gx#stx-pair? _tl1821018597_)
                                              (let ((_e1824718437_
                                                     (gx#syntax-e
                                                      _tl1821018597_)))
                                                (let ((_tl1824518444_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1824718437_)))
                                                      (_hd1824618441_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1824718437_))))
                                                  (if (gx#stx-null?
                                                       _tl1824518444_)
                                                      (___match2267322674_
                                                       _e1820518632_
                                                       _hd1820418636_
                                                       _tl1820318639_
                                                       _e1821218590_
                                                       _hd1821118594_
                                                       _tl1821018597_
                                                       _e1824718437_
                                                       _hd1824618441_
                                                       _tl1824518444_)
                                                      (___match2269122692_
                                                       _e1820518632_
                                                       _hd1820418636_
                                                       _tl1820318639_
                                                       _e1821218590_
                                                       _hd1821118594_
                                                       _tl1821018597_
                                                       _e1824718437_
                                                       _hd1824618441_
                                                       _tl1824518444_))))
                                              (___kont2256722568_
                                               _tl1821018597_
                                               _hd1821118594_
                                               _hd1820418636_))))))
                              (___kont2256922570_ _tl1820318639_)))))
                  (let () (declare (not safe)) (_g1820118279_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_stx18650_)
        (letrec ((_simple-quote?18653_
                  (lambda (_e19345_)
                    (let* ((___stx2271222713_ _e19345_)
                           (_g1935319390_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2271222713_))))
                      (let ((___kont2271522716_ (lambda () '#f))
                            (___kont2271722718_ (lambda () '#f))
                            (___kont2271922720_
                             (lambda (_L19504_ _L19506_)
                               (if (_simple-quote?18653_ _L19506_)
                                   (_simple-quote?18653_ _L19504_)
                                   '#f)))
                            (___kont2272122722_
                             (lambda (_L19465_)
                               (_simple-quote?18653_
                                (let ((__tmp23329
                                       (lambda (_g1947819481_ _g1947919484_)
                                         (cons _g1947819481_ _g1947919484_))))
                                  (declare (not safe))
                                  (__foldr1 __tmp23329 '() _L19465_)))))
                            (___kont2272522726_
                             (lambda (_L19412_)
                               (_simple-quote?18653_ _L19412_)))
                            (___kont2272722728_ (lambda () '#t)))
                        (let* ((_g1935119424_
                                (lambda ()
                                  (if (gx#stx-box? ___stx2271222713_)
                                      (let ((_e1938419408_
                                             (unbox (gx#syntax-e
                                                     ___stx2271222713_))))
                                        (___kont2272522726_ _e1938419408_))
                                      (___kont2272722728_))))
                               (___match2278322784_
                                (lambda (_e1937319431_
                                         ___splice2272322724_
                                         _target1937419435_
                                         _tl1937619438_)
                                  (letrec ((_loop1937719441_
                                            (lambda (_hd1937519445_
                                                     _e1938119448_)
                                              (if (gx#stx-pair? _hd1937519445_)
                                                  (let ((_e1937819451_
                                                         (gx#syntax-e
                                                          _hd1937519445_)))
                                                    (let ((_lp-tl1938019458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1937819451_)))
                                                          (_lp-hd1937919455_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1937819451_))))
                                                      (_loop1937719441_
                                                       _lp-tl1938019458_
                                                       (cons _lp-hd1937919455_
                                                             _e1938119448_))))
                                                  (let ((_e1938219461_
                                                         (reverse _e1938119448_)))
                                                    (___kont2272122722_
                                                     _e1938219461_))))))
                                    (_loop1937719441_
                                     _target1937419435_
                                     '()))))
                               (_g1935019487_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx2271222713_)
                                      (let ((_e1937319431_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx2271222713_))))
                                        (if (gx#stx-pair/null? _e1937319431_)
                                            (let ((___splice2272322724_
                                                   (gx#syntax-split-splice
                                                    _e1937319431_
                                                    '0)))
                                              (let ((_tl1937619438_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2272322724_
                                                        '1)))
                                                    (_target1937419435_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2272322724_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1937619438_)
                                                    (___match2278322784_
                                                     _e1937319431_
                                                     ___splice2272322724_
                                                     _target1937419435_
                                                     _tl1937619438_)
                                                    (___kont2272722728_))))
                                            (___kont2272722728_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g1935119424_))))))
                          (if (gx#stx-pair? ___stx2271222713_)
                              (let ((_e1935719555_
                                     (gx#syntax-e ___stx2271222713_)))
                                (let ((_tl1935519562_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1935719555_)))
                                      (_hd1935619559_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1935719555_))))
                                  (if (gx#identifier? _hd1935619559_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g23330_|
                                           _hd1935619559_)
                                          (if (gx#stx-pair? _tl1935519562_)
                                              (let ((_e1936019565_
                                                     (gx#syntax-e
                                                      _tl1935519562_)))
                                                (let ((_tl1935819572_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1936019565_)))
                                                      (_hd1935919569_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1936019565_))))
                                                  (if (gx#stx-null?
                                                       _tl1935819572_)
                                                      (___kont2271522716_)
                                                      (___kont2271922720_
                                                       _tl1935519562_
                                                       _hd1935619559_))))
                                              (___kont2271922720_
                                               _tl1935519562_
                                               _hd1935619559_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g23331_|
                                               _hd1935619559_)
                                              (if (gx#stx-pair? _tl1935519562_)
                                                  (let ((_e1936619534_
                                                         (gx#syntax-e
                                                          _tl1935519562_)))
                                                    (let ((_tl1936419541_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1936619534_)))
                                                          (_hd1936519538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1936619534_))))
                                                      (if (gx#stx-null?
                                                           _tl1936419541_)
                                                          (___kont2271722718_)
                                                          (___kont2271922720_
                                                           _tl1935519562_
                                                           _hd1935619559_))))
                                                  (___kont2271922720_
                                                   _tl1935519562_
                                                   _hd1935619559_))
                                              (___kont2271922720_
                                               _tl1935519562_
                                               _hd1935619559_)))
                                      (___kont2271922720_
                                       _tl1935519562_
                                       _hd1935619559_))))
                              (let ()
                                (declare (not safe))
                                (_g1935019487_))))))))
                 (_generate18655_
                  (lambda (_e18717_ _d18719_)
                    (let* ((___stx2279022791_ _e18717_)
                           (_g1872818786_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2279022791_))))
                      (let ((___kont2279322794_
                             (lambda (_L19297_)
                               (let* ((_g1931019318_
                                       (lambda (_g1931119314_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1931119314_)))
                                      (_g1930919337_
                                       (lambda (_g1931119322_)
                                         ((lambda (_L19325_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons (gx#datum->syntax '#f 'quasiquote) '()))
                  (cons _L19325_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1931119322_))))
                                 (_g1930919337_
                                  (_generate18655_
                                   _L19297_
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _d18719_ '1)))))))
                            (___kont2279522796_
                             (lambda (_L19226_)
                               (if (fxzero? _d18719_)
                                   _L19226_
                                   (let* ((_g1923919247_
                                           (lambda (_g1924019243_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1924019243_)))
                                          (_g1923819266_
                                           (lambda (_g1924019251_)
                                             ((lambda (_L19254_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (gx#datum->syntax '#f 'unquote) '()))
                      (cons _L19254_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1924019251_))))
                                     (_g1923819266_
                                      (_generate18655_
                                       _L19226_
                                       (let ()
                                         (declare (not safe))
                                         (##fx- _d18719_ '1))))))))
                            (___kont2279722798_
                             (lambda (_L19155_)
                               (if (fxzero? _d18719_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _L19155_ '()))))
                                   (let* ((_g1916819176_
                                           (lambda (_g1916919172_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1916919172_)))
                                          (_g1916719195_
                                           (lambda (_g1916919180_)
                                             ((lambda (_L19183_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (gx#datum->syntax '#f 'unquote-splicing)
                                  '()))
                      (cons _L19183_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1916919180_))))
                                     (_g1916719195_
                                      (_generate18655_
                                       _L19155_
                                       (let ()
                                         (declare (not safe))
                                         (##fx- _d18719_ '1))))))))
                            (___kont2279922800_
                             (lambda (_L19080_ _L19082_)
                               (let* ((_g1909719105_
                                       (lambda (_g1909819101_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1909819101_)))
                                      (_g1909619124_
                                       (lambda (_g1909819109_)
                                         ((lambda (_L19112_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'foldr)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'cons)
                                                          (cons _L19112_
                                                                (cons _L19082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1909819109_))))
                                 (_g1909619124_
                                  (_generate18655_ _L19080_ _d18719_)))))
                            (___kont2280122802_
                             (lambda (_L18966_ _L18968_)
                               (let* ((_g1897918994_
                                       (lambda (_g1898018990_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1898018990_)))
                                      (_g1897819039_
                                       (lambda (_g1898018998_)
                                         (if (gx#stx-pair? _g1898018998_)
                                             (let ((_e1898519001_
                                                    (gx#syntax-e
                                                     _g1898018998_)))
                                               (let ((_hd1898419005_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1898519001_)))
                                                     (_tl1898319008_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1898519001_))))
                                                 (if (gx#stx-pair?
                                                      _tl1898319008_)
                                                     (let ((_e1898819011_
                                                            (gx#syntax-e
                                                             _tl1898319008_)))
                                                       (let ((_hd1898719015_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e1898819011_)))
                     (_tl1898619018_
                      (let () (declare (not safe)) (##cdr _e1898819011_))))
                 (if (gx#stx-null? _tl1898619018_)
                     ((lambda (_L19021_ _L19023_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'cons)
                                (cons _L19023_ (cons _L19021_ '())))))
                      _hd1898719015_
                      _hd1898419005_)
                     (_g1897918994_ _g1898018998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1897918994_
                                                      _g1898018998_))))
                                             (_g1897918994_ _g1898018998_)))))
                                 (_g1897819039_
                                  (list (_generate18655_ _L18968_ _d18719_)
                                        (_generate18655_
                                         _L18966_
                                         _d18719_))))))
                            (___kont2280322804_
                             (lambda (_L18896_)
                               (let* ((_g1891018918_
                                       (lambda (_g1891118914_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1891118914_)))
                                      (_g1890918937_
                                       (lambda (_g1891118922_)
                                         ((lambda (_L18925_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list->vector)
                                                    (cons _L18925_ '()))))
                                          _g1891118922_))))
                                 (_g1890918937_
                                  (_generate18655_
                                   (let ((__tmp23332
                                          (lambda (_g1894018943_ _g1894118946_)
                                            (cons _g1894018943_
                                                  _g1894118946_))))
                                     (declare (not safe))
                                     (__foldr1 __tmp23332 '() _L18896_))
                                   _d18719_)))))
                            (___kont2280722808_
                             (lambda (_L18814_)
                               (let* ((_g1882418832_
                                       (lambda (_g1882518828_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1882518828_)))
                                      (_g1882318851_
                                       (lambda (_g1882518836_)
                                         ((lambda (_L18839_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'box)
                                                    (cons _L18839_ '()))))
                                          _g1882518836_))))
                                 (_g1882318851_
                                  (_generate18655_ _L18814_ _d18719_)))))
                            (___kont2280922810_
                             (lambda (_L18793_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L18793_ '())))))
                        (let* ((_g1872618855_
                                (lambda ()
                                  (if (gx#stx-box? ___stx2279022791_)
                                      (let ((_e1877918810_
                                             (unbox (gx#syntax-e
                                                     ___stx2279022791_))))
                                        (___kont2280722808_ _e1877918810_))
                                      (___kont2280922810_ ___stx2279022791_))))
                               (___match2290922910_
                                (lambda (_e1876818862_
                                         ___splice2280522806_
                                         _target1876918866_
                                         _tl1877118869_)
                                  (letrec ((_loop1877218872_
                                            (lambda (_hd1877018876_
                                                     _e1877618879_)
                                              (if (gx#stx-pair? _hd1877018876_)
                                                  (let ((_e1877318882_
                                                         (gx#syntax-e
                                                          _hd1877018876_)))
                                                    (let ((_lp-tl1877518889_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1877318882_)))
                                                          (_lp-hd1877418886_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1877318882_))))
                                                      (_loop1877218872_
                                                       _lp-tl1877518889_
                                                       (cons _lp-hd1877418886_
                                                             _e1877618879_))))
                                                  (let ((_e1877718892_
                                                         (reverse _e1877618879_)))
                                                    (___kont2280322804_
                                                     _e1877718892_))))))
                                    (_loop1877218872_
                                     _target1876918866_
                                     '()))))
                               (_g1872518949_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx2279022791_)
                                      (let ((_e1876818862_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx2279022791_))))
                                        (if (gx#stx-pair/null? _e1876818862_)
                                            (let ((___splice2280522806_
                                                   (gx#syntax-split-splice
                                                    _e1876818862_
                                                    '0)))
                                              (let ((_tl1877118869_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2280522806_
                                                        '1)))
                                                    (_target1876918866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2280522806_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1877118869_)
                                                    (___match2290922910_
                                                     _e1876818862_
                                                     ___splice2280522806_
                                                     _target1876918866_
                                                     _tl1877118869_)
                                                    (___kont2280922810_
                                                     ___stx2279022791_))))
                                            (___kont2280922810_
                                             ___stx2279022791_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g1872618855_))))))
                          (if (gx#stx-pair? ___stx2279022791_)
                              (let ((_e1873319277_
                                     (gx#syntax-e ___stx2279022791_)))
                                (let ((_tl1873119284_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1873319277_)))
                                      (_hd1873219281_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1873319277_))))
                                  (if (gx#identifier? _hd1873219281_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g23333_|
                                           _hd1873219281_)
                                          (if (gx#stx-pair? _tl1873119284_)
                                              (let ((_e1873619287_
                                                     (gx#syntax-e
                                                      _tl1873119284_)))
                                                (let ((_tl1873419294_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1873619287_)))
                                                      (_hd1873519291_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1873619287_))))
                                                  (if (gx#stx-null?
                                                       _tl1873419294_)
                                                      (___kont2279322794_
                                                       _hd1873519291_)
                                                      (___kont2280122802_
                                                       _tl1873119284_
                                                       _hd1873219281_))))
                                              (___kont2280122802_
                                               _tl1873119284_
                                               _hd1873219281_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g23334_|
                                               _hd1873219281_)
                                              (if (gx#stx-pair? _tl1873119284_)
                                                  (let ((_e1874319216_
                                                         (gx#syntax-e
                                                          _tl1873119284_)))
                                                    (let ((_tl1874119223_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1874319216_)))
                                                          (_hd1874219220_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1874319216_))))
                                                      (if (gx#stx-null?
                                                           _tl1874119223_)
                                                          (___kont2279522796_
                                                           _hd1874219220_)
                                                          (___kont2280122802_
                                                           _tl1873119284_
                                                           _hd1873219281_))))
                                                  (___kont2280122802_
                                                   _tl1873119284_
                                                   _hd1873219281_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g23335_|
                                                   _hd1873219281_)
                                                  (if (gx#stx-pair?
                                                       _tl1873119284_)
                                                      (let ((_e1875019145_
                                                             (gx#syntax-e
                                                              _tl1873119284_)))
                                                        (let ((_tl1874819152_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1875019145_)))
                      (_hd1874919149_
                       (let () (declare (not safe)) (##car _e1875019145_))))
                  (if (gx#stx-null? _tl1874819152_)
                      (___kont2279722798_ _hd1874919149_)
                      (___kont2280122802_ _tl1873119284_ _hd1873219281_))))
              (___kont2280122802_ _tl1873119284_ _hd1873219281_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2280122802_
                                                   _tl1873119284_
                                                   _hd1873219281_))))
                                      (if (gx#stx-pair? _hd1873219281_)
                                          (let ((_e1875819060_
                                                 (gx#syntax-e _hd1873219281_)))
                                            (let ((_tl1875619067_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1875819060_)))
                                                  (_hd1875719064_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1875819060_))))
                                              (if (gx#identifier?
                                                   _hd1875719064_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g23336_|
                                                       _hd1875719064_)
                                                      (if (gx#stx-pair?
                                                           _tl1875619067_)
                                                          (let ((_e1876119070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1875619067_)))
                    (let ((_tl1875919077_
                           (let () (declare (not safe)) (##cdr _e1876119070_)))
                          (_hd1876019074_
                           (let ()
                             (declare (not safe))
                             (##car _e1876119070_))))
                      (if (gx#stx-null? _tl1875919077_)
                          (if (fxzero? _d18719_)
                              (let ((_L19080_ _tl1873119284_)
                                    (_L19082_ _hd1876019074_))
                                (___kont2279922800_ _L19080_ _L19082_))
                              (___kont2280122802_
                               _tl1873119284_
                               _hd1873219281_))
                          (___kont2280122802_ _tl1873119284_ _hd1873219281_))))
                  (___kont2280122802_ _tl1873119284_ _hd1873219281_))
              (___kont2280122802_ _tl1873119284_ _hd1873219281_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2280122802_
                                                   _tl1873119284_
                                                   _hd1873219281_))))
                                          (___kont2280122802_
                                           _tl1873119284_
                                           _hd1873219281_)))))
                              (let ()
                                (declare (not safe))
                                (_g1872518949_)))))))))
          (let* ((_g1865718671_
                  (lambda (_g1865818667_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1865818667_)))
                 (_g1865618713_
                  (lambda (_g1865818675_)
                    (if (gx#stx-pair? _g1865818675_)
                        (let ((_e1866218678_ (gx#syntax-e _g1865818675_)))
                          (let ((_hd1866118682_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1866218678_)))
                                (_tl1866018685_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1866218678_))))
                            (if (gx#stx-pair? _tl1866018685_)
                                (let ((_e1866518688_
                                       (gx#syntax-e _tl1866018685_)))
                                  (let ((_hd1866418692_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1866518688_)))
                                        (_tl1866318695_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1866518688_))))
                                    (if (gx#stx-null? _tl1866318695_)
                                        ((lambda (_L18698_)
                                           (if (_simple-quote?18653_ _L18698_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L18698_ '()))
                                               (_generate18655_ _L18698_ '0)))
                                         _hd1866418692_)
                                        (_g1865718671_ _g1865818675_))))
                                (_g1865718671_ _g1865818675_))))
                        (_g1865718671_ _g1865818675_)))))
            (_g1865618713_ _stx18650_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_$stx19585_)
        (let* ((___stx2291622917_ _$stx19585_)
               (_g1959019611_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2291622917_))))
          (let ((___kont2291922920_
                 (lambda (_L19679_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _L19679_ '()))))
                (___kont2292122922_
                 (lambda (_L19638_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _L19638_ '())))
                               '())))))
            (let ((___match2293722938_
                   (lambda (_e1959519659_
                            _hd1959419663_
                            _tl1959319666_
                            _e1959819669_
                            _hd1959719673_
                            _tl1959619676_)
                     (let ((_L19679_ _hd1959719673_))
                       (if (gx#stx-datum? _L19679_)
                           (___kont2291922920_ _L19679_)
                           (___kont2292122922_ _hd1959719673_))))))
              (if (gx#stx-pair? ___stx2291622917_)
                  (let ((_e1959519659_ (gx#syntax-e ___stx2291622917_)))
                    (let ((_tl1959319666_
                           (let () (declare (not safe)) (##cdr _e1959519659_)))
                          (_hd1959419663_
                           (let ()
                             (declare (not safe))
                             (##car _e1959519659_))))
                      (if (gx#stx-pair? _tl1959319666_)
                          (let ((_e1959819669_ (gx#syntax-e _tl1959319666_)))
                            (let ((_tl1959619676_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1959819669_)))
                                  (_hd1959719673_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1959819669_))))
                              (if (gx#stx-null? _tl1959619676_)
                                  (___match2293722938_
                                   _e1959519659_
                                   _hd1959419663_
                                   _tl1959319666_
                                   _e1959819669_
                                   _hd1959719673_
                                   _tl1959619676_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1959019611_)))))
                          (let () (declare (not safe)) (_g1959019611_)))))
                  (let () (declare (not safe)) (_g1959019611_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_stx19696_)
        (letrec ((_generate19699_
                  (lambda (_rest19818_)
                    (let _lp19821_ ((_rest19824_ _rest19818_)
                                    (_hd19826_ '())
                                    (_body19827_ '()))
                      (let* ((___stx2297422975_ _rest19824_)
                             (_g1983019842_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2297422975_))))
                        (let ((___kont2297722978_
                               (lambda (_L19870_ _L19872_)
                                 (let* ((___stx2295422955_ _L19872_)
                                        (_g1988919896_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2295422955_))))
                                   (let ((___kont2295722958_
                                          (lambda ()
                                            (let ((_arg19932_ (gx#genident)))
                                              (_lp19821_
                                               _L19870_
                                               (cons _arg19932_ _hd19826_)
                                               (cons _arg19932_
                                                     _body19827_)))))
                                         (___kont2295922960_
                                          (lambda ()
                                            (if (gx#stx-null? _L19870_)
                                                (let ((_tail19918_
                                                       (gx#genident)))
                                                  (values (let ()
                                                            (declare
                                                              (not safe))
                                                            (__foldl1
                                                             cons
                                                             _tail19918_
                                                             _hd19826_))
                                                          (let ((__tmp23337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (list _tail19918_)))
                    (declare (not safe))
                    (__foldl1 cons __tmp23337 _body19827_))
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _stx19696_
                                                 _L19872_))))
                                         (___kont2296122962_
                                          (lambda ()
                                            (_lp19821_
                                             _L19870_
                                             _hd19826_
                                             (cons _L19872_ _body19827_)))))
                                     (if (gx#identifier? ___stx2295422955_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g23338_|
                                              ___stx2295422955_)
                                             (___kont2295722958_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g23339_|
                                                  ___stx2295422955_)
                                                 (___kont2295922960_)
                                                 (___kont2296122962_)))
                                         (___kont2296122962_))))))
                              (___kont2297922980_
                               (lambda ()
                                 (values (reverse _hd19826_)
                                         (reverse _body19827_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx2297422975_)
                              (let ((_e1983619860_
                                     (gx#syntax-e ___stx2297422975_)))
                                (let ((_tl1983419867_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1983619860_)))
                                      (_hd1983519864_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1983619860_))))
                                  (___kont2297722978_
                                   _tl1983419867_
                                   _hd1983519864_)))
                              (___kont2297922980_))))))))
          (let* ((_g1970219713_
                  (lambda (_g1970319709_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1970319709_)))
                 (_g1970119814_
                  (lambda (_g1970319717_)
                    (if (gx#stx-pair? _g1970319717_)
                        (let ((_e1970719720_ (gx#syntax-e _g1970319717_)))
                          (let ((_hd1970619724_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1970719720_)))
                                (_tl1970519727_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1970719720_))))
                            ((lambda (_L19730_)
                               (if (and (gx#stx-list? _L19730_)
                                        (let ((__tmp23340
                                               (gx#stx-null? _L19730_)))
                                          (declare (not safe))
                                          (not __tmp23340)))
                                   (let ((_g23341_ (_generate19699_ _L19730_)))
                                     (begin
                                       (let ((_g23342_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g23341_)
                                                    (##vector-length _g23341_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g23342_ 3)))
                                             (error "Context expects 3 values"
                                                    _g23342_)))
                                       (let ((_hd19743_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g23341_ 0)))
                                             (_body19745_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g23341_ 1)))
                                             (_tail?19746_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g23341_ 2))))
                                         (let* ((_g1974819756_
                                                 (lambda (_g1974919752_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1974919752_)))
                                                (_g1974719810_
                                                 (lambda (_g1974919760_)
                                                   ((lambda (_L19763_)
                                                      (let ()
                                                        (let* ((_g1977619784_
                                                                (lambda (_g1977719780_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g1977719780_)))
                       (_g1977519806_
                        (lambda (_g1977719788_)
                          ((lambda (_L19791_)
                             (let ()
                               (let ()
                                 (if _tail?19746_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L19763_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L19791_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L19763_
                                                 (cons _L19791_ '())))))))
                           _g1977719788_))))
                  (_g1977519806_ _body19745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1974919760_))))
                                           (_g1974719810_ _hd19743_)))))
                                   (_g1970219713_ _g1970319717_)))
                             _tl1970519727_)))
                        (_g1970219713_ _g1970319717_)))))
            (_g1970119814_ _stx19696_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_$stx19944_)
        (let ((_g1994719954_
               (lambda (_g1994819950_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g1994819950_))))
          (_g1994719954_ _$stx19944_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_$stx19958_)
        (let ((_g1996119968_
               (lambda (_g1996219964_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g1996219964_))))
          (_g1996119968_ _$stx19958_))))))
