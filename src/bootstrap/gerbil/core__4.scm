(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42175_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42176_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42177_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42213_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42214_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42215_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42222_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42223_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42224_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42225_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42226_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42227_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42228_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42229_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42230_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g42231_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#lambda|
      (lambda (_stx4574_)
        (letrec ((_simple-lambda?4577_
                  (lambda (_hd7974_) (gx#stx-andmap gx#identifier? _hd7974_)))
                 (_opt-lambda?4579_
                  (lambda (_hd7826_)
                    (let _lp7829_ ((_rest7832_ _hd7826_) (_opt?7834_ '#f))
                      (let* ((___stx3736737368_ _rest7832_)
                             (_g78377849_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3736737368_))))
                        (let ((___kont3737037371_
                               (lambda (_L7881_ _L7883_)
                                 (let* ((___stx3734337344_ _L7883_)
                                        (_g78997913_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3734337344_))))
                                   (let ((___kont3734637347_
                                          (lambda (_L7951_)
                                            (_lp7829_ _L7881_ '#t)))
                                         (___kont3734837349_
                                          (lambda ()
                                            (if (gx#identifier? _L7883_)
                                                (if (not _opt?7834_)
                                                    (_lp7829_ _L7881_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match3736437365_
                                            (lambda (_e79027931_
                                                     _hd79037935_
                                                     _tl79047938_
                                                     _e79057941_
                                                     _hd79067945_
                                                     _tl79077948_)
                                              (let ((_L7951_ _hd79037935_))
                                                (if (gx#identifier? _L7951_)
                                                    (___kont3734637347_
                                                     _L7951_)
                                                    (___kont3734837349_))))))
                                       (if (gx#stx-pair? ___stx3734337344_)
                                           (let ((_e79027931_
                                                  (gx#syntax-e
                                                   ___stx3734337344_)))
                                             (let ((_tl79047938_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e79027931_)))
                                                   (_hd79037935_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e79027931_))))
                                               (if (gx#stx-pair? _tl79047938_)
                                                   (let ((_e79057941_
                                                          (gx#syntax-e
                                                           _tl79047938_)))
                                                     (let ((_tl79077948_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e79057941_)))
                                                           (_hd79067945_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e79057941_))))
                                                       (if (gx#stx-null?
                                                            _tl79077948_)
                                                           (___match3736437365_
                                                            _e79027931_
                                                            _hd79037935_
                                                            _tl79047938_
                                                            _e79057941_
                                                            _hd79067945_
                                                            _tl79077948_)
                                                           (___kont3734837349_))))
                                                   (___kont3734837349_))))
                                           (___kont3734837349_)))))))
                              (___kont3737237373_
                               (lambda ()
                                 (if _opt?7834_
                                     (let ((_$e7860_
                                            (gx#stx-null? _rest7832_)))
                                       (if _$e7860_
                                           _$e7860_
                                           (gx#identifier? _rest7832_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx3736737368_)
                              (let ((_e78417871_
                                     (gx#syntax-e ___stx3736737368_)))
                                (let ((_tl78437878_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e78417871_)))
                                      (_hd78427875_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e78417871_))))
                                  (___kont3737037371_
                                   _tl78437878_
                                   _hd78427875_)))
                              (___kont3737237373_)))))))
                 (_opt-lambda-split4580_
                  (lambda (_hd7678_)
                    (let _lp7681_ ((_rest7684_ _hd7678_)
                                   (_pre7686_ '())
                                   (_opt7687_ '()))
                      (let* ((___stx3740737408_ _rest7684_)
                             (_g76907702_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3740737408_))))
                        (let ((___kont3741037411_
                               (lambda (_L7730_ _L7732_)
                                 (let* ((___stx3738337384_ _L7732_)
                                        (_g77487763_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3738337384_))))
                                   (let ((___kont3738637387_
                                          (lambda (_L7801_ _L7803_)
                                            (_lp7681_
                                             _L7730_
                                             _pre7686_
                                             (cons (cons (_generate-bind4583_
                                                          _L7803_)
                                                         _L7801_)
                                                   _opt7687_))))
                                         (___kont3738837389_
                                          (lambda ()
                                            (_lp7681_
                                             _L7730_
                                             (cons (_generate-bind4583_
                                                    _L7732_)
                                                   _pre7686_)
                                             _opt7687_))))
                                     (if (gx#stx-pair? ___stx3738337384_)
                                         (let ((_e77527781_
                                                (gx#syntax-e
                                                 ___stx3738337384_)))
                                           (let ((_tl77547788_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e77527781_)))
                                                 (_hd77537785_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e77527781_))))
                                             (if (gx#stx-pair? _tl77547788_)
                                                 (let ((_e77557791_
                                                        (gx#syntax-e
                                                         _tl77547788_)))
                                                   (let ((_tl77577798_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e77557791_)))
                                                         (_hd77567795_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e77557791_))))
                                                     (if (gx#stx-null?
                                                          _tl77577798_)
                                                         (___kont3738637387_
                                                          _hd77567795_
                                                          _hd77537785_)
                                                         (___kont3738837389_))))
                                                 (___kont3738837389_))))
                                         (___kont3738837389_))))))
                              (___kont3741237413_
                               (lambda ()
                                 (values (reverse _pre7686_)
                                         (reverse _opt7687_)
                                         (if (gx#identifier? _rest7684_)
                                             (_generate-bind4583_ _rest7684_)
                                             _rest7684_)))))
                          (if (gx#stx-pair? ___stx3740737408_)
                              (let ((_e76947720_
                                     (gx#syntax-e ___stx3740737408_)))
                                (let ((_tl76967727_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e76947720_)))
                                      (_hd76957724_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e76947720_))))
                                  (___kont3741037411_
                                   _tl76967727_
                                   _hd76957724_)))
                              (___kont3741237413_)))))))
                 (_kw-lambda?4581_
                  (lambda (_hd7346_)
                    (let _lp7349_ ((_rest7352_ _hd7346_)
                                   (_opt?7354_ '#f)
                                   (_key?7355_ '#f))
                      (let* ((___stx3747137472_ _rest7352_)
                             (_g73607390_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3747137472_))))
                        (let ((___kont3747437475_
                               (lambda (_L7585_ _L7587_ _L7588_)
                                 (let* ((___stx3744737448_ _L7587_)
                                        (_g76037617_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3744737448_))))
                                   (let ((___kont3745037451_
                                          (lambda (_L7655_)
                                            (if (gx#identifier? _L7655_)
                                                (_lp7349_
                                                 _L7585_
                                                 _opt?7354_
                                                 '#t)
                                                '#f)))
                                         (___kont3745237453_
                                          (lambda ()
                                            (if (gx#identifier? _L7587_)
                                                (_lp7349_
                                                 _L7585_
                                                 _opt?7354_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx3744737448_)
                                         (let ((_e76067635_
                                                (gx#syntax-e
                                                 ___stx3744737448_)))
                                           (let ((_tl76087642_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e76067635_)))
                                                 (_hd76077639_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e76067635_))))
                                             (if (gx#stx-pair? _tl76087642_)
                                                 (let ((_e76097645_
                                                        (gx#syntax-e
                                                         _tl76087642_)))
                                                   (let ((_tl76117652_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e76097645_)))
                                                         (_hd76107649_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e76097645_))))
                                                     (if (gx#stx-null?
                                                          _tl76117652_)
                                                         (___kont3745037451_
                                                          _hd76077639_)
                                                         (___kont3745237453_))))
                                                 (___kont3745237453_))))
                                         (___kont3745237453_))))))
                              (___kont3747637477_
                               (lambda (_L7542_ _L7544_)
                                 (if (gx#identifier? _L7544_)
                                     (_lp7349_ _L7542_ _opt?7354_ '#t)
                                     '#f)))
                              (___kont3747837479_
                               (lambda (_L7422_ _L7424_)
                                 (let* ((___stx3742337424_ _L7424_)
                                        (_g74407454_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3742337424_))))
                                   (let ((___kont3742637427_
                                          (lambda (_L7492_)
                                            (if (gx#identifier? _L7492_)
                                                (_lp7349_
                                                 _L7422_
                                                 '#t
                                                 _key?7355_)
                                                '#f)))
                                         (___kont3742837429_
                                          (lambda ()
                                            (if (gx#identifier? _L7424_)
                                                (if (not _opt?7354_)
                                                    (_lp7349_
                                                     _L7422_
                                                     '#f
                                                     _key?7355_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx3742337424_)
                                         (let ((_e74437472_
                                                (gx#syntax-e
                                                 ___stx3742337424_)))
                                           (let ((_tl74457479_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e74437472_)))
                                                 (_hd74447476_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e74437472_))))
                                             (if (gx#stx-pair? _tl74457479_)
                                                 (let ((_e74467482_
                                                        (gx#syntax-e
                                                         _tl74457479_)))
                                                   (let ((_tl74487489_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e74467482_)))
                                                         (_hd74477486_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e74467482_))))
                                                     (if (gx#stx-null?
                                                          _tl74487489_)
                                                         (___kont3742637427_
                                                          _hd74447476_)
                                                         (___kont3742837429_))))
                                                 (___kont3742837429_))))
                                         (___kont3742837429_))))))
                              (___kont3748037481_
                               (lambda ()
                                 (if _key?7355_
                                     (let ((_$e7401_
                                            (gx#stx-null? _rest7352_)))
                                       (if _$e7401_
                                           _$e7401_
                                           (gx#identifier? _rest7352_)))
                                     '#f))))
                          (let ((___match3749437495_
                                 (lambda (_e73657565_
                                          _hd73667569_
                                          _tl73677572_
                                          _e73687575_
                                          _hd73697579_
                                          _tl73707582_)
                                   (let ((_L7585_ _tl73707582_)
                                         (_L7587_ _hd73697579_)
                                         (_L7588_ _hd73667569_))
                                     (if (gx#stx-keyword? _L7588_)
                                         (___kont3747437475_
                                          _L7585_
                                          _L7587_
                                          _L7588_)
                                         (if (gx#stx-datum? _hd73667569_)
                                             (let ((_e73767528_
                                                    (gx#stx-e _hd73667569_)))
                                               (if (equal? _e73767528_ '#!key)
                                                   (___kont3747637477_
                                                    _tl73707582_
                                                    _hd73697579_)
                                                   (___kont3747837479_
                                                    _tl73677572_
                                                    _hd73667569_)))
                                             (___kont3747837479_
                                              _tl73677572_
                                              _hd73667569_)))))))
                            (if (gx#stx-pair? ___stx3747137472_)
                                (let ((_e73657565_
                                       (gx#syntax-e ___stx3747137472_)))
                                  (let ((_tl73677572_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e73657565_)))
                                        (_hd73667569_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e73657565_))))
                                    (if (gx#stx-pair? _tl73677572_)
                                        (let ((_e73687575_
                                               (gx#syntax-e _tl73677572_)))
                                          (let ((_tl73707582_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e73687575_)))
                                                (_hd73697579_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e73687575_))))
                                            (___match3749437495_
                                             _e73657565_
                                             _hd73667569_
                                             _tl73677572_
                                             _e73687575_
                                             _hd73697579_
                                             _tl73707582_)))
                                        (if (gx#stx-datum? _hd73667569_)
                                            (let ((_e73767528_
                                                   (gx#stx-e _hd73667569_)))
                                              (___kont3747837479_
                                               _tl73677572_
                                               _hd73667569_))
                                            (___kont3747837479_
                                             _tl73677572_
                                             _hd73667569_)))))
                                (___kont3748037481_))))))))
                 (_kw-lambda-split4582_
                  (lambda (_hd7079_)
                    (let _lp7082_ ((_rest7085_ _hd7079_)
                                   (_kwvar7087_ '#f)
                                   (_kwargs7088_ '())
                                   (_args7089_ '()))
                      (let* ((___stx3754537546_ _rest7085_)
                             (_g70947124_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3754537546_))))
                        (let ((___kont3754837549_
                               (lambda (_L7243_ _L7245_ _L7246_)
                                 (let ((_key7260_ (gx#stx-e _L7246_)))
                                   (if (find (lambda (_kwarg7263_)
                                               (eq? _key7260_
                                                    (car _kwarg7263_)))
                                             _kwargs7088_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; duplicate keyword argument"
                                        _stx4574_
                                        _hd7079_
                                        _key7260_)
                                       (let* ((___stx3752137522_ _L7245_)
                                              (_g72677282_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx3752137522_))))
                                         (let ((___kont3752437525_
                                                (lambda (_L7320_ _L7322_)
                                                  (_lp7082_
                                                   _L7243_
                                                   _kwvar7087_
                                                   (cons (list _key7260_
                                                               (_generate-bind4583_
                                                                _L7322_)
                                                               _L7320_)
                                                         _kwargs7088_)
                                                   _args7089_)))
                                               (___kont3752637527_
                                                (lambda ()
                                                  (_lp7082_
                                                   _L7243_
                                                   _kwvar7087_
                                                   (cons (list _key7260_
                                                               (_generate-bind4583_
                                                                _L7245_)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _L7246_ '()))))
                 _kwargs7088_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _args7089_))))
                                           (if (gx#stx-pair? ___stx3752137522_)
                                               (let ((_e72717300_
                                                      (gx#syntax-e
                                                       ___stx3752137522_)))
                                                 (let ((_tl72737307_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e72717300_)))
                                                       (_hd72727304_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e72717300_))))
                                                   (if (gx#stx-pair?
                                                        _tl72737307_)
                                                       (let ((_e72747310_
                                                              (gx#syntax-e
                                                               _tl72737307_)))
                                                         (let ((_tl72767317_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e72747310_)))
                       (_hd72757314_
                        (let () (declare (not safe)) (##car _e72747310_))))
                   (if (gx#stx-null? _tl72767317_)
                       (___kont3752437525_ _hd72757314_ _hd72727304_)
                       (___kont3752637527_))))
               (___kont3752637527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont3752637527_))))))))
                              (___kont3755037551_
                               (lambda (_L7200_ _L7202_)
                                 (if _kwvar7087_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; duplicate #!key argument"
                                      _stx4574_
                                      _hd7079_
                                      _L7202_)
                                     (_lp7082_
                                      _L7200_
                                      (_generate-bind4583_ _L7202_)
                                      _kwargs7088_
                                      _args7089_))))
                              (___kont3755237553_
                               (lambda (_L7152_ _L7154_)
                                 (_lp7082_
                                  _L7152_
                                  _kwvar7087_
                                  _kwargs7088_
                                  (cons _L7154_ _args7089_))))
                              (___kont3755437555_
                               (lambda ()
                                 (values _kwvar7087_
                                         (reverse _kwargs7088_)
                                         (foldl cons _rest7085_ _args7089_)))))
                          (let ((___match3756837569_
                                 (lambda (_e70997223_
                                          _hd71007227_
                                          _tl71017230_
                                          _e71027233_
                                          _hd71037237_
                                          _tl71047240_)
                                   (let ((_L7243_ _tl71047240_)
                                         (_L7245_ _hd71037237_)
                                         (_L7246_ _hd71007227_))
                                     (if (gx#stx-keyword? _L7246_)
                                         (___kont3754837549_
                                          _L7243_
                                          _L7245_
                                          _L7246_)
                                         (if (gx#stx-datum? _hd71007227_)
                                             (let ((_e71107186_
                                                    (gx#stx-e _hd71007227_)))
                                               (if (equal? _e71107186_ '#!key)
                                                   (___kont3755037551_
                                                    _tl71047240_
                                                    _hd71037237_)
                                                   (___kont3755237553_
                                                    _tl71017230_
                                                    _hd71007227_)))
                                             (___kont3755237553_
                                              _tl71017230_
                                              _hd71007227_)))))))
                            (if (gx#stx-pair? ___stx3754537546_)
                                (let ((_e70997223_
                                       (gx#syntax-e ___stx3754537546_)))
                                  (let ((_tl71017230_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e70997223_)))
                                        (_hd71007227_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e70997223_))))
                                    (if (gx#stx-pair? _tl71017230_)
                                        (let ((_e71027233_
                                               (gx#syntax-e _tl71017230_)))
                                          (let ((_tl71047240_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e71027233_)))
                                                (_hd71037237_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e71027233_))))
                                            (___match3756837569_
                                             _e70997223_
                                             _hd71007227_
                                             _tl71017230_
                                             _e71027233_
                                             _hd71037237_
                                             _tl71047240_)))
                                        (if (gx#stx-datum? _hd71007227_)
                                            (let ((_e71107186_
                                                   (gx#stx-e _hd71007227_)))
                                              (___kont3755237553_
                                               _tl71017230_
                                               _hd71007227_))
                                            (___kont3755237553_
                                             _tl71017230_
                                             _hd71007227_)))))
                                (___kont3755437555_))))))))
                 (_generate-bind4583_
                  (lambda (_e7076_)
                    (if (gx#underscore? _e7076_)
                        (gx#genident _e7076_)
                        _e7076_)))
                 (_check-duplicate-bindings4584_
                  (lambda (_hd6773_)
                    (letrec ((_cons-id6776_
                              (lambda (_id7072_ _ids7074_)
                                (if (gx#underscore? _id7072_)
                                    _ids7074_
                                    (cons _id7072_ _ids7074_)))))
                      (let _lp6779_ ((_rest6782_ _hd6773_) (_ids6784_ '()))
                        (let* ((___stx3761937620_ _rest6782_)
                               (_g67876799_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx3761937620_))))
                          (let ((___kont3762237623_
                                 (lambda (_L6827_ _L6829_)
                                   (if (gx#identifier? _L6829_)
                                       (_lp6779_
                                        _L6827_
                                        (_cons-id6776_ _L6829_ _ids6784_))
                                       (if (gx#stx-pair? _L6829_)
                                           (let* ((_g68456859_
                                                   (lambda (_g68466855_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g68466855_)))
                                                  (_g68446900_
                                                   (lambda (_g68466863_)
                                                     (if (gx#stx-pair?
                                                          _g68466863_)
                                                         (let ((_e68486866_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g68466863_)))
                   (let ((_hd68496870_
                          (let () (declare (not safe)) (##car _e68486866_)))
                         (_tl68506873_
                          (let () (declare (not safe)) (##cdr _e68486866_))))
                     (if (gx#stx-pair? _tl68506873_)
                         (let ((_e68516876_ (gx#syntax-e _tl68506873_)))
                           (let ((_hd68526880_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e68516876_)))
                                 (_tl68536883_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e68516876_))))
                             (if (gx#stx-null? _tl68536883_)
                                 ((lambda (_L6886_)
                                    (_lp6779_
                                     _L6827_
                                     (_cons-id6776_ _L6886_ _ids6784_)))
                                  _hd68496870_)
                                 (_g68456859_ _g68466863_))))
                         (_g68456859_ _g68466863_))))
                 (_g68456859_ _g68466863_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g68446900_ _L6829_))
                                           (if (gx#stx-keyword? _L6829_)
                                               (let* ((_g69046916_
                                                       (lambda (_g69056912_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g69056912_)))
                                                      (_g69037018_
                                                       (lambda (_g69056920_)
                                                         (if (gx#stx-pair?
                                                              _g69056920_)
                                                             (let ((_e69086923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g69056920_)))
                       (let ((_hd69096927_
                              (let ()
                                (declare (not safe))
                                (##car _e69086923_)))
                             (_tl69106930_
                              (let ()
                                (declare (not safe))
                                (##cdr _e69086923_))))
                         ((lambda (_L6933_ _L6935_)
                            (let* ((___stx3759537596_ _L6935_)
                                   (_g69476961_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx3759537596_))))
                              (let ((___kont3759837599_
                                     (lambda (_L6999_)
                                       (_lp6779_
                                        _L6933_
                                        (_cons-id6776_ _L6999_ _ids6784_))))
                                    (___kont3760037601_
                                     (lambda ()
                                       (_lp6779_
                                        _L6933_
                                        (_cons-id6776_ _L6935_ _ids6784_)))))
                                (if (gx#stx-pair? ___stx3759537596_)
                                    (let ((_e69506979_
                                           (gx#syntax-e ___stx3759537596_)))
                                      (let ((_tl69526986_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e69506979_)))
                                            (_hd69516983_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e69506979_))))
                                        (if (gx#stx-pair? _tl69526986_)
                                            (let ((_e69536989_
                                                   (gx#syntax-e _tl69526986_)))
                                              (let ((_tl69556996_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e69536989_)))
                                                    (_hd69546993_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e69536989_))))
                                                (if (gx#stx-null? _tl69556996_)
                                                    (___kont3759837599_
                                                     _hd69516983_)
                                                    (___kont3760037601_))))
                                            (___kont3760037601_))))
                                    (___kont3760037601_)))))
                          _tl69106930_
                          _hd69096927_)))
                     (_g69046916_ _g69056920_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g69037018_ _L6827_))
                                               (if (eq? (gx#stx-e _L6829_)
                                                        '#!key)
                                                   (let* ((_g70227034_
                                                           (lambda (_g70237030_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g70237030_)))
                                                          (_g70217064_
                                                           (lambda (_g70237038_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g70237038_)
                         (let ((_e70267041_ (gx#syntax-e _g70237038_)))
                           (let ((_hd70277045_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e70267041_)))
                                 (_tl70287048_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e70267041_))))
                             ((lambda (_L7051_ _L7053_)
                                (_lp6779_
                                 _L7051_
                                 (_cons-id6776_ _L7053_ _ids6784_)))
                              _tl70287048_
                              _hd70277045_)))
                         (_g70227034_ _g70237038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g70217064_ _L6827_))
                                                   (error '"BUG: check-duplicate-bindings"
                                                          _stx4574_
                                                          _rest6782_)))))))
                                (___kont3762437625_
                                 (lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _rest6782_)
                                        _ids6784_
                                        (_cons-id6776_ _rest6782_ _ids6784_))
                                    _stx4574_))))
                            (if (gx#stx-pair? ___stx3761937620_)
                                (let ((_e67916817_
                                       (gx#syntax-e ___stx3761937620_)))
                                  (let ((_tl67936824_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e67916817_)))
                                        (_hd67926821_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e67916817_))))
                                    (___kont3762237623_
                                     _tl67936824_
                                     _hd67926821_)))
                                (___kont3762437625_))))))))
                 (_generate-opt-primary4585_
                  (lambda (_pre6565_ _opt6567_ _tail6568_ _body6569_)
                    (let* ((_g65716612_
                            (lambda (_g65726608_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g65726608_)))
                           (_g65706769_
                            (lambda (_g65726616_)
                              (if (gx#stx-pair? _g65726616_)
                                  (let ((_e65776619_
                                         (gx#syntax-e _g65726616_)))
                                    (let ((_hd65786623_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e65776619_)))
                                          (_tl65796626_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e65776619_))))
                                      (if (gx#stx-pair/null? _hd65786623_)
                                          (let ((_g42145_
                                                 (gx#syntax-split-splice
                                                  _hd65786623_
                                                  '0)))
                                            (begin
                                              (let ((_g42146_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g42145_)
                                                           (##vector-length
                                                            _g42145_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g42146_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g42146_)))
                                              (let ((_target65806629_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42145_
                                                        0)))
                                                    (_tl65826632_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42145_
                                                        1))))
                                                (if (gx#stx-null? _tl65826632_)
                                                    (letrec ((_loop65836635_
                                                              (lambda (_hd65816639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _pre65876642_)
                        (if (gx#stx-pair? _hd65816639_)
                            (let ((_e65846645_ (gx#syntax-e _hd65816639_)))
                              (let ((_lp-hd65856649_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e65846645_)))
                                    (_lp-tl65866652_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e65846645_))))
                                (_loop65836635_
                                 _lp-tl65866652_
                                 (cons _lp-hd65856649_ _pre65876642_))))
                            (let ((_pre65886655_ (reverse _pre65876642_)))
                              (if (gx#stx-pair? _tl65796626_)
                                  (let ((_e65896659_
                                         (gx#syntax-e _tl65796626_)))
                                    (let ((_hd65906663_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e65896659_)))
                                          (_tl65916666_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e65896659_))))
                                      (if (gx#stx-pair/null? _hd65906663_)
                                          (let ((_g42147_
                                                 (gx#syntax-split-splice
                                                  _hd65906663_
                                                  '0)))
                                            (begin
                                              (let ((_g42148_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g42147_)
                                                           (##vector-length
                                                            _g42147_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g42148_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g42148_)))
                                              (let ((_target65926669_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42147_
                                                        0)))
                                                    (_tl65946672_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42147_
                                                        1))))
                                                (if (gx#stx-null? _tl65946672_)
                                                    (letrec ((_loop65956675_
                                                              (lambda (_hd65936679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _opt65996682_)
                        (if (gx#stx-pair? _hd65936679_)
                            (let ((_e65966685_ (gx#syntax-e _hd65936679_)))
                              (let ((_lp-hd65976689_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e65966685_)))
                                    (_lp-tl65986692_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e65966685_))))
                                (_loop65956675_
                                 _lp-tl65986692_
                                 (cons _lp-hd65976689_ _opt65996682_))))
                            (let ((_opt66006695_ (reverse _opt65996682_)))
                              (if (gx#stx-pair? _tl65916666_)
                                  (let ((_e66016699_
                                         (gx#syntax-e _tl65916666_)))
                                    (let ((_hd66026703_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e66016699_)))
                                          (_tl66036706_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e66016699_))))
                                      (if (gx#stx-pair? _tl66036706_)
                                          (let ((_e66046709_
                                                 (gx#syntax-e _tl66036706_)))
                                            (let ((_hd66056713_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e66046709_)))
                                                  (_tl66066716_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e66046709_))))
                                              (if (gx#stx-null? _tl66066716_)
                                                  ((lambda (_L6719_
                                                            _L6721_
                                                            _L6722_
                                                            _L6723_)
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (foldr (lambda (_g67526757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _g67536760_)
                                    (cons _g67526757_ _g67536760_))
                                  (foldr (lambda (_g67546763_ _g67556766_)
                                           (cons _g67546763_ _g67556766_))
                                         _L6721_
                                         _L6722_)
                                  _L6723_)
                           _L6719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd66056713_
                                                   _hd66026703_
                                                   _opt66006695_
                                                   _pre65886655_)
                                                  (_g65716612_ _g65726616_))))
                                          (_g65716612_ _g65726616_))))
                                  (_g65716612_ _g65726616_)))))))
              (_loop65956675_ _target65926669_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g65716612_
                                                     _g65726616_)))))
                                          (_g65716612_ _g65726616_))))
                                  (_g65716612_ _g65726616_)))))))
              (_loop65836635_ _target65806629_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g65716612_
                                                     _g65726616_)))))
                                          (_g65716612_ _g65726616_))))
                                  (_g65716612_ _g65726616_)))))
                      (_g65706769_
                       (list _pre6565_
                             (map car _opt6567_)
                             _tail6568_
                             _body6569_)))))
                 (_generate-opt-dispatch4586_
                  (lambda (_primary6559_ _pre6561_ _opt6562_ _tail6563_)
                    (cons (list _pre6561_
                                (_generate-opt-clause4588_
                                 _primary6559_
                                 _pre6561_
                                 _opt6562_))
                          (_generate-opt-dispatch*4587_
                           _primary6559_
                           _pre6561_
                           _opt6562_
                           _tail6563_))))
                 (_generate-opt-dispatch*4587_
                  (lambda (_primary6116_ _pre6118_ _opt6119_ _tail6120_)
                    (let _recur6122_ ((_opt-rest6125_ _opt6119_)
                                      (_right6127_ '()))
                      (if (pair? _opt-rest6125_)
                          (let* ((_hd6129_ (caar _opt-rest6125_))
                                 (_rest6132_ (cdr _opt-rest6125_))
                                 (_right*6135_ (cons _hd6129_ _right6127_))
                                 (_g61386155_
                                  (lambda (_g61396151_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g61396151_)))
                                 (_g61376338_
                                  (lambda (_g61396159_)
                                    (if (gx#stx-pair/null? _g61396159_)
                                        (let ((_g42149_
                                               (gx#syntax-split-splice
                                                _g61396159_
                                                '0)))
                                          (begin
                                            (let ((_g42150_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g42149_)
                                                         (##vector-length
                                                          _g42149_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g42150_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g42150_)))
                                            (let ((_target61416162_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g42149_
                                                      0)))
                                                  (_tl61436165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g42149_
                                                      1))))
                                              (if (gx#stx-null? _tl61436165_)
                                                  (letrec ((_loop61446168_
                                                            (lambda (_hd61426172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-bind61486175_)
                      (if (gx#stx-pair? _hd61426172_)
                          (let ((_e61456178_ (gx#syntax-e _hd61426172_)))
                            (let ((_lp-hd61466182_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e61456178_)))
                                  (_lp-tl61476185_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e61456178_))))
                              (_loop61446168_
                               _lp-tl61476185_
                               (cons _lp-hd61466182_ _pre-bind61486175_))))
                          (let ((_pre-bind61496188_
                                 (reverse _pre-bind61486175_)))
                            ((lambda (_L6192_)
                               (let ()
                                 (let* ((_g62136230_
                                         (lambda (_g62146226_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g62146226_)))
                                        (_g62126334_
                                         (lambda (_g62146234_)
                                           (if (gx#stx-pair/null? _g62146234_)
                                               (let ((_g42151_
                                                      (gx#syntax-split-splice
                                                       _g62146234_
                                                       '0)))
                                                 (begin
                                                   (let ((_g42152_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g42151_)
                        (##vector-length _g42151_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g42152_ 2)))
                 (error "Context expects 2 values" _g42152_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target62166237_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42151_
                                                             0)))
                                                         (_tl62186240_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42151_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl62186240_)
                                                         (letrec ((_loop62196243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd62176247_ _opt-bind62236250_)
                             (if (gx#stx-pair? _hd62176247_)
                                 (let ((_e62206253_
                                        (gx#syntax-e _hd62176247_)))
                                   (let ((_lp-hd62216257_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e62206253_)))
                                         (_lp-tl62226260_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e62206253_))))
                                     (_loop62196243_
                                      _lp-tl62226260_
                                      (cons _lp-hd62216257_
                                            _opt-bind62236250_))))
                                 (let ((_opt-bind62246263_
                                        (reverse _opt-bind62236250_)))
                                   ((lambda (_L6267_)
                                      (let ()
                                        (let* ((_g62846292_
                                                (lambda (_g62856288_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g62856288_)))
                                               (_g62836330_
                                                (lambda (_g62856296_)
                                                  ((lambda (_L6299_)
                                                     (let ()
                                                       (let ()
                                                         (cons (list (foldr (lambda (_g63136318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _g63146321_)
                                      (cons _g63136318_ _g63146321_))
                                    (foldr (lambda (_g63156324_ _g63166327_)
                                             (cons _g63156324_ _g63166327_))
                                           (cons _L6299_ '())
                                           _L6267_)
                                    _L6192_)
                             (_generate-opt-clause4588_
                              _primary6116_
                              (foldr cons (reverse _right*6135_) _pre6118_)
                              _rest6132_))
                       (_recur6122_ _rest6132_ _right*6135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g62856296_))))
                                          (_g62836330_ _hd6129_))))
                                    _opt-bind62246263_))))))
                   (_loop62196243_ _target62166237_ '()))
                 (_g62136230_ _g62146234_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g62136230_ _g62146234_)))))
                                   (_g62126334_ (reverse _right6127_)))))
                             _pre-bind61496188_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop61446168_
                                                     _target61416162_
                                                     '()))
                                                  (_g61386155_ _g61396159_)))))
                                        (_g61386155_ _g61396159_)))))
                            (_g61376338_ _pre6118_))
                          (if (gx#stx-null? _tail6120_)
                              '()
                              (let* ((_g63426383_
                                      (lambda (_g63436379_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g63436379_)))
                                     (_g63416555_
                                      (lambda (_g63436387_)
                                        (if (gx#stx-pair? _g63436387_)
                                            (let ((_e63486390_
                                                   (gx#syntax-e _g63436387_)))
                                              (let ((_hd63496394_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e63486390_)))
                                                    (_tl63506397_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e63486390_))))
                                                (if (gx#stx-pair/null?
                                                     _hd63496394_)
                                                    (let ((_g42153_
                                                           (gx#syntax-split-splice
                                                            _hd63496394_
                                                            '0)))
                                                      (begin
                                                        (let ((_g42154_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g42153_)
                             (##vector-length _g42153_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g42154_ 2)))
                      (error "Context expects 2 values" _g42154_)))
                (let ((_target63516400_
                       (let () (declare (not safe)) (##vector-ref _g42153_ 0)))
                      (_tl63536403_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g42153_ 1))))
                  (if (gx#stx-null? _tl63536403_)
                      (letrec ((_loop63546406_
                                (lambda (_hd63526410_ _pre63586413_)
                                  (if (gx#stx-pair? _hd63526410_)
                                      (let ((_e63556416_
                                             (gx#syntax-e _hd63526410_)))
                                        (let ((_lp-hd63566420_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e63556416_)))
                                              (_lp-tl63576423_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e63556416_))))
                                          (_loop63546406_
                                           _lp-tl63576423_
                                           (cons _lp-hd63566420_
                                                 _pre63586413_))))
                                      (let ((_pre63596426_
                                             (reverse _pre63586413_)))
                                        (if (gx#stx-pair? _tl63506397_)
                                            (let ((_e63606430_
                                                   (gx#syntax-e _tl63506397_)))
                                              (let ((_hd63616434_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e63606430_)))
                                                    (_tl63626437_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e63606430_))))
                                                (if (gx#stx-pair/null?
                                                     _hd63616434_)
                                                    (let ((_g42155_
                                                           (gx#syntax-split-splice
                                                            _hd63616434_
                                                            '0)))
                                                      (begin
                                                        (let ((_g42156_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g42155_)
                             (##vector-length _g42155_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g42156_ 2)))
                      (error "Context expects 2 values" _g42156_)))
                (let ((_target63636440_
                       (let () (declare (not safe)) (##vector-ref _g42155_ 0)))
                      (_tl63656443_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g42155_ 1))))
                  (if (gx#stx-null? _tl63656443_)
                      (letrec ((_loop63666446_
                                (lambda (_hd63646450_ _opt63706453_)
                                  (if (gx#stx-pair? _hd63646450_)
                                      (let ((_e63676456_
                                             (gx#syntax-e _hd63646450_)))
                                        (let ((_lp-hd63686460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e63676456_)))
                                              (_lp-tl63696463_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e63676456_))))
                                          (_loop63666446_
                                           _lp-tl63696463_
                                           (cons _lp-hd63686460_
                                                 _opt63706453_))))
                                      (let ((_opt63716466_
                                             (reverse _opt63706453_)))
                                        (if (gx#stx-pair? _tl63626437_)
                                            (let ((_e63726470_
                                                   (gx#syntax-e _tl63626437_)))
                                              (let ((_hd63736474_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e63726470_)))
                                                    (_tl63746477_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e63726470_))))
                                                (if (gx#stx-pair? _tl63746477_)
                                                    (let ((_e63756480_
                                                           (gx#syntax-e
                                                            _tl63746477_)))
                                                      (let ((_hd63766484_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e63756480_)))
                    (_tl63776487_
                     (let () (declare (not safe)) (##cdr _e63756480_))))
                (if (gx#stx-null? _tl63776487_)
                    ((lambda (_L6490_ _L6492_ _L6493_ _L6494_)
                       (let ()
                         (list (list (foldr (lambda (_g65226527_ _g65236530_)
                                              (cons _g65226527_ _g65236530_))
                                            (foldr (lambda (_g65246533_
                                                            _g65256536_)
                                                     (cons _g65246533_
                                                           _g65256536_))
                                                   _L6492_
                                                   _L6493_)
                                            _L6494_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'apply)
                                            (cons _L6490_
                                                  (foldr (lambda (_g65386543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g65396546_)
                   (cons _g65386543_ _g65396546_))
                 (foldr (lambda (_g65406549_ _g65416552_)
                          (cons _g65406549_ _g65416552_))
                        (cons _L6492_ '())
                        _L6493_)
                 _L6494_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (gx#stx-source _stx4574_))))))
                     _hd63766484_
                     _hd63736474_
                     _opt63716466_
                     _pre63596426_)
                    (_g63426383_ _g63436387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g63426383_
                                                     _g63436387_))))
                                            (_g63426383_ _g63436387_)))))))
                        (_loop63666446_ _target63636440_ '()))
                      (_g63426383_ _g63436387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g63426383_
                                                     _g63436387_))))
                                            (_g63426383_ _g63436387_)))))))
                        (_loop63546406_ _target63516400_ '()))
                      (_g63426383_ _g63436387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g63426383_
                                                     _g63436387_))))
                                            (_g63426383_ _g63436387_)))))
                                (_g63416555_
                                 (list _pre6118_
                                       (reverse _right6127_)
                                       _tail6120_
                                       _primary6116_))))))))
                 (_generate-opt-clause4588_
                  (lambda (_primary5814_ _pre5816_ _opt5817_)
                    (let _recur5819_ ((_opt-rest5822_ _opt5817_)
                                      (_right5824_ '()))
                      (if (pair? _opt-rest5822_)
                          (let* ((_hd5826_ (car _opt-rest5822_))
                                 (_rest5829_ (cdr _opt-rest5822_))
                                 (_g58325840_
                                  (lambda (_g58335836_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g58335836_)))
                                 (_g58315929_
                                  (lambda (_g58335844_)
                                    ((lambda (_L5847_)
                                       (let ()
                                         (let* ((_g58635871_
                                                 (lambda (_g58645867_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g58645867_)))
                                                (_g58625925_
                                                 (lambda (_g58645875_)
                                                   ((lambda (_L5878_)
                                                      (let ()
                                                        (let* ((_g58915899_
                                                                (lambda (_g58925895_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g58925895_)))
                       (_g58905921_
                        (lambda (_g58925903_)
                          ((lambda (_L5906_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (cons (cons (cons _L5847_ '())
                                                         (cons _L5878_ '()))
                                                   '())
                                             (cons _L5906_ '()))))))
                           _g58925903_))))
                  (_g58905921_
                   (_recur5819_ _rest5829_ (cons _L5847_ _right5824_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g58645875_))))
                                           (_g58625925_ (cdr _hd5826_)))))
                                     _g58335844_))))
                            (_g58315929_ (car _hd5826_)))
                          (let* ((_g59335970_
                                  (lambda (_g59345966_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g59345966_)))
                                 (_g59326112_
                                  (lambda (_g59345974_)
                                    (if (gx#stx-pair? _g59345974_)
                                        (let ((_e59385977_
                                               (gx#syntax-e _g59345974_)))
                                          (let ((_hd59395981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e59385977_)))
                                                (_tl59405984_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e59385977_))))
                                            (if (gx#stx-pair/null?
                                                 _hd59395981_)
                                                (let ((_g42157_
                                                       (gx#syntax-split-splice
                                                        _hd59395981_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42158_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42157_)
                         (##vector-length _g42157_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42158_ 2)))
                  (error "Context expects 2 values" _g42158_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target59415987_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42157_
                                                              0)))
                                                          (_tl59435990_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42157_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl59435990_)
                                                          (letrec ((_loop59445993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd59425997_ _pre59486000_)
                              (if (gx#stx-pair? _hd59425997_)
                                  (let ((_e59456003_
                                         (gx#syntax-e _hd59425997_)))
                                    (let ((_lp-hd59466007_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e59456003_)))
                                          (_lp-tl59476010_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e59456003_))))
                                      (_loop59445993_
                                       _lp-tl59476010_
                                       (cons _lp-hd59466007_ _pre59486000_))))
                                  (let ((_pre59496013_
                                         (reverse _pre59486000_)))
                                    (if (gx#stx-pair? _tl59405984_)
                                        (let ((_e59506017_
                                               (gx#syntax-e _tl59405984_)))
                                          (let ((_hd59516021_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e59506017_)))
                                                (_tl59526024_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e59506017_))))
                                            (if (gx#stx-pair/null?
                                                 _hd59516021_)
                                                (let ((_g42159_
                                                       (gx#syntax-split-splice
                                                        _hd59516021_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42160_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42159_)
                         (##vector-length _g42159_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42160_ 2)))
                  (error "Context expects 2 values" _g42160_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target59536027_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42159_
                                                              0)))
                                                          (_tl59556030_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42159_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl59556030_)
                                                          (letrec ((_loop59566033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd59546037_ _opt59606040_)
                              (if (gx#stx-pair? _hd59546037_)
                                  (let ((_e59576043_
                                         (gx#syntax-e _hd59546037_)))
                                    (let ((_lp-hd59586047_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e59576043_)))
                                          (_lp-tl59596050_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e59576043_))))
                                      (_loop59566033_
                                       _lp-tl59596050_
                                       (cons _lp-hd59586047_ _opt59606040_))))
                                  (let ((_opt59616053_
                                         (reverse _opt59606040_)))
                                    (if (gx#stx-pair? _tl59526024_)
                                        (let ((_e59626057_
                                               (gx#syntax-e _tl59526024_)))
                                          (let ((_hd59636061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e59626057_)))
                                                (_tl59646064_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e59626057_))))
                                            (if (gx#stx-null? _tl59646064_)
                                                ((lambda (_L6067_
                                                          _L6069_
                                                          _L6070_)
                                                   (let ()
                                                     (gx#stx-wrap-source
                                                      (cons _L6067_
                                                            (foldr (lambda (_g60956100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g60966103_)
                             (cons _g60956100_ _g60966103_))
                           (foldr (lambda (_g60976106_ _g60986109_)
                                    (cons _g60976106_ _g60986109_))
                                  '()
                                  _L6069_)
                           _L6070_))
              (gx#stx-source _stx4574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd59636061_
                                                 _opt59616053_
                                                 _pre59496013_)
                                                (_g59335970_ _g59345974_))))
                                        (_g59335970_ _g59345974_)))))))
                    (_loop59566033_ _target59536027_ '()))
                  (_g59335970_ _g59345974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g59335970_ _g59345974_))))
                                        (_g59335970_ _g59345974_)))))))
                    (_loop59445993_ _target59415987_ '()))
                  (_g59335970_ _g59345974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g59335970_ _g59345974_))))
                                        (_g59335970_ _g59345974_)))))
                            (_g59326112_
                             (list _pre5816_
                                   (reverse _right5824_)
                                   _primary5814_)))))))
                 (_generate-kw-primary4589_
                  (lambda (_key5190_ _kwargs5192_ _args5193_ _body5194_)
                    (letrec ((_make-body5196_
                              (lambda (_kwargs5683_ _kwvals5685_)
                                (if (pair? _kwargs5683_)
                                    (let* ((_kwarg5687_ (car _kwargs5683_))
                                           (_var5690_ (cadr _kwarg5687_))
                                           (_default5693_ (caddr _kwarg5687_))
                                           (_kwval5696_ (car _kwvals5685_))
                                           (_rest-kwargs5699_
                                            (cdr _kwargs5683_))
                                           (_rest-kwvals5702_
                                            (cdr _kwvals5685_)))
                                      (let* ((_g57075730_
                                              (lambda (_g57085726_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g57085726_)))
                                             (_g57065810_
                                              (lambda (_g57085734_)
                                                (if (gx#stx-pair? _g57085734_)
                                                    (let ((_e57135737_
                                                           (gx#syntax-e
                                                            _g57085734_)))
                                                      (let ((_hd57145741_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e57135737_)))
                    (_tl57155744_
                     (let () (declare (not safe)) (##cdr _e57135737_))))
                (if (gx#stx-pair? _tl57155744_)
                    (let ((_e57165747_ (gx#syntax-e _tl57155744_)))
                      (let ((_hd57175751_
                             (let () (declare (not safe)) (##car _e57165747_)))
                            (_tl57185754_
                             (let ()
                               (declare (not safe))
                               (##cdr _e57165747_))))
                        (if (gx#stx-pair? _tl57185754_)
                            (let ((_e57195757_ (gx#syntax-e _tl57185754_)))
                              (let ((_hd57205761_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e57195757_)))
                                    (_tl57215764_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e57195757_))))
                                (if (gx#stx-pair? _tl57215764_)
                                    (let ((_e57225767_
                                           (gx#syntax-e _tl57215764_)))
                                      (let ((_hd57235771_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e57225767_)))
                                            (_tl57245774_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e57225767_))))
                                        (if (gx#stx-null? _tl57245774_)
                                            ((lambda (_L5777_
                                                      _L5779_
                                                      _L5780_
                                                      _L5781_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let-values)
                                                       (cons (cons (cons (cons _L5781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'eq?)
                                                         (cons _L5780_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'absent-value)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _L5779_
                                                         (cons _L5780_ '()))))
                                       '()))
                           '())
                     (cons _L5777_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd57235771_
                                             _hd57205761_
                                             _hd57175751_
                                             _hd57145741_)
                                            (_g57075730_ _g57085734_))))
                                    (_g57075730_ _g57085734_))))
                            (_g57075730_ _g57085734_))))
                    (_g57075730_ _g57085734_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g57075730_
                                                     _g57085734_)))))
                                        (_g57065810_
                                         (list _var5690_
                                               _kwval5696_
                                               _default5693_
                                               (_make-body5196_
                                                _rest-kwargs5699_
                                                _rest-kwvals5702_)))))
                                    (cons 'begin _body5194_))))
                             (_make-main5198_
                              (lambda ()
                                (let* ((_g54915499_
                                        (lambda (_g54925495_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g54925495_)))
                                       (_g54905675_
                                        (lambda (_g54925503_)
                                          ((lambda (_L5506_)
                                             (let ()
                                               (let* ((_g55185535_
                                                       (lambda (_g55195531_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g55195531_)))
                                                      (_g55175671_
                                                       (lambda (_g55195539_)
                                                         (if (gx#stx-pair/null?
                                                              _g55195539_)
                                                             (let ((_g42161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g55195539_ '0)))
                       (begin
                         (let ((_g42162_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g42161_)
                                      (##vector-length _g42161_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g42162_ 2)))
                               (error "Context expects 2 values" _g42162_)))
                         (let ((_target55215542_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42161_ 0)))
                               (_tl55235545_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42161_ 1))))
                           (if (gx#stx-null? _tl55235545_)
                               (letrec ((_loop55245548_
                                         (lambda (_hd55225552_ _kwval55285555_)
                                           (if (gx#stx-pair? _hd55225552_)
                                               (let ((_e55255558_
                                                      (gx#syntax-e
                                                       _hd55225552_)))
                                                 (let ((_lp-hd55265562_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e55255558_)))
                                                       (_lp-tl55275565_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e55255558_))))
                                                   (_loop55245548_
                                                    _lp-tl55275565_
                                                    (cons _lp-hd55265562_
                                                          _kwval55285555_))))
                                               (let ((_kwval55295568_
                                                      (reverse _kwval55285555_)))
                                                 ((lambda (_L5572_)
                                                    (let ()
                                                      (let* ((_g55895597_
                                                              (lambda (_g55905593_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g55905593_)))
                     (_g55885667_
                      (lambda (_g55905601_)
                        ((lambda (_L5604_)
                           (let ()
                             (let* ((_g56175625_
                                     (lambda (_g56185621_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g56185621_)))
                                    (_g56165655_
                                     (lambda (_g56185629_)
                                       ((lambda (_L5632_)
                                          (let ()
                                            (let ()
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L5506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_g56465649_ _g56475652_)
                                  (cons _g56465649_ _g56475652_))
                                _L5604_
                                _L5572_))
                   (cons _L5632_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _stx4574_)))))
                                        _g56185629_))))
                               (_g56165655_
                                (_make-body5196_
                                 _kwargs5192_
                                 (foldr (lambda (_g56585661_ _g56595664_)
                                          (cons _g56585661_ _g56595664_))
                                        '()
                                        _L5572_))))))
                         _g55905601_))))
                (_g55885667_ _args5193_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _kwval55295568_))))))
                                 (_loop55245548_ _target55215542_ '()))
                               (_g55185535_ _g55195539_)))))
                     (_g55185535_ _g55195539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g55175671_
                                                  (gx#gentemps
                                                   (map cadr _kwargs5192_))))))
                                           _g54925503_))))
                                  (_g54905675_
                                   (let ((_$e5679_ _key5190_))
                                     (if _$e5679_ _$e5679_ '_))))))
                             (_make-dispatch5199_
                              (lambda (_main5299_)
                                (let* ((_g53025310_
                                        (lambda (_g53035306_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g53035306_)))
                                       (_g53015481_
                                        (lambda (_g53035314_)
                                          ((lambda (_L5317_)
                                             (let ()
                                               (let* ((_g53295346_
                                                       (lambda (_g53305342_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g53305342_)))
                                                      (_g53285442_
                                                       (lambda (_g53305350_)
                                                         (if (gx#stx-pair/null?
                                                              _g53305350_)
                                                             (let ((_g42163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g53305350_ '0)))
                       (begin
                         (let ((_g42164_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g42163_)
                                      (##vector-length _g42163_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g42164_ 2)))
                               (error "Context expects 2 values" _g42164_)))
                         (let ((_target53325353_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42163_ 0)))
                               (_tl53345356_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42163_ 1))))
                           (if (gx#stx-null? _tl53345356_)
                               (letrec ((_loop53355359_
                                         (lambda (_hd53335363_
                                                  _get-kw53395366_)
                                           (if (gx#stx-pair? _hd53335363_)
                                               (let ((_e53365369_
                                                      (gx#syntax-e
                                                       _hd53335363_)))
                                                 (let ((_lp-hd53375373_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e53365369_)))
                                                       (_lp-tl53385376_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e53365369_))))
                                                   (_loop53355359_
                                                    _lp-tl53385376_
                                                    (cons _lp-hd53375373_
                                                          _get-kw53395366_))))
                                               (let ((_get-kw53405379_
                                                      (reverse _get-kw53395366_)))
                                                 ((lambda (_L5383_)
                                                    (let ()
                                                      (let* ((_g54005408_
                                                              (lambda (_g54015404_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g54015404_)))
                     (_g53995438_
                      (lambda (_g54015412_)
                        ((lambda (_L5415_)
                           (let ()
                             (let ()
                               (gx#stx-wrap-source
                                (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (cons _L5317_
                                                  (gx#datum->syntax '#f 'args))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'apply)
                                                        (cons _L5415_
                                                              (cons _L5317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g54295432_ _g54305435_)
                                     (cons _g54295432_ _g54305435_))
                                   (cons (gx#datum->syntax '#f 'args) '())
                                   _L5383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (gx#stx-source _stx4574_)))))
                         _g54015412_))))
                (_g53995438_ _main5299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _get-kw53405379_))))))
                                 (_loop53355359_ _target53325353_ '()))
                               (_g53295346_ _g53305350_)))))
                     (_g53295346_ _g53305350_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g53285442_
                                                  (map (lambda (_kwarg5446_)
                                                         (let* ((_g54495457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g54505453_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g54505453_)))
                        (_g54485477_
                         (lambda (_g54505461_)
                           ((lambda (_L5464_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'hash-ref)
                                      (cons _L5317_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L5464_ '()))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'absent-value)
                                                        '()))))))
                            _g54505461_))))
                   (_g54485477_ (car _kwarg5446_))))
               _kwargs5192_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g53035314_))))
                                  (_g53015481_
                                   (let ((_$e5485_ _key5190_))
                                     (if _$e5485_
                                         _$e5485_
                                         (gx#genident 'keys))))))))
                      (let* ((_g52015209_
                              (lambda (_g52025205_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g52025205_)))
                             (_g52005295_
                              (lambda (_g52025213_)
                                ((lambda (_L5216_)
                                   (let ()
                                     (let* ((_g52295237_
                                             (lambda (_g52305233_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g52305233_)))
                                            (_g52285291_
                                             (lambda (_g52305241_)
                                               ((lambda (_L5244_)
                                                  (let ()
                                                    (let* ((_g52575265_
                                                            (lambda (_g52585261_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g52585261_)))
                                                           (_g52565287_
                                                            (lambda (_g52585269_)
                                                              ((lambda (_L5272_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ()
                             (cons (gx#datum->syntax '#f 'let-values)
                                   (cons (cons (cons (cons _L5216_ '())
                                                     (cons _L5272_ '()))
                                               '())
                                         (cons _L5244_ '()))))))
                       _g52585269_))))
              (_g52565287_ (_make-main5198_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g52305241_))))
                                       (_g52285291_
                                        (_make-dispatch5199_ _L5216_)))))
                                 _g52025213_))))
                        (_g52005295_ (gx#genident 'kw-lambda-main))))))
                 (_generate-kw-dispatch4590_
                  (lambda (_primary5103_ _kwargs5105_ _strict?5106_)
                    (let* ((_g51085127_
                            (lambda (_g51095123_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g51095123_)))
                           (_g51075186_
                            (lambda (_g51095131_)
                              (if (gx#stx-pair? _g51095131_)
                                  (let ((_e51135134_
                                         (gx#syntax-e _g51095131_)))
                                    (let ((_hd51145138_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e51135134_)))
                                          (_tl51155141_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e51135134_))))
                                      (if (gx#stx-pair? _tl51155141_)
                                          (let ((_e51165144_
                                                 (gx#syntax-e _tl51155141_)))
                                            (let ((_hd51175148_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e51165144_)))
                                                  (_tl51185151_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e51165144_))))
                                              (if (gx#stx-pair? _tl51185151_)
                                                  (let ((_e51195154_
                                                         (gx#syntax-e
                                                          _tl51185151_)))
                                                    (let ((_hd51205158_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e51195154_)))
                                                          (_tl51215161_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e51195154_))))
                                                      (if (gx#stx-null?
                                                           _tl51215161_)
                                                          ((lambda (_L5164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5166_
                            _L5167_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons _L5164_
                                   (cons (cons (gx#datum->syntax '#f 'apply)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'keyword-dispatch)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L5167_ '()))
                   (cons _L5166_ (cons _L5164_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _hd51205158_
                   _hd51175148_
                   _hd51145138_)
                  (_g51085127_ _g51095131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g51085127_ _g51095131_))))
                                          (_g51085127_ _g51095131_))))
                                  (_g51085127_ _g51095131_)))))
                      (_g51075186_
                       (list (if _strict?5106_
                                 (_generate-kw-table4591_
                                  (map car _kwargs5105_))
                                 '#f)
                             _primary5103_
                             (gx#genident 'args))))))
                 (_generate-kw-table4591_
                  (lambda (_kws5077_)
                    (let _rehash5080_ ((_pht5083_
                                        (make-vector (length _kws5077_) '#f)))
                      (let _lp5086_ ((_rest5089_ _kws5077_))
                        (if (pair? _rest5089_)
                            (let* ((_key5092_ (car _rest5089_))
                                   (_rest5095_ (cdr _rest5089_))
                                   (_pos5098_
                                    (fxmodulo
                                     (keyword-hash _key5092_)
                                     (vector-length _pht5083_))))
                              (if (vector-ref _pht5083_ _pos5098_)
                                  (if (fx< (vector-length _pht5083_) '8192)
                                      (_rehash5080_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht5083_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws5077_))
                                  (begin
                                    (vector-set! _pht5083_ _pos5098_ _key5092_)
                                    (_lp5086_ _rest5095_))))
                            _pht5083_))))))
          (let* ((___stx3763537636_ _stx4574_)
                 (_g45954626_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3763537636_))))
            (let ((___kont3763837639_
                   (lambda (_L5058_ _L5060_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _L5060_ _L5058_))))
                  (___kont3764037641_
                   (lambda (_L4830_ _L4832_)
                     (let ((_g42165_ (_opt-lambda-split4580_ _L4832_)))
                       (begin
                         (let ((_g42166_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g42165_)
                                      (##vector-length _g42165_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g42166_ 3)))
                               (error "Context expects 3 values" _g42166_)))
                         (let ((_pre4845_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42165_ 0)))
                               (_opt4847_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42165_ 1)))
                               (_tail4848_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42165_ 2))))
                           (let* ((_g48504858_
                                   (lambda (_g48514854_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g48514854_)))
                                  (_g48495027_
                                   (lambda (_g48514862_)
                                     ((lambda (_L4865_)
                                        (let ()
                                          (let* ((_g48784886_
                                                  (lambda (_g48794882_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g48794882_)))
                                                 (_g48775023_
                                                  (lambda (_g48794890_)
                                                    ((lambda (_L4893_)
                                                       (let ()
                                                         (let* ((_g49064923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g49074919_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g49074919_)))
                        (_g49055019_
                         (lambda (_g49074927_)
                           (if (gx#stx-pair/null? _g49074927_)
                               (let ((_g42167_
                                      (gx#syntax-split-splice _g49074927_ '0)))
                                 (begin
                                   (let ((_g42168_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g42167_)
                                                (##vector-length _g42167_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g42168_ 2)))
                                         (error "Context expects 2 values"
                                                _g42168_)))
                                   (let ((_target49094930_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g42167_ 0)))
                                         (_tl49114933_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g42167_ 1))))
                                     (if (gx#stx-null? _tl49114933_)
                                         (letrec ((_loop49124936_
                                                   (lambda (_hd49104940_
                                                            _clause49164943_)
                                                     (if (gx#stx-pair?
                                                          _hd49104940_)
                                                         (let ((_e49134946_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd49104940_)))
                   (let ((_lp-hd49144950_
                          (let () (declare (not safe)) (##car _e49134946_)))
                         (_lp-tl49154953_
                          (let () (declare (not safe)) (##cdr _e49134946_))))
                     (_loop49124936_
                      _lp-tl49154953_
                      (cons _lp-hd49144950_ _clause49164943_))))
                 (let ((_clause49174956_ (reverse _clause49164943_)))
                   ((lambda (_L4960_)
                      (let ()
                        (let* ((_g49774985_
                                (lambda (_g49784981_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g49784981_)))
                               (_g49765007_
                                (lambda (_g49784989_)
                                  ((lambda (_L4992_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'let-values)
                                               (cons (cons (cons (cons _L4865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L4893_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L4992_ '()))))))
                                   _g49784989_))))
                          (_g49765007_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'case-lambda)
                                  (foldr (lambda (_g50105013_ _g50115016_)
                                           (cons _g50105013_ _g50115016_))
                                         '()
                                         _L4960_))
                            (gx#stx-source _stx4574_))))))
                    _clause49174956_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop49124936_
                                            _target49094930_
                                            '()))
                                         (_g49064923_ _g49074927_)))))
                               (_g49064923_ _g49074927_)))))
                   (_g49055019_
                    (_generate-opt-dispatch4586_
                     _L4865_
                     _pre4845_
                     _opt4847_
                     _tail4848_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g48794890_))))
                                            (_g48775023_
                                             (gx#stx-wrap-source
                                              (_generate-opt-primary4585_
                                               _pre4845_
                                               _opt4847_
                                               _tail4848_
                                               _L4830_)
                                              (gx#stx-source _stx4574_))))))
                                      _g48514862_))))
                             (_g48495027_ (gx#genident 'opt-lambda))))))))
                  (___kont3764237643_
                   (lambda (_L4653_ _L4655_)
                     (let* ((_g46714678_
                             (lambda (_g46724674_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g46724674_)))
                            (_g46704799_
                             (lambda (_g46724682_)
                               ((lambda ()
                                  (let ()
                                    (let ((_g42169_
                                           (_kw-lambda-split4582_ _L4655_)))
                                      (begin
                                        (let ((_g42170_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g42169_)
                                                     (##vector-length _g42169_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g42170_ 3)))
                                              (error "Context expects 3 values"
                                                     _g42170_)))
                                        (let ((_key4691_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42169_ 0)))
                                              (_kwargs4693_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42169_ 1)))
                                              (_args4694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42169_ 2))))
                                          (let* ((_g46964704_
                                                  (lambda (_g46974700_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g46974700_)))
                                                 (_g46954795_
                                                  (lambda (_g46974708_)
                                                    ((lambda (_L4711_)
                                                       (let ()
                                                         (let* ((_g47294737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g47304733_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g47304733_)))
                        (_g47284791_
                         (lambda (_g47304741_)
                           ((lambda (_L4744_)
                              (let ()
                                (let* ((_g47574765_
                                        (lambda (_g47584761_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g47584761_)))
                                       (_g47564787_
                                        (lambda (_g47584769_)
                                          ((lambda (_L4772_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let-values)
                                                       (cons (cons (cons (cons _L4711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons _L4744_ '()))
                           '())
                     (cons _L4772_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g47584769_))))
                                  (_g47564787_
                                   (gx#stx-wrap-source
                                    (_generate-kw-dispatch4590_
                                     _L4711_
                                     _kwargs4693_
                                     (not _key4691_))
                                    (gx#stx-source _stx4574_))))))
                            _g47304741_))))
                   (_g47284791_
                    (gx#stx-wrap-source
                     (_generate-kw-primary4589_
                      _key4691_
                      _kwargs4693_
                      _args4694_
                      _L4653_)
                     (gx#stx-source _stx4574_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g46974708_))))
                                            (_g46954795_
                                             (gx#genident
                                              'kw-lambda))))))))))))
                       (_g46704799_
                        (_check-duplicate-bindings4584_ _L4655_))))))
              (let* ((___match3768037681_
                      (lambda (_e46154633_
                               _hd46164637_
                               _tl46174640_
                               _e46184643_
                               _hd46194647_
                               _tl46204650_)
                        (let ((_L4653_ _tl46204650_) (_L4655_ _hd46194647_))
                          (if (_kw-lambda?4581_ _L4655_)
                              (___kont3764237643_ _L4653_ _L4655_)
                              (_g45954626_)))))
                     (___match3766837669_
                      (lambda (_e46074810_
                               _hd46084814_
                               _tl46094817_
                               _e46104820_
                               _hd46114824_
                               _tl46124827_)
                        (let ((_L4830_ _tl46124827_) (_L4832_ _hd46114824_))
                          (if (_opt-lambda?4579_ _L4832_)
                              (___kont3764037641_ _L4830_ _L4832_)
                              (___match3768037681_
                               _e46074810_
                               _hd46084814_
                               _tl46094817_
                               _e46104820_
                               _hd46114824_
                               _tl46124827_)))))
                     (___match3765637657_
                      (lambda (_e45995038_
                               _hd46005042_
                               _tl46015045_
                               _e46025048_
                               _hd46035052_
                               _tl46045055_)
                        (let ((_L5058_ _tl46045055_) (_L5060_ _hd46035052_))
                          (if (_simple-lambda?4577_ _L5060_)
                              (___kont3763837639_ _L5058_ _L5060_)
                              (___match3766837669_
                               _e45995038_
                               _hd46005042_
                               _tl46015045_
                               _e46025048_
                               _hd46035052_
                               _tl46045055_))))))
                (if (gx#stx-pair? ___stx3763537636_)
                    (let ((_e45995038_ (gx#syntax-e ___stx3763537636_)))
                      (let ((_tl46015045_
                             (let () (declare (not safe)) (##cdr _e45995038_)))
                            (_hd46005042_
                             (let ()
                               (declare (not safe))
                               (##car _e45995038_))))
                        (if (gx#stx-pair? _tl46015045_)
                            (let ((_e46025048_ (gx#syntax-e _tl46015045_)))
                              (let ((_tl46045055_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e46025048_)))
                                    (_hd46035052_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e46025048_))))
                                (___match3765637657_
                                 _e45995038_
                                 _hd46005042_
                                 _tl46015045_
                                 _e46025048_
                                 _hd46035052_
                                 _tl46045055_)))
                            (_g45954626_))))
                    (_g45954626_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def|
      (lambda (_$stx7990_)
        (let* ((___stx3768337684_ _$stx7990_)
               (_g79968060_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3768337684_))))
          (let ((___kont3768637687_
                 (lambda (_L8290_ _L8292_ _L8293_ _L8294_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _L8294_ _L8293_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _L8292_
                                                 (foldr (lambda (_g83168319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g83178322_)
                  (cons _g83168319_ _g83178322_))
                '()
                _L8290_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3769037691_
                 (lambda (_L8182_ _L8184_ _L8185_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L8185_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _L8184_
                                                 (foldr (lambda (_g82048207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g82058210_)
                  (cons _g82048207_ _g82058210_))
                '()
                _L8182_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3769437695_
                 (lambda (_L8097_ _L8099_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L8099_ '()) (cons _L8097_ '()))))))
            (let* ((___match3777437775_
                    (lambda (_e80468067_
                             _hd80478071_
                             _tl80488074_
                             _e80498077_
                             _hd80508081_
                             _tl80518084_
                             _e80528087_
                             _hd80538091_
                             _tl80548094_)
                      (let ((_L8097_ _hd80538091_) (_L8099_ _hd80508081_))
                        (if (gx#identifier? _L8099_)
                            (___kont3769437695_ _L8097_ _L8099_)
                            (_g79968060_)))))
                   (___match3776637767_
                    (lambda (_e80468067_
                             _hd80478071_
                             _tl80488074_
                             _e80498077_
                             _hd80508081_
                             _tl80518084_)
                      (if (gx#stx-pair? _tl80518084_)
                          (let ((_e80528087_ (gx#syntax-e _tl80518084_)))
                            (let ((_tl80548094_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e80528087_)))
                                  (_hd80538091_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e80528087_))))
                              (if (gx#stx-null? _tl80548094_)
                                  (___match3777437775_
                                   _e80468067_
                                   _hd80478071_
                                   _tl80488074_
                                   _e80498077_
                                   _hd80508081_
                                   _tl80518084_
                                   _e80528087_
                                   _hd80538091_
                                   _tl80548094_)
                                  (_g79968060_))))
                          (_g79968060_))))
                   (___match3775437755_
                    (lambda (_e80268122_
                             _hd80278126_
                             _tl80288129_
                             _e80298132_
                             _hd80308136_
                             _tl80318139_
                             _e80328142_
                             _hd80338146_
                             _tl80348149_
                             ___splice3769237693_
                             _target80358152_
                             _tl80378155_)
                      (letrec ((_loop80388158_
                                (lambda (_hd80368162_ _body80428165_)
                                  (if (gx#stx-pair? _hd80368162_)
                                      (let ((_e80398168_
                                             (gx#syntax-e _hd80368162_)))
                                        (let ((_lp-tl80418175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80398168_)))
                                              (_lp-hd80408172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80398168_))))
                                          (_loop80388158_
                                           _lp-tl80418175_
                                           (cons _lp-hd80408172_
                                                 _body80428165_))))
                                      (let ((_body80438178_
                                             (reverse _body80428165_)))
                                        (let ((_L8182_ _body80438178_)
                                              (_L8184_ _tl80348149_)
                                              (_L8185_ _hd80338146_))
                                          (if (gx#identifier? _L8185_)
                                              (___kont3769037691_
                                               _L8182_
                                               _L8184_
                                               _L8185_)
                                              (___match3776637767_
                                               _e80268122_
                                               _hd80278126_
                                               _tl80288129_
                                               _e80298132_
                                               _hd80308136_
                                               _tl80318139_))))))))
                        (_loop80388158_ _target80358152_ '()))))
                   (___match3772837729_
                    (lambda (_e80028220_
                             _hd80038224_
                             _tl80048227_
                             _e80058230_
                             _hd80068234_
                             _tl80078237_
                             _e80088240_
                             _hd80098244_
                             _tl80108247_
                             _e80118250_
                             _hd80128254_
                             _tl80138257_
                             ___splice3768837689_
                             _target80148260_
                             _tl80168263_)
                      (letrec ((_loop80178266_
                                (lambda (_hd80158270_ _body80218273_)
                                  (if (gx#stx-pair? _hd80158270_)
                                      (let ((_e80188276_
                                             (gx#syntax-e _hd80158270_)))
                                        (let ((_lp-tl80208283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80188276_)))
                                              (_lp-hd80198280_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80188276_))))
                                          (_loop80178266_
                                           _lp-tl80208283_
                                           (cons _lp-hd80198280_
                                                 _body80218273_))))
                                      (let ((_body80228286_
                                             (reverse _body80218273_)))
                                        (___kont3768637687_
                                         _body80228286_
                                         _tl80108247_
                                         _tl80138257_
                                         _hd80128254_))))))
                        (_loop80178266_ _target80148260_ '())))))
              (if (gx#stx-pair? ___stx3768337684_)
                  (let ((_e80028220_ (gx#syntax-e ___stx3768337684_)))
                    (let ((_tl80048227_
                           (let () (declare (not safe)) (##cdr _e80028220_)))
                          (_hd80038224_
                           (let () (declare (not safe)) (##car _e80028220_))))
                      (if (gx#stx-pair? _tl80048227_)
                          (let ((_e80058230_ (gx#syntax-e _tl80048227_)))
                            (let ((_tl80078237_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e80058230_)))
                                  (_hd80068234_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e80058230_))))
                              (if (gx#stx-pair? _hd80068234_)
                                  (let ((_e80088240_
                                         (gx#syntax-e _hd80068234_)))
                                    (let ((_tl80108247_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e80088240_)))
                                          (_hd80098244_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e80088240_))))
                                      (if (gx#stx-pair? _hd80098244_)
                                          (let ((_e80118250_
                                                 (gx#syntax-e _hd80098244_)))
                                            (let ((_tl80138257_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e80118250_)))
                                                  (_hd80128254_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e80118250_))))
                                              (if (gx#stx-pair/null?
                                                   _tl80078237_)
                                                  (let ((___splice3768837689_
                                                         (gx#syntax-split-splice
                                                          _tl80078237_
                                                          '0)))
                                                    (let ((_tl80168263_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3768837689_
                                                              '1)))
                                                          (_target80148260_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3768837689_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl80168263_)
                                                          (___match3772837729_
                                                           _e80028220_
                                                           _hd80038224_
                                                           _tl80048227_
                                                           _e80058230_
                                                           _hd80068234_
                                                           _tl80078237_
                                                           _e80088240_
                                                           _hd80098244_
                                                           _tl80108247_
                                                           _e80118250_
                                                           _hd80128254_
                                                           _tl80138257_
                                                           ___splice3768837689_
                                                           _target80148260_
                                                           _tl80168263_)
                                                          (if (gx#stx-pair?
                                                               _tl80078237_)
                                                              (let ((_e80528087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl80078237_)))
                        (let ((_tl80548094_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e80528087_)))
                              (_hd80538091_
                               (let ()
                                 (declare (not safe))
                                 (##car _e80528087_))))
                          (if (gx#stx-null? _tl80548094_)
                              (___match3777437775_
                               _e80028220_
                               _hd80038224_
                               _tl80048227_
                               _e80058230_
                               _hd80068234_
                               _tl80078237_
                               _e80528087_
                               _hd80538091_
                               _tl80548094_)
                              (_g79968060_))))
                      (_g79968060_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl80078237_)
                                                      (let ((_e80528087_
                                                             (gx#syntax-e
                                                              _tl80078237_)))
                                                        (let ((_tl80548094_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e80528087_)))
                      (_hd80538091_
                       (let () (declare (not safe)) (##car _e80528087_))))
                  (if (gx#stx-null? _tl80548094_)
                      (___match3777437775_
                       _e80028220_
                       _hd80038224_
                       _tl80048227_
                       _e80058230_
                       _hd80068234_
                       _tl80078237_
                       _e80528087_
                       _hd80538091_
                       _tl80548094_)
                      (_g79968060_))))
              (_g79968060_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null? _tl80078237_)
                                              (let ((___splice3769237693_
                                                     (gx#syntax-split-splice
                                                      _tl80078237_
                                                      '0)))
                                                (let ((_tl80378155_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3769237693_
                                                          '1)))
                                                      (_target80358152_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3769237693_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl80378155_)
                                                      (___match3775437755_
                                                       _e80028220_
                                                       _hd80038224_
                                                       _tl80048227_
                                                       _e80058230_
                                                       _hd80068234_
                                                       _tl80078237_
                                                       _e80088240_
                                                       _hd80098244_
                                                       _tl80108247_
                                                       ___splice3769237693_
                                                       _target80358152_
                                                       _tl80378155_)
                                                      (if (gx#stx-pair?
                                                           _tl80078237_)
                                                          (let ((_e80528087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl80078237_)))
                    (let ((_tl80548094_
                           (let () (declare (not safe)) (##cdr _e80528087_)))
                          (_hd80538091_
                           (let () (declare (not safe)) (##car _e80528087_))))
                      (if (gx#stx-null? _tl80548094_)
                          (___match3777437775_
                           _e80028220_
                           _hd80038224_
                           _tl80048227_
                           _e80058230_
                           _hd80068234_
                           _tl80078237_
                           _e80528087_
                           _hd80538091_
                           _tl80548094_)
                          (_g79968060_))))
                  (_g79968060_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl80078237_)
                                                  (let ((_e80528087_
                                                         (gx#syntax-e
                                                          _tl80078237_)))
                                                    (let ((_tl80548094_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e80528087_)))
                                                          (_hd80538091_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e80528087_))))
                                                      (if (gx#stx-null?
                                                           _tl80548094_)
                                                          (___match3777437775_
                                                           _e80028220_
                                                           _hd80038224_
                                                           _tl80048227_
                                                           _e80058230_
                                                           _hd80068234_
                                                           _tl80078237_
                                                           _e80528087_
                                                           _hd80538091_
                                                           _tl80548094_)
                                                          (_g79968060_))))
                                                  (_g79968060_))))))
                                  (if (gx#stx-pair? _tl80078237_)
                                      (let ((_e80528087_
                                             (gx#syntax-e _tl80078237_)))
                                        (let ((_tl80548094_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80528087_)))
                                              (_hd80538091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80528087_))))
                                          (if (gx#stx-null? _tl80548094_)
                                              (___match3777437775_
                                               _e80028220_
                                               _hd80038224_
                                               _tl80048227_
                                               _e80058230_
                                               _hd80068234_
                                               _tl80078237_
                                               _e80528087_
                                               _hd80538091_
                                               _tl80548094_)
                                              (_g79968060_))))
                                      (_g79968060_)))))
                          (_g79968060_))))
                  (_g79968060_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def*|
      (lambda (_$stx8331_)
        (let* ((_g83358359_
                (lambda (_g83368355_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g83368355_)))
               (_g83348444_
                (lambda (_g83368363_)
                  (if (gx#stx-pair? _g83368363_)
                      (let ((_e83398366_ (gx#syntax-e _g83368363_)))
                        (let ((_hd83408370_
                               (let ()
                                 (declare (not safe))
                                 (##car _e83398366_)))
                              (_tl83418373_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e83398366_))))
                          (if (gx#stx-pair? _tl83418373_)
                              (let ((_e83428376_ (gx#syntax-e _tl83418373_)))
                                (let ((_hd83438380_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e83428376_)))
                                      (_tl83448383_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e83428376_))))
                                  (if (gx#stx-pair/null? _tl83448383_)
                                      (let ((_g42171_
                                             (gx#syntax-split-splice
                                              _tl83448383_
                                              '0)))
                                        (begin
                                          (let ((_g42172_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42171_)
                                                       (##vector-length
                                                        _g42171_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42172_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42172_)))
                                          (let ((_target83458386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42171_ 0)))
                                                (_tl83478389_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42171_ 1))))
                                            (if (gx#stx-null? _tl83478389_)
                                                (letrec ((_loop83488392_
                                                          (lambda (_hd83468396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses83528399_)
                    (if (gx#stx-pair? _hd83468396_)
                        (let ((_e83498402_ (gx#syntax-e _hd83468396_)))
                          (let ((_lp-hd83508406_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e83498402_)))
                                (_lp-tl83518409_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e83498402_))))
                            (_loop83488392_
                             _lp-tl83518409_
                             (cons _lp-hd83508406_ _clauses83528399_))))
                        (let ((_clauses83538412_ (reverse _clauses83528399_)))
                          ((lambda (_L8416_ _L8418_)
                             (if (gx#identifier? _L8418_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _L8418_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_g84358438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g84368441_)
                          (cons _g84358438_ _g84368441_))
                        '()
                        _L8416_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_g83358359_ _g83368363_)))
                           _clauses83538412_
                           _hd83438380_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop83488392_
                                                   _target83458386_
                                                   '()))
                                                (_g83358359_ _g83368363_)))))
                                      (_g83358359_ _g83368363_))))
                              (_g83358359_ _g83368363_))))
                      (_g83358359_ _g83368363_)))))
          (_g83348444_ _$stx8331_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8449_)
        (let* ((_g84538471_
                (lambda (_g84548467_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g84548467_)))
               (_g84528526_
                (lambda (_g84548475_)
                  (if (gx#stx-pair? _g84548475_)
                      (let ((_e84578478_ (gx#syntax-e _g84548475_)))
                        (let ((_hd84588482_
                               (let ()
                                 (declare (not safe))
                                 (##car _e84578478_)))
                              (_tl84598485_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e84578478_))))
                          (if (gx#stx-pair? _tl84598485_)
                              (let ((_e84608488_ (gx#syntax-e _tl84598485_)))
                                (let ((_hd84618492_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e84608488_)))
                                      (_tl84628495_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e84608488_))))
                                  (if (gx#stx-pair? _tl84628495_)
                                      (let ((_e84638498_
                                             (gx#syntax-e _tl84628495_)))
                                        (let ((_hd84648502_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e84638498_)))
                                              (_tl84658505_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e84638498_))))
                                          (if (gx#stx-null? _tl84658505_)
                                              ((lambda (_L8508_ _L8510_)
                                                 (if (gx#identifier-list?
                                                      _L8510_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _L8510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L8508_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g84538471_
                                                      _g84548475_)))
                                               _hd84648502_
                                               _hd84618492_)
                                              (_g84538471_ _g84548475_))))
                                      (_g84538471_ _g84548475_))))
                              (_g84538471_ _g84548475_))))
                      (_g84538471_ _g84548475_)))))
          (_g84528526_ _$stx8449_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#case|
      (lambda (_$stx8530_)
        (let* ((_g85348558_
                (lambda (_g85358554_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g85358554_)))
               (_g85338643_
                (lambda (_g85358562_)
                  (if (gx#stx-pair? _g85358562_)
                      (let ((_e85388565_ (gx#syntax-e _g85358562_)))
                        (let ((_hd85398569_
                               (let ()
                                 (declare (not safe))
                                 (##car _e85388565_)))
                              (_tl85408572_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e85388565_))))
                          (if (gx#stx-pair? _tl85408572_)
                              (let ((_e85418575_ (gx#syntax-e _tl85408572_)))
                                (let ((_hd85428579_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e85418575_)))
                                      (_tl85438582_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e85418575_))))
                                  (if (gx#stx-pair/null? _tl85438582_)
                                      (let ((_g42173_
                                             (gx#syntax-split-splice
                                              _tl85438582_
                                              '0)))
                                        (begin
                                          (let ((_g42174_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42173_)
                                                       (##vector-length
                                                        _g42173_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42174_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42174_)))
                                          (let ((_target85448585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42173_ 0)))
                                                (_tl85468588_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42173_ 1))))
                                            (if (gx#stx-null? _tl85468588_)
                                                (letrec ((_loop85478591_
                                                          (lambda (_hd85458595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause85518598_)
                    (if (gx#stx-pair? _hd85458595_)
                        (let ((_e85488601_ (gx#syntax-e _hd85458595_)))
                          (let ((_lp-hd85498605_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e85488601_)))
                                (_lp-tl85508608_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e85488601_))))
                            (_loop85478591_
                             _lp-tl85508608_
                             (cons _lp-hd85498605_ _clause85518598_))))
                        (let ((_clause85528611_ (reverse _clause85518598_)))
                          ((lambda (_L8615_ _L8617_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _L8617_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_g86348637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g86358640_)
                            (cons _g86348637_ _g86358640_))
                          '()
                          _L8615_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _clause85528611_
                           _hd85428579_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop85478591_
                                                   _target85448585_
                                                   '()))
                                                (_g85348558_ _g85358562_)))))
                                      (_g85348558_ _g85358562_))))
                              (_g85348558_ _g85358562_))))
                      (_g85348558_ _g85358562_)))))
          (_g85338643_ _$stx8530_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case|
      (lambda (_stx8648_)
        (letrec ((_parse-clauses8651_
                  (lambda (_e11114_ _clauses11116_)
                    (let _lp11118_ ((_rest11121_ _clauses11116_)
                                    (_datums11123_ '())
                                    (_dispatch11124_ '())
                                    (_default11125_ '#f))
                      (let* ((___stx3787337874_ _rest11121_)
                             (_g1112811140_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3787337874_))))
                        (let ((___kont3787637877_
                               (lambda (_L11172_ _L11174_)
                                 (let* ((___stx3777737778_ _L11174_)
                                        (_g1119211265_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3777737778_))))
                                   (let ((___kont3778037781_
                                          (lambda (_L11630_)
                                            (if (gx#stx-null? _L11172_)
                                                (let* ((_g1164511653_
                                                        (lambda (_g1164611649_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1164611649_)))
                                                       (_g1164411672_
                                                        (lambda (_g1164611657_)
                                                          ((lambda (_L11660_)
                                                             (let ()
                                                               (_lp11118_
                                                                '()
                                                                _datums11123_
                                                                _dispatch11124_
                                                                (cons _L11630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L11660_ '())))))
                   _g1164611657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1164411672_ _e11114_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx8648_
                                                 _L11174_))))
                                         (___kont3778237783_
                                          (lambda (_L11570_)
                                            (if (gx#stx-null? _L11172_)
                                                (_lp11118_
                                                 '()
                                                 _datums11123_
                                                 _dispatch11124_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_g1158411587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1158511590_)
                        (cons _g1158411587_ _g1158511590_))
                      '()
                      _L11570_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx8648_
                                                 _L11174_))))
                                         (___kont3778637787_
                                          (lambda (_L11455_ _L11457_)
                                            (if (null? (foldr (lambda (_g1147511478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1147611481_)
                        (cons _g1147511478_ _g1147611481_))
                      '()
                      _L11457_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp11118_
                                                 _L11172_
                                                 _datums11123_
                                                 _dispatch11124_
                                                 _default11125_)
                                                (let* ((_g1148411492_
                                                        (lambda (_g1148511488_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1148511488_)))
                                                       (_g1148311519_
                                                        (lambda (_g1148511496_)
                                                          ((lambda (_L11499_)
                                                             (let ()
                                                               (_lp11118_
                                                                _L11172_
                                                                (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (foldr (lambda (_g1151011513_ _g1151111516_)
                                            (cons _g1151011513_ _g1151111516_))
                                          '()
                                          _L11457_))
                              _datums11123_)
                        (cons (cons _L11455_ (cons _L11499_ '()))
                              _dispatch11124_)
                        _default11125_)))
                   _g1148511496_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1148311519_ _e11114_)))))
                                         (___kont3779037791_
                                          (lambda (_L11342_ _L11344_)
                                            (if (null? (foldr (lambda (_g1136311366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1136411369_)
                        (cons _g1136311366_ _g1136411369_))
                      '()
                      _L11344_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp11118_
                                                 _L11172_
                                                 _datums11123_
                                                 _dispatch11124_
                                                 _default11125_)
                                                (_lp11118_
                                                 _L11172_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_g1137111374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1137211377_)
                             (cons _g1137111374_ _g1137211377_))
                           '()
                           _L11344_))
               _datums11123_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_g1137911382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1138011385_)
                              (cons _g1137911382_ _g1138011385_))
                            '()
                            _L11342_))
               _dispatch11124_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _default11125_)))))
                                     (let* ((___match3787037871_
                                             (lambda (_e1123911272_
                                                      _hd1124011276_
                                                      _tl1124111279_
                                                      ___splice3779237793_
                                                      _target1124211282_
                                                      _tl1124411285_)
                                               (letrec ((_loop1124511288_
                                                         (lambda (_hd1124311292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1124911295_)
                   (if (gx#stx-pair? _hd1124311292_)
                       (let ((_e1124611298_ (gx#syntax-e _hd1124311292_)))
                         (let ((_lp-tl1124811305_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1124611298_)))
                               (_lp-hd1124711302_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1124611298_))))
                           (_loop1124511288_
                            _lp-tl1124811305_
                            (cons _lp-hd1124711302_ _datum1124911295_))))
                       (let ((_datum1125011308_ (reverse _datum1124911295_)))
                         (if (gx#stx-pair/null? _tl1124111279_)
                             (let ((___splice3779437795_
                                    (gx#syntax-split-splice
                                     _tl1124111279_
                                     '0)))
                               (let ((_tl1125311315_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice3779437795_
                                         '1)))
                                     (_target1125111312_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice3779437795_
                                         '0))))
                                 (if (gx#stx-null? _tl1125311315_)
                                     (letrec ((_loop1125411318_
                                               (lambda (_hd1125211322_
                                                        _body1125811325_)
                                                 (if (gx#stx-pair?
                                                      _hd1125211322_)
                                                     (let ((_e1125511328_
                                                            (gx#syntax-e
                                                             _hd1125211322_)))
                                                       (let ((_lp-tl1125711335_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1125511328_)))
                     (_lp-hd1125611332_
                      (let () (declare (not safe)) (##car _e1125511328_))))
                 (_loop1125411318_
                  _lp-tl1125711335_
                  (cons _lp-hd1125611332_ _body1125811325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_body1125911338_
                                                            (reverse _body1125811325_)))
                                                       (___kont3779037791_
                                                        _body1125911338_
                                                        _datum1125011308_))))))
                                       (_loop1125411318_
                                        _target1125111312_
                                        '()))
                                     (_g1119211265_))))
                             (_g1119211265_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1124511288_
                                                  _target1124211282_
                                                  '()))))
                                            (___match3785637857_
                                             (lambda (_e1121911395_
                                                      _hd1122011399_
                                                      _tl1122111402_
                                                      ___splice3778837789_
                                                      _target1122211405_
                                                      _tl1122411408_)
                                               (letrec ((_loop1122511411_
                                                         (lambda (_hd1122311415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1122911418_)
                   (if (gx#stx-pair? _hd1122311415_)
                       (let ((_e1122611421_ (gx#syntax-e _hd1122311415_)))
                         (let ((_lp-tl1122811428_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1122611421_)))
                               (_lp-hd1122711425_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1122611421_))))
                           (_loop1122511411_
                            _lp-tl1122811428_
                            (cons _lp-hd1122711425_ _datum1122911418_))))
                       (let ((_datum1123011431_ (reverse _datum1122911418_)))
                         (if (gx#stx-pair? _tl1122111402_)
                             (let ((_e1123111435_
                                    (gx#syntax-e _tl1122111402_)))
                               (let ((_tl1123311442_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1123111435_)))
                                     (_hd1123211439_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1123111435_))))
                                 (if (gx#identifier? _hd1123211439_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core$<sugar>$<sugar:2>[1]#_g42175_|
                                          _hd1123211439_)
                                         (if (gx#stx-pair? _tl1123311442_)
                                             (let ((_e1123411445_
                                                    (gx#syntax-e
                                                     _tl1123311442_)))
                                               (let ((_tl1123611452_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1123411445_)))
                                                     (_hd1123511449_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1123411445_))))
                                                 (if (gx#stx-null?
                                                      _tl1123611452_)
                                                     (___kont3778637787_
                                                      _hd1123511449_
                                                      _datum1123011431_)
                                                     (___match3787037871_
                                                      _e1121911395_
                                                      _hd1122011399_
                                                      _tl1122111402_
                                                      ___splice3778837789_
                                                      _target1122211405_
                                                      _tl1122411408_))))
                                             (___match3787037871_
                                              _e1121911395_
                                              _hd1122011399_
                                              _tl1122111402_
                                              ___splice3778837789_
                                              _target1122211405_
                                              _tl1122411408_))
                                         (___match3787037871_
                                          _e1121911395_
                                          _hd1122011399_
                                          _tl1122111402_
                                          ___splice3778837789_
                                          _target1122211405_
                                          _tl1122411408_))
                                     (___match3787037871_
                                      _e1121911395_
                                      _hd1122011399_
                                      _tl1122111402_
                                      ___splice3778837789_
                                      _target1122211405_
                                      _tl1122411408_))))
                             (___match3787037871_
                              _e1121911395_
                              _hd1122011399_
                              _tl1122111402_
                              ___splice3778837789_
                              _target1122211405_
                              _tl1122411408_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1122511411_
                                                  _target1122211405_
                                                  '()))))
                                            (___match3784237843_
                                             (lambda (_e1120511530_
                                                      _hd1120611534_
                                                      _tl1120711537_
                                                      ___splice3778437785_
                                                      _target1120811540_
                                                      _tl1121011543_)
                                               (letrec ((_loop1121111546_
                                                         (lambda (_hd1120911550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1121511553_)
                   (if (gx#stx-pair? _hd1120911550_)
                       (let ((_e1121211556_ (gx#syntax-e _hd1120911550_)))
                         (let ((_lp-tl1121411563_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1121211556_)))
                               (_lp-hd1121311560_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1121211556_))))
                           (_loop1121111546_
                            _lp-tl1121411563_
                            (cons _lp-hd1121311560_ _body1121511553_))))
                       (let ((_body1121611566_ (reverse _body1121511553_)))
                         (___kont3778237783_ _body1121611566_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1121111546_
                                                  _target1120811540_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx3777737778_)
                                           (let ((_e1119511600_
                                                  (gx#syntax-e
                                                   ___stx3777737778_)))
                                             (let ((_tl1119711607_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1119511600_)))
                                                   (_hd1119611604_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1119511600_))))
                                               (if (gx#identifier?
                                                    _hd1119611604_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<sugar>$<sugar:2>[1]#_g42176_|
                                                        _hd1119611604_)
                                                       (if (gx#stx-pair?
                                                            _tl1119711607_)
                                                           (let ((_e1119811610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1119711607_)))
                     (let ((_tl1120011617_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1119811610_)))
                           (_hd1119911614_
                            (let ()
                              (declare (not safe))
                              (##car _e1119811610_))))
                       (if (gx#identifier? _hd1119911614_)
                           (if (gx#free-identifier=?
                                |gerbil/core$<sugar>$<sugar:2>[1]#_g42177_|
                                _hd1119911614_)
                               (if (gx#stx-pair? _tl1120011617_)
                                   (let ((_e1120111620_
                                          (gx#syntax-e _tl1120011617_)))
                                     (let ((_tl1120311627_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1120111620_)))
                                           (_hd1120211624_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1120111620_))))
                                       (if (gx#stx-null? _tl1120311627_)
                                           (___kont3778037781_ _hd1120211624_)
                                           (if (gx#stx-pair/null?
                                                _tl1119711607_)
                                               (let ((___splice3778437785_
                                                      (gx#syntax-split-splice
                                                       _tl1119711607_
                                                       '0)))
                                                 (let ((_tl1121011543_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice3778437785_
                                                           '1)))
                                                       (_target1120811540_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice3778437785_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1121011543_)
                                                       (___match3784237843_
                                                        _e1119511600_
                                                        _hd1119611604_
                                                        _tl1119711607_
                                                        ___splice3778437785_
                                                        _target1120811540_
                                                        _tl1121011543_)
                                                       (if (gx#stx-pair/null?
                                                            _hd1119611604_)
                                                           (let ((___splice3778837789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd1119611604_ '0)))
                     (let ((_tl1122411408_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice3778837789_ '1)))
                           (_target1122211405_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice3778837789_ '0))))
                       (if (gx#stx-null? _tl1122411408_)
                           (___match3785637857_
                            _e1119511600_
                            _hd1119611604_
                            _tl1119711607_
                            ___splice3778837789_
                            _target1122211405_
                            _tl1122411408_)
                           (_g1119211265_))))
                   (_g1119211265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _hd1119611604_)
                                                   (let ((___splice3778837789_
                                                          (gx#syntax-split-splice
                                                           _hd1119611604_
                                                           '0)))
                                                     (let ((_tl1122411408_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3778837789_
                                                               '1)))
                                                           (_target1122211405_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3778837789_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1122411408_)
                                                           (___match3785637857_
                                                            _e1119511600_
                                                            _hd1119611604_
                                                            _tl1119711607_
                                                            ___splice3778837789_
                                                            _target1122211405_
                                                            _tl1122411408_)
                                                           (_g1119211265_))))
                                                   (_g1119211265_))))))
                                   (if (gx#stx-pair/null? _tl1119711607_)
                                       (let ((___splice3778437785_
                                              (gx#syntax-split-splice
                                               _tl1119711607_
                                               '0)))
                                         (let ((_tl1121011543_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice3778437785_
                                                   '1)))
                                               (_target1120811540_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice3778437785_
                                                   '0))))
                                           (if (gx#stx-null? _tl1121011543_)
                                               (___match3784237843_
                                                _e1119511600_
                                                _hd1119611604_
                                                _tl1119711607_
                                                ___splice3778437785_
                                                _target1120811540_
                                                _tl1121011543_)
                                               (if (gx#stx-pair/null?
                                                    _hd1119611604_)
                                                   (let ((___splice3778837789_
                                                          (gx#syntax-split-splice
                                                           _hd1119611604_
                                                           '0)))
                                                     (let ((_tl1122411408_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3778837789_
                                                               '1)))
                                                           (_target1122211405_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice3778837789_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1122411408_)
                                                           (___match3785637857_
                                                            _e1119511600_
                                                            _hd1119611604_
                                                            _tl1119711607_
                                                            ___splice3778837789_
                                                            _target1122211405_
                                                            _tl1122411408_)
                                                           (_g1119211265_))))
                                                   (_g1119211265_)))))
                                       (if (gx#stx-pair/null? _hd1119611604_)
                                           (let ((___splice3778837789_
                                                  (gx#syntax-split-splice
                                                   _hd1119611604_
                                                   '0)))
                                             (let ((_tl1122411408_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice3778837789_
                                                       '1)))
                                                   (_target1122211405_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice3778837789_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1122411408_)
                                                   (___match3785637857_
                                                    _e1119511600_
                                                    _hd1119611604_
                                                    _tl1119711607_
                                                    ___splice3778837789_
                                                    _target1122211405_
                                                    _tl1122411408_)
                                                   (_g1119211265_))))
                                           (_g1119211265_))))
                               (if (gx#stx-pair/null? _tl1119711607_)
                                   (let ((___splice3778437785_
                                          (gx#syntax-split-splice
                                           _tl1119711607_
                                           '0)))
                                     (let ((_tl1121011543_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3778437785_
                                               '1)))
                                           (_target1120811540_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3778437785_
                                               '0))))
                                       (if (gx#stx-null? _tl1121011543_)
                                           (___match3784237843_
                                            _e1119511600_
                                            _hd1119611604_
                                            _tl1119711607_
                                            ___splice3778437785_
                                            _target1120811540_
                                            _tl1121011543_)
                                           (if (gx#stx-pair/null?
                                                _hd1119611604_)
                                               (let ((___splice3778837789_
                                                      (gx#syntax-split-splice
                                                       _hd1119611604_
                                                       '0)))
                                                 (let ((_tl1122411408_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice3778837789_
                                                           '1)))
                                                       (_target1122211405_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice3778837789_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1122411408_)
                                                       (___match3785637857_
                                                        _e1119511600_
                                                        _hd1119611604_
                                                        _tl1119711607_
                                                        ___splice3778837789_
                                                        _target1122211405_
                                                        _tl1122411408_)
                                                       (_g1119211265_))))
                                               (_g1119211265_)))))
                                   (if (gx#stx-pair/null? _hd1119611604_)
                                       (let ((___splice3778837789_
                                              (gx#syntax-split-splice
                                               _hd1119611604_
                                               '0)))
                                         (let ((_tl1122411408_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice3778837789_
                                                   '1)))
                                               (_target1122211405_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice3778837789_
                                                   '0))))
                                           (if (gx#stx-null? _tl1122411408_)
                                               (___match3785637857_
                                                _e1119511600_
                                                _hd1119611604_
                                                _tl1119711607_
                                                ___splice3778837789_
                                                _target1122211405_
                                                _tl1122411408_)
                                               (_g1119211265_))))
                                       (_g1119211265_))))
                           (if (gx#stx-pair/null? _tl1119711607_)
                               (let ((___splice3778437785_
                                      (gx#syntax-split-splice
                                       _tl1119711607_
                                       '0)))
                                 (let ((_tl1121011543_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice3778437785_
                                           '1)))
                                       (_target1120811540_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice3778437785_
                                           '0))))
                                   (if (gx#stx-null? _tl1121011543_)
                                       (___match3784237843_
                                        _e1119511600_
                                        _hd1119611604_
                                        _tl1119711607_
                                        ___splice3778437785_
                                        _target1120811540_
                                        _tl1121011543_)
                                       (if (gx#stx-pair/null? _hd1119611604_)
                                           (let ((___splice3778837789_
                                                  (gx#syntax-split-splice
                                                   _hd1119611604_
                                                   '0)))
                                             (let ((_tl1122411408_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice3778837789_
                                                       '1)))
                                                   (_target1122211405_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice3778837789_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1122411408_)
                                                   (___match3785637857_
                                                    _e1119511600_
                                                    _hd1119611604_
                                                    _tl1119711607_
                                                    ___splice3778837789_
                                                    _target1122211405_
                                                    _tl1122411408_)
                                                   (_g1119211265_))))
                                           (_g1119211265_)))))
                               (if (gx#stx-pair/null? _hd1119611604_)
                                   (let ((___splice3778837789_
                                          (gx#syntax-split-splice
                                           _hd1119611604_
                                           '0)))
                                     (let ((_tl1122411408_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3778837789_
                                               '1)))
                                           (_target1122211405_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3778837789_
                                               '0))))
                                       (if (gx#stx-null? _tl1122411408_)
                                           (___match3785637857_
                                            _e1119511600_
                                            _hd1119611604_
                                            _tl1119711607_
                                            ___splice3778837789_
                                            _target1122211405_
                                            _tl1122411408_)
                                           (_g1119211265_))))
                                   (_g1119211265_))))))
                   (if (gx#stx-pair/null? _tl1119711607_)
                       (let ((___splice3778437785_
                              (gx#syntax-split-splice _tl1119711607_ '0)))
                         (let ((_tl1121011543_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice3778437785_ '1)))
                               (_target1120811540_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice3778437785_ '0))))
                           (if (gx#stx-null? _tl1121011543_)
                               (___match3784237843_
                                _e1119511600_
                                _hd1119611604_
                                _tl1119711607_
                                ___splice3778437785_
                                _target1120811540_
                                _tl1121011543_)
                               (if (gx#stx-pair/null? _hd1119611604_)
                                   (let ((___splice3778837789_
                                          (gx#syntax-split-splice
                                           _hd1119611604_
                                           '0)))
                                     (let ((_tl1122411408_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3778837789_
                                               '1)))
                                           (_target1122211405_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice3778837789_
                                               '0))))
                                       (if (gx#stx-null? _tl1122411408_)
                                           (___match3785637857_
                                            _e1119511600_
                                            _hd1119611604_
                                            _tl1119711607_
                                            ___splice3778837789_
                                            _target1122211405_
                                            _tl1122411408_)
                                           (_g1119211265_))))
                                   (_g1119211265_)))))
                       (if (gx#stx-pair/null? _hd1119611604_)
                           (let ((___splice3778837789_
                                  (gx#syntax-split-splice _hd1119611604_ '0)))
                             (let ((_tl1122411408_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice3778837789_ '1)))
                                   (_target1122211405_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice3778837789_ '0))))
                               (if (gx#stx-null? _tl1122411408_)
                                   (___match3785637857_
                                    _e1119511600_
                                    _hd1119611604_
                                    _tl1119711607_
                                    ___splice3778837789_
                                    _target1122211405_
                                    _tl1122411408_)
                                   (_g1119211265_))))
                           (_g1119211265_))))
               (if (gx#stx-pair/null? _hd1119611604_)
                   (let ((___splice3778837789_
                          (gx#syntax-split-splice _hd1119611604_ '0)))
                     (let ((_tl1122411408_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice3778837789_ '1)))
                           (_target1122211405_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice3778837789_ '0))))
                       (if (gx#stx-null? _tl1122411408_)
                           (___match3785637857_
                            _e1119511600_
                            _hd1119611604_
                            _tl1119711607_
                            ___splice3778837789_
                            _target1122211405_
                            _tl1122411408_)
                           (_g1119211265_))))
                   (_g1119211265_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1119611604_)
                                                       (let ((___splice3778837789_
                                                              (gx#syntax-split-splice
                                                               _hd1119611604_
                                                               '0)))
                                                         (let ((_tl1122411408_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice3778837789_ '1)))
                       (_target1122211405_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice3778837789_ '0))))
                   (if (gx#stx-null? _tl1122411408_)
                       (___match3785637857_
                        _e1119511600_
                        _hd1119611604_
                        _tl1119711607_
                        ___splice3778837789_
                        _target1122211405_
                        _tl1122411408_)
                       (_g1119211265_))))
               (_g1119211265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1119211265_)))))))
                              (___kont3787837879_
                               (lambda ()
                                 (_check-duplicate-datums8653_ _datums11123_)
                                 (values (reverse _datums11123_)
                                         (reverse _dispatch11124_)
                                         (let ((_$e11151_ _default11125_))
                                           (if _$e11151_
                                               _$e11151_
                                               '#!void))))))
                          (let ((_g1112711155_
                                 (lambda ()
                                   (if (gx#stx-null? ___stx3787337874_)
                                       (___kont3787837879_)
                                       (_g1112811140_)))))
                            (if (gx#stx-pair? ___stx3787337874_)
                                (let ((_e1113211162_
                                       (gx#syntax-e ___stx3787337874_)))
                                  (let ((_tl1113411169_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1113211162_)))
                                        (_hd1113311166_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1113211162_))))
                                    (___kont3787637877_
                                     _tl1113411169_
                                     _hd1113311166_)))
                                (_g1112711155_))))))))
                 (_check-duplicate-datums8653_
                  (lambda (_datums11102_)
                    (let ((_ht11105_ (make-hash-table)))
                      (for-each
                       (lambda (_lst11108_)
                         (for-each
                          (lambda (_datum11111_)
                            (if (hash-get _ht11105_ _datum11111_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx8648_
                                 _datum11111_)
                                (hash-put! _ht11105_ _datum11111_ '#t)))
                          _lst11108_))
                       _datums11102_))))
                 (_count-datums8654_
                  (lambda (_datums11095_)
                    (foldl (lambda (_lst11098_ _r11100_)
                             (+ (length _lst11098_) _r11100_))
                           '0
                           _datums11095_)))
                 (_symbolic-datums?8655_
                  (lambda (_datums11089_)
                    (andmap (lambda (_lst11092_) (andmap symbol? _lst11092_))
                            _datums11089_)))
                 (_char-datums?8656_
                  (lambda (_datums11083_)
                    (andmap (lambda (_lst11086_) (andmap char? _lst11086_))
                            _datums11083_)))
                 (_fixnum-datums?8657_
                  (lambda (_datums11077_)
                    (andmap (lambda (_lst11080_) (andmap fixnum? _lst11080_))
                            _datums11077_)))
                 (_eq-datums?8658_
                  (lambda (_datums11060_)
                    (andmap (lambda (_lst11063_)
                              (andmap (lambda (_x11066_)
                                        (let ((_$e11069_ (symbol? _x11066_)))
                                          (if _$e11069_
                                              _$e11069_
                                              (let ((_$e11073_
                                                     (keyword? _x11066_)))
                                                (if _$e11073_
                                                    _$e11073_
                                                    (immediate? _x11066_))))))
                                      _lst11063_))
                            _datums11060_)))
                 (_generate-simple-case8659_
                  (lambda (_e10824_
                           _datums10826_
                           _dispatch10827_
                           _default10828_)
                    (let* ((_g1083010838_
                            (lambda (_g1083110834_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1083110834_)))
                           (_g1082911056_
                            (lambda (_g1083110842_)
                              ((lambda (_L10845_)
                                 (let ()
                                   (let _recur10857_ ((_datums10860_
                                                       _datums10826_)
                                                      (_dispatch10862_
                                                       _dispatch10827_))
                                     (let* ((___stx3789137892_ _datums10860_)
                                            (_g1086510886_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx3789137892_))))
                                       (let ((___kont3789437895_
                                              (lambda (_L10944_ _L10946_)
                                                (let* ((_g1096610978_
                                                        (lambda (_g1096710974_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1096710974_)))
                                                       (_g1096511048_
                                                        (lambda (_g1096710982_)
                                                          (if (gx#stx-pair?
                                                               _g1096710982_)
                                                              (let ((_e1097010985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g1096710982_)))
                        (let ((_hd1097110989_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1097010985_)))
                              (_tl1097210992_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1097010985_))))
                          ((lambda (_L10995_ _L10997_)
                             (let* ((_g1100911017_
                                     (lambda (_g1101011013_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1101011013_)))
                                    (_g1100811044_
                                     (lambda (_g1101011021_)
                                       ((lambda (_L11024_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'or)
                                                              (foldr (lambda (_g1103511038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1103611041_)
                               (cons (cons (gx#datum->syntax '#f '~case-test)
                                           (cons _g1103511038_
                                                 (cons _L10845_ '())))
                                     _g1103611041_))
                             '()
                             _L10946_))
                (cons _L10997_ (cons _L11024_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g1101011021_))))
                               (_g1100811044_
                                (_recur10857_ _L10944_ _L10995_))))
                           _tl1097210992_
                           _hd1097110989_)))
                      (_g1096610978_ _g1096710982_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1096511048_
                                                   _dispatch10862_))))
                                             (___kont3789837899_
                                              (lambda () _default10828_)))
                                         (let ((___match3791437915_
                                                (lambda (_e1086910904_
                                                         _hd1087010908_
                                                         _tl1087110911_
                                                         ___splice3789637897_
                                                         _target1087210914_
                                                         _tl1087410917_)
                                                  (letrec ((_loop1087510920_
                                                            (lambda (_hd1087310924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _datum1087910927_)
                      (if (gx#stx-pair? _hd1087310924_)
                          (let ((_e1087610930_ (gx#syntax-e _hd1087310924_)))
                            (let ((_lp-tl1087810937_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1087610930_)))
                                  (_lp-hd1087710934_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1087610930_))))
                              (_loop1087510920_
                               _lp-tl1087810937_
                               (cons _lp-hd1087710934_ _datum1087910927_))))
                          (let ((_datum1088010940_
                                 (reverse _datum1087910927_)))
                            (___kont3789437895_
                             _tl1087110911_
                             _datum1088010940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1087510920_
                                                     _target1087210914_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx3789137892_)
                                               (let ((_e1086910904_
                                                      (gx#syntax-e
                                                       ___stx3789137892_)))
                                                 (let ((_tl1087110911_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1086910904_)))
                                                       (_hd1087010908_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1086910904_))))
                                                   (if (gx#stx-pair/null?
                                                        _hd1087010908_)
                                                       (let ((___splice3789637897_
                                                              (gx#syntax-split-splice
                                                               _hd1087010908_
                                                               '0)))
                                                         (let ((_tl1087410917_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice3789637897_ '1)))
                       (_target1087210914_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice3789637897_ '0))))
                   (if (gx#stx-null? _tl1087410917_)
                       (___match3791437915_
                        _e1086910904_
                        _hd1087010908_
                        _tl1087110911_
                        ___splice3789637897_
                        _target1087210914_
                        _tl1087410917_)
                       (___kont3789837899_))))
               (___kont3789837899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont3789837899_))))))))
                               _g1083110842_))))
                      (_g1082911056_ _e10824_))))
                 (_datum-dispatch-index8660_
                  (lambda (_datums10696_)
                    (let _lp10699_ ((_rest10702_ _datums10696_)
                                    (_ix10704_ '0)
                                    (_r10705_ '()))
                      (let* ((___stx3791737918_ _rest10702_)
                             (_g1070810729_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3791737918_))))
                        (let ((___kont3792037921_
                               (lambda (_L10787_ _L10789_)
                                 (_lp10699_
                                  _L10787_
                                  (fx1+ _ix10704_)
                                  (foldl (lambda (_x10808_ _r10810_)
                                           (cons (cons _x10808_ _ix10704_)
                                                 _r10810_))
                                         _r10705_
                                         (foldr (lambda (_g1081110814_
                                                         _g1081210817_)
                                                  (cons _g1081110814_
                                                        _g1081210817_))
                                                '()
                                                _L10789_)))))
                              (___kont3792437925_ (lambda () _r10705_)))
                          (let ((___match3794037941_
                                 (lambda (_e1071210747_
                                          _hd1071310751_
                                          _tl1071410754_
                                          ___splice3792237923_
                                          _target1071510757_
                                          _tl1071710760_)
                                   (letrec ((_loop1071810763_
                                             (lambda (_hd1071610767_
                                                      _datum1072210770_)
                                               (if (gx#stx-pair?
                                                    _hd1071610767_)
                                                   (let ((_e1071910773_
                                                          (gx#syntax-e
                                                           _hd1071610767_)))
                                                     (let ((_lp-tl1072110780_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1071910773_)))
                                                           (_lp-hd1072010777_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1071910773_))))
                                                       (_loop1071810763_
                                                        _lp-tl1072110780_
                                                        (cons _lp-hd1072010777_
                                                              _datum1072210770_))))
                                                   (let ((_datum1072310783_
                                                          (reverse _datum1072210770_)))
                                                     (___kont3792037921_
                                                      _tl1071410754_
                                                      _datum1072310783_))))))
                                     (_loop1071810763_
                                      _target1071510757_
                                      '())))))
                            (if (gx#stx-pair? ___stx3791737918_)
                                (let ((_e1071210747_
                                       (gx#syntax-e ___stx3791737918_)))
                                  (let ((_tl1071410754_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1071210747_)))
                                        (_hd1071310751_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1071210747_))))
                                    (if (gx#stx-pair/null? _hd1071310751_)
                                        (let ((___splice3792237923_
                                               (gx#syntax-split-splice
                                                _hd1071310751_
                                                '0)))
                                          (let ((_tl1071710760_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3792237923_
                                                    '1)))
                                                (_target1071510757_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3792237923_
                                                    '0))))
                                            (if (gx#stx-null? _tl1071710760_)
                                                (___match3794037941_
                                                 _e1071210747_
                                                 _hd1071310751_
                                                 _tl1071410754_
                                                 ___splice3792237923_
                                                 _target1071510757_
                                                 _tl1071710760_)
                                                (___kont3792437925_))))
                                        (___kont3792437925_))))
                                (___kont3792437925_))))))))
                 (_duplicate-indexes?8661_
                  (lambda (_xs10677_)
                    (let ((_ht10680_ (make-hash-table-eq)))
                      (let _lp10683_ ((_rest10686_ _xs10677_))
                        (if (pair? _rest10686_)
                            (let* ((_ix10689_ (car _rest10686_))
                                   (_$e10692_ (hash-get _ht10680_ _ix10689_)))
                              (if _$e10692_
                                  _$e10692_
                                  (begin
                                    (hash-put! _ht10680_ _ix10689_ '#t)
                                    (_lp10683_ (cdr _rest10686_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table8662_
                  (lambda (_indexes10646_ _hash-e10648_)
                    (let _lp10650_ ((_len10653_
                                     (* '2 (length _indexes10646_))))
                      (let* ((_hs10659_
                              (map (lambda (_x10656_)
                                     (_hash-e10648_ (car _x10656_)))
                                   _indexes10646_))
                             (_xs10665_
                              (map (lambda (_h10662_)
                                     (fxmodulo _h10662_ _len10653_))
                                   _hs10659_)))
                        (if (_duplicate-indexes?8661_ _xs10665_)
                            (if (< _len10653_ '131072)
                                (_lp10650_ (quotient (fx* _len10653_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx8648_
                                 _indexes10646_))
                            (let ((_tab10670_ (make-vector _len10653_ '#f)))
                              (for-each
                               (lambda (_entry10673_ _x10675_)
                                 (vector-set!
                                  _tab10670_
                                  _x10675_
                                  _entry10673_))
                               _indexes10646_
                               _xs10665_)
                              _tab10670_))))))
                 (_generate-symbolic-dispatch8663_
                  (lambda (_e10249_
                           _datums10251_
                           _dispatch10252_
                           _default10253_)
                    (let* ((_indexes10255_
                            (_datum-dispatch-index8660_ _datums10251_))
                           (_tab10258_
                            (_generate-hash-dispatch-table8662_
                             _indexes10255_
                             symbol-hash)))
                      (if (= (length _dispatch10252_) '1)
                          (let* ((_tab10266_
                                  (vector-map
                                   (lambda (_x10263_)
                                     (if _x10263_ (car _x10263_) '#f))
                                   _tab10258_))
                                 (_g1026910307_
                                  (lambda (_g1027010303_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1027010303_)))
                                 (_g1026810438_
                                  (lambda (_g1027010311_)
                                    (if (gx#stx-pair? _g1027010311_)
                                        (let ((_e1027810314_
                                               (gx#syntax-e _g1027010311_)))
                                          (let ((_hd1027910318_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1027810314_)))
                                                (_tl1028010321_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1027810314_))))
                                            (if (gx#stx-pair? _tl1028010321_)
                                                (let ((_e1028110324_
                                                       (gx#syntax-e
                                                        _tl1028010321_)))
                                                  (let ((_hd1028210328_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1028110324_)))
                                                        (_tl1028310331_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1028110324_))))
                                                    (if (gx#stx-pair?
                                                         _tl1028310331_)
                                                        (let ((_e1028410334_
                                                               (gx#syntax-e
                                                                _tl1028310331_)))
                                                          (let ((_hd1028510338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1028410334_)))
                        (_tl1028610341_
                         (let () (declare (not safe)) (##cdr _e1028410334_))))
                    (if (gx#stx-pair? _tl1028610341_)
                        (let ((_e1028710344_ (gx#syntax-e _tl1028610341_)))
                          (let ((_hd1028810348_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1028710344_)))
                                (_tl1028910351_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1028710344_))))
                            (if (gx#stx-pair? _hd1028810348_)
                                (let ((_e1029010354_
                                       (gx#syntax-e _hd1028810348_)))
                                  (let ((_hd1029110358_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1029010354_)))
                                        (_tl1029210361_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1029010354_))))
                                    (if (gx#stx-null? _tl1029210361_)
                                        (if (gx#stx-pair? _tl1028910351_)
                                            (let ((_e1029310364_
                                                   (gx#syntax-e
                                                    _tl1028910351_)))
                                              (let ((_hd1029410368_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1029310364_)))
                                                    (_tl1029510371_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1029310364_))))
                                                (if (gx#stx-pair?
                                                     _tl1029510371_)
                                                    (let ((_e1029610374_
                                                           (gx#syntax-e
                                                            _tl1029510371_)))
                                                      (let ((_hd1029710378_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1029610374_)))
                    (_tl1029810381_
                     (let () (declare (not safe)) (##cdr _e1029610374_))))
                (if (gx#stx-pair? _tl1029810381_)
                    (let ((_e1029910384_ (gx#syntax-e _tl1029810381_)))
                      (let ((_hd1030010388_
                             (let ()
                               (declare (not safe))
                               (##car _e1029910384_)))
                            (_tl1030110391_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1029910384_))))
                        (if (gx#stx-null? _tl1030110391_)
                            ((lambda (_L10394_
                                      _L10396_
                                      _L10397_
                                      _L10398_
                                      _L10399_
                                      _L10400_
                                      _L10401_)
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L10400_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '() (cons _L10397_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L10399_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L10396_ '()))
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
                             (cons _L10401_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let*)
                                   (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##symbol-hash)
                         (cons _L10401_ '()))
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
                                     (cons _L10394_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'q)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _L10399_
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
                         (cons (gx#datum->syntax '#f 'q) (cons _L10401_ '())))
                   (cons _L10398_ (cons (cons _L10400_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons _L10400_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))
                             _hd1030010388_
                             _hd1029710378_
                             _hd1029410368_
                             _hd1029110358_
                             _hd1028510338_
                             _hd1028210328_
                             _hd1027910318_)
                            (_g1026910307_ _g1027010311_))))
                    (_g1026910307_ _g1027010311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1026910307_
                                                     _g1027010311_))))
                                            (_g1026910307_ _g1027010311_))
                                        (_g1026910307_ _g1027010311_))))
                                (_g1026910307_ _g1027010311_))))
                        (_g1026910307_ _g1027010311_))))
                (_g1026910307_ _g1027010311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1026910307_
                                                 _g1027010311_))))
                                        (_g1026910307_ _g1027010311_)))))
                            (_g1026810438_
                             (list _e10249_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10252_
                                   _default10253_
                                   _tab10266_
                                   (vector-length _tab10266_))))
                          (let* ((_g1044210486_
                                  (lambda (_g1044310482_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1044310482_)))
                                 (_g1044110642_
                                  (lambda (_g1044310490_)
                                    (if (gx#stx-pair? _g1044310490_)
                                        (let ((_e1045110493_
                                               (gx#syntax-e _g1044310490_)))
                                          (let ((_hd1045210497_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1045110493_)))
                                                (_tl1045310500_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1045110493_))))
                                            (if (gx#stx-pair? _tl1045310500_)
                                                (let ((_e1045410503_
                                                       (gx#syntax-e
                                                        _tl1045310500_)))
                                                  (let ((_hd1045510507_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1045410503_)))
                                                        (_tl1045610510_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1045410503_))))
                                                    (if (gx#stx-pair?
                                                         _tl1045610510_)
                                                        (let ((_e1045710513_
                                                               (gx#syntax-e
                                                                _tl1045610510_)))
                                                          (let ((_hd1045810517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1045710513_)))
                        (_tl1045910520_
                         (let () (declare (not safe)) (##cdr _e1045710513_))))
                    (if (gx#stx-pair? _tl1045910520_)
                        (let ((_e1046010523_ (gx#syntax-e _tl1045910520_)))
                          (let ((_hd1046110527_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1046010523_)))
                                (_tl1046210530_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1046010523_))))
                            (if (gx#stx-pair/null? _hd1046110527_)
                                (let ((_g42178_
                                       (gx#syntax-split-splice
                                        _hd1046110527_
                                        '0)))
                                  (begin
                                    (let ((_g42179_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g42178_)
                                                 (##vector-length _g42178_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g42179_ 2)))
                                          (error "Context expects 2 values"
                                                 _g42179_)))
                                    (let ((_target1046310533_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g42178_ 0)))
                                          (_tl1046510536_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g42178_ 1))))
                                      (if (gx#stx-null? _tl1046510536_)
                                          (letrec ((_loop1046610539_
                                                    (lambda (_hd1046410543_
                                                             _dispatch1047010546_)
                                                      (if (gx#stx-pair?
                                                           _hd1046410543_)
                                                          (let ((_e1046710549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1046410543_)))
                    (let ((_lp-hd1046810553_
                           (let () (declare (not safe)) (##car _e1046710549_)))
                          (_lp-tl1046910556_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1046710549_))))
                      (_loop1046610539_
                       _lp-tl1046910556_
                       (cons _lp-hd1046810553_ _dispatch1047010546_))))
                  (let ((_dispatch1047110559_ (reverse _dispatch1047010546_)))
                    (if (gx#stx-pair? _tl1046210530_)
                        (let ((_e1047210563_ (gx#syntax-e _tl1046210530_)))
                          (let ((_hd1047310567_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1047210563_)))
                                (_tl1047410570_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1047210563_))))
                            (if (gx#stx-pair? _tl1047410570_)
                                (let ((_e1047510573_
                                       (gx#syntax-e _tl1047410570_)))
                                  (let ((_hd1047610577_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1047510573_)))
                                        (_tl1047710580_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1047510573_))))
                                    (if (gx#stx-pair? _tl1047710580_)
                                        (let ((_e1047810583_
                                               (gx#syntax-e _tl1047710580_)))
                                          (let ((_hd1047910587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1047810583_)))
                                                (_tl1048010590_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1047810583_))))
                                            (if (gx#stx-null? _tl1048010590_)
                                                ((lambda (_L10593_
                                                          _L10595_
                                                          _L10596_
                                                          _L10597_
                                                          _L10598_
                                                          _L10599_
                                                          _L10600_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L10599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons _L10596_ '())))
                                           '()))
                               (cons (cons _L10598_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L10595_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'symbol?)
                                                 (cons _L10600_ '()))
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
                                             (cons _L10600_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L10593_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L10598_
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
                             (cons _L10600_ '())))
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
                                                     (foldr (lambda (_g1063310636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1063410639_)
                      (cons _g1063310636_ _g1063410639_))
                    '()
                    _L10597_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L10599_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L10599_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10599_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1047910587_
                                                 _hd1047610577_
                                                 _hd1047310567_
                                                 _dispatch1047110559_
                                                 _hd1045810517_
                                                 _hd1045510507_
                                                 _hd1045210497_)
                                                (_g1044210486_
                                                 _g1044310490_))))
                                        (_g1044210486_ _g1044310490_))))
                                (_g1044210486_ _g1044310490_))))
                        (_g1044210486_ _g1044310490_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1046610539_
                                             _target1046310533_
                                             '()))
                                          (_g1044210486_ _g1044310490_)))))
                                (_g1044210486_ _g1044310490_))))
                        (_g1044210486_ _g1044310490_))))
                (_g1044210486_ _g1044310490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1044210486_
                                                 _g1044310490_))))
                                        (_g1044210486_ _g1044310490_)))))
                            (_g1044110642_
                             (list _e10249_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10252_
                                   _default10253_
                                   _tab10258_
                                   (vector-length _tab10258_))))))))
                 (_max-char8664_
                  (lambda (_datums10238_)
                    (foldl (lambda (_lst10241_ _r10243_)
                             (foldl (lambda (_char10245_ _r10247_)
                                      (max (char->integer _char10245_)
                                           _r10247_))
                                    _r10243_
                                    _lst10241_))
                           '0
                           _datums10238_)))
                 (_generate-char-dispatch-table8665_
                  (lambda (_indexes10217_)
                    (let* ((_ixs10223_
                            (map (lambda (_x10220_)
                                   (char->integer (car _x10220_)))
                                 _indexes10217_))
                           (_len10226_ (fx1+ (foldl max '0 _ixs10223_)))
                           (_vec10229_ (make-vector _len10226_ '#f)))
                      (for-each
                       (lambda (_entry10234_ _x10236_)
                         (vector-set! _vec10229_ _x10236_ (cdr _entry10234_)))
                       _indexes10217_
                       _ixs10223_)
                      _vec10229_)))
                 (_simple-char-range?8666_
                  (lambda (_tab10193_)
                    (let ((_end10196_ (vector-length _tab10193_)))
                      (let _lp10199_ ((_i10202_ '0))
                        (let ((_ix10205_ (vector-ref _tab10193_ _i10202_)))
                          (if _ix10205_
                              (let _lp210208_ ((_i10211_ (fx1+ _i10202_)))
                                (if (fx< _i10211_ _end10196_)
                                    (let ((_ix*10214_
                                           (vector-ref _tab10193_ _i10211_)))
                                      (if (eq? _ix10205_ _ix*10214_)
                                          (_lp210208_ (fx1+ _i10211_))
                                          '#f))
                                    '#t))
                              (_lp10199_ (fx1+ _i10202_))))))))
                 (_char-range-start8667_
                  (lambda (_tab10184_)
                    (let _lp10187_ ((_i10190_ '0))
                      (if (vector-ref _tab10184_ _i10190_)
                          _i10190_
                          (_lp10187_ (fx1+ _i10190_))))))
                 (_generate-char-dispatch8668_
                  (lambda (_e9807_ _datums9809_ _dispatch9810_ _default9811_)
                    (if (< (_max-char8664_ _datums9809_) '128)
                        (let* ((_indexes9813_
                                (_datum-dispatch-index8660_ _datums9809_))
                               (_tab9816_
                                (_generate-char-dispatch-table8665_
                                 _indexes9813_)))
                          (if (_simple-char-range?8666_ _tab9816_)
                              (let ((_start9821_
                                     (_char-range-start8667_ _tab9816_))
                                    (_end9823_ (vector-length _tab9816_)))
                                (let* ((_g98259859_
                                        (lambda (_g98269855_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g98269855_)))
                                       (_g98249976_
                                        (lambda (_g98269863_)
                                          (if (gx#stx-pair? _g98269863_)
                                              (let ((_e98339866_
                                                     (gx#syntax-e
                                                      _g98269863_)))
                                                (let ((_hd98349870_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e98339866_)))
                                                      (_tl98359873_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e98339866_))))
                                                  (if (gx#stx-pair?
                                                       _tl98359873_)
                                                      (let ((_e98369876_
                                                             (gx#syntax-e
                                                              _tl98359873_)))
                                                        (let ((_hd98379880_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e98369876_)))
                      (_tl98389883_
                       (let () (declare (not safe)) (##cdr _e98369876_))))
                  (if (gx#stx-pair? _tl98389883_)
                      (let ((_e98399886_ (gx#syntax-e _tl98389883_)))
                        (let ((_hd98409890_
                               (let ()
                                 (declare (not safe))
                                 (##car _e98399886_)))
                              (_tl98419893_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e98399886_))))
                          (if (gx#stx-pair? _hd98409890_)
                              (let ((_e98429896_ (gx#syntax-e _hd98409890_)))
                                (let ((_hd98439900_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e98429896_)))
                                      (_tl98449903_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e98429896_))))
                                  (if (gx#stx-null? _tl98449903_)
                                      (if (gx#stx-pair? _tl98419893_)
                                          (let ((_e98459906_
                                                 (gx#syntax-e _tl98419893_)))
                                            (let ((_hd98469910_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e98459906_)))
                                                  (_tl98479913_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e98459906_))))
                                              (if (gx#stx-pair? _tl98479913_)
                                                  (let ((_e98489916_
                                                         (gx#syntax-e
                                                          _tl98479913_)))
                                                    (let ((_hd98499920_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e98489916_)))
                                                          (_tl98509923_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e98489916_))))
                                                      (if (gx#stx-pair?
                                                           _tl98509923_)
                                                          (let ((_e98519926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl98509923_)))
                    (let ((_hd98529930_
                           (let () (declare (not safe)) (##car _e98519926_)))
                          (_tl98539933_
                           (let () (declare (not safe)) (##cdr _e98519926_))))
                      (if (gx#stx-null? _tl98539933_)
                          ((lambda (_L9936_
                                    _L9938_
                                    _L9939_
                                    _L9940_
                                    _L9941_
                                    _L9942_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons _L9941_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L9939_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'char?)
                           (cons _L9942_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (gx#datum->syntax '#f 'ix)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##char->integer)
                                                         (cons _L9942_ '()))
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
                                         (cons _L9938_ '())))
                             (cons (cons (gx#datum->syntax '#f '##fx<)
                                         (cons (gx#datum->syntax '#f 'ix)
                                               (cons _L9936_ '())))
                                   '())))
                 (cons _L9940_ (cons (cons _L9941_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L9941_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd98529930_
                           _hd98499920_
                           _hd98469910_
                           _hd98439900_
                           _hd98379880_
                           _hd98349870_)
                          (_g98259859_ _g98269863_))))
                  (_g98259859_ _g98269863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g98259859_ _g98269863_))))
                                          (_g98259859_ _g98269863_))
                                      (_g98259859_ _g98269863_))))
                              (_g98259859_ _g98269863_))))
                      (_g98259859_ _g98269863_))))
              (_g98259859_ _g98269863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g98259859_ _g98269863_)))))
                                  (_g98249976_
                                   (list _e9807_
                                         (gx#genident 'default)
                                         _dispatch9810_
                                         _default9811_
                                         _start9821_
                                         _end9823_))))
                              (let* ((_g998010024_
                                      (lambda (_g998110020_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g998110020_)))
                                     (_g997910180_
                                      (lambda (_g998110028_)
                                        (if (gx#stx-pair? _g998110028_)
                                            (let ((_e998910031_
                                                   (gx#syntax-e _g998110028_)))
                                              (let ((_hd999010035_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e998910031_)))
                                                    (_tl999110038_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e998910031_))))
                                                (if (gx#stx-pair?
                                                     _tl999110038_)
                                                    (let ((_e999210041_
                                                           (gx#syntax-e
                                                            _tl999110038_)))
                                                      (let ((_hd999310045_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e999210041_)))
                    (_tl999410048_
                     (let () (declare (not safe)) (##cdr _e999210041_))))
                (if (gx#stx-pair? _tl999410048_)
                    (let ((_e999510051_ (gx#syntax-e _tl999410048_)))
                      (let ((_hd999610055_
                             (let ()
                               (declare (not safe))
                               (##car _e999510051_)))
                            (_tl999710058_
                             (let ()
                               (declare (not safe))
                               (##cdr _e999510051_))))
                        (if (gx#stx-pair? _tl999710058_)
                            (let ((_e999810061_ (gx#syntax-e _tl999710058_)))
                              (let ((_hd999910065_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e999810061_)))
                                    (_tl1000010068_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e999810061_))))
                                (if (gx#stx-pair/null? _hd999910065_)
                                    (let ((_g42180_
                                           (gx#syntax-split-splice
                                            _hd999910065_
                                            '0)))
                                      (begin
                                        (let ((_g42181_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g42180_)
                                                     (##vector-length _g42180_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g42181_ 2)))
                                              (error "Context expects 2 values"
                                                     _g42181_)))
                                        (let ((_target1000110071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42180_ 0)))
                                              (_tl1000310074_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g42180_ 1))))
                                          (if (gx#stx-null? _tl1000310074_)
                                              (letrec ((_loop1000410077_
                                                        (lambda (_hd1000210081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1000810084_)
                  (if (gx#stx-pair? _hd1000210081_)
                      (let ((_e1000510087_ (gx#syntax-e _hd1000210081_)))
                        (let ((_lp-hd1000610091_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1000510087_)))
                              (_lp-tl1000710094_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1000510087_))))
                          (_loop1000410077_
                           _lp-tl1000710094_
                           (cons _lp-hd1000610091_ _dispatch1000810084_))))
                      (let ((_dispatch1000910097_
                             (reverse _dispatch1000810084_)))
                        (if (gx#stx-pair? _tl1000010068_)
                            (let ((_e1001010101_ (gx#syntax-e _tl1000010068_)))
                              (let ((_hd1001110105_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1001010101_)))
                                    (_tl1001210108_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1001010101_))))
                                (if (gx#stx-pair? _tl1001210108_)
                                    (let ((_e1001310111_
                                           (gx#syntax-e _tl1001210108_)))
                                      (let ((_hd1001410115_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1001310111_)))
                                            (_tl1001510118_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1001310111_))))
                                        (if (gx#stx-pair? _tl1001510118_)
                                            (let ((_e1001610121_
                                                   (gx#syntax-e
                                                    _tl1001510118_)))
                                              (let ((_hd1001710125_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1001610121_)))
                                                    (_tl1001810128_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1001610121_))))
                                                (if (gx#stx-null?
                                                     _tl1001810128_)
                                                    ((lambda (_L10131_
                                                              _L10133_
                                                              _L10134_
                                                              _L10135_
                                                              _L10136_
                                                              _L10137_
                                                              _L10138_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L10137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L10134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons _L10136_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L10133_ '()))
                                                     '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'char?)
                                                     (cons _L10138_ '()))
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
                                           (cons _L10138_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f '##fx<)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ix)
                                                       (cons _L10131_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'x)
                           (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                       (cons _L10136_
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
                                                         (foldr (lambda (_g1017110174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1017210177_)
                          (cons _g1017110174_ _g1017210177_))
                        '()
                        _L10135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L10137_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10137_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L10137_ '())
                                                           '()))))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1001710125_
                                                     _hd1001410115_
                                                     _hd1001110105_
                                                     _dispatch1000910097_
                                                     _hd999610055_
                                                     _hd999310045_
                                                     _hd999010035_)
                                                    (_g998010024_
                                                     _g998110028_))))
                                            (_g998010024_ _g998110028_))))
                                    (_g998010024_ _g998110028_))))
                            (_g998010024_ _g998110028_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1000410077_
                                                 _target1000110071_
                                                 '()))
                                              (_g998010024_ _g998110028_)))))
                                    (_g998010024_ _g998110028_))))
                            (_g998010024_ _g998110028_))))
                    (_g998010024_ _g998110028_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g998010024_
                                                     _g998110028_))))
                                            (_g998010024_ _g998110028_)))))
                                (_g997910180_
                                 (list _e9807_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch9810_
                                       _default9811_
                                       _tab9816_
                                       (vector-length _tab9816_))))))
                        (_generate-char-dispatch/hash8669_
                         _e9807_
                         _datums9809_
                         _dispatch9810_
                         _default9811_))))
                 (_generate-char-dispatch/hash8669_
                  (lambda (_e9585_ _datums9587_ _dispatch9588_ _default9589_)
                    (let* ((_indexes9591_
                            (_datum-dispatch-index8660_ _datums9587_))
                           (_tab9594_
                            (_generate-hash-dispatch-table8662_
                             _indexes9591_
                             char->integer)))
                      (let* ((_g95999643_
                              (lambda (_g96009639_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g96009639_)))
                             (_g95989803_
                              (lambda (_g96009647_)
                                (if (gx#stx-pair? _g96009647_)
                                    (let ((_e96089650_
                                           (gx#syntax-e _g96009647_)))
                                      (let ((_hd96099654_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e96089650_)))
                                            (_tl96109657_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e96089650_))))
                                        (if (gx#stx-pair? _tl96109657_)
                                            (let ((_e96119660_
                                                   (gx#syntax-e _tl96109657_)))
                                              (let ((_hd96129664_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e96119660_)))
                                                    (_tl96139667_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e96119660_))))
                                                (if (gx#stx-pair? _tl96139667_)
                                                    (let ((_e96149670_
                                                           (gx#syntax-e
                                                            _tl96139667_)))
                                                      (let ((_hd96159674_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e96149670_)))
                    (_tl96169677_
                     (let () (declare (not safe)) (##cdr _e96149670_))))
                (if (gx#stx-pair? _tl96169677_)
                    (let ((_e96179680_ (gx#syntax-e _tl96169677_)))
                      (let ((_hd96189684_
                             (let () (declare (not safe)) (##car _e96179680_)))
                            (_tl96199687_
                             (let ()
                               (declare (not safe))
                               (##cdr _e96179680_))))
                        (if (gx#stx-pair/null? _hd96189684_)
                            (let ((_g42182_
                                   (gx#syntax-split-splice _hd96189684_ '0)))
                              (begin
                                (let ((_g42183_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g42182_)
                                             (##vector-length _g42182_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g42183_ 2)))
                                      (error "Context expects 2 values"
                                             _g42183_)))
                                (let ((_target96209690_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42182_ 0)))
                                      (_tl96229693_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42182_ 1))))
                                  (if (gx#stx-null? _tl96229693_)
                                      (letrec ((_loop96239696_
                                                (lambda (_hd96219700_
                                                         _dispatch96279703_)
                                                  (if (gx#stx-pair?
                                                       _hd96219700_)
                                                      (let ((_e96249706_
                                                             (gx#syntax-e
                                                              _hd96219700_)))
                                                        (let ((_lp-hd96259710_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e96249706_)))
                      (_lp-tl96269713_
                       (let () (declare (not safe)) (##cdr _e96249706_))))
                  (_loop96239696_
                   _lp-tl96269713_
                   (cons _lp-hd96259710_ _dispatch96279703_))))
              (let ((_dispatch96289716_ (reverse _dispatch96279703_)))
                (if (gx#stx-pair? _tl96199687_)
                    (let ((_e96299720_ (gx#syntax-e _tl96199687_)))
                      (let ((_hd96309724_
                             (let () (declare (not safe)) (##car _e96299720_)))
                            (_tl96319727_
                             (let ()
                               (declare (not safe))
                               (##cdr _e96299720_))))
                        (if (gx#stx-pair? _tl96319727_)
                            (let ((_e96329730_ (gx#syntax-e _tl96319727_)))
                              (let ((_hd96339734_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e96329730_)))
                                    (_tl96349737_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e96329730_))))
                                (if (gx#stx-pair? _tl96349737_)
                                    (let ((_e96359740_
                                           (gx#syntax-e _tl96349737_)))
                                      (let ((_hd96369744_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e96359740_)))
                                            (_tl96379747_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e96359740_))))
                                        (if (gx#stx-null? _tl96379747_)
                                            ((lambda (_L9750_
                                                      _L9752_
                                                      _L9753_
                                                      _L9754_
                                                      _L9755_
                                                      _L9756_
                                                      _L9757_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L9756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '() (cons _L9753_ '())))
                                       '()))
                           (cons (cons _L9755_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L9752_ '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'char?)
                                             (cons _L9757_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '##char->integer)
                                         (cons _L9757_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _L9750_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _L9755_
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
                         (cons _L9757_ '())))
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
                                                 (foldr (lambda (_g97949797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97959800_)
                  (cons _g97949797_ _g97959800_))
                '()
                _L9754_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _L9756_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _L9756_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9756_ '()) '()))))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd96369744_
                                             _hd96339734_
                                             _hd96309724_
                                             _dispatch96289716_
                                             _hd96159674_
                                             _hd96129664_
                                             _hd96099654_)
                                            (_g95999643_ _g96009647_))))
                                    (_g95999643_ _g96009647_))))
                            (_g95999643_ _g96009647_))))
                    (_g95999643_ _g96009647_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop96239696_ _target96209690_ '()))
                                      (_g95999643_ _g96009647_)))))
                            (_g95999643_ _g96009647_))))
                    (_g95999643_ _g96009647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95999643_
                                                     _g96009647_))))
                                            (_g95999643_ _g96009647_))))
                                    (_g95999643_ _g96009647_)))))
                        (_g95989803_
                         (list _e9585_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9588_
                               _default9589_
                               _tab9594_
                               (vector-length _tab9594_)))))))
                 (_min-fixnum8670_
                  (lambda (_datums9578_)
                    (foldl (lambda (_lst9581_ _r9583_)
                             (foldl min _r9583_ _lst9581_))
                           ##max-fixnum
                           _datums9578_)))
                 (_max-fixnum8671_
                  (lambda (_datums9571_)
                    (foldl (lambda (_lst9574_ _r9576_)
                             (foldl max _r9576_ _lst9574_))
                           ##min-fixnum
                           _datums9571_)))
                 (_generate-fixnum-dispatch-table8672_
                  (lambda (_indexes9553_)
                    (let* ((_ixs9556_ (map car _indexes9553_))
                           (_len9559_ (fx1+ (foldl max '0 _ixs9556_)))
                           (_vec9562_ (make-vector _len9559_ '#f)))
                      (for-each
                       (lambda (_entry9567_ _x9569_)
                         (vector-set! _vec9562_ _x9569_ (cdr _entry9567_)))
                       _indexes9553_
                       _ixs9556_)
                      _vec9562_)))
                 (_generate-fixnum-dispatch8673_
                  (lambda (_e9287_ _datums9289_ _dispatch9290_ _default9291_)
                    (if (and (>= (_min-fixnum8670_ _datums9289_) '0)
                             (< (_max-fixnum8671_ _datums9289_) '1024))
                        (let* ((_indexes9293_
                                (_datum-dispatch-index8660_ _datums9289_))
                               (_tab9296_
                                (_generate-fixnum-dispatch-table8672_
                                 _indexes9293_))
                               (_dense?9299_
                                (andmap values (vector->list _tab9296_))))
                          (let* ((_g93049348_
                                  (lambda (_g93059344_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g93059344_)))
                                 (_g93039549_
                                  (lambda (_g93059352_)
                                    (if (gx#stx-pair? _g93059352_)
                                        (let ((_e93139355_
                                               (gx#syntax-e _g93059352_)))
                                          (let ((_hd93149359_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e93139355_)))
                                                (_tl93159362_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e93139355_))))
                                            (if (gx#stx-pair? _tl93159362_)
                                                (let ((_e93169365_
                                                       (gx#syntax-e
                                                        _tl93159362_)))
                                                  (let ((_hd93179369_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e93169365_)))
                                                        (_tl93189372_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e93169365_))))
                                                    (if (gx#stx-pair?
                                                         _tl93189372_)
                                                        (let ((_e93199375_
                                                               (gx#syntax-e
                                                                _tl93189372_)))
                                                          (let ((_hd93209379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e93199375_)))
                        (_tl93219382_
                         (let () (declare (not safe)) (##cdr _e93199375_))))
                    (if (gx#stx-pair? _tl93219382_)
                        (let ((_e93229385_ (gx#syntax-e _tl93219382_)))
                          (let ((_hd93239389_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e93229385_)))
                                (_tl93249392_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e93229385_))))
                            (if (gx#stx-pair/null? _hd93239389_)
                                (let ((_g42184_
                                       (gx#syntax-split-splice
                                        _hd93239389_
                                        '0)))
                                  (begin
                                    (let ((_g42185_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g42184_)
                                                 (##vector-length _g42184_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g42185_ 2)))
                                          (error "Context expects 2 values"
                                                 _g42185_)))
                                    (let ((_target93259395_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g42184_ 0)))
                                          (_tl93279398_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g42184_ 1))))
                                      (if (gx#stx-null? _tl93279398_)
                                          (letrec ((_loop93289401_
                                                    (lambda (_hd93269405_
                                                             _dispatch93329408_)
                                                      (if (gx#stx-pair?
                                                           _hd93269405_)
                                                          (let ((_e93299411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd93269405_)))
                    (let ((_lp-hd93309415_
                           (let () (declare (not safe)) (##car _e93299411_)))
                          (_lp-tl93319418_
                           (let () (declare (not safe)) (##cdr _e93299411_))))
                      (_loop93289401_
                       _lp-tl93319418_
                       (cons _lp-hd93309415_ _dispatch93329408_))))
                  (let ((_dispatch93339421_ (reverse _dispatch93329408_)))
                    (if (gx#stx-pair? _tl93249392_)
                        (let ((_e93349425_ (gx#syntax-e _tl93249392_)))
                          (let ((_hd93359429_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e93349425_)))
                                (_tl93369432_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e93349425_))))
                            (if (gx#stx-pair? _tl93369432_)
                                (let ((_e93379435_ (gx#syntax-e _tl93369432_)))
                                  (let ((_hd93389439_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e93379435_)))
                                        (_tl93399442_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e93379435_))))
                                    (if (gx#stx-pair? _tl93399442_)
                                        (let ((_e93409445_
                                               (gx#syntax-e _tl93399442_)))
                                          (let ((_hd93419449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e93409445_)))
                                                (_tl93429452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e93409445_))))
                                            (if (gx#stx-null? _tl93429452_)
                                                ((lambda (_L9455_
                                                          _L9457_
                                                          _L9458_
                                                          _L9459_
                                                          _L9460_
                                                          _L9461_
                                                          _L9462_)
                                                   (let ()
                                                     (let* ((_g95019509_
                                                             (lambda (_g95029505_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g95029505_)))
                                                            (_g95009529_
                                                             (lambda (_g95029513_)
                                                               ((lambda (_L9516_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _L9461_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons '() (cons _L9458_ '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _L9460_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L9457_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'fixnum?)
                        (cons _L9462_ '()))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f 'and)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx>=)
                                                      (cons _L9462_
                                                            (cons '0 '())))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##fx<)
                                                            (cons _L9462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L9455_ '())))
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
                                (cons _L9460_ (cons _L9462_ '())))
                          '()))
              (cons _L9516_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L9461_ '()) '()))))
                        (cons (cons _L9461_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _g95029513_))))
               (_g95009529_
                (if _dense?9299_
                    (cons (gx#datum->syntax '#f '~case-dispatch)
                          (cons (gx#datum->syntax '#f 'x)
                                (foldr (lambda (_g95329535_ _g95339538_)
                                         (cons _g95329535_ _g95339538_))
                                       '()
                                       _L9459_)))
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (gx#datum->syntax '#f 'x)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '~case-dispatch)
                                            (cons (gx#datum->syntax '#f 'x)
                                                  (foldr (lambda (_g95409543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g95419546_)
                   (cons _g95409543_ _g95419546_))
                 '()
                 _L9459_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons _L9461_ '()) '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd93419449_
                                                 _hd93389439_
                                                 _hd93359429_
                                                 _dispatch93339421_
                                                 _hd93209379_
                                                 _hd93179369_
                                                 _hd93149359_)
                                                (_g93049348_ _g93059352_))))
                                        (_g93049348_ _g93059352_))))
                                (_g93049348_ _g93059352_))))
                        (_g93049348_ _g93059352_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop93289401_
                                             _target93259395_
                                             '()))
                                          (_g93049348_ _g93059352_)))))
                                (_g93049348_ _g93059352_))))
                        (_g93049348_ _g93059352_))))
                (_g93049348_ _g93059352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g93049348_ _g93059352_))))
                                        (_g93049348_ _g93059352_)))))
                            (_g93039549_
                             (list _e9287_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch9290_
                                   _default9291_
                                   _tab9296_
                                   (vector-length _tab9296_)))))
                        (_generate-fixnum-dispatch/hash8674_
                         _e9287_
                         _datums9289_
                         _dispatch9290_
                         _default9291_))))
                 (_generate-fixnum-dispatch/hash8674_
                  (lambda (_e9065_ _datums9067_ _dispatch9068_ _default9069_)
                    (let* ((_indexes9071_
                            (_datum-dispatch-index8660_ _datums9067_))
                           (_tab9074_
                            (_generate-hash-dispatch-table8662_
                             _indexes9071_
                             values)))
                      (let* ((_g90799123_
                              (lambda (_g90809119_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g90809119_)))
                             (_g90789283_
                              (lambda (_g90809127_)
                                (if (gx#stx-pair? _g90809127_)
                                    (let ((_e90889130_
                                           (gx#syntax-e _g90809127_)))
                                      (let ((_hd90899134_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e90889130_)))
                                            (_tl90909137_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e90889130_))))
                                        (if (gx#stx-pair? _tl90909137_)
                                            (let ((_e90919140_
                                                   (gx#syntax-e _tl90909137_)))
                                              (let ((_hd90929144_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e90919140_)))
                                                    (_tl90939147_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e90919140_))))
                                                (if (gx#stx-pair? _tl90939147_)
                                                    (let ((_e90949150_
                                                           (gx#syntax-e
                                                            _tl90939147_)))
                                                      (let ((_hd90959154_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e90949150_)))
                    (_tl90969157_
                     (let () (declare (not safe)) (##cdr _e90949150_))))
                (if (gx#stx-pair? _tl90969157_)
                    (let ((_e90979160_ (gx#syntax-e _tl90969157_)))
                      (let ((_hd90989164_
                             (let () (declare (not safe)) (##car _e90979160_)))
                            (_tl90999167_
                             (let ()
                               (declare (not safe))
                               (##cdr _e90979160_))))
                        (if (gx#stx-pair/null? _hd90989164_)
                            (let ((_g42186_
                                   (gx#syntax-split-splice _hd90989164_ '0)))
                              (begin
                                (let ((_g42187_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g42186_)
                                             (##vector-length _g42186_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g42187_ 2)))
                                      (error "Context expects 2 values"
                                             _g42187_)))
                                (let ((_target91009170_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42186_ 0)))
                                      (_tl91029173_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42186_ 1))))
                                  (if (gx#stx-null? _tl91029173_)
                                      (letrec ((_loop91039176_
                                                (lambda (_hd91019180_
                                                         _dispatch91079183_)
                                                  (if (gx#stx-pair?
                                                       _hd91019180_)
                                                      (let ((_e91049186_
                                                             (gx#syntax-e
                                                              _hd91019180_)))
                                                        (let ((_lp-hd91059190_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e91049186_)))
                      (_lp-tl91069193_
                       (let () (declare (not safe)) (##cdr _e91049186_))))
                  (_loop91039176_
                   _lp-tl91069193_
                   (cons _lp-hd91059190_ _dispatch91079183_))))
              (let ((_dispatch91089196_ (reverse _dispatch91079183_)))
                (if (gx#stx-pair? _tl90999167_)
                    (let ((_e91099200_ (gx#syntax-e _tl90999167_)))
                      (let ((_hd91109204_
                             (let () (declare (not safe)) (##car _e91099200_)))
                            (_tl91119207_
                             (let ()
                               (declare (not safe))
                               (##cdr _e91099200_))))
                        (if (gx#stx-pair? _tl91119207_)
                            (let ((_e91129210_ (gx#syntax-e _tl91119207_)))
                              (let ((_hd91139214_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e91129210_)))
                                    (_tl91149217_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e91129210_))))
                                (if (gx#stx-pair? _tl91149217_)
                                    (let ((_e91159220_
                                           (gx#syntax-e _tl91149217_)))
                                      (let ((_hd91169224_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e91159220_)))
                                            (_tl91179227_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e91159220_))))
                                        (if (gx#stx-null? _tl91179227_)
                                            ((lambda (_L9230_
                                                      _L9232_
                                                      _L9233_
                                                      _L9234_
                                                      _L9235_
                                                      _L9236_
                                                      _L9237_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L9236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '() (cons _L9233_ '())))
                                       '()))
                           (cons (cons _L9235_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L9232_ '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                             (cons _L9237_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                         (cons _L9237_ (cons _L9230_ '())))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##vector-ref)
                                               (cons _L9235_
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
                         (cons _L9237_ '())))
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
                                                 (foldr (lambda (_g92749277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g92759280_)
                  (cons _g92749277_ _g92759280_))
                '()
                _L9234_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _L9236_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _L9236_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9236_ '()) '()))))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd91169224_
                                             _hd91139214_
                                             _hd91109204_
                                             _dispatch91089196_
                                             _hd90959154_
                                             _hd90929144_
                                             _hd90899134_)
                                            (_g90799123_ _g90809127_))))
                                    (_g90799123_ _g90809127_))))
                            (_g90799123_ _g90809127_))))
                    (_g90799123_ _g90809127_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop91039176_ _target91009170_ '()))
                                      (_g90799123_ _g90809127_)))))
                            (_g90799123_ _g90809127_))))
                    (_g90799123_ _g90809127_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90799123_
                                                     _g90809127_))))
                                            (_g90799123_ _g90809127_))))
                                    (_g90799123_ _g90809127_)))))
                        (_g90789283_
                         (list _e9065_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9068_
                               _default9069_
                               _tab9074_
                               (vector-length _tab9074_)))))))
                 (_generate-generic-dispatch8675_
                  (lambda (_e8801_ _datums8803_ _dispatch8804_ _default8805_)
                    (let ((_g42188_
                           (if (_eq-datums?8658_ _datums8803_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e8807_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g42188_ 0)))
                              (_hashf8809_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g42188_ 1)))
                              (_eqf8810_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g42188_ 2))))
                          (let* ((_indexes8812_
                                  (_datum-dispatch-index8660_ _datums8803_))
                                 (_tab8815_
                                  (_generate-hash-dispatch-table8662_
                                   _indexes8812_
                                   _hash-e8807_)))
                            (let* ((_g88208872_
                                    (lambda (_g88218868_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g88218868_)))
                                   (_g88199061_
                                    (lambda (_g88218876_)
                                      (if (gx#stx-pair? _g88218876_)
                                          (let ((_e88318879_
                                                 (gx#syntax-e _g88218876_)))
                                            (let ((_hd88328883_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e88318879_)))
                                                  (_tl88338886_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e88318879_))))
                                              (if (gx#stx-pair? _tl88338886_)
                                                  (let ((_e88348889_
                                                         (gx#syntax-e
                                                          _tl88338886_)))
                                                    (let ((_hd88358893_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e88348889_)))
                                                          (_tl88368896_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e88348889_))))
                                                      (if (gx#stx-pair?
                                                           _tl88368896_)
                                                          (let ((_e88378899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl88368896_)))
                    (let ((_hd88388903_
                           (let () (declare (not safe)) (##car _e88378899_)))
                          (_tl88398906_
                           (let () (declare (not safe)) (##cdr _e88378899_))))
                      (if (gx#stx-pair? _tl88398906_)
                          (let ((_e88408909_ (gx#syntax-e _tl88398906_)))
                            (let ((_hd88418913_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e88408909_)))
                                  (_tl88428916_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e88408909_))))
                              (if (gx#stx-pair/null? _hd88418913_)
                                  (let ((_g42189_
                                         (gx#syntax-split-splice
                                          _hd88418913_
                                          '0)))
                                    (begin
                                      (let ((_g42190_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g42189_)
                                                   (##vector-length _g42189_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g42190_ 2)))
                                            (error "Context expects 2 values"
                                                   _g42190_)))
                                      (let ((_target88438919_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42189_ 0)))
                                            (_tl88458922_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42189_ 1))))
                                        (if (gx#stx-null? _tl88458922_)
                                            (letrec ((_loop88468925_
                                                      (lambda (_hd88448929_
                                                               _dispatch88508932_)
                                                        (if (gx#stx-pair?
                                                             _hd88448929_)
                                                            (let ((_e88478935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd88448929_)))
                      (let ((_lp-hd88488939_
                             (let () (declare (not safe)) (##car _e88478935_)))
                            (_lp-tl88498942_
                             (let ()
                               (declare (not safe))
                               (##cdr _e88478935_))))
                        (_loop88468925_
                         _lp-tl88498942_
                         (cons _lp-hd88488939_ _dispatch88508932_))))
                    (let ((_dispatch88518945_ (reverse _dispatch88508932_)))
                      (if (gx#stx-pair? _tl88428916_)
                          (let ((_e88528949_ (gx#syntax-e _tl88428916_)))
                            (let ((_hd88538953_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e88528949_)))
                                  (_tl88548956_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e88528949_))))
                              (if (gx#stx-pair? _tl88548956_)
                                  (let ((_e88558959_
                                         (gx#syntax-e _tl88548956_)))
                                    (let ((_hd88568963_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e88558959_)))
                                          (_tl88578966_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e88558959_))))
                                      (if (gx#stx-pair? _tl88578966_)
                                          (let ((_e88588969_
                                                 (gx#syntax-e _tl88578966_)))
                                            (let ((_hd88598973_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e88588969_)))
                                                  (_tl88608976_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e88588969_))))
                                              (if (gx#stx-pair? _tl88608976_)
                                                  (let ((_e88618979_
                                                         (gx#syntax-e
                                                          _tl88608976_)))
                                                    (let ((_hd88628983_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e88618979_)))
                                                          (_tl88638986_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e88618979_))))
                                                      (if (gx#stx-pair?
                                                           _tl88638986_)
                                                          (let ((_e88648989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl88638986_)))
                    (let ((_hd88658993_
                           (let () (declare (not safe)) (##car _e88648989_)))
                          (_tl88668996_
                           (let () (declare (not safe)) (##cdr _e88648989_))))
                      (if (gx#stx-null? _tl88668996_)
                          ((lambda (_L8999_
                                    _L9001_
                                    _L9002_
                                    _L9003_
                                    _L9004_
                                    _L9005_
                                    _L9006_
                                    _L9007_
                                    _L9008_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L9007_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L9004_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9006_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _L9003_ '()))
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
                                 (cons (cons _L9001_ (cons _L9008_ '())) '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L9002_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L9006_
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
                                                   (cons (cons _L8999_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##car)
                                   (cons (gx#datum->syntax '#f 'q) '()))
                             (cons _L9008_ '())))
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
                                                     (foldr (lambda (_g90529055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g90539058_)
                      (cons _g90529055_ _g90539058_))
                    '()
                    _L9005_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9007_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9007_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd88658993_
                           _hd88628983_
                           _hd88598973_
                           _hd88568963_
                           _hd88538953_
                           _dispatch88518945_
                           _hd88388903_
                           _hd88358893_
                           _hd88328883_)
                          (_g88208872_ _g88218876_))))
                  (_g88208872_ _g88218876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g88208872_ _g88218876_))))
                                          (_g88208872_ _g88218876_))))
                                  (_g88208872_ _g88218876_))))
                          (_g88208872_ _g88218876_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop88468925_
                                               _target88438919_
                                               '()))
                                            (_g88208872_ _g88218876_)))))
                                  (_g88208872_ _g88218876_))))
                          (_g88208872_ _g88218876_))))
                  (_g88208872_ _g88218876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g88208872_ _g88218876_))))
                                          (_g88208872_ _g88218876_)))))
                              (_g88199061_
                               (list _e8801_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch8804_
                                     _default8805_
                                     _tab8815_
                                     (vector-length _tab8815_)
                                     _hashf8809_
                                     _eqf8810_))))))))))
          (let* ((_g86778701_
                  (lambda (_g86788697_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86788697_)))
                 (_g86768797_
                  (lambda (_g86788705_)
                    (if (gx#stx-pair? _g86788705_)
                        (let ((_e86818708_ (gx#syntax-e _g86788705_)))
                          (let ((_hd86828712_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e86818708_)))
                                (_tl86838715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e86818708_))))
                            (if (gx#stx-pair? _tl86838715_)
                                (let ((_e86848718_ (gx#syntax-e _tl86838715_)))
                                  (let ((_hd86858722_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e86848718_)))
                                        (_tl86868725_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e86848718_))))
                                    (if (gx#stx-pair/null? _tl86868725_)
                                        (let ((_g42191_
                                               (gx#syntax-split-splice
                                                _tl86868725_
                                                '0)))
                                          (begin
                                            (let ((_g42192_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g42191_)
                                                         (##vector-length
                                                          _g42191_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g42192_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g42192_)))
                                            (let ((_target86878728_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g42191_
                                                      0)))
                                                  (_tl86898731_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g42191_
                                                      1))))
                                              (if (gx#stx-null? _tl86898731_)
                                                  (letrec ((_loop86908734_
                                                            (lambda (_hd86888738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause86948741_)
                      (if (gx#stx-pair? _hd86888738_)
                          (let ((_e86918744_ (gx#syntax-e _hd86888738_)))
                            (let ((_lp-hd86928748_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e86918744_)))
                                  (_lp-tl86938751_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e86918744_))))
                              (_loop86908734_
                               _lp-tl86938751_
                               (cons _lp-hd86928748_ _clause86948741_))))
                          (let ((_clause86958754_ (reverse _clause86948741_)))
                            ((lambda (_L8758_ _L8760_)
                               (let ((_g42193_
                                      (_parse-clauses8651_
                                       _L8760_
                                       (foldr (lambda (_g87788781_ _g87798784_)
                                                (cons _g87788781_ _g87798784_))
                                              '()
                                              _L8758_))))
                                 (begin
                                   (let ((_g42194_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g42193_)
                                                (##vector-length _g42193_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g42194_ 3)))
                                         (error "Context expects 3 values"
                                                _g42194_)))
                                   (let ((_datums8787_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g42193_ 0)))
                                         (_dispatch8789_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g42193_ 1)))
                                         (_default8790_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g42193_ 2))))
                                     (let ((_datum-count8792_
                                            (_count-datums8654_ _datums8787_)))
                                       (if (< _datum-count8792_ '6)
                                           (_generate-simple-case8659_
                                            _L8760_
                                            _datums8787_
                                            _dispatch8789_
                                            _default8790_)
                                           (if (_char-datums?8656_
                                                _datums8787_)
                                               (_generate-char-dispatch8668_
                                                _L8760_
                                                _datums8787_
                                                _dispatch8789_
                                                _default8790_)
                                               (if (_fixnum-datums?8657_
                                                    _datums8787_)
                                                   (_generate-fixnum-dispatch8673_
                                                    _L8760_
                                                    _datums8787_
                                                    _dispatch8789_
                                                    _default8790_)
                                                   (if (< _datum-count8792_
                                                          '12)
                                                       (_generate-simple-case8659_
                                                        _L8760_
                                                        _datums8787_
                                                        _dispatch8789_
                                                        _default8790_)
                                                       (if (_symbolic-datums?8655_
                                                            _datums8787_)
                                                           (_generate-symbolic-dispatch8663_
                                                            _L8760_
                                                            _datums8787_
                                                            _dispatch8789_
                                                            _default8790_)
                                                           (_generate-generic-dispatch8675_
                                                            _L8760_
                                                            _datums8787_
                                                            _dispatch8789_
                                                            _default8790_)))))))))))
                             _clause86958754_
                             _hd86858722_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop86908734_
                                                     _target86878728_
                                                     '()))
                                                  (_g86778701_ _g86788705_)))))
                                        (_g86778701_ _g86788705_))))
                                (_g86778701_ _g86788705_))))
                        (_g86778701_ _g86788705_)))))
            (_g86768797_ _stx8648_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-test|
      (lambda (_stx11699_)
        (let* ((_g1170211720_
                (lambda (_g1170311716_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1170311716_)))
               (_g1170111786_
                (lambda (_g1170311724_)
                  (if (gx#stx-pair? _g1170311724_)
                      (let ((_e1170611727_ (gx#syntax-e _g1170311724_)))
                        (let ((_hd1170711731_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1170611727_)))
                              (_tl1170811734_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1170611727_))))
                          (if (gx#stx-pair? _tl1170811734_)
                              (let ((_e1170911737_
                                     (gx#syntax-e _tl1170811734_)))
                                (let ((_hd1171011741_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1170911737_)))
                                      (_tl1171111744_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1170911737_))))
                                  (if (gx#stx-pair? _tl1171111744_)
                                      (let ((_e1171211747_
                                             (gx#syntax-e _tl1171111744_)))
                                        (let ((_hd1171311751_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1171211747_)))
                                              (_tl1171411754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1171211747_))))
                                          (if (gx#stx-null? _tl1171411754_)
                                              ((lambda (_L11757_ _L11759_)
                                                 (let ((_datum-e11775_
                                                        (gx#stx-e _L11759_)))
                                                   (if (or (symbol? _datum-e11775_)
                                                           (keyword?
                                                            _datum-e11775_)
                                                           (immediate?
                                                            _datum-e11775_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _L11759_ '()))
                           (cons _L11757_ '())))
               (if (number? _datum-e11775_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11759_ '()))
                               (cons _L11757_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11759_ '()))
                               (cons _L11757_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1171311751_
                                               _hd1171011741_)
                                              (_g1170211720_ _g1170311724_))))
                                      (_g1170211720_ _g1170311724_))))
                              (_g1170211720_ _g1170311724_))))
                      (_g1170211720_ _g1170311724_)))))
          (_g1170111786_ _stx11699_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx11790_)
        (let* ((_g1179411818_
                (lambda (_g1179511814_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1179511814_)))
               (_g1179311903_
                (lambda (_g1179511822_)
                  (if (gx#stx-pair? _g1179511822_)
                      (let ((_e1179811825_ (gx#syntax-e _g1179511822_)))
                        (let ((_hd1179911829_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1179811825_)))
                              (_tl1180011832_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1179811825_))))
                          (if (gx#stx-pair? _tl1180011832_)
                              (let ((_e1180111835_
                                     (gx#syntax-e _tl1180011832_)))
                                (let ((_hd1180211839_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1180111835_)))
                                      (_tl1180311842_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1180111835_))))
                                  (if (gx#stx-pair/null? _tl1180311842_)
                                      (let ((_g42195_
                                             (gx#syntax-split-splice
                                              _tl1180311842_
                                              '0)))
                                        (begin
                                          (let ((_g42196_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42195_)
                                                       (##vector-length
                                                        _g42195_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42196_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42196_)))
                                          (let ((_target1180411845_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42195_ 0)))
                                                (_tl1180611848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42195_ 1))))
                                            (if (gx#stx-null? _tl1180611848_)
                                                (letrec ((_loop1180711851_
                                                          (lambda (_hd1180511855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _K1181111858_)
                    (if (gx#stx-pair? _hd1180511855_)
                        (let ((_e1180811861_ (gx#syntax-e _hd1180511855_)))
                          (let ((_lp-hd1180911865_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1180811861_)))
                                (_lp-tl1181011868_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1180811861_))))
                            (_loop1180711851_
                             _lp-tl1181011868_
                             (cons _lp-hd1180911865_ _K1181111858_))))
                        (let ((_K1181211871_ (reverse _K1181111858_)))
                          ((lambda (_L11875_ _L11877_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _L11877_
                                               (foldr (lambda (_g1189411897_
                                                               _g1189511900_)
                                                        (cons _g1189411897_
                                                              _g1189511900_))
                                                      '()
                                                      _L11875_)))))
                           _K1181211871_
                           _hd1180211839_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1180711851_
                                                   _target1180411845_
                                                   '()))
                                                (_g1179411818_
                                                 _g1179511822_)))))
                                      (_g1179411818_ _g1179511822_))))
                              (_g1179411818_ _g1179511822_))))
                      (_g1179411818_ _g1179511822_)))))
          (_g1179311903_ _$stx11790_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx11908_)
        (let* ((___stx3794337944_ _stx11908_)
               (_g1191512011_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3794337944_))))
          (let ((___kont3794637947_
                 (lambda (_L12488_ _L12490_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (___kont3794837949_
                 (lambda (_L12430_ _L12432_ _L12433_) _L12430_))
                (___kont3795037951_
                 (lambda (_L12327_ _L12329_ _L12330_ _L12331_)
                   (let* ((_g1235212360_
                           (lambda (_g1235312356_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1235312356_)))
                          (_g1235112379_
                           (lambda (_g1235312364_)
                             ((lambda (_L12367_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##fx=)
                                                    (cons _L12330_
                                                          (cons _L12367_ '())))
                                              (cons _L12329_
                                                    (cons _L12327_ '()))))))
                              _g1235312364_))))
                     (_g1235112379_ (gx#stx-e _L12331_)))))
                (___kont3795237953_
                 (lambda (_L12177_ _L12179_ _L12180_ _L12181_ _L12182_)
                   (let* ((_g1220612221_
                           (lambda (_g1220712217_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1220712217_)))
                          (_g1220512266_
                           (lambda (_g1220712225_)
                             (if (gx#stx-pair? _g1220712225_)
                                 (let ((_e1221012228_
                                        (gx#syntax-e _g1220712225_)))
                                   (let ((_hd1221112232_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1221012228_)))
                                         (_tl1221212235_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1221012228_))))
                                     (if (gx#stx-pair? _tl1221212235_)
                                         (let ((_e1221312238_
                                                (gx#syntax-e _tl1221212235_)))
                                           (let ((_hd1221412242_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1221312238_)))
                                                 (_tl1221512245_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1221312238_))))
                                             (if (gx#stx-null? _tl1221512245_)
                                                 ((lambda (_L12248_ _L12250_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##fx=)
                                (cons _L12181_ (cons _L12250_ '())))
                          (cons _L12180_
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx=)
                                                        (cons _L12181_
                                                              (cons _L12248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L12179_
                                                        (cons _L12177_ '()))))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1221412242_
                                                  _hd1221112232_)
                                                 (_g1220612221_
                                                  _g1220712225_))))
                                         (_g1220612221_ _g1220712225_))))
                                 (_g1220612221_ _g1220712225_)))))
                     (_g1220512266_
                      (list (gx#stx-e _L12182_) (fx1+ (gx#stx-e _L12182_)))))))
                (___kont3795437955_
                 (lambda (_L12078_ _L12080_ _L12081_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _L12081_
                               (cons _L12080_
                                     (foldr (lambda (_g1210112104_
                                                     _g1210212107_)
                                              (cons _g1210112104_
                                                    _g1210212107_))
                                            '()
                                            _L12078_)))))))
            (let ((___match3810038101_
                   (lambda (_e1198812018_
                            _hd1198912022_
                            _tl1199012025_
                            _e1199112028_
                            _hd1199212032_
                            _tl1199312035_
                            _e1199412038_
                            _hd1199512042_
                            _tl1199612045_
                            ___splice3795637957_
                            _target1199712048_
                            _tl1199912051_)
                     (letrec ((_loop1200012054_
                               (lambda (_hd1199812058_ _K1200412061_)
                                 (if (gx#stx-pair? _hd1199812058_)
                                     (let ((_e1200112064_
                                            (gx#syntax-e _hd1199812058_)))
                                       (let ((_lp-tl1200312071_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1200112064_)))
                                             (_lp-hd1200212068_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1200112064_))))
                                         (_loop1200012054_
                                          _lp-tl1200312071_
                                          (cons _lp-hd1200212068_
                                                _K1200412061_))))
                                     (let ((_K1200512074_
                                            (reverse _K1200412061_)))
                                       (___kont3795437955_
                                        _K1200512074_
                                        _hd1199512042_
                                        _hd1199212032_))))))
                       (_loop1200012054_ _target1199712048_ '())))))
              (if (gx#stx-pair? ___stx3794337944_)
                  (let ((_e1191912458_ (gx#syntax-e ___stx3794337944_)))
                    (let ((_tl1192112465_
                           (let () (declare (not safe)) (##cdr _e1191912458_)))
                          (_hd1192012462_
                           (let ()
                             (declare (not safe))
                             (##car _e1191912458_))))
                      (if (gx#stx-pair? _tl1192112465_)
                          (let ((_e1192212468_ (gx#syntax-e _tl1192112465_)))
                            (let ((_tl1192412475_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1192212468_)))
                                  (_hd1192312472_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1192212468_))))
                              (if (gx#stx-pair? _tl1192412475_)
                                  (let ((_e1192512478_
                                         (gx#syntax-e _tl1192412475_)))
                                    (let ((_tl1192712485_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1192512478_)))
                                          (_hd1192612482_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1192512478_))))
                                      (if (gx#stx-null? _tl1192712485_)
                                          (___kont3794637947_
                                           _hd1192612482_
                                           _hd1192312472_)
                                          (if (gx#stx-pair? _tl1192712485_)
                                              (let ((_e1194012420_
                                                     (gx#syntax-e
                                                      _tl1192712485_)))
                                                (let ((_tl1194212427_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1194012420_)))
                                                      (_hd1194112424_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1194012420_))))
                                                  (if (gx#stx-null?
                                                       _tl1194212427_)
                                                      (___kont3794837949_
                                                       _hd1194112424_
                                                       _hd1192612482_
                                                       _hd1192312472_)
                                                      (if (gx#stx-pair?
                                                           _tl1194212427_)
                                                          (let ((_e1195912317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1194212427_)))
                    (let ((_tl1196112324_
                           (let () (declare (not safe)) (##cdr _e1195912317_)))
                          (_hd1196012321_
                           (let ()
                             (declare (not safe))
                             (##car _e1195912317_))))
                      (if (gx#stx-null? _tl1196112324_)
                          (___kont3795037951_
                           _hd1196012321_
                           _hd1194112424_
                           _hd1192612482_
                           _hd1192312472_)
                          (if (gx#stx-pair? _tl1196112324_)
                              (let ((_e1198212167_
                                     (gx#syntax-e _tl1196112324_)))
                                (let ((_tl1198412174_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1198212167_)))
                                      (_hd1198312171_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1198212167_))))
                                  (if (gx#stx-null? _tl1198412174_)
                                      (___kont3795237953_
                                       _hd1198312171_
                                       _hd1196012321_
                                       _hd1194112424_
                                       _hd1192612482_
                                       _hd1192312472_)
                                      (if (gx#stx-pair/null? _tl1192712485_)
                                          (let ((___splice3795637957_
                                                 (gx#syntax-split-splice
                                                  _tl1192712485_
                                                  '0)))
                                            (let ((_tl1199912051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3795637957_
                                                      '1)))
                                                  (_target1199712048_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3795637957_
                                                      '0))))
                                              (if (gx#stx-null? _tl1199912051_)
                                                  (___match3810038101_
                                                   _e1191912458_
                                                   _hd1192012462_
                                                   _tl1192112465_
                                                   _e1192212468_
                                                   _hd1192312472_
                                                   _tl1192412475_
                                                   _e1192512478_
                                                   _hd1192612482_
                                                   _tl1192712485_
                                                   ___splice3795637957_
                                                   _target1199712048_
                                                   _tl1199912051_)
                                                  (_g1191512011_))))
                                          (_g1191512011_)))))
                              (if (gx#stx-pair/null? _tl1192712485_)
                                  (let ((___splice3795637957_
                                         (gx#syntax-split-splice
                                          _tl1192712485_
                                          '0)))
                                    (let ((_tl1199912051_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3795637957_
                                              '1)))
                                          (_target1199712048_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3795637957_
                                              '0))))
                                      (if (gx#stx-null? _tl1199912051_)
                                          (___match3810038101_
                                           _e1191912458_
                                           _hd1192012462_
                                           _tl1192112465_
                                           _e1192212468_
                                           _hd1192312472_
                                           _tl1192412475_
                                           _e1192512478_
                                           _hd1192612482_
                                           _tl1192712485_
                                           ___splice3795637957_
                                           _target1199712048_
                                           _tl1199912051_)
                                          (_g1191512011_))))
                                  (_g1191512011_))))))
                  (if (gx#stx-pair/null? _tl1192712485_)
                      (let ((___splice3795637957_
                             (gx#syntax-split-splice _tl1192712485_ '0)))
                        (let ((_tl1199912051_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3795637957_ '1)))
                              (_target1199712048_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3795637957_ '0))))
                          (if (gx#stx-null? _tl1199912051_)
                              (___match3810038101_
                               _e1191912458_
                               _hd1192012462_
                               _tl1192112465_
                               _e1192212468_
                               _hd1192312472_
                               _tl1192412475_
                               _e1192512478_
                               _hd1192612482_
                               _tl1192712485_
                               ___splice3795637957_
                               _target1199712048_
                               _tl1199912051_)
                              (_g1191512011_))))
                      (_g1191512011_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1192712485_)
                                                  (let ((___splice3795637957_
                                                         (gx#syntax-split-splice
                                                          _tl1192712485_
                                                          '0)))
                                                    (let ((_tl1199912051_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3795637957_
                                                              '1)))
                                                          (_target1199712048_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3795637957_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1199912051_)
                                                          (___match3810038101_
                                                           _e1191912458_
                                                           _hd1192012462_
                                                           _tl1192112465_
                                                           _e1192212468_
                                                           _hd1192312472_
                                                           _tl1192412475_
                                                           _e1192512478_
                                                           _hd1192612482_
                                                           _tl1192712485_
                                                           ___splice3795637957_
                                                           _target1199712048_
                                                           _tl1199912051_)
                                                          (_g1191512011_))))
                                                  (_g1191512011_))))))
                                  (_g1191512011_))))
                          (_g1191512011_))))
                  (_g1191512011_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx12510_)
        (letrec ((_split12513_
                  (lambda (_lst12874_ _mid12876_)
                    (let _lp12878_ ((_i12881_ '0)
                                    (_rest12883_ _lst12874_)
                                    (_left12884_ '()))
                      (if (fx< _i12881_ _mid12876_)
                          (_lp12878_
                           (fx1+ _i12881_)
                           (cdr _rest12883_)
                           (cons (car _rest12883_) _left12884_))
                          (values (reverse _left12884_) _rest12883_))))))
          (let* ((_g1251612544_
                  (lambda (_g1251712540_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1251712540_)))
                 (_g1251512870_
                  (lambda (_g1251712548_)
                    (if (gx#stx-pair? _g1251712548_)
                        (let ((_e1252112551_ (gx#syntax-e _g1251712548_)))
                          (let ((_hd1252212555_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1252112551_)))
                                (_tl1252312558_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1252112551_))))
                            (if (gx#stx-pair? _tl1252312558_)
                                (let ((_e1252412561_
                                       (gx#syntax-e _tl1252312558_)))
                                  (let ((_hd1252512565_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1252412561_)))
                                        (_tl1252612568_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1252412561_))))
                                    (if (gx#stx-pair? _tl1252612568_)
                                        (let ((_e1252712571_
                                               (gx#syntax-e _tl1252612568_)))
                                          (let ((_hd1252812575_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1252712571_)))
                                                (_tl1252912578_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1252712571_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1252912578_)
                                                (let ((_g42197_
                                                       (gx#syntax-split-splice
                                                        _tl1252912578_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42198_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42197_)
                         (##vector-length _g42197_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42198_ 2)))
                  (error "Context expects 2 values" _g42198_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1253012581_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42197_
                                                              0)))
                                                          (_tl1253212584_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42197_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1253212584_)
                                                          (letrec ((_loop1253312587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1253112591_ _K1253712594_)
                              (if (gx#stx-pair? _hd1253112591_)
                                  (let ((_e1253412597_
                                         (gx#syntax-e _hd1253112591_)))
                                    (let ((_lp-hd1253512601_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1253412597_)))
                                          (_lp-tl1253612604_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1253412597_))))
                                      (_loop1253312587_
                                       _lp-tl1253612604_
                                       (cons _lp-hd1253512601_
                                             _K1253712594_))))
                                  (let ((_K1253812607_
                                         (reverse _K1253712594_)))
                                    ((lambda (_L12611_ _L12613_ _L12614_)
                                       (let* ((_len12644_
                                               (length (foldr (lambda (_g1263512638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1263612641_)
                        (cons _g1263512638_ _g1263612641_))
                      '()
                      _L12611_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_mid12647_
                                               (quotient _len12644_ '2))
                                              (_g42199_
                                               (_split12513_
                                                (foldr (lambda (_g1264912652_
                                                                _g1265012655_)
                                                         (cons _g1264912652_
                                                               _g1265012655_))
                                                       '()
                                                       _L12611_)
                                                _mid12647_)))
                                         (begin
                                           (let ((_g42200_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g42199_)
                                                        (##vector-length
                                                         _g42199_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g42200_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g42200_)))
                                           (let ((_left12658_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g42199_ 0)))
                                                 (_right12660_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g42199_
                                                     1))))
                                             (let ()
                                               (let* ((_g1266412705_
                                                       (lambda (_g1266512701_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1266512701_)))
                                                      (_g1266312866_
                                                       (lambda (_g1266512709_)
                                                         (if (gx#stx-pair?
                                                              _g1266512709_)
                                                             (let ((_e1267012712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1266512709_)))
                       (let ((_hd1267112716_
                              (let ()
                                (declare (not safe))
                                (##car _e1267012712_)))
                             (_tl1267212719_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1267012712_))))
                         (if (gx#stx-pair? _tl1267212719_)
                             (let ((_e1267312722_
                                    (gx#syntax-e _tl1267212719_)))
                               (let ((_hd1267412726_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1267312722_)))
                                     (_tl1267512729_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1267312722_))))
                                 (if (gx#stx-pair/null? _hd1267412726_)
                                     (let ((_g42201_
                                            (gx#syntax-split-splice
                                             _hd1267412726_
                                             '0)))
                                       (begin
                                         (let ((_g42202_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42201_)
                                                      (##vector-length
                                                       _g42201_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42202_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42202_)))
                                         (let ((_target1267612732_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42201_ 0)))
                                               (_tl1267812735_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42201_ 1))))
                                           (if (gx#stx-null? _tl1267812735_)
                                               (letrec ((_loop1267912738_
                                                         (lambda (_hd1267712742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-left1268312745_)
                   (if (gx#stx-pair? _hd1267712742_)
                       (let ((_e1268012748_ (gx#syntax-e _hd1267712742_)))
                         (let ((_lp-hd1268112752_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1268012748_)))
                               (_lp-tl1268212755_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1268012748_))))
                           (_loop1267912738_
                            _lp-tl1268212755_
                            (cons _lp-hd1268112752_ _K-left1268312745_))))
                       (let ((_K-left1268412758_ (reverse _K-left1268312745_)))
                         (if (gx#stx-pair? _tl1267512729_)
                             (let ((_e1268512762_
                                    (gx#syntax-e _tl1267512729_)))
                               (let ((_hd1268612766_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1268512762_)))
                                     (_tl1268712769_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1268512762_))))
                                 (if (gx#stx-pair/null? _hd1268612766_)
                                     (let ((_g42203_
                                            (gx#syntax-split-splice
                                             _hd1268612766_
                                             '0)))
                                       (begin
                                         (let ((_g42204_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42203_)
                                                      (##vector-length
                                                       _g42203_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42204_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42204_)))
                                         (let ((_target1268812772_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42203_ 0)))
                                               (_tl1269012775_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42203_ 1))))
                                           (if (gx#stx-null? _tl1269012775_)
                                               (letrec ((_loop1269112778_
                                                         (lambda (_hd1268912782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-right1269512785_)
                   (if (gx#stx-pair? _hd1268912782_)
                       (let ((_e1269212788_ (gx#syntax-e _hd1268912782_)))
                         (let ((_lp-hd1269312792_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1269212788_)))
                               (_lp-tl1269412795_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1269212788_))))
                           (_loop1269112778_
                            _lp-tl1269412795_
                            (cons _lp-hd1269312792_ _K-right1269512785_))))
                       (let ((_K-right1269612798_
                              (reverse _K-right1269512785_)))
                         (if (gx#stx-pair? _tl1268712769_)
                             (let ((_e1269712802_
                                    (gx#syntax-e _tl1268712769_)))
                               (let ((_hd1269812806_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1269712802_)))
                                     (_tl1269912809_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1269712802_))))
                                 (if (gx#stx-null? _tl1269912809_)
                                     ((lambda (_L12812_
                                               _L12814_
                                               _L12815_
                                               _L12816_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##fx<)
                                                            (cons _L12613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L12812_ '())))
              (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                          (cons _L12614_
                                (cons _L12613_
                                      (foldr (lambda (_g1284912854_
                                                      _g1285012857_)
                                               (cons _g1284912854_
                                                     _g1285012857_))
                                             '()
                                             _L12815_))))
                    (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                                (cons _L12812_
                                      (cons _L12613_
                                            (foldr (lambda (_g1285112860_
                                                            _g1285212863_)
                                                     (cons _g1285112860_
                                                           _g1285212863_))
                                                   '()
                                                   _L12814_))))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _hd1269812806_
                                      _K-right1269612798_
                                      _K-left1268412758_
                                      _hd1267112716_)
                                     (_g1266412705_ _g1266512709_))))
                             (_g1266412705_ _g1266512709_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1269112778_
                                                  _target1268812772_
                                                  '()))
                                               (_g1266412705_
                                                _g1266512709_)))))
                                     (_g1266412705_ _g1266512709_))))
                             (_g1266412705_ _g1266512709_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1267912738_
                                                  _target1267612732_
                                                  '()))
                                               (_g1266412705_
                                                _g1266512709_)))))
                                     (_g1266412705_ _g1266512709_))))
                             (_g1266412705_ _g1266512709_))))
                     (_g1266412705_ _g1266512709_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1266312866_
                                                  (list _mid12647_
                                                        _left12658_
                                                        _right12660_
                                                        (fx+ _mid12647_
                                                             (gx#stx-e
                                                              _L12614_))))))))))
                                     _K1253812607_
                                     _hd1252812575_
                                     _hd1252512565_))))))
                    (_loop1253312587_ _target1253012581_ '()))
                  (_g1251612544_ _g1251712548_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1251612544_
                                                 _g1251712548_))))
                                        (_g1251612544_ _g1251712548_))))
                                (_g1251612544_ _g1251712548_))))
                        (_g1251612544_ _g1251712548_)))))
            (_g1251512870_ _stx12510_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do|
      (lambda (_$stx12890_)
        (let* ((_g1289412965_
                (lambda (_g1289512961_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1289512961_)))
               (_g1289313254_
                (lambda (_g1289512969_)
                  (if (gx#stx-pair? _g1289512969_)
                      (let ((_e1290212972_ (gx#syntax-e _g1289512969_)))
                        (let ((_hd1290312976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1290212972_)))
                              (_tl1290412979_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1290212972_))))
                          (if (gx#stx-pair? _tl1290412979_)
                              (let ((_e1290512982_
                                     (gx#syntax-e _tl1290412979_)))
                                (let ((_hd1290612986_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1290512982_)))
                                      (_tl1290712989_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1290512982_))))
                                  (if (gx#stx-pair/null? _hd1290612986_)
                                      (let ((_g42205_
                                             (gx#syntax-split-splice
                                              _hd1290612986_
                                              '0)))
                                        (begin
                                          (let ((_g42206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42205_)
                                                       (##vector-length
                                                        _g42205_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42206_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42206_)))
                                          (let ((_target1290812992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42205_ 0)))
                                                (_tl1291012995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42205_ 1))))
                                            (if (gx#stx-null? _tl1291012995_)
                                                (letrec ((_loop1291112998_
                                                          (lambda (_hd1290913002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _step1291513005_
                           _init1291613007_
                           _var1291713009_)
                    (if (gx#stx-pair? _hd1290913002_)
                        (let ((_e1291213012_ (gx#syntax-e _hd1290913002_)))
                          (let ((_lp-hd1291313016_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1291213012_)))
                                (_lp-tl1291413019_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1291213012_))))
                            (if (gx#stx-pair? _lp-hd1291313016_)
                                (let ((_e1292113022_
                                       (gx#syntax-e _lp-hd1291313016_)))
                                  (let ((_hd1292213026_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1292113022_)))
                                        (_tl1292313029_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1292113022_))))
                                    (if (gx#stx-pair? _tl1292313029_)
                                        (let ((_e1292413032_
                                               (gx#syntax-e _tl1292313029_)))
                                          (let ((_hd1292513036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1292413032_)))
                                                (_tl1292613039_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1292413032_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1292613039_)
                                                (let ((_g42207_
                                                       (gx#syntax-split-splice
                                                        _tl1292613039_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42208_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42207_)
                         (##vector-length _g42207_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42208_ 2)))
                  (error "Context expects 2 values" _g42208_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1292713042_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42207_
                                                              0)))
                                                          (_tl1292913045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42207_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1292913045_)
                                                          (letrec ((_loop1293013048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1292813052_ _step1293413055_)
                              (if (gx#stx-pair? _hd1292813052_)
                                  (let ((_e1293113058_
                                         (gx#syntax-e _hd1292813052_)))
                                    (let ((_lp-hd1293213062_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1293113058_)))
                                          (_lp-tl1293313065_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1293113058_))))
                                      (_loop1293013048_
                                       _lp-tl1293313065_
                                       (cons _lp-hd1293213062_
                                             _step1293413055_))))
                                  (let ((_step1293513068_
                                         (reverse _step1293413055_)))
                                    (_loop1291112998_
                                     _lp-tl1291413019_
                                     (cons _step1293513068_ _step1291513005_)
                                     (cons _hd1292513036_ _init1291613007_)
                                     (cons _hd1292213026_
                                           _var1291713009_)))))))
                    (_loop1293013048_ _target1292713042_ '()))
                  (_g1289412965_ _g1289512969_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1289412965_
                                                 _g1289512969_))))
                                        (_g1289412965_ _g1289512969_))))
                                (_g1289412965_ _g1289512969_))))
                        (let ((_step1291813072_ (reverse _step1291513005_))
                              (_init1291913075_ (reverse _init1291613007_))
                              (_var1292013077_ (reverse _var1291713009_)))
                          (if (gx#stx-pair? _tl1290712989_)
                              (let ((_e1293613080_
                                     (gx#syntax-e _tl1290712989_)))
                                (let ((_hd1293713084_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1293613080_)))
                                      (_tl1293813087_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1293613080_))))
                                  (if (gx#stx-pair? _hd1293713084_)
                                      (let ((_e1293913090_
                                             (gx#syntax-e _hd1293713084_)))
                                        (let ((_hd1294013094_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1293913090_)))
                                              (_tl1294113097_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1293913090_))))
                                          (if (gx#stx-pair/null?
                                               _tl1294113097_)
                                              (let ((_g42209_
                                                     (gx#syntax-split-splice
                                                      _tl1294113097_
                                                      '0)))
                                                (begin
                                                  (let ((_g42210_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g42209_)
                                                               (##vector-length
                                                                _g42209_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g42210_ 2)))
                (error "Context expects 2 values" _g42210_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1294213100_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42209_
                                                            0)))
                                                        (_tl1294413103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42209_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1294413103_)
                                                        (letrec ((_loop1294513106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1294313110_ _fini1294913113_)
                            (if (gx#stx-pair? _hd1294313110_)
                                (let ((_e1294613116_
                                       (gx#syntax-e _hd1294313110_)))
                                  (let ((_lp-hd1294713120_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1294613116_)))
                                        (_lp-tl1294813123_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1294613116_))))
                                    (_loop1294513106_
                                     _lp-tl1294813123_
                                     (cons _lp-hd1294713120_
                                           _fini1294913113_))))
                                (let ((_fini1295013126_
                                       (reverse _fini1294913113_)))
                                  (if (gx#stx-pair/null? _tl1293813087_)
                                      (let ((_g42211_
                                             (gx#syntax-split-splice
                                              _tl1293813087_
                                              '0)))
                                        (begin
                                          (let ((_g42212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42211_)
                                                       (##vector-length
                                                        _g42211_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42212_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42212_)))
                                          (let ((_target1295113130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42211_ 0)))
                                                (_tl1295313133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42211_ 1))))
                                            (if (gx#stx-null? _tl1295313133_)
                                                (letrec ((_loop1295413136_
                                                          (lambda (_hd1295213140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1295813143_)
                    (if (gx#stx-pair? _hd1295213140_)
                        (let ((_e1295513146_ (gx#syntax-e _hd1295213140_)))
                          (let ((_lp-hd1295613150_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1295513146_)))
                                (_lp-tl1295713153_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1295513146_))))
                            (_loop1295413136_
                             _lp-tl1295713153_
                             (cons _lp-hd1295613150_ _body1295813143_))))
                        (let ((_body1295913156_ (reverse _body1295813143_)))
                          ((lambda (_L13160_
                                    _L13162_
                                    _L13163_
                                    _L13164_
                                    _L13165_
                                    _L13166_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_g1319913202_ _g1320013205_)
                                           (cons _g1319913202_ _g1320013205_))
                                         '()
                                         _L13166_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L13165_
                                                      _L13166_)
                                                     (foldr (lambda (_g1320713220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1320813223_
                             _g1320913225_)
                      (cons (cons _g1320813223_ (cons _g1320713220_ '()))
                            _g1320913225_))
                    '()
                    _L13165_
                    _L13166_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _L13163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_g1321013228_
                                                               _g1321113231_)
                                                        (cons _g1321013228_
                                                              _g1321113231_))
                                                      '()
                                                      _L13162_)))
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (foldr (lambda (_g1321213234_
                                                               _g1321313237_)
                                                        (cons _g1321213234_
                                                              _g1321313237_))
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$loop)
                          (begin
                            (gx#syntax-check-splice-targets _L13164_ _L13166_)
                            (foldr (lambda (_g1321413240_
                                            _g1321513243_
                                            _g1321613245_)
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons _g1321513243_
                                                       (foldr (lambda (_g1321713248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1321813251_)
                        (cons _g1321713248_ _g1321813251_))
                      '()
                      _g1321413240_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1321613245_))
                                   '()
                                   _L13164_
                                   _L13166_)))
                    '())
              _L13160_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_g1289412965_ _g1289512969_)))
                           _body1295913156_
                           _fini1295013126_
                           _hd1294013094_
                           _step1291813072_
                           _init1291913075_
                           _var1292013077_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1295413136_
                                                   _target1295113130_
                                                   '()))
                                                (_g1289412965_
                                                 _g1289512969_)))))
                                      (_g1289412965_ _g1289512969_)))))))
                  (_loop1294513106_ _target1294213100_ '()))
                (_g1289412965_ _g1289512969_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1289412965_ _g1289512969_))))
                                      (_g1289412965_ _g1289512969_))))
                              (_g1289412965_ _g1289512969_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1291112998_
                                                   _target1290812992_
                                                   '()
                                                   '()
                                                   '()))
                                                (_g1289412965_
                                                 _g1289512969_)))))
                                      (_g1289412965_ _g1289512969_))))
                              (_g1289412965_ _g1289512969_))))
                      (_g1289412965_ _g1289512969_)))))
          (_g1289313254_ _$stx12890_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do-while|
      (lambda (_$stx13262_)
        (let* ((_g1326613289_
                (lambda (_g1326713285_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1326713285_)))
               (_g1326513360_
                (lambda (_g1326713293_)
                  (if (gx#stx-pair? _g1326713293_)
                      (let ((_e1327213296_ (gx#syntax-e _g1326713293_)))
                        (let ((_hd1327313300_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1327213296_)))
                              (_tl1327413303_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1327213296_))))
                          (if (gx#stx-pair? _tl1327413303_)
                              (let ((_e1327513306_
                                     (gx#syntax-e _tl1327413303_)))
                                (let ((_hd1327613310_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1327513306_)))
                                      (_tl1327713313_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1327513306_))))
                                  (if (gx#stx-pair? _tl1327713313_)
                                      (let ((_e1327813316_
                                             (gx#syntax-e _tl1327713313_)))
                                        (let ((_hd1327913320_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1327813316_)))
                                              (_tl1328013323_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1327813316_))))
                                          (if (gx#stx-pair? _hd1327913320_)
                                              (let ((_e1328113326_
                                                     (gx#syntax-e
                                                      _hd1327913320_)))
                                                (let ((_hd1328213330_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1328113326_)))
                                                      (_tl1328313333_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1328113326_))))
                                                  ((lambda (_L13336_
                                                            _L13338_
                                                            _L13339_
                                                            _L13340_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _L13340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _L13339_ '()))
                                     _L13338_)
                               _L13336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1328013323_
                                                   _tl1328313333_
                                                   _hd1328213330_
                                                   _hd1327613310_)))
                                              (_g1326613289_ _g1326713293_))))
                                      (_g1326613289_ _g1326713293_))))
                              (_g1326613289_ _g1326713293_))))
                      (_g1326613289_ _g1326713293_)))))
          (_g1326513360_ _$stx13262_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx13364_)
        (let* ((___stx3810338104_ _$stx13364_)
               (_g1336913400_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3810338104_))))
          (let ((___kont3810638107_ (lambda (_L13512_) _L13512_))
                (___kont3810838109_
                 (lambda (_L13457_ _L13459_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _L13459_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_g1347613479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1347713482_)
                        (cons _g1347613479_ _g1347713482_))
                      '()
                      _L13457_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((___match3814638147_
                   (lambda (_e1338013407_
                            _hd1338113411_
                            _tl1338213414_
                            _e1338313417_
                            _hd1338413421_
                            _tl1338513424_
                            ___splice3811038111_
                            _target1338613427_
                            _tl1338813430_)
                     (letrec ((_loop1338913433_
                               (lambda (_hd1338713437_ _rest1339313440_)
                                 (if (gx#stx-pair? _hd1338713437_)
                                     (let ((_e1339013443_
                                            (gx#syntax-e _hd1338713437_)))
                                       (let ((_lp-tl1339213450_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1339013443_)))
                                             (_lp-hd1339113447_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1339013443_))))
                                         (_loop1338913433_
                                          _lp-tl1339213450_
                                          (cons _lp-hd1339113447_
                                                _rest1339313440_))))
                                     (let ((_rest1339413453_
                                            (reverse _rest1339313440_)))
                                       (___kont3810838109_
                                        _rest1339413453_
                                        _hd1338413421_))))))
                       (_loop1338913433_ _target1338613427_ '())))))
              (if (gx#stx-pair? ___stx3810338104_)
                  (let ((_e1337213492_ (gx#syntax-e ___stx3810338104_)))
                    (let ((_tl1337413499_
                           (let () (declare (not safe)) (##cdr _e1337213492_)))
                          (_hd1337313496_
                           (let ()
                             (declare (not safe))
                             (##car _e1337213492_))))
                      (if (gx#stx-pair? _tl1337413499_)
                          (let ((_e1337513502_ (gx#syntax-e _tl1337413499_)))
                            (let ((_tl1337713509_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1337513502_)))
                                  (_hd1337613506_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1337513502_))))
                              (if (gx#stx-null? _tl1337713509_)
                                  (___kont3810638107_ _hd1337613506_)
                                  (if (gx#stx-pair/null? _tl1337713509_)
                                      (let ((___splice3811038111_
                                             (gx#syntax-split-splice
                                              _tl1337713509_
                                              '0)))
                                        (let ((_tl1338813430_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3811038111_
                                                  '1)))
                                              (_target1338613427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3811038111_
                                                  '0))))
                                          (if (gx#stx-null? _tl1338813430_)
                                              (___match3814638147_
                                               _e1337213492_
                                               _hd1337313496_
                                               _tl1337413499_
                                               _e1337513502_
                                               _hd1337613506_
                                               _tl1337713509_
                                               ___splice3811038111_
                                               _target1338613427_
                                               _tl1338813430_)
                                              (_g1336913400_))))
                                      (_g1336913400_)))))
                          (_g1336913400_))))
                  (_g1336913400_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx13530_)
        (let* ((___stx3814938150_ _$stx13530_)
               (_g1353613589_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3814938150_))))
          (let ((___kont3815238153_
                 (lambda (_L13791_ _L13793_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _L13793_ (cons _L13791_ '())) '())
                               (cons _L13793_ '())))))
                (___kont3815438155_
                 (lambda (_L13735_ _L13737_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _L13737_ (cons _L13735_ '())) '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _L13737_)
                                     '())))))
                (___kont3815638157_
                 (lambda (_L13656_ _L13658_ _L13659_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _L13659_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _L13658_
                                                             (foldr (lambda (_g1367913682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1368013685_)
                              (cons _g1367913682_ _g1368013685_))
                            '()
                            _L13656_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _L13659_ '()))))))
            (let* ((___match3823638237_
                    (lambda (_e1356613596_
                             _hd1356713600_
                             _tl1356813603_
                             _e1356913606_
                             _hd1357013610_
                             _tl1357113613_
                             _e1357213616_
                             _hd1357313620_
                             _tl1357413623_
                             ___splice3815838159_
                             _target1357513626_
                             _tl1357713629_)
                      (letrec ((_loop1357813632_
                                (lambda (_hd1357613636_ _body1358213639_)
                                  (if (gx#stx-pair? _hd1357613636_)
                                      (let ((_e1357913642_
                                             (gx#syntax-e _hd1357613636_)))
                                        (let ((_lp-tl1358113649_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1357913642_)))
                                              (_lp-hd1358013646_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1357913642_))))
                                          (_loop1357813632_
                                           _lp-tl1358113649_
                                           (cons _lp-hd1358013646_
                                                 _body1358213639_))))
                                      (let ((_body1358313652_
                                             (reverse _body1358213639_)))
                                        (let ((_L13656_ _body1358313652_)
                                              (_L13658_ _tl1357413623_)
                                              (_L13659_ _hd1357313620_))
                                          (if (gx#identifier? _L13659_)
                                              (___kont3815638157_
                                               _L13656_
                                               _L13658_
                                               _L13659_)
                                              (_g1353613589_))))))))
                        (_loop1357813632_ _target1357513626_ '()))))
                   (___match3821038211_
                    (lambda (_e1355113695_
                             _hd1355213699_
                             _tl1355313702_
                             _e1355413705_
                             _hd1355513709_
                             _tl1355613712_
                             _e1355713715_
                             _hd1355813719_
                             _tl1355913722_
                             _e1356013725_
                             _hd1356113729_
                             _tl1356213732_)
                      (let ((_L13735_ _hd1356113729_)
                            (_L13737_ _tl1355913722_))
                        (if (gx#identifier-list? _L13737_)
                            (___kont3815438155_ _L13735_ _L13737_)
                            (if (gx#stx-pair/null? _tl1355613712_)
                                (let ((___splice3815838159_
                                       (gx#syntax-split-splice
                                        _tl1355613712_
                                        '0)))
                                  (let ((_tl1357713629_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3815838159_
                                            '1)))
                                        (_target1357513626_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3815838159_
                                            '0))))
                                    (if (gx#stx-null? _tl1357713629_)
                                        (___match3823638237_
                                         _e1355113695_
                                         _hd1355213699_
                                         _tl1355313702_
                                         _e1355413705_
                                         _hd1355513709_
                                         _tl1355613712_
                                         _e1355713715_
                                         _hd1355813719_
                                         _tl1355913722_
                                         ___splice3815838159_
                                         _target1357513626_
                                         _tl1357713629_)
                                        (_g1353613589_))))
                                (_g1353613589_))))))
                   (___match3818038181_
                    (lambda (_e1354013761_
                             _hd1354113765_
                             _tl1354213768_
                             _e1354313771_
                             _hd1354413775_
                             _tl1354513778_
                             _e1354613781_
                             _hd1354713785_
                             _tl1354813788_)
                      (let ((_L13791_ _hd1354713785_)
                            (_L13793_ _hd1354413775_))
                        (if (gx#identifier? _L13793_)
                            (___kont3815238153_ _L13791_ _L13793_)
                            (if (gx#stx-pair? _hd1354413775_)
                                (let ((_e1355713715_
                                       (gx#syntax-e _hd1354413775_)))
                                  (let ((_tl1355913722_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1355713715_)))
                                        (_hd1355813719_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1355713715_))))
                                    (if (gx#identifier? _hd1355813719_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core$<sugar>$<sugar:2>[1]#_g42213_|
                                             _hd1355813719_)
                                            (___match3821038211_
                                             _e1354013761_
                                             _hd1354113765_
                                             _tl1354213768_
                                             _e1354313771_
                                             _hd1354413775_
                                             _tl1354513778_
                                             _e1355713715_
                                             _hd1355813719_
                                             _tl1355913722_
                                             _e1354613781_
                                             _hd1354713785_
                                             _tl1354813788_)
                                            (if (gx#stx-pair/null?
                                                 _tl1354513778_)
                                                (let ((___splice3815838159_
                                                       (gx#syntax-split-splice
                                                        _tl1354513778_
                                                        '0)))
                                                  (let ((_tl1357713629_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3815838159_
                                                            '1)))
                                                        (_target1357513626_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3815838159_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl1357713629_)
                                                        (___match3823638237_
                                                         _e1354013761_
                                                         _hd1354113765_
                                                         _tl1354213768_
                                                         _e1354313771_
                                                         _hd1354413775_
                                                         _tl1354513778_
                                                         _e1355713715_
                                                         _hd1355813719_
                                                         _tl1355913722_
                                                         ___splice3815838159_
                                                         _target1357513626_
                                                         _tl1357713629_)
                                                        (_g1353613589_))))
                                                (_g1353613589_)))
                                        (if (gx#stx-pair/null? _tl1354513778_)
                                            (let ((___splice3815838159_
                                                   (gx#syntax-split-splice
                                                    _tl1354513778_
                                                    '0)))
                                              (let ((_tl1357713629_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3815838159_
                                                        '1)))
                                                    (_target1357513626_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3815838159_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1357713629_)
                                                    (___match3823638237_
                                                     _e1354013761_
                                                     _hd1354113765_
                                                     _tl1354213768_
                                                     _e1354313771_
                                                     _hd1354413775_
                                                     _tl1354513778_
                                                     _e1355713715_
                                                     _hd1355813719_
                                                     _tl1355913722_
                                                     ___splice3815838159_
                                                     _target1357513626_
                                                     _tl1357713629_)
                                                    (_g1353613589_))))
                                            (_g1353613589_)))))
                                (_g1353613589_)))))))
              (if (gx#stx-pair? ___stx3814938150_)
                  (let ((_e1354013761_ (gx#syntax-e ___stx3814938150_)))
                    (let ((_tl1354213768_
                           (let () (declare (not safe)) (##cdr _e1354013761_)))
                          (_hd1354113765_
                           (let ()
                             (declare (not safe))
                             (##car _e1354013761_))))
                      (if (gx#stx-pair? _tl1354213768_)
                          (let ((_e1354313771_ (gx#syntax-e _tl1354213768_)))
                            (let ((_tl1354513778_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1354313771_)))
                                  (_hd1354413775_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1354313771_))))
                              (if (gx#stx-pair? _tl1354513778_)
                                  (let ((_e1354613781_
                                         (gx#syntax-e _tl1354513778_)))
                                    (let ((_tl1354813788_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1354613781_)))
                                          (_hd1354713785_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1354613781_))))
                                      (if (gx#stx-null? _tl1354813788_)
                                          (___match3818038181_
                                           _e1354013761_
                                           _hd1354113765_
                                           _tl1354213768_
                                           _e1354313771_
                                           _hd1354413775_
                                           _tl1354513778_
                                           _e1354613781_
                                           _hd1354713785_
                                           _tl1354813788_)
                                          (if (gx#stx-pair? _hd1354413775_)
                                              (let ((_e1355713715_
                                                     (gx#syntax-e
                                                      _hd1354413775_)))
                                                (let ((_tl1355913722_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1355713715_)))
                                                      (_hd1355813719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1355713715_))))
                                                  (if (gx#stx-pair/null?
                                                       _tl1354513778_)
                                                      (let ((___splice3815838159_
                                                             (gx#syntax-split-splice
                                                              _tl1354513778_
                                                              '0)))
                                                        (let ((_tl1357713629_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice3815838159_ '1)))
                      (_target1357513626_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice3815838159_ '0))))
                  (if (gx#stx-null? _tl1357713629_)
                      (___match3823638237_
                       _e1354013761_
                       _hd1354113765_
                       _tl1354213768_
                       _e1354313771_
                       _hd1354413775_
                       _tl1354513778_
                       _e1355713715_
                       _hd1355813719_
                       _tl1355913722_
                       ___splice3815838159_
                       _target1357513626_
                       _tl1357713629_)
                      (_g1353613589_))))
              (_g1353613589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1353613589_)))))
                                  (if (gx#stx-pair? _hd1354413775_)
                                      (let ((_e1355713715_
                                             (gx#syntax-e _hd1354413775_)))
                                        (let ((_tl1355913722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1355713715_)))
                                              (_hd1355813719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1355713715_))))
                                          (if (gx#stx-pair/null?
                                               _tl1354513778_)
                                              (let ((___splice3815838159_
                                                     (gx#syntax-split-splice
                                                      _tl1354513778_
                                                      '0)))
                                                (let ((_tl1357713629_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3815838159_
                                                          '1)))
                                                      (_target1357513626_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3815838159_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1357713629_)
                                                      (___match3823638237_
                                                       _e1354013761_
                                                       _hd1354113765_
                                                       _tl1354213768_
                                                       _e1354313771_
                                                       _hd1354413775_
                                                       _tl1354513778_
                                                       _e1355713715_
                                                       _hd1355813719_
                                                       _tl1355913722_
                                                       ___splice3815838159_
                                                       _target1357513626_
                                                       _tl1357713629_)
                                                      (_g1353613589_))))
                                              (_g1353613589_))))
                                      (_g1353613589_)))))
                          (_g1353613589_))))
                  (_g1353613589_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx13813_)
        (letrec ((_let-bind?13816_
                  (lambda (_x14739_)
                    (let* ((___stx3823938240_ _x14739_)
                           (_g1474414763_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3823938240_))))
                      (let ((___kont3824238243_
                             (lambda (_L14831_ _L14833_)
                               (_let-head?13819_ _L14833_)))
                            (___kont3824438245_ (lambda (_L14791_) '#t))
                            (___kont3824638247_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx3823938240_)
                            (let ((_e1474814811_
                                   (gx#syntax-e ___stx3823938240_)))
                              (let ((_tl1475014818_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1474814811_)))
                                    (_hd1474914815_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1474814811_))))
                                (if (gx#stx-pair? _tl1475014818_)
                                    (let ((_e1475114821_
                                           (gx#syntax-e _tl1475014818_)))
                                      (let ((_tl1475314828_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1475114821_)))
                                            (_hd1475214825_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1475114821_))))
                                        (if (gx#stx-null? _tl1475314828_)
                                            (___kont3824238243_
                                             _hd1475214825_
                                             _hd1474914815_)
                                            (___kont3824638247_))))
                                    (if (gx#stx-null? _tl1475014818_)
                                        (___kont3824438245_ _hd1474914815_)
                                        (___kont3824638247_)))))
                            (___kont3824638247_))))))
                 (_let-bind13818_
                  (lambda (_x14641_)
                    (let* ((___stx3827338274_ _x14641_)
                           (_g1464514664_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3827338274_))))
                      (let ((___kont3827638277_
                             (lambda (_L14720_ _L14722_) _x14641_))
                            (___kont3827838279_
                             (lambda (_L14681_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _L14681_ '())))))
                        (if (gx#stx-pair? ___stx3827338274_)
                            (let ((_e1464914700_
                                   (gx#syntax-e ___stx3827338274_)))
                              (let ((_tl1465114707_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1464914700_)))
                                    (_hd1465014704_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1464914700_))))
                                (if (gx#stx-pair? _tl1465114707_)
                                    (let ((_e1465214710_
                                           (gx#syntax-e _tl1465114707_)))
                                      (let ((_tl1465414717_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1465214710_)))
                                            (_hd1465314714_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1465214710_))))
                                        (if (gx#stx-null? _tl1465414717_)
                                            (___kont3827638277_
                                             _hd1465314714_
                                             _hd1465014704_)
                                            (_g1464514664_))))
                                    (if (gx#stx-null? _tl1465114707_)
                                        (___kont3827838279_ _hd1465014704_)
                                        (_g1464514664_)))))
                            (_g1464514664_))))))
                 (_let-head?13819_
                  (lambda (_x14581_)
                    (let* ((___stx3830538306_ _x14581_)
                           (_g1458514596_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3830538306_))))
                      (let ((___kont3830838309_
                             (lambda (_L14624_)
                               (gx#stx-andmap gx#identifier? _L14624_)))
                            (___kont3831038311_
                             (lambda () (gx#identifier? _x14581_))))
                        (if (gx#stx-pair? ___stx3830538306_)
                            (let ((_e1458814614_
                                   (gx#syntax-e ___stx3830538306_)))
                              (let ((_tl1459014621_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1458814614_)))
                                    (_hd1458914618_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1458814614_))))
                                (if (gx#identifier? _hd1458914618_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g42214_|
                                         _hd1458914618_)
                                        (___kont3830838309_ _tl1459014621_)
                                        (___kont3831038311_))
                                    (___kont3831038311_))))
                            (___kont3831038311_))))))
                 (_let-head13820_
                  (lambda (_x14521_)
                    (let* ((___stx3832538326_ _x14521_)
                           (_g1452514536_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3832538326_))))
                      (let ((___kont3832838329_ (lambda (_L14564_) _L14564_))
                            (___kont3833038331_ (lambda () (list _x14521_))))
                        (if (gx#stx-pair? ___stx3832538326_)
                            (let ((_e1452814554_
                                   (gx#syntax-e ___stx3832538326_)))
                              (let ((_tl1453014561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1452814554_)))
                                    (_hd1452914558_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1452814554_))))
                                (if (gx#identifier? _hd1452914558_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g42215_|
                                         _hd1452914558_)
                                        (___kont3832838329_ _tl1453014561_)
                                        (___kont3833038331_))
                                    (___kont3833038331_))))
                            (___kont3833038331_)))))))
          (let* ((___stx3834538346_ _stx13813_)
                 (_g1382413896_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3834538346_))))
            (let ((___kont3834838349_
                   (lambda (_L14494_ _L14496_ _L14497_ _L14498_)
                     (cons _L14498_
                           (cons (cons (cons _L14497_ (cons _L14496_ '())) '())
                                 _L14494_))))
                  (___kont3835038351_
                   (lambda (_L14416_ _L14418_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _L14418_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_g1443814441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1443914444_)
                    (cons _g1443814441_ _g1443914444_))
                  '()
                  _L14416_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (___kont3835438355_
                   (lambda (_L13983_ _L13985_)
                     (let* ((_g1401614042_
                             (lambda (_g1401714038_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1401714038_)))
                            (_g1401514327_
                             (lambda (_g1401714046_)
                               (if (gx#stx-pair/null? _g1401714046_)
                                   (let ((_g42216_
                                          (gx#syntax-split-splice
                                           _g1401714046_
                                           '0)))
                                     (begin
                                       (let ((_g42217_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g42216_)
                                                    (##vector-length _g42216_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g42217_ 2)))
                                             (error "Context expects 2 values"
                                                    _g42217_)))
                                       (let ((_target1402014049_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g42216_ 0)))
                                             (_tl1402214052_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g42216_ 1))))
                                         (if (gx#stx-null? _tl1402214052_)
                                             (letrec ((_loop1402314055_
                                                       (lambda (_hd1402114059_
                                                                _e1402714062_
                                                                _hd1402814064_)
                                                         (if (gx#stx-pair?
                                                              _hd1402114059_)
                                                             (let ((_e1402414067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1402114059_)))
                       (let ((_lp-hd1402514071_
                              (let ()
                                (declare (not safe))
                                (##car _e1402414067_)))
                             (_lp-tl1402614074_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1402414067_))))
                         (if (gx#stx-pair? _lp-hd1402514071_)
                             (let ((_e1403114077_
                                    (gx#syntax-e _lp-hd1402514071_)))
                               (let ((_hd1403214081_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1403114077_)))
                                     (_tl1403314084_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1403114077_))))
                                 (if (gx#stx-pair? _tl1403314084_)
                                     (let ((_e1403414087_
                                            (gx#syntax-e _tl1403314084_)))
                                       (let ((_hd1403514091_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1403414087_)))
                                             (_tl1403614094_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1403414087_))))
                                         (if (gx#stx-null? _tl1403614094_)
                                             (_loop1402314055_
                                              _lp-tl1402614074_
                                              (cons _hd1403514091_
                                                    _e1402714062_)
                                              (cons _hd1403214081_
                                                    _hd1402814064_))
                                             (_g1401614042_ _g1401714046_))))
                                     (_g1401614042_ _g1401714046_))))
                             (_g1401614042_ _g1401714046_))))
                     (let ((_e1402914097_ (reverse _e1402714062_))
                           (_hd1403014100_ (reverse _hd1402814064_)))
                       ((lambda (_L14103_ _L14105_)
                          (let ()
                            (let* ((_g1412114138_
                                    (lambda (_g1412214134_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g1412214134_)))
                                   (_g1412014315_
                                    (lambda (_g1412214142_)
                                      (if (gx#stx-pair/null? _g1412214142_)
                                          (let ((_g42218_
                                                 (gx#syntax-split-splice
                                                  _g1412214142_
                                                  '0)))
                                            (begin
                                              (let ((_g42219_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g42218_)
                                                           (##vector-length
                                                            _g42218_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g42219_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g42219_)))
                                              (let ((_target1412414145_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42218_
                                                        0)))
                                                    (_tl1412614148_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42218_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1412614148_)
                                                    (letrec ((_loop1412714151_
                                                              (lambda (_hd1412514155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _$e1413114158_)
                        (if (gx#stx-pair? _hd1412514155_)
                            (let ((_e1412814161_ (gx#syntax-e _hd1412514155_)))
                              (let ((_lp-hd1412914165_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1412814161_)))
                                    (_lp-tl1413014168_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1412814161_))))
                                (_loop1412714151_
                                 _lp-tl1413014168_
                                 (cons _lp-hd1412914165_ _$e1413114158_))))
                            (let ((_$e1413214171_ (reverse _$e1413114158_)))
                              ((lambda (_L14175_)
                                 (let ()
                                   (let* ((_g1419214209_
                                           (lambda (_g1419314205_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1419314205_)))
                                          (_g1419114303_
                                           (lambda (_g1419314213_)
                                             (if (gx#stx-pair/null?
                                                  _g1419314213_)
                                                 (let ((_g42220_
                                                        (gx#syntax-split-splice
                                                         _g1419314213_
                                                         '0)))
                                                   (begin
                                                     (let ((_g42221_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g42220_)
                          (##vector-length _g42220_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g42221_ 2)))
                   (error "Context expects 2 values" _g42221_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1419514216_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g42220_
                                                               0)))
                                                           (_tl1419714219_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g42220_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl1419714219_)
                                                           (letrec ((_loop1419814222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1419614226_ _hd-bind1420214229_)
                               (if (gx#stx-pair? _hd1419614226_)
                                   (let ((_e1419914232_
                                          (gx#syntax-e _hd1419614226_)))
                                     (let ((_lp-hd1420014236_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1419914232_)))
                                           (_lp-tl1420114239_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1419914232_))))
                                       (_loop1419814222_
                                        _lp-tl1420114239_
                                        (cons _lp-hd1420014236_
                                              _hd-bind1420214229_))))
                                   (let ((_hd-bind1420314242_
                                          (reverse _hd-bind1420214229_)))
                                     ((lambda (_L14246_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (begin
                                                          (gx#syntax-check-splice-targets
                                                           _L14103_
                                                           _L14175_)
                                                          (foldr (lambda (_g1426414275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1426514278_
                                  _g1426614280_)
                           (cons (cons (cons _g1426514278_ '())
                                       (cons _g1426414275_ '()))
                                 _g1426614280_))
                         '()
                         _L14103_
                         _L14175_))
                (cons (cons (gx#datum->syntax '#f 'and)
                            (foldr (lambda (_g1426714283_ _g1426814286_)
                                     (cons _g1426714283_ _g1426814286_))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'let-values)
                                               (cons (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L14175_
                                                        _L14246_)
                                                       (foldr (lambda (_g1426914289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1427014292_
                               _g1427114294_)
                        (cons (cons _g1427014292_ (cons _g1426914289_ '()))
                              _g1427114294_))
                      '()
                      _L14175_
                      _L14246_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (foldr (lambda (_g1427214297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1427314300_)
                      (cons _g1427214297_ _g1427314300_))
                    '()
                    _L13983_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())
                                   _L14175_))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _hd-bind1420314242_))))))
                     (_loop1419814222_ _target1419514216_ '()))
                   (_g1419214209_ _g1419314213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1419214209_
                                                  _g1419314213_)))))
                                     (_g1419114303_
                                      (gx#stx-map
                                       _let-head13820_
                                       (foldr (lambda (_g1430614309_
                                                       _g1430714312_)
                                                (cons _g1430614309_
                                                      _g1430714312_))
                                              '()
                                              _L14105_))))))
                               _$e1413214171_))))))
              (_loop1412714151_ _target1412414145_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1412114138_
                                                     _g1412214142_)))))
                                          (_g1412114138_ _g1412214142_)))))
                              (_g1412014315_
                               (gx#gentemps
                                (foldr (lambda (_g1431814321_ _g1431914324_)
                                         (cons _g1431814321_ _g1431914324_))
                                       '()
                                       _L14105_))))))
                        _e1402914097_
                        _hd1403014100_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1402314055_
                                                _target1402014049_
                                                '()
                                                '()))
                                             (_g1401614042_ _g1401714046_)))))
                                   (_g1401614042_ _g1401714046_)))))
                       (_g1401514327_
                        (gx#stx-map
                         _let-bind13818_
                         (foldr (lambda (_g1433014333_ _g1433114336_)
                                  (cons _g1433014333_ _g1433114336_))
                                '()
                                _L13985_)))))))
              (let* ((___match3844238443_
                      (lambda (_e1386713903_
                               _hd1386813907_
                               _tl1386913910_
                               _e1387013913_
                               _hd1387113917_
                               _tl1387213920_
                               ___splice3835638357_
                               _target1387313923_
                               _tl1387513926_)
                        (letrec ((_loop1387613929_
                                  (lambda (_hd1387413933_ _bind1388013936_)
                                    (if (gx#stx-pair? _hd1387413933_)
                                        (let ((_e1387713939_
                                               (gx#syntax-e _hd1387413933_)))
                                          (let ((_lp-tl1387913946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1387713939_)))
                                                (_lp-hd1387813943_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1387713939_))))
                                            (_loop1387613929_
                                             _lp-tl1387913946_
                                             (cons _lp-hd1387813943_
                                                   _bind1388013936_))))
                                        (let ((_bind1388113949_
                                               (reverse _bind1388013936_)))
                                          (if (gx#stx-pair/null?
                                               _tl1387213920_)
                                              (let ((___splice3835838359_
                                                     (gx#syntax-split-splice
                                                      _tl1387213920_
                                                      '0)))
                                                (let ((_tl1388413956_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3835838359_
                                                          '1)))
                                                      (_target1388213953_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3835838359_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1388413956_)
                                                      (letrec ((_loop1388513959_
                                                                (lambda (_hd1388313963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1388913966_)
                          (if (gx#stx-pair? _hd1388313963_)
                              (let ((_e1388613969_
                                     (gx#syntax-e _hd1388313963_)))
                                (let ((_lp-tl1388813976_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1388613969_)))
                                      (_lp-hd1388713973_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1388613969_))))
                                  (_loop1388513959_
                                   _lp-tl1388813976_
                                   (cons _lp-hd1388713973_ _body1388913966_))))
                              (let ((_body1389013979_
                                     (reverse _body1388913966_)))
                                (let ((_L13983_ _body1389013979_)
                                      (_L13985_ _bind1388113949_))
                                  (if (gx#stx-andmap
                                       _let-bind?13816_
                                       (foldr (lambda (_g1400714010_
                                                       _g1400814013_)
                                                (cons _g1400714010_
                                                      _g1400814013_))
                                              '()
                                              _L13985_))
                                      (___kont3835438355_ _L13983_ _L13985_)
                                      (_g1382413896_))))))))
                (_loop1388513959_ _target1388213953_ '()))
              (_g1382413896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1382413896_)))))))
                          (_loop1387613929_ _target1387313923_ '()))))
                     (___match3842238423_
                      (lambda (_e1384414346_
                               _hd1384514350_
                               _tl1384614353_
                               _e1384714356_
                               _hd1384814360_
                               _tl1384914363_
                               _e1385014366_
                               _hd1385114370_
                               _tl1385214373_
                               _e1385314376_
                               _hd1385414380_
                               _tl1385514383_
                               ___splice3835238353_
                               _target1385614386_
                               _tl1385814389_)
                        (letrec ((_loop1385914392_
                                  (lambda (_hd1385714396_ _body1386314399_)
                                    (if (gx#stx-pair? _hd1385714396_)
                                        (let ((_e1386014402_
                                               (gx#syntax-e _hd1385714396_)))
                                          (let ((_lp-tl1386214409_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1386014402_)))
                                                (_lp-hd1386114406_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1386014402_))))
                                            (_loop1385914392_
                                             _lp-tl1386214409_
                                             (cons _lp-hd1386114406_
                                                   _body1386314399_))))
                                        (let ((_body1386414412_
                                               (reverse _body1386314399_)))
                                          (___kont3835038351_
                                           _body1386414412_
                                           _hd1385414380_))))))
                          (_loop1385914392_ _target1385614386_ '()))))
                     (___match3838638387_
                      (lambda (_e1383014454_
                               _hd1383114458_
                               _tl1383214461_
                               _e1383314464_
                               _hd1383414468_
                               _tl1383514471_
                               _e1383614474_
                               _hd1383714478_
                               _tl1383814481_
                               _e1383914484_
                               _hd1384014488_
                               _tl1384114491_)
                        (let ((_L14494_ _tl1383514471_)
                              (_L14496_ _hd1384014488_)
                              (_L14497_ _hd1383714478_)
                              (_L14498_ _hd1383114458_))
                          (if (_let-head?13819_ _L14497_)
                              (___kont3834838349_
                               _L14494_
                               _L14496_
                               _L14497_
                               _L14498_)
                              (if (gx#stx-pair? _hd1383714478_)
                                  (let ((_e1385314376_
                                         (gx#syntax-e _hd1383714478_)))
                                    (let ((_tl1385514383_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1385314376_)))
                                          (_hd1385414380_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1385314376_))))
                                      (if (gx#stx-pair/null? _hd1383414468_)
                                          (let ((___splice3835638357_
                                                 (gx#syntax-split-splice
                                                  _hd1383414468_
                                                  '0)))
                                            (let ((_tl1387513926_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3835638357_
                                                      '1)))
                                                  (_target1387313923_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3835638357_
                                                      '0))))
                                              (if (gx#stx-null? _tl1387513926_)
                                                  (___match3844238443_
                                                   _e1383014454_
                                                   _hd1383114458_
                                                   _tl1383214461_
                                                   _e1383314464_
                                                   _hd1383414468_
                                                   _tl1383514471_
                                                   ___splice3835638357_
                                                   _target1387313923_
                                                   _tl1387513926_)
                                                  (_g1382413896_))))
                                          (_g1382413896_))))
                                  (if (gx#stx-pair/null? _hd1383414468_)
                                      (let ((___splice3835638357_
                                             (gx#syntax-split-splice
                                              _hd1383414468_
                                              '0)))
                                        (let ((_tl1387513926_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3835638357_
                                                  '1)))
                                              (_target1387313923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3835638357_
                                                  '0))))
                                          (if (gx#stx-null? _tl1387513926_)
                                              (___match3844238443_
                                               _e1383014454_
                                               _hd1383114458_
                                               _tl1383214461_
                                               _e1383314464_
                                               _hd1383414468_
                                               _tl1383514471_
                                               ___splice3835638357_
                                               _target1387313923_
                                               _tl1387513926_)
                                              (_g1382413896_))))
                                      (_g1382413896_))))))))
                (if (gx#stx-pair? ___stx3834538346_)
                    (let ((_e1383014454_ (gx#syntax-e ___stx3834538346_)))
                      (let ((_tl1383214461_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1383014454_)))
                            (_hd1383114458_
                             (let ()
                               (declare (not safe))
                               (##car _e1383014454_))))
                        (if (gx#stx-pair? _tl1383214461_)
                            (let ((_e1383314464_ (gx#syntax-e _tl1383214461_)))
                              (let ((_tl1383514471_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1383314464_)))
                                    (_hd1383414468_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1383314464_))))
                                (if (gx#stx-pair? _hd1383414468_)
                                    (let ((_e1383614474_
                                           (gx#syntax-e _hd1383414468_)))
                                      (let ((_tl1383814481_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1383614474_)))
                                            (_hd1383714478_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1383614474_))))
                                        (if (gx#stx-pair? _tl1383814481_)
                                            (let ((_e1383914484_
                                                   (gx#syntax-e
                                                    _tl1383814481_)))
                                              (let ((_tl1384114491_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1383914484_)))
                                                    (_hd1384014488_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1383914484_))))
                                                (if (gx#stx-null?
                                                     _tl1384114491_)
                                                    (___match3838638387_
                                                     _e1383014454_
                                                     _hd1383114458_
                                                     _tl1383214461_
                                                     _e1383314464_
                                                     _hd1383414468_
                                                     _tl1383514471_
                                                     _e1383614474_
                                                     _hd1383714478_
                                                     _tl1383814481_
                                                     _e1383914484_
                                                     _hd1384014488_
                                                     _tl1384114491_)
                                                    (if (gx#stx-pair?
                                                         _hd1383714478_)
                                                        (let ((_e1385314376_
                                                               (gx#syntax-e
                                                                _hd1383714478_)))
                                                          (let ((_tl1385514383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1385314376_)))
                        (_hd1385414380_
                         (let () (declare (not safe)) (##car _e1385314376_))))
                    (if (gx#stx-pair/null? _hd1383414468_)
                        (let ((___splice3835638357_
                               (gx#syntax-split-splice _hd1383414468_ '0)))
                          (let ((_tl1387513926_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3835638357_ '1)))
                                (_target1387313923_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3835638357_ '0))))
                            (if (gx#stx-null? _tl1387513926_)
                                (___match3844238443_
                                 _e1383014454_
                                 _hd1383114458_
                                 _tl1383214461_
                                 _e1383314464_
                                 _hd1383414468_
                                 _tl1383514471_
                                 ___splice3835638357_
                                 _target1387313923_
                                 _tl1387513926_)
                                (_g1382413896_))))
                        (_g1382413896_))))
                (if (gx#stx-pair/null? _hd1383414468_)
                    (let ((___splice3835638357_
                           (gx#syntax-split-splice _hd1383414468_ '0)))
                      (let ((_tl1387513926_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3835638357_ '1)))
                            (_target1387313923_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3835638357_ '0))))
                        (if (gx#stx-null? _tl1387513926_)
                            (___match3844238443_
                             _e1383014454_
                             _hd1383114458_
                             _tl1383214461_
                             _e1383314464_
                             _hd1383414468_
                             _tl1383514471_
                             ___splice3835638357_
                             _target1387313923_
                             _tl1387513926_)
                            (_g1382413896_))))
                    (_g1382413896_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _hd1383714478_)
                                                (let ((_e1385314376_
                                                       (gx#syntax-e
                                                        _hd1383714478_)))
                                                  (let ((_tl1385514383_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1385314376_)))
                                                        (_hd1385414380_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1385314376_))))
                                                    (if (gx#stx-null?
                                                         _tl1385514383_)
                                                        (if (gx#stx-null?
                                                             _tl1383814481_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1383514471_)
                        (let ((___splice3835238353_
                               (gx#syntax-split-splice _tl1383514471_ '0)))
                          (let ((_tl1385814389_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3835238353_ '1)))
                                (_target1385614386_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3835238353_ '0))))
                            (if (gx#stx-null? _tl1385814389_)
                                (___match3842238423_
                                 _e1383014454_
                                 _hd1383114458_
                                 _tl1383214461_
                                 _e1383314464_
                                 _hd1383414468_
                                 _tl1383514471_
                                 _e1383614474_
                                 _hd1383714478_
                                 _tl1383814481_
                                 _e1385314376_
                                 _hd1385414380_
                                 _tl1385514383_
                                 ___splice3835238353_
                                 _target1385614386_
                                 _tl1385814389_)
                                (if (gx#stx-pair/null? _hd1383414468_)
                                    (let ((___splice3835638357_
                                           (gx#syntax-split-splice
                                            _hd1383414468_
                                            '0)))
                                      (let ((_tl1387513926_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3835638357_
                                                '1)))
                                            (_target1387313923_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3835638357_
                                                '0))))
                                        (if (gx#stx-null? _tl1387513926_)
                                            (___match3844238443_
                                             _e1383014454_
                                             _hd1383114458_
                                             _tl1383214461_
                                             _e1383314464_
                                             _hd1383414468_
                                             _tl1383514471_
                                             ___splice3835638357_
                                             _target1387313923_
                                             _tl1387513926_)
                                            (_g1382413896_))))
                                    (_g1382413896_)))))
                        (if (gx#stx-pair/null? _hd1383414468_)
                            (let ((___splice3835638357_
                                   (gx#syntax-split-splice _hd1383414468_ '0)))
                              (let ((_tl1387513926_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice3835638357_ '1)))
                                    (_target1387313923_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice3835638357_
                                        '0))))
                                (if (gx#stx-null? _tl1387513926_)
                                    (___match3844238443_
                                     _e1383014454_
                                     _hd1383114458_
                                     _tl1383214461_
                                     _e1383314464_
                                     _hd1383414468_
                                     _tl1383514471_
                                     ___splice3835638357_
                                     _target1387313923_
                                     _tl1387513926_)
                                    (_g1382413896_))))
                            (_g1382413896_)))
                    (if (gx#stx-pair/null? _hd1383414468_)
                        (let ((___splice3835638357_
                               (gx#syntax-split-splice _hd1383414468_ '0)))
                          (let ((_tl1387513926_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3835638357_ '1)))
                                (_target1387313923_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3835638357_ '0))))
                            (if (gx#stx-null? _tl1387513926_)
                                (___match3844238443_
                                 _e1383014454_
                                 _hd1383114458_
                                 _tl1383214461_
                                 _e1383314464_
                                 _hd1383414468_
                                 _tl1383514471_
                                 ___splice3835638357_
                                 _target1387313923_
                                 _tl1387513926_)
                                (_g1382413896_))))
                        (_g1382413896_)))
                (if (gx#stx-pair/null? _hd1383414468_)
                    (let ((___splice3835638357_
                           (gx#syntax-split-splice _hd1383414468_ '0)))
                      (let ((_tl1387513926_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3835638357_ '1)))
                            (_target1387313923_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3835638357_ '0))))
                        (if (gx#stx-null? _tl1387513926_)
                            (___match3844238443_
                             _e1383014454_
                             _hd1383114458_
                             _tl1383214461_
                             _e1383314464_
                             _hd1383414468_
                             _tl1383514471_
                             ___splice3835638357_
                             _target1387313923_
                             _tl1387513926_)
                            (_g1382413896_))))
                    (_g1382413896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd1383414468_)
                                                    (let ((___splice3835638357_
                                                           (gx#syntax-split-splice
                                                            _hd1383414468_
                                                            '0)))
                                                      (let ((_tl1387513926_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice3835638357_ '1)))
                    (_target1387313923_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice3835638357_ '0))))
                (if (gx#stx-null? _tl1387513926_)
                    (___match3844238443_
                     _e1383014454_
                     _hd1383114458_
                     _tl1383214461_
                     _e1383314464_
                     _hd1383414468_
                     _tl1383514471_
                     ___splice3835638357_
                     _target1387313923_
                     _tl1387513926_)
                    (_g1382413896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1382413896_))))))
                                    (if (gx#stx-pair/null? _hd1383414468_)
                                        (let ((___splice3835638357_
                                               (gx#syntax-split-splice
                                                _hd1383414468_
                                                '0)))
                                          (let ((_tl1387513926_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3835638357_
                                                    '1)))
                                                (_target1387313923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3835638357_
                                                    '0))))
                                            (if (gx#stx-null? _tl1387513926_)
                                                (___match3844238443_
                                                 _e1383014454_
                                                 _hd1383114458_
                                                 _tl1383214461_
                                                 _e1383314464_
                                                 _hd1383414468_
                                                 _tl1383514471_
                                                 ___splice3835638357_
                                                 _target1387313923_
                                                 _tl1387513926_)
                                                (_g1382413896_))))
                                        (_g1382413896_)))))
                            (_g1382413896_))))
                    (_g1382413896_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx14856_)
        (let* ((___stx3844538446_ _$stx14856_)
               (_g1486214913_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3844538446_))))
          (let ((___kont3844838449_ (lambda () '#t))
                (___kont3845038451_
                 (lambda (_L15071_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g1508715090_ _g1508815093_)
                                        (cons _g1508715090_ _g1508815093_))
                                      '()
                                      _L15071_)))))
                (___kont3845438455_
                 (lambda (_L14980_ _L14982_ _L14983_ _L14984_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _L14983_ '())
                               (cons (cons _L14984_
                                           (cons _L14982_
                                                 (foldr (lambda (_g1500515008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1500615011_)
                  (cons _g1500515008_ _g1500615011_))
                '()
                _L14980_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match3852238523_
                    (lambda (_e1489014920_
                             _hd1489114924_
                             _tl1489214927_
                             _e1489314930_
                             _hd1489414934_
                             _tl1489514937_
                             _e1489614940_
                             _hd1489714944_
                             _tl1489814947_
                             ___splice3845638457_
                             _target1489914950_
                             _tl1490114953_)
                      (letrec ((_loop1490214956_
                                (lambda (_hd1490014960_ _body1490614963_)
                                  (if (gx#stx-pair? _hd1490014960_)
                                      (let ((_e1490314966_
                                             (gx#syntax-e _hd1490014960_)))
                                        (let ((_lp-tl1490514973_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1490314966_)))
                                              (_lp-hd1490414970_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1490314966_))))
                                          (_loop1490214956_
                                           _lp-tl1490514973_
                                           (cons _lp-hd1490414970_
                                                 _body1490614963_))))
                                      (let ((_body1490714976_
                                             (reverse _body1490614963_)))
                                        (___kont3845438455_
                                         _body1490714976_
                                         _tl1489814947_
                                         _hd1489714944_
                                         _hd1489114924_))))))
                        (_loop1490214956_ _target1489914950_ '()))))
                   (___match3849638497_
                    (lambda (_e1487115021_
                             _hd1487215025_
                             _tl1487315028_
                             _e1487415031_
                             _hd1487515035_
                             _tl1487615038_
                             ___splice3845238453_
                             _target1487715041_
                             _tl1487915044_)
                      (letrec ((_loop1488015047_
                                (lambda (_hd1487815051_ _body1488415054_)
                                  (if (gx#stx-pair? _hd1487815051_)
                                      (let ((_e1488115057_
                                             (gx#syntax-e _hd1487815051_)))
                                        (let ((_lp-tl1488315064_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1488115057_)))
                                              (_lp-hd1488215061_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1488115057_))))
                                          (_loop1488015047_
                                           _lp-tl1488315064_
                                           (cons _lp-hd1488215061_
                                                 _body1488415054_))))
                                      (let ((_body1488515067_
                                             (reverse _body1488415054_)))
                                        (___kont3845038451_
                                         _body1488515067_))))))
                        (_loop1488015047_ _target1487715041_ '())))))
              (if (gx#stx-pair? ___stx3844538446_)
                  (let ((_e1486415103_ (gx#syntax-e ___stx3844538446_)))
                    (let ((_tl1486615110_
                           (let () (declare (not safe)) (##cdr _e1486415103_)))
                          (_hd1486515107_
                           (let ()
                             (declare (not safe))
                             (##car _e1486415103_))))
                      (if (gx#stx-pair? _tl1486615110_)
                          (let ((_e1486715113_ (gx#syntax-e _tl1486615110_)))
                            (let ((_tl1486915120_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1486715113_)))
                                  (_hd1486815117_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1486715113_))))
                              (if (gx#stx-null? _hd1486815117_)
                                  (if (gx#stx-null? _tl1486915120_)
                                      (___kont3844838449_)
                                      (if (gx#stx-pair/null? _tl1486915120_)
                                          (let ((___splice3845238453_
                                                 (gx#syntax-split-splice
                                                  _tl1486915120_
                                                  '0)))
                                            (let ((_tl1487915044_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3845238453_
                                                      '1)))
                                                  (_target1487715041_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3845238453_
                                                      '0))))
                                              (if (gx#stx-null? _tl1487915044_)
                                                  (___match3849638497_
                                                   _e1486415103_
                                                   _hd1486515107_
                                                   _tl1486615110_
                                                   _e1486715113_
                                                   _hd1486815117_
                                                   _tl1486915120_
                                                   ___splice3845238453_
                                                   _target1487715041_
                                                   _tl1487915044_)
                                                  (_g1486214913_))))
                                          (_g1486214913_)))
                                  (if (gx#stx-pair? _hd1486815117_)
                                      (let ((_e1489614940_
                                             (gx#syntax-e _hd1486815117_)))
                                        (let ((_tl1489814947_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1489614940_)))
                                              (_hd1489714944_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1489614940_))))
                                          (if (gx#stx-pair/null?
                                               _tl1486915120_)
                                              (let ((___splice3845638457_
                                                     (gx#syntax-split-splice
                                                      _tl1486915120_
                                                      '0)))
                                                (let ((_tl1490114953_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3845638457_
                                                          '1)))
                                                      (_target1489914950_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3845638457_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1490114953_)
                                                      (___match3852238523_
                                                       _e1486415103_
                                                       _hd1486515107_
                                                       _tl1486615110_
                                                       _e1486715113_
                                                       _hd1486815117_
                                                       _tl1486915120_
                                                       _e1489614940_
                                                       _hd1489714944_
                                                       _tl1489814947_
                                                       ___splice3845638457_
                                                       _target1489914950_
                                                       _tl1490114953_)
                                                      (_g1486214913_))))
                                              (_g1486214913_))))
                                      (_g1486214913_)))))
                          (_g1486214913_))))
                  (_g1486214913_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx15133_)
        (let* ((___stx3852538526_ _$stx15133_)
               (_g1514415222_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3852538526_))))
          (let ((___kont3852838529_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (___kont3853038531_
                 (lambda (_L15553_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _L15553_ '()))))
                (___kont3853238533_
                 (lambda (_L15501_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _L15501_ '()))))
                (___kont3853438535_ (lambda (_L15448_) _L15448_))
                (___kont3853638537_ (lambda (_L15390_ _L15392_) _L15392_))
                (___kont3853838539_
                 (lambda (_L15332_ _L15334_ _L15335_ _L15336_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _L15336_ _L15332_)
                                     (cons _L15335_ '()))))))
                (___kont3854038541_
                 (lambda (_L15278_ _L15280_ _L15281_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _L15280_ (cons (cons _L15281_ _L15278_) '())))))
                (___kont3854238543_ (lambda (_L15239_) _L15239_)))
            (let* ((___match3866438665_
                    (lambda (_e1519515302_
                             _hd1519615306_
                             _tl1519715309_
                             _e1519815312_
                             _hd1519915316_
                             _tl1520015319_
                             _e1520115322_
                             _hd1520215326_
                             _tl1520315329_)
                      (let ((_L15332_ _tl1520315329_)
                            (_L15334_ _hd1520215326_)
                            (_L15335_ _hd1519915316_)
                            (_L15336_ _hd1519615306_))
                        (if (gx#ellipsis? _L15334_)
                            (___kont3853838539_
                             _L15332_
                             _L15334_
                             _L15335_
                             _L15336_)
                            (___kont3854038541_
                             _tl1520015319_
                             _hd1519915316_
                             _hd1519615306_)))))
                   (___match3864638647_
                    (lambda (_e1518215360_
                             _hd1518315364_
                             _tl1518415367_
                             _e1518515370_
                             _hd1518615374_
                             _tl1518715377_
                             _e1518815380_
                             _hd1518915384_
                             _tl1519015387_)
                      (let ((_L15390_ _hd1518915384_)
                            (_L15392_ _hd1518615374_))
                        (if (gx#ellipsis? _L15390_)
                            (___kont3853638537_ _L15390_ _L15392_)
                            (___match3866438665_
                             _e1518215360_
                             _hd1518315364_
                             _tl1518415367_
                             _e1518515370_
                             _hd1518615374_
                             _tl1518715377_
                             _e1518815380_
                             _hd1518915384_
                             _tl1519015387_))))))
              (if (gx#stx-pair? ___stx3852538526_)
                  (let ((_e1514615575_ (gx#syntax-e ___stx3852538526_)))
                    (let ((_tl1514815582_
                           (let () (declare (not safe)) (##cdr _e1514615575_)))
                          (_hd1514715579_
                           (let ()
                             (declare (not safe))
                             (##car _e1514615575_))))
                      (if (gx#stx-null? _tl1514815582_)
                          (___kont3852838529_)
                          (if (gx#stx-pair? _tl1514815582_)
                              (let ((_e1515315533_
                                     (gx#syntax-e _tl1514815582_)))
                                (let ((_tl1515515540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1515315533_)))
                                      (_hd1515415537_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1515315533_))))
                                  (if (gx#identifier? _hd1515415537_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g42222_|
                                           _hd1515415537_)
                                          (if (gx#stx-pair? _tl1515515540_)
                                              (let ((_e1515615543_
                                                     (gx#syntax-e
                                                      _tl1515515540_)))
                                                (let ((_tl1515815550_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1515615543_)))
                                                      (_hd1515715547_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1515615543_))))
                                                  (if (gx#stx-null?
                                                       _tl1515815550_)
                                                      (___kont3853038531_
                                                       _hd1515715547_)
                                                      (___match3866438665_
                                                       _e1514615575_
                                                       _hd1514715579_
                                                       _tl1514815582_
                                                       _e1515315533_
                                                       _hd1515415537_
                                                       _tl1515515540_
                                                       _e1515615543_
                                                       _hd1515715547_
                                                       _tl1515815550_))))
                                              (___kont3854038541_
                                               _tl1515515540_
                                               _hd1515415537_
                                               _hd1514715579_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g42223_|
                                               _hd1515415537_)
                                              (if (gx#stx-pair? _tl1515515540_)
                                                  (let ((_e1516615491_
                                                         (gx#syntax-e
                                                          _tl1515515540_)))
                                                    (let ((_tl1516815498_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1516615491_)))
                                                          (_hd1516715495_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1516615491_))))
                                                      (if (gx#stx-null?
                                                           _tl1516815498_)
                                                          (___kont3853238533_
                                                           _hd1516715495_)
                                                          (___match3866438665_
                                                           _e1514615575_
                                                           _hd1514715579_
                                                           _tl1514815582_
                                                           _e1515315533_
                                                           _hd1515415537_
                                                           _tl1515515540_
                                                           _e1516615491_
                                                           _hd1516715495_
                                                           _tl1516815498_))))
                                                  (___kont3854038541_
                                                   _tl1515515540_
                                                   _hd1515415537_
                                                   _hd1514715579_))
                                              (if (gx#stx-pair? _tl1515515540_)
                                                  (let ((_e1518815380_
                                                         (gx#syntax-e
                                                          _tl1515515540_)))
                                                    (let ((_tl1519015387_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1518815380_)))
                                                          (_hd1518915384_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1518815380_))))
                                                      (if (gx#stx-null?
                                                           _tl1519015387_)
                                                          (___match3864638647_
                                                           _e1514615575_
                                                           _hd1514715579_
                                                           _tl1514815582_
                                                           _e1515315533_
                                                           _hd1515415537_
                                                           _tl1515515540_
                                                           _e1518815380_
                                                           _hd1518915384_
                                                           _tl1519015387_)
                                                          (___match3866438665_
                                                           _e1514615575_
                                                           _hd1514715579_
                                                           _tl1514815582_
                                                           _e1515315533_
                                                           _hd1515415537_
                                                           _tl1515515540_
                                                           _e1518815380_
                                                           _hd1518915384_
                                                           _tl1519015387_))))
                                                  (___kont3854038541_
                                                   _tl1515515540_
                                                   _hd1515415537_
                                                   _hd1514715579_))))
                                      (if (gx#stx-datum? _hd1515415537_)
                                          (let ((_e1517615434_
                                                 (gx#stx-e _hd1515415537_)))
                                            (if (equal? _e1517615434_ '::)
                                                (if (gx#stx-pair?
                                                     _tl1515515540_)
                                                    (let ((_e1517715438_
                                                           (gx#syntax-e
                                                            _tl1515515540_)))
                                                      (let ((_tl1517915445_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1517715438_)))
                    (_hd1517815442_
                     (let () (declare (not safe)) (##car _e1517715438_))))
                (if (gx#stx-null? _tl1517915445_)
                    (___kont3853438535_ _hd1517815442_)
                    (___match3866438665_
                     _e1514615575_
                     _hd1514715579_
                     _tl1514815582_
                     _e1515315533_
                     _hd1515415537_
                     _tl1515515540_
                     _e1517715438_
                     _hd1517815442_
                     _tl1517915445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3854038541_
                                                     _tl1515515540_
                                                     _hd1515415537_
                                                     _hd1514715579_))
                                                (if (gx#stx-pair?
                                                     _tl1515515540_)
                                                    (let ((_e1518815380_
                                                           (gx#syntax-e
                                                            _tl1515515540_)))
                                                      (let ((_tl1519015387_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1518815380_)))
                    (_hd1518915384_
                     (let () (declare (not safe)) (##car _e1518815380_))))
                (if (gx#stx-null? _tl1519015387_)
                    (___match3864638647_
                     _e1514615575_
                     _hd1514715579_
                     _tl1514815582_
                     _e1515315533_
                     _hd1515415537_
                     _tl1515515540_
                     _e1518815380_
                     _hd1518915384_
                     _tl1519015387_)
                    (___match3866438665_
                     _e1514615575_
                     _hd1514715579_
                     _tl1514815582_
                     _e1515315533_
                     _hd1515415537_
                     _tl1515515540_
                     _e1518815380_
                     _hd1518915384_
                     _tl1519015387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3854038541_
                                                     _tl1515515540_
                                                     _hd1515415537_
                                                     _hd1514715579_))))
                                          (if (gx#stx-pair? _tl1515515540_)
                                              (let ((_e1518815380_
                                                     (gx#syntax-e
                                                      _tl1515515540_)))
                                                (let ((_tl1519015387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1518815380_)))
                                                      (_hd1518915384_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1518815380_))))
                                                  (if (gx#stx-null?
                                                       _tl1519015387_)
                                                      (___match3864638647_
                                                       _e1514615575_
                                                       _hd1514715579_
                                                       _tl1514815582_
                                                       _e1515315533_
                                                       _hd1515415537_
                                                       _tl1515515540_
                                                       _e1518815380_
                                                       _hd1518915384_
                                                       _tl1519015387_)
                                                      (___match3866438665_
                                                       _e1514615575_
                                                       _hd1514715579_
                                                       _tl1514815582_
                                                       _e1515315533_
                                                       _hd1515415537_
                                                       _tl1515515540_
                                                       _e1518815380_
                                                       _hd1518915384_
                                                       _tl1519015387_))))
                                              (___kont3854038541_
                                               _tl1515515540_
                                               _hd1515415537_
                                               _hd1514715579_))))))
                              (___kont3854238543_ _tl1514815582_)))))
                  (_g1514415222_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx15593_)
        (letrec ((_simple-quote?15596_
                  (lambda (_e16288_)
                    (let* ((___stx3868538686_ _e16288_)
                           (_g1629616333_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3868538686_))))
                      (let ((___kont3868838689_ (lambda () '#f))
                            (___kont3869038691_ (lambda () '#f))
                            (___kont3869238693_
                             (lambda (_L16447_ _L16449_)
                               (if (_simple-quote?15596_ _L16449_)
                                   (_simple-quote?15596_ _L16447_)
                                   '#f)))
                            (___kont3869438695_
                             (lambda (_L16408_)
                               (_simple-quote?15596_
                                (foldr (lambda (_g1642116424_ _g1642216427_)
                                         (cons _g1642116424_ _g1642216427_))
                                       '()
                                       _L16408_))))
                            (___kont3869838699_
                             (lambda (_L16355_)
                               (_simple-quote?15596_ _L16355_)))
                            (___kont3870038701_ (lambda () '#t)))
                        (let* ((_g1629416367_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3868538686_)
                                      (let ((_e1632716351_
                                             (unbox (gx#syntax-e
                                                     ___stx3868538686_))))
                                        (___kont3869838699_ _e1632716351_))
                                      (___kont3870038701_))))
                               (___match3875638757_
                                (lambda (_e1631616374_
                                         ___splice3869638697_
                                         _target1631716378_
                                         _tl1631916381_)
                                  (letrec ((_loop1632016384_
                                            (lambda (_hd1631816388_
                                                     _e1632416391_)
                                              (if (gx#stx-pair? _hd1631816388_)
                                                  (let ((_e1632116394_
                                                         (gx#syntax-e
                                                          _hd1631816388_)))
                                                    (let ((_lp-tl1632316401_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1632116394_)))
                                                          (_lp-hd1632216398_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1632116394_))))
                                                      (_loop1632016384_
                                                       _lp-tl1632316401_
                                                       (cons _lp-hd1632216398_
                                                             _e1632416391_))))
                                                  (let ((_e1632516404_
                                                         (reverse _e1632416391_)))
                                                    (___kont3869438695_
                                                     _e1632516404_))))))
                                    (_loop1632016384_
                                     _target1631716378_
                                     '()))))
                               (_g1629316430_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3868538686_)
                                      (let ((_e1631616374_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3868538686_))))
                                        (if (gx#stx-pair/null? _e1631616374_)
                                            (let ((___splice3869638697_
                                                   (gx#syntax-split-splice
                                                    _e1631616374_
                                                    '0)))
                                              (let ((_tl1631916381_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3869638697_
                                                        '1)))
                                                    (_target1631716378_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3869638697_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1631916381_)
                                                    (___match3875638757_
                                                     _e1631616374_
                                                     ___splice3869638697_
                                                     _target1631716378_
                                                     _tl1631916381_)
                                                    (___kont3870038701_))))
                                            (___kont3870038701_)))
                                      (_g1629416367_)))))
                          (if (gx#stx-pair? ___stx3868538686_)
                              (let ((_e1629816498_
                                     (gx#syntax-e ___stx3868538686_)))
                                (let ((_tl1630016505_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1629816498_)))
                                      (_hd1629916502_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1629816498_))))
                                  (if (gx#identifier? _hd1629916502_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g42224_|
                                           _hd1629916502_)
                                          (if (gx#stx-pair? _tl1630016505_)
                                              (let ((_e1630116508_
                                                     (gx#syntax-e
                                                      _tl1630016505_)))
                                                (let ((_tl1630316515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1630116508_)))
                                                      (_hd1630216512_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1630116508_))))
                                                  (if (gx#stx-null?
                                                       _tl1630316515_)
                                                      (___kont3868838689_)
                                                      (___kont3869238693_
                                                       _tl1630016505_
                                                       _hd1629916502_))))
                                              (___kont3869238693_
                                               _tl1630016505_
                                               _hd1629916502_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g42225_|
                                               _hd1629916502_)
                                              (if (gx#stx-pair? _tl1630016505_)
                                                  (let ((_e1630716477_
                                                         (gx#syntax-e
                                                          _tl1630016505_)))
                                                    (let ((_tl1630916484_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1630716477_)))
                                                          (_hd1630816481_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1630716477_))))
                                                      (if (gx#stx-null?
                                                           _tl1630916484_)
                                                          (___kont3869038691_)
                                                          (___kont3869238693_
                                                           _tl1630016505_
                                                           _hd1629916502_))))
                                                  (___kont3869238693_
                                                   _tl1630016505_
                                                   _hd1629916502_))
                                              (___kont3869238693_
                                               _tl1630016505_
                                               _hd1629916502_)))
                                      (___kont3869238693_
                                       _tl1630016505_
                                       _hd1629916502_))))
                              (_g1629316430_)))))))
                 (_generate15598_
                  (lambda (_e15660_ _d15662_)
                    (let* ((___stx3876338764_ _e15660_)
                           (_g1567115729_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3876338764_))))
                      (let ((___kont3876638767_
                             (lambda (_L16240_)
                               (let* ((_g1625316261_
                                       (lambda (_g1625416257_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1625416257_)))
                                      (_g1625216280_
                                       (lambda (_g1625416265_)
                                         ((lambda (_L16268_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons (gx#datum->syntax '#f 'quasiquote) '()))
                  (cons _L16268_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1625416265_))))
                                 (_g1625216280_
                                  (_generate15598_
                                   _L16240_
                                   (fx1+ _d15662_))))))
                            (___kont3876838769_
                             (lambda (_L16169_)
                               (if (fxzero? _d15662_)
                                   _L16169_
                                   (let* ((_g1618216190_
                                           (lambda (_g1618316186_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1618316186_)))
                                          (_g1618116209_
                                           (lambda (_g1618316194_)
                                             ((lambda (_L16197_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (gx#datum->syntax '#f 'unquote) '()))
                      (cons _L16197_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1618316194_))))
                                     (_g1618116209_
                                      (_generate15598_
                                       _L16169_
                                       (fx1- _d15662_)))))))
                            (___kont3877038771_
                             (lambda (_L16098_)
                               (if (fxzero? _d15662_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _L16098_ '()))))
                                   (let* ((_g1611116119_
                                           (lambda (_g1611216115_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1611216115_)))
                                          (_g1611016138_
                                           (lambda (_g1611216123_)
                                             ((lambda (_L16126_)
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
                      (cons _L16126_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1611216123_))))
                                     (_g1611016138_
                                      (_generate15598_
                                       _L16098_
                                       (fx1- _d15662_)))))))
                            (___kont3877238773_
                             (lambda (_L16023_ _L16025_)
                               (let* ((_g1604016048_
                                       (lambda (_g1604116044_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1604116044_)))
                                      (_g1603916067_
                                       (lambda (_g1604116052_)
                                         ((lambda (_L16055_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'foldr)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'cons)
                                                          (cons _L16055_
                                                                (cons _L16025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1604116052_))))
                                 (_g1603916067_
                                  (_generate15598_ _L16023_ _d15662_)))))
                            (___kont3877438775_
                             (lambda (_L15909_ _L15911_)
                               (let* ((_g1592215937_
                                       (lambda (_g1592315933_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1592315933_)))
                                      (_g1592115982_
                                       (lambda (_g1592315941_)
                                         (if (gx#stx-pair? _g1592315941_)
                                             (let ((_e1592615944_
                                                    (gx#syntax-e
                                                     _g1592315941_)))
                                               (let ((_hd1592715948_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1592615944_)))
                                                     (_tl1592815951_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1592615944_))))
                                                 (if (gx#stx-pair?
                                                      _tl1592815951_)
                                                     (let ((_e1592915954_
                                                            (gx#syntax-e
                                                             _tl1592815951_)))
                                                       (let ((_hd1593015958_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e1592915954_)))
                     (_tl1593115961_
                      (let () (declare (not safe)) (##cdr _e1592915954_))))
                 (if (gx#stx-null? _tl1593115961_)
                     ((lambda (_L15964_ _L15966_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'cons)
                                (cons _L15966_ (cons _L15964_ '())))))
                      _hd1593015958_
                      _hd1592715948_)
                     (_g1592215937_ _g1592315941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1592215937_
                                                      _g1592315941_))))
                                             (_g1592215937_ _g1592315941_)))))
                                 (_g1592115982_
                                  (list (_generate15598_ _L15911_ _d15662_)
                                        (_generate15598_
                                         _L15909_
                                         _d15662_))))))
                            (___kont3877638777_
                             (lambda (_L15839_)
                               (let* ((_g1585315861_
                                       (lambda (_g1585415857_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1585415857_)))
                                      (_g1585215880_
                                       (lambda (_g1585415865_)
                                         ((lambda (_L15868_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list->vector)
                                                    (cons _L15868_ '()))))
                                          _g1585415865_))))
                                 (_g1585215880_
                                  (_generate15598_
                                   (foldr (lambda (_g1588315886_ _g1588415889_)
                                            (cons _g1588315886_ _g1588415889_))
                                          '()
                                          _L15839_)
                                   _d15662_)))))
                            (___kont3878038781_
                             (lambda (_L15757_)
                               (let* ((_g1576715775_
                                       (lambda (_g1576815771_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1576815771_)))
                                      (_g1576615794_
                                       (lambda (_g1576815779_)
                                         ((lambda (_L15782_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'box)
                                                    (cons _L15782_ '()))))
                                          _g1576815779_))))
                                 (_g1576615794_
                                  (_generate15598_ _L15757_ _d15662_)))))
                            (___kont3878238783_
                             (lambda (_L15736_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L15736_ '())))))
                        (let* ((_g1566915798_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3876338764_)
                                      (let ((_e1572215753_
                                             (unbox (gx#syntax-e
                                                     ___stx3876338764_))))
                                        (___kont3878038781_ _e1572215753_))
                                      (___kont3878238783_ ___stx3876338764_))))
                               (___match3888238883_
                                (lambda (_e1571115805_
                                         ___splice3877838779_
                                         _target1571215809_
                                         _tl1571415812_)
                                  (letrec ((_loop1571515815_
                                            (lambda (_hd1571315819_
                                                     _e1571915822_)
                                              (if (gx#stx-pair? _hd1571315819_)
                                                  (let ((_e1571615825_
                                                         (gx#syntax-e
                                                          _hd1571315819_)))
                                                    (let ((_lp-tl1571815832_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1571615825_)))
                                                          (_lp-hd1571715829_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1571615825_))))
                                                      (_loop1571515815_
                                                       _lp-tl1571815832_
                                                       (cons _lp-hd1571715829_
                                                             _e1571915822_))))
                                                  (let ((_e1572015835_
                                                         (reverse _e1571915822_)))
                                                    (___kont3877638777_
                                                     _e1572015835_))))))
                                    (_loop1571515815_
                                     _target1571215809_
                                     '()))))
                               (_g1566815892_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3876338764_)
                                      (let ((_e1571115805_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3876338764_))))
                                        (if (gx#stx-pair/null? _e1571115805_)
                                            (let ((___splice3877838779_
                                                   (gx#syntax-split-splice
                                                    _e1571115805_
                                                    '0)))
                                              (let ((_tl1571415812_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3877838779_
                                                        '1)))
                                                    (_target1571215809_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3877838779_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1571415812_)
                                                    (___match3888238883_
                                                     _e1571115805_
                                                     ___splice3877838779_
                                                     _target1571215809_
                                                     _tl1571415812_)
                                                    (___kont3878238783_
                                                     ___stx3876338764_))))
                                            (___kont3878238783_
                                             ___stx3876338764_)))
                                      (_g1566915798_)))))
                          (if (gx#stx-pair? ___stx3876338764_)
                              (let ((_e1567416220_
                                     (gx#syntax-e ___stx3876338764_)))
                                (let ((_tl1567616227_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1567416220_)))
                                      (_hd1567516224_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1567416220_))))
                                  (if (gx#identifier? _hd1567516224_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g42226_|
                                           _hd1567516224_)
                                          (if (gx#stx-pair? _tl1567616227_)
                                              (let ((_e1567716230_
                                                     (gx#syntax-e
                                                      _tl1567616227_)))
                                                (let ((_tl1567916237_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1567716230_)))
                                                      (_hd1567816234_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1567716230_))))
                                                  (if (gx#stx-null?
                                                       _tl1567916237_)
                                                      (___kont3876638767_
                                                       _hd1567816234_)
                                                      (___kont3877438775_
                                                       _tl1567616227_
                                                       _hd1567516224_))))
                                              (___kont3877438775_
                                               _tl1567616227_
                                               _hd1567516224_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g42227_|
                                               _hd1567516224_)
                                              (if (gx#stx-pair? _tl1567616227_)
                                                  (let ((_e1568416159_
                                                         (gx#syntax-e
                                                          _tl1567616227_)))
                                                    (let ((_tl1568616166_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1568416159_)))
                                                          (_hd1568516163_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1568416159_))))
                                                      (if (gx#stx-null?
                                                           _tl1568616166_)
                                                          (___kont3876838769_
                                                           _hd1568516163_)
                                                          (___kont3877438775_
                                                           _tl1567616227_
                                                           _hd1567516224_))))
                                                  (___kont3877438775_
                                                   _tl1567616227_
                                                   _hd1567516224_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g42228_|
                                                   _hd1567516224_)
                                                  (if (gx#stx-pair?
                                                       _tl1567616227_)
                                                      (let ((_e1569116088_
                                                             (gx#syntax-e
                                                              _tl1567616227_)))
                                                        (let ((_tl1569316095_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1569116088_)))
                      (_hd1569216092_
                       (let () (declare (not safe)) (##car _e1569116088_))))
                  (if (gx#stx-null? _tl1569316095_)
                      (___kont3877038771_ _hd1569216092_)
                      (___kont3877438775_ _tl1567616227_ _hd1567516224_))))
              (___kont3877438775_ _tl1567616227_ _hd1567516224_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3877438775_
                                                   _tl1567616227_
                                                   _hd1567516224_))))
                                      (if (gx#stx-pair? _hd1567516224_)
                                          (let ((_e1569916003_
                                                 (gx#syntax-e _hd1567516224_)))
                                            (let ((_tl1570116010_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1569916003_)))
                                                  (_hd1570016007_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1569916003_))))
                                              (if (gx#identifier?
                                                   _hd1570016007_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g42229_|
                                                       _hd1570016007_)
                                                      (if (gx#stx-pair?
                                                           _tl1570116010_)
                                                          (let ((_e1570216013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1570116010_)))
                    (let ((_tl1570416020_
                           (let () (declare (not safe)) (##cdr _e1570216013_)))
                          (_hd1570316017_
                           (let ()
                             (declare (not safe))
                             (##car _e1570216013_))))
                      (if (gx#stx-null? _tl1570416020_)
                          (if (fxzero? _d15662_)
                              (let ((_L16023_ _tl1567616227_)
                                    (_L16025_ _hd1570316017_))
                                (___kont3877238773_ _L16023_ _L16025_))
                              (___kont3877438775_
                               _tl1567616227_
                               _hd1567516224_))
                          (___kont3877438775_ _tl1567616227_ _hd1567516224_))))
                  (___kont3877438775_ _tl1567616227_ _hd1567516224_))
              (___kont3877438775_ _tl1567616227_ _hd1567516224_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3877438775_
                                                   _tl1567616227_
                                                   _hd1567516224_))))
                                          (___kont3877438775_
                                           _tl1567616227_
                                           _hd1567516224_)))))
                              (_g1566815892_))))))))
          (let* ((_g1560015614_
                  (lambda (_g1560115610_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1560115610_)))
                 (_g1559915656_
                  (lambda (_g1560115618_)
                    (if (gx#stx-pair? _g1560115618_)
                        (let ((_e1560315621_ (gx#syntax-e _g1560115618_)))
                          (let ((_hd1560415625_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1560315621_)))
                                (_tl1560515628_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1560315621_))))
                            (if (gx#stx-pair? _tl1560515628_)
                                (let ((_e1560615631_
                                       (gx#syntax-e _tl1560515628_)))
                                  (let ((_hd1560715635_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1560615631_)))
                                        (_tl1560815638_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1560615631_))))
                                    (if (gx#stx-null? _tl1560815638_)
                                        ((lambda (_L15641_)
                                           (if (_simple-quote?15596_ _L15641_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L15641_ '()))
                                               (_generate15598_ _L15641_ '0)))
                                         _hd1560715635_)
                                        (_g1560015614_ _g1560115618_))))
                                (_g1560015614_ _g1560115618_))))
                        (_g1560015614_ _g1560115618_)))))
            (_g1559915656_ _stx15593_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx16528_)
        (let* ((___stx3888938890_ _$stx16528_)
               (_g1653316554_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3888938890_))))
          (let ((___kont3889238893_
                 (lambda (_L16622_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _L16622_ '()))))
                (___kont3889438895_
                 (lambda (_L16581_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _L16581_ '())))
                               '())))))
            (let ((___match3891038911_
                   (lambda (_e1653616602_
                            _hd1653716606_
                            _tl1653816609_
                            _e1653916612_
                            _hd1654016616_
                            _tl1654116619_)
                     (let ((_L16622_ _hd1654016616_))
                       (if (gx#stx-datum? _L16622_)
                           (___kont3889238893_ _L16622_)
                           (___kont3889438895_ _hd1654016616_))))))
              (if (gx#stx-pair? ___stx3888938890_)
                  (let ((_e1653616602_ (gx#syntax-e ___stx3888938890_)))
                    (let ((_tl1653816609_
                           (let () (declare (not safe)) (##cdr _e1653616602_)))
                          (_hd1653716606_
                           (let ()
                             (declare (not safe))
                             (##car _e1653616602_))))
                      (if (gx#stx-pair? _tl1653816609_)
                          (let ((_e1653916612_ (gx#syntax-e _tl1653816609_)))
                            (let ((_tl1654116619_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1653916612_)))
                                  (_hd1654016616_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1653916612_))))
                              (if (gx#stx-null? _tl1654116619_)
                                  (___match3891038911_
                                   _e1653616602_
                                   _hd1653716606_
                                   _tl1653816609_
                                   _e1653916612_
                                   _hd1654016616_
                                   _tl1654116619_)
                                  (_g1653316554_))))
                          (_g1653316554_))))
                  (_g1653316554_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx16639_)
        (letrec ((_generate16642_
                  (lambda (_rest16761_)
                    (let _lp16764_ ((_rest16767_ _rest16761_)
                                    (_hd16769_ '())
                                    (_body16770_ '()))
                      (let* ((___stx3894738948_ _rest16767_)
                             (_g1677316785_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3894738948_))))
                        (let ((___kont3895038951_
                               (lambda (_L16813_ _L16815_)
                                 (let* ((___stx3892738928_ _L16815_)
                                        (_g1683216839_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3892738928_))))
                                   (let ((___kont3893038931_
                                          (lambda ()
                                            (let ((_arg16875_ (gx#genident)))
                                              (_lp16764_
                                               _L16813_
                                               (cons _arg16875_ _hd16769_)
                                               (cons _arg16875_
                                                     _body16770_)))))
                                         (___kont3893238933_
                                          (lambda ()
                                            (if (gx#stx-null? _L16813_)
                                                (let ((_tail16861_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tail16861_
                         _hd16769_)
                  (foldl cons (list _tail16861_) _body16770_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx16639_
                                                 _L16815_))))
                                         (___kont3893438935_
                                          (lambda ()
                                            (_lp16764_
                                             _L16813_
                                             _hd16769_
                                             (cons _L16815_ _body16770_)))))
                                     (if (gx#identifier? ___stx3892738928_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g42230_|
                                              ___stx3892738928_)
                                             (___kont3893038931_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g42231_|
                                                  ___stx3892738928_)
                                                 (___kont3893238933_)
                                                 (___kont3893438935_)))
                                         (___kont3893438935_))))))
                              (___kont3895238953_
                               (lambda ()
                                 (values (reverse _hd16769_)
                                         (reverse _body16770_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx3894738948_)
                              (let ((_e1677716803_
                                     (gx#syntax-e ___stx3894738948_)))
                                (let ((_tl1677916810_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1677716803_)))
                                      (_hd1677816807_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1677716803_))))
                                  (___kont3895038951_
                                   _tl1677916810_
                                   _hd1677816807_)))
                              (___kont3895238953_))))))))
          (let* ((_g1664516656_
                  (lambda (_g1664616652_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1664616652_)))
                 (_g1664416757_
                  (lambda (_g1664616660_)
                    (if (gx#stx-pair? _g1664616660_)
                        (let ((_e1664816663_ (gx#syntax-e _g1664616660_)))
                          (let ((_hd1664916667_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1664816663_)))
                                (_tl1665016670_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1664816663_))))
                            ((lambda (_L16673_)
                               (if (and (gx#stx-list? _L16673_)
                                        (not (gx#stx-null? _L16673_)))
                                   (let ((_g42232_ (_generate16642_ _L16673_)))
                                     (begin
                                       (let ((_g42233_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g42232_)
                                                    (##vector-length _g42232_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g42233_ 3)))
                                             (error "Context expects 3 values"
                                                    _g42233_)))
                                       (let ((_hd16686_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g42232_ 0)))
                                             (_body16688_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g42232_ 1)))
                                             (_tail?16689_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g42232_ 2))))
                                         (let* ((_g1669116699_
                                                 (lambda (_g1669216695_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1669216695_)))
                                                (_g1669016753_
                                                 (lambda (_g1669216703_)
                                                   ((lambda (_L16706_)
                                                      (let ()
                                                        (let* ((_g1671916727_
                                                                (lambda (_g1672016723_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1672016723_)))
                       (_g1671816749_
                        (lambda (_g1672016731_)
                          ((lambda (_L16734_)
                             (let ()
                               (let ()
                                 (if _tail?16689_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16706_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L16734_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16706_
                                                 (cons _L16734_ '())))))))
                           _g1672016731_))))
                  (_g1671816749_ _body16688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1669216703_))))
                                           (_g1669016753_ _hd16686_)))))
                                   (_g1664516656_ _g1664616660_)))
                             _tl1665016670_)))
                        (_g1664516656_ _g1664616660_)))))
            (_g1664416757_ _stx16639_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx16887_)
        (let ((_g1689016897_
               (lambda (_g1689116893_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1689116893_))))
          (_g1689016897_ _$stx16887_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx16901_)
        (let ((_g1690416911_
               (lambda (_g1690516907_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1690516907_))))
          (_g1690416911_ _$stx16901_))))))
