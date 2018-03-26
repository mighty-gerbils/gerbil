(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 200))
  (define gxc#&optmize-annotated
    (##make-promise
     (lambda ()
       (let ((_tbl39597_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl39597_ (force gxc#&basic-xform))
           (table-set! _tbl39597_ '%#begin-annotation gxc#optimize-annotation%)
           _tbl39597_)))))
  (define gxc#apply-optimize-annotated
    (lambda (_stx39590_ . _args39592_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39590_ _args39592_))
       gxc#current-compile-methods
       (force gxc#&optmize-annotated))))
  (define gxc#&generate-runtime-repr
    (##make-promise
     (lambda ()
       (let ((_tbl39587_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl39587_ (force gxc#&generate-runtime))
           (table-set! _tbl39587_ '%#quote-syntax identity)
           _tbl39587_)))))
  (define gxc#apply-generate-runtime-repr
    (lambda (_stx39580_ . _args39582_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39580_ _args39582_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-repr))))
  (define gxc#&push-match-vars
    (##make-promise
     (lambda ()
       (let ((_tbl39577_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl39577_ '%#lambda gxc#xform-lambda%)
           (table-set!
            _tbl39577_
            '%#let-values
            gxc#push-match-vars-let-values%)
           (table-set! _tbl39577_ '%#letrec-values gxc#push-match-vars-stop)
           (table-set! _tbl39577_ '%#if gxc#push-match-vars-if%)
           (table-set! _tbl39577_ '%#call gxc#push-match-vars-call%)
           _tbl39577_)))))
  (define gxc#apply-push-match-vars
    (lambda (_stx39570_ . _args39572_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39570_ _args39572_))
       gxc#current-compile-methods
       (force gxc#&push-match-vars))))
  (define gxc#current-annotation-optimizer (make-parameter '()))
  (define gxc#optimize-annotation%
    (lambda (_stx39488_)
      (let* ((___stx3961339614_ _stx39488_)
             (_g3949139508_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx3961339614_))))
        (let ((___kont3961539616_
               (lambda (_L39544_ _L39545_)
                 (let ((_ann39561_ (gx#stx-e _L39545_)))
                   (call-with-parameters
                    (lambda ()
                      (let ((_$e39564_ _ann39561_))
                        (if (eq? '@match _$e39564_)
                            (begin
                              (gxc#verbose '"Optimizing match expansion")
                              (gxc#optimize-match _L39544_))
                            (if (eq? '@syntax-case _$e39564_)
                                (begin
                                  (gxc#verbose
                                   '"Optimizing syntax-case expansion")
                                  (gxc#optimize-syntax-case _L39544_))
                                (gxc#compile-e _L39544_)))))
                    gxc#current-annotation-optimizer
                    (cons _ann39561_ (gxc#current-annotation-optimizer))))))
              (___kont3961739618_
               (lambda () (gxc#xform-begin-annotation% _stx39488_))))
          (let ((___match3963839639_
                 (lambda (_e3949539520_
                          _hd3949639523_
                          _tl3949739525_
                          _e3949839528_
                          _hd3949939531_
                          _tl3950039533_
                          _e3950139536_
                          _hd3950239539_
                          _tl3950339541_)
                   (let ((_L39544_ _hd3950239539_) (_L39545_ _hd3949939531_))
                     (if (gx#identifier? _L39545_)
                         (___kont3961539616_ _L39544_ _L39545_)
                         (___kont3961739618_))))))
            (if (gx#stx-pair? ___stx3961339614_)
                (let ((_e3949539520_ (gx#stx-e ___stx3961339614_)))
                  (let ((_tl3949739525_ (##cdr _e3949539520_))
                        (_hd3949639523_ (##car _e3949539520_)))
                    (if (gx#stx-pair? _tl3949739525_)
                        (let ((_e3949839528_ (gx#stx-e _tl3949739525_)))
                          (let ((_tl3950039533_ (##cdr _e3949839528_))
                                (_hd3949939531_ (##car _e3949839528_)))
                            (if (gx#stx-pair? _tl3950039533_)
                                (let ((_e3950139536_
                                       (gx#stx-e _tl3950039533_)))
                                  (let ((_tl3950339541_ (##cdr _e3950139536_))
                                        (_hd3950239539_ (##car _e3950139536_)))
                                    (if (gx#stx-null? _tl3950339541_)
                                        (___match3963839639_
                                         _e3949539520_
                                         _hd3949639523_
                                         _tl3949739525_
                                         _e3949839528_
                                         _hd3949939531_
                                         _tl3950039533_
                                         _e3950139536_
                                         _hd3950239539_
                                         _tl3950339541_)
                                        (___kont3961739618_))))
                                (___kont3961739618_))))
                        (___kont3961739618_))))
                (___kont3961739618_)))))))
  (define gxc#optimize-match
    (lambda (_stx38787_)
      (let* ((_g3878938819_
              (lambda (_g3879038816_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3879038816_)))
             (_g3878839485_
              (lambda (_g3879038822_)
                (if (gx#stx-pair? _g3879038822_)
                    (let ((_e3879438824_ (gx#stx-e _g3879038822_)))
                      (let ((_hd3879538827_ (##car _e3879438824_))
                            (_tl3879638829_ (##cdr _e3879438824_)))
                        (if (gx#identifier? _hd3879538827_)
                            (if (gx#stx-eq? '%#let-values _hd3879538827_)
                                (if (gx#stx-pair? _tl3879638829_)
                                    (let ((_e3879738832_
                                           (gx#stx-e _tl3879638829_)))
                                      (let ((_hd3879838835_
                                             (##car _e3879738832_))
                                            (_tl3879938837_
                                             (##cdr _e3879738832_)))
                                        (if (gx#stx-pair? _hd3879838835_)
                                            (let ((_e3880038840_
                                                   (gx#stx-e _hd3879838835_)))
                                              (let ((_hd3880138843_
                                                     (##car _e3880038840_))
                                                    (_tl3880238845_
                                                     (##cdr _e3880038840_)))
                                                (if (gx#stx-pair?
                                                     _hd3880138843_)
                                                    (let ((_e3880338848_
                                                           (gx#stx-e
                                                            _hd3880138843_)))
                                                      (let ((_hd3880438851_
                                                             (##car _e3880338848_))
                                                            (_tl3880538853_
                                                             (##cdr _e3880338848_)))
                                                        (if (gx#stx-pair?
                                                             _hd3880438851_)
                                                            (let ((_e3880638856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3880438851_)))
                      (let ((_hd3880738859_ (##car _e3880638856_))
                            (_tl3880838861_ (##cdr _e3880638856_)))
                        (if (gx#stx-null? _tl3880838861_)
                            (if (gx#stx-pair? _tl3880538853_)
                                (let ((_e3880938864_
                                       (gx#stx-e _tl3880538853_)))
                                  (let ((_hd3881038867_ (##car _e3880938864_))
                                        (_tl3881138869_ (##cdr _e3880938864_)))
                                    (if (gx#stx-null? _tl3881138869_)
                                        (if (gx#stx-null? _tl3880238845_)
                                            (if (gx#stx-pair? _tl3879938837_)
                                                (let ((_e3881238872_
                                                       (gx#stx-e
                                                        _tl3879938837_)))
                                                  (let ((_hd3881338875_
                                                         (##car _e3881238872_))
                                                        (_tl3881438877_
                                                         (##cdr _e3881238872_)))
                                                    (if (gx#stx-null?
                                                         _tl3881438877_)
                                                        ((lambda (_L38880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L38881_
                          _L38882_)
                   (let _lp38906_ ((_body38908_ _L38880_)
                                   (_negation38909_ (cons _L38882_ _L38881_))
                                   (_clauses38910_ '())
                                   (_konts38911_ '()))
                     (let* ((___stx3982139822_ _body38908_)
                            (_g3891438954_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx3982139822_))))
                       (let ((___kont3982339824_
                              (lambda (_L39284_)
                                (let* ((___stx3975739758_ _L39284_)
                                       (_g3929839328_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx3975739758_))))
                                  (let ((___kont3975939760_
                                         (lambda (_L39424_ _L39425_ _L39426_)
                                           (if (null? _clauses38910_)
                                               (let* ((_negation3945039457_
                                                       _negation38909_)
                                                      (_E3945239461_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _negation3945039457_)))
                                                      (_K3945339467_
                                                       (lambda (_negate39464_
                                                                _E39465_)
                                                         (gxc#xform-wrap-source
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _E39465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _negate39464_ '()))
                                    '())
                              (cons (cons '%#let-values
                                          (cons (cons (cons (cons _L39426_ '())
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L39425_)
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L39424_ '())))
                                    '())))
                  _stx38787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _negation3945039457_)
                                                     (let ((_hd3945439470_
                                                            (##car _negation3945039457_))
                                                           (_tl3945539472_
                                                            (##cdr _negation3945039457_)))
                                                       (let* ((_E39475_
                                                               _hd3945439470_)
                                                              (_negate39477_
                                                               _tl3945539472_))
                                                         (_K3945339467_
                                                          _negate39477_
                                                          _E39475_)))
                                                     (_E3945239461_)))
                                               (gxc#optimize-match-body
                                                _stx38787_
                                                _negation38909_
                                                (cons (cons '#f
                                                            (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#lambda)
                          (cons '() (cons _L39424_ '()))))
              _clauses38910_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _L39426_
                                                            (gxc#compile-e
                                                             _L39425_))
                                                      _konts38911_)))))
                                        (___kont3976139762_
                                         (lambda ()
                                           (let* ((_negation3933439341_
                                                   _negation38909_)
                                                  (_E3933639345_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _negation3933439341_)))
                                                  (_K3933739351_
                                                   (lambda (_negate39348_
                                                            _E39349_)
                                                     (gxc#xform-wrap-source
                                                      (cons '%#let-values
                                                            (cons (cons (cons (cons _E39349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                            '())
                                      (cons _negate39348_ '()))
                                '())
                          (cons _L39284_ '())))
              _stx38787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _negation3933439341_)
                                                 (let ((_hd3933839354_
                                                        (##car _negation3933439341_))
                                                       (_tl3933939356_
                                                        (##cdr _negation3933439341_)))
                                                   (let* ((_E39359_
                                                           _hd3933839354_)
                                                          (_negate39361_
                                                           _tl3933939356_))
                                                     (_K3933739351_
                                                      _negate39361_
                                                      _E39359_)))
                                                 (_E3933639345_))))))
                                    (let ((_g3929739363_
                                           (lambda ()
                                             (if (null? _clauses38910_)
                                                 (___kont3976139762_)
                                                 (_g3929839328_)))))
                                      (if (gx#stx-pair? ___stx3975739758_)
                                          (let ((_e3930339368_
                                                 (gx#stx-e ___stx3975739758_)))
                                            (let ((_tl3930539373_
                                                   (##cdr _e3930339368_))
                                                  (_hd3930439371_
                                                   (##car _e3930339368_)))
                                              (if (gx#identifier?
                                                   _hd3930439371_)
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd3930439371_)
                                                      (if (gx#stx-pair?
                                                           _tl3930539373_)
                                                          (let ((_e3930639376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3930539373_)))
                    (let ((_tl3930839381_ (##cdr _e3930639376_))
                          (_hd3930739379_ (##car _e3930639376_)))
                      (if (gx#stx-pair? _hd3930739379_)
                          (let ((_e3930939384_ (gx#stx-e _hd3930739379_)))
                            (let ((_tl3931139389_ (##cdr _e3930939384_))
                                  (_hd3931039387_ (##car _e3930939384_)))
                              (if (gx#stx-pair? _hd3931039387_)
                                  (let ((_e3931239392_
                                         (gx#stx-e _hd3931039387_)))
                                    (let ((_tl3931439397_
                                           (##cdr _e3931239392_))
                                          (_hd3931339395_
                                           (##car _e3931239392_)))
                                      (if (gx#stx-pair? _hd3931339395_)
                                          (let ((_e3931539400_
                                                 (gx#stx-e _hd3931339395_)))
                                            (let ((_tl3931739405_
                                                   (##cdr _e3931539400_))
                                                  (_hd3931639403_
                                                   (##car _e3931539400_)))
                                              (if (gx#stx-null? _tl3931739405_)
                                                  (if (gx#stx-pair?
                                                       _tl3931439397_)
                                                      (let ((_e3931839408_
                                                             (gx#stx-e
                                                              _tl3931439397_)))
                                                        (let ((_tl3932039413_
                                                               (##cdr _e3931839408_))
                                                              (_hd3931939411_
                                                               (##car _e3931839408_)))
                                                          (if (gx#stx-null?
                                                               _tl3932039413_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3931139389_)
                          (if (gx#stx-pair? _tl3930839381_)
                              (let ((_e3932139416_ (gx#stx-e _tl3930839381_)))
                                (let ((_tl3932339421_ (##cdr _e3932139416_))
                                      (_hd3932239419_ (##car _e3932139416_)))
                                  (if (gx#stx-null? _tl3932339421_)
                                      (___kont3975939760_
                                       _hd3932239419_
                                       _hd3931939411_
                                       _hd3931639403_)
                                      (_g3929739363_))))
                              (_g3929739363_))
                          (_g3929739363_))
                      (_g3929739363_))))
              (_g3929739363_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3929739363_))))
                                          (_g3929739363_))))
                                  (_g3929739363_))))
                          (_g3929739363_))))
                  (_g3929739363_))
              (_g3929739363_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3929739363_))))
                                          (_g3929739363_)))))))
                             (___kont3982539826_
                              (lambda (_L39015_ _L39016_ _L39017_)
                                (let* ((___stx3964139642_ _L39016_)
                                       (_g3904439093_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx3964139642_))))
                                  (let ((___kont3964339644_
                                         (lambda (_L39221_ _L39222_ _L39223_)
                                           (_lp38906_
                                            _L39015_
                                            _negation38909_
                                            (cons (cons _L39017_
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#lambda)
                                                              (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L39221_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _clauses38910_)
                                            (cons (cons _L39223_
                                                        (gxc#compile-e
                                                         _L39222_))
                                                  _konts38911_))))
                                        (___kont3964539646_
                                         (lambda (_L39122_)
                                           (_lp38906_
                                            _L39015_
                                            (cons _L39017_
                                                  (gxc#compile-e _L39122_))
                                            _clauses38910_
                                            _konts38911_))))
                                    (if (gx#stx-pair? ___stx3964139642_)
                                        (let ((_e3904939141_
                                               (gx#stx-e ___stx3964139642_)))
                                          (let ((_tl3905139146_
                                                 (##cdr _e3904939141_))
                                                (_hd3905039144_
                                                 (##car _e3904939141_)))
                                            (if (gx#identifier? _hd3905039144_)
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd3905039144_)
                                                    (if (gx#stx-pair?
                                                         _tl3905139146_)
                                                        (let ((_e3905239149_
                                                               (gx#stx-e
                                                                _tl3905139146_)))
                                                          (let ((_tl3905439154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3905239149_))
                        (_hd3905339152_ (##car _e3905239149_)))
                    (if (gx#stx-null? _hd3905339152_)
                        (if (gx#stx-pair? _tl3905439154_)
                            (let ((_e3905539157_ (gx#stx-e _tl3905439154_)))
                              (let ((_tl3905739162_ (##cdr _e3905539157_))
                                    (_hd3905639160_ (##car _e3905539157_)))
                                (if (gx#stx-pair? _hd3905639160_)
                                    (let ((_e3905839165_
                                           (gx#stx-e _hd3905639160_)))
                                      (let ((_tl3906039170_
                                             (##cdr _e3905839165_))
                                            (_hd3905939168_
                                             (##car _e3905839165_)))
                                        (if (gx#identifier? _hd3905939168_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3905939168_)
                                                (if (gx#stx-pair?
                                                     _tl3906039170_)
                                                    (let ((_e3906139173_
                                                           (gx#stx-e
                                                            _tl3906039170_)))
                                                      (let ((_tl3906339178_
                                                             (##cdr _e3906139173_))
                                                            (_hd3906239176_
                                                             (##car _e3906139173_)))
                                                        (if (gx#stx-pair?
                                                             _hd3906239176_)
                                                            (let ((_e3906439181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3906239176_)))
                      (let ((_tl3906639186_ (##cdr _e3906439181_))
                            (_hd3906539184_ (##car _e3906439181_)))
                        (if (gx#stx-pair? _hd3906539184_)
                            (let ((_e3906739189_ (gx#stx-e _hd3906539184_)))
                              (let ((_tl3906939194_ (##cdr _e3906739189_))
                                    (_hd3906839192_ (##car _e3906739189_)))
                                (if (gx#stx-pair? _hd3906839192_)
                                    (let ((_e3907039197_
                                           (gx#stx-e _hd3906839192_)))
                                      (let ((_tl3907239202_
                                             (##cdr _e3907039197_))
                                            (_hd3907139200_
                                             (##car _e3907039197_)))
                                        (if (gx#stx-null? _tl3907239202_)
                                            (if (gx#stx-pair? _tl3906939194_)
                                                (let ((_e3907339205_
                                                       (gx#stx-e
                                                        _tl3906939194_)))
                                                  (let ((_tl3907539210_
                                                         (##cdr _e3907339205_))
                                                        (_hd3907439208_
                                                         (##car _e3907339205_)))
                                                    (if (gx#stx-null?
                                                         _tl3907539210_)
                                                        (if (gx#stx-null?
                                                             _tl3906639186_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3906339178_)
                        (let ((_e3907639213_ (gx#stx-e _tl3906339178_)))
                          (let ((_tl3907839218_ (##cdr _e3907639213_))
                                (_hd3907739216_ (##car _e3907639213_)))
                            (if (gx#stx-null? _tl3907839218_)
                                (if (gx#stx-null? _tl3905739162_)
                                    (___kont3964339644_
                                     _hd3907739216_
                                     _hd3907439208_
                                     _hd3907139200_)
                                    (_g3904439093_))
                                (_g3904439093_))))
                        (_g3904439093_))
                    (_g3904439093_))
                (_g3904439093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3904439093_))
                                            (_g3904439093_))))
                                    (_g3904439093_))))
                            (_g3904439093_))))
                    (_g3904439093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3904439093_))
                                                (_g3904439093_))
                                            (_g3904439093_))))
                                    (_g3904439093_))))
                            (_g3904439093_))
                        (_g3904439093_))))
                (_g3904439093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#begin-annotation
                                                         _hd3905039144_)
                                                        (if (gx#stx-pair?
                                                             _tl3905139146_)
                                                            (let ((_e3908339106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3905139146_)))
                      (let ((_tl3908539111_ (##cdr _e3908339106_))
                            (_hd3908439109_ (##car _e3908339106_)))
                        (if (gx#identifier? _hd3908439109_)
                            (if (gx#stx-eq? '@match-else _hd3908439109_)
                                (if (gx#stx-pair? _tl3908539111_)
                                    (let ((_e3908639114_
                                           (gx#stx-e _tl3908539111_)))
                                      (let ((_tl3908839119_
                                             (##cdr _e3908639114_))
                                            (_hd3908739117_
                                             (##car _e3908639114_)))
                                        (if (gx#stx-null? _tl3908839119_)
                                            (___kont3964539646_ _hd3908739117_)
                                            (_g3904439093_))))
                                    (_g3904439093_))
                                (_g3904439093_))
                            (_g3904439093_))))
                    (_g3904439093_))
                (_g3904439093_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3904439093_))))
                                        (_g3904439093_)))))))
                         (if (gx#stx-pair? ___stx3982139822_)
                             (let ((_e3891739260_
                                    (gx#stx-e ___stx3982139822_)))
                               (let ((_tl3891939265_ (##cdr _e3891739260_))
                                     (_hd3891839263_ (##car _e3891739260_)))
                                 (if (gx#identifier? _hd3891839263_)
                                     (if (gx#stx-eq?
                                          '%#begin-annotation
                                          _hd3891839263_)
                                         (if (gx#stx-pair? _tl3891939265_)
                                             (let ((_e3892039268_
                                                    (gx#stx-e _tl3891939265_)))
                                               (let ((_tl3892239273_
                                                      (##cdr _e3892039268_))
                                                     (_hd3892139271_
                                                      (##car _e3892039268_)))
                                                 (if (gx#identifier?
                                                      _hd3892139271_)
                                                     (if (gx#stx-eq?
                                                          '@match-body
                                                          _hd3892139271_)
                                                         (if (gx#stx-pair?
                                                              _tl3892239273_)
                                                             (let ((_e3892339276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3892239273_)))
                       (let ((_tl3892539281_ (##cdr _e3892339276_))
                             (_hd3892439279_ (##car _e3892339276_)))
                         (if (gx#stx-null? _tl3892539281_)
                             (___kont3982339824_ _hd3892439279_)
                             (_g3891438954_))))
                     (_g3891438954_))
                 (_g3891438954_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3891438954_))))
                                             (_g3891438954_))
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd3891839263_)
                                             (if (gx#stx-pair? _tl3891939265_)
                                                 (let ((_e3893238967_
                                                        (gx#stx-e
                                                         _tl3891939265_)))
                                                   (let ((_tl3893438972_
                                                          (##cdr _e3893238967_))
                                                         (_hd3893338970_
                                                          (##car _e3893238967_)))
                                                     (if (gx#stx-pair?
                                                          _hd3893338970_)
                                                         (let ((_e3893538975_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3893338970_)))
                   (let ((_tl3893738980_ (##cdr _e3893538975_))
                         (_hd3893638978_ (##car _e3893538975_)))
                     (if (gx#stx-pair? _hd3893638978_)
                         (let ((_e3893838983_ (gx#stx-e _hd3893638978_)))
                           (let ((_tl3894038988_ (##cdr _e3893838983_))
                                 (_hd3893938986_ (##car _e3893838983_)))
                             (if (gx#stx-pair? _hd3893938986_)
                                 (let ((_e3894138991_
                                        (gx#stx-e _hd3893938986_)))
                                   (let ((_tl3894338996_ (##cdr _e3894138991_))
                                         (_hd3894238994_
                                          (##car _e3894138991_)))
                                     (if (gx#stx-null? _tl3894338996_)
                                         (if (gx#stx-pair? _tl3894038988_)
                                             (let ((_e3894438999_
                                                    (gx#stx-e _tl3894038988_)))
                                               (let ((_tl3894639004_
                                                      (##cdr _e3894438999_))
                                                     (_hd3894539002_
                                                      (##car _e3894438999_)))
                                                 (if (gx#stx-null?
                                                      _tl3894639004_)
                                                     (if (gx#stx-null?
                                                          _tl3893738980_)
                                                         (if (gx#stx-pair?
                                                              _tl3893438972_)
                                                             (let ((_e3894739007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3893438972_)))
                       (let ((_tl3894939012_ (##cdr _e3894739007_))
                             (_hd3894839010_ (##car _e3894739007_)))
                         (if (gx#stx-null? _tl3894939012_)
                             (___kont3982539826_
                              _hd3894839010_
                              _hd3894539002_
                              _hd3894238994_)
                             (_g3891438954_))))
                     (_g3891438954_))
                 (_g3891438954_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3891438954_))))
                                             (_g3891438954_))
                                         (_g3891438954_))))
                                 (_g3891438954_))))
                         (_g3891438954_))))
                 (_g3891438954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3891438954_))
                                             (_g3891438954_)))
                                     (_g3891438954_))))
                             (_g3891438954_))))))
                 _hd3881338875_
                 _hd3881038867_
                 _hd3880738859_)
                (_g3878938819_ _g3879038822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3878938819_ _g3879038822_))
                                            (_g3878938819_ _g3879038822_))
                                        (_g3878938819_ _g3879038822_))))
                                (_g3878938819_ _g3879038822_))
                            (_g3878938819_ _g3879038822_))))
                    (_g3878938819_ _g3879038822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3878938819_
                                                     _g3879038822_))))
                                            (_g3878938819_ _g3879038822_))))
                                    (_g3878938819_ _g3879038822_))
                                (_g3878938819_ _g3879038822_))
                            (_g3878938819_ _g3879038822_))))
                    (_g3878938819_ _g3879038822_)))))
        (_g3878839485_ _stx38787_))))
  (define gxc#optimize-match-body
    (lambda (_stx38493_ _negation38494_ _clauses38495_ _konts38496_)
      (letrec ((_push-variables38498_
                (lambda (_clause38745_ _kont38746_)
                  (let ((_clause3874738757_ _clause38745_)
                        (_kont3874838759_ _kont38746_))
                    (let* ((_E3875038763_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause3874738757_
                                     _kont3874838759_)))
                           (_K3875138770_
                            (lambda (_clause-lambda38766_
                                     _clause-name38767_
                                     _K38768_)
                              (cons _clause-name38767_
                                    (gxc#apply-push-match-vars
                                     _clause-lambda38766_
                                     '()
                                     _K38768_)))))
                      (if (##pair? _clause3874738757_)
                          (let ((_hd3875438773_ (##car _clause3874738757_))
                                (_tl3875538775_ (##cdr _clause3874738757_)))
                            (let* ((_clause-name38778_ _hd3875438773_)
                                   (_clause-lambda38780_ _tl3875538775_))
                              (if (##pair? _kont3874838759_)
                                  (let* ((_hd3875238782_
                                          (##car _kont3874838759_))
                                         (_K38785_ _hd3875238782_))
                                    (_K3875138770_
                                     _clause-lambda38780_
                                     _clause-name38778_
                                     _K38785_))
                                  (_E3875038763_))))
                          (_E3875038763_))))))
               (_start-match38499_
                (lambda (_kont38679_)
                  (let* ((_g3868138697_
                          (lambda (_g3868238694_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3868238694_)))
                         (_g3868038742_
                          (lambda (_g3868238700_)
                            (if (gx#stx-pair? _g3868238700_)
                                (let ((_e3868438702_ (gx#stx-e _g3868238700_)))
                                  (let ((_hd3868538705_ (##car _e3868438702_))
                                        (_tl3868638707_ (##cdr _e3868438702_)))
                                    (if (gx#identifier? _hd3868538705_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3868538705_)
                                            (if (gx#stx-pair? _tl3868638707_)
                                                (let ((_e3868738710_
                                                       (gx#stx-e
                                                        _tl3868638707_)))
                                                  (let ((_hd3868838713_
                                                         (##car _e3868738710_))
                                                        (_tl3868938715_
                                                         (##cdr _e3868738710_)))
                                                    (if (gx#stx-null?
                                                         _hd3868838713_)
                                                        (if (gx#stx-pair?
                                                             _tl3868938715_)
                                                            (let ((_e3869038718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3868938715_)))
                      (let ((_hd3869138721_ (##car _e3869038718_))
                            (_tl3869238723_ (##cdr _e3869038718_)))
                        (if (gx#stx-null? _tl3869238723_)
                            ((lambda (_L38726_) _L38726_) _hd3869138721_)
                            (_g3868138697_ _g3868238700_))))
                    (_g3868138697_ _g3868238700_))
                (_g3868138697_ _g3868238700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3868138697_ _g3868238700_))
                                            (_g3868138697_ _g3868238700_))
                                        (_g3868138697_ _g3868238700_))))
                                (_g3868138697_ _g3868238700_)))))
                    (_g3868038742_ _kont38679_))))
               (_match-body38500_
                (lambda (_blocks38576_)
                  (let* ((_blocks3857738586_ _blocks38576_)
                         (_E3857938590_
                          (lambda ()
                            (error '"No clause matching" _blocks3857738586_)))
                         (_K3858038662_
                          (lambda (_rest38593_ _start38594_)
                            (let _lp38596_ ((_rest38598_ _rest38593_)
                                            (_body38599_
                                             (_start-match38499_
                                              _start38594_)))
                              (let* ((_rest3860038608_ _rest38598_)
                                     (_else3860238616_ (lambda () _body38599_))
                                     (_K3860438650_
                                      (lambda (_rest38619_ _block38620_)
                                        (let* ((_block3862138628_ _block38620_)
                                               (_E3862338632_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _block3862138628_)))
                                               (_K3862438638_
                                                (lambda (_kont38635_ _K38636_)
                                                  (_lp38596_
                                                   _rest38619_
                                                   (cons '%#let-values
                                                         (cons (cons (cons (cons _K38636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons _kont38635_ '()))
                             '())
                       (cons _body38599_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _block3862138628_)
                                              (let ((_hd3862538641_
                                                     (##car _block3862138628_))
                                                    (_tl3862638643_
                                                     (##cdr _block3862138628_)))
                                                (let* ((_K38646_
                                                        _hd3862538641_)
                                                       (_kont38648_
                                                        _tl3862638643_))
                                                  (_K3862438638_
                                                   _kont38648_
                                                   _K38646_)))
                                              (_E3862338632_))))))
                                (if (##pair? _rest3860038608_)
                                    (let ((_hd3860538653_
                                           (##car _rest3860038608_))
                                          (_tl3860638655_
                                           (##cdr _rest3860038608_)))
                                      (let* ((_block38658_ _hd3860538653_)
                                             (_rest38660_ _tl3860638655_))
                                        (_K3860438650_
                                         _rest38660_
                                         _block38658_)))
                                    (_else3860238616_)))))))
                    (if (##pair? _blocks3857738586_)
                        (let ((_hd3858138665_ (##car _blocks3857738586_))
                              (_tl3858238667_ (##cdr _blocks3857738586_)))
                          (if (##pair? _hd3858138665_)
                              (let ((_hd3858338670_ (##car _hd3858138665_))
                                    (_tl3858438672_ (##cdr _hd3858138665_)))
                                (if (##eq? _hd3858338670_ '#f)
                                    (let* ((_start38675_ _tl3858438672_)
                                           (_rest38677_ _tl3858238667_))
                                      (_K3858038662_ _rest38677_ _start38675_))
                                    (_E3857938590_)))
                              (_E3857938590_)))
                        (_E3857938590_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_clauses38503_
                   (map _push-variables38498_ _clauses38495_ _konts38496_))
                  (_blocks38505_
                   (gxc#optimize-match-basic-blocks _clauses38503_))
                  (_blocks38507_
                   (gxc#optimize-match-fold-basic-blocks _blocks38505_))
                  (_body38509_ (_match-body38500_ _blocks38507_))
                  (_bind38543_
                   (map (lambda (_e3851038512_)
                          (let* ((_g3851438521_ _e3851038512_)
                                 (_E3851638525_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g3851438521_)))
                                 (_K3851738531_
                                  (lambda (_kont38528_ _K38529_)
                                    (cons (cons _K38529_ '())
                                          (cons _kont38528_ '())))))
                            (if (##pair? _g3851438521_)
                                (let ((_hd3851838534_ (##car _g3851438521_))
                                      (_tl3851938536_ (##cdr _g3851438521_)))
                                  (let* ((_K38539_ _hd3851838534_)
                                         (_kont38541_ _tl3851938536_))
                                    (_K3851738531_ _kont38541_ _K38539_)))
                                (_E3851638525_))))
                        _konts38496_))
                  (_negate38573_
                   (let* ((_negation3854438551_ _negation38494_)
                          (_E3854638555_
                           (lambda ()
                             (error '"No clause matching"
                                    _negation3854438551_)))
                          (_K3854738561_
                           (lambda (_kont38558_ _K38559_)
                             (cons (cons _K38559_ '())
                                   (cons _kont38558_ '())))))
                     (if (##pair? _negation3854438551_)
                         (let ((_hd3854838564_ (##car _negation3854438551_))
                               (_tl3854938566_ (##cdr _negation3854438551_)))
                           (let* ((_K38569_ _hd3854838564_)
                                  (_kont38571_ _tl3854938566_))
                             (_K3854738561_ _kont38571_ _K38569_)))
                         (_E3854638555_)))))
             (gxc#xform-wrap-source
              (cons '%#let-values
                    (cons (cons _negate38573_ '())
                          (cons (cons '%#let-values
                                      (cons _bind38543_
                                            (cons _body38509_ '())))
                                '())))
              _stx38493_)))
         gx#current-expander-context
         (let ((__obj42686 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj42686) __obj42686))))))
  (define gxc#optimize-match-basic-blocks
    (lambda (_clauses38453_)
      (let _lp38455_ ((_rest38457_ _clauses38453_) (_blocks38458_ '()))
        (let* ((_rest3845938467_ _rest38457_)
               (_else3846138475_ (lambda () (reverse _blocks38458_)))
               (_K3846338481_
                (lambda (_rest38478_ _clause38479_)
                  (_lp38455_
                   _rest38478_
                   (gxc#optimize-match-lift-basic-blocks
                    _clause38479_
                    _blocks38458_)))))
          (if (##pair? _rest3845938467_)
              (let ((_hd3846438484_ (##car _rest3845938467_))
                    (_tl3846538486_ (##cdr _rest3845938467_)))
                (let* ((_clause38489_ _hd3846438484_)
                       (_rest38491_ _tl3846538486_))
                  (_K3846338481_ _rest38491_ _clause38489_)))
              (_else3846138475_))))))
  (define gxc#optimize-match-lift-basic-blocks
    (lambda (_clause37797_ _blocks37798_)
      (letrec ((_bind->args37800_
                (lambda (_bind38448_)
                  (foldl1 (lambda (_b38450_ _r38451_)
                            (cons (cons '%#ref (cons (car _b38450_) '()))
                                  _r38451_))
                          '()
                          _bind38448_)))
               (_create-block37801_
                (lambda (_body38397_ _let-bind38398_ _bind38399_ _assert38400_)
                  (let* ((_id38402_ (make-symbol (gensym '__match)))
                         (_id38404_ (gx#core-quote-syntax__0 _id38402_))
                         (_g42688_ (gx#core-bind-runtime!__0 _id38404_))
                         (_block38407_
                          (cons _id38404_
                                (cons _body38397_
                                      (cons _bind38399_
                                            (cons _assert38400_ '())))))
                         (_continue38409_
                          (cons '%#call
                                (cons (cons '%#ref (cons _id38404_ '()))
                                      (_bind->args37800_ _bind38399_))))
                         (_continue38445_
                          (if (null? _let-bind38398_)
                              _continue38409_
                              (let ((_locals38443_
                                     (map (lambda (_e3841038412_)
                                            (let* ((_g3841438421_
                                                    _e3841038412_)
                                                   (_E3841638425_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g3841438421_)))
                                                   (_K3841738431_
                                                    (lambda (_expr38428_
                                                             _id38429_)
                                                      (cons (cons _id38429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr38428_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g3841438421_)
                                                  (let ((_hd3841838434_
                                                         (##car _g3841438421_))
                                                        (_tl3841938436_
                                                         (##cdr _g3841438421_)))
                                                    (let* ((_id38439_
                                                            _hd3841838434_)
                                                           (_expr38441_
                                                            _tl3841938436_))
                                                      (_K3841738431_
                                                       _expr38441_
                                                       _id38439_)))
                                                  (_E3841638425_))))
                                          _let-bind38398_)))
                                (cons '%#let-values
                                      (cons _locals38443_
                                            (cons _continue38409_ '())))))))
                    (values _continue38445_ _block38407_))))
               (_basic-block37802_
                (lambda (_body37983_ _bind37984_ _assert37985_)
                  (let* ((___stx3992939930_ _body37983_)
                         (_g3799038074_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3992939930_))))
                    (let ((___kont3993139932_
                           (lambda (_L38333_ _L38334_ _L38335_)
                             (let ((_g42689_
                                    (_create-block37801_
                                     _L38334_
                                     '()
                                     _bind37984_
                                     (cons (cons _L38335_ '#t)
                                           _assert37985_))))
                               (begin
                                 (let ((_g42690_
                                        (if (##values? _g42689_)
                                            (##vector-length _g42689_)
                                            1)))
                                   (if (not (##fx= _g42690_ 2))
                                       (error "Context expects 2 values"
                                              _g42690_)))
                                 (let ((_k-continue38353_
                                        (##vector-ref _g42689_ 0))
                                       (_k-block38354_
                                        (##vector-ref _g42689_ 1)))
                                   (let* ((___stx3991139912_ _L38333_)
                                          (_g3835738366_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx3991139912_))))
                                     (let ((___kont3991339914_
                                            (lambda ()
                                              (values (cons '%#if
                                                            (cons _L38335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _k-continue38353_ (cons _L38333_ '()))))
              (cons _k-block38354_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont3991539916_
                                            (lambda ()
                                              (let ((_g42691_
                                                     (_create-block37801_
                                                      _L38333_
                                                      '()
                                                      _bind37984_
                                                      (cons (cons _L38335_ '#f)
                                                            _assert37985_))))
                                                (begin
                                                  (let ((_g42692_
                                                         (if (##values?
                                                              _g42691_)
                                                             (##vector-length
                                                              _g42691_)
                                                             1)))
                                                    (if (not (##fx= _g42692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g42692_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_e-continue38373_
                                                         (##vector-ref
                                                          _g42691_
                                                          0))
                                                        (_e-block38374_
                                                         (##vector-ref
                                                          _g42691_
                                                          1)))
                                                    (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L38335_
                                (cons _k-continue38353_
                                      (cons _e-continue38373_ '()))))
                    (cons _k-block38354_ (cons _e-block38374_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? ___stx3991139912_)
                                           (let ((_e3835938381_
                                                  (gx#stx-e
                                                   ___stx3991139912_)))
                                             (let ((_tl3836138386_
                                                    (##cdr _e3835938381_))
                                                   (_hd3836038384_
                                                    (##car _e3835938381_)))
                                               (if (gx#identifier?
                                                    _hd3836038384_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _hd3836038384_)
                                                       (___kont3991339914_)
                                                       (___kont3991539916_))
                                                   (___kont3991539916_))))
                                           (___kont3991539916_)))))))))
                          (___kont3993339934_
                           (lambda () (values _body37983_ '())))
                          (___kont3993739938_
                           (lambda (_L38162_ _L38163_ _L38164_)
                             (let* ((_let-bind38199_
                                     (map cons
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3818438187_
                                                             _g3818538189_)
                                                      (cons _g3818438187_
                                                            _g3818538189_))
                                                    '()
                                                    _L38164_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3819138194_
                                                             _g3819238196_)
                                                      (cons _g3819138194_
                                                            _g3819238196_))
                                                    '()
                                                    _L38163_))))
                                    (_g42693_
                                     (_create-block37801_
                                      _L38162_
                                      _let-bind38199_
                                      (foldl1 cons _bind37984_ _let-bind38199_)
                                      _assert37985_)))
                               (begin
                                 (let ((_g42694_
                                        (if (##values? _g42693_)
                                            (##vector-length _g42693_)
                                            1)))
                                   (if (not (##fx= _g42694_ 2))
                                       (error "Context expects 2 values"
                                              _g42694_)))
                                 (let ((_continue38201_
                                        (##vector-ref _g42693_ 0))
                                       (_block38202_
                                        (##vector-ref _g42693_ 1)))
                                   (let ()
                                     (values _continue38201_
                                             (cons _block38202_ '()))))))))
                          (___kont3994139942_
                           (lambda () (values _body37983_ '()))))
                      (let* ((___match4002040021_
                              (lambda (_e3804138086_
                                       _hd3804238089_
                                       _tl3804338091_
                                       _e3804438094_
                                       _hd3804538097_
                                       _tl3804638099_
                                       ___splice3993939940_
                                       _target3804738102_
                                       _tl3804938104_)
                                (letrec ((_loop3805038107_
                                          (lambda (_hd3804838110_
                                                   _expr3805438112_
                                                   _id3805538114_)
                                            (if (gx#stx-pair? _hd3804838110_)
                                                (let ((_e3805138117_
                                                       (gx#stx-e
                                                        _hd3804838110_)))
                                                  (let ((_lp-tl3805338122_
                                                         (##cdr _e3805138117_))
                                                        (_lp-hd3805238120_
                                                         (##car _e3805138117_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3805238120_)
                                                        (let ((_e3805838125_
                                                               (gx#stx-e
                                                                _lp-hd3805238120_)))
                                                          (let ((_tl3806038130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3805838125_))
                        (_hd3805938128_ (##car _e3805838125_)))
                    (if (gx#stx-pair? _hd3805938128_)
                        (let ((_e3806138133_ (gx#stx-e _hd3805938128_)))
                          (let ((_tl3806338138_ (##cdr _e3806138133_))
                                (_hd3806238136_ (##car _e3806138133_)))
                            (if (gx#stx-null? _tl3806338138_)
                                (if (gx#stx-pair? _tl3806038130_)
                                    (let ((_e3806438141_
                                           (gx#stx-e _tl3806038130_)))
                                      (let ((_tl3806638146_
                                             (##cdr _e3806438141_))
                                            (_hd3806538144_
                                             (##car _e3806438141_)))
                                        (if (gx#stx-null? _tl3806638146_)
                                            (_loop3805038107_
                                             _lp-tl3805338122_
                                             (cons _hd3806538144_
                                                   _expr3805438112_)
                                             (cons _hd3806238136_
                                                   _id3805538114_))
                                            (___kont3994139942_))))
                                    (___kont3994139942_))
                                (___kont3994139942_))))
                        (___kont3994139942_))))
                (___kont3994139942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_id3805738151_
                                                       (reverse _id3805538114_))
                                                      (_expr3805638149_
                                                       (reverse _expr3805438112_)))
                                                  (if (gx#stx-pair?
                                                       _tl3804638099_)
                                                      (let ((_e3806738154_
                                                             (gx#stx-e
                                                              _tl3804638099_)))
                                                        (let ((_tl3806938159_
                                                               (##cdr _e3806738154_))
                                                              (_hd3806838157_
                                                               (##car _e3806738154_)))
                                                          (if (gx#stx-null?
                                                               _tl3806938159_)
                                                              (___kont3993739938_
                                                               _hd3806838157_
                                                               _expr3805638149_
                                                               _id3805738151_)
                                                              (___kont3994139942_))))
                                                      (___kont3994139942_)))))))
                                  (_loop3805038107_
                                   _target3804738102_
                                   '()
                                   '()))))
                             (___match3999639997_
                              (lambda (_e3800738210_
                                       _hd3800838213_
                                       _tl3800938215_
                                       _e3801038218_
                                       _hd3801138221_
                                       _tl3801238223_
                                       ___splice3993539936_
                                       _target3801338226_
                                       _tl3801538228_)
                                (letrec ((_loop3801638231_
                                          (lambda (_hd3801438234_)
                                            (if (gx#stx-pair? _hd3801438234_)
                                                (let ((_e3801738237_
                                                       (gx#stx-e
                                                        _hd3801438234_)))
                                                  (let ((_lp-tl3801938242_
                                                         (##cdr _e3801738237_))
                                                        (_lp-hd3801838240_
                                                         (##car _e3801738237_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3801838240_)
                                                        (let ((_e3802038245_
                                                               (gx#stx-e
                                                                _lp-hd3801838240_)))
                                                          (let ((_tl3802238250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3802038245_))
                        (_hd3802138248_ (##car _e3802038245_)))
                    (if (gx#stx-pair? _hd3802138248_)
                        (let ((_e3802338253_ (gx#stx-e _hd3802138248_)))
                          (let ((_tl3802538258_ (##cdr _e3802338253_))
                                (_hd3802438256_ (##car _e3802338253_)))
                            (if (gx#stx-null? _tl3802538258_)
                                (if (gx#stx-pair? _tl3802238250_)
                                    (let ((_e3802638261_
                                           (gx#stx-e _tl3802238250_)))
                                      (let ((_tl3802838266_
                                             (##cdr _e3802638261_))
                                            (_hd3802738264_
                                             (##car _e3802638261_)))
                                        (if (gx#stx-pair? _hd3802738264_)
                                            (let ((_e3802938269_
                                                   (gx#stx-e _hd3802738264_)))
                                              (let ((_tl3803138274_
                                                     (##cdr _e3802938269_))
                                                    (_hd3803038272_
                                                     (##car _e3802938269_)))
                                                (if (gx#identifier?
                                                     _hd3803038272_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3803038272_)
                                                        (if (gx#stx-pair?
                                                             _tl3803138274_)
                                                            (let ((_e3803238277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3803138274_)))
                      (let ((_tl3803438282_ (##cdr _e3803238277_))
                            (_hd3803338280_ (##car _e3803238277_)))
                        (if (gx#stx-null? _tl3803438282_)
                            (if (gx#stx-null? _tl3802838266_)
                                (_loop3801638231_ _lp-tl3801938242_)
                                (___match4002040021_
                                 _e3800738210_
                                 _hd3800838213_
                                 _tl3800938215_
                                 _e3801038218_
                                 _hd3801138221_
                                 _tl3801238223_
                                 ___splice3993539936_
                                 _target3801338226_
                                 _tl3801538228_))
                            (___match4002040021_
                             _e3800738210_
                             _hd3800838213_
                             _tl3800938215_
                             _e3801038218_
                             _hd3801138221_
                             _tl3801238223_
                             ___splice3993539936_
                             _target3801338226_
                             _tl3801538228_))))
                    (___match4002040021_
                     _e3800738210_
                     _hd3800838213_
                     _tl3800938215_
                     _e3801038218_
                     _hd3801138221_
                     _tl3801238223_
                     ___splice3993539936_
                     _target3801338226_
                     _tl3801538228_))
                (___match4002040021_
                 _e3800738210_
                 _hd3800838213_
                 _tl3800938215_
                 _e3801038218_
                 _hd3801138221_
                 _tl3801238223_
                 ___splice3993539936_
                 _target3801338226_
                 _tl3801538228_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4002040021_
                                                     _e3800738210_
                                                     _hd3800838213_
                                                     _tl3800938215_
                                                     _e3801038218_
                                                     _hd3801138221_
                                                     _tl3801238223_
                                                     ___splice3993539936_
                                                     _target3801338226_
                                                     _tl3801538228_))))
                                            (___match4002040021_
                                             _e3800738210_
                                             _hd3800838213_
                                             _tl3800938215_
                                             _e3801038218_
                                             _hd3801138221_
                                             _tl3801238223_
                                             ___splice3993539936_
                                             _target3801338226_
                                             _tl3801538228_))))
                                    (___match4002040021_
                                     _e3800738210_
                                     _hd3800838213_
                                     _tl3800938215_
                                     _e3801038218_
                                     _hd3801138221_
                                     _tl3801238223_
                                     ___splice3993539936_
                                     _target3801338226_
                                     _tl3801538228_))
                                (___match4002040021_
                                 _e3800738210_
                                 _hd3800838213_
                                 _tl3800938215_
                                 _e3801038218_
                                 _hd3801138221_
                                 _tl3801238223_
                                 ___splice3993539936_
                                 _target3801338226_
                                 _tl3801538228_))))
                        (___match4002040021_
                         _e3800738210_
                         _hd3800838213_
                         _tl3800938215_
                         _e3801038218_
                         _hd3801138221_
                         _tl3801238223_
                         ___splice3993539936_
                         _target3801338226_
                         _tl3801538228_))))
                (___match4002040021_
                 _e3800738210_
                 _hd3800838213_
                 _tl3800938215_
                 _e3801038218_
                 _hd3801138221_
                 _tl3801238223_
                 ___splice3993539936_
                 _target3801338226_
                 _tl3801538228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (if (gx#stx-pair?
                                                       _tl3801238223_)
                                                      (let ((_e3803538286_
                                                             (gx#stx-e
                                                              _tl3801238223_)))
                                                        (let ((_tl3803738291_
                                                               (##cdr _e3803538286_))
                                                              (_hd3803638289_
                                                               (##car _e3803538286_)))
                                                          (if (gx#stx-null?
                                                               _tl3803738291_)
                                                              (___kont3993339934_)
                                                              (___match4002040021_
                                                               _e3800738210_
                                                               _hd3800838213_
                                                               _tl3800938215_
                                                               _e3801038218_
                                                               _hd3801138221_
                                                               _tl3801238223_
                                                               ___splice3993539936_
                                                               _target3801338226_
                                                               _tl3801538228_))))
                                                      (___match4002040021_
                                                       _e3800738210_
                                                       _hd3800838213_
                                                       _tl3800938215_
                                                       _e3801038218_
                                                       _hd3801138221_
                                                       _tl3801238223_
                                                       ___splice3993539936_
                                                       _target3801338226_
                                                       _tl3801538228_)))))))
                                  (_loop3801638231_ _target3801338226_)))))
                        (if (gx#stx-pair? ___stx3992939930_)
                            (let ((_e3799538301_ (gx#stx-e ___stx3992939930_)))
                              (let ((_tl3799738306_ (##cdr _e3799538301_))
                                    (_hd3799638304_ (##car _e3799538301_)))
                                (if (gx#identifier? _hd3799638304_)
                                    (if (gx#stx-eq? '%#if _hd3799638304_)
                                        (if (gx#stx-pair? _tl3799738306_)
                                            (let ((_e3799838309_
                                                   (gx#stx-e _tl3799738306_)))
                                              (let ((_tl3800038314_
                                                     (##cdr _e3799838309_))
                                                    (_hd3799938312_
                                                     (##car _e3799838309_)))
                                                (if (gx#stx-pair?
                                                     _tl3800038314_)
                                                    (let ((_e3800138317_
                                                           (gx#stx-e
                                                            _tl3800038314_)))
                                                      (let ((_tl3800338322_
                                                             (##cdr _e3800138317_))
                                                            (_hd3800238320_
                                                             (##car _e3800138317_)))
                                                        (if (gx#stx-pair?
                                                             _tl3800338322_)
                                                            (let ((_e3800438325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3800338322_)))
                      (let ((_tl3800638330_ (##cdr _e3800438325_))
                            (_hd3800538328_ (##car _e3800438325_)))
                        (if (gx#stx-null? _tl3800638330_)
                            (___kont3993139932_
                             _hd3800538328_
                             _hd3800238320_
                             _hd3799938312_)
                            (___kont3994139942_))))
                    (___kont3994139942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3994139942_))))
                                            (___kont3994139942_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3799638304_)
                                            (if (gx#stx-pair? _tl3799738306_)
                                                (let ((_e3801038218_
                                                       (gx#stx-e
                                                        _tl3799738306_)))
                                                  (let ((_tl3801238223_
                                                         (##cdr _e3801038218_))
                                                        (_hd3801138221_
                                                         (##car _e3801038218_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3801138221_)
                                                        (let ((___splice3993539936_
                                                               (gx#syntax-split-splice
                                                                _hd3801138221_
                                                                '0)))
                                                          (let ((_tl3801538228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice3993539936_ '1))
                        (_target3801338226_
                         (##vector-ref ___splice3993539936_ '0)))
                    (if (gx#stx-null? _tl3801538228_)
                        (___match3999639997_
                         _e3799538301_
                         _hd3799638304_
                         _tl3799738306_
                         _e3801038218_
                         _hd3801138221_
                         _tl3801238223_
                         ___splice3993539936_
                         _target3801338226_
                         _tl3801538228_)
                        (___kont3994139942_))))
                (___kont3994139942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3994139942_))
                                            (___kont3994139942_)))
                                    (___kont3994139942_))))
                            (___kont3994139942_)))))))
               (_fold-blocks37803_
                (lambda (_rest37902_ _blocks37903_)
                  (let* ((_rest3790437921_ _rest37902_)
                         (_E3790737925_
                          (lambda ()
                            (error '"No clause matching" _rest3790437921_))))
                    (let ((_K3790937945_
                           (lambda (_rest37936_
                                    _assert37937_
                                    _bind37938_
                                    _body37939_
                                    _name37940_)
                             (let ((_g42695_
                                    (_basic-block37802_
                                     _body37939_
                                     _bind37938_
                                     _assert37937_)))
                               (begin
                                 (let ((_g42696_
                                        (if (##values? _g42695_)
                                            (##vector-length _g42695_)
                                            1)))
                                   (if (not (##fx= _g42696_ 2))
                                       (error "Context expects 2 values"
                                              _g42696_)))
                                 (let ((_body37942_ (##vector-ref _g42695_ 0))
                                       (_body-blocks37943_
                                        (##vector-ref _g42695_ 1)))
                                   (_fold-blocks37803_
                                    (foldl1 cons
                                            _rest37936_
                                            _body-blocks37943_)
                                    (cons (cons _name37940_
                                                (cons 'continue:
                                                      (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (reverse (map car _bind37938_))
                                (cons _body37942_ '())))
                    (cons _assert37937_ (cons _bind37938_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _blocks37903_)))))))
                          (_K3790837930_ (lambda () _blocks37903_)))
                      (let ((_try-match3790637933_
                             (lambda ()
                               (if (##null? _rest3790437921_)
                                   (_K3790837930_)
                                   (_E3790737925_)))))
                        (if (##pair? _rest3790437921_)
                            (let ((_tl3791137950_ (##cdr _rest3790437921_))
                                  (_hd3791037948_ (##car _rest3790437921_)))
                              (if (##pair? _hd3791037948_)
                                  (let ((_tl3791337955_ (##cdr _hd3791037948_))
                                        (_hd3791237953_
                                         (##car _hd3791037948_)))
                                    (if (##pair? _tl3791337955_)
                                        (let ((_tl3791537962_
                                               (##cdr _tl3791337955_))
                                              (_hd3791437960_
                                               (##car _tl3791337955_)))
                                          (if (##pair? _tl3791537962_)
                                              (let ((_tl3791737969_
                                                     (##cdr _tl3791537962_))
                                                    (_hd3791637967_
                                                     (##car _tl3791537962_)))
                                                (if (##pair? _tl3791737969_)
                                                    (let ((_tl3791937976_
                                                           (##cdr _tl3791737969_))
                                                          (_hd3791837974_
                                                           (##car _tl3791737969_)))
                                                      (if (##null? _tl3791937976_)
                                                          (let ((_name37958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3791237953_)
                        (_body37965_ _hd3791437960_)
                        (_bind37972_ _hd3791637967_)
                        (_assert37979_ _hd3791837974_)
                        (_rest37981_ _tl3791137950_))
                    (_K3790937945_
                     _rest37981_
                     _assert37979_
                     _bind37972_
                     _body37965_
                     _name37958_))
                  (_E3790737925_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3790737925_)))
                                              (_E3790737925_)))
                                        (_E3790737925_)))
                                  (_E3790737925_)))
                            (_try-match3790637933_))))))))
        (let* ((_clause3780437811_ _clause37797_)
               (_E3780637815_
                (lambda () (error '"No clause matching" _clause3780437811_)))
               (_K3780737890_
                (lambda (_body37818_ _name37819_)
                  (let* ((_g3782137837_
                          (lambda (_g3782237834_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3782237834_)))
                         (_g3782037887_
                          (lambda (_g3782237840_)
                            (if (gx#stx-pair? _g3782237840_)
                                (let ((_e3782437842_ (gx#stx-e _g3782237840_)))
                                  (let ((_hd3782537845_ (##car _e3782437842_))
                                        (_tl3782637847_ (##cdr _e3782437842_)))
                                    (if (gx#identifier? _hd3782537845_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3782537845_)
                                            (if (gx#stx-pair? _tl3782637847_)
                                                (let ((_e3782737850_
                                                       (gx#stx-e
                                                        _tl3782637847_)))
                                                  (let ((_hd3782837853_
                                                         (##car _e3782737850_))
                                                        (_tl3782937855_
                                                         (##cdr _e3782737850_)))
                                                    (if (gx#stx-null?
                                                         _hd3782837853_)
                                                        (if (gx#stx-pair?
                                                             _tl3782937855_)
                                                            (let ((_e3783037858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3782937855_)))
                      (let ((_hd3783137861_ (##car _e3783037858_))
                            (_tl3783237863_ (##cdr _e3783037858_)))
                        (if (gx#stx-null? _tl3783237863_)
                            ((lambda (_L37866_)
                               (let ((_g42697_
                                      (_basic-block37802_ _L37866_ '() '())))
                                 (begin
                                   (let ((_g42698_
                                          (if (##values? _g42697_)
                                              (##vector-length _g42697_)
                                              1)))
                                     (if (not (##fx= _g42698_ 2))
                                         (error "Context expects 2 values"
                                                _g42698_)))
                                   (let ((_body37884_
                                          (##vector-ref _g42697_ 0))
                                         (_body-blocks37885_
                                          (##vector-ref _g42697_ 1)))
                                     (_fold-blocks37803_
                                      _body-blocks37885_
                                      (cons (cons _name37819_
                                                  (cons 'restart:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '() (cons _body37884_ '())))
                      (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks37798_))))))
                             _hd3783137861_)
                            (_g3782137837_ _g3782237840_))))
                    (_g3782137837_ _g3782237840_))
                (_g3782137837_ _g3782237840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3782137837_ _g3782237840_))
                                            (_g3782137837_ _g3782237840_))
                                        (_g3782137837_ _g3782237840_))))
                                (_g3782137837_ _g3782237840_)))))
                    (_g3782037887_ _body37818_)))))
          (if (##pair? _clause3780437811_)
              (let ((_hd3780837893_ (##car _clause3780437811_))
                    (_tl3780937895_ (##cdr _clause3780437811_)))
                (let* ((_name37898_ _hd3780837893_)
                       (_body37900_ _tl3780937895_))
                  (_K3780737890_ _body37900_ _name37898_)))
              (_E3780637815_))))))
  (define gxc#optimize-match-fold-basic-blocks
    (lambda (_blocks37403_)
      (let _lp37405_ ((_rest37407_ _blocks37403_) (_blocks37408_ '()))
        (let* ((_rest3740937417_ _rest37407_)
               (_else3741137466_
                (lambda ()
                  (foldl1 (lambda (_block37425_ _r37426_)
                            (let* ((_block3742737438_ _block37425_)
                                   (_E3742937442_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _block3742737438_)))
                                   (_K3743037448_
                                    (lambda (_kont37445_ _name37446_)
                                      (cons (cons _name37446_ _kont37445_)
                                            _r37426_))))
                              (if (##pair? _block3742737438_)
                                  (let ((_hd3743137451_
                                         (##car _block3742737438_))
                                        (_tl3743237453_
                                         (##cdr _block3742737438_)))
                                    (let ((_name37456_ _hd3743137451_))
                                      (if (##pair? _tl3743237453_)
                                          (let ((_tl3743437458_
                                                 (##cdr _tl3743237453_)))
                                            (if (##pair? _tl3743437458_)
                                                (let* ((_hd3743537461_
                                                        (##car _tl3743437458_))
                                                       (_kont37464_
                                                        _hd3743537461_))
                                                  (_K3743037448_
                                                   _kont37464_
                                                   _name37456_))
                                                (_E3742937442_)))
                                          (_E3742937442_))))
                                  (_E3742937442_))))
                          '()
                          _blocks37408_)))
               (_K3741337785_
                (lambda (_rest37469_ _block37470_)
                  (let* ((_block3747137496_ _block37470_)
                         (_E3747437500_
                          (lambda ()
                            (error '"No clause matching" _block3747137496_))))
                    (let ((_K3748637756_
                           (lambda (_assert37678_ _kont37679_ _name37680_)
                             (let* ((_g3768237698_
                                     (lambda (_g3768337695_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3768337695_)))
                                    (_g3768137753_
                                     (lambda (_g3768337701_)
                                       (if (gx#stx-pair? _g3768337701_)
                                           (let ((_e3768537703_
                                                  (gx#stx-e _g3768337701_)))
                                             (let ((_hd3768637706_
                                                    (##car _e3768537703_))
                                                   (_tl3768737708_
                                                    (##cdr _e3768537703_)))
                                               (if (gx#identifier?
                                                    _hd3768637706_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3768637706_)
                                                       (if (gx#stx-pair?
                                                            _tl3768737708_)
                                                           (let ((_e3768837711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3768737708_)))
                     (let ((_hd3768937714_ (##car _e3768837711_))
                           (_tl3769037716_ (##cdr _e3768837711_)))
                       (if (gx#stx-null? _hd3768937714_)
                           (if (gx#stx-pair? _tl3769037716_)
                               (let ((_e3769137719_ (gx#stx-e _tl3769037716_)))
                                 (let ((_hd3769237722_ (##car _e3769137719_))
                                       (_tl3769337724_ (##cdr _e3769137719_)))
                                   (if (gx#stx-null? _tl3769337724_)
                                       ((lambda (_L37727_)
                                          (let* ((_body37742_
                                                  (gxc#optimize-match-block
                                                   _L37727_
                                                   _assert37678_
                                                   '()
                                                   _rest37469_))
                                                 (_block37744_
                                                  (cons _name37680_
                                                        (cons 'restart:
                                                              (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '() (cons _body37742_ '())))
                            (cons _assert37678_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_blocks37746_
                                                  (cons _block37744_
                                                        _blocks37408_))
                                                 (_rest37748_
                                                  (gxc#optimize-match-prune-blocks
                                                   _rest37469_
                                                   _blocks37746_))
                                                 (_rest37750_
                                                  (gxc#optimize-match-fuse-restart-blocks
                                                   _rest37748_
                                                   _blocks37746_)))
                                            (_lp37405_
                                             _rest37750_
                                             _blocks37746_)))
                                        _hd3769237722_)
                                       (_g3768237698_ _g3768337701_))))
                               (_g3768237698_ _g3768337701_))
                           (_g3768237698_ _g3768337701_))))
                   (_g3768237698_ _g3768337701_))
               (_g3768237698_ _g3768337701_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3768237698_
                                                    _g3768337701_))))
                                           (_g3768237698_ _g3768337701_)))))
                               (_g3768137753_ _kont37679_))))
                          (_K3747537639_
                           (lambda (_bind37504_
                                    _assert37505_
                                    _kont37506_
                                    _name37507_)
                             (let* ((_g3750937535_
                                     (lambda (_g3751037532_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3751037532_)))
                                    (_g3750837636_
                                     (lambda (_g3751037538_)
                                       (if (gx#stx-pair? _g3751037538_)
                                           (let ((_e3751337540_
                                                  (gx#stx-e _g3751037538_)))
                                             (let ((_hd3751437543_
                                                    (##car _e3751337540_))
                                                   (_tl3751537545_
                                                    (##cdr _e3751337540_)))
                                               (if (gx#identifier?
                                                    _hd3751437543_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3751437543_)
                                                       (if (gx#stx-pair?
                                                            _tl3751537545_)
                                                           (let ((_e3751637548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3751537545_)))
                     (let ((_hd3751737551_ (##car _e3751637548_))
                           (_tl3751837553_ (##cdr _e3751637548_)))
                       (if (gx#stx-pair/null? _hd3751737551_)
                           (let ((_g42699_
                                  (gx#syntax-split-splice _hd3751737551_ '0)))
                             (begin
                               (let ((_g42700_
                                      (if (##values? _g42699_)
                                          (##vector-length _g42699_)
                                          1)))
                                 (if (not (##fx= _g42700_ 2))
                                     (error "Context expects 2 values"
                                            _g42700_)))
                               (let ((_target3751937556_
                                      (##vector-ref _g42699_ 0))
                                     (_tl3752137558_
                                      (##vector-ref _g42699_ 1)))
                                 (if (gx#stx-null? _tl3752137558_)
                                     (letrec ((_loop3752237561_
                                               (lambda (_hd3752037564_
                                                        _id3752637566_)
                                                 (if (gx#stx-pair?
                                                      _hd3752037564_)
                                                     (let ((_e3752337569_
                                                            (gx#stx-e
                                                             _hd3752037564_)))
                                                       (let ((_lp-hd3752437572_
                                                              (##car _e3752337569_))
                                                             (_lp-tl3752537574_
                                                              (##cdr _e3752337569_)))
                                                         (_loop3752237561_
                                                          _lp-tl3752537574_
                                                          (cons _lp-hd3752437572_
                                                                _id3752637566_))))
                                                     (let ((_id3752737577_
                                                            (reverse _id3752637566_)))
                                                       (if (gx#stx-pair?
                                                            _tl3751837553_)
                                                           (let ((_e3752837580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3751837553_)))
                     (let ((_hd3752937583_ (##car _e3752837580_))
                           (_tl3753037585_ (##cdr _e3752837580_)))
                       (if (gx#stx-null? _tl3753037585_)
                           ((lambda (_L37588_ _L37589_)
                              (let* ((_body37618_
                                      (gxc#optimize-match-block
                                       _L37588_
                                       _assert37505_
                                       _bind37504_
                                       _rest37469_))
                                     (_block37627_
                                      (cons _name37507_
                                            (cons 'continue:
                                                  (cons (cons '%#lambda
                                                              (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g3761937622_ _g3762037624_)
                                        (cons _g3761937622_ _g3762037624_))
                                      '()
                                      _L37589_))
                            (cons _body37618_ '())))
                (cons _assert37505_ (cons _bind37504_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_blocks37629_
                                      (cons _block37627_ _blocks37408_))
                                     (_rest37631_
                                      (gxc#optimize-match-prune-blocks
                                       _rest37469_
                                       _blocks37629_))
                                     (_rest37633_
                                      (gxc#optimize-match-fuse-restart-blocks
                                       _rest37631_
                                       _blocks37629_)))
                                (_lp37405_ _rest37633_ _blocks37629_)))
                            _hd3752937583_
                            _id3752737577_)
                           (_g3750937535_ _g3751037538_))))
                   (_g3750937535_ _g3751037538_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3752237561_
                                        _target3751937556_
                                        '()))
                                     (_g3750937535_ _g3751037538_)))))
                           (_g3750937535_ _g3751037538_))))
                   (_g3750937535_ _g3751037538_))
               (_g3750937535_ _g3751037538_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3750937535_
                                                    _g3751037538_))))
                                           (_g3750937535_ _g3751037538_)))))
                               (_g3750837636_ _kont37506_)))))
                      (if (##pair? _block3747137496_)
                          (let ((_tl3748837761_ (##cdr _block3747137496_))
                                (_hd3748737759_ (##car _block3747137496_)))
                            (if (##pair? _tl3748837761_)
                                (let ((_tl3749037768_ (##cdr _tl3748837761_))
                                      (_hd3748937766_ (##car _tl3748837761_)))
                                  (if (##eq? _hd3748937766_ 'restart:)
                                      (if (##pair? _tl3749037768_)
                                          (let ((_tl3749237773_
                                                 (##cdr _tl3749037768_))
                                                (_hd3749137771_
                                                 (##car _tl3749037768_)))
                                            (if (##pair? _tl3749237773_)
                                                (let ((_tl3749437780_
                                                       (##cdr _tl3749237773_))
                                                      (_hd3749337778_
                                                       (##car _tl3749237773_)))
                                                  (if (##null? _tl3749437780_)
                                                      (let ((_name37764_
                                                             _hd3748737759_)
                                                            (_kont37776_
                                                             _hd3749137771_)
                                                            (_assert37783_
                                                             _hd3749337778_))
                                                        (_K3748637756_
                                                         _assert37783_
                                                         _kont37776_
                                                         _name37764_))
                                                      (_E3747437500_)))
                                                (_E3747437500_)))
                                          (_E3747437500_))
                                      (if (##eq? _hd3748937766_ 'continue:)
                                          (if (##pair? _tl3749037768_)
                                              (let ((_tl3748137656_
                                                     (##cdr _tl3749037768_))
                                                    (_hd3748037654_
                                                     (##car _tl3749037768_)))
                                                (if (##pair? _tl3748137656_)
                                                    (let ((_tl3748337663_
                                                           (##cdr _tl3748137656_))
                                                          (_hd3748237661_
                                                           (##car _tl3748137656_)))
                                                      (if (##pair? _tl3748337663_)
                                                          (let ((_tl3748537670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _tl3748337663_))
                        (_hd3748437668_ (##car _tl3748337663_)))
                    (if (##null? _tl3748537670_)
                        (let ((_name37647_ _hd3748737759_)
                              (_kont37659_ _hd3748037654_)
                              (_assert37666_ _hd3748237661_)
                              (_bind37673_ _hd3748437668_))
                          (_K3747537639_
                           _bind37673_
                           _assert37666_
                           _kont37659_
                           _name37647_))
                        (_E3747437500_)))
                  (_E3747437500_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3747437500_)))
                                              (_E3747437500_))
                                          (_E3747437500_))))
                                (_E3747437500_)))
                          (_E3747437500_)))))))
          (if (##pair? _rest3740937417_)
              (let ((_hd3741437788_ (##car _rest3740937417_))
                    (_tl3741537790_ (##cdr _rest3740937417_)))
                (let* ((_block37793_ _hd3741437788_)
                       (_rest37795_ _tl3741537790_))
                  (_K3741337785_ _rest37795_ _block37793_)))
              (_else3741137466_))))))
  (define gxc#optimize-match-block
    (lambda (_body32026_ _assert32027_ _bind32028_ _blocks32029_)
      (letrec* ((_env-assert32264_ '())
                (_env-type32265_ '())
                (_env-bind32266_ '())
                (_in-splice?32267_ '#f)
                (_do-assert32268_
                 (lambda (_assert37326_ _K37327_)
                   (if (pair? _assert37326_)
                       (let _lp37329_ ((_rest37331_ _assert37326_)
                                       (_env-assert37332_ _env-assert32264_)
                                       (_env-type37333_ _env-type32265_))
                         (let* ((_rest3733437342_ _rest37331_)
                                (_else3733637350_
                                 (lambda ()
                                   (_do-assert!32274_
                                    _env-assert37332_
                                    _env-type37333_
                                    _K37327_)))
                                (_K3733837391_
                                 (lambda (_rest37353_ _assert37354_)
                                   (let* ((_assert3735537362_ _assert37354_)
                                          (_E3735737366_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _assert3735537362_)))
                                          (_K3735837379_
                                           (lambda (_val37369_ _expr37370_)
                                             (let* ((_sexpr37372_
                                                     (gxc#apply-generate-runtime-repr
                                                      _expr37370_))
                                                    (_env-assert37374_
                                                     (cons (cons _sexpr37372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _val37369_)
                   _env-assert37332_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_env-type37376_
                                                     (_fold-assert-type32270_
                                                      _expr37370_
                                                      _val37369_
                                                      _env-type37333_)))
                                               (_lp37329_
                                                _rest37353_
                                                _env-assert37374_
                                                _env-type37376_)))))
                                     (if (##pair? _assert3735537362_)
                                         (let ((_hd3735937382_
                                                (##car _assert3735537362_))
                                               (_tl3736037384_
                                                (##cdr _assert3735537362_)))
                                           (let* ((_expr37387_ _hd3735937382_)
                                                  (_val37389_ _tl3736037384_))
                                             (_K3735837379_
                                              _val37389_
                                              _expr37387_)))
                                         (_E3735737366_))))))
                           (if (##pair? _rest3733437342_)
                               (let ((_hd3733937394_ (##car _rest3733437342_))
                                     (_tl3734037396_ (##cdr _rest3733437342_)))
                                 (let* ((_assert37399_ _hd3733937394_)
                                        (_rest37401_ _tl3734037396_))
                                   (_K3733837391_ _rest37401_ _assert37399_)))
                               (_else3733637350_))))
                       (_K37327_))))
                (_predicate-type32269_
                 (lambda (_id37271_)
                   (let* ((_sym37273_ (gxc#identifier-symbol _id37271_))
                          (_$e37275_ _sym37273_))
                     (let ((_default3727737308_
                            (lambda ()
                              (let* ((_g3728037287_
                                      (gxc#optimizer-resolve-type _sym37273_))
                                     (_else3728237295_ (lambda () '#f))
                                     (_K3728437300_
                                      (lambda (_struct-t37298_)
                                        (gxc#optimizer-resolve-type
                                         _struct-t37298_))))
                                (if (##structure-instance-of?
                                     _g3728037287_
                                     'gxc#!struct-pred::t)
                                    (let* ((_e3728537303_
                                            (##vector-ref _g3728037287_ '1))
                                           (_struct-t37306_ _e3728537303_))
                                      (gxc#optimizer-resolve-type
                                       _struct-t37306_))
                                    (_else3728237295_)))))
                           (_table3727837310_
                            '#(#f
                               (##box? . 3)
                               #f
                               (##pair? . 0)
                               #f
                               (gx#stx-vector? . 7)
                               (gx#identifier? . 4)
                               #f
                               #f
                               #f
                               (vector? . 2)
                               #f
                               #f
                               #f
                               #f
                               #f
                               (null? . 1)
                               #f
                               #f
                               #f
                               #f
                               (gx#stx-pair? . 5)
                               #f
                               (gx#stx-null? . 6)
                               #f
                               #f
                               #f
                               (##vector? . 2)
                               #f
                               (pair? . 0)
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               (gx#stx-datum? . 9)
                               (box? . 3)
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               (##null? . 1)
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               (gx#stx-box? . 8)
                               #f
                               #f
                               #f)))
                       (if (symbol? _$e37275_)
                           (let* ((_h37313_ (##symbol-hash _$e37275_))
                                  (_ix37316_ (##fxmodulo _h37313_ '63))
                                  (_q37319_
                                   (##vector-ref _table3727837310_ _ix37316_)))
                             (if _q37319_
                                 (if (eq? (##car _q37319_) _$e37275_)
                                     (let ((_x37323_ (##cdr _q37319_)))
                                       (if (##fx< _x37323_ '5)
                                           (if (##fx< _x37323_ '2)
                                               (if (##fx= _x37323_ '0)
                                                   'pair
                                                   'null)
                                               (if (##fx= _x37323_ '2)
                                                   'vector
                                                   (if (##fx= _x37323_ '3)
                                                       'box
                                                       'identifier)))
                                           (if (##fx< _x37323_ '7)
                                               (if (##fx= _x37323_ '5)
                                                   'stx-pair
                                                   'stx-null)
                                               (if (##fx= _x37323_ '7)
                                                   'stx-vector
                                                   (if (##fx= _x37323_ '8)
                                                       'stx-box
                                                       'stx-datum)))))
                                     (_default3727737308_))
                                 (_default3727737308_)))
                           (_default3727737308_))))))
                (_fold-assert-type32270_
                 (lambda (_expr36219_ _val36220_ _env36221_)
                   (let* ((___stx4018740188_ _expr36219_)
                          (_g3622936408_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4018740188_))))
                     (let ((___kont4018940190_
                            (lambda (_L37240_ _L37241_)
                              (let ((_$e37263_
                                     (_predicate-type32269_ _L37241_)))
                                (if _$e37263_
                                    ((lambda (_t37266_)
                                       (cons (cons _L37240_
                                                   (cons _t37266_
                                                         (cons _val36220_
                                                               '())))
                                             _env36221_))
                                     _$e37263_)
                                    _env36221_))))
                           (___kont4019140192_
                            (lambda (_L36930_ _L36931_ _L36932_)
                              (let ((_$e36957_
                                     (gxc#identifier-symbol _L36932_)))
                                (if (let ((_$e36960_ (eq? '##fx= _$e36957_)))
                                      (if _$e36960_
                                          _$e36960_
                                          (eq? 'fx= _$e36957_)))
                                    (let* ((___stx4009340094_ _L36931_)
                                           (_g3696436993_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               ___stx4009340094_))))
                                      (let ((___kont4009540096_
                                             (lambda (_L37061_ _L37062_)
                                               (let ((_$e37087_
                                                      (_countf-symbol32271_
                                                       _L37062_)))
                                                 (if _$e37087_
                                                     ((lambda (_sym37090_)
                                                        (cons (cons _L37061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym37090_
                                  (cons (gx#stx-e _L36930_)
                                        (cons _val36220_ '()))))
                      _env36221_))
              _$e37087_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _env36221_))))
                                            (___kont4009740098_
                                             (lambda () _env36221_)))
                                        (if (gx#stx-pair? ___stx4009340094_)
                                            (let ((_e3696837005_
                                                   (gx#stx-e
                                                    ___stx4009340094_)))
                                              (let ((_tl3697037010_
                                                     (##cdr _e3696837005_))
                                                    (_hd3696937008_
                                                     (##car _e3696837005_)))
                                                (if (gx#identifier?
                                                     _hd3696937008_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3696937008_)
                                                        (if (gx#stx-pair?
                                                             _tl3697037010_)
                                                            (let ((_e3697137013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3697037010_)))
                      (let ((_tl3697337018_ (##cdr _e3697137013_))
                            (_hd3697237016_ (##car _e3697137013_)))
                        (if (gx#stx-pair? _hd3697237016_)
                            (let ((_e3697437021_ (gx#stx-e _hd3697237016_)))
                              (let ((_tl3697637026_ (##cdr _e3697437021_))
                                    (_hd3697537024_ (##car _e3697437021_)))
                                (if (gx#identifier? _hd3697537024_)
                                    (if (gx#stx-eq? '%#ref _hd3697537024_)
                                        (if (gx#stx-pair? _tl3697637026_)
                                            (let ((_e3697737029_
                                                   (gx#stx-e _tl3697637026_)))
                                              (let ((_tl3697937034_
                                                     (##cdr _e3697737029_))
                                                    (_hd3697837032_
                                                     (##car _e3697737029_)))
                                                (if (gx#stx-null?
                                                     _tl3697937034_)
                                                    (if (gx#stx-pair?
                                                         _tl3697337018_)
                                                        (let ((_e3698037037_
                                                               (gx#stx-e
                                                                _tl3697337018_)))
                                                          (let ((_tl3698237042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3698037037_))
                        (_hd3698137040_ (##car _e3698037037_)))
                    (if (gx#stx-pair? _hd3698137040_)
                        (let ((_e3698337045_ (gx#stx-e _hd3698137040_)))
                          (let ((_tl3698537050_ (##cdr _e3698337045_))
                                (_hd3698437048_ (##car _e3698337045_)))
                            (if (gx#identifier? _hd3698437048_)
                                (if (gx#stx-eq? '%#ref _hd3698437048_)
                                    (if (gx#stx-pair? _tl3698537050_)
                                        (let ((_e3698637053_
                                               (gx#stx-e _tl3698537050_)))
                                          (let ((_tl3698837058_
                                                 (##cdr _e3698637053_))
                                                (_hd3698737056_
                                                 (##car _e3698637053_)))
                                            (if (gx#stx-null? _tl3698837058_)
                                                (if (gx#stx-null?
                                                     _tl3698237042_)
                                                    (___kont4009540096_
                                                     _hd3698737056_
                                                     _hd3697837032_)
                                                    (___kont4009740098_))
                                                (___kont4009740098_))))
                                        (___kont4009740098_))
                                    (___kont4009740098_))
                                (___kont4009740098_))))
                        (___kont4009740098_))))
                (___kont4009740098_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4009740098_))))
                                            (___kont4009740098_))
                                        (___kont4009740098_))
                                    (___kont4009740098_))))
                            (___kont4009740098_))))
                    (___kont4009740098_))
                (___kont4009740098_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4009740098_))))
                                            (___kont4009740098_))))
                                    (if (let ((_$e37095_
                                               (eq? '##eq? _$e36957_)))
                                          (if _$e37095_
                                              _$e37095_
                                              (let ((_$e37098_
                                                     (eq? 'eq? _$e36957_)))
                                                (if _$e37098_
                                                    _$e37098_
                                                    (let ((_$e37101_
                                                           (eq? '##eqv?
                                                                _$e36957_)))
                                                      (if _$e37101_
                                                          _$e37101_
                                                          (let ((_$e37104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (eq? 'eqv? _$e36957_)))
                    (if _$e37104_
                        _$e37104_
                        (let ((_$e37107_ (eq? '##equal? _$e36957_)))
                          (if _$e37107_
                              _$e37107_
                              (let ((_$e37110_ (eq? 'equal? _$e36957_)))
                                (if _$e37110_
                                    _$e37110_
                                    (let ((_$e37113_
                                           (eq? 'gx#free-identifier=?
                                                _$e36957_)))
                                      (if _$e37113_
                                          _$e37113_
                                          (eq? 'gx#stx-eq?
                                               _$e36957_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        ((lambda (_sym37116_)
                                           (let* ((_sym37118_
                                                   (_eqf-symbol32272_
                                                    _sym37116_))
                                                  (___stx4016140162_ _L36931_)
                                                  (_g3712137134_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4016140162_))))
                                             (let ((___kont4016340164_
                                                    (lambda (_L37162_)
                                                      (cons (cons _L37162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _sym37118_
                                (cons (gx#stx-e _L36930_)
                                      (cons _val36220_ '()))))
                    _env36221_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4016540166_
                                                    (lambda () _env36221_)))
                                               (if (gx#stx-pair?
                                                    ___stx4016140162_)
                                                   (let ((_e3712437146_
                                                          (gx#stx-e
                                                           ___stx4016140162_)))
                                                     (let ((_tl3712637151_
                                                            (##cdr _e3712437146_))
                                                           (_hd3712537149_
                                                            (##car _e3712437146_)))
                                                       (if (gx#identifier?
                                                            _hd3712537149_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3712537149_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3712637151_)
                           (let ((_e3712737154_ (gx#stx-e _tl3712637151_)))
                             (let ((_tl3712937159_ (##cdr _e3712737154_))
                                   (_hd3712837157_ (##car _e3712737154_)))
                               (if (gx#stx-null? _tl3712937159_)
                                   (___kont4016340164_ _hd3712837157_)
                                   (___kont4016540166_))))
                           (___kont4016540166_))
                       (___kont4016540166_))
                   (___kont4016540166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4016540166_)))))
                                         _$e36957_)
                                        _env36221_)))))
                           (___kont4019340194_
                            (lambda (_L36834_ _L36835_ _L36836_)
                              (_fold-assert-type32270_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L36836_ '()))
                                           (cons _L36834_
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote)
                                                             (cons _L36835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36220_
                               _env36221_)))
                           (___kont4019540196_
                            (lambda (_L36724_ _L36725_ _L36726_)
                              (let ((_$e36755_
                                     (gxc#identifier-symbol _L36726_)))
                                (if (let ((_$e36758_
                                           (eq? 'gx#free-identifier=?
                                                _$e36755_)))
                                      (if _$e36758_
                                          _$e36758_
                                          (eq? 'gx#stx-eq? _$e36755_)))
                                    ((lambda (_sym36761_)
                                       (let ((_sym36763_
                                              (_eqf-symbol32272_ _sym36761_)))
                                         (cons (cons _L36725_
                                                     (cons _sym36763_
                                                           (cons _L36724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _val36220_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env36221_)))
                                     _$e36755_)
                                    _env36221_))))
                           (___kont4019740198_
                            (lambda (_L36608_ _L36609_ _L36610_)
                              (_fold-assert-type32270_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L36610_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#ref)
                                                       (cons _L36608_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote-syntax)
                                                             (cons _L36609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36220_
                               _env36221_)))
                           (___kont4019940200_
                            (lambda (_L36492_ _L36493_ _L36494_)
                              (_fold-assert-type32270_
                               (gxc#apply-expression-subst
                                _L36493_
                                _L36494_
                                _L36492_)
                               _val36220_
                               _env36221_)))
                           (___kont4020140202_ (lambda () _env36221_)))
                       (if (gx#stx-pair? ___stx4018740188_)
                           (let ((_e3623337184_ (gx#stx-e ___stx4018740188_)))
                             (let ((_tl3623537189_ (##cdr _e3623337184_))
                                   (_hd3623437187_ (##car _e3623337184_)))
                               (if (gx#identifier? _hd3623437187_)
                                   (if (gx#stx-eq? '%#call _hd3623437187_)
                                       (if (gx#stx-pair? _tl3623537189_)
                                           (let ((_e3623637192_
                                                  (gx#stx-e _tl3623537189_)))
                                             (let ((_tl3623837197_
                                                    (##cdr _e3623637192_))
                                                   (_hd3623737195_
                                                    (##car _e3623637192_)))
                                               (if (gx#stx-pair?
                                                    _hd3623737195_)
                                                   (let ((_e3623937200_
                                                          (gx#stx-e
                                                           _hd3623737195_)))
                                                     (let ((_tl3624137205_
                                                            (##cdr _e3623937200_))
                                                           (_hd3624037203_
                                                            (##car _e3623937200_)))
                                                       (if (gx#identifier?
                                                            _hd3624037203_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3624037203_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3624137205_)
                           (let ((_e3624237208_ (gx#stx-e _tl3624137205_)))
                             (let ((_tl3624437213_ (##cdr _e3624237208_))
                                   (_hd3624337211_ (##car _e3624237208_)))
                               (if (gx#stx-null? _tl3624437213_)
                                   (if (gx#stx-pair? _tl3623837197_)
                                       (let ((_e3624537216_
                                              (gx#stx-e _tl3623837197_)))
                                         (let ((_tl3624737221_
                                                (##cdr _e3624537216_))
                                               (_hd3624637219_
                                                (##car _e3624537216_)))
                                           (if (gx#stx-pair? _hd3624637219_)
                                               (let ((_e3624837224_
                                                      (gx#stx-e
                                                       _hd3624637219_)))
                                                 (let ((_tl3625037229_
                                                        (##cdr _e3624837224_))
                                                       (_hd3624937227_
                                                        (##car _e3624837224_)))
                                                   (if (gx#identifier?
                                                        _hd3624937227_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd3624937227_)
                                                           (if (gx#stx-pair?
                                                                _tl3625037229_)
                                                               (let ((_e3625137232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3625037229_)))
                         (let ((_tl3625337237_ (##cdr _e3625137232_))
                               (_hd3625237235_ (##car _e3625137232_)))
                           (if (gx#stx-null? _tl3625337237_)
                               (if (gx#stx-null? _tl3624737221_)
                                   (___kont4018940190_
                                    _hd3625237235_
                                    _hd3624337211_)
                                   (if (gx#stx-pair? _tl3624737221_)
                                       (let ((_e3627236906_
                                              (gx#stx-e _tl3624737221_)))
                                         (let ((_tl3627436911_
                                                (##cdr _e3627236906_))
                                               (_hd3627336909_
                                                (##car _e3627236906_)))
                                           (if (gx#stx-pair? _hd3627336909_)
                                               (let ((_e3627536914_
                                                      (gx#stx-e
                                                       _hd3627336909_)))
                                                 (let ((_tl3627736919_
                                                        (##cdr _e3627536914_))
                                                       (_hd3627636917_
                                                        (##car _e3627536914_)))
                                                   (if (gx#identifier?
                                                        _hd3627636917_)
                                                       (if (gx#stx-eq?
                                                            '%#quote
                                                            _hd3627636917_)
                                                           (if (gx#stx-pair?
                                                                _tl3627736919_)
                                                               (let ((_e3627836922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3627736919_)))
                         (let ((_tl3628036927_ (##cdr _e3627836922_))
                               (_hd3627936925_ (##car _e3627836922_)))
                           (if (gx#stx-null? _tl3628036927_)
                               (if (gx#stx-null? _tl3627436911_)
                                   (___kont4019140192_
                                    _hd3627936925_
                                    _hd3624637219_
                                    _hd3624337211_)
                                   (___kont4020140202_))
                               (___kont4020140202_))))
                       (___kont4020140202_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3627636917_)
                       (if (gx#stx-pair? _tl3627736919_)
                           (let ((_e3633836716_ (gx#stx-e _tl3627736919_)))
                             (let ((_tl3634036721_ (##cdr _e3633836716_))
                                   (_hd3633936719_ (##car _e3633836716_)))
                               (if (gx#stx-null? _tl3634036721_)
                                   (if (gx#stx-null? _tl3627436911_)
                                       (___kont4019540196_
                                        _hd3633936719_
                                        _hd3625237235_
                                        _hd3624337211_)
                                       (___kont4020140202_))
                                   (___kont4020140202_))))
                           (___kont4020140202_))
                       (___kont4020140202_)))
               (___kont4020140202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4020140202_))))
                                       (___kont4020140202_)))
                               (if (gx#stx-pair? _tl3624737221_)
                                   (let ((_e3627236906_
                                          (gx#stx-e _tl3624737221_)))
                                     (let ((_tl3627436911_
                                            (##cdr _e3627236906_))
                                           (_hd3627336909_
                                            (##car _e3627236906_)))
                                       (if (gx#stx-pair? _hd3627336909_)
                                           (let ((_e3627536914_
                                                  (gx#stx-e _hd3627336909_)))
                                             (let ((_tl3627736919_
                                                    (##cdr _e3627536914_))
                                                   (_hd3627636917_
                                                    (##car _e3627536914_)))
                                               (if (gx#identifier?
                                                    _hd3627636917_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3627636917_)
                                                       (if (gx#stx-pair?
                                                            _tl3627736919_)
                                                           (let ((_e3627836922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3627736919_)))
                     (let ((_tl3628036927_ (##cdr _e3627836922_))
                           (_hd3627936925_ (##car _e3627836922_)))
                       (if (gx#stx-null? _tl3628036927_)
                           (if (gx#stx-null? _tl3627436911_)
                               (___kont4019140192_
                                _hd3627936925_
                                _hd3624637219_
                                _hd3624337211_)
                               (___kont4020140202_))
                           (___kont4020140202_))))
                   (___kont4020140202_))
               (___kont4020140202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4020140202_))))
                                           (___kont4020140202_))))
                                   (___kont4020140202_)))))
                       (if (gx#stx-pair? _tl3624737221_)
                           (let ((_e3627236906_ (gx#stx-e _tl3624737221_)))
                             (let ((_tl3627436911_ (##cdr _e3627236906_))
                                   (_hd3627336909_ (##car _e3627236906_)))
                               (if (gx#stx-pair? _hd3627336909_)
                                   (let ((_e3627536914_
                                          (gx#stx-e _hd3627336909_)))
                                     (let ((_tl3627736919_
                                            (##cdr _e3627536914_))
                                           (_hd3627636917_
                                            (##car _e3627536914_)))
                                       (if (gx#identifier? _hd3627636917_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3627636917_)
                                               (if (gx#stx-pair?
                                                    _tl3627736919_)
                                                   (let ((_e3627836922_
                                                          (gx#stx-e
                                                           _tl3627736919_)))
                                                     (let ((_tl3628036927_
                                                            (##cdr _e3627836922_))
                                                           (_hd3627936925_
                                                            (##car _e3627836922_)))
                                                       (if (gx#stx-null?
                                                            _tl3628036927_)
                                                           (if (gx#stx-null?
                                                                _tl3627436911_)
                                                               (___kont4019140192_
                                                                _hd3627936925_
                                                                _hd3624637219_
                                                                _hd3624337211_)
                                                               (___kont4020140202_))
                                                           (___kont4020140202_))))
                                                   (___kont4020140202_))
                                               (___kont4020140202_))
                                           (___kont4020140202_))))
                                   (___kont4020140202_))))
                           (___kont4020140202_)))
                   (if (gx#stx-pair? _tl3624737221_)
                       (let ((_e3627236906_ (gx#stx-e _tl3624737221_)))
                         (let ((_tl3627436911_ (##cdr _e3627236906_))
                               (_hd3627336909_ (##car _e3627236906_)))
                           (if (gx#stx-pair? _hd3627336909_)
                               (let ((_e3627536914_ (gx#stx-e _hd3627336909_)))
                                 (let ((_tl3627736919_ (##cdr _e3627536914_))
                                       (_hd3627636917_ (##car _e3627536914_)))
                                   (if (gx#identifier? _hd3627636917_)
                                       (if (gx#stx-eq? '%#quote _hd3627636917_)
                                           (if (gx#stx-pair? _tl3627736919_)
                                               (let ((_e3627836922_
                                                      (gx#stx-e
                                                       _tl3627736919_)))
                                                 (let ((_tl3628036927_
                                                        (##cdr _e3627836922_))
                                                       (_hd3627936925_
                                                        (##car _e3627836922_)))
                                                   (if (gx#stx-null?
                                                        _tl3628036927_)
                                                       (if (gx#stx-null?
                                                            _tl3627436911_)
                                                           (___kont4019140192_
                                                            _hd3627936925_
                                                            _hd3624637219_
                                                            _hd3624337211_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3624937227_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3625037229_)
                           (let ((_e3630236818_ (gx#stx-e _tl3625037229_)))
                             (let ((_tl3630436823_ (##cdr _e3630236818_))
                                   (_hd3630336821_ (##car _e3630236818_)))
                               (___kont4020140202_)))
                           (___kont4020140202_))
                       (if (gx#stx-eq? '%#quote-syntax _hd3624937227_)
                           (if (gx#stx-pair? _tl3625037229_)
                               (let ((_e3636236576_ (gx#stx-e _tl3625037229_)))
                                 (let ((_tl3636436581_ (##cdr _e3636236576_))
                                       (_hd3636336579_ (##car _e3636236576_)))
                                   (___kont4020140202_)))
                               (___kont4020140202_))
                           (___kont4020140202_))))
               (if (gx#stx-eq? '%#quote _hd3624937227_)
                   (if (gx#stx-pair? _tl3625037229_)
                       (let ((_e3630236818_ (gx#stx-e _tl3625037229_)))
                         (let ((_tl3630436823_ (##cdr _e3630236818_))
                               (_hd3630336821_ (##car _e3630236818_)))
                           (if (gx#stx-null? _tl3630436823_)
                               (if (gx#stx-null? _tl3627436911_)
                                   (___kont4019340194_
                                    _hd3627336909_
                                    _hd3630336821_
                                    _hd3624337211_)
                                   (___kont4020140202_))
                               (___kont4020140202_))))
                       (___kont4020140202_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3624937227_)
                       (if (gx#stx-pair? _tl3625037229_)
                           (let ((_e3636236576_ (gx#stx-e _tl3625037229_)))
                             (let ((_tl3636436581_ (##cdr _e3636236576_))
                                   (_hd3636336579_ (##car _e3636236576_)))
                               (___kont4020140202_)))
                           (___kont4020140202_))
                       (___kont4020140202_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3624937227_)
                                                   (if (gx#stx-pair?
                                                        _tl3625037229_)
                                                       (let ((_e3630236818_
                                                              (gx#stx-e
                                                               _tl3625037229_)))
                                                         (let ((_tl3630436823_
                                                                (##cdr _e3630236818_))
                                                               (_hd3630336821_
                                                                (##car _e3630236818_)))
                                                           (if (gx#stx-null?
                                                                _tl3630436823_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3627436911_)
                           (___kont4019340194_
                            _hd3627336909_
                            _hd3630336821_
                            _hd3624337211_)
                           (___kont4020140202_))
                       (___kont4020140202_))))
               (___kont4020140202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3624937227_)
                                                       (if (gx#stx-pair?
                                                            _tl3625037229_)
                                                           (let ((_e3636236576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3625037229_)))
                     (let ((_tl3636436581_ (##cdr _e3636236576_))
                           (_hd3636336579_ (##car _e3636236576_)))
                       (___kont4020140202_)))
                   (___kont4020140202_))
               (___kont4020140202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3624937227_)
                                               (if (gx#stx-pair?
                                                    _tl3625037229_)
                                                   (let ((_e3630236818_
                                                          (gx#stx-e
                                                           _tl3625037229_)))
                                                     (let ((_tl3630436823_
                                                            (##cdr _e3630236818_))
                                                           (_hd3630336821_
                                                            (##car _e3630236818_)))
                                                       (if (gx#stx-null?
                                                            _tl3630436823_)
                                                           (if (gx#stx-null?
                                                                _tl3627436911_)
                                                               (___kont4019340194_
                                                                _hd3627336909_
                                                                _hd3630336821_
                                                                _hd3624337211_)
                                                               (___kont4020140202_))
                                                           (___kont4020140202_))))
                                                   (___kont4020140202_))
                                               (if (gx#stx-eq?
                                                    '%#quote-syntax
                                                    _hd3624937227_)
                                                   (if (gx#stx-pair?
                                                        _tl3625037229_)
                                                       (let ((_e3636236576_
                                                              (gx#stx-e
                                                               _tl3625037229_)))
                                                         (let ((_tl3636436581_
                                                                (##cdr _e3636236576_))
                                                               (_hd3636336579_
                                                                (##car _e3636236576_)))
                                                           (if (gx#stx-null?
                                                                _tl3636436581_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3627636917_)
                           (if (gx#stx-pair? _tl3627736919_)
                               (let ((_e3637136600_ (gx#stx-e _tl3627736919_)))
                                 (let ((_tl3637336605_ (##cdr _e3637136600_))
                                       (_hd3637236603_ (##car _e3637136600_)))
                                   (if (gx#stx-null? _tl3637336605_)
                                       (if (gx#stx-null? _tl3627436911_)
                                           (___kont4019740198_
                                            _hd3637236603_
                                            _hd3636336579_
                                            _hd3624337211_)
                                           (___kont4020140202_))
                                       (___kont4020140202_))))
                               (___kont4020140202_))
                           (___kont4020140202_))
                       (___kont4020140202_))))
               (___kont4020140202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4020140202_))))
                                       (if (gx#stx-eq? '%#quote _hd3624937227_)
                                           (if (gx#stx-pair? _tl3625037229_)
                                               (let ((_e3630236818_
                                                      (gx#stx-e
                                                       _tl3625037229_)))
                                                 (let ((_tl3630436823_
                                                        (##cdr _e3630236818_))
                                                       (_hd3630336821_
                                                        (##car _e3630236818_)))
                                                   (if (gx#stx-null?
                                                        _tl3630436823_)
                                                       (if (gx#stx-null?
                                                            _tl3627436911_)
                                                           (___kont4019340194_
                                                            _hd3627336909_
                                                            _hd3630336821_
                                                            _hd3624337211_)
                                                           (___kont4020140202_))
                                                       (___kont4020140202_))))
                                               (___kont4020140202_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3624937227_)
                                               (if (gx#stx-pair?
                                                    _tl3625037229_)
                                                   (let ((_e3636236576_
                                                          (gx#stx-e
                                                           _tl3625037229_)))
                                                     (let ((_tl3636436581_
                                                            (##cdr _e3636236576_))
                                                           (_hd3636336579_
                                                            (##car _e3636236576_)))
                                                       (___kont4020140202_)))
                                                   (___kont4020140202_))
                                               (___kont4020140202_))))))
                               (if (gx#stx-eq? '%#quote _hd3624937227_)
                                   (if (gx#stx-pair? _tl3625037229_)
                                       (let ((_e3630236818_
                                              (gx#stx-e _tl3625037229_)))
                                         (let ((_tl3630436823_
                                                (##cdr _e3630236818_))
                                               (_hd3630336821_
                                                (##car _e3630236818_)))
                                           (if (gx#stx-null? _tl3630436823_)
                                               (if (gx#stx-null?
                                                    _tl3627436911_)
                                                   (___kont4019340194_
                                                    _hd3627336909_
                                                    _hd3630336821_
                                                    _hd3624337211_)
                                                   (___kont4020140202_))
                                               (___kont4020140202_))))
                                       (___kont4020140202_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3624937227_)
                                       (if (gx#stx-pair? _tl3625037229_)
                                           (let ((_e3636236576_
                                                  (gx#stx-e _tl3625037229_)))
                                             (let ((_tl3636436581_
                                                    (##cdr _e3636236576_))
                                                   (_hd3636336579_
                                                    (##car _e3636236576_)))
                                               (___kont4020140202_)))
                                           (___kont4020140202_))
                                       (___kont4020140202_))))))
                       (if (gx#stx-eq? '%#quote _hd3624937227_)
                           (if (gx#stx-pair? _tl3625037229_)
                               (let ((_e3630236818_ (gx#stx-e _tl3625037229_)))
                                 (let ((_tl3630436823_ (##cdr _e3630236818_))
                                       (_hd3630336821_ (##car _e3630236818_)))
                                   (___kont4020140202_)))
                               (___kont4020140202_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3624937227_)
                               (if (gx#stx-pair? _tl3625037229_)
                                   (let ((_e3636236576_
                                          (gx#stx-e _tl3625037229_)))
                                     (let ((_tl3636436581_
                                            (##cdr _e3636236576_))
                                           (_hd3636336579_
                                            (##car _e3636236576_)))
                                       (___kont4020140202_)))
                                   (___kont4020140202_))
                               (___kont4020140202_)))))
               (if (gx#stx-pair? _tl3624737221_)
                   (let ((_e3627236906_ (gx#stx-e _tl3624737221_)))
                     (let ((_tl3627436911_ (##cdr _e3627236906_))
                           (_hd3627336909_ (##car _e3627236906_)))
                       (if (gx#stx-pair? _hd3627336909_)
                           (let ((_e3627536914_ (gx#stx-e _hd3627336909_)))
                             (let ((_tl3627736919_ (##cdr _e3627536914_))
                                   (_hd3627636917_ (##car _e3627536914_)))
                               (if (gx#identifier? _hd3627636917_)
                                   (if (gx#stx-eq? '%#quote _hd3627636917_)
                                       (if (gx#stx-pair? _tl3627736919_)
                                           (let ((_e3627836922_
                                                  (gx#stx-e _tl3627736919_)))
                                             (let ((_tl3628036927_
                                                    (##cdr _e3627836922_))
                                                   (_hd3627936925_
                                                    (##car _e3627836922_)))
                                               (if (gx#stx-null?
                                                    _tl3628036927_)
                                                   (if (gx#stx-null?
                                                        _tl3627436911_)
                                                       (___kont4019140192_
                                                        _hd3627936925_
                                                        _hd3624637219_
                                                        _hd3624337211_)
                                                       (___kont4020140202_))
                                                   (___kont4020140202_))))
                                           (___kont4020140202_))
                                       (___kont4020140202_))
                                   (___kont4020140202_))))
                           (___kont4020140202_))))
                   (___kont4020140202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl3624737221_)
                                                   (let ((_e3627236906_
                                                          (gx#stx-e
                                                           _tl3624737221_)))
                                                     (let ((_tl3627436911_
                                                            (##cdr _e3627236906_))
                                                           (_hd3627336909_
                                                            (##car _e3627236906_)))
                                                       (if (gx#stx-pair?
                                                            _hd3627336909_)
                                                           (let ((_e3627536914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3627336909_)))
                     (let ((_tl3627736919_ (##cdr _e3627536914_))
                           (_hd3627636917_ (##car _e3627536914_)))
                       (if (gx#identifier? _hd3627636917_)
                           (if (gx#stx-eq? '%#quote _hd3627636917_)
                               (if (gx#stx-pair? _tl3627736919_)
                                   (let ((_e3627836922_
                                          (gx#stx-e _tl3627736919_)))
                                     (let ((_tl3628036927_
                                            (##cdr _e3627836922_))
                                           (_hd3627936925_
                                            (##car _e3627836922_)))
                                       (if (gx#stx-null? _tl3628036927_)
                                           (if (gx#stx-null? _tl3627436911_)
                                               (___kont4019140192_
                                                _hd3627936925_
                                                _hd3624637219_
                                                _hd3624337211_)
                                               (___kont4020140202_))
                                           (___kont4020140202_))))
                                   (___kont4020140202_))
                               (___kont4020140202_))
                           (___kont4020140202_))))
                   (___kont4020140202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4020140202_)))))
                                       (___kont4020140202_))
                                   (___kont4020140202_))))
                           (___kont4020140202_))
                       (if (gx#stx-eq? '%#lambda _hd3624037203_)
                           (if (gx#stx-pair? _tl3624137205_)
                               (let ((_e3638636444_ (gx#stx-e _tl3624137205_)))
                                 (let ((_tl3638836449_ (##cdr _e3638636444_))
                                       (_hd3638736447_ (##car _e3638636444_)))
                                   (if (gx#stx-pair? _hd3638736447_)
                                       (let ((_e3638936452_
                                              (gx#stx-e _hd3638736447_)))
                                         (let ((_tl3639136457_
                                                (##cdr _e3638936452_))
                                               (_hd3639036455_
                                                (##car _e3638936452_)))
                                           (if (gx#stx-null? _tl3639136457_)
                                               (if (gx#stx-pair?
                                                    _tl3638836449_)
                                                   (let ((_e3639236460_
                                                          (gx#stx-e
                                                           _tl3638836449_)))
                                                     (let ((_tl3639436465_
                                                            (##cdr _e3639236460_))
                                                           (_hd3639336463_
                                                            (##car _e3639236460_)))
                                                       (if (gx#stx-null?
                                                            _tl3639436465_)
                                                           (if (gx#stx-pair?
                                                                _tl3623837197_)
                                                               (let ((_e3639536468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3623837197_)))
                         (let ((_tl3639736473_ (##cdr _e3639536468_))
                               (_hd3639636471_ (##car _e3639536468_)))
                           (if (gx#stx-pair? _hd3639636471_)
                               (let ((_e3639836476_ (gx#stx-e _hd3639636471_)))
                                 (let ((_tl3640036481_ (##cdr _e3639836476_))
                                       (_hd3639936479_ (##car _e3639836476_)))
                                   (if (gx#identifier? _hd3639936479_)
                                       (if (gx#stx-eq? '%#ref _hd3639936479_)
                                           (if (gx#stx-pair? _tl3640036481_)
                                               (let ((_e3640136484_
                                                      (gx#stx-e
                                                       _tl3640036481_)))
                                                 (let ((_tl3640336489_
                                                        (##cdr _e3640136484_))
                                                       (_hd3640236487_
                                                        (##car _e3640136484_)))
                                                   (if (gx#stx-null?
                                                        _tl3640336489_)
                                                       (if (gx#stx-null?
                                                            _tl3639736473_)
                                                           (___kont4019940200_
                                                            _hd3640236487_
                                                            _hd3639336463_
                                                            _hd3639036455_)
                                                           (___kont4020140202_))
                                                       (___kont4020140202_))))
                                               (___kont4020140202_))
                                           (___kont4020140202_))
                                       (___kont4020140202_))))
                               (___kont4020140202_))))
                       (___kont4020140202_))
                   (___kont4020140202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4020140202_))
                                               (___kont4020140202_))))
                                       (___kont4020140202_))))
                               (___kont4020140202_))
                           (___kont4020140202_)))
                   (___kont4020140202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4020140202_))))
                                           (___kont4020140202_))
                                       (___kont4020140202_))
                                   (___kont4020140202_))))
                           (___kont4020140202_))))))
                (_countf-symbol32271_
                 (lambda (_id36211_)
                   (let ((_$e36213_ (gxc#identifier-symbol _id36211_)))
                     (if (let ((_$e36216_ (eq? '##vector-length _$e36213_)))
                           (if _$e36216_
                               _$e36216_
                               (eq? 'vector-length _$e36213_)))
                         'vector-length
                         (if (eq? 'values-count _$e36213_)
                             'values-count
                             '#f)))))
                (_eqf-symbol32272_
                 (lambda (_sym36197_)
                   (let ((_$e36199_ _sym36197_))
                     (if (let ((_$e36202_ (eq? '##eq? _$e36199_)))
                           (if _$e36202_ _$e36202_ (eq? 'eq? _$e36199_)))
                         'eq?
                         (if (let ((_$e36205_ (eq? '##eqv? _$e36199_)))
                               (if _$e36205_ _$e36205_ (eq? 'eqv? _$e36199_)))
                             'eqv?
                             (if (let ((_$e36208_ (eq? '##equal? _$e36199_)))
                                   (if _$e36208_
                                       _$e36208_
                                       (eq? 'equal? _$e36199_)))
                                 'equal?
                                 (if (eq? 'gx#free-identifier=? _$e36199_)
                                     'free-identifier=?
                                     (if (eq? 'gx#stx-eq? _$e36199_)
                                         'stx-eq?
                                         '#f))))))))
                (_eqf-symbol?32273_
                 (lambda (_sym36180_)
                   (let ((_$e36182_ _sym36180_))
                     (if (let ((_$e36185_ (eq? 'eq? _$e36182_)))
                           (if _$e36185_
                               _$e36185_
                               (let ((_$e36188_ (eq? 'eqv? _$e36182_)))
                                 (if _$e36188_
                                     _$e36188_
                                     (let ((_$e36191_ (eq? 'equal? _$e36182_)))
                                       (if _$e36191_
                                           _$e36191_
                                           (let ((_$e36194_
                                                  (eq? 'free-identifier=?
                                                       _$e36182_)))
                                             (if _$e36194_
                                                 _$e36194_
                                                 (eq? 'stx-eq?
                                                      _$e36182_)))))))))
                         '#t
                         '#f))))
                (_do-assert!32274_
                 (lambda (_assert36171_ _type36172_ _K36173_)
                   (let ((_unwind-assert36175_ _env-assert32264_)
                         (_unwind-type36176_ _env-type32265_))
                     (begin
                       (set! _env-assert32264_ _assert36171_)
                       (set! _env-type32265_ _type36172_)
                       (let ((_val36178_ (_K36173_)))
                         (begin
                           (set! _env-assert32264_ _unwind-assert36175_)
                           (set! _env-type32265_ _unwind-type36176_)
                           _val36178_))))))
                (_do-bind32275_
                 (lambda (_bind36168_ _K36169_)
                   (if (pair? _bind36168_)
                       (_do-bind!32277_
                        (_fold-bind-env32276_ _bind36168_ _env-bind32266_)
                        _K36169_)
                       (_K36169_))))
                (_fold-bind-env32276_
                 (lambda (_bind36097_ _env36098_)
                   (let _lp36100_ ((_rest36102_ _bind36097_)
                                   (_env36103_ _env36098_))
                     (let* ((_rest3610436112_ _rest36102_)
                            (_else3610636120_ (lambda () _env36103_))
                            (_K3610836156_
                             (lambda (_rest36123_ _bind36124_)
                               (let* ((_bind3612536132_ _bind36124_)
                                      (_E3612736136_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3612536132_)))
                                      (_K3612836144_
                                       (lambda (_expr36139_ _id36140_)
                                         (let ((_sexpr36142_
                                                (gxc#apply-generate-runtime-repr
                                                 _expr36139_)))
                                           (_lp36100_
                                            _rest36123_
                                            (cons (cons _sexpr36142_ _id36140_)
                                                  _env36103_))))))
                                 (if (##pair? _bind3612536132_)
                                     (let ((_hd3612936147_
                                            (##car _bind3612536132_))
                                           (_tl3613036149_
                                            (##cdr _bind3612536132_)))
                                       (let* ((_id36152_ _hd3612936147_)
                                              (_expr36154_ _tl3613036149_))
                                         (_K3612836144_
                                          _expr36154_
                                          _id36152_)))
                                     (_E3612736136_))))))
                       (if (##pair? _rest3610436112_)
                           (let ((_hd3610936159_ (##car _rest3610436112_))
                                 (_tl3611036161_ (##cdr _rest3610436112_)))
                             (let* ((_bind36164_ _hd3610936159_)
                                    (_rest36166_ _tl3611036161_))
                               (_K3610836156_ _rest36166_ _bind36164_)))
                           (_else3610636120_))))))
                (_do-bind!32277_
                 (lambda (_env36090_ _K36091_)
                   (let ((_unwind36093_ _env-bind32266_))
                     (begin
                       (set! _env-bind32266_ _env36090_)
                       (let ((_val36095_ (_K36091_)))
                         (begin
                           (set! _env-bind32266_ _unwind36093_)
                           _val36095_))))))
                (_do-splice!32278_
                 (lambda (_K36084_)
                   (let ((_unwind36086_ _in-splice?32267_))
                     (begin
                       (set! _in-splice?32267_ '#t)
                       (let ((_val36088_ (_K36084_)))
                         (begin
                           (set! _in-splice?32267_ _unwind36086_)
                           _val36088_))))))
                (_optimize-e32279_
                 (lambda (_expr35281_)
                   (let* ((___stx4063940640_ _expr35281_)
                          (_g3528835461_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4063940640_))))
                     (let ((___kont4064140642_
                            (lambda (_L36056_ _L36057_ _L36058_)
                              (let ((_$e36075_ (_assert-e32282_ _L36058_)))
                                (if (eq? '#t _$e36075_)
                                    (_optimize-e32279_ _L36057_)
                                    (if (eq? '#f _$e36075_)
                                        (_optimize-e32279_ _L36056_)
                                        (let ((_K36078_
                                               (_optimize-t__0__3960239603_
                                                _L36057_
                                                _L36058_))
                                              (_E36079_
                                               (_optimize-f__3960439605_
                                                _L36056_
                                                _L36058_)))
                                          (if (equal? (gxc#apply-generate-runtime-repr
                                                       _K36078_)
                                                      (gxc#apply-generate-runtime-repr
                                                       _E36079_))
                                              _K36078_
                                              (cons '%#if
                                                    (cons _L36058_
                                                          (cons _K36078_
                                                                (cons _E36079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (___kont4064340644_
                            (lambda (_L35986_ _L35987_)
                              (let ((_$e36007_ (_lookup-block32287_ _L35987_)))
                                (if _$e36007_
                                    ((lambda (_block36010_)
                                       (if (_nonlinear-block?32289_
                                            _block36010_)
                                           _expr35281_
                                           (_optimize-e32279_
                                            (_inline-block32288_
                                             _block36010_
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g3601136014_
                                                                _g3601236016_)
                                                         (cons _g3601136014_
                                                               _g3601236016_))
                                                       '()
                                                       _L35986_))))))
                                     _$e36007_)
                                    _expr35281_))))
                           (___kont4064740648_
                            (lambda (_L35876_ _L35877_ _L35878_)
                              (let ((_body35897_ (_optimize-e32279_ _L35876_)))
                                (cons '%#let-values
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _L35877_
                                               _L35878_)
                                              (foldr2 (lambda (_g3589835902_
                                                               _g3589935904_
                                                               _g3590035906_)
                                                        (cons (cons (cons _g3589935904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                        (cons _g3589835902_ '()))
                                  '()))
                      _g3590035906_))
              '()
              _L35877_
              _L35878_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _body35897_ '()))))))
                           (___kont4065140652_
                            (lambda (_L35744_ _L35745_ _L35746_)
                              (_bind-e__0__3961039611_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3576435767_
                                                       _g3576535769_)
                                                (cons _g3576435767_
                                                      _g3576535769_))
                                              '()
                                              _L35746_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3577135774_
                                                       _g3577235776_)
                                                (cons _g3577135774_
                                                      _g3577235776_))
                                              '()
                                              _L35745_)))
                               _L35744_)))
                           (___kont4065540656_
                            (lambda (_L35601_
                                     _L35602_
                                     _L35603_
                                     _L35604_
                                     _L35605_)
                              (_do-splice!32278_
                               (lambda ()
                                 (let ((_expr35647_
                                        (_optimize-e32279_ _L35603_)))
                                   (cons '%#letrec-values
                                         (cons (cons (cons (cons _L35605_ '())
                                                           (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3564835651_
                                                        _g3564935653_)
                                                 (cons _g3564835651_
                                                       _g3564935653_))
                                               '()
                                               _L35604_))
                                     (cons _expr35647_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g3565535658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3565635660_)
                         (cons _g3565535658_ _g3565635660_))
                       '()
                       _L35602_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L35601_ '()))))))))
                           (___kont4066140662_ (lambda () _expr35281_)))
                       (let* ((___match4084840849_
                               (lambda (_e3540935473_
                                        _hd3541035476_
                                        _tl3541135478_
                                        _e3541235481_
                                        _hd3541335484_
                                        _tl3541435486_
                                        _e3541535489_
                                        _hd3541635492_
                                        _tl3541735494_
                                        _e3541835497_
                                        _hd3541935500_
                                        _tl3542035502_
                                        _e3542135505_
                                        _hd3542235508_
                                        _tl3542335510_
                                        _e3542435513_
                                        _hd3542535516_
                                        _tl3542635518_
                                        _e3542735521_
                                        _hd3542835524_
                                        _tl3542935526_
                                        _e3543035529_
                                        _hd3543135532_
                                        _tl3543235534_
                                        ___splice4065740658_
                                        _target3543335537_
                                        _tl3543535539_)
                                 (letrec ((_loop3543635542_
                                           (lambda (_hd3543435545_
                                                    _id3544035547_)
                                             (if (gx#stx-pair? _hd3543435545_)
                                                 (let ((_e3543735550_
                                                        (gx#stx-e
                                                         _hd3543435545_)))
                                                   (let ((_lp-tl3543935555_
                                                          (##cdr _e3543735550_))
                                                         (_lp-hd3543835553_
                                                          (##car _e3543735550_)))
                                                     (_loop3543635542_
                                                      _lp-tl3543935555_
                                                      (cons _lp-hd3543835553_
                                                            _id3544035547_))))
                                                 (let ((_id3544135558_
                                                        (reverse _id3544035547_)))
                                                   (if (gx#stx-pair?
                                                        _tl3543235534_)
                                                       (let ((_e3544235561_
                                                              (gx#stx-e
                                                               _tl3543235534_)))
                                                         (let ((_tl3544435566_
                                                                (##cdr _e3544235561_))
                                                               (_hd3544335564_
                                                                (##car _e3544235561_)))
                                                           (if (gx#stx-null?
                                                                _tl3544435566_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3542635518_)
                           (if (gx#stx-pair/null? _tl3541735494_)
                               (let ((___splice4065940660_
                                      (gx#syntax-split-splice
                                       _tl3541735494_
                                       '0)))
                                 (let ((_tl3544735571_
                                        (##vector-ref ___splice4065940660_ '1))
                                       (_target3544535569_
                                        (##vector-ref
                                         ___splice4065940660_
                                         '0)))
                                   (if (gx#stx-null? _tl3544735571_)
                                       (letrec ((_loop3544835574_
                                                 (lambda (_hd3544635577_
                                                          _bind3545235579_)
                                                   (if (gx#stx-pair?
                                                        _hd3544635577_)
                                                       (let ((_e3544935582_
                                                              (gx#stx-e
                                                               _hd3544635577_)))
                                                         (let ((_lp-tl3545135587_
                                                                (##cdr _e3544935582_))
                                                               (_lp-hd3545035585_
                                                                (##car _e3544935582_)))
                                                           (_loop3544835574_
                                                            _lp-tl3545135587_
                                                            (cons _lp-hd3545035585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind3545235579_))))
               (let ((_bind3545335590_ (reverse _bind3545235579_)))
                 (if (gx#stx-pair? _tl3541435486_)
                     (let ((_e3545435593_ (gx#stx-e _tl3541435486_)))
                       (let ((_tl3545635598_ (##cdr _e3545435593_))
                             (_hd3545535596_ (##car _e3545435593_)))
                         (if (gx#stx-null? _tl3545635598_)
                             (___kont4065540656_
                              _hd3545535596_
                              _bind3545335590_
                              _hd3544335564_
                              _id3544135558_
                              _hd3542235508_)
                             (___kont4066140662_))))
                     (___kont4066140662_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3544835574_
                                          _target3544535569_
                                          '()))
                                       (___kont4066140662_))))
                               (___kont4066140662_))
                           (___kont4066140662_))
                       (___kont4066140662_))))
               (___kont4066140662_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop3543635542_ _target3543335537_ '()))))
                              (___match4078240783_
                               (lambda (_e3537535668_
                                        _hd3537635671_
                                        _tl3537735673_
                                        _e3537835676_
                                        _hd3537935679_
                                        _tl3538035681_
                                        ___splice4065340654_
                                        _target3538135684_
                                        _tl3538335686_)
                                 (letrec ((_loop3538435689_
                                           (lambda (_hd3538235692_
                                                    _expr3538835694_
                                                    _id3538935696_)
                                             (if (gx#stx-pair? _hd3538235692_)
                                                 (let ((_e3538535699_
                                                        (gx#stx-e
                                                         _hd3538235692_)))
                                                   (let ((_lp-tl3538735704_
                                                          (##cdr _e3538535699_))
                                                         (_lp-hd3538635702_
                                                          (##car _e3538535699_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3538635702_)
                                                         (let ((_e3539235707_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3538635702_)))
                   (let ((_tl3539435712_ (##cdr _e3539235707_))
                         (_hd3539335710_ (##car _e3539235707_)))
                     (if (gx#stx-pair? _hd3539335710_)
                         (let ((_e3539535715_ (gx#stx-e _hd3539335710_)))
                           (let ((_tl3539735720_ (##cdr _e3539535715_))
                                 (_hd3539635718_ (##car _e3539535715_)))
                             (if (gx#stx-null? _tl3539735720_)
                                 (if (gx#stx-pair? _tl3539435712_)
                                     (let ((_e3539835723_
                                            (gx#stx-e _tl3539435712_)))
                                       (let ((_tl3540035728_
                                              (##cdr _e3539835723_))
                                             (_hd3539935726_
                                              (##car _e3539835723_)))
                                         (if (gx#stx-null? _tl3540035728_)
                                             (_loop3538435689_
                                              _lp-tl3538735704_
                                              (cons _hd3539935726_
                                                    _expr3538835694_)
                                              (cons _hd3539635718_
                                                    _id3538935696_))
                                             (___kont4066140662_))))
                                     (___kont4066140662_))
                                 (___kont4066140662_))))
                         (___kont4066140662_))))
                 (___kont4066140662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3539135733_
                                                        (reverse _id3538935696_))
                                                       (_expr3539035731_
                                                        (reverse _expr3538835694_)))
                                                   (if (gx#stx-pair?
                                                        _tl3538035681_)
                                                       (let ((_e3540135736_
                                                              (gx#stx-e
                                                               _tl3538035681_)))
                                                         (let ((_tl3540335741_
                                                                (##cdr _e3540135736_))
                                                               (_hd3540235739_
                                                                (##car _e3540135736_)))
                                                           (if (gx#stx-null?
                                                                _tl3540335741_)
                                                               (___kont4065140652_
                                                                _hd3540235739_
                                                                _expr3539035731_
                                                                _id3539135733_)
                                                               (___kont4066140662_))))
                                                       (___kont4066140662_)))))))
                                   (_loop3538435689_
                                    _target3538135684_
                                    '()
                                    '()))))
                              (___match4075840759_
                               (lambda (_e3533735784_
                                        _hd3533835787_
                                        _tl3533935789_
                                        _e3534035792_
                                        _hd3534135795_
                                        _tl3534235797_
                                        ___splice4064940650_
                                        _target3534335800_
                                        _tl3534535802_)
                                 (letrec ((_loop3534635805_
                                           (lambda (_hd3534435808_
                                                    _xid3535035810_
                                                    _id3535135812_)
                                             (if (gx#stx-pair? _hd3534435808_)
                                                 (let ((_e3534735815_
                                                        (gx#stx-e
                                                         _hd3534435808_)))
                                                   (let ((_lp-tl3534935820_
                                                          (##cdr _e3534735815_))
                                                         (_lp-hd3534835818_
                                                          (##car _e3534735815_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3534835818_)
                                                         (let ((_e3535435823_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3534835818_)))
                   (let ((_tl3535635828_ (##cdr _e3535435823_))
                         (_hd3535535826_ (##car _e3535435823_)))
                     (if (gx#stx-pair? _hd3535535826_)
                         (let ((_e3535735831_ (gx#stx-e _hd3535535826_)))
                           (let ((_tl3535935836_ (##cdr _e3535735831_))
                                 (_hd3535835834_ (##car _e3535735831_)))
                             (if (gx#stx-null? _tl3535935836_)
                                 (if (gx#stx-pair? _tl3535635828_)
                                     (let ((_e3536035839_
                                            (gx#stx-e _tl3535635828_)))
                                       (let ((_tl3536235844_
                                              (##cdr _e3536035839_))
                                             (_hd3536135842_
                                              (##car _e3536035839_)))
                                         (if (gx#stx-pair? _hd3536135842_)
                                             (let ((_e3536335847_
                                                    (gx#stx-e _hd3536135842_)))
                                               (let ((_tl3536535852_
                                                      (##cdr _e3536335847_))
                                                     (_hd3536435850_
                                                      (##car _e3536335847_)))
                                                 (if (gx#identifier?
                                                      _hd3536435850_)
                                                     (if (gx#stx-eq?
                                                          '%#ref
                                                          _hd3536435850_)
                                                         (if (gx#stx-pair?
                                                              _tl3536535852_)
                                                             (let ((_e3536635855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3536535852_)))
                       (let ((_tl3536835860_ (##cdr _e3536635855_))
                             (_hd3536735858_ (##car _e3536635855_)))
                         (if (gx#stx-null? _tl3536835860_)
                             (if (gx#stx-null? _tl3536235844_)
                                 (_loop3534635805_
                                  _lp-tl3534935820_
                                  (cons _hd3536735858_ _xid3535035810_)
                                  (cons _hd3535835834_ _id3535135812_))
                                 (___match4078240783_
                                  _e3533735784_
                                  _hd3533835787_
                                  _tl3533935789_
                                  _e3534035792_
                                  _hd3534135795_
                                  _tl3534235797_
                                  ___splice4064940650_
                                  _target3534335800_
                                  _tl3534535802_))
                             (___match4078240783_
                              _e3533735784_
                              _hd3533835787_
                              _tl3533935789_
                              _e3534035792_
                              _hd3534135795_
                              _tl3534235797_
                              ___splice4064940650_
                              _target3534335800_
                              _tl3534535802_))))
                     (___match4078240783_
                      _e3533735784_
                      _hd3533835787_
                      _tl3533935789_
                      _e3534035792_
                      _hd3534135795_
                      _tl3534235797_
                      ___splice4064940650_
                      _target3534335800_
                      _tl3534535802_))
                 (___match4078240783_
                  _e3533735784_
                  _hd3533835787_
                  _tl3533935789_
                  _e3534035792_
                  _hd3534135795_
                  _tl3534235797_
                  ___splice4064940650_
                  _target3534335800_
                  _tl3534535802_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___match4078240783_
                                                      _e3533735784_
                                                      _hd3533835787_
                                                      _tl3533935789_
                                                      _e3534035792_
                                                      _hd3534135795_
                                                      _tl3534235797_
                                                      ___splice4064940650_
                                                      _target3534335800_
                                                      _tl3534535802_))))
                                             (___match4078240783_
                                              _e3533735784_
                                              _hd3533835787_
                                              _tl3533935789_
                                              _e3534035792_
                                              _hd3534135795_
                                              _tl3534235797_
                                              ___splice4064940650_
                                              _target3534335800_
                                              _tl3534535802_))))
                                     (___match4078240783_
                                      _e3533735784_
                                      _hd3533835787_
                                      _tl3533935789_
                                      _e3534035792_
                                      _hd3534135795_
                                      _tl3534235797_
                                      ___splice4064940650_
                                      _target3534335800_
                                      _tl3534535802_))
                                 (___match4078240783_
                                  _e3533735784_
                                  _hd3533835787_
                                  _tl3533935789_
                                  _e3534035792_
                                  _hd3534135795_
                                  _tl3534235797_
                                  ___splice4064940650_
                                  _target3534335800_
                                  _tl3534535802_))))
                         (___match4078240783_
                          _e3533735784_
                          _hd3533835787_
                          _tl3533935789_
                          _e3534035792_
                          _hd3534135795_
                          _tl3534235797_
                          ___splice4064940650_
                          _target3534335800_
                          _tl3534535802_))))
                 (___match4078240783_
                  _e3533735784_
                  _hd3533835787_
                  _tl3533935789_
                  _e3534035792_
                  _hd3534135795_
                  _tl3534235797_
                  ___splice4064940650_
                  _target3534335800_
                  _tl3534535802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3535335865_
                                                        (reverse _id3535135812_))
                                                       (_xid3535235863_
                                                        (reverse _xid3535035810_)))
                                                   (if (gx#stx-pair?
                                                        _tl3534235797_)
                                                       (let ((_e3536935868_
                                                              (gx#stx-e
                                                               _tl3534235797_)))
                                                         (let ((_tl3537135873_
                                                                (##cdr _e3536935868_))
                                                               (_hd3537035871_
                                                                (##car _e3536935868_)))
                                                           (if (gx#stx-null?
                                                                _tl3537135873_)
                                                               (___kont4064740648_
                                                                _hd3537035871_
                                                                _xid3535235863_
                                                                _id3535335865_)
                                                               (___match4078240783_
                                                                _e3533735784_
                                                                _hd3533835787_
                                                                _tl3533935789_
                                                                _e3534035792_
                                                                _hd3534135795_
                                                                _tl3534235797_
                                                                ___splice4064940650_
                                                                _target3534335800_
                                                                _tl3534535802_))))
                                                       (___match4078240783_
                                                        _e3533735784_
                                                        _hd3533835787_
                                                        _tl3533935789_
                                                        _e3534035792_
                                                        _hd3534135795_
                                                        _tl3534235797_
                                                        ___splice4064940650_
                                                        _target3534335800_
                                                        _tl3534535802_)))))))
                                   (_loop3534635805_
                                    _target3534335800_
                                    '()
                                    '()))))
                              (___match4073440735_
                               (lambda (_e3530735914_
                                        _hd3530835917_
                                        _tl3530935919_
                                        _e3531035922_
                                        _hd3531135925_
                                        _tl3531235927_
                                        _e3531335930_
                                        _hd3531435933_
                                        _tl3531535935_
                                        _e3531635938_
                                        _hd3531735941_
                                        _tl3531835943_
                                        ___splice4064540646_
                                        _target3531935946_
                                        _tl3532135948_)
                                 (letrec ((_loop3532235951_
                                           (lambda (_hd3532035954_
                                                    _id3532635956_)
                                             (if (gx#stx-pair? _hd3532035954_)
                                                 (let ((_e3532335959_
                                                        (gx#stx-e
                                                         _hd3532035954_)))
                                                   (let ((_lp-tl3532535964_
                                                          (##cdr _e3532335959_))
                                                         (_lp-hd3532435962_
                                                          (##car _e3532335959_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3532435962_)
                                                         (let ((_e3532835967_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3532435962_)))
                   (let ((_tl3533035972_ (##cdr _e3532835967_))
                         (_hd3532935970_ (##car _e3532835967_)))
                     (if (gx#identifier? _hd3532935970_)
                         (if (gx#stx-eq? '%#ref _hd3532935970_)
                             (if (gx#stx-pair? _tl3533035972_)
                                 (let ((_e3533135975_
                                        (gx#stx-e _tl3533035972_)))
                                   (let ((_tl3533335980_ (##cdr _e3533135975_))
                                         (_hd3533235978_
                                          (##car _e3533135975_)))
                                     (if (gx#stx-null? _tl3533335980_)
                                         (_loop3532235951_
                                          _lp-tl3532535964_
                                          (cons _hd3533235978_ _id3532635956_))
                                         (___kont4066140662_))))
                                 (___kont4066140662_))
                             (___kont4066140662_))
                         (___kont4066140662_))))
                 (___kont4066140662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3532735983_
                                                        (reverse _id3532635956_)))
                                                   (___kont4064340644_
                                                    _id3532735983_
                                                    _hd3531735941_))))))
                                   (_loop3532235951_
                                    _target3531935946_
                                    '())))))
                         (if (gx#stx-pair? ___stx4063940640_)
                             (let ((_e3529336024_
                                    (gx#stx-e ___stx4063940640_)))
                               (let ((_tl3529536029_ (##cdr _e3529336024_))
                                     (_hd3529436027_ (##car _e3529336024_)))
                                 (if (gx#identifier? _hd3529436027_)
                                     (if (gx#stx-eq? '%#if _hd3529436027_)
                                         (if (gx#stx-pair? _tl3529536029_)
                                             (let ((_e3529636032_
                                                    (gx#stx-e _tl3529536029_)))
                                               (let ((_tl3529836037_
                                                      (##cdr _e3529636032_))
                                                     (_hd3529736035_
                                                      (##car _e3529636032_)))
                                                 (if (gx#stx-pair?
                                                      _tl3529836037_)
                                                     (let ((_e3529936040_
                                                            (gx#stx-e
                                                             _tl3529836037_)))
                                                       (let ((_tl3530136045_
                                                              (##cdr _e3529936040_))
                                                             (_hd3530036043_
                                                              (##car _e3529936040_)))
                                                         (if (gx#stx-pair?
                                                              _tl3530136045_)
                                                             (let ((_e3530236048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3530136045_)))
                       (let ((_tl3530436053_ (##cdr _e3530236048_))
                             (_hd3530336051_ (##car _e3530236048_)))
                         (if (gx#stx-null? _tl3530436053_)
                             (___kont4064140642_
                              _hd3530336051_
                              _hd3530036043_
                              _hd3529736035_)
                             (___kont4066140662_))))
                     (___kont4066140662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4066140662_))))
                                             (___kont4066140662_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3529436027_)
                                             (if (gx#stx-pair? _tl3529536029_)
                                                 (let ((_e3531035922_
                                                        (gx#stx-e
                                                         _tl3529536029_)))
                                                   (let ((_tl3531235927_
                                                          (##cdr _e3531035922_))
                                                         (_hd3531135925_
                                                          (##car _e3531035922_)))
                                                     (if (gx#stx-pair?
                                                          _hd3531135925_)
                                                         (let ((_e3531335930_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3531135925_)))
                   (let ((_tl3531535935_ (##cdr _e3531335930_))
                         (_hd3531435933_ (##car _e3531335930_)))
                     (if (gx#identifier? _hd3531435933_)
                         (if (gx#stx-eq? '%#ref _hd3531435933_)
                             (if (gx#stx-pair? _tl3531535935_)
                                 (let ((_e3531635938_
                                        (gx#stx-e _tl3531535935_)))
                                   (let ((_tl3531835943_ (##cdr _e3531635938_))
                                         (_hd3531735941_
                                          (##car _e3531635938_)))
                                     (if (gx#stx-null? _tl3531835943_)
                                         (if (gx#stx-pair/null? _tl3531235927_)
                                             (let ((___splice4064540646_
                                                    (gx#syntax-split-splice
                                                     _tl3531235927_
                                                     '0)))
                                               (let ((_tl3532135948_
                                                      (##vector-ref
                                                       ___splice4064540646_
                                                       '1))
                                                     (_target3531935946_
                                                      (##vector-ref
                                                       ___splice4064540646_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3532135948_)
                                                     (___match4073440735_
                                                      _e3529336024_
                                                      _hd3529436027_
                                                      _tl3529536029_
                                                      _e3531035922_
                                                      _hd3531135925_
                                                      _tl3531235927_
                                                      _e3531335930_
                                                      _hd3531435933_
                                                      _tl3531535935_
                                                      _e3531635938_
                                                      _hd3531735941_
                                                      _tl3531835943_
                                                      ___splice4064540646_
                                                      _target3531935946_
                                                      _tl3532135948_)
                                                     (___kont4066140662_))))
                                             (___kont4066140662_))
                                         (___kont4066140662_))))
                                 (___kont4066140662_))
                             (___kont4066140662_))
                         (___kont4066140662_))))
                 (___kont4066140662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4066140662_))
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _hd3529436027_)
                                                 (if (gx#stx-pair?
                                                      _tl3529536029_)
                                                     (let ((_e3534035792_
                                                            (gx#stx-e
                                                             _tl3529536029_)))
                                                       (let ((_tl3534235797_
                                                              (##cdr _e3534035792_))
                                                             (_hd3534135795_
                                                              (##car _e3534035792_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd3534135795_)
                                                             (let ((___splice4064940650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd3534135795_ '0)))
                       (let ((_tl3534535802_
                              (##vector-ref ___splice4064940650_ '1))
                             (_target3534335800_
                              (##vector-ref ___splice4064940650_ '0)))
                         (if (gx#stx-null? _tl3534535802_)
                             (___match4075840759_
                              _e3529336024_
                              _hd3529436027_
                              _tl3529536029_
                              _e3534035792_
                              _hd3534135795_
                              _tl3534235797_
                              ___splice4064940650_
                              _target3534335800_
                              _tl3534535802_)
                             (___kont4066140662_))))
                     (___kont4066140662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4066140662_))
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3529436027_)
                                                     (if (gx#stx-pair?
                                                          _tl3529536029_)
                                                         (let ((_e3541235481_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3529536029_)))
                   (let ((_tl3541435486_ (##cdr _e3541235481_))
                         (_hd3541335484_ (##car _e3541235481_)))
                     (if (gx#stx-pair? _hd3541335484_)
                         (let ((_e3541535489_ (gx#stx-e _hd3541335484_)))
                           (let ((_tl3541735494_ (##cdr _e3541535489_))
                                 (_hd3541635492_ (##car _e3541535489_)))
                             (if (gx#stx-pair? _hd3541635492_)
                                 (let ((_e3541835497_
                                        (gx#stx-e _hd3541635492_)))
                                   (let ((_tl3542035502_ (##cdr _e3541835497_))
                                         (_hd3541935500_
                                          (##car _e3541835497_)))
                                     (if (gx#stx-pair? _hd3541935500_)
                                         (let ((_e3542135505_
                                                (gx#stx-e _hd3541935500_)))
                                           (let ((_tl3542335510_
                                                  (##cdr _e3542135505_))
                                                 (_hd3542235508_
                                                  (##car _e3542135505_)))
                                             (if (gx#stx-null? _tl3542335510_)
                                                 (if (gx#stx-pair?
                                                      _tl3542035502_)
                                                     (let ((_e3542435513_
                                                            (gx#stx-e
                                                             _tl3542035502_)))
                                                       (let ((_tl3542635518_
                                                              (##cdr _e3542435513_))
                                                             (_hd3542535516_
                                                              (##car _e3542435513_)))
                                                         (if (gx#stx-pair?
                                                              _hd3542535516_)
                                                             (let ((_e3542735521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3542535516_)))
                       (let ((_tl3542935526_ (##cdr _e3542735521_))
                             (_hd3542835524_ (##car _e3542735521_)))
                         (if (gx#identifier? _hd3542835524_)
                             (if (gx#stx-eq? '%#lambda _hd3542835524_)
                                 (if (gx#stx-pair? _tl3542935526_)
                                     (let ((_e3543035529_
                                            (gx#stx-e _tl3542935526_)))
                                       (let ((_tl3543235534_
                                              (##cdr _e3543035529_))
                                             (_hd3543135532_
                                              (##car _e3543035529_)))
                                         (if (gx#stx-pair/null? _hd3543135532_)
                                             (let ((___splice4065740658_
                                                    (gx#syntax-split-splice
                                                     _hd3543135532_
                                                     '0)))
                                               (let ((_tl3543535539_
                                                      (##vector-ref
                                                       ___splice4065740658_
                                                       '1))
                                                     (_target3543335537_
                                                      (##vector-ref
                                                       ___splice4065740658_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3543535539_)
                                                     (___match4084840849_
                                                      _e3529336024_
                                                      _hd3529436027_
                                                      _tl3529536029_
                                                      _e3541235481_
                                                      _hd3541335484_
                                                      _tl3541435486_
                                                      _e3541535489_
                                                      _hd3541635492_
                                                      _tl3541735494_
                                                      _e3541835497_
                                                      _hd3541935500_
                                                      _tl3542035502_
                                                      _e3542135505_
                                                      _hd3542235508_
                                                      _tl3542335510_
                                                      _e3542435513_
                                                      _hd3542535516_
                                                      _tl3542635518_
                                                      _e3542735521_
                                                      _hd3542835524_
                                                      _tl3542935526_
                                                      _e3543035529_
                                                      _hd3543135532_
                                                      _tl3543235534_
                                                      ___splice4065740658_
                                                      _target3543335537_
                                                      _tl3543535539_)
                                                     (___kont4066140662_))))
                                             (___kont4066140662_))))
                                     (___kont4066140662_))
                                 (___kont4066140662_))
                             (___kont4066140662_))))
                     (___kont4066140662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4066140662_))
                                                 (___kont4066140662_))))
                                         (___kont4066140662_))))
                                 (___kont4066140662_))))
                         (___kont4066140662_))))
                 (___kont4066140662_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4066140662_)))))
                                     (___kont4066140662_))))
                             (___kont4066140662_)))))))
                (_optimize-t__3960039601_
                 (lambda (_expr35264_ _test35265_ _continue35266_)
                   (_do-assert32268_
                    (cons (cons _test35265_ '#t) '())
                    (lambda () (_continue35266_ _expr35264_)))))
                (_optimize-t__0__3960239603_
                 (lambda (_expr35272_ _test35273_)
                   (let ((_continue35275_ _optimize-e32279_))
                     (_optimize-t__3960039601_
                      _expr35272_
                      _test35273_
                      _continue35275_))))
                (_optimize-t32280_
                 (lambda _g42702_
                   (let ((_g42701_ (length _g42702_)))
                     (cond ((##fx= _g42701_ 2)
                            (apply _optimize-t__0__3960239603_ _g42702_))
                           ((##fx= _g42701_ 3)
                            (apply _optimize-t__3960039601_ _g42702_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42702_))))))
                (_optimize-f__3960439605_
                 (lambda (_expr34349_ _test34350_)
                   (_do-assert32268_
                    (if _test34350_ (cons (cons _test34350_ '#f) '()) '())
                    (lambda ()
                      (let* ((___stx4088940890_ _expr34349_)
                             (_g3435834531_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4088940890_))))
                        (let ((___kont4089140892_
                               (lambda (_L35119_ _L35120_)
                                 (let ((_$e35140_
                                        (_lookup-block32287_ _L35120_)))
                                   (if _$e35140_
                                       ((lambda (_block35143_)
                                          (if (_nonlinear-block?32289_
                                               _block35143_)
                                              _expr34349_
                                              (let* ((_inline35152_
                                                      (_inline-block32288_
                                                       _block35143_
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g3514435147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3514535149_)
                           (cons _g3514435147_ _g3514535149_))
                         '()
                         _L35119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___stx4085140852_
                                                      _inline35152_)
                                                     (_g3515535176_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4085140852_))))
                                                (let ((___kont4085340854_
                                                       (lambda (_L35220_
                                                                _L35221_
                                                                _L35222_)
                                                         (let ((_$e35244_
                                                                (_assert-e32282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L35222_)))
                   (if (eq? '#t _$e35244_)
                       (if _in-splice?32267_
                           (_optimize-f__0__3960639607_ _L35221_)
                           (_optimize-e32279_ _L35221_))
                       (if (eq? '#f _$e35244_)
                           (_optimize-f__0__3960639607_ _L35220_)
                           _expr34349_)))))
              (___kont4085540856_
               (lambda () (_optimize-f__0__3960639607_ _inline35152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4085140852_)
                                                      (let ((_e3516035188_
                                                             (gx#stx-e
                                                              ___stx4085140852_)))
                                                        (let ((_tl3516235193_
                                                               (##cdr _e3516035188_))
                                                              (_hd3516135191_
                                                               (##car _e3516035188_)))
                                                          (if (gx#identifier?
                                                               _hd3516135191_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#if
                           _hd3516135191_)
                          (if (gx#stx-pair? _tl3516235193_)
                              (let ((_e3516335196_ (gx#stx-e _tl3516235193_)))
                                (let ((_tl3516535201_ (##cdr _e3516335196_))
                                      (_hd3516435199_ (##car _e3516335196_)))
                                  (if (gx#stx-pair? _tl3516535201_)
                                      (let ((_e3516635204_
                                             (gx#stx-e _tl3516535201_)))
                                        (let ((_tl3516835209_
                                               (##cdr _e3516635204_))
                                              (_hd3516735207_
                                               (##car _e3516635204_)))
                                          (if (gx#stx-pair? _tl3516835209_)
                                              (let ((_e3516935212_
                                                     (gx#stx-e
                                                      _tl3516835209_)))
                                                (let ((_tl3517135217_
                                                       (##cdr _e3516935212_))
                                                      (_hd3517035215_
                                                       (##car _e3516935212_)))
                                                  (if (gx#stx-null?
                                                       _tl3517135217_)
                                                      (___kont4085340854_
                                                       _hd3517035215_
                                                       _hd3516735207_
                                                       _hd3516435199_)
                                                      (___kont4085540856_))))
                                              (___kont4085540856_))))
                                      (___kont4085540856_))))
                              (___kont4085540856_))
                          (___kont4085540856_))
                      (___kont4085540856_))))
              (___kont4085540856_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e35140_)
                                       _expr34349_))))
                              (___kont4089540896_
                               (lambda (_L35017_ _L35018_ _L35019_)
                                 (let ((_$e35036_ (_assert-e32282_ _L35019_)))
                                   (if (eq? '#t _$e35036_)
                                       (if _in-splice?32267_
                                           (_optimize-f__0__3960639607_
                                            _L35018_)
                                           (_optimize-e32279_ _L35018_))
                                       (if (eq? '#f _$e35036_)
                                           (_optimize-f__0__3960639607_
                                            _L35017_)
                                           (let ((_K35039_
                                                  (_optimize-t__3960039601_
                                                   _L35018_
                                                   _L35019_
                                                   _optimize-f32281_))
                                                 (_E35040_
                                                  (_optimize-f__3960439605_
                                                   _L35017_
                                                   _L35019_)))
                                             (if (equal? (gxc#apply-generate-runtime-repr
                                                          _K35039_)
                                                         (gxc#apply-generate-runtime-repr
                                                          _E35040_))
                                                 _K35039_
                                                 (cons '%#if
                                                       (cons _L35019_
                                                             (cons _K35039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _E35040_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (___kont4089740898_
                               (lambda (_L34947_ _L34948_ _L34949_)
                                 (let ((_body34968_
                                        (_optimize-f__0__3960639607_
                                         _L34947_)))
                                   (cons '%#let-values
                                         (cons (begin
                                                 (gx#syntax-check-splice-targets
                                                  _L34948_
                                                  _L34949_)
                                                 (foldr2 (lambda (_g3496934973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3497034975_
                          _g3497134977_)
                   (cons (cons (cons _g3497034975_ '())
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g3496934973_ '()))
                                     '()))
                         _g3497134977_))
                 '()
                 _L34948_
                 _L34949_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _body34968_ '()))))))
                              (___kont4090140902_
                               (lambda (_L34815_ _L34816_ _L34817_)
                                 (_bind-e__3960839609_
                                  (map cons
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3483534838_
                                                          _g3483634840_)
                                                   (cons _g3483534838_
                                                         _g3483634840_))
                                                 '()
                                                 _L34817_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3484234845_
                                                          _g3484334847_)
                                                   (cons _g3484234845_
                                                         _g3484334847_))
                                                 '()
                                                 _L34816_)))
                                  _L34815_
                                  _optimize-f32281_)))
                              (___kont4090540906_
                               (lambda (_L34671_
                                        _L34672_
                                        _L34673_
                                        _L34674_
                                        _L34675_)
                                 (_do-splice!32278_
                                  (lambda ()
                                    (let ((_expr34718_
                                           (_optimize-f__0__3960639607_
                                            _L34673_)))
                                      (cons '%#letrec-values
                                            (cons (cons (cons (cons _L34675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#lambda
                                  (cons (begin
                                          '#!void
                                          (foldr1 (lambda (_g3471934722_
                                                           _g3472034724_)
                                                    (cons _g3471934722_
                                                          _g3472034724_))
                                                  '()
                                                  _L34674_))
                                        (cons _expr34718_ '())))
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3472634729_ _g3472734731_)
                            (cons _g3472634729_ _g3472734731_))
                          '()
                          _L34672_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L34671_ '()))))))))
                              (___kont4091140912_ (lambda () _expr34349_)))
                          (let* ((___match4109841099_
                                  (lambda (_e3447934543_
                                           _hd3448034546_
                                           _tl3448134548_
                                           _e3448234551_
                                           _hd3448334554_
                                           _tl3448434556_
                                           _e3448534559_
                                           _hd3448634562_
                                           _tl3448734564_
                                           _e3448834567_
                                           _hd3448934570_
                                           _tl3449034572_
                                           _e3449134575_
                                           _hd3449234578_
                                           _tl3449334580_
                                           _e3449434583_
                                           _hd3449534586_
                                           _tl3449634588_
                                           _e3449734591_
                                           _hd3449834594_
                                           _tl3449934596_
                                           _e3450034599_
                                           _hd3450134602_
                                           _tl3450234604_
                                           ___splice4090740908_
                                           _target3450334607_
                                           _tl3450534609_)
                                    (letrec ((_loop3450634612_
                                              (lambda (_hd3450434615_
                                                       _id3451034617_)
                                                (if (gx#stx-pair?
                                                     _hd3450434615_)
                                                    (let ((_e3450734620_
                                                           (gx#stx-e
                                                            _hd3450434615_)))
                                                      (let ((_lp-tl3450934625_
                                                             (##cdr _e3450734620_))
                                                            (_lp-hd3450834623_
                                                             (##car _e3450734620_)))
                                                        (_loop3450634612_
                                                         _lp-tl3450934625_
                                                         (cons _lp-hd3450834623_
                                                               _id3451034617_))))
                                                    (let ((_id3451134628_
                                                           (reverse _id3451034617_)))
                                                      (if (gx#stx-pair?
                                                           _tl3450234604_)
                                                          (let ((_e3451234631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3450234604_)))
                    (let ((_tl3451434636_ (##cdr _e3451234631_))
                          (_hd3451334634_ (##car _e3451234631_)))
                      (if (gx#stx-null? _tl3451434636_)
                          (if (gx#stx-null? _tl3449634588_)
                              (if (gx#stx-pair/null? _tl3448734564_)
                                  (let ((___splice4090940910_
                                         (gx#syntax-split-splice
                                          _tl3448734564_
                                          '0)))
                                    (let ((_tl3451734641_
                                           (##vector-ref
                                            ___splice4090940910_
                                            '1))
                                          (_target3451534639_
                                           (##vector-ref
                                            ___splice4090940910_
                                            '0)))
                                      (if (gx#stx-null? _tl3451734641_)
                                          (letrec ((_loop3451834644_
                                                    (lambda (_hd3451634647_
                                                             _bind3452234649_)
                                                      (if (gx#stx-pair?
                                                           _hd3451634647_)
                                                          (let ((_e3451934652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3451634647_)))
                    (let ((_lp-tl3452134657_ (##cdr _e3451934652_))
                          (_lp-hd3452034655_ (##car _e3451934652_)))
                      (_loop3451834644_
                       _lp-tl3452134657_
                       (cons _lp-hd3452034655_ _bind3452234649_))))
                  (let ((_bind3452334660_ (reverse _bind3452234649_)))
                    (if (gx#stx-pair? _tl3448434556_)
                        (let ((_e3452434663_ (gx#stx-e _tl3448434556_)))
                          (let ((_tl3452634668_ (##cdr _e3452434663_))
                                (_hd3452534666_ (##car _e3452434663_)))
                            (if (gx#stx-null? _tl3452634668_)
                                (___kont4090540906_
                                 _hd3452534666_
                                 _bind3452334660_
                                 _hd3451334634_
                                 _id3451134628_
                                 _hd3449234578_)
                                (___kont4091140912_))))
                        (___kont4091140912_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3451834644_
                                             _target3451534639_
                                             '()))
                                          (___kont4091140912_))))
                                  (___kont4091140912_))
                              (___kont4091140912_))
                          (___kont4091140912_))))
                  (___kont4091140912_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3450634612_
                                       _target3450334607_
                                       '()))))
                                 (___match4103241033_
                                  (lambda (_e3444534739_
                                           _hd3444634742_
                                           _tl3444734744_
                                           _e3444834747_
                                           _hd3444934750_
                                           _tl3445034752_
                                           ___splice4090340904_
                                           _target3445134755_
                                           _tl3445334757_)
                                    (letrec ((_loop3445434760_
                                              (lambda (_hd3445234763_
                                                       _expr3445834765_
                                                       _id3445934767_)
                                                (if (gx#stx-pair?
                                                     _hd3445234763_)
                                                    (let ((_e3445534770_
                                                           (gx#stx-e
                                                            _hd3445234763_)))
                                                      (let ((_lp-tl3445734775_
                                                             (##cdr _e3445534770_))
                                                            (_lp-hd3445634773_
                                                             (##car _e3445534770_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3445634773_)
                                                            (let ((_e3446234778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3445634773_)))
                      (let ((_tl3446434783_ (##cdr _e3446234778_))
                            (_hd3446334781_ (##car _e3446234778_)))
                        (if (gx#stx-pair? _hd3446334781_)
                            (let ((_e3446534786_ (gx#stx-e _hd3446334781_)))
                              (let ((_tl3446734791_ (##cdr _e3446534786_))
                                    (_hd3446634789_ (##car _e3446534786_)))
                                (if (gx#stx-null? _tl3446734791_)
                                    (if (gx#stx-pair? _tl3446434783_)
                                        (let ((_e3446834794_
                                               (gx#stx-e _tl3446434783_)))
                                          (let ((_tl3447034799_
                                                 (##cdr _e3446834794_))
                                                (_hd3446934797_
                                                 (##car _e3446834794_)))
                                            (if (gx#stx-null? _tl3447034799_)
                                                (_loop3445434760_
                                                 _lp-tl3445734775_
                                                 (cons _hd3446934797_
                                                       _expr3445834765_)
                                                 (cons _hd3446634789_
                                                       _id3445934767_))
                                                (___kont4091140912_))))
                                        (___kont4091140912_))
                                    (___kont4091140912_))))
                            (___kont4091140912_))))
                    (___kont4091140912_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3446134804_
                                                           (reverse _id3445934767_))
                                                          (_expr3446034802_
                                                           (reverse _expr3445834765_)))
                                                      (if (gx#stx-pair?
                                                           _tl3445034752_)
                                                          (let ((_e3447134807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3445034752_)))
                    (let ((_tl3447334812_ (##cdr _e3447134807_))
                          (_hd3447234810_ (##car _e3447134807_)))
                      (if (gx#stx-null? _tl3447334812_)
                          (___kont4090140902_
                           _hd3447234810_
                           _expr3446034802_
                           _id3446134804_)
                          (___kont4091140912_))))
                  (___kont4091140912_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3445434760_
                                       _target3445134755_
                                       '()
                                       '()))))
                                 (___match4100841009_
                                  (lambda (_e3440734855_
                                           _hd3440834858_
                                           _tl3440934860_
                                           _e3441034863_
                                           _hd3441134866_
                                           _tl3441234868_
                                           ___splice4089940900_
                                           _target3441334871_
                                           _tl3441534873_)
                                    (letrec ((_loop3441634876_
                                              (lambda (_hd3441434879_
                                                       _xid3442034881_
                                                       _id3442134883_)
                                                (if (gx#stx-pair?
                                                     _hd3441434879_)
                                                    (let ((_e3441734886_
                                                           (gx#stx-e
                                                            _hd3441434879_)))
                                                      (let ((_lp-tl3441934891_
                                                             (##cdr _e3441734886_))
                                                            (_lp-hd3441834889_
                                                             (##car _e3441734886_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3441834889_)
                                                            (let ((_e3442434894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3441834889_)))
                      (let ((_tl3442634899_ (##cdr _e3442434894_))
                            (_hd3442534897_ (##car _e3442434894_)))
                        (if (gx#stx-pair? _hd3442534897_)
                            (let ((_e3442734902_ (gx#stx-e _hd3442534897_)))
                              (let ((_tl3442934907_ (##cdr _e3442734902_))
                                    (_hd3442834905_ (##car _e3442734902_)))
                                (if (gx#stx-null? _tl3442934907_)
                                    (if (gx#stx-pair? _tl3442634899_)
                                        (let ((_e3443034910_
                                               (gx#stx-e _tl3442634899_)))
                                          (let ((_tl3443234915_
                                                 (##cdr _e3443034910_))
                                                (_hd3443134913_
                                                 (##car _e3443034910_)))
                                            (if (gx#stx-pair? _hd3443134913_)
                                                (let ((_e3443334918_
                                                       (gx#stx-e
                                                        _hd3443134913_)))
                                                  (let ((_tl3443534923_
                                                         (##cdr _e3443334918_))
                                                        (_hd3443434921_
                                                         (##car _e3443334918_)))
                                                    (if (gx#identifier?
                                                         _hd3443434921_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3443434921_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3443534923_)
                        (let ((_e3443634926_ (gx#stx-e _tl3443534923_)))
                          (let ((_tl3443834931_ (##cdr _e3443634926_))
                                (_hd3443734929_ (##car _e3443634926_)))
                            (if (gx#stx-null? _tl3443834931_)
                                (if (gx#stx-null? _tl3443234915_)
                                    (_loop3441634876_
                                     _lp-tl3441934891_
                                     (cons _hd3443734929_ _xid3442034881_)
                                     (cons _hd3442834905_ _id3442134883_))
                                    (___match4103241033_
                                     _e3440734855_
                                     _hd3440834858_
                                     _tl3440934860_
                                     _e3441034863_
                                     _hd3441134866_
                                     _tl3441234868_
                                     ___splice4089940900_
                                     _target3441334871_
                                     _tl3441534873_))
                                (___match4103241033_
                                 _e3440734855_
                                 _hd3440834858_
                                 _tl3440934860_
                                 _e3441034863_
                                 _hd3441134866_
                                 _tl3441234868_
                                 ___splice4089940900_
                                 _target3441334871_
                                 _tl3441534873_))))
                        (___match4103241033_
                         _e3440734855_
                         _hd3440834858_
                         _tl3440934860_
                         _e3441034863_
                         _hd3441134866_
                         _tl3441234868_
                         ___splice4089940900_
                         _target3441334871_
                         _tl3441534873_))
                    (___match4103241033_
                     _e3440734855_
                     _hd3440834858_
                     _tl3440934860_
                     _e3441034863_
                     _hd3441134866_
                     _tl3441234868_
                     ___splice4089940900_
                     _target3441334871_
                     _tl3441534873_))
                (___match4103241033_
                 _e3440734855_
                 _hd3440834858_
                 _tl3440934860_
                 _e3441034863_
                 _hd3441134866_
                 _tl3441234868_
                 ___splice4089940900_
                 _target3441334871_
                 _tl3441534873_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match4103241033_
                                                 _e3440734855_
                                                 _hd3440834858_
                                                 _tl3440934860_
                                                 _e3441034863_
                                                 _hd3441134866_
                                                 _tl3441234868_
                                                 ___splice4089940900_
                                                 _target3441334871_
                                                 _tl3441534873_))))
                                        (___match4103241033_
                                         _e3440734855_
                                         _hd3440834858_
                                         _tl3440934860_
                                         _e3441034863_
                                         _hd3441134866_
                                         _tl3441234868_
                                         ___splice4089940900_
                                         _target3441334871_
                                         _tl3441534873_))
                                    (___match4103241033_
                                     _e3440734855_
                                     _hd3440834858_
                                     _tl3440934860_
                                     _e3441034863_
                                     _hd3441134866_
                                     _tl3441234868_
                                     ___splice4089940900_
                                     _target3441334871_
                                     _tl3441534873_))))
                            (___match4103241033_
                             _e3440734855_
                             _hd3440834858_
                             _tl3440934860_
                             _e3441034863_
                             _hd3441134866_
                             _tl3441234868_
                             ___splice4089940900_
                             _target3441334871_
                             _tl3441534873_))))
                    (___match4103241033_
                     _e3440734855_
                     _hd3440834858_
                     _tl3440934860_
                     _e3441034863_
                     _hd3441134866_
                     _tl3441234868_
                     ___splice4089940900_
                     _target3441334871_
                     _tl3441534873_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3442334936_
                                                           (reverse _id3442134883_))
                                                          (_xid3442234934_
                                                           (reverse _xid3442034881_)))
                                                      (if (gx#stx-pair?
                                                           _tl3441234868_)
                                                          (let ((_e3443934939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3441234868_)))
                    (let ((_tl3444134944_ (##cdr _e3443934939_))
                          (_hd3444034942_ (##car _e3443934939_)))
                      (if (gx#stx-null? _tl3444134944_)
                          (___kont4089740898_
                           _hd3444034942_
                           _xid3442234934_
                           _id3442334936_)
                          (___match4103241033_
                           _e3440734855_
                           _hd3440834858_
                           _tl3440934860_
                           _e3441034863_
                           _hd3441134866_
                           _tl3441234868_
                           ___splice4089940900_
                           _target3441334871_
                           _tl3441534873_))))
                  (___match4103241033_
                   _e3440734855_
                   _hd3440834858_
                   _tl3440934860_
                   _e3441034863_
                   _hd3441134866_
                   _tl3441234868_
                   ___splice4089940900_
                   _target3441334871_
                   _tl3441534873_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3441634876_
                                       _target3441334871_
                                       '()
                                       '()))))
                                 (___match4095440955_
                                  (lambda (_e3436235047_
                                           _hd3436335050_
                                           _tl3436435052_
                                           _e3436535055_
                                           _hd3436635058_
                                           _tl3436735060_
                                           _e3436835063_
                                           _hd3436935066_
                                           _tl3437035068_
                                           _e3437135071_
                                           _hd3437235074_
                                           _tl3437335076_
                                           ___splice4089340894_
                                           _target3437435079_
                                           _tl3437635081_)
                                    (letrec ((_loop3437735084_
                                              (lambda (_hd3437535087_
                                                       _id3438135089_)
                                                (if (gx#stx-pair?
                                                     _hd3437535087_)
                                                    (let ((_e3437835092_
                                                           (gx#stx-e
                                                            _hd3437535087_)))
                                                      (let ((_lp-tl3438035097_
                                                             (##cdr _e3437835092_))
                                                            (_lp-hd3437935095_
                                                             (##car _e3437835092_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3437935095_)
                                                            (let ((_e3438335100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3437935095_)))
                      (let ((_tl3438535105_ (##cdr _e3438335100_))
                            (_hd3438435103_ (##car _e3438335100_)))
                        (if (gx#identifier? _hd3438435103_)
                            (if (gx#stx-eq? '%#ref _hd3438435103_)
                                (if (gx#stx-pair? _tl3438535105_)
                                    (let ((_e3438635108_
                                           (gx#stx-e _tl3438535105_)))
                                      (let ((_tl3438835113_
                                             (##cdr _e3438635108_))
                                            (_hd3438735111_
                                             (##car _e3438635108_)))
                                        (if (gx#stx-null? _tl3438835113_)
                                            (_loop3437735084_
                                             _lp-tl3438035097_
                                             (cons _hd3438735111_
                                                   _id3438135089_))
                                            (___kont4091140912_))))
                                    (___kont4091140912_))
                                (___kont4091140912_))
                            (___kont4091140912_))))
                    (___kont4091140912_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3438235116_
                                                           (reverse _id3438135089_)))
                                                      (___kont4089140892_
                                                       _id3438235116_
                                                       _hd3437235074_))))))
                                      (_loop3437735084_
                                       _target3437435079_
                                       '())))))
                            (if (gx#stx-pair? ___stx4088940890_)
                                (let ((_e3436235047_
                                       (gx#stx-e ___stx4088940890_)))
                                  (let ((_tl3436435052_ (##cdr _e3436235047_))
                                        (_hd3436335050_ (##car _e3436235047_)))
                                    (if (gx#identifier? _hd3436335050_)
                                        (if (gx#stx-eq? '%#call _hd3436335050_)
                                            (if (gx#stx-pair? _tl3436435052_)
                                                (let ((_e3436535055_
                                                       (gx#stx-e
                                                        _tl3436435052_)))
                                                  (let ((_tl3436735060_
                                                         (##cdr _e3436535055_))
                                                        (_hd3436635058_
                                                         (##car _e3436535055_)))
                                                    (if (gx#stx-pair?
                                                         _hd3436635058_)
                                                        (let ((_e3436835063_
                                                               (gx#stx-e
                                                                _hd3436635058_)))
                                                          (let ((_tl3437035068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3436835063_))
                        (_hd3436935066_ (##car _e3436835063_)))
                    (if (gx#identifier? _hd3436935066_)
                        (if (gx#stx-eq? '%#ref _hd3436935066_)
                            (if (gx#stx-pair? _tl3437035068_)
                                (let ((_e3437135071_
                                       (gx#stx-e _tl3437035068_)))
                                  (let ((_tl3437335076_ (##cdr _e3437135071_))
                                        (_hd3437235074_ (##car _e3437135071_)))
                                    (if (gx#stx-null? _tl3437335076_)
                                        (if (gx#stx-pair/null? _tl3436735060_)
                                            (let ((___splice4089340894_
                                                   (gx#syntax-split-splice
                                                    _tl3436735060_
                                                    '0)))
                                              (let ((_tl3437635081_
                                                     (##vector-ref
                                                      ___splice4089340894_
                                                      '1))
                                                    (_target3437435079_
                                                     (##vector-ref
                                                      ___splice4089340894_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3437635081_)
                                                    (___match4095440955_
                                                     _e3436235047_
                                                     _hd3436335050_
                                                     _tl3436435052_
                                                     _e3436535055_
                                                     _hd3436635058_
                                                     _tl3436735060_
                                                     _e3436835063_
                                                     _hd3436935066_
                                                     _tl3437035068_
                                                     _e3437135071_
                                                     _hd3437235074_
                                                     _tl3437335076_
                                                     ___splice4089340894_
                                                     _target3437435079_
                                                     _tl3437635081_)
                                                    (___kont4091140912_))))
                                            (___kont4091140912_))
                                        (___kont4091140912_))))
                                (___kont4091140912_))
                            (___kont4091140912_))
                        (___kont4091140912_))))
                (___kont4091140912_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4091140912_))
                                            (if (gx#stx-eq?
                                                 '%#if
                                                 _hd3436335050_)
                                                (if (gx#stx-pair?
                                                     _tl3436435052_)
                                                    (let ((_e3439534993_
                                                           (gx#stx-e
                                                            _tl3436435052_)))
                                                      (let ((_tl3439734998_
                                                             (##cdr _e3439534993_))
                                                            (_hd3439634996_
                                                             (##car _e3439534993_)))
                                                        (if (gx#stx-pair?
                                                             _tl3439734998_)
                                                            (let ((_e3439835001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3439734998_)))
                      (let ((_tl3440035006_ (##cdr _e3439835001_))
                            (_hd3439935004_ (##car _e3439835001_)))
                        (if (gx#stx-pair? _tl3440035006_)
                            (let ((_e3440135009_ (gx#stx-e _tl3440035006_)))
                              (let ((_tl3440335014_ (##cdr _e3440135009_))
                                    (_hd3440235012_ (##car _e3440135009_)))
                                (if (gx#stx-null? _tl3440335014_)
                                    (___kont4089540896_
                                     _hd3440235012_
                                     _hd3439935004_
                                     _hd3439634996_)
                                    (___kont4091140912_))))
                            (___kont4091140912_))))
                    (___kont4091140912_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4091140912_))
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd3436335050_)
                                                    (if (gx#stx-pair?
                                                         _tl3436435052_)
                                                        (let ((_e3441034863_
                                                               (gx#stx-e
                                                                _tl3436435052_)))
                                                          (let ((_tl3441234868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3441034863_))
                        (_hd3441134866_ (##car _e3441034863_)))
                    (if (gx#stx-pair/null? _hd3441134866_)
                        (let ((___splice4089940900_
                               (gx#syntax-split-splice _hd3441134866_ '0)))
                          (let ((_tl3441534873_
                                 (##vector-ref ___splice4089940900_ '1))
                                (_target3441334871_
                                 (##vector-ref ___splice4089940900_ '0)))
                            (if (gx#stx-null? _tl3441534873_)
                                (___match4100841009_
                                 _e3436235047_
                                 _hd3436335050_
                                 _tl3436435052_
                                 _e3441034863_
                                 _hd3441134866_
                                 _tl3441234868_
                                 ___splice4089940900_
                                 _target3441334871_
                                 _tl3441534873_)
                                (___kont4091140912_))))
                        (___kont4091140912_))))
                (___kont4091140912_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#letrec-values
                                                         _hd3436335050_)
                                                        (if (gx#stx-pair?
                                                             _tl3436435052_)
                                                            (let ((_e3448234551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3436435052_)))
                      (let ((_tl3448434556_ (##cdr _e3448234551_))
                            (_hd3448334554_ (##car _e3448234551_)))
                        (if (gx#stx-pair? _hd3448334554_)
                            (let ((_e3448534559_ (gx#stx-e _hd3448334554_)))
                              (let ((_tl3448734564_ (##cdr _e3448534559_))
                                    (_hd3448634562_ (##car _e3448534559_)))
                                (if (gx#stx-pair? _hd3448634562_)
                                    (let ((_e3448834567_
                                           (gx#stx-e _hd3448634562_)))
                                      (let ((_tl3449034572_
                                             (##cdr _e3448834567_))
                                            (_hd3448934570_
                                             (##car _e3448834567_)))
                                        (if (gx#stx-pair? _hd3448934570_)
                                            (let ((_e3449134575_
                                                   (gx#stx-e _hd3448934570_)))
                                              (let ((_tl3449334580_
                                                     (##cdr _e3449134575_))
                                                    (_hd3449234578_
                                                     (##car _e3449134575_)))
                                                (if (gx#stx-null?
                                                     _tl3449334580_)
                                                    (if (gx#stx-pair?
                                                         _tl3449034572_)
                                                        (let ((_e3449434583_
                                                               (gx#stx-e
                                                                _tl3449034572_)))
                                                          (let ((_tl3449634588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3449434583_))
                        (_hd3449534586_ (##car _e3449434583_)))
                    (if (gx#stx-pair? _hd3449534586_)
                        (let ((_e3449734591_ (gx#stx-e _hd3449534586_)))
                          (let ((_tl3449934596_ (##cdr _e3449734591_))
                                (_hd3449834594_ (##car _e3449734591_)))
                            (if (gx#identifier? _hd3449834594_)
                                (if (gx#stx-eq? '%#lambda _hd3449834594_)
                                    (if (gx#stx-pair? _tl3449934596_)
                                        (let ((_e3450034599_
                                               (gx#stx-e _tl3449934596_)))
                                          (let ((_tl3450234604_
                                                 (##cdr _e3450034599_))
                                                (_hd3450134602_
                                                 (##car _e3450034599_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3450134602_)
                                                (let ((___splice4090740908_
                                                       (gx#syntax-split-splice
                                                        _hd3450134602_
                                                        '0)))
                                                  (let ((_tl3450534609_
                                                         (##vector-ref
                                                          ___splice4090740908_
                                                          '1))
                                                        (_target3450334607_
                                                         (##vector-ref
                                                          ___splice4090740908_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3450534609_)
                                                        (___match4109841099_
                                                         _e3436235047_
                                                         _hd3436335050_
                                                         _tl3436435052_
                                                         _e3448234551_
                                                         _hd3448334554_
                                                         _tl3448434556_
                                                         _e3448534559_
                                                         _hd3448634562_
                                                         _tl3448734564_
                                                         _e3448834567_
                                                         _hd3448934570_
                                                         _tl3449034572_
                                                         _e3449134575_
                                                         _hd3449234578_
                                                         _tl3449334580_
                                                         _e3449434583_
                                                         _hd3449534586_
                                                         _tl3449634588_
                                                         _e3449734591_
                                                         _hd3449834594_
                                                         _tl3449934596_
                                                         _e3450034599_
                                                         _hd3450134602_
                                                         _tl3450234604_
                                                         ___splice4090740908_
                                                         _target3450334607_
                                                         _tl3450534609_)
                                                        (___kont4091140912_))))
                                                (___kont4091140912_))))
                                        (___kont4091140912_))
                                    (___kont4091140912_))
                                (___kont4091140912_))))
                        (___kont4091140912_))))
                (___kont4091140912_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4091140912_))))
                                            (___kont4091140912_))))
                                    (___kont4091140912_))))
                            (___kont4091140912_))))
                    (___kont4091140912_))
                (___kont4091140912_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (___kont4091140912_))))
                                (___kont4091140912_)))))))))
                (_optimize-f__0__3960639607_
                 (lambda (_expr35256_)
                   (let ((_test35258_ '#f))
                     (_optimize-f__3960439605_ _expr35256_ _test35258_))))
                (_optimize-f32281_
                 (lambda _g42704_
                   (let ((_g42703_ (length _g42704_)))
                     (cond ((##fx= _g42703_ 1)
                            (apply _optimize-f__0__3960639607_ _g42704_))
                           ((##fx= _g42703_ 2)
                            (apply _optimize-f__3960439605_ _g42704_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42704_))))))
                (_assert-e32282_
                 (lambda (_expr33290_)
                   (let* ((_sexpr33292_
                           (gxc#apply-generate-runtime-repr _expr33290_))
                          (_$e33294_ (assoc _sexpr33292_ _env-assert32264_)))
                     (if _$e33294_
                         (cdr _$e33294_)
                         (let _assert33297_ ((_expr33299_ _expr33290_))
                           (let* ((___stx4119541196_ _expr33299_)
                                  (_g3330733486_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4119541196_))))
                             (let ((___kont4119741198_
                                    (lambda (_L34317_ _L34318_)
                                      (let ((_$e34340_
                                             (_predicate-type32269_ _L34318_)))
                                        (if _$e34340_
                                            ((lambda (_t34343_)
                                               (_assert-type32283_
                                                _L34317_
                                                _t34343_))
                                             _$e34340_)
                                            '#!void))))
                                   (___kont4119941200_
                                    (lambda (_L34010_ _L34011_ _L34012_)
                                      (let ((_$e34037_
                                             (gxc#identifier-symbol _L34012_)))
                                        (if (let ((_$e34040_
                                                   (eq? '##fx= _$e34037_)))
                                              (if _$e34040_
                                                  _$e34040_
                                                  (eq? 'fx= _$e34037_)))
                                            (let* ((___stx4110141102_ _L34011_)
                                                   (_g3404434073_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx4110141102_))))
                                              (let ((___kont4110341104_
                                                     (lambda (_L34141_
                                                              _L34142_)
                                                       (let ((_$e34167_
                                                              (_countf-symbol32271_
                                                               _L34142_)))
                                                         (if _$e34167_
                                                             ((lambda (_sym34170_)
                                                                (_assert-count32284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L34141_
                         _sym34170_
                         (gx#stx-e _L34010_)))
                      _$e34167_)
                     '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4110541106_
                                                     (lambda () '#!void)))
                                                (if (gx#stx-pair?
                                                     ___stx4110141102_)
                                                    (let ((_e3404834085_
                                                           (gx#stx-e
                                                            ___stx4110141102_)))
                                                      (let ((_tl3405034090_
                                                             (##cdr _e3404834085_))
                                                            (_hd3404934088_
                                                             (##car _e3404834085_)))
                                                        (if (gx#identifier?
                                                             _hd3404934088_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd3404934088_)
                        (if (gx#stx-pair? _tl3405034090_)
                            (let ((_e3405134093_ (gx#stx-e _tl3405034090_)))
                              (let ((_tl3405334098_ (##cdr _e3405134093_))
                                    (_hd3405234096_ (##car _e3405134093_)))
                                (if (gx#stx-pair? _hd3405234096_)
                                    (let ((_e3405434101_
                                           (gx#stx-e _hd3405234096_)))
                                      (let ((_tl3405634106_
                                             (##cdr _e3405434101_))
                                            (_hd3405534104_
                                             (##car _e3405434101_)))
                                        (if (gx#identifier? _hd3405534104_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3405534104_)
                                                (if (gx#stx-pair?
                                                     _tl3405634106_)
                                                    (let ((_e3405734109_
                                                           (gx#stx-e
                                                            _tl3405634106_)))
                                                      (let ((_tl3405934114_
                                                             (##cdr _e3405734109_))
                                                            (_hd3405834112_
                                                             (##car _e3405734109_)))
                                                        (if (gx#stx-null?
                                                             _tl3405934114_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3405334098_)
                        (let ((_e3406034117_ (gx#stx-e _tl3405334098_)))
                          (let ((_tl3406234122_ (##cdr _e3406034117_))
                                (_hd3406134120_ (##car _e3406034117_)))
                            (if (gx#stx-pair? _hd3406134120_)
                                (let ((_e3406334125_
                                       (gx#stx-e _hd3406134120_)))
                                  (let ((_tl3406534130_ (##cdr _e3406334125_))
                                        (_hd3406434128_ (##car _e3406334125_)))
                                    (if (gx#identifier? _hd3406434128_)
                                        (if (gx#stx-eq? '%#ref _hd3406434128_)
                                            (if (gx#stx-pair? _tl3406534130_)
                                                (let ((_e3406634133_
                                                       (gx#stx-e
                                                        _tl3406534130_)))
                                                  (let ((_tl3406834138_
                                                         (##cdr _e3406634133_))
                                                        (_hd3406734136_
                                                         (##car _e3406634133_)))
                                                    (if (gx#stx-null?
                                                         _tl3406834138_)
                                                        (if (gx#stx-null?
                                                             _tl3406234122_)
                                                            (___kont4110341104_
                                                             _hd3406734136_
                                                             _hd3405834112_)
                                                            (___kont4110541106_))
                                                        (___kont4110541106_))))
                                                (___kont4110541106_))
                                            (___kont4110541106_))
                                        (___kont4110541106_))))
                                (___kont4110541106_))))
                        (___kont4110541106_))
                    (___kont4110541106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4110541106_))
                                                (___kont4110541106_))
                                            (___kont4110541106_))))
                                    (___kont4110541106_))))
                            (___kont4110541106_))
                        (___kont4110541106_))
                    (___kont4110541106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4110541106_))))
                                            (if (let ((_$e34175_
                                                       (eq? '##eq? _$e34037_)))
                                                  (if _$e34175_
                                                      _$e34175_
                                                      (let ((_$e34178_
                                                             (eq? 'eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e34037_)))
                (if _$e34178_
                    _$e34178_
                    (let ((_$e34181_ (eq? '##eqv? _$e34037_)))
                      (if _$e34181_
                          _$e34181_
                          (let ((_$e34184_ (eq? 'eqv? _$e34037_)))
                            (if _$e34184_
                                _$e34184_
                                (let ((_$e34187_ (eq? '##equal? _$e34037_)))
                                  (if _$e34187_
                                      _$e34187_
                                      (let ((_$e34190_
                                             (eq? 'equal? _$e34037_)))
                                        (if _$e34190_
                                            _$e34190_
                                            (let ((_$e34193_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e34037_)))
                                              (if _$e34193_
                                                  _$e34193_
                                                  (eq? 'gx#stx-eq?
                                                       _$e34037_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                ((lambda (_sym34196_)
                                                   (let* ((___stx4116941170_
                                                           _L34011_)
                                                          (_g3419934212_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4116941170_))))
                                                     (let ((___kont4117141172_
                                                            (lambda (_L34240_)
                                                              (_assert-eqf32285_
                                                               _L34240_
                                                               (_eqf-symbol32272_
                                                                _sym34196_)
                                                               (gx#stx-e
                                                                _L34010_))))
                                                           (___kont4117341174_
                                                            (lambda ()
                                                              '#!void)))
                                                       (if (gx#stx-pair?
                                                            ___stx4116941170_)
                                                           (let ((_e3420234224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e ___stx4116941170_)))
                     (let ((_tl3420434229_ (##cdr _e3420234224_))
                           (_hd3420334227_ (##car _e3420234224_)))
                       (if (gx#identifier? _hd3420334227_)
                           (if (gx#stx-eq? '%#ref _hd3420334227_)
                               (if (gx#stx-pair? _tl3420434229_)
                                   (let ((_e3420534232_
                                          (gx#stx-e _tl3420434229_)))
                                     (let ((_tl3420734237_
                                            (##cdr _e3420534232_))
                                           (_hd3420634235_
                                            (##car _e3420534232_)))
                                       (if (gx#stx-null? _tl3420734237_)
                                           (___kont4117141172_ _hd3420634235_)
                                           (___kont4117341174_))))
                                   (___kont4117341174_))
                               (___kont4117341174_))
                           (___kont4117341174_))))
                   (___kont4117341174_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e34037_)
                                                '#!void)))))
                                   (___kont4120141202_
                                    (lambda (_L33914_ _L33915_ _L33916_)
                                      (_assert33297_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L33916_ '()))
                                                   (cons _L33914_
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#quote)
                             (cons _L33915_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4120341204_
                                    (lambda (_L33806_ _L33807_ _L33808_)
                                      (let ((_$e33837_
                                             (gxc#identifier-symbol _L33808_)))
                                        (if (let ((_$e33840_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e33837_)))
                                              (if _$e33840_
                                                  _$e33840_
                                                  (eq? 'gx#stx-eq? _$e33837_)))
                                            ((lambda (_sym33843_)
                                               (_assert-eqf32285_
                                                _L33807_
                                                (_eqf-symbol32272_ _sym33843_)
                                                _L33806_))
                                             _$e33837_)
                                            '#!void))))
                                   (___kont4120541206_
                                    (lambda (_L33690_ _L33691_ _L33692_)
                                      (_assert33297_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L33692_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L33690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                             (cons _L33691_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4120741208_
                                    (lambda (_L33570_ _L33571_ _L33572_)
                                      (_assert33297_
                                       (gxc#apply-expression-subst
                                        _L33571_
                                        _L33572_
                                        _L33570_))))
                                   (___kont4120941210_ (lambda () '#!void)))
                               (if (gx#stx-pair? ___stx4119541196_)
                                   (let ((_e3331134261_
                                          (gx#stx-e ___stx4119541196_)))
                                     (let ((_tl3331334266_
                                            (##cdr _e3331134261_))
                                           (_hd3331234264_
                                            (##car _e3331134261_)))
                                       (if (gx#identifier? _hd3331234264_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd3331234264_)
                                               (if (gx#stx-pair?
                                                    _tl3331334266_)
                                                   (let ((_e3331434269_
                                                          (gx#stx-e
                                                           _tl3331334266_)))
                                                     (let ((_tl3331634274_
                                                            (##cdr _e3331434269_))
                                                           (_hd3331534272_
                                                            (##car _e3331434269_)))
                                                       (if (gx#stx-pair?
                                                            _hd3331534272_)
                                                           (let ((_e3331734277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3331534272_)))
                     (let ((_tl3331934282_ (##cdr _e3331734277_))
                           (_hd3331834280_ (##car _e3331734277_)))
                       (if (gx#identifier? _hd3331834280_)
                           (if (gx#stx-eq? '%#ref _hd3331834280_)
                               (if (gx#stx-pair? _tl3331934282_)
                                   (let ((_e3332034285_
                                          (gx#stx-e _tl3331934282_)))
                                     (let ((_tl3332234290_
                                            (##cdr _e3332034285_))
                                           (_hd3332134288_
                                            (##car _e3332034285_)))
                                       (if (gx#stx-null? _tl3332234290_)
                                           (if (gx#stx-pair? _tl3331634274_)
                                               (let ((_e3332334293_
                                                      (gx#stx-e
                                                       _tl3331634274_)))
                                                 (let ((_tl3332534298_
                                                        (##cdr _e3332334293_))
                                                       (_hd3332434296_
                                                        (##car _e3332334293_)))
                                                   (if (gx#stx-pair?
                                                        _hd3332434296_)
                                                       (let ((_e3332634301_
                                                              (gx#stx-e
                                                               _hd3332434296_)))
                                                         (let ((_tl3332834306_
                                                                (##cdr _e3332634301_))
                                                               (_hd3332734304_
                                                                (##car _e3332634301_)))
                                                           (if (gx#identifier?
                                                                _hd3332734304_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3332734304_)
                           (if (gx#stx-pair? _tl3332834306_)
                               (let ((_e3332934309_ (gx#stx-e _tl3332834306_)))
                                 (let ((_tl3333134314_ (##cdr _e3332934309_))
                                       (_hd3333034312_ (##car _e3332934309_)))
                                   (if (gx#stx-null? _tl3333134314_)
                                       (if (gx#stx-null? _tl3332534298_)
                                           (___kont4119741198_
                                            _hd3333034312_
                                            _hd3332134288_)
                                           (if (gx#stx-pair? _tl3332534298_)
                                               (let ((_e3335033986_
                                                      (gx#stx-e
                                                       _tl3332534298_)))
                                                 (let ((_tl3335233991_
                                                        (##cdr _e3335033986_))
                                                       (_hd3335133989_
                                                        (##car _e3335033986_)))
                                                   (if (gx#stx-pair?
                                                        _hd3335133989_)
                                                       (let ((_e3335333994_
                                                              (gx#stx-e
                                                               _hd3335133989_)))
                                                         (let ((_tl3335533999_
                                                                (##cdr _e3335333994_))
                                                               (_hd3335433997_
                                                                (##car _e3335333994_)))
                                                           (if (gx#identifier?
                                                                _hd3335433997_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#quote
                            _hd3335433997_)
                           (if (gx#stx-pair? _tl3335533999_)
                               (let ((_e3335634002_ (gx#stx-e _tl3335533999_)))
                                 (let ((_tl3335834007_ (##cdr _e3335634002_))
                                       (_hd3335734005_ (##car _e3335634002_)))
                                   (if (gx#stx-null? _tl3335834007_)
                                       (if (gx#stx-null? _tl3335233991_)
                                           (___kont4119941200_
                                            _hd3335734005_
                                            _hd3332434296_
                                            _hd3332134288_)
                                           (___kont4120941210_))
                                       (___kont4120941210_))))
                               (___kont4120941210_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3335433997_)
                               (if (gx#stx-pair? _tl3335533999_)
                                   (let ((_e3341633798_
                                          (gx#stx-e _tl3335533999_)))
                                     (let ((_tl3341833803_
                                            (##cdr _e3341633798_))
                                           (_hd3341733801_
                                            (##car _e3341633798_)))
                                       (if (gx#stx-null? _tl3341833803_)
                                           (if (gx#stx-null? _tl3335233991_)
                                               (___kont4120341204_
                                                _hd3341733801_
                                                _hd3333034312_
                                                _hd3332134288_)
                                               (___kont4120941210_))
                                           (___kont4120941210_))))
                                   (___kont4120941210_))
                               (___kont4120941210_)))
                       (___kont4120941210_))))
               (___kont4120941210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4120941210_)))
                                       (if (gx#stx-pair? _tl3332534298_)
                                           (let ((_e3335033986_
                                                  (gx#stx-e _tl3332534298_)))
                                             (let ((_tl3335233991_
                                                    (##cdr _e3335033986_))
                                                   (_hd3335133989_
                                                    (##car _e3335033986_)))
                                               (if (gx#stx-pair?
                                                    _hd3335133989_)
                                                   (let ((_e3335333994_
                                                          (gx#stx-e
                                                           _hd3335133989_)))
                                                     (let ((_tl3335533999_
                                                            (##cdr _e3335333994_))
                                                           (_hd3335433997_
                                                            (##car _e3335333994_)))
                                                       (if (gx#identifier?
                                                            _hd3335433997_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3335433997_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3335533999_)
                           (let ((_e3335634002_ (gx#stx-e _tl3335533999_)))
                             (let ((_tl3335834007_ (##cdr _e3335634002_))
                                   (_hd3335734005_ (##car _e3335634002_)))
                               (if (gx#stx-null? _tl3335834007_)
                                   (if (gx#stx-null? _tl3335233991_)
                                       (___kont4119941200_
                                        _hd3335734005_
                                        _hd3332434296_
                                        _hd3332134288_)
                                       (___kont4120941210_))
                                   (___kont4120941210_))))
                           (___kont4120941210_))
                       (___kont4120941210_))
                   (___kont4120941210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4120941210_))))
                                           (___kont4120941210_)))))
                               (if (gx#stx-pair? _tl3332534298_)
                                   (let ((_e3335033986_
                                          (gx#stx-e _tl3332534298_)))
                                     (let ((_tl3335233991_
                                            (##cdr _e3335033986_))
                                           (_hd3335133989_
                                            (##car _e3335033986_)))
                                       (if (gx#stx-pair? _hd3335133989_)
                                           (let ((_e3335333994_
                                                  (gx#stx-e _hd3335133989_)))
                                             (let ((_tl3335533999_
                                                    (##cdr _e3335333994_))
                                                   (_hd3335433997_
                                                    (##car _e3335333994_)))
                                               (if (gx#identifier?
                                                    _hd3335433997_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3335433997_)
                                                       (if (gx#stx-pair?
                                                            _tl3335533999_)
                                                           (let ((_e3335634002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3335533999_)))
                     (let ((_tl3335834007_ (##cdr _e3335634002_))
                           (_hd3335734005_ (##car _e3335634002_)))
                       (if (gx#stx-null? _tl3335834007_)
                           (if (gx#stx-null? _tl3335233991_)
                               (___kont4119941200_
                                _hd3335734005_
                                _hd3332434296_
                                _hd3332134288_)
                               (___kont4120941210_))
                           (___kont4120941210_))))
                   (___kont4120941210_))
               (___kont4120941210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4120941210_))))
                                           (___kont4120941210_))))
                                   (___kont4120941210_)))
                           (if (gx#stx-pair? _tl3332534298_)
                               (let ((_e3335033986_ (gx#stx-e _tl3332534298_)))
                                 (let ((_tl3335233991_ (##cdr _e3335033986_))
                                       (_hd3335133989_ (##car _e3335033986_)))
                                   (if (gx#stx-pair? _hd3335133989_)
                                       (let ((_e3335333994_
                                              (gx#stx-e _hd3335133989_)))
                                         (let ((_tl3335533999_
                                                (##cdr _e3335333994_))
                                               (_hd3335433997_
                                                (##car _e3335333994_)))
                                           (if (gx#identifier? _hd3335433997_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3335433997_)
                                                   (if (gx#stx-pair?
                                                        _tl3335533999_)
                                                       (let ((_e3335634002_
                                                              (gx#stx-e
                                                               _tl3335533999_)))
                                                         (let ((_tl3335834007_
                                                                (##cdr _e3335634002_))
                                                               (_hd3335734005_
                                                                (##car _e3335634002_)))
                                                           (if (gx#stx-null?
                                                                _tl3335834007_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3335233991_)
                           (___kont4119941200_
                            _hd3335734005_
                            _hd3332434296_
                            _hd3332134288_)
                           (if (gx#stx-eq? '%#quote _hd3332734304_)
                               (if (gx#stx-pair? _tl3332834306_)
                                   (let ((_e3338033898_
                                          (gx#stx-e _tl3332834306_)))
                                     (let ((_tl3338233903_
                                            (##cdr _e3338033898_))
                                           (_hd3338133901_
                                            (##car _e3338033898_)))
                                       (___kont4120941210_)))
                                   (___kont4120941210_))
                               (if (gx#stx-eq? '%#quote-syntax _hd3332734304_)
                                   (if (gx#stx-pair? _tl3332834306_)
                                       (let ((_e3344033658_
                                              (gx#stx-e _tl3332834306_)))
                                         (let ((_tl3344233663_
                                                (##cdr _e3344033658_))
                                               (_hd3344133661_
                                                (##car _e3344033658_)))
                                           (___kont4120941210_)))
                                       (___kont4120941210_))
                                   (___kont4120941210_))))
                       (if (gx#stx-eq? '%#quote _hd3332734304_)
                           (if (gx#stx-pair? _tl3332834306_)
                               (let ((_e3338033898_ (gx#stx-e _tl3332834306_)))
                                 (let ((_tl3338233903_ (##cdr _e3338033898_))
                                       (_hd3338133901_ (##car _e3338033898_)))
                                   (if (gx#stx-null? _tl3338233903_)
                                       (if (gx#stx-null? _tl3335233991_)
                                           (___kont4120141202_
                                            _hd3335133989_
                                            _hd3338133901_
                                            _hd3332134288_)
                                           (___kont4120941210_))
                                       (___kont4120941210_))))
                               (___kont4120941210_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3332734304_)
                               (if (gx#stx-pair? _tl3332834306_)
                                   (let ((_e3344033658_
                                          (gx#stx-e _tl3332834306_)))
                                     (let ((_tl3344233663_
                                            (##cdr _e3344033658_))
                                           (_hd3344133661_
                                            (##car _e3344033658_)))
                                       (___kont4120941210_)))
                                   (___kont4120941210_))
                               (___kont4120941210_))))))
               (if (gx#stx-eq? '%#quote _hd3332734304_)
                   (if (gx#stx-pair? _tl3332834306_)
                       (let ((_e3338033898_ (gx#stx-e _tl3332834306_)))
                         (let ((_tl3338233903_ (##cdr _e3338033898_))
                               (_hd3338133901_ (##car _e3338033898_)))
                           (if (gx#stx-null? _tl3338233903_)
                               (if (gx#stx-null? _tl3335233991_)
                                   (___kont4120141202_
                                    _hd3335133989_
                                    _hd3338133901_
                                    _hd3332134288_)
                                   (___kont4120941210_))
                               (___kont4120941210_))))
                       (___kont4120941210_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3332734304_)
                       (if (gx#stx-pair? _tl3332834306_)
                           (let ((_e3344033658_ (gx#stx-e _tl3332834306_)))
                             (let ((_tl3344233663_ (##cdr _e3344033658_))
                                   (_hd3344133661_ (##car _e3344033658_)))
                               (___kont4120941210_)))
                           (___kont4120941210_))
                       (___kont4120941210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3332734304_)
                                                       (if (gx#stx-pair?
                                                            _tl3332834306_)
                                                           (let ((_e3338033898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3332834306_)))
                     (let ((_tl3338233903_ (##cdr _e3338033898_))
                           (_hd3338133901_ (##car _e3338033898_)))
                       (if (gx#stx-null? _tl3338233903_)
                           (if (gx#stx-null? _tl3335233991_)
                               (___kont4120141202_
                                _hd3335133989_
                                _hd3338133901_
                                _hd3332134288_)
                               (___kont4120941210_))
                           (___kont4120941210_))))
                   (___kont4120941210_))
               (if (gx#stx-eq? '%#quote-syntax _hd3332734304_)
                   (if (gx#stx-pair? _tl3332834306_)
                       (let ((_e3344033658_ (gx#stx-e _tl3332834306_)))
                         (let ((_tl3344233663_ (##cdr _e3344033658_))
                               (_hd3344133661_ (##car _e3344033658_)))
                           (if (gx#stx-null? _tl3344233663_)
                               (if (gx#stx-eq? '%#ref _hd3335433997_)
                                   (if (gx#stx-pair? _tl3335533999_)
                                       (let ((_e3344933682_
                                              (gx#stx-e _tl3335533999_)))
                                         (let ((_tl3345133687_
                                                (##cdr _e3344933682_))
                                               (_hd3345033685_
                                                (##car _e3344933682_)))
                                           (if (gx#stx-null? _tl3345133687_)
                                               (if (gx#stx-null?
                                                    _tl3335233991_)
                                                   (___kont4120541206_
                                                    _hd3345033685_
                                                    _hd3344133661_
                                                    _hd3332134288_)
                                                   (___kont4120941210_))
                                               (___kont4120941210_))))
                                       (___kont4120941210_))
                                   (___kont4120941210_))
                               (___kont4120941210_))))
                       (___kont4120941210_))
                   (___kont4120941210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3332734304_)
                                                   (if (gx#stx-pair?
                                                        _tl3332834306_)
                                                       (let ((_e3338033898_
                                                              (gx#stx-e
                                                               _tl3332834306_)))
                                                         (let ((_tl3338233903_
                                                                (##cdr _e3338033898_))
                                                               (_hd3338133901_
                                                                (##car _e3338033898_)))
                                                           (if (gx#stx-null?
                                                                _tl3338233903_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3335233991_)
                           (___kont4120141202_
                            _hd3335133989_
                            _hd3338133901_
                            _hd3332134288_)
                           (___kont4120941210_))
                       (___kont4120941210_))))
               (___kont4120941210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3332734304_)
                                                       (if (gx#stx-pair?
                                                            _tl3332834306_)
                                                           (let ((_e3344033658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3332834306_)))
                     (let ((_tl3344233663_ (##cdr _e3344033658_))
                           (_hd3344133661_ (##car _e3344033658_)))
                       (___kont4120941210_)))
                   (___kont4120941210_))
               (___kont4120941210_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-eq? '%#quote _hd3332734304_)
                                           (if (gx#stx-pair? _tl3332834306_)
                                               (let ((_e3338033898_
                                                      (gx#stx-e
                                                       _tl3332834306_)))
                                                 (let ((_tl3338233903_
                                                        (##cdr _e3338033898_))
                                                       (_hd3338133901_
                                                        (##car _e3338033898_)))
                                                   (if (gx#stx-null?
                                                        _tl3338233903_)
                                                       (if (gx#stx-null?
                                                            _tl3335233991_)
                                                           (___kont4120141202_
                                                            _hd3335133989_
                                                            _hd3338133901_
                                                            _hd3332134288_)
                                                           (___kont4120941210_))
                                                       (___kont4120941210_))))
                                               (___kont4120941210_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3332734304_)
                                               (if (gx#stx-pair?
                                                    _tl3332834306_)
                                                   (let ((_e3344033658_
                                                          (gx#stx-e
                                                           _tl3332834306_)))
                                                     (let ((_tl3344233663_
                                                            (##cdr _e3344033658_))
                                                           (_hd3344133661_
                                                            (##car _e3344033658_)))
                                                       (___kont4120941210_)))
                                                   (___kont4120941210_))
                                               (___kont4120941210_))))))
                               (if (gx#stx-eq? '%#quote _hd3332734304_)
                                   (if (gx#stx-pair? _tl3332834306_)
                                       (let ((_e3338033898_
                                              (gx#stx-e _tl3332834306_)))
                                         (let ((_tl3338233903_
                                                (##cdr _e3338033898_))
                                               (_hd3338133901_
                                                (##car _e3338033898_)))
                                           (___kont4120941210_)))
                                       (___kont4120941210_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3332734304_)
                                       (if (gx#stx-pair? _tl3332834306_)
                                           (let ((_e3344033658_
                                                  (gx#stx-e _tl3332834306_)))
                                             (let ((_tl3344233663_
                                                    (##cdr _e3344033658_))
                                                   (_hd3344133661_
                                                    (##car _e3344033658_)))
                                               (___kont4120941210_)))
                                           (___kont4120941210_))
                                       (___kont4120941210_)))))
                       (if (gx#stx-pair? _tl3332534298_)
                           (let ((_e3335033986_ (gx#stx-e _tl3332534298_)))
                             (let ((_tl3335233991_ (##cdr _e3335033986_))
                                   (_hd3335133989_ (##car _e3335033986_)))
                               (if (gx#stx-pair? _hd3335133989_)
                                   (let ((_e3335333994_
                                          (gx#stx-e _hd3335133989_)))
                                     (let ((_tl3335533999_
                                            (##cdr _e3335333994_))
                                           (_hd3335433997_
                                            (##car _e3335333994_)))
                                       (if (gx#identifier? _hd3335433997_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3335433997_)
                                               (if (gx#stx-pair?
                                                    _tl3335533999_)
                                                   (let ((_e3335634002_
                                                          (gx#stx-e
                                                           _tl3335533999_)))
                                                     (let ((_tl3335834007_
                                                            (##cdr _e3335634002_))
                                                           (_hd3335734005_
                                                            (##car _e3335634002_)))
                                                       (if (gx#stx-null?
                                                            _tl3335834007_)
                                                           (if (gx#stx-null?
                                                                _tl3335233991_)
                                                               (___kont4119941200_
                                                                _hd3335734005_
                                                                _hd3332434296_
                                                                _hd3332134288_)
                                                               (___kont4120941210_))
                                                           (___kont4120941210_))))
                                                   (___kont4120941210_))
                                               (___kont4120941210_))
                                           (___kont4120941210_))))
                                   (___kont4120941210_))))
                           (___kont4120941210_)))))
               (if (gx#stx-pair? _tl3332534298_)
                   (let ((_e3335033986_ (gx#stx-e _tl3332534298_)))
                     (let ((_tl3335233991_ (##cdr _e3335033986_))
                           (_hd3335133989_ (##car _e3335033986_)))
                       (if (gx#stx-pair? _hd3335133989_)
                           (let ((_e3335333994_ (gx#stx-e _hd3335133989_)))
                             (let ((_tl3335533999_ (##cdr _e3335333994_))
                                   (_hd3335433997_ (##car _e3335333994_)))
                               (if (gx#identifier? _hd3335433997_)
                                   (if (gx#stx-eq? '%#quote _hd3335433997_)
                                       (if (gx#stx-pair? _tl3335533999_)
                                           (let ((_e3335634002_
                                                  (gx#stx-e _tl3335533999_)))
                                             (let ((_tl3335834007_
                                                    (##cdr _e3335634002_))
                                                   (_hd3335734005_
                                                    (##car _e3335634002_)))
                                               (if (gx#stx-null?
                                                    _tl3335834007_)
                                                   (if (gx#stx-null?
                                                        _tl3335233991_)
                                                       (___kont4119941200_
                                                        _hd3335734005_
                                                        _hd3332434296_
                                                        _hd3332134288_)
                                                       (___kont4120941210_))
                                                   (___kont4120941210_))))
                                           (___kont4120941210_))
                                       (___kont4120941210_))
                                   (___kont4120941210_))))
                           (___kont4120941210_))))
                   (___kont4120941210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4120941210_))
                                           (___kont4120941210_))))
                                   (___kont4120941210_))
                               (if (gx#stx-eq? '%#lambda _hd3331834280_)
                                   (if (gx#stx-pair? _tl3331934282_)
                                       (let ((_e3346433522_
                                              (gx#stx-e _tl3331934282_)))
                                         (let ((_tl3346633527_
                                                (##cdr _e3346433522_))
                                               (_hd3346533525_
                                                (##car _e3346433522_)))
                                           (if (gx#stx-pair? _hd3346533525_)
                                               (let ((_e3346733530_
                                                      (gx#stx-e
                                                       _hd3346533525_)))
                                                 (let ((_tl3346933535_
                                                        (##cdr _e3346733530_))
                                                       (_hd3346833533_
                                                        (##car _e3346733530_)))
                                                   (if (gx#stx-null?
                                                        _tl3346933535_)
                                                       (if (gx#stx-pair?
                                                            _tl3346633527_)
                                                           (let ((_e3347033538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3346633527_)))
                     (let ((_tl3347233543_ (##cdr _e3347033538_))
                           (_hd3347133541_ (##car _e3347033538_)))
                       (if (gx#stx-null? _tl3347233543_)
                           (if (gx#stx-pair? _tl3331634274_)
                               (let ((_e3347333546_ (gx#stx-e _tl3331634274_)))
                                 (let ((_tl3347533551_ (##cdr _e3347333546_))
                                       (_hd3347433549_ (##car _e3347333546_)))
                                   (if (gx#stx-pair? _hd3347433549_)
                                       (let ((_e3347633554_
                                              (gx#stx-e _hd3347433549_)))
                                         (let ((_tl3347833559_
                                                (##cdr _e3347633554_))
                                               (_hd3347733557_
                                                (##car _e3347633554_)))
                                           (if (gx#identifier? _hd3347733557_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd3347733557_)
                                                   (if (gx#stx-pair?
                                                        _tl3347833559_)
                                                       (let ((_e3347933562_
                                                              (gx#stx-e
                                                               _tl3347833559_)))
                                                         (let ((_tl3348133567_
                                                                (##cdr _e3347933562_))
                                                               (_hd3348033565_
                                                                (##car _e3347933562_)))
                                                           (if (gx#stx-null?
                                                                _tl3348133567_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3347533551_)
                           (___kont4120741208_
                            _hd3348033565_
                            _hd3347133541_
                            _hd3346833533_)
                           (___kont4120941210_))
                       (___kont4120941210_))))
               (___kont4120941210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4120941210_))
                                               (___kont4120941210_))))
                                       (___kont4120941210_))))
                               (___kont4120941210_))
                           (___kont4120941210_))))
                   (___kont4120941210_))
               (___kont4120941210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4120941210_))))
                                       (___kont4120941210_))
                                   (___kont4120941210_)))
                           (___kont4120941210_))))
                   (___kont4120941210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4120941210_))
                                               (___kont4120941210_))
                                           (___kont4120941210_))))
                                   (___kont4120941210_)))))))))
                (_assert-type32283_
                 (lambda (_id33182_ _t33183_)
                   (letrec ((_super-e33185_
                             (lambda (_t33282_)
                               (let ((_tid3328333285_
                                      (##structure-ref
                                       _t33282_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                 (if _tid3328333285_
                                     (let ((_tid33288_ _tid3328333285_))
                                       (gxc#optimizer-resolve-type _tid33288_))
                                     '#f)))))
                     (let _lp33187_ ((_rest33189_ _env-type32265_))
                       (let* ((_rest3319033198_ _rest33189_)
                              (_else3319233206_ (lambda () '#!void))
                              (_K3319433270_
                               (lambda (_rest33209_ _type-info33210_)
                                 (let* ((_type-info3321133223_
                                         _type-info33210_)
                                        (_else3321333231_
                                         (lambda () (_lp33187_ _rest33209_)))
                                        (_K3321533246_
                                         (lambda (_val33234_
                                                  _xt33235_
                                                  _xid33236_)
                                           (if (gx#free-identifier=?
                                                _id33182_
                                                _xid33236_)
                                               (if (eq? _t33183_ _xt33235_)
                                                   _val33234_
                                                   (if _val33234_
                                                       (if (if (##structure-instance-of?
                                                                _t33183_
                                                                'gxc#!struct-type::t)
                                                               (##structure-instance-of?
                                                                _xt33235_
                                                                'gxc#!struct-type::t)
                                                               '#f)
                                                           (let _subtype?33238_ ((_xt33240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          (_super-e33185_ _xt33235_)))
                     (if (not _xt33240_)
                         '#f
                         (if (eq? _xt33240_ _t33183_)
                             '#t
                             (_subtype?33238_ (_super-e33185_ _xt33240_)))))
                   '#f)
               (if (if (##structure-instance-of? _t33183_ 'gxc#!struct-type::t)
                       (##structure-instance-of?
                        _xt33235_
                        'gxc#!struct-type::t)
                       '#f)
                   (let _supertype?33242_ ((_t33244_
                                            (_super-e33185_ _t33183_)))
                     (if (not _t33244_)
                         (_lp33187_ _rest33209_)
                         (if (eq? _t33244_ _xt33235_)
                             '#f
                             (_supertype?33242_ (_super-e33185_ _t33244_)))))
                   (_lp33187_ _rest33209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp33187_ _rest33209_)))))
                                   (if (##pair? _type-info3321133223_)
                                       (let ((_hd3321633249_
                                              (##car _type-info3321133223_))
                                             (_tl3321733251_
                                              (##cdr _type-info3321133223_)))
                                         (let ((_xid33254_ _hd3321633249_))
                                           (if (##pair? _tl3321733251_)
                                               (let ((_hd3321833256_
                                                      (##car _tl3321733251_))
                                                     (_tl3321933258_
                                                      (##cdr _tl3321733251_)))
                                                 (let ((_xt33261_
                                                        _hd3321833256_))
                                                   (if (##pair? _tl3321933258_)
                                                       (let ((_hd3322033263_
                                                              (##car _tl3321933258_))
                                                             (_tl3322133265_
                                                              (##cdr _tl3321933258_)))
                                                         (let ((_val33268_
                                                                _hd3322033263_))
                                                           (if (##null? _tl3322133265_)
                                                               (_K3321533246_
                                                                _val33268_
                                                                _xt33261_
                                                                _xid33254_)
                                                               (_else3321333231_))))
                                                       (_else3321333231_))))
                                               (_else3321333231_))))
                                       (_else3321333231_))))))
                         (if (##pair? _rest3319033198_)
                             (let ((_hd3319533273_ (##car _rest3319033198_))
                                   (_tl3319633275_ (##cdr _rest3319033198_)))
                               (let* ((_type-info33278_ _hd3319533273_)
                                      (_rest33280_ _tl3319633275_))
                                 (_K3319433270_ _rest33280_ _type-info33278_)))
                             (_else3319233206_)))))))
                (_assert-count32284_
                 (lambda (_id33081_ _sym33082_ _count33083_)
                   (let _lp33085_ ((_rest33087_ _env-type32265_))
                     (let* ((_rest3308833096_ _rest33087_)
                            (_else3309033104_ (lambda () '#!void))
                            (_K3309233170_
                             (lambda (_rest33107_ _type-info33108_)
                               (let* ((_type-info3310933123_ _type-info33108_)
                                      (_else3311133131_
                                       (lambda () (_lp33085_ _rest33107_)))
                                      (_K3311333139_
                                       (lambda (_val33134_
                                                _xcount33135_
                                                _xsym33136_
                                                _xid33137_)
                                         (if (if (eq? _sym33082_ _xsym33136_)
                                                 (gx#free-identifier=?
                                                  _id33081_
                                                  _xid33137_)
                                                 '#f)
                                             (if _val33134_
                                                 (fx= _count33083_
                                                      _xcount33135_)
                                                 (if (fx= _count33083_
                                                          _xcount33135_)
                                                     '#f
                                                     (_lp33085_ _rest33107_)))
                                             (_lp33085_ _rest33107_)))))
                                 (if (##pair? _type-info3310933123_)
                                     (let ((_hd3311433142_
                                            (##car _type-info3310933123_))
                                           (_tl3311533144_
                                            (##cdr _type-info3310933123_)))
                                       (let ((_xid33147_ _hd3311433142_))
                                         (if (##pair? _tl3311533144_)
                                             (let ((_hd3311633149_
                                                    (##car _tl3311533144_))
                                                   (_tl3311733151_
                                                    (##cdr _tl3311533144_)))
                                               (let ((_xsym33154_
                                                      _hd3311633149_))
                                                 (if (##pair? _tl3311733151_)
                                                     (let ((_hd3311833156_
                                                            (##car _tl3311733151_))
                                                           (_tl3311933158_
                                                            (##cdr _tl3311733151_)))
                                                       (let ((_xcount33161_
                                                              _hd3311833156_))
                                                         (if (##pair? _tl3311933158_)
                                                             (let ((_hd3312033163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl3311933158_))
                           (_tl3312133165_ (##cdr _tl3311933158_)))
                       (let ((_val33168_ _hd3312033163_))
                         (if (##null? _tl3312133165_)
                             (_K3311333139_
                              _val33168_
                              _xcount33161_
                              _xsym33154_
                              _xid33147_)
                             (_else3311133131_))))
                     (_else3311133131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else3311133131_))))
                                             (_else3311133131_))))
                                     (_else3311133131_))))))
                       (if (##pair? _rest3308833096_)
                           (let ((_hd3309333173_ (##car _rest3308833096_))
                                 (_tl3309433175_ (##cdr _rest3308833096_)))
                             (let* ((_type-info33178_ _hd3309333173_)
                                    (_rest33180_ _tl3309433175_))
                               (_K3309233170_ _rest33180_ _type-info33178_)))
                           (_else3309033104_))))))
                (_assert-eqf32285_
                 (lambda (_id32971_ _sym32972_ _datum32973_)
                   (letrec ((_eqf32975_
                             (lambda (_sym33076_)
                               (let ((_$e33078_ _sym33076_))
                                 (if (eq? 'eq? _$e33078_)
                                     eq?
                                     (if (eq? 'eqv? _$e33078_)
                                         eqv?
                                         (if (eq? 'equal? _$e33078_)
                                             equal?
                                             (if (eq? 'free-identifier=?
                                                      _$e33078_)
                                                 gx#free-identifier=?
                                                 (if (eq? 'stx-eq? _$e33078_)
                                                     gx#stx-eq?
                                                     (gxc#raise-compile-error
                                                      '"Unexpected eqf symbol"
                                                      _body32026_
                                                      _sym33076_))))))))))
                     (let _lp32977_ ((_rest32979_ _env-type32265_))
                       (let* ((_rest3298032988_ _rest32979_)
                              (_else3298232996_ (lambda () '#!void))
                              (_K3298433064_
                               (lambda (_rest32999_ _type-info33000_)
                                 (let* ((_type-info3300133015_
                                         _type-info33000_)
                                        (_else3300333023_
                                         (lambda () (_lp32977_ _rest32999_)))
                                        (_K3300533033_
                                         (lambda (_val33026_
                                                  _xdatum33027_
                                                  _xsym33028_
                                                  _xid33029_)
                                           (if (if (eq? _sym32972_ _xsym33028_)
                                                   (gx#free-identifier=?
                                                    _id32971_
                                                    _xid33029_)
                                                   '#f)
                                               (let ((_=?33031_
                                                      (_eqf32975_ _sym32972_)))
                                                 (if _val33026_
                                                     (_=?33031_
                                                      _datum32973_
                                                      _xdatum33027_)
                                                     (if (_=?33031_
                                                          _datum32973_
                                                          _xdatum33027_)
                                                         '#f
                                                         (_lp32977_
                                                          _rest32999_))))
                                               (_lp32977_ _rest32999_)))))
                                   (if (##pair? _type-info3300133015_)
                                       (let ((_hd3300633036_
                                              (##car _type-info3300133015_))
                                             (_tl3300733038_
                                              (##cdr _type-info3300133015_)))
                                         (let ((_xid33041_ _hd3300633036_))
                                           (if (##pair? _tl3300733038_)
                                               (let ((_hd3300833043_
                                                      (##car _tl3300733038_))
                                                     (_tl3300933045_
                                                      (##cdr _tl3300733038_)))
                                                 (let ((_xsym33048_
                                                        _hd3300833043_))
                                                   (if (##pair? _tl3300933045_)
                                                       (let ((_hd3301033050_
                                                              (##car _tl3300933045_))
                                                             (_tl3301133052_
                                                              (##cdr _tl3300933045_)))
                                                         (let ((_xdatum33055_
                                                                _hd3301033050_))
                                                           (if (##pair? _tl3301133052_)
                                                               (let ((_hd3301233057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _tl3301133052_))
                             (_tl3301333059_ (##cdr _tl3301133052_)))
                         (let ((_val33062_ _hd3301233057_))
                           (if (##null? _tl3301333059_)
                               (_K3300533033_
                                _val33062_
                                _xdatum33055_
                                _xsym33048_
                                _xid33041_)
                               (_else3300333023_))))
                       (_else3300333023_))))
               (_else3300333023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else3300333023_))))
                                       (_else3300333023_))))))
                         (if (##pair? _rest3298032988_)
                             (let ((_hd3298533067_ (##car _rest3298032988_))
                                   (_tl3298633069_ (##cdr _rest3298032988_)))
                               (let* ((_type-info33072_ _hd3298533067_)
                                      (_rest33074_ _tl3298633069_))
                                 (_K3298433064_ _rest33074_ _type-info33072_)))
                             (_else3298232996_)))))))
                (_bind-e__3960839609_
                 (lambda (_bind32874_ _body32875_ _continue32876_)
                   (let _lp32878_ ((_rest32880_ _bind32874_)
                                   (_subst32881_ '())
                                   (_locals32882_ '())
                                   (_env32883_ _env-bind32266_))
                     (let* ((_rest3288432892_ _rest32880_)
                            (_else3288632906_
                             (lambda ()
                               (let* ((_body32900_
                                       (if (null? _subst32881_)
                                           _body32875_
                                           (gxc#apply-expression-subst*
                                            _body32875_
                                            _subst32881_)))
                                      (_body32903_
                                       (_do-bind!32277_
                                        _env32883_
                                        (lambda ()
                                          (_continue32876_ _body32900_)))))
                                 (if (null? _locals32882_)
                                     _body32903_
                                     (cons '%#let-values
                                           (cons _locals32882_
                                                 (cons _body32903_ '())))))))
                            (_K3288832947_
                             (lambda (_rest32909_ _bind32910_)
                               (let* ((_bind3291132918_ _bind32910_)
                                      (_E3291332922_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3291132918_)))
                                      (_K3291432935_
                                       (lambda (_expr32925_ _id32926_)
                                         (let* ((_sexpr32928_
                                                 (gxc#apply-generate-runtime-repr
                                                  _expr32925_))
                                                (_$e32930_
                                                 (assget _sexpr32928_
                                                         _env-bind32266_)))
                                           (if _$e32930_
                                               ((lambda (_xid32933_)
                                                  (_lp32878_
                                                   _rest32909_
                                                   (cons (cons _id32926_
                                                               _xid32933_)
                                                         _subst32881_)
                                                   _locals32882_
                                                   _env32883_))
                                                _$e32930_)
                                               (_lp32878_
                                                _rest32909_
                                                _subst32881_
                                                (cons (cons (cons _id32926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr32925_ '()))
              _locals32882_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _sexpr32928_
                                                            _id32926_)
                                                      _env32883_)))))))
                                 (if (##pair? _bind3291132918_)
                                     (let ((_hd3291532938_
                                            (##car _bind3291132918_))
                                           (_tl3291632940_
                                            (##cdr _bind3291132918_)))
                                       (let* ((_id32943_ _hd3291532938_)
                                              (_expr32945_ _tl3291632940_))
                                         (_K3291432935_
                                          _expr32945_
                                          _id32943_)))
                                     (_E3291332922_))))))
                       (if (##pair? _rest3288432892_)
                           (let ((_hd3288932950_ (##car _rest3288432892_))
                                 (_tl3289032952_ (##cdr _rest3288432892_)))
                             (let* ((_bind32955_ _hd3288932950_)
                                    (_rest32957_ _tl3289032952_))
                               (_K3288832947_ _rest32957_ _bind32955_)))
                           (_else3288632906_))))))
                (_bind-e__0__3961039611_
                 (lambda (_bind32962_ _body32963_)
                   (let ((_continue32965_ _optimize-e32279_))
                     (_bind-e__3960839609_
                      _bind32962_
                      _body32963_
                      _continue32965_))))
                (_bind-e32286_
                 (lambda _g42706_
                   (let ((_g42705_ (length _g42706_)))
                     (cond ((##fx= _g42705_ 2)
                            (apply _bind-e__0__3961039611_ _g42706_))
                           ((##fx= _g42705_ 3)
                            (apply _bind-e__3960839609_ _g42706_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42706_))))))
                (_lookup-block32287_
                 (lambda (_id32869_)
                   (find (lambda (_block32871_)
                           (gx#free-identifier=? (car _block32871_) _id32869_))
                         _blocks32029_)))
                (_inline-block32288_
                 (lambda (_block32745_ _args32746_)
                   (let* ((_kont32748_ (caddr _block32745_))
                          (_g3275032776_
                           (lambda (_g3275132773_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3275132773_)))
                          (_g3274932866_
                           (lambda (_g3275132779_)
                             (if (gx#stx-pair? _g3275132779_)
                                 (let ((_e3275432781_
                                        (gx#stx-e _g3275132779_)))
                                   (let ((_hd3275532784_ (##car _e3275432781_))
                                         (_tl3275632786_
                                          (##cdr _e3275432781_)))
                                     (if (gx#identifier? _hd3275532784_)
                                         (if (gx#stx-eq?
                                              '%#lambda
                                              _hd3275532784_)
                                             (if (gx#stx-pair? _tl3275632786_)
                                                 (let ((_e3275732789_
                                                        (gx#stx-e
                                                         _tl3275632786_)))
                                                   (let ((_hd3275832792_
                                                          (##car _e3275732789_))
                                                         (_tl3275932794_
                                                          (##cdr _e3275732789_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd3275832792_)
                                                         (let ((_g42707_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3275832792_
                         '0)))
                   (begin
                     (let ((_g42708_
                            (if (##values? _g42707_)
                                (##vector-length _g42707_)
                                1)))
                       (if (not (##fx= _g42708_ 2))
                           (error "Context expects 2 values" _g42708_)))
                     (let ((_target3276032797_ (##vector-ref _g42707_ 0))
                           (_tl3276232799_ (##vector-ref _g42707_ 1)))
                       (if (gx#stx-null? _tl3276232799_)
                           (letrec ((_loop3276332802_
                                     (lambda (_hd3276132805_ _id3276732807_)
                                       (if (gx#stx-pair? _hd3276132805_)
                                           (let ((_e3276432810_
                                                  (gx#stx-e _hd3276132805_)))
                                             (let ((_lp-hd3276532813_
                                                    (##car _e3276432810_))
                                                   (_lp-tl3276632815_
                                                    (##cdr _e3276432810_)))
                                               (_loop3276332802_
                                                _lp-tl3276632815_
                                                (cons _lp-hd3276532813_
                                                      _id3276732807_))))
                                           (let ((_id3276832818_
                                                  (reverse _id3276732807_)))
                                             (if (gx#stx-pair? _tl3275932794_)
                                                 (let ((_e3276932821_
                                                        (gx#stx-e
                                                         _tl3275932794_)))
                                                   (let ((_hd3277032824_
                                                          (##car _e3276932821_))
                                                         (_tl3277132826_
                                                          (##cdr _e3276932821_)))
                                                     (if (gx#stx-null?
                                                          _tl3277132826_)
                                                         ((lambda (_L32829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L32830_)
                    (if (null? (begin
                                 '#!void
                                 (foldr1 (lambda (_g3284932852_ _g3285032854_)
                                           (cons _g3284932852_ _g3285032854_))
                                         '()
                                         _L32830_)))
                        _L32829_
                        (let ((_subst32864_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3285632859_
                                                       _g3285732861_)
                                                (cons _g3285632859_
                                                      _g3285732861_))
                                              '()
                                              _L32830_))
                                    _args32746_)))
                          (gxc#apply-expression-subst*
                           _L32829_
                           _subst32864_))))
                  _hd3277032824_
                  _id3276832818_)
                 (_g3275032776_ _g3275132779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3275032776_
                                                  _g3275132779_)))))))
                             (_loop3276332802_ _target3276032797_ '()))
                           (_g3275032776_ _g3275132779_)))))
                 (_g3275032776_ _g3275132779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3275032776_ _g3275132779_))
                                             (_g3275032776_ _g3275132779_))
                                         (_g3275032776_ _g3275132779_))))
                                 (_g3275032776_ _g3275132779_)))))
                     (_g3274932866_ _kont32748_))))
                (_nonlinear-block?32289_
                 (lambda (_block32294_)
                   (letrec ((_nonlinear-expr?32296_
                             (lambda (_expr32404_)
                               (let* ((___stx4166541666_ _expr32404_)
                                      (_g3241032476_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4166541666_))))
                                 (let ((___kont4166741668_ (lambda () '#t))
                                       (___kont4166941670_
                                        (lambda (_L32675_)
                                          (let* ((___stx4164741648_ _L32675_)
                                                 (_g3269332702_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx4164741648_))))
                                            (let ((___kont4164941650_
                                                   (lambda () '#f))
                                                  (___kont4165141652_
                                                   (lambda () '#t)))
                                              (if (gx#stx-pair?
                                                   ___stx4164741648_)
                                                  (let ((_e3269532714_
                                                         (gx#stx-e
                                                          ___stx4164741648_)))
                                                    (let ((_tl3269732719_
                                                           (##cdr _e3269532714_))
                                                          (_hd3269632717_
                                                           (##car _e3269532714_)))
                                                      (if (gx#identifier?
                                                           _hd3269632717_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd3269632717_)
                                                              (___kont4164941650_)
                                                              (___kont4165141652_))
                                                          (___kont4165141652_))))
                                                  (___kont4165141652_))))))
                                       (___kont4167341674_
                                        (lambda (_L32573_)
                                          (_nonlinear-expr?32296_ _L32573_)))
                                       (___kont4167541676_
                                        (lambda (_L32520_ _L32521_ _L32522_)
                                          (let ((_$e32541_
                                                 (_nonlinear-expr?32296_
                                                  _L32521_)))
                                            (if _$e32541_
                                                _$e32541_
                                                (_nonlinear-expr?32296_
                                                 _L32520_)))))
                                       (___kont4167741678_ (lambda () '#f)))
                                   (let* ((___match4172841729_
                                           (lambda (_e3244832549_
                                                    _hd3244932552_
                                                    _tl3245032554_
                                                    _e3245132557_
                                                    _hd3245232560_
                                                    _tl3245332562_)
                                             (if (gx#stx-pair? _tl3245332562_)
                                                 (let ((_e3245432565_
                                                        (gx#stx-e
                                                         _tl3245332562_)))
                                                   (let ((_tl3245632570_
                                                          (##cdr _e3245432565_))
                                                         (_hd3245532568_
                                                          (##car _e3245432565_)))
                                                     (if (gx#stx-null?
                                                          _tl3245632570_)
                                                         (___kont4167341674_
                                                          _hd3245532568_)
                                                         (___kont4167741678_))))
                                                 (___kont4167741678_))))
                                          (___match4171241713_
                                           (lambda (_e3241632591_
                                                    _hd3241732594_
                                                    _tl3241832596_
                                                    _e3241932599_
                                                    _hd3242032602_
                                                    _tl3242132604_
                                                    ___splice4167141672_
                                                    _target3242232607_
                                                    _tl3242432609_)
                                             (letrec ((_loop3242532612_
                                                       (lambda (_hd3242332615_)
                                                         (if (gx#stx-pair?
                                                              _hd3242332615_)
                                                             (let ((_e3242632618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3242332615_)))
                       (let ((_lp-tl3242832623_ (##cdr _e3242632618_))
                             (_lp-hd3242732621_ (##car _e3242632618_)))
                         (if (gx#stx-pair? _lp-hd3242732621_)
                             (let ((_e3242932626_
                                    (gx#stx-e _lp-hd3242732621_)))
                               (let ((_tl3243132631_ (##cdr _e3242932626_))
                                     (_hd3243032629_ (##car _e3242932626_)))
                                 (if (gx#stx-pair? _hd3243032629_)
                                     (let ((_e3243232634_
                                            (gx#stx-e _hd3243032629_)))
                                       (let ((_tl3243432639_
                                              (##cdr _e3243232634_))
                                             (_hd3243332637_
                                              (##car _e3243232634_)))
                                         (if (gx#stx-null? _tl3243432639_)
                                             (if (gx#stx-pair? _tl3243132631_)
                                                 (let ((_e3243532642_
                                                        (gx#stx-e
                                                         _tl3243132631_)))
                                                   (let ((_tl3243732647_
                                                          (##cdr _e3243532642_))
                                                         (_hd3243632645_
                                                          (##car _e3243532642_)))
                                                     (if (gx#stx-pair?
                                                          _hd3243632645_)
                                                         (let ((_e3243832650_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3243632645_)))
                   (let ((_tl3244032655_ (##cdr _e3243832650_))
                         (_hd3243932653_ (##car _e3243832650_)))
                     (if (gx#identifier? _hd3243932653_)
                         (if (gx#stx-eq? '%#ref _hd3243932653_)
                             (if (gx#stx-pair? _tl3244032655_)
                                 (let ((_e3244132658_
                                        (gx#stx-e _tl3244032655_)))
                                   (let ((_tl3244332663_ (##cdr _e3244132658_))
                                         (_hd3244232661_
                                          (##car _e3244132658_)))
                                     (if (gx#stx-null? _tl3244332663_)
                                         (if (gx#stx-null? _tl3243732647_)
                                             (_loop3242532612_
                                              _lp-tl3242832623_)
                                             (___match4172841729_
                                              _e3241632591_
                                              _hd3241732594_
                                              _tl3241832596_
                                              _e3241932599_
                                              _hd3242032602_
                                              _tl3242132604_))
                                         (___match4172841729_
                                          _e3241632591_
                                          _hd3241732594_
                                          _tl3241832596_
                                          _e3241932599_
                                          _hd3242032602_
                                          _tl3242132604_))))
                                 (___match4172841729_
                                  _e3241632591_
                                  _hd3241732594_
                                  _tl3241832596_
                                  _e3241932599_
                                  _hd3242032602_
                                  _tl3242132604_))
                             (___match4172841729_
                              _e3241632591_
                              _hd3241732594_
                              _tl3241832596_
                              _e3241932599_
                              _hd3242032602_
                              _tl3242132604_))
                         (___match4172841729_
                          _e3241632591_
                          _hd3241732594_
                          _tl3241832596_
                          _e3241932599_
                          _hd3242032602_
                          _tl3242132604_))))
                 (___match4172841729_
                  _e3241632591_
                  _hd3241732594_
                  _tl3241832596_
                  _e3241932599_
                  _hd3242032602_
                  _tl3242132604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___match4172841729_
                                                  _e3241632591_
                                                  _hd3241732594_
                                                  _tl3241832596_
                                                  _e3241932599_
                                                  _hd3242032602_
                                                  _tl3242132604_))
                                             (___match4172841729_
                                              _e3241632591_
                                              _hd3241732594_
                                              _tl3241832596_
                                              _e3241932599_
                                              _hd3242032602_
                                              _tl3242132604_))))
                                     (___match4172841729_
                                      _e3241632591_
                                      _hd3241732594_
                                      _tl3241832596_
                                      _e3241932599_
                                      _hd3242032602_
                                      _tl3242132604_))))
                             (___match4172841729_
                              _e3241632591_
                              _hd3241732594_
                              _tl3241832596_
                              _e3241932599_
                              _hd3242032602_
                              _tl3242132604_))))
                     (let ()
                       (if (gx#stx-pair? _tl3242132604_)
                           (let ((_e3244432667_ (gx#stx-e _tl3242132604_)))
                             (let ((_tl3244632672_ (##cdr _e3244432667_))
                                   (_hd3244532670_ (##car _e3244432667_)))
                               (if (gx#stx-null? _tl3244632672_)
                                   (___kont4166941670_ _hd3244532670_)
                                   (___kont4167741678_))))
                           (___kont4167741678_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop3242532612_
                                                _target3242232607_)))))
                                     (if (gx#stx-pair? ___stx4166541666_)
                                         (let ((_e3241232732_
                                                (gx#stx-e ___stx4166541666_)))
                                           (let ((_tl3241432737_
                                                  (##cdr _e3241232732_))
                                                 (_hd3241332735_
                                                  (##car _e3241232732_)))
                                             (if (gx#identifier?
                                                  _hd3241332735_)
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3241332735_)
                                                     (___kont4166741668_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _hd3241332735_)
                                                         (if (gx#stx-pair?
                                                              _tl3241432737_)
                                                             (let ((_e3241932599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3241432737_)))
                       (let ((_tl3242132604_ (##cdr _e3241932599_))
                             (_hd3242032602_ (##car _e3241932599_)))
                         (if (gx#stx-pair/null? _hd3242032602_)
                             (let ((___splice4167141672_
                                    (gx#syntax-split-splice
                                     _hd3242032602_
                                     '0)))
                               (let ((_tl3242432609_
                                      (##vector-ref ___splice4167141672_ '1))
                                     (_target3242232607_
                                      (##vector-ref ___splice4167141672_ '0)))
                                 (if (gx#stx-null? _tl3242432609_)
                                     (___match4171241713_
                                      _e3241232732_
                                      _hd3241332735_
                                      _tl3241432737_
                                      _e3241932599_
                                      _hd3242032602_
                                      _tl3242132604_
                                      ___splice4167141672_
                                      _target3242232607_
                                      _tl3242432609_)
                                     (if (gx#stx-pair? _tl3242132604_)
                                         (let ((_e3245432565_
                                                (gx#stx-e _tl3242132604_)))
                                           (let ((_tl3245632570_
                                                  (##cdr _e3245432565_))
                                                 (_hd3245532568_
                                                  (##car _e3245432565_)))
                                             (if (gx#stx-null? _tl3245632570_)
                                                 (___kont4167341674_
                                                  _hd3245532568_)
                                                 (___kont4167741678_))))
                                         (___kont4167741678_)))))
                             (if (gx#stx-pair? _tl3242132604_)
                                 (let ((_e3245432565_
                                        (gx#stx-e _tl3242132604_)))
                                   (let ((_tl3245632570_ (##cdr _e3245432565_))
                                         (_hd3245532568_
                                          (##car _e3245432565_)))
                                     (if (gx#stx-null? _tl3245632570_)
                                         (___kont4167341674_ _hd3245532568_)
                                         (___kont4167741678_))))
                                 (___kont4167741678_)))))
                     (___kont4167741678_))
                 (if (gx#stx-eq? '%#if _hd3241332735_)
                     (if (gx#stx-pair? _tl3241432737_)
                         (let ((_e3246332496_ (gx#stx-e _tl3241432737_)))
                           (let ((_tl3246532501_ (##cdr _e3246332496_))
                                 (_hd3246432499_ (##car _e3246332496_)))
                             (if (gx#stx-pair? _tl3246532501_)
                                 (let ((_e3246632504_
                                        (gx#stx-e _tl3246532501_)))
                                   (let ((_tl3246832509_ (##cdr _e3246632504_))
                                         (_hd3246732507_
                                          (##car _e3246632504_)))
                                     (if (gx#stx-pair? _tl3246832509_)
                                         (let ((_e3246932512_
                                                (gx#stx-e _tl3246832509_)))
                                           (let ((_tl3247132517_
                                                  (##cdr _e3246932512_))
                                                 (_hd3247032515_
                                                  (##car _e3246932512_)))
                                             (if (gx#stx-null? _tl3247132517_)
                                                 (___kont4167541676_
                                                  _hd3247032515_
                                                  _hd3246732507_
                                                  _hd3246432499_)
                                                 (___kont4167741678_))))
                                         (___kont4167741678_))))
                                 (___kont4167741678_))))
                         (___kont4167741678_))
                     (___kont4167741678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4167741678_))))
                                         (___kont4167741678_))))))))
                     (let* ((_kont32298_ (caddr _block32294_))
                            (_g3230032326_
                             (lambda (_g3230132323_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3230132323_)))
                            (_g3229932401_
                             (lambda (_g3230132329_)
                               (if (gx#stx-pair? _g3230132329_)
                                   (let ((_e3230432331_
                                          (gx#stx-e _g3230132329_)))
                                     (let ((_hd3230532334_
                                            (##car _e3230432331_))
                                           (_tl3230632336_
                                            (##cdr _e3230432331_)))
                                       (if (gx#identifier? _hd3230532334_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd3230532334_)
                                               (if (gx#stx-pair?
                                                    _tl3230632336_)
                                                   (let ((_e3230732339_
                                                          (gx#stx-e
                                                           _tl3230632336_)))
                                                     (let ((_hd3230832342_
                                                            (##car _e3230732339_))
                                                           (_tl3230932344_
                                                            (##cdr _e3230732339_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd3230832342_)
                                                           (let ((_g42709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd3230832342_ '0)))
                     (begin
                       (let ((_g42710_
                              (if (##values? _g42709_)
                                  (##vector-length _g42709_)
                                  1)))
                         (if (not (##fx= _g42710_ 2))
                             (error "Context expects 2 values" _g42710_)))
                       (let ((_target3231032347_ (##vector-ref _g42709_ 0))
                             (_tl3231232349_ (##vector-ref _g42709_ 1)))
                         (if (gx#stx-null? _tl3231232349_)
                             (letrec ((_loop3231332352_
                                       (lambda (_hd3231132355_ _id3231732357_)
                                         (if (gx#stx-pair? _hd3231132355_)
                                             (let ((_e3231432360_
                                                    (gx#stx-e _hd3231132355_)))
                                               (let ((_lp-hd3231532363_
                                                      (##car _e3231432360_))
                                                     (_lp-tl3231632365_
                                                      (##cdr _e3231432360_)))
                                                 (_loop3231332352_
                                                  _lp-tl3231632365_
                                                  (cons _lp-hd3231532363_
                                                        _id3231732357_))))
                                             (let ((_id3231832368_
                                                    (reverse _id3231732357_)))
                                               (if (gx#stx-pair?
                                                    _tl3230932344_)
                                                   (let ((_e3231932371_
                                                          (gx#stx-e
                                                           _tl3230932344_)))
                                                     (let ((_hd3232032374_
                                                            (##car _e3231932371_))
                                                           (_tl3232132376_
                                                            (##cdr _e3231932371_)))
                                                       (if (gx#stx-null?
                                                            _tl3232132376_)
                                                           ((lambda (_L32379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L32380_)
                      (_nonlinear-expr?32296_ _L32379_))
                    _hd3232032374_
                    _id3231832368_)
                   (_g3230032326_ _g3230132329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3230032326_
                                                    _g3230132329_)))))))
                               (_loop3231332352_ _target3231032347_ '()))
                             (_g3230032326_ _g3230132329_)))))
                   (_g3230032326_ _g3230132329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3230032326_
                                                    _g3230132329_))
                                               (_g3230032326_ _g3230132329_))
                                           (_g3230032326_ _g3230132329_))))
                                   (_g3230032326_ _g3230132329_)))))
                       (_g3229932401_ _kont32298_))))))
        (_do-assert32268_
         _assert32027_
         (lambda ()
           (_do-bind32275_
            _bind32028_
            (lambda ()
              (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                  (_do-splice!32278_
                   (lambda () (_optimize-e32279_ _body32026_)))
                  (_optimize-e32279_ _body32026_)))))))))
  (define gxc#optimize-match-prune-blocks
    (lambda (_blocks31938_ _konts31939_)
      (letrec* ((_rtab31941_ (make-hash-table-eq)))
        (begin
          (for-each
           (lambda (_block31943_)
             (gxc#apply-collect-runtime-refs (caddr _block31943_) _rtab31941_))
           _konts31939_)
          (let _lp31945_ ((_rest31947_ _blocks31938_) (_r31948_ '()))
            (let* ((_rest3194931957_ _rest31947_)
                   (_else3195131965_ (lambda () (reverse _r31948_)))
                   (_K3195332014_
                    (lambda (_rest31968_ _block31969_)
                      (let* ((_block3197031981_ _block31969_)
                             (_E3197231985_
                              (lambda ()
                                (error '"No clause matching"
                                       _block3197031981_)))
                             (_K3197331992_
                              (lambda (_kont31988_ _type31989_ _name31990_)
                                (if (table-ref
                                     _rtab31941_
                                     (gxc#identifier-symbol _name31990_)
                                     '#f)
                                    (begin
                                      (gxc#apply-collect-runtime-refs
                                       _kont31988_
                                       _rtab31941_)
                                      (_lp31945_
                                       _rest31968_
                                       (cons _block31969_ _r31948_)))
                                    (_lp31945_ _rest31968_ _r31948_)))))
                        (if (##pair? _block3197031981_)
                            (let ((_hd3197431995_ (##car _block3197031981_))
                                  (_tl3197531997_ (##cdr _block3197031981_)))
                              (let ((_name32000_ _hd3197431995_))
                                (if (##pair? _tl3197531997_)
                                    (let ((_hd3197632002_
                                           (##car _tl3197531997_))
                                          (_tl3197732004_
                                           (##cdr _tl3197531997_)))
                                      (let ((_type32007_ _hd3197632002_))
                                        (if (##pair? _tl3197732004_)
                                            (let* ((_hd3197832009_
                                                    (##car _tl3197732004_))
                                                   (_kont32012_
                                                    _hd3197832009_))
                                              (_K3197331992_
                                               _kont32012_
                                               _type32007_
                                               _name32000_))
                                            (_E3197231985_))))
                                    (_E3197231985_))))
                            (_E3197231985_))))))
              (if (##pair? _rest3194931957_)
                  (let ((_hd3195432017_ (##car _rest3194931957_))
                        (_tl3195532019_ (##cdr _rest3194931957_)))
                    (let* ((_block32022_ _hd3195432017_)
                           (_rest32024_ _tl3195532019_))
                      (_K3195332014_ _rest32024_ _block32022_)))
                  (_else3195131965_))))))))
  (define gxc#optimize-match-fuse-restart-blocks
    (lambda (_blocks31862_ _konts31863_)
      (let* ((_blocks3186431880_ _blocks31862_)
             (_else3186631888_ (lambda () _blocks31862_))
             (_K3186831906_
              (lambda (_rest31891_ _kont31892_ _name31893_)
                (letrec* ((_rtab31895_ (make-hash-table-eq)))
                  (begin
                    (for-each
                     (lambda (_block31897_)
                       (gxc#apply-collect-runtime-refs
                        (caddr _block31897_)
                        _rtab31895_))
                     _konts31863_)
                    (if (fx= (table-ref
                              _rtab31895_
                              (gxc#identifier-symbol _name31893_))
                             '1)
                        (let* ((_rblock31901_
                                (find (lambda (_block31899_)
                                        (gxc#apply-find-var-refs
                                         (caddr _block31899_)
                                         (cons _name31893_ '())))
                                      _konts31863_))
                               (_assert31903_
                                (gxc#optimize-match-assert-restart
                                 _rblock31901_
                                 _name31893_)))
                          (cons (cons _name31893_
                                      (cons 'restart:
                                            (cons _kont31892_
                                                  (cons _assert31903_ '()))))
                                _rest31891_))
                        _blocks31862_))))))
        (if (##pair? _blocks3186431880_)
            (let ((_hd3186931909_ (##car _blocks3186431880_))
                  (_tl3187031911_ (##cdr _blocks3186431880_)))
              (if (##pair? _hd3186931909_)
                  (let ((_hd3187131914_ (##car _hd3186931909_))
                        (_tl3187231916_ (##cdr _hd3186931909_)))
                    (let ((_name31919_ _hd3187131914_))
                      (if (##pair? _tl3187231916_)
                          (let ((_hd3187331921_ (##car _tl3187231916_))
                                (_tl3187431923_ (##cdr _tl3187231916_)))
                            (if (##eq? _hd3187331921_ 'restart:)
                                (if (##pair? _tl3187431923_)
                                    (let ((_hd3187531926_
                                           (##car _tl3187431923_))
                                          (_tl3187631928_
                                           (##cdr _tl3187431923_)))
                                      (let ((_kont31931_ _hd3187531926_))
                                        (if (##pair? _tl3187631928_)
                                            (let ((_tl3187831933_
                                                   (##cdr _tl3187631928_)))
                                              (if (##null? _tl3187831933_)
                                                  (let ((_rest31936_
                                                         _tl3187031911_))
                                                    (_K3186831906_
                                                     _rest31936_
                                                     _kont31931_
                                                     _name31919_))
                                                  (_else3186631888_)))
                                            (_else3186631888_))))
                                    (_else3186631888_))
                                (_else3186631888_)))
                          (_else3186631888_))))
                  (_else3186631888_)))
            (_else3186631888_)))))
  (define gxc#optimize-match-assert-restart
    (lambda (_block31258_ _name31259_)
      (letrec ((_assert-restart31261_
                (lambda (_expr31417_ _assert31418_)
                  (let* ((___stx4176941770_ _expr31417_)
                         (_g3142431521_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4176941770_))))
                    (let ((___kont4177141772_
                           (lambda (_L31837_ _L31838_ _L31839_)
                             (let ((_$e31856_
                                    (_assert-restart31261_
                                     _L31838_
                                     (cons (cons _L31839_ '#t)
                                           _assert31418_))))
                               (if _$e31856_
                                   _$e31856_
                                   (_assert-restart31261_
                                    _L31837_
                                    (cons (cons _L31839_ '#f)
                                          _assert31418_))))))
                          (___kont4177341774_
                           (lambda (_L31785_)
                             (if (gx#free-identifier=? _L31785_ _name31259_)
                                 _assert31418_
                                 '#f)))
                          (___kont4177541776_
                           (lambda (_L31735_)
                             (_assert-restart31261_ _L31735_ _assert31418_)))
                          (___kont4177741778_
                           (lambda (_L31661_
                                    _L31662_
                                    _L31663_
                                    _L31664_
                                    _L31665_)
                             (_assert-restart31261_ _L31663_ _assert31418_)))
                          (___kont4178341784_ (lambda () '#f)))
                      (let ((___match4193841939_
                             (lambda (_e3146931533_
                                      _hd3147031536_
                                      _tl3147131538_
                                      _e3147231541_
                                      _hd3147331544_
                                      _tl3147431546_
                                      _e3147531549_
                                      _hd3147631552_
                                      _tl3147731554_
                                      _e3147831557_
                                      _hd3147931560_
                                      _tl3148031562_
                                      _e3148131565_
                                      _hd3148231568_
                                      _tl3148331570_
                                      _e3148431573_
                                      _hd3148531576_
                                      _tl3148631578_
                                      _e3148731581_
                                      _hd3148831584_
                                      _tl3148931586_
                                      _e3149031589_
                                      _hd3149131592_
                                      _tl3149231594_
                                      ___splice4177941780_
                                      _target3149331597_
                                      _tl3149531599_)
                               (letrec ((_loop3149631602_
                                         (lambda (_hd3149431605_
                                                  _id3150031607_)
                                           (if (gx#stx-pair? _hd3149431605_)
                                               (let ((_e3149731610_
                                                      (gx#stx-e
                                                       _hd3149431605_)))
                                                 (let ((_lp-tl3149931615_
                                                        (##cdr _e3149731610_))
                                                       (_lp-hd3149831613_
                                                        (##car _e3149731610_)))
                                                   (_loop3149631602_
                                                    _lp-tl3149931615_
                                                    (cons _lp-hd3149831613_
                                                          _id3150031607_))))
                                               (let ((_id3150131618_
                                                      (reverse _id3150031607_)))
                                                 (if (gx#stx-pair?
                                                      _tl3149231594_)
                                                     (let ((_e3150231621_
                                                            (gx#stx-e
                                                             _tl3149231594_)))
                                                       (let ((_tl3150431626_
                                                              (##cdr _e3150231621_))
                                                             (_hd3150331624_
                                                              (##car _e3150231621_)))
                                                         (if (gx#stx-null?
                                                              _tl3150431626_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl3148631578_)
                         (if (gx#stx-pair/null? _tl3147731554_)
                             (let ((___splice4178141782_
                                    (gx#syntax-split-splice
                                     _tl3147731554_
                                     '0)))
                               (let ((_tl3150731631_
                                      (##vector-ref ___splice4178141782_ '1))
                                     (_target3150531629_
                                      (##vector-ref ___splice4178141782_ '0)))
                                 (if (gx#stx-null? _tl3150731631_)
                                     (letrec ((_loop3150831634_
                                               (lambda (_hd3150631637_
                                                        _bind3151231639_)
                                                 (if (gx#stx-pair?
                                                      _hd3150631637_)
                                                     (let ((_e3150931642_
                                                            (gx#stx-e
                                                             _hd3150631637_)))
                                                       (let ((_lp-tl3151131647_
                                                              (##cdr _e3150931642_))
                                                             (_lp-hd3151031645_
                                                              (##car _e3150931642_)))
                                                         (_loop3150831634_
                                                          _lp-tl3151131647_
                                                          (cons _lp-hd3151031645_
                                                                _bind3151231639_))))
                                                     (let ((_bind3151331650_
                                                            (reverse _bind3151231639_)))
                                                       (if (gx#stx-pair?
                                                            _tl3147431546_)
                                                           (let ((_e3151431653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3147431546_)))
                     (let ((_tl3151631658_ (##cdr _e3151431653_))
                           (_hd3151531656_ (##car _e3151431653_)))
                       (if (gx#stx-null? _tl3151631658_)
                           (___kont4177741778_
                            _hd3151531656_
                            _bind3151331650_
                            _hd3150331624_
                            _id3150131618_
                            _hd3148231568_)
                           (___kont4178341784_))))
                   (___kont4178341784_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3150831634_
                                        _target3150531629_
                                        '()))
                                     (___kont4178341784_))))
                             (___kont4178341784_))
                         (___kont4178341784_))
                     (___kont4178341784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4178341784_)))))))
                                 (_loop3149631602_ _target3149331597_ '())))))
                        (if (gx#stx-pair? ___stx4176941770_)
                            (let ((_e3142931805_ (gx#stx-e ___stx4176941770_)))
                              (let ((_tl3143131810_ (##cdr _e3142931805_))
                                    (_hd3143031808_ (##car _e3142931805_)))
                                (if (gx#identifier? _hd3143031808_)
                                    (if (gx#stx-eq? '%#if _hd3143031808_)
                                        (if (gx#stx-pair? _tl3143131810_)
                                            (let ((_e3143231813_
                                                   (gx#stx-e _tl3143131810_)))
                                              (let ((_tl3143431818_
                                                     (##cdr _e3143231813_))
                                                    (_hd3143331816_
                                                     (##car _e3143231813_)))
                                                (if (gx#stx-pair?
                                                     _tl3143431818_)
                                                    (let ((_e3143531821_
                                                           (gx#stx-e
                                                            _tl3143431818_)))
                                                      (let ((_tl3143731826_
                                                             (##cdr _e3143531821_))
                                                            (_hd3143631824_
                                                             (##car _e3143531821_)))
                                                        (if (gx#stx-pair?
                                                             _tl3143731826_)
                                                            (let ((_e3143831829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3143731826_)))
                      (let ((_tl3144031834_ (##cdr _e3143831829_))
                            (_hd3143931832_ (##car _e3143831829_)))
                        (if (gx#stx-null? _tl3144031834_)
                            (___kont4177141772_
                             _hd3143931832_
                             _hd3143631824_
                             _hd3143331816_)
                            (___kont4178341784_))))
                    (___kont4178341784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4178341784_))))
                                            (___kont4178341784_))
                                        (if (gx#stx-eq? '%#call _hd3143031808_)
                                            (if (gx#stx-pair? _tl3143131810_)
                                                (let ((_e3144531761_
                                                       (gx#stx-e
                                                        _tl3143131810_)))
                                                  (let ((_tl3144731766_
                                                         (##cdr _e3144531761_))
                                                        (_hd3144631764_
                                                         (##car _e3144531761_)))
                                                    (if (gx#stx-pair?
                                                         _hd3144631764_)
                                                        (let ((_e3144831769_
                                                               (gx#stx-e
                                                                _hd3144631764_)))
                                                          (let ((_tl3145031774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3144831769_))
                        (_hd3144931772_ (##car _e3144831769_)))
                    (if (gx#identifier? _hd3144931772_)
                        (if (gx#stx-eq? '%#ref _hd3144931772_)
                            (if (gx#stx-pair? _tl3145031774_)
                                (let ((_e3145131777_
                                       (gx#stx-e _tl3145031774_)))
                                  (let ((_tl3145331782_ (##cdr _e3145131777_))
                                        (_hd3145231780_ (##car _e3145131777_)))
                                    (if (gx#stx-null? _tl3145331782_)
                                        (___kont4177341774_ _hd3145231780_)
                                        (___kont4178341784_))))
                                (___kont4178341784_))
                            (___kont4178341784_))
                        (___kont4178341784_))))
                (___kont4178341784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4178341784_))
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3143031808_)
                                                (if (gx#stx-pair?
                                                     _tl3143131810_)
                                                    (let ((_e3145831719_
                                                           (gx#stx-e
                                                            _tl3143131810_)))
                                                      (let ((_tl3146031724_
                                                             (##cdr _e3145831719_))
                                                            (_hd3145931722_
                                                             (##car _e3145831719_)))
                                                        (if (gx#stx-pair?
                                                             _tl3146031724_)
                                                            (let ((_e3146131727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3146031724_)))
                      (let ((_tl3146331732_ (##cdr _e3146131727_))
                            (_hd3146231730_ (##car _e3146131727_)))
                        (if (gx#stx-null? _tl3146331732_)
                            (___kont4177541776_ _hd3146231730_)
                            (___kont4178341784_))))
                    (___kont4178341784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4178341784_))
                                                (if (gx#stx-eq?
                                                     '%#letrec-values
                                                     _hd3143031808_)
                                                    (if (gx#stx-pair?
                                                         _tl3143131810_)
                                                        (let ((_e3147231541_
                                                               (gx#stx-e
                                                                _tl3143131810_)))
                                                          (let ((_tl3147431546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3147231541_))
                        (_hd3147331544_ (##car _e3147231541_)))
                    (if (gx#stx-pair? _hd3147331544_)
                        (let ((_e3147531549_ (gx#stx-e _hd3147331544_)))
                          (let ((_tl3147731554_ (##cdr _e3147531549_))
                                (_hd3147631552_ (##car _e3147531549_)))
                            (if (gx#stx-pair? _hd3147631552_)
                                (let ((_e3147831557_
                                       (gx#stx-e _hd3147631552_)))
                                  (let ((_tl3148031562_ (##cdr _e3147831557_))
                                        (_hd3147931560_ (##car _e3147831557_)))
                                    (if (gx#stx-pair? _hd3147931560_)
                                        (let ((_e3148131565_
                                               (gx#stx-e _hd3147931560_)))
                                          (let ((_tl3148331570_
                                                 (##cdr _e3148131565_))
                                                (_hd3148231568_
                                                 (##car _e3148131565_)))
                                            (if (gx#stx-null? _tl3148331570_)
                                                (if (gx#stx-pair?
                                                     _tl3148031562_)
                                                    (let ((_e3148431573_
                                                           (gx#stx-e
                                                            _tl3148031562_)))
                                                      (let ((_tl3148631578_
                                                             (##cdr _e3148431573_))
                                                            (_hd3148531576_
                                                             (##car _e3148431573_)))
                                                        (if (gx#stx-pair?
                                                             _hd3148531576_)
                                                            (let ((_e3148731581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3148531576_)))
                      (let ((_tl3148931586_ (##cdr _e3148731581_))
                            (_hd3148831584_ (##car _e3148731581_)))
                        (if (gx#identifier? _hd3148831584_)
                            (if (gx#stx-eq? '%#lambda _hd3148831584_)
                                (if (gx#stx-pair? _tl3148931586_)
                                    (let ((_e3149031589_
                                           (gx#stx-e _tl3148931586_)))
                                      (let ((_tl3149231594_
                                             (##cdr _e3149031589_))
                                            (_hd3149131592_
                                             (##car _e3149031589_)))
                                        (if (gx#stx-pair/null? _hd3149131592_)
                                            (let ((___splice4177941780_
                                                   (gx#syntax-split-splice
                                                    _hd3149131592_
                                                    '0)))
                                              (let ((_tl3149531599_
                                                     (##vector-ref
                                                      ___splice4177941780_
                                                      '1))
                                                    (_target3149331597_
                                                     (##vector-ref
                                                      ___splice4177941780_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3149531599_)
                                                    (___match4193841939_
                                                     _e3142931805_
                                                     _hd3143031808_
                                                     _tl3143131810_
                                                     _e3147231541_
                                                     _hd3147331544_
                                                     _tl3147431546_
                                                     _e3147531549_
                                                     _hd3147631552_
                                                     _tl3147731554_
                                                     _e3147831557_
                                                     _hd3147931560_
                                                     _tl3148031562_
                                                     _e3148131565_
                                                     _hd3148231568_
                                                     _tl3148331570_
                                                     _e3148431573_
                                                     _hd3148531576_
                                                     _tl3148631578_
                                                     _e3148731581_
                                                     _hd3148831584_
                                                     _tl3148931586_
                                                     _e3149031589_
                                                     _hd3149131592_
                                                     _tl3149231594_
                                                     ___splice4177941780_
                                                     _target3149331597_
                                                     _tl3149531599_)
                                                    (___kont4178341784_))))
                                            (___kont4178341784_))))
                                    (___kont4178341784_))
                                (___kont4178341784_))
                            (___kont4178341784_))))
                    (___kont4178341784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4178341784_))
                                                (___kont4178341784_))))
                                        (___kont4178341784_))))
                                (___kont4178341784_))))
                        (___kont4178341784_))))
                (___kont4178341784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4178341784_)))))
                                    (___kont4178341784_))))
                            (___kont4178341784_))))))))
        (let* ((_block3126231275_ _block31258_)
               (_E3126431279_
                (lambda () (error '"No clause matching" _block3126231275_)))
               (_K3126531392_
                (lambda (_maybe-bind31282_ _assert31283_ _kont31284_)
                  (let* ((_g3128631312_
                          (lambda (_g3128731309_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3128731309_)))
                         (_g3128531389_
                          (lambda (_g3128731315_)
                            (if (gx#stx-pair? _g3128731315_)
                                (let ((_e3129031317_ (gx#stx-e _g3128731315_)))
                                  (let ((_hd3129131320_ (##car _e3129031317_))
                                        (_tl3129231322_ (##cdr _e3129031317_)))
                                    (if (gx#identifier? _hd3129131320_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3129131320_)
                                            (if (gx#stx-pair? _tl3129231322_)
                                                (let ((_e3129331325_
                                                       (gx#stx-e
                                                        _tl3129231322_)))
                                                  (let ((_hd3129431328_
                                                         (##car _e3129331325_))
                                                        (_tl3129531330_
                                                         (##cdr _e3129331325_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3129431328_)
                                                        (let ((_g42711_
                                                               (gx#syntax-split-splice
                                                                _hd3129431328_
                                                                '0)))
                                                          (begin
                                                            (let ((_g42712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g42711_)
                               (##vector-length _g42711_)
                               1)))
                      (if (not (##fx= _g42712_ 2))
                          (error "Context expects 2 values" _g42712_)))
                    (let ((_target3129631333_ (##vector-ref _g42711_ 0))
                          (_tl3129831335_ (##vector-ref _g42711_ 1)))
                      (if (gx#stx-null? _tl3129831335_)
                          (letrec ((_loop3129931338_
                                    (lambda (_hd3129731341_ _id3130331343_)
                                      (if (gx#stx-pair? _hd3129731341_)
                                          (let ((_e3130031346_
                                                 (gx#stx-e _hd3129731341_)))
                                            (let ((_lp-hd3130131349_
                                                   (##car _e3130031346_))
                                                  (_lp-tl3130231351_
                                                   (##cdr _e3130031346_)))
                                              (_loop3129931338_
                                               _lp-tl3130231351_
                                               (cons _lp-hd3130131349_
                                                     _id3130331343_))))
                                          (let ((_id3130431354_
                                                 (reverse _id3130331343_)))
                                            (if (gx#stx-pair? _tl3129531330_)
                                                (let ((_e3130531357_
                                                       (gx#stx-e
                                                        _tl3129531330_)))
                                                  (let ((_hd3130631360_
                                                         (##car _e3130531357_))
                                                        (_tl3130731362_
                                                         (##cdr _e3130531357_)))
                                                    (if (gx#stx-null?
                                                         _tl3130731362_)
                                                        ((lambda (_L31365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L31366_)
                   (_assert-restart31261_ _L31365_ _assert31283_))
                 _hd3130631360_
                 _id3130431354_)
                (_g3128631312_ _g3128731315_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3128631312_
                                                 _g3128731315_)))))))
                            (_loop3129931338_ _target3129631333_ '()))
                          (_g3128631312_ _g3128731315_)))))
                (_g3128631312_ _g3128731315_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3128631312_ _g3128731315_))
                                            (_g3128631312_ _g3128731315_))
                                        (_g3128631312_ _g3128731315_))))
                                (_g3128631312_ _g3128731315_)))))
                    (_g3128531389_ _kont31284_)))))
          (if (##pair? _block3126231275_)
              (let ((_tl3126731395_ (##cdr _block3126231275_)))
                (if (##pair? _tl3126731395_)
                    (let ((_tl3126931398_ (##cdr _tl3126731395_)))
                      (if (##pair? _tl3126931398_)
                          (let ((_hd3127031401_ (##car _tl3126931398_))
                                (_tl3127131403_ (##cdr _tl3126931398_)))
                            (let ((_kont31406_ _hd3127031401_))
                              (if (##pair? _tl3127131403_)
                                  (let ((_hd3127231408_ (##car _tl3127131403_))
                                        (_tl3127331410_
                                         (##cdr _tl3127131403_)))
                                    (let* ((_assert31413_ _hd3127231408_)
                                           (_maybe-bind31415_ _tl3127331410_))
                                      (_K3126531392_
                                       _maybe-bind31415_
                                       _assert31413_
                                       _kont31406_)))
                                  (_E3126431279_))))
                          (_E3126431279_)))
                    (_E3126431279_)))
              (_E3126431279_))))))
  (define gxc#optimize-syntax-case
    (lambda (_stx30889_)
      (let* ((_g3089130921_
              (lambda (_g3089230918_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3089230918_)))
             (_g3089031255_
              (lambda (_g3089230924_)
                (if (gx#stx-pair? _g3089230924_)
                    (let ((_e3089630926_ (gx#stx-e _g3089230924_)))
                      (let ((_hd3089730929_ (##car _e3089630926_))
                            (_tl3089830931_ (##cdr _e3089630926_)))
                        (if (gx#identifier? _hd3089730929_)
                            (if (gx#stx-eq? '%#let-values _hd3089730929_)
                                (if (gx#stx-pair? _tl3089830931_)
                                    (let ((_e3089930934_
                                           (gx#stx-e _tl3089830931_)))
                                      (let ((_hd3090030937_
                                             (##car _e3089930934_))
                                            (_tl3090130939_
                                             (##cdr _e3089930934_)))
                                        (if (gx#stx-pair? _hd3090030937_)
                                            (let ((_e3090230942_
                                                   (gx#stx-e _hd3090030937_)))
                                              (let ((_hd3090330945_
                                                     (##car _e3090230942_))
                                                    (_tl3090430947_
                                                     (##cdr _e3090230942_)))
                                                (if (gx#stx-pair?
                                                     _hd3090330945_)
                                                    (let ((_e3090530950_
                                                           (gx#stx-e
                                                            _hd3090330945_)))
                                                      (let ((_hd3090630953_
                                                             (##car _e3090530950_))
                                                            (_tl3090730955_
                                                             (##cdr _e3090530950_)))
                                                        (if (gx#stx-pair?
                                                             _hd3090630953_)
                                                            (let ((_e3090830958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3090630953_)))
                      (let ((_hd3090930961_ (##car _e3090830958_))
                            (_tl3091030963_ (##cdr _e3090830958_)))
                        (if (gx#stx-null? _tl3091030963_)
                            (if (gx#stx-pair? _tl3090730955_)
                                (let ((_e3091130966_
                                       (gx#stx-e _tl3090730955_)))
                                  (let ((_hd3091230969_ (##car _e3091130966_))
                                        (_tl3091330971_ (##cdr _e3091130966_)))
                                    (if (gx#stx-null? _tl3091330971_)
                                        (if (gx#stx-null? _tl3090430947_)
                                            (if (gx#stx-pair? _tl3090130939_)
                                                (let ((_e3091430974_
                                                       (gx#stx-e
                                                        _tl3090130939_)))
                                                  (let ((_hd3091530977_
                                                         (##car _e3091430974_))
                                                        (_tl3091630979_
                                                         (##cdr _e3091430974_)))
                                                    (if (gx#stx-null?
                                                         _tl3091630979_)
                                                        ((lambda (_L30982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L30983_
                          _L30984_)
                   (let _lp31008_ ((_body31010_ _L30982_) (_clauses31011_ '()))
                     (let* ((___stx4194141942_ _body31010_)
                            (_g3101431061_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4194141942_))))
                       (let ((___kont4194341944_
                              (lambda (_L31227_ _L31228_ _L31229_)
                                (_lp31008_
                                 _L31227_
                                 (cons (cons _L31229_ (gxc#compile-e _L31228_))
                                       _clauses31011_))))
                             (___kont4194541946_
                              (lambda (_L31106_ _L31107_)
                                (let ((_$e31128_ (length _clauses31011_)))
                                  (if (eq? '0 _$e31128_)
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _L30984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L30983_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gxc#compile-e
                                                          _body31010_)
                                                         '())))
                                       _stx30889_)
                                      (if (eq? '1 _$e31128_)
                                          (let* ((_clauses3113031139_
                                                  _clauses31011_)
                                                 (_E3113231143_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _clauses3113031139_)))
                                                 (_K3113331149_
                                                  (lambda (_clause-lambda31146_
                                                           _clause31147_)
                                                    (gxc#xform-wrap-source
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _L30984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _L30983_ '()))
                               '())
                         (cons (cons '%#let-values
                                     (cons (cons (cons (cons _clause31147_ '())
                                                       (cons _clause-lambda31146_
                                                             '()))
                                                 '())
                                           (cons (gxc#compile-e _body31010_)
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx30889_))))
                                            (if (##pair? _clauses3113031139_)
                                                (let ((_hd3113431152_
                                                       (##car _clauses3113031139_))
                                                      (_tl3113531154_
                                                       (##cdr _clauses3113031139_)))
                                                  (if (##pair? _hd3113431152_)
                                                      (let ((_hd3113631157_
                                                             (##car _hd3113431152_))
                                                            (_tl3113731159_
                                                             (##cdr _hd3113431152_)))
                                                        (let* ((_clause31162_
                                                                _hd3113631157_)
                                                               (_clause-lambda31164_
                                                                _tl3113731159_))
                                                          (if (##null? _tl3113531154_)
                                                              (_K3113331149_
                                                               _clause-lambda31164_
                                                               _clause31162_)
                                                              (_E3113231143_))))
                                                      (_E3113231143_)))
                                                (_E3113231143_)))
                                          (gxc#optimize-syntax-case-body
                                           _stx30889_
                                           (gxc#compile-e _L31106_)
                                           (cons _L30984_ _L30983_)
                                           _clauses31011_)))))))
                         (if (gx#stx-pair? ___stx4194141942_)
                             (let ((_e3101931171_
                                    (gx#stx-e ___stx4194141942_)))
                               (let ((_tl3102131176_ (##cdr _e3101931171_))
                                     (_hd3102031174_ (##car _e3101931171_)))
                                 (if (gx#identifier? _hd3102031174_)
                                     (if (gx#stx-eq?
                                          '%#let-values
                                          _hd3102031174_)
                                         (if (gx#stx-pair? _tl3102131176_)
                                             (let ((_e3102231179_
                                                    (gx#stx-e _tl3102131176_)))
                                               (let ((_tl3102431184_
                                                      (##cdr _e3102231179_))
                                                     (_hd3102331182_
                                                      (##car _e3102231179_)))
                                                 (if (gx#stx-pair?
                                                      _hd3102331182_)
                                                     (let ((_e3102531187_
                                                            (gx#stx-e
                                                             _hd3102331182_)))
                                                       (let ((_tl3102731192_
                                                              (##cdr _e3102531187_))
                                                             (_hd3102631190_
                                                              (##car _e3102531187_)))
                                                         (if (gx#stx-pair?
                                                              _hd3102631190_)
                                                             (let ((_e3102831195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3102631190_)))
                       (let ((_tl3103031200_ (##cdr _e3102831195_))
                             (_hd3102931198_ (##car _e3102831195_)))
                         (if (gx#stx-pair? _hd3102931198_)
                             (let ((_e3103131203_ (gx#stx-e _hd3102931198_)))
                               (let ((_tl3103331208_ (##cdr _e3103131203_))
                                     (_hd3103231206_ (##car _e3103131203_)))
                                 (if (gx#stx-null? _tl3103331208_)
                                     (if (gx#stx-pair? _tl3103031200_)
                                         (let ((_e3103431211_
                                                (gx#stx-e _tl3103031200_)))
                                           (let ((_tl3103631216_
                                                  (##cdr _e3103431211_))
                                                 (_hd3103531214_
                                                  (##car _e3103431211_)))
                                             (if (gx#stx-null? _tl3103631216_)
                                                 (if (gx#stx-null?
                                                      _tl3102731192_)
                                                     (if (gx#stx-pair?
                                                          _tl3102431184_)
                                                         (let ((_e3103731219_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3102431184_)))
                   (let ((_tl3103931224_ (##cdr _e3103731219_))
                         (_hd3103831222_ (##car _e3103731219_)))
                     (if (gx#stx-null? _tl3103931224_)
                         (___kont4194341944_
                          _hd3103831222_
                          _hd3103531214_
                          _hd3103231206_)
                         (_g3101431061_))))
                 (_g3101431061_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3101431061_))
                                                 (_g3101431061_))))
                                         (_g3101431061_))
                                     (_g3101431061_))))
                             (_g3101431061_))))
                     (_g3101431061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3101431061_))))
                                             (_g3101431061_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3102031174_)
                                             (if (gx#stx-pair? _tl3102131176_)
                                                 (let ((_e3104531074_
                                                        (gx#stx-e
                                                         _tl3102131176_)))
                                                   (let ((_tl3104731079_
                                                          (##cdr _e3104531074_))
                                                         (_hd3104631077_
                                                          (##car _e3104531074_)))
                                                     (if (gx#stx-pair?
                                                          _hd3104631077_)
                                                         (let ((_e3104831082_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3104631077_)))
                   (let ((_tl3105031087_ (##cdr _e3104831082_))
                         (_hd3104931085_ (##car _e3104831082_)))
                     (if (gx#identifier? _hd3104931085_)
                         (if (gx#stx-eq? '%#ref _hd3104931085_)
                             (if (gx#stx-pair? _tl3105031087_)
                                 (let ((_e3105131090_
                                        (gx#stx-e _tl3105031087_)))
                                   (let ((_tl3105331095_ (##cdr _e3105131090_))
                                         (_hd3105231093_
                                          (##car _e3105131090_)))
                                     (if (gx#stx-null? _tl3105331095_)
                                         (if (gx#stx-pair? _tl3104731079_)
                                             (let ((_e3105431098_
                                                    (gx#stx-e _tl3104731079_)))
                                               (let ((_tl3105631103_
                                                      (##cdr _e3105431098_))
                                                     (_hd3105531101_
                                                      (##car _e3105431098_)))
                                                 (if (gx#stx-null?
                                                      _tl3105631103_)
                                                     (___kont4194541946_
                                                      _hd3105531101_
                                                      _hd3105231093_)
                                                     (_g3101431061_))))
                                             (_g3101431061_))
                                         (_g3101431061_))))
                                 (_g3101431061_))
                             (_g3101431061_))
                         (_g3101431061_))))
                 (_g3101431061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3101431061_))
                                             (_g3101431061_)))
                                     (_g3101431061_))))
                             (_g3101431061_))))))
                 _hd3091530977_
                 _hd3091230969_
                 _hd3090930961_)
                (_g3089130921_ _g3089230924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3089130921_ _g3089230924_))
                                            (_g3089130921_ _g3089230924_))
                                        (_g3089130921_ _g3089230924_))))
                                (_g3089130921_ _g3089230924_))
                            (_g3089130921_ _g3089230924_))))
                    (_g3089130921_ _g3089230924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3089130921_
                                                     _g3089230924_))))
                                            (_g3089130921_ _g3089230924_))))
                                    (_g3089130921_ _g3089230924_))
                                (_g3089130921_ _g3089230924_))
                            (_g3089130921_ _g3089230924_))))
                    (_g3089130921_ _g3089230924_)))))
        (_g3089031255_ _stx30889_))))
  (define gxc#optimize-syntax-case-body
    (lambda (_stx30817_ _expr30818_ _negation30819_ _clauses30820_)
      (letrec ((_normalize30822_
                (lambda (_clauses30849_)
                  (let* ((_clauses3085030859_ _clauses30849_)
                         (_E3085230863_
                          (lambda ()
                            (error '"No clause matching" _clauses3085030859_)))
                         (_K3085330870_
                          (lambda (_rest30866_ _kont30867_ _id30868_)
                            (cons (cons '#f _kont30867_) _rest30866_))))
                    (if (##pair? _clauses3085030859_)
                        (let ((_hd3085430873_ (##car _clauses3085030859_))
                              (_tl3085530875_ (##cdr _clauses3085030859_)))
                          (if (##pair? _hd3085430873_)
                              (let ((_hd3085630878_ (##car _hd3085430873_))
                                    (_tl3085730880_ (##cdr _hd3085430873_)))
                                (let* ((_id30883_ _hd3085630878_)
                                       (_kont30885_ _tl3085730880_)
                                       (_rest30887_ _tl3085530875_))
                                  (_K3085330870_
                                   _rest30887_
                                   _kont30885_
                                   _id30883_)))
                              (_E3085230863_)))
                        (_E3085230863_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_id30825_ (make-symbol (gensym '__stx)))
                  (_id30827_ (gx#core-quote-syntax__0 _id30825_))
                  (_g42713_ (gx#core-bind-runtime!__0 _id30827_))
                  (_g42714_
                   (gxc#optimize-syntax-case-clauses
                    _clauses30820_
                    (car _negation30819_))))
             (begin
               (let ((_g42715_
                      (if (##values? _g42714_) (##vector-length _g42714_) 1)))
                 (if (not (##fx= _g42715_ 2))
                     (error "Context expects 2 values" _g42715_)))
               (let ((_clauses30830_ (##vector-ref _g42714_ 0))
                     (_konts30831_ (##vector-ref _g42714_ 1)))
                 (let* ((_clauses30840_
                         (map (lambda (_g3083230835_ _g3083330837_)
                                (gxc#optimize-syntax-case-closure
                                 _g3083230835_
                                 _g3083330837_
                                 _id30827_))
                              _clauses30830_
                              (foldr1 cons
                                      (cons (car _negation30819_) '())
                                      (map car (cdr _clauses30830_)))))
                        (_clauses30842_ (_normalize30822_ _clauses30840_))
                        (_negation30844_
                         (gxc#optimize-syntax-case-closure
                          _negation30819_
                          '#f
                          _id30827_))
                        (_body30846_
                         (gxc#optimize-match-body
                          _stx30817_
                          _negation30844_
                          _clauses30842_
                          _konts30831_)))
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _id30827_ '())
                                            (cons _expr30818_ '()))
                                      '())
                                (cons _body30846_ '())))
                    _stx30817_))))))
         gx#current-expander-context
         (let ((__obj42687 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj42687) __obj42687))))))
  (define gxc#optimize-syntax-case-clauses
    (lambda (_clauses29575_ _negation-id29576_)
      (letrec ((_xform-e29578_
                (lambda (_expr29962_
                         _kont-id29963_
                         _kont-box29964_
                         _negation-id29965_)
                  (let* ((___stx4214342144_ _expr29962_)
                         (_g2997130104_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4214342144_))))
                    (let ((___kont4214542146_
                           (lambda (_L30793_ _L30794_ _L30795_)
                             (let ((_K30812_
                                    (_xform-e29578_
                                     _L30794_
                                     _kont-id29963_
                                     _kont-box29964_
                                     _negation-id29965_)))
                               (cons '%#if
                                     (cons _L30795_
                                           (cons _K30812_
                                                 (cons _L30793_ '())))))))
                          (___kont4214742148_
                           (lambda (_L30709_
                                    _L30710_
                                    _L30711_
                                    _L30712_
                                    _L30713_)
                             (let* ((_id30748_
                                     (make-symbol (gensym '__splice)))
                                    (_id30750_
                                     (gx#core-quote-syntax__0 _id30748_))
                                    (_g42716_
                                     (gx#core-bind-runtime!__0 _id30750_))
                                    (_body30753_
                                     (_xform-e29578_
                                      _L30709_
                                      _kont-id29963_
                                      _kont-box29964_
                                      _negation-id29965_)))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _id30750_ '())
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#call)
                           (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                       (cons _L30711_ '()))
                                 _L30710_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons '%#let-values
                                                       (cons (cons (cons (cons _L30713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons '%#call
                                             (cons '(%#ref ##vector-ref)
                                                   (cons (cons '%#ref
                                                               (cons _id30750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '(%#quote 0) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (cons _L30712_ '())
                                       (cons (cons '%#call
                                                   (cons '(%#ref ##vector-ref)
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _id30750_ '()))
                       (cons '(%#quote 1) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))
                     (cons _body30753_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                          (___kont4214942150_
                           (lambda (_L30591_ _L30592_)
                             (let ((_body30606_
                                    (_xform-e29578_
                                     _L30591_
                                     _kont-id29963_
                                     _kont-box29964_
                                     _negation-id29965_)))
                               (cons '%#let-values
                                     (cons _L30592_ (cons _body30606_ '()))))))
                          (___kont4215142152_
                           (lambda (_L30535_ _L30536_ _L30537_)
                             (let ((_lambda-expr30560_
                                    (_xform-loop-e29579_
                                     _L30536_
                                     _kont-id29963_
                                     _kont-box29964_
                                     _negation-id29965_)))
                               (cons '%#letrec-values
                                     (cons (cons (cons (cons _L30537_ '())
                                                       (cons _lambda-expr30560_
                                                             '()))
                                                 '())
                                           (cons _L30535_ '()))))))
                          (___kont4215342154_
                           (lambda (_L30197_ _L30198_ _L30199_)
                             (let* ((___stx4204542046_ _L30198_)
                                    (_g3022830271_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4204542046_))))
                               (let ((___kont4204742048_
                                      (lambda (_L30387_
                                               _L30388_
                                               _L30389_
                                               _L30390_)
                                        (let ((_kont30431_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3042330426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3042430428_)
                               (cons _g3042330426_ _g3042430428_))
                             '()
                             _L30199_))
                   (cons _L30389_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box29964_
                                             _kont30431_)
                                            (let* ((_kont-args30442_
                                                    (map (lambda (_id30433_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id30433_ '())))
                 (begin
                   '#!void
                   (foldr1 (lambda (_g3043430437_ _g3043530439_)
                             (cons _g3043430437_ _g3043530439_))
                           '()
                           _L30199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_body30444_
                                                    (cons '%#if
                                                          (cons _L30390_
                                                                (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#ref
                                                (cons _kont-id29963_ '()))
                                          _kont-args30442_))
                              (cons (cons (gx#datum->syntax__0 '#f '%#call)
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L30388_ '()))
                                                (cons (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)
                                                            (cons _L30387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g3044630449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3044730451_)
                             (cons _g3044630449_ _g3044730451_))
                           '()
                           _L30199_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _body30444_
                                                  (cons '%#let-values
                                                        (cons (map (lambda (_id30454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _arg30455_)
                             (cons (cons _id30454_ '()) (cons _arg30455_ '())))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3045630459_ _g3045730461_)
                                       (cons _g3045630459_ _g3045730461_))
                                     '()
                                     _L30199_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3046330466_ _g3046430468_)
                                       (cons _g3046330466_ _g3046430468_))
                                     '()
                                     _L30197_)))
                      (cons _body30444_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont4204942050_
                                      (lambda ()
                                        (let ((_kont30285_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3027730280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3027830282_)
                               (cons _g3027730280_ _g3027830282_))
                             '()
                             _L30199_))
                   (cons _L30198_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box29964_
                                             _kont30285_)
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kont-id29963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3028630289_ _g3028730291_)
                            (cons _g3028630289_ _g3028730291_))
                          '()
                          _L30197_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((___match4214042141_
                                        (lambda (_e3023430299_
                                                 _hd3023530302_
                                                 _tl3023630304_
                                                 _e3023730307_
                                                 _hd3023830310_
                                                 _tl3023930312_
                                                 _e3024030315_
                                                 _hd3024130318_
                                                 _tl3024230320_
                                                 _e3024330323_
                                                 _hd3024430326_
                                                 _tl3024530328_
                                                 _e3024630331_
                                                 _hd3024730334_
                                                 _tl3024830336_
                                                 _e3024930339_
                                                 _hd3025030342_
                                                 _tl3025130344_
                                                 _e3025230347_
                                                 _hd3025330350_
                                                 _tl3025430352_
                                                 _e3025530355_
                                                 _hd3025630358_
                                                 _tl3025730360_
                                                 _e3025830363_
                                                 _hd3025930366_
                                                 _tl3026030368_
                                                 _e3026130371_
                                                 _hd3026230374_
                                                 _tl3026330376_
                                                 _e3026430379_
                                                 _hd3026530382_
                                                 _tl3026630384_)
                                          (let ((_L30387_ _hd3026530382_)
                                                (_L30388_ _hd3025630358_)
                                                (_L30389_ _hd3024130318_)
                                                (_L30390_ _hd3023830310_))
                                            (if (gx#free-identifier=?
                                                 _L30388_
                                                 _negation-id29965_)
                                                (___kont4204742048_
                                                 _L30387_
                                                 _L30388_
                                                 _L30389_
                                                 _L30390_)
                                                (___kont4204942050_))))))
                                   (if (gx#stx-pair? ___stx4204542046_)
                                       (let ((_e3023430299_
                                              (gx#stx-e ___stx4204542046_)))
                                         (let ((_tl3023630304_
                                                (##cdr _e3023430299_))
                                               (_hd3023530302_
                                                (##car _e3023430299_)))
                                           (if (gx#identifier? _hd3023530302_)
                                               (if (gx#stx-eq?
                                                    '%#if
                                                    _hd3023530302_)
                                                   (if (gx#stx-pair?
                                                        _tl3023630304_)
                                                       (let ((_e3023730307_
                                                              (gx#stx-e
                                                               _tl3023630304_)))
                                                         (let ((_tl3023930312_
                                                                (##cdr _e3023730307_))
                                                               (_hd3023830310_
                                                                (##car _e3023730307_)))
                                                           (if (gx#stx-pair?
                                                                _tl3023930312_)
                                                               (let ((_e3024030315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3023930312_)))
                         (let ((_tl3024230320_ (##cdr _e3024030315_))
                               (_hd3024130318_ (##car _e3024030315_)))
                           (if (gx#stx-pair? _tl3024230320_)
                               (let ((_e3024330323_ (gx#stx-e _tl3024230320_)))
                                 (let ((_tl3024530328_ (##cdr _e3024330323_))
                                       (_hd3024430326_ (##car _e3024330323_)))
                                   (if (gx#stx-pair? _hd3024430326_)
                                       (let ((_e3024630331_
                                              (gx#stx-e _hd3024430326_)))
                                         (let ((_tl3024830336_
                                                (##cdr _e3024630331_))
                                               (_hd3024730334_
                                                (##car _e3024630331_)))
                                           (if (gx#identifier? _hd3024730334_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd3024730334_)
                                                   (if (gx#stx-pair?
                                                        _tl3024830336_)
                                                       (let ((_e3024930339_
                                                              (gx#stx-e
                                                               _tl3024830336_)))
                                                         (let ((_tl3025130344_
                                                                (##cdr _e3024930339_))
                                                               (_hd3025030342_
                                                                (##car _e3024930339_)))
                                                           (if (gx#stx-pair?
                                                                _hd3025030342_)
                                                               (let ((_e3025230347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd3025030342_)))
                         (let ((_tl3025430352_ (##cdr _e3025230347_))
                               (_hd3025330350_ (##car _e3025230347_)))
                           (if (gx#identifier? _hd3025330350_)
                               (if (gx#stx-eq? '%#ref _hd3025330350_)
                                   (if (gx#stx-pair? _tl3025430352_)
                                       (let ((_e3025530355_
                                              (gx#stx-e _tl3025430352_)))
                                         (let ((_tl3025730360_
                                                (##cdr _e3025530355_))
                                               (_hd3025630358_
                                                (##car _e3025530355_)))
                                           (if (gx#stx-null? _tl3025730360_)
                                               (if (gx#stx-pair?
                                                    _tl3025130344_)
                                                   (let ((_e3025830363_
                                                          (gx#stx-e
                                                           _tl3025130344_)))
                                                     (let ((_tl3026030368_
                                                            (##cdr _e3025830363_))
                                                           (_hd3025930366_
                                                            (##car _e3025830363_)))
                                                       (if (gx#stx-pair?
                                                            _hd3025930366_)
                                                           (let ((_e3026130371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3025930366_)))
                     (let ((_tl3026330376_ (##cdr _e3026130371_))
                           (_hd3026230374_ (##car _e3026130371_)))
                       (if (gx#identifier? _hd3026230374_)
                           (if (gx#stx-eq? '%#ref _hd3026230374_)
                               (if (gx#stx-pair? _tl3026330376_)
                                   (let ((_e3026430379_
                                          (gx#stx-e _tl3026330376_)))
                                     (let ((_tl3026630384_
                                            (##cdr _e3026430379_))
                                           (_hd3026530382_
                                            (##car _e3026430379_)))
                                       (if (gx#stx-null? _tl3026630384_)
                                           (if (gx#stx-null? _tl3026030368_)
                                               (if (gx#stx-null?
                                                    _tl3024530328_)
                                                   (___match4214042141_
                                                    _e3023430299_
                                                    _hd3023530302_
                                                    _tl3023630304_
                                                    _e3023730307_
                                                    _hd3023830310_
                                                    _tl3023930312_
                                                    _e3024030315_
                                                    _hd3024130318_
                                                    _tl3024230320_
                                                    _e3024330323_
                                                    _hd3024430326_
                                                    _tl3024530328_
                                                    _e3024630331_
                                                    _hd3024730334_
                                                    _tl3024830336_
                                                    _e3024930339_
                                                    _hd3025030342_
                                                    _tl3025130344_
                                                    _e3025230347_
                                                    _hd3025330350_
                                                    _tl3025430352_
                                                    _e3025530355_
                                                    _hd3025630358_
                                                    _tl3025730360_
                                                    _e3025830363_
                                                    _hd3025930366_
                                                    _tl3026030368_
                                                    _e3026130371_
                                                    _hd3026230374_
                                                    _tl3026330376_
                                                    _e3026430379_
                                                    _hd3026530382_
                                                    _tl3026630384_)
                                                   (___kont4204942050_))
                                               (___kont4204942050_))
                                           (___kont4204942050_))))
                                   (___kont4204942050_))
                               (___kont4204942050_))
                           (___kont4204942050_))))
                   (___kont4204942050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4204942050_))
                                               (___kont4204942050_))))
                                       (___kont4204942050_))
                                   (___kont4204942050_))
                               (___kont4204942050_))))
                       (___kont4204942050_))))
               (___kont4204942050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4204942050_))
                                               (___kont4204942050_))))
                                       (___kont4204942050_))))
                               (___kont4204942050_))))
                       (___kont4204942050_))))
               (___kont4204942050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4204942050_))
                                               (___kont4204942050_))))
                                       (___kont4204942050_))))))))
                      (let* ((___match4240042401_
                              (lambda (_e3006730109_
                                       _hd3006830112_
                                       _tl3006930114_
                                       _e3007030117_
                                       _hd3007130120_
                                       _tl3007230122_
                                       _e3007330125_
                                       _hd3007430128_
                                       _tl3007530130_
                                       _e3007630133_
                                       _hd3007730136_
                                       _tl3007830138_
                                       ___splice4215542156_
                                       _target3007930141_
                                       _tl3008130143_)
                                (letrec ((_loop3008230146_
                                          (lambda (_hd3008030149_
                                                   _id3008630151_)
                                            (if (gx#stx-pair? _hd3008030149_)
                                                (let ((_e3008330154_
                                                       (gx#stx-e
                                                        _hd3008030149_)))
                                                  (let ((_lp-tl3008530159_
                                                         (##cdr _e3008330154_))
                                                        (_lp-hd3008430157_
                                                         (##car _e3008330154_)))
                                                    (_loop3008230146_
                                                     _lp-tl3008530159_
                                                     (cons _lp-hd3008430157_
                                                           _id3008630151_))))
                                                (let ((_id3008730162_
                                                       (reverse _id3008630151_)))
                                                  (if (gx#stx-pair?
                                                       _tl3007830138_)
                                                      (let ((_e3008830165_
                                                             (gx#stx-e
                                                              _tl3007830138_)))
                                                        (let ((_tl3009030170_
                                                               (##cdr _e3008830165_))
                                                              (_hd3008930168_
                                                               (##car _e3008830165_)))
                                                          (if (gx#stx-null?
                                                               _tl3009030170_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3007230122_)
                          (let ((___splice4215742158_
                                 (gx#syntax-split-splice _tl3007230122_ '0)))
                            (let ((_tl3009330175_
                                   (##vector-ref ___splice4215742158_ '1))
                                  (_target3009130173_
                                   (##vector-ref ___splice4215742158_ '0)))
                              (if (gx#stx-null? _tl3009330175_)
                                  (letrec ((_loop3009430178_
                                            (lambda (_hd3009230181_
                                                     _arg3009830183_)
                                              (if (gx#stx-pair? _hd3009230181_)
                                                  (let ((_e3009530186_
                                                         (gx#stx-e
                                                          _hd3009230181_)))
                                                    (let ((_lp-tl3009730191_
                                                           (##cdr _e3009530186_))
                                                          (_lp-hd3009630189_
                                                           (##car _e3009530186_)))
                                                      (_loop3009430178_
                                                       _lp-tl3009730191_
                                                       (cons _lp-hd3009630189_
                                                             _arg3009830183_))))
                                                  (let ((_arg3009930194_
                                                         (reverse _arg3009830183_)))
                                                    (___kont4215342154_
                                                     _arg3009930194_
                                                     _hd3008930168_
                                                     _id3008730162_))))))
                                    (_loop3009430178_ _target3009130173_ '()))
                                  (_g2997130104_))))
                          (_g2997130104_))
                      (_g2997130104_))))
              (_g2997130104_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop3008230146_ _target3007930141_ '()))))
                             (___match4228242283_
                              (lambda (_e2999330613_
                                       _hd2999430616_
                                       _tl2999530618_
                                       _e2999630621_
                                       _hd2999730624_
                                       _tl2999830626_
                                       _e2999930629_
                                       _hd3000030632_
                                       _tl3000130634_
                                       _e3000230637_
                                       _hd3000330640_
                                       _tl3000430642_
                                       _e3000530645_
                                       _hd3000630648_
                                       _tl3000730650_
                                       _e3000830653_
                                       _hd3000930656_
                                       _tl3001030658_
                                       _e3001130661_
                                       _hd3001230664_
                                       _tl3001330666_
                                       _e3001430669_
                                       _hd3001530672_
                                       _tl3001630674_
                                       _e3001730677_
                                       _hd3001830680_
                                       _tl3001930682_
                                       _e3002030685_
                                       _hd3002130688_
                                       _tl3002230690_
                                       _e3002330693_
                                       _hd3002430696_
                                       _tl3002530698_
                                       _e3002630701_
                                       _hd3002730704_
                                       _tl3002830706_)
                                (let ((_L30709_ _hd3002730704_)
                                      (_L30710_ _tl3001930682_)
                                      (_L30711_ _hd3002430696_)
                                      (_L30712_ _hd3000930656_)
                                      (_L30713_ _hd3000630648_))
                                  (if (gxc#runtime-identifier=?
                                       _L30711_
                                       'gx#syntax-split-splice)
                                      (___kont4214742148_
                                       _L30709_
                                       _L30710_
                                       _L30711_
                                       _L30712_
                                       _L30713_)
                                      (___kont4214942150_
                                       _hd3002730704_
                                       _hd2999730624_))))))
                        (if (gx#stx-pair? ___stx4214342144_)
                            (let ((_e2997630761_ (gx#stx-e ___stx4214342144_)))
                              (let ((_tl2997830766_ (##cdr _e2997630761_))
                                    (_hd2997730764_ (##car _e2997630761_)))
                                (if (gx#identifier? _hd2997730764_)
                                    (if (gx#stx-eq? '%#if _hd2997730764_)
                                        (if (gx#stx-pair? _tl2997830766_)
                                            (let ((_e2997930769_
                                                   (gx#stx-e _tl2997830766_)))
                                              (let ((_tl2998130774_
                                                     (##cdr _e2997930769_))
                                                    (_hd2998030772_
                                                     (##car _e2997930769_)))
                                                (if (gx#stx-pair?
                                                     _tl2998130774_)
                                                    (let ((_e2998230777_
                                                           (gx#stx-e
                                                            _tl2998130774_)))
                                                      (let ((_tl2998430782_
                                                             (##cdr _e2998230777_))
                                                            (_hd2998330780_
                                                             (##car _e2998230777_)))
                                                        (if (gx#stx-pair?
                                                             _tl2998430782_)
                                                            (let ((_e2998530785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2998430782_)))
                      (let ((_tl2998730790_ (##cdr _e2998530785_))
                            (_hd2998630788_ (##car _e2998530785_)))
                        (if (gx#stx-null? _tl2998730790_)
                            (___kont4214542146_
                             _hd2998630788_
                             _hd2998330780_
                             _hd2998030772_)
                            (_g2997130104_))))
                    (_g2997130104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2997130104_))))
                                            (_g2997130104_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd2997730764_)
                                            (if (gx#stx-pair? _tl2997830766_)
                                                (let ((_e2999630621_
                                                       (gx#stx-e
                                                        _tl2997830766_)))
                                                  (let ((_tl2999830626_
                                                         (##cdr _e2999630621_))
                                                        (_hd2999730624_
                                                         (##car _e2999630621_)))
                                                    (if (gx#stx-pair?
                                                         _hd2999730624_)
                                                        (let ((_e2999930629_
                                                               (gx#stx-e
                                                                _hd2999730624_)))
                                                          (let ((_tl3000130634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2999930629_))
                        (_hd3000030632_ (##car _e2999930629_)))
                    (if (gx#stx-pair? _hd3000030632_)
                        (let ((_e3000230637_ (gx#stx-e _hd3000030632_)))
                          (let ((_tl3000430642_ (##cdr _e3000230637_))
                                (_hd3000330640_ (##car _e3000230637_)))
                            (if (gx#stx-pair? _hd3000330640_)
                                (let ((_e3000530645_
                                       (gx#stx-e _hd3000330640_)))
                                  (let ((_tl3000730650_ (##cdr _e3000530645_))
                                        (_hd3000630648_ (##car _e3000530645_)))
                                    (if (gx#stx-pair? _tl3000730650_)
                                        (let ((_e3000830653_
                                               (gx#stx-e _tl3000730650_)))
                                          (let ((_tl3001030658_
                                                 (##cdr _e3000830653_))
                                                (_hd3000930656_
                                                 (##car _e3000830653_)))
                                            (if (gx#stx-null? _tl3001030658_)
                                                (if (gx#stx-pair?
                                                     _tl3000430642_)
                                                    (let ((_e3001130661_
                                                           (gx#stx-e
                                                            _tl3000430642_)))
                                                      (let ((_tl3001330666_
                                                             (##cdr _e3001130661_))
                                                            (_hd3001230664_
                                                             (##car _e3001130661_)))
                                                        (if (gx#stx-pair?
                                                             _hd3001230664_)
                                                            (let ((_e3001430669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3001230664_)))
                      (let ((_tl3001630674_ (##cdr _e3001430669_))
                            (_hd3001530672_ (##car _e3001430669_)))
                        (if (gx#identifier? _hd3001530672_)
                            (if (gx#stx-eq? '%#call _hd3001530672_)
                                (if (gx#stx-pair? _tl3001630674_)
                                    (let ((_e3001730677_
                                           (gx#stx-e _tl3001630674_)))
                                      (let ((_tl3001930682_
                                             (##cdr _e3001730677_))
                                            (_hd3001830680_
                                             (##car _e3001730677_)))
                                        (if (gx#stx-pair? _hd3001830680_)
                                            (let ((_e3002030685_
                                                   (gx#stx-e _hd3001830680_)))
                                              (let ((_tl3002230690_
                                                     (##cdr _e3002030685_))
                                                    (_hd3002130688_
                                                     (##car _e3002030685_)))
                                                (if (gx#identifier?
                                                     _hd3002130688_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3002130688_)
                                                        (if (gx#stx-pair?
                                                             _tl3002230690_)
                                                            (let ((_e3002330693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3002230690_)))
                      (let ((_tl3002530698_ (##cdr _e3002330693_))
                            (_hd3002430696_ (##car _e3002330693_)))
                        (if (gx#stx-null? _tl3002530698_)
                            (if (gx#stx-null? _tl3001330666_)
                                (if (gx#stx-null? _tl3000130634_)
                                    (if (gx#stx-pair? _tl2999830626_)
                                        (let ((_e3002630701_
                                               (gx#stx-e _tl2999830626_)))
                                          (let ((_tl3002830706_
                                                 (##cdr _e3002630701_))
                                                (_hd3002730704_
                                                 (##car _e3002630701_)))
                                            (if (gx#stx-null? _tl3002830706_)
                                                (___match4228242283_
                                                 _e2997630761_
                                                 _hd2997730764_
                                                 _tl2997830766_
                                                 _e2999630621_
                                                 _hd2999730624_
                                                 _tl2999830626_
                                                 _e2999930629_
                                                 _hd3000030632_
                                                 _tl3000130634_
                                                 _e3000230637_
                                                 _hd3000330640_
                                                 _tl3000430642_
                                                 _e3000530645_
                                                 _hd3000630648_
                                                 _tl3000730650_
                                                 _e3000830653_
                                                 _hd3000930656_
                                                 _tl3001030658_
                                                 _e3001130661_
                                                 _hd3001230664_
                                                 _tl3001330666_
                                                 _e3001430669_
                                                 _hd3001530672_
                                                 _tl3001630674_
                                                 _e3001730677_
                                                 _hd3001830680_
                                                 _tl3001930682_
                                                 _e3002030685_
                                                 _hd3002130688_
                                                 _tl3002230690_
                                                 _e3002330693_
                                                 _hd3002430696_
                                                 _tl3002530698_
                                                 _e3002630701_
                                                 _hd3002730704_
                                                 _tl3002830706_)
                                                (_g2997130104_))))
                                        (_g2997130104_))
                                    (if (gx#stx-pair? _tl2999830626_)
                                        (let ((_e3003730583_
                                               (gx#stx-e _tl2999830626_)))
                                          (let ((_tl3003930588_
                                                 (##cdr _e3003730583_))
                                                (_hd3003830586_
                                                 (##car _e3003730583_)))
                                            (if (gx#stx-null? _tl3003930588_)
                                                (___kont4214942150_
                                                 _hd3003830586_
                                                 _hd2999730624_)
                                                (_g2997130104_))))
                                        (_g2997130104_)))
                                (if (gx#stx-pair? _tl2999830626_)
                                    (let ((_e3003730583_
                                           (gx#stx-e _tl2999830626_)))
                                      (let ((_tl3003930588_
                                             (##cdr _e3003730583_))
                                            (_hd3003830586_
                                             (##car _e3003730583_)))
                                        (if (gx#stx-null? _tl3003930588_)
                                            (___kont4214942150_
                                             _hd3003830586_
                                             _hd2999730624_)
                                            (_g2997130104_))))
                                    (_g2997130104_)))
                            (if (gx#stx-pair? _tl2999830626_)
                                (let ((_e3003730583_
                                       (gx#stx-e _tl2999830626_)))
                                  (let ((_tl3003930588_ (##cdr _e3003730583_))
                                        (_hd3003830586_ (##car _e3003730583_)))
                                    (if (gx#stx-null? _tl3003930588_)
                                        (___kont4214942150_
                                         _hd3003830586_
                                         _hd2999730624_)
                                        (_g2997130104_))))
                                (_g2997130104_)))))
                    (if (gx#stx-pair? _tl2999830626_)
                        (let ((_e3003730583_ (gx#stx-e _tl2999830626_)))
                          (let ((_tl3003930588_ (##cdr _e3003730583_))
                                (_hd3003830586_ (##car _e3003730583_)))
                            (if (gx#stx-null? _tl3003930588_)
                                (___kont4214942150_
                                 _hd3003830586_
                                 _hd2999730624_)
                                (_g2997130104_))))
                        (_g2997130104_)))
                (if (gx#stx-pair? _tl2999830626_)
                    (let ((_e3003730583_ (gx#stx-e _tl2999830626_)))
                      (let ((_tl3003930588_ (##cdr _e3003730583_))
                            (_hd3003830586_ (##car _e3003730583_)))
                        (if (gx#stx-null? _tl3003930588_)
                            (___kont4214942150_ _hd3003830586_ _hd2999730624_)
                            (_g2997130104_))))
                    (_g2997130104_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl2999830626_)
                                                        (let ((_e3003730583_
                                                               (gx#stx-e
                                                                _tl2999830626_)))
                                                          (let ((_tl3003930588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3003730583_))
                        (_hd3003830586_ (##car _e3003730583_)))
                    (if (gx#stx-null? _tl3003930588_)
                        (___kont4214942150_ _hd3003830586_ _hd2999730624_)
                        (_g2997130104_))))
                (_g2997130104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2999830626_)
                                                (let ((_e3003730583_
                                                       (gx#stx-e
                                                        _tl2999830626_)))
                                                  (let ((_tl3003930588_
                                                         (##cdr _e3003730583_))
                                                        (_hd3003830586_
                                                         (##car _e3003730583_)))
                                                    (if (gx#stx-null?
                                                         _tl3003930588_)
                                                        (___kont4214942150_
                                                         _hd3003830586_
                                                         _hd2999730624_)
                                                        (_g2997130104_))))
                                                (_g2997130104_)))))
                                    (if (gx#stx-pair? _tl2999830626_)
                                        (let ((_e3003730583_
                                               (gx#stx-e _tl2999830626_)))
                                          (let ((_tl3003930588_
                                                 (##cdr _e3003730583_))
                                                (_hd3003830586_
                                                 (##car _e3003730583_)))
                                            (if (gx#stx-null? _tl3003930588_)
                                                (___kont4214942150_
                                                 _hd3003830586_
                                                 _hd2999730624_)
                                                (_g2997130104_))))
                                        (_g2997130104_)))
                                (if (gx#stx-pair? _tl2999830626_)
                                    (let ((_e3003730583_
                                           (gx#stx-e _tl2999830626_)))
                                      (let ((_tl3003930588_
                                             (##cdr _e3003730583_))
                                            (_hd3003830586_
                                             (##car _e3003730583_)))
                                        (if (gx#stx-null? _tl3003930588_)
                                            (___kont4214942150_
                                             _hd3003830586_
                                             _hd2999730624_)
                                            (_g2997130104_))))
                                    (_g2997130104_)))
                            (if (gx#stx-pair? _tl2999830626_)
                                (let ((_e3003730583_
                                       (gx#stx-e _tl2999830626_)))
                                  (let ((_tl3003930588_ (##cdr _e3003730583_))
                                        (_hd3003830586_ (##car _e3003730583_)))
                                    (if (gx#stx-null? _tl3003930588_)
                                        (___kont4214942150_
                                         _hd3003830586_
                                         _hd2999730624_)
                                        (_g2997130104_))))
                                (_g2997130104_)))))
                    (if (gx#stx-pair? _tl2999830626_)
                        (let ((_e3003730583_ (gx#stx-e _tl2999830626_)))
                          (let ((_tl3003930588_ (##cdr _e3003730583_))
                                (_hd3003830586_ (##car _e3003730583_)))
                            (if (gx#stx-null? _tl3003930588_)
                                (___kont4214942150_
                                 _hd3003830586_
                                 _hd2999730624_)
                                (_g2997130104_))))
                        (_g2997130104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl2999830626_)
                                                        (let ((_e3003730583_
                                                               (gx#stx-e
                                                                _tl2999830626_)))
                                                          (let ((_tl3003930588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3003730583_))
                        (_hd3003830586_ (##car _e3003730583_)))
                    (if (gx#stx-null? _tl3003930588_)
                        (___kont4214942150_ _hd3003830586_ _hd2999730624_)
                        (_g2997130104_))))
                (_g2997130104_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _tl2999830626_)
                                                    (let ((_e3003730583_
                                                           (gx#stx-e
                                                            _tl2999830626_)))
                                                      (let ((_tl3003930588_
                                                             (##cdr _e3003730583_))
                                                            (_hd3003830586_
                                                             (##car _e3003730583_)))
                                                        (if (gx#stx-null?
                                                             _tl3003930588_)
                                                            (___kont4214942150_
                                                             _hd3003830586_
                                                             _hd2999730624_)
                                                            (_g2997130104_))))
                                                    (_g2997130104_)))))
                                        (if (gx#stx-pair? _tl2999830626_)
                                            (let ((_e3003730583_
                                                   (gx#stx-e _tl2999830626_)))
                                              (let ((_tl3003930588_
                                                     (##cdr _e3003730583_))
                                                    (_hd3003830586_
                                                     (##car _e3003730583_)))
                                                (if (gx#stx-null?
                                                     _tl3003930588_)
                                                    (___kont4214942150_
                                                     _hd3003830586_
                                                     _hd2999730624_)
                                                    (_g2997130104_))))
                                            (_g2997130104_)))))
                                (if (gx#stx-pair? _tl2999830626_)
                                    (let ((_e3003730583_
                                           (gx#stx-e _tl2999830626_)))
                                      (let ((_tl3003930588_
                                             (##cdr _e3003730583_))
                                            (_hd3003830586_
                                             (##car _e3003730583_)))
                                        (if (gx#stx-null? _tl3003930588_)
                                            (___kont4214942150_
                                             _hd3003830586_
                                             _hd2999730624_)
                                            (_g2997130104_))))
                                    (_g2997130104_)))))
                        (if (gx#stx-pair? _tl2999830626_)
                            (let ((_e3003730583_ (gx#stx-e _tl2999830626_)))
                              (let ((_tl3003930588_ (##cdr _e3003730583_))
                                    (_hd3003830586_ (##car _e3003730583_)))
                                (if (gx#stx-null? _tl3003930588_)
                                    (___kont4214942150_
                                     _hd3003830586_
                                     _hd2999730624_)
                                    (_g2997130104_))))
                            (_g2997130104_)))))
                (if (gx#stx-pair? _tl2999830626_)
                    (let ((_e3003730583_ (gx#stx-e _tl2999830626_)))
                      (let ((_tl3003930588_ (##cdr _e3003730583_))
                            (_hd3003830586_ (##car _e3003730583_)))
                        (if (gx#stx-null? _tl3003930588_)
                            (___kont4214942150_ _hd3003830586_ _hd2999730624_)
                            (_g2997130104_))))
                    (_g2997130104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2997130104_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd2997730764_)
                                                (if (gx#stx-pair?
                                                     _tl2997830766_)
                                                    (let ((_e3004630487_
                                                           (gx#stx-e
                                                            _tl2997830766_)))
                                                      (let ((_tl3004830492_
                                                             (##cdr _e3004630487_))
                                                            (_hd3004730490_
                                                             (##car _e3004630487_)))
                                                        (if (gx#stx-pair?
                                                             _hd3004730490_)
                                                            (let ((_e3004930495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3004730490_)))
                      (let ((_tl3005130500_ (##cdr _e3004930495_))
                            (_hd3005030498_ (##car _e3004930495_)))
                        (if (gx#stx-pair? _hd3005030498_)
                            (let ((_e3005230503_ (gx#stx-e _hd3005030498_)))
                              (let ((_tl3005430508_ (##cdr _e3005230503_))
                                    (_hd3005330506_ (##car _e3005230503_)))
                                (if (gx#stx-pair? _hd3005330506_)
                                    (let ((_e3005530511_
                                           (gx#stx-e _hd3005330506_)))
                                      (let ((_tl3005730516_
                                             (##cdr _e3005530511_))
                                            (_hd3005630514_
                                             (##car _e3005530511_)))
                                        (if (gx#stx-null? _tl3005730516_)
                                            (if (gx#stx-pair? _tl3005430508_)
                                                (let ((_e3005830519_
                                                       (gx#stx-e
                                                        _tl3005430508_)))
                                                  (let ((_tl3006030524_
                                                         (##cdr _e3005830519_))
                                                        (_hd3005930522_
                                                         (##car _e3005830519_)))
                                                    (if (gx#stx-null?
                                                         _tl3006030524_)
                                                        (if (gx#stx-null?
                                                             _tl3005130500_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3004830492_)
                        (let ((_e3006130527_ (gx#stx-e _tl3004830492_)))
                          (let ((_tl3006330532_ (##cdr _e3006130527_))
                                (_hd3006230530_ (##car _e3006130527_)))
                            (if (gx#stx-null? _tl3006330532_)
                                (___kont4215142152_
                                 _hd3006230530_
                                 _hd3005930522_
                                 _hd3005630514_)
                                (_g2997130104_))))
                        (_g2997130104_))
                    (_g2997130104_))
                (_g2997130104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2997130104_))
                                            (_g2997130104_))))
                                    (_g2997130104_))))
                            (_g2997130104_))))
                    (_g2997130104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2997130104_))
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2997730764_)
                                                    (if (gx#stx-pair?
                                                         _tl2997830766_)
                                                        (let ((_e3007030117_
                                                               (gx#stx-e
                                                                _tl2997830766_)))
                                                          (let ((_tl3007230122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3007030117_))
                        (_hd3007130120_ (##car _e3007030117_)))
                    (if (gx#stx-pair? _hd3007130120_)
                        (let ((_e3007330125_ (gx#stx-e _hd3007130120_)))
                          (let ((_tl3007530130_ (##cdr _e3007330125_))
                                (_hd3007430128_ (##car _e3007330125_)))
                            (if (gx#identifier? _hd3007430128_)
                                (if (gx#stx-eq? '%#lambda _hd3007430128_)
                                    (if (gx#stx-pair? _tl3007530130_)
                                        (let ((_e3007630133_
                                               (gx#stx-e _tl3007530130_)))
                                          (let ((_tl3007830138_
                                                 (##cdr _e3007630133_))
                                                (_hd3007730136_
                                                 (##car _e3007630133_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3007730136_)
                                                (let ((___splice4215542156_
                                                       (gx#syntax-split-splice
                                                        _hd3007730136_
                                                        '0)))
                                                  (let ((_tl3008130143_
                                                         (##vector-ref
                                                          ___splice4215542156_
                                                          '1))
                                                        (_target3007930141_
                                                         (##vector-ref
                                                          ___splice4215542156_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3008130143_)
                                                        (___match4240042401_
                                                         _e2997630761_
                                                         _hd2997730764_
                                                         _tl2997830766_
                                                         _e3007030117_
                                                         _hd3007130120_
                                                         _tl3007230122_
                                                         _e3007330125_
                                                         _hd3007430128_
                                                         _tl3007530130_
                                                         _e3007630133_
                                                         _hd3007730136_
                                                         _tl3007830138_
                                                         ___splice4215542156_
                                                         _target3007930141_
                                                         _tl3008130143_)
                                                        (_g2997130104_))))
                                                (_g2997130104_))))
                                        (_g2997130104_))
                                    (_g2997130104_))
                                (_g2997130104_))))
                        (_g2997130104_))))
                (_g2997130104_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2997130104_)))))
                                    (_g2997130104_))))
                            (_g2997130104_)))))))
               (_xform-loop-e29579_
                (lambda (_expr29788_
                         _kont-id29789_
                         _kont-box29790_
                         _negation-id29791_)
                  (let* ((_g2979329833_
                          (lambda (_g2979429830_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2979429830_)))
                         (_g2979229959_
                          (lambda (_g2979429836_)
                            (if (gx#stx-pair? _g2979429836_)
                                (let ((_e2979929838_ (gx#stx-e _g2979429836_)))
                                  (let ((_hd2980029841_ (##car _e2979929838_))
                                        (_tl2980129843_ (##cdr _e2979929838_)))
                                    (if (gx#identifier? _hd2980029841_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2980029841_)
                                            (if (gx#stx-pair? _tl2980129843_)
                                                (let ((_e2980229846_
                                                       (gx#stx-e
                                                        _tl2980129843_)))
                                                  (let ((_hd2980329849_
                                                         (##car _e2980229846_))
                                                        (_tl2980429851_
                                                         (##cdr _e2980229846_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd2980329849_)
                                                        (let ((_g42717_
                                                               (gx#syntax-split-splice
                                                                _hd2980329849_
                                                                '0)))
                                                          (begin
                                                            (let ((_g42718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g42717_)
                               (##vector-length _g42717_)
                               1)))
                      (if (not (##fx= _g42718_ 2))
                          (error "Context expects 2 values" _g42718_)))
                    (let ((_target2980529854_ (##vector-ref _g42717_ 0))
                          (_tl2980729856_ (##vector-ref _g42717_ 1)))
                      (if (gx#stx-null? _tl2980729856_)
                          (letrec ((_loop2980829859_
                                    (lambda (_hd2980629862_ _id2981229864_)
                                      (if (gx#stx-pair? _hd2980629862_)
                                          (let ((_e2980929867_
                                                 (gx#stx-e _hd2980629862_)))
                                            (let ((_lp-hd2981029870_
                                                   (##car _e2980929867_))
                                                  (_lp-tl2981129872_
                                                   (##cdr _e2980929867_)))
                                              (_loop2980829859_
                                               _lp-tl2981129872_
                                               (cons _lp-hd2981029870_
                                                     _id2981229864_))))
                                          (let ((_id2981329875_
                                                 (reverse _id2981229864_)))
                                            (if (gx#stx-pair? _tl2980429851_)
                                                (let ((_e2981429878_
                                                       (gx#stx-e
                                                        _tl2980429851_)))
                                                  (let ((_hd2981529881_
                                                         (##car _e2981429878_))
                                                        (_tl2981629883_
                                                         (##cdr _e2981429878_)))
                                                    (if (gx#stx-pair?
                                                         _hd2981529881_)
                                                        (let ((_e2981729886_
                                                               (gx#stx-e
                                                                _hd2981529881_)))
                                                          (let ((_hd2981829889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2981729886_))
                        (_tl2981929891_ (##cdr _e2981729886_)))
                    (if (gx#identifier? _hd2981829889_)
                        (if (gx#stx-eq? '%#if _hd2981829889_)
                            (if (gx#stx-pair? _tl2981929891_)
                                (let ((_e2982029894_
                                       (gx#stx-e _tl2981929891_)))
                                  (let ((_hd2982129897_ (##car _e2982029894_))
                                        (_tl2982229899_ (##cdr _e2982029894_)))
                                    (if (gx#stx-pair? _tl2982229899_)
                                        (let ((_e2982329902_
                                               (gx#stx-e _tl2982229899_)))
                                          (let ((_hd2982429905_
                                                 (##car _e2982329902_))
                                                (_tl2982529907_
                                                 (##cdr _e2982329902_)))
                                            (if (gx#stx-pair? _tl2982529907_)
                                                (let ((_e2982629910_
                                                       (gx#stx-e
                                                        _tl2982529907_)))
                                                  (let ((_hd2982729913_
                                                         (##car _e2982629910_))
                                                        (_tl2982829915_
                                                         (##cdr _e2982629910_)))
                                                    (if (gx#stx-null?
                                                         _tl2982829915_)
                                                        (if (gx#stx-null?
                                                             _tl2981629883_)
                                                            ((lambda (_L29918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L29919_
                              _L29920_
                              _L29921_)
                       (let ((_E29950_
                              (_xform-e29578_
                               _L29918_
                               _kont-id29789_
                               _kont-box29790_
                               _negation-id29791_)))
                         (cons '%#lambda
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g2995129954_
                                                        _g2995229956_)
                                                 (cons _g2995129954_
                                                       _g2995229956_))
                                               '()
                                               _L29921_))
                                     (cons (cons '%#if
                                                 (cons _L29920_
                                                       (cons _L29919_
                                                             (cons _E29950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _hd2982729913_
                     _hd2982429905_
                     _hd2982129897_
                     _id2981329875_)
                    (_g2979329833_ _g2979429836_))
                (_g2979329833_ _g2979429836_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2979329833_
                                                 _g2979429836_))))
                                        (_g2979329833_ _g2979429836_))))
                                (_g2979329833_ _g2979429836_))
                            (_g2979329833_ _g2979429836_))
                        (_g2979329833_ _g2979429836_))))
                (_g2979329833_ _g2979429836_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2979329833_
                                                 _g2979429836_)))))))
                            (_loop2980829859_ _target2980529854_ '()))
                          (_g2979329833_ _g2979429836_)))))
                (_g2979329833_ _g2979429836_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2979329833_ _g2979429836_))
                                            (_g2979329833_ _g2979429836_))
                                        (_g2979329833_ _g2979429836_))))
                                (_g2979329833_ _g2979429836_)))))
                    (_g2979229959_ _expr29788_))))
               (_clause-e29580_
                (lambda (_clause-lambda29658_ _kont-id29659_ _rest29660_)
                  (letrec* ((_kont-box29662_ (box '#f)))
                    (let* ((_negation-id29702_
                            (let* ((_rest2966329673_ _rest29660_)
                                   (_else2966529681_
                                    (lambda () _negation-id29576_))
                                   (_K2966729687_
                                    (lambda (_clause29684_ _clause-id29685_)
                                      _clause-id29685_)))
                              (if (##pair? _rest2966329673_)
                                  (let ((_hd2966829690_
                                         (##car _rest2966329673_)))
                                    (if (##pair? _hd2966829690_)
                                        (let ((_hd2967029693_
                                               (##car _hd2966829690_))
                                              (_tl2967129695_
                                               (##cdr _hd2966829690_)))
                                          (let* ((_clause-id29698_
                                                  _hd2967029693_)
                                                 (_clause29700_
                                                  _tl2967129695_))
                                            (_K2966729687_
                                             _clause29700_
                                             _clause-id29698_)))
                                        (_else2966529681_)))
                                  (_else2966529681_))))
                           (_g2970429724_
                            (lambda (_g2970529721_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2970529721_)))
                           (_g2970329785_
                            (lambda (_g2970529727_)
                              (if (gx#stx-pair? _g2970529727_)
                                  (let ((_e2970829729_
                                         (gx#stx-e _g2970529727_)))
                                    (let ((_hd2970929732_
                                           (##car _e2970829729_))
                                          (_tl2971029734_
                                           (##cdr _e2970829729_)))
                                      (if (gx#identifier? _hd2970929732_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd2970929732_)
                                              (if (gx#stx-pair? _tl2971029734_)
                                                  (let ((_e2971129737_
                                                         (gx#stx-e
                                                          _tl2971029734_)))
                                                    (let ((_hd2971229740_
                                                           (##car _e2971129737_))
                                                          (_tl2971329742_
                                                           (##cdr _e2971129737_)))
                                                      (if (gx#stx-pair?
                                                           _hd2971229740_)
                                                          (let ((_e2971429745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2971229740_)))
                    (let ((_hd2971529748_ (##car _e2971429745_))
                          (_tl2971629750_ (##cdr _e2971429745_)))
                      (if (gx#stx-null? _tl2971629750_)
                          (if (gx#stx-pair? _tl2971329742_)
                              (let ((_e2971729753_ (gx#stx-e _tl2971329742_)))
                                (let ((_hd2971829756_ (##car _e2971729753_))
                                      (_tl2971929758_ (##cdr _e2971729753_)))
                                  (if (gx#stx-null? _tl2971929758_)
                                      ((lambda (_L29761_ _L29762_)
                                         (let ((_body29783_
                                                (_xform-e29578_
                                                 _L29761_
                                                 _kont-id29659_
                                                 _kont-box29662_
                                                 _negation-id29702_)))
                                           (values (cons '%#lambda
                                                         (cons (cons _L29762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _body29783_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (unbox _kont-box29662_))))
                                       _hd2971829756_
                                       _hd2971529748_)
                                      (_g2970429724_ _g2970529727_))))
                              (_g2970429724_ _g2970529727_))
                          (_g2970429724_ _g2970529727_))))
                  (_g2970429724_ _g2970529727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2970429724_
                                                   _g2970529727_))
                                              (_g2970429724_ _g2970529727_))
                                          (_g2970429724_ _g2970529727_))))
                                  (_g2970429724_ _g2970529727_)))))
                      (_g2970329785_ _clause-lambda29658_))))))
        (let _lp29582_ ((_rest29584_ _clauses29575_)
                        (_clauses29585_ '())
                        (_konts29586_ '()))
          (let* ((_rest2958729595_ _rest29584_)
                 (_else2958929603_
                  (lambda ()
                    (values (reverse _clauses29585_) (reverse _konts29586_))))
                 (_K2959129646_
                  (lambda (_rest29606_ _clause29607_)
                    (let* ((_clause2960829615_ _clause29607_)
                           (_E2961029619_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause2960829615_)))
                           (_K2961129634_
                            (lambda (_clause-lambda29622_ _clause-id29623_)
                              (let* ((_id29625_ (make-symbol (gensym '__kont)))
                                     (_id29627_
                                      (gx#core-quote-syntax__0 _id29625_))
                                     (_g42719_
                                      (gx#core-bind-runtime!__0 _id29627_))
                                     (_g42720_
                                      (_clause-e29580_
                                       _clause-lambda29622_
                                       _id29627_
                                       _rest29606_)))
                                (begin
                                  (let ((_g42721_
                                         (if (##values? _g42720_)
                                             (##vector-length _g42720_)
                                             1)))
                                    (if (not (##fx= _g42721_ 2))
                                        (error "Context expects 2 values"
                                               _g42721_)))
                                  (let ((_clause-lambda29630_
                                         (##vector-ref _g42720_ 0))
                                        (_kont29631_
                                         (##vector-ref _g42720_ 1)))
                                    (let ()
                                      (_lp29582_
                                       _rest29606_
                                       (cons (cons _clause-id29623_
                                                   _clause-lambda29630_)
                                             _clauses29585_)
                                       (cons (cons _id29627_ _kont29631_)
                                             _konts29586_)))))))))
                      (if (##pair? _clause2960829615_)
                          (let ((_hd2961229637_ (##car _clause2960829615_))
                                (_tl2961329639_ (##cdr _clause2960829615_)))
                            (let* ((_clause-id29642_ _hd2961229637_)
                                   (_clause-lambda29644_ _tl2961329639_))
                              (_K2961129634_
                               _clause-lambda29644_
                               _clause-id29642_)))
                          (_E2961029619_))))))
            (if (##pair? _rest2958729595_)
                (let ((_hd2959229649_ (##car _rest2958729595_))
                      (_tl2959329651_ (##cdr _rest2958729595_)))
                  (let* ((_clause29654_ _hd2959229649_)
                         (_rest29656_ _tl2959329651_))
                    (_K2959129646_ _rest29656_ _clause29654_)))
                (_else2958929603_)))))))
  (define gxc#optimize-syntax-case-closure
    (lambda (_clause28919_ _negation28920_ _target28921_)
      (letrec ((_closure-e28923_
                (lambda (_expr29040_)
                  (let* ((___stx4240342404_ _expr29040_)
                         (_g2904729162_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4240342404_))))
                    (let ((___kont4240542406_
                           (lambda (_L29553_ _L29554_ _L29555_)
                             (cons '%#if
                                   (cons _L29555_
                                         (cons (_closure-e28923_ _L29554_)
                                               (cons (_closure-e28923_
                                                      _L29553_)
                                                     '()))))))
                          (___kont4240742408_
                           (lambda (_L29501_ _L29502_)
                             (cons '%#let-values
                                   (cons _L29502_
                                         (cons (_closure-e28923_ _L29501_)
                                               '())))))
                          (___kont4240942410_
                           (lambda (_L29447_ _L29448_ _L29449_)
                             (cons '%#letrec-values
                                   (cons (cons (cons (cons _L29449_ '())
                                                     (cons (_closure-e28923_
                                                            _L29448_)
                                                           '()))
                                               '())
                                         (cons _L29447_ '())))))
                          (___kont4241142412_
                           (lambda (_L29360_ _L29361_)
                             (cons '%#lambda
                                   (cons (begin
                                           '#!void
                                           (foldr1 (lambda (_g2937829381_
                                                            _g2937929383_)
                                                     (cons _g2937829381_
                                                           _g2937929383_))
                                                   '()
                                                   _L29361_))
                                         (cons (_closure-e28923_ _L29360_)
                                               '())))))
                          (___kont4241542416_
                           (lambda (_L29290_)
                             (cons '%#call
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _L29290_ '()))
                                         '()))))
                          (___kont4241742418_
                           (lambda (_L29223_ _L29224_) _expr29040_)))
                      (let* ((___match4263642637_
                              (lambda (_e2913729167_
                                       _hd2913829170_
                                       _tl2913929172_
                                       _e2914029175_
                                       _hd2914129178_
                                       _tl2914229180_
                                       _e2914329183_
                                       _hd2914429186_
                                       _tl2914529188_
                                       _e2914629191_
                                       _hd2914729194_
                                       _tl2914829196_
                                       ___splice4241942420_
                                       _target2914929199_
                                       _tl2915129201_)
                                (letrec ((_loop2915229204_
                                          (lambda (_hd2915029207_
                                                   _arg2915629209_)
                                            (if (gx#stx-pair? _hd2915029207_)
                                                (let ((_e2915329212_
                                                       (gx#stx-e
                                                        _hd2915029207_)))
                                                  (let ((_lp-tl2915529217_
                                                         (##cdr _e2915329212_))
                                                        (_lp-hd2915429215_
                                                         (##car _e2915329212_)))
                                                    (_loop2915229204_
                                                     _lp-tl2915529217_
                                                     (cons _lp-hd2915429215_
                                                           _arg2915629209_))))
                                                (let ((_arg2915729220_
                                                       (reverse _arg2915629209_)))
                                                  (___kont4241742418_
                                                   _arg2915729220_
                                                   _hd2914729194_))))))
                                  (_loop2915229204_ _target2914929199_ '()))))
                             (___match4259442595_
                              (lambda (_e2912029250_
                                       _hd2912129253_
                                       _tl2912229255_
                                       _e2912329258_
                                       _hd2912429261_
                                       _tl2912529263_
                                       _e2912629266_
                                       _hd2912729269_
                                       _tl2912829271_
                                       _e2912929274_
                                       _hd2913029277_
                                       _tl2913129279_
                                       _e2913229282_
                                       _hd2913329285_
                                       _tl2913429287_)
                                (let ((_L29290_ _hd2913029277_))
                                  (if (gx#free-identifier=?
                                       _L29290_
                                       _negation28920_)
                                      (___kont4241542416_ _L29290_)
                                      (if (gx#stx-pair/null? _tl2912529263_)
                                          (let ((___splice4241942420_
                                                 (gx#syntax-split-splice
                                                  _tl2912529263_
                                                  '0)))
                                            (let ((_tl2915129201_
                                                   (##vector-ref
                                                    ___splice4241942420_
                                                    '1))
                                                  (_target2914929199_
                                                   (##vector-ref
                                                    ___splice4241942420_
                                                    '0)))
                                              (if (gx#stx-null? _tl2915129201_)
                                                  (___match4263642637_
                                                   _e2912029250_
                                                   _hd2912129253_
                                                   _tl2912229255_
                                                   _e2912329258_
                                                   _hd2912429261_
                                                   _tl2912529263_
                                                   _e2912629266_
                                                   _hd2912729269_
                                                   _tl2912829271_
                                                   _e2912929274_
                                                   _hd2913029277_
                                                   _tl2913129279_
                                                   ___splice4241942420_
                                                   _target2914929199_
                                                   _tl2915129201_)
                                                  (_g2904729162_))))
                                          (_g2904729162_))))))
                             (___match4255242553_
                              (lambda (_e2910129312_
                                       _hd2910229315_
                                       _tl2910329317_
                                       _e2910429320_
                                       _hd2910529323_
                                       _tl2910629325_
                                       ___splice4241342414_
                                       _target2910729328_
                                       _tl2910929330_)
                                (letrec ((_loop2911029333_
                                          (lambda (_hd2910829336_
                                                   _id2911429338_)
                                            (if (gx#stx-pair? _hd2910829336_)
                                                (let ((_e2911129341_
                                                       (gx#stx-e
                                                        _hd2910829336_)))
                                                  (let ((_lp-tl2911329346_
                                                         (##cdr _e2911129341_))
                                                        (_lp-hd2911229344_
                                                         (##car _e2911129341_)))
                                                    (_loop2911029333_
                                                     _lp-tl2911329346_
                                                     (cons _lp-hd2911229344_
                                                           _id2911429338_))))
                                                (let ((_id2911529349_
                                                       (reverse _id2911429338_)))
                                                  (if (gx#stx-pair?
                                                       _tl2910629325_)
                                                      (let ((_e2911629352_
                                                             (gx#stx-e
                                                              _tl2910629325_)))
                                                        (let ((_tl2911829357_
                                                               (##cdr _e2911629352_))
                                                              (_hd2911729355_
                                                               (##car _e2911629352_)))
                                                          (if (gx#stx-null?
                                                               _tl2911829357_)
                                                              (___kont4241142412_
                                                               _hd2911729355_
                                                               _id2911529349_)
                                                              (_g2904729162_))))
                                                      (_g2904729162_)))))))
                                  (_loop2911029333_ _target2910729328_ '())))))
                        (if (gx#stx-pair? ___stx4240342404_)
                            (let ((_e2905229521_ (gx#stx-e ___stx4240342404_)))
                              (let ((_tl2905429526_ (##cdr _e2905229521_))
                                    (_hd2905329524_ (##car _e2905229521_)))
                                (if (gx#identifier? _hd2905329524_)
                                    (if (gx#stx-eq? '%#if _hd2905329524_)
                                        (if (gx#stx-pair? _tl2905429526_)
                                            (let ((_e2905529529_
                                                   (gx#stx-e _tl2905429526_)))
                                              (let ((_tl2905729534_
                                                     (##cdr _e2905529529_))
                                                    (_hd2905629532_
                                                     (##car _e2905529529_)))
                                                (if (gx#stx-pair?
                                                     _tl2905729534_)
                                                    (let ((_e2905829537_
                                                           (gx#stx-e
                                                            _tl2905729534_)))
                                                      (let ((_tl2906029542_
                                                             (##cdr _e2905829537_))
                                                            (_hd2905929540_
                                                             (##car _e2905829537_)))
                                                        (if (gx#stx-pair?
                                                             _tl2906029542_)
                                                            (let ((_e2906129545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2906029542_)))
                      (let ((_tl2906329550_ (##cdr _e2906129545_))
                            (_hd2906229548_ (##car _e2906129545_)))
                        (if (gx#stx-null? _tl2906329550_)
                            (___kont4240542406_
                             _hd2906229548_
                             _hd2905929540_
                             _hd2905629532_)
                            (_g2904729162_))))
                    (_g2904729162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2904729162_))))
                                            (_g2904729162_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd2905329524_)
                                            (if (gx#stx-pair? _tl2905429526_)
                                                (let ((_e2906929485_
                                                       (gx#stx-e
                                                        _tl2905429526_)))
                                                  (let ((_tl2907129490_
                                                         (##cdr _e2906929485_))
                                                        (_hd2907029488_
                                                         (##car _e2906929485_)))
                                                    (if (gx#stx-pair?
                                                         _tl2907129490_)
                                                        (let ((_e2907229493_
                                                               (gx#stx-e
                                                                _tl2907129490_)))
                                                          (let ((_tl2907429498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2907229493_))
                        (_hd2907329496_ (##car _e2907229493_)))
                    (if (gx#stx-null? _tl2907429498_)
                        (___kont4240742408_ _hd2907329496_ _hd2907029488_)
                        (_g2904729162_))))
                (_g2904729162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2904729162_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd2905329524_)
                                                (if (gx#stx-pair?
                                                     _tl2905429526_)
                                                    (let ((_e2908129399_
                                                           (gx#stx-e
                                                            _tl2905429526_)))
                                                      (let ((_tl2908329404_
                                                             (##cdr _e2908129399_))
                                                            (_hd2908229402_
                                                             (##car _e2908129399_)))
                                                        (if (gx#stx-pair?
                                                             _hd2908229402_)
                                                            (let ((_e2908429407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2908229402_)))
                      (let ((_tl2908629412_ (##cdr _e2908429407_))
                            (_hd2908529410_ (##car _e2908429407_)))
                        (if (gx#stx-pair? _hd2908529410_)
                            (let ((_e2908729415_ (gx#stx-e _hd2908529410_)))
                              (let ((_tl2908929420_ (##cdr _e2908729415_))
                                    (_hd2908829418_ (##car _e2908729415_)))
                                (if (gx#stx-pair? _hd2908829418_)
                                    (let ((_e2909029423_
                                           (gx#stx-e _hd2908829418_)))
                                      (let ((_tl2909229428_
                                             (##cdr _e2909029423_))
                                            (_hd2909129426_
                                             (##car _e2909029423_)))
                                        (if (gx#stx-null? _tl2909229428_)
                                            (if (gx#stx-pair? _tl2908929420_)
                                                (let ((_e2909329431_
                                                       (gx#stx-e
                                                        _tl2908929420_)))
                                                  (let ((_tl2909529436_
                                                         (##cdr _e2909329431_))
                                                        (_hd2909429434_
                                                         (##car _e2909329431_)))
                                                    (if (gx#stx-null?
                                                         _tl2909529436_)
                                                        (if (gx#stx-null?
                                                             _tl2908629412_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2908329404_)
                        (let ((_e2909629439_ (gx#stx-e _tl2908329404_)))
                          (let ((_tl2909829444_ (##cdr _e2909629439_))
                                (_hd2909729442_ (##car _e2909629439_)))
                            (if (gx#stx-null? _tl2909829444_)
                                (___kont4240942410_
                                 _hd2909729442_
                                 _hd2909429434_
                                 _hd2909129426_)
                                (_g2904729162_))))
                        (_g2904729162_))
                    (_g2904729162_))
                (_g2904729162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2904729162_))
                                            (_g2904729162_))))
                                    (_g2904729162_))))
                            (_g2904729162_))))
                    (_g2904729162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2904729162_))
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd2905329524_)
                                                    (if (gx#stx-pair?
                                                         _tl2905429526_)
                                                        (let ((_e2910429320_
                                                               (gx#stx-e
                                                                _tl2905429526_)))
                                                          (let ((_tl2910629325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2910429320_))
                        (_hd2910529323_ (##car _e2910429320_)))
                    (if (gx#stx-pair/null? _hd2910529323_)
                        (let ((___splice4241342414_
                               (gx#syntax-split-splice _hd2910529323_ '0)))
                          (let ((_tl2910929330_
                                 (##vector-ref ___splice4241342414_ '1))
                                (_target2910729328_
                                 (##vector-ref ___splice4241342414_ '0)))
                            (if (gx#stx-null? _tl2910929330_)
                                (___match4255242553_
                                 _e2905229521_
                                 _hd2905329524_
                                 _tl2905429526_
                                 _e2910429320_
                                 _hd2910529323_
                                 _tl2910629325_
                                 ___splice4241342414_
                                 _target2910729328_
                                 _tl2910929330_)
                                (_g2904729162_))))
                        (_g2904729162_))))
                (_g2904729162_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2905329524_)
                                                        (if (gx#stx-pair?
                                                             _tl2905429526_)
                                                            (let ((_e2912329258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2905429526_)))
                      (let ((_tl2912529263_ (##cdr _e2912329258_))
                            (_hd2912429261_ (##car _e2912329258_)))
                        (if (gx#stx-pair? _hd2912429261_)
                            (let ((_e2912629266_ (gx#stx-e _hd2912429261_)))
                              (let ((_tl2912829271_ (##cdr _e2912629266_))
                                    (_hd2912729269_ (##car _e2912629266_)))
                                (if (gx#identifier? _hd2912729269_)
                                    (if (gx#stx-eq? '%#ref _hd2912729269_)
                                        (if (gx#stx-pair? _tl2912829271_)
                                            (let ((_e2912929274_
                                                   (gx#stx-e _tl2912829271_)))
                                              (let ((_tl2913129279_
                                                     (##cdr _e2912929274_))
                                                    (_hd2913029277_
                                                     (##car _e2912929274_)))
                                                (if (gx#stx-null?
                                                     _tl2913129279_)
                                                    (if (gx#stx-pair?
                                                         _tl2912529263_)
                                                        (let ((_e2913229282_
                                                               (gx#stx-e
                                                                _tl2912529263_)))
                                                          (let ((_tl2913429287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2913229282_))
                        (_hd2913329285_ (##car _e2913229282_)))
                    (if (gx#stx-null? _tl2913429287_)
                        (___match4259442595_
                         _e2905229521_
                         _hd2905329524_
                         _tl2905429526_
                         _e2912329258_
                         _hd2912429261_
                         _tl2912529263_
                         _e2912629266_
                         _hd2912729269_
                         _tl2912829271_
                         _e2912929274_
                         _hd2913029277_
                         _tl2913129279_
                         _e2913229282_
                         _hd2913329285_
                         _tl2913429287_)
                        (if (gx#stx-pair/null? _tl2912529263_)
                            (let ((___splice4241942420_
                                   (gx#syntax-split-splice _tl2912529263_ '0)))
                              (let ((_tl2915129201_
                                     (##vector-ref ___splice4241942420_ '1))
                                    (_target2914929199_
                                     (##vector-ref ___splice4241942420_ '0)))
                                (if (gx#stx-null? _tl2915129201_)
                                    (___match4263642637_
                                     _e2905229521_
                                     _hd2905329524_
                                     _tl2905429526_
                                     _e2912329258_
                                     _hd2912429261_
                                     _tl2912529263_
                                     _e2912629266_
                                     _hd2912729269_
                                     _tl2912829271_
                                     _e2912929274_
                                     _hd2913029277_
                                     _tl2913129279_
                                     ___splice4241942420_
                                     _target2914929199_
                                     _tl2915129201_)
                                    (_g2904729162_))))
                            (_g2904729162_)))))
                (if (gx#stx-pair/null? _tl2912529263_)
                    (let ((___splice4241942420_
                           (gx#syntax-split-splice _tl2912529263_ '0)))
                      (let ((_tl2915129201_
                             (##vector-ref ___splice4241942420_ '1))
                            (_target2914929199_
                             (##vector-ref ___splice4241942420_ '0)))
                        (if (gx#stx-null? _tl2915129201_)
                            (___match4263642637_
                             _e2905229521_
                             _hd2905329524_
                             _tl2905429526_
                             _e2912329258_
                             _hd2912429261_
                             _tl2912529263_
                             _e2912629266_
                             _hd2912729269_
                             _tl2912829271_
                             _e2912929274_
                             _hd2913029277_
                             _tl2913129279_
                             ___splice4241942420_
                             _target2914929199_
                             _tl2915129201_)
                            (_g2904729162_))))
                    (_g2904729162_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2904729162_))))
                                            (_g2904729162_))
                                        (_g2904729162_))
                                    (_g2904729162_))))
                            (_g2904729162_))))
                    (_g2904729162_))
                (_g2904729162_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g2904729162_))))
                            (_g2904729162_))))))))
        (let* ((_clause2892428931_ _clause28919_)
               (_E2892628935_
                (lambda () (error '"No clause matching" _clause2892428931_)))
               (_K2892729028_
                (lambda (_kont28938_ _id28939_)
                  (let* ((_g2894128961_
                          (lambda (_g2894228958_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2894228958_)))
                         (_g2894029025_
                          (lambda (_g2894228964_)
                            (if (gx#stx-pair? _g2894228964_)
                                (let ((_e2894528966_ (gx#stx-e _g2894228964_)))
                                  (let ((_hd2894628969_ (##car _e2894528966_))
                                        (_tl2894728971_ (##cdr _e2894528966_)))
                                    (if (gx#identifier? _hd2894628969_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2894628969_)
                                            (if (gx#stx-pair? _tl2894728971_)
                                                (let ((_e2894828974_
                                                       (gx#stx-e
                                                        _tl2894728971_)))
                                                  (let ((_hd2894928977_
                                                         (##car _e2894828974_))
                                                        (_tl2895028979_
                                                         (##cdr _e2894828974_)))
                                                    (if (gx#stx-pair?
                                                         _hd2894928977_)
                                                        (let ((_e2895128982_
                                                               (gx#stx-e
                                                                _hd2894928977_)))
                                                          (let ((_hd2895228985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2895128982_))
                        (_tl2895328987_ (##cdr _e2895128982_)))
                    (if (gx#stx-null? _tl2895328987_)
                        (if (gx#stx-pair? _tl2895028979_)
                            (let ((_e2895428990_ (gx#stx-e _tl2895028979_)))
                              (let ((_hd2895528993_ (##car _e2895428990_))
                                    (_tl2895628995_ (##cdr _e2895428990_)))
                                (if (gx#stx-null? _tl2895628995_)
                                    ((lambda (_L28998_ _L28999_)
                                       (let* ((_body29020_
                                               (gxc#apply-expression-subst
                                                _L28998_
                                                _L28999_
                                                _target28921_))
                                              (_body29022_
                                               (if _negation28920_
                                                   (_closure-e28923_
                                                    _body29020_)
                                                   _body29020_)))
                                         (cons _id28939_
                                               (cons '%#lambda
                                                     (cons '()
                                                           (cons _body29022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2895528993_
                                     _hd2895228985_)
                                    (_g2894128961_ _g2894228964_))))
                            (_g2894128961_ _g2894228964_))
                        (_g2894128961_ _g2894228964_))))
                (_g2894128961_ _g2894228964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2894128961_ _g2894228964_))
                                            (_g2894128961_ _g2894228964_))
                                        (_g2894128961_ _g2894228964_))))
                                (_g2894128961_ _g2894228964_)))))
                    (_g2894029025_ _kont28938_)))))
          (if (##pair? _clause2892428931_)
              (let ((_hd2892829031_ (##car _clause2892428931_))
                    (_tl2892929033_ (##cdr _clause2892428931_)))
                (let* ((_id29036_ _hd2892829031_) (_kont29038_ _tl2892929033_))
                  (_K2892729028_ _kont29038_ _id29036_)))
              (_E2892628935_))))))
  (define gxc#push-match-vars-let-values%
    (lambda (_stx28705_ _vars28706_ _K28707_)
      (let* ((_g2870928726_
              (lambda (_g2871028723_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2871028723_)))
             (_g2870828916_
              (lambda (_g2871028729_)
                (if (gx#stx-pair? _g2871028729_)
                    (let ((_e2871328731_ (gx#stx-e _g2871028729_)))
                      (let ((_hd2871428734_ (##car _e2871328731_))
                            (_tl2871528736_ (##cdr _e2871328731_)))
                        (if (gx#stx-pair? _tl2871528736_)
                            (let ((_e2871628739_ (gx#stx-e _tl2871528736_)))
                              (let ((_hd2871728742_ (##car _e2871628739_))
                                    (_tl2871828744_ (##cdr _e2871628739_)))
                                (if (gx#stx-pair? _tl2871828744_)
                                    (let ((_e2871928747_
                                           (gx#stx-e _tl2871828744_)))
                                      (let ((_hd2872028750_
                                             (##car _e2871928747_))
                                            (_tl2872128752_
                                             (##cdr _e2871928747_)))
                                        (if (gx#stx-null? _tl2872128752_)
                                            ((lambda (_L28755_ _L28756_)
                                               (let _lp28771_ ((_rest28773_
                                                                _L28756_)
                                                               (_rebind28774_
                                                                '())
                                                               (_vars28775_
                                                                _vars28706_))
                                                 (let* ((_rest2877628784_
                                                         _rest28773_)
                                                        (_else2877828792_
                                                         (lambda ()
                                                           (if (null? _rebind28774_)
                                                               (gxc#compile-e
                                                                _L28755_
                                                                _vars28775_
                                                                _K28707_)
                                                               (gxc#xform-wrap-source
                                                                (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (reverse _rebind28774_)
                                    (cons (gxc#compile-e
                                           _L28755_
                                           _vars28775_
                                           _K28707_)
                                          '())))
                        _stx28705_))))
                (_K2878028904_
                 (lambda (_rest28795_ _bind28796_)
                   (let* ((___stx4263942640_ _bind28796_)
                          (_g2879928822_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4263942640_))))
                     (let ((___kont4264142642_
                            (lambda (_L28874_ _L28875_)
                              (_lp28771_
                               _rest28795_
                               _rebind28774_
                               (cons _bind28796_ _vars28775_))))
                           (___kont4264342644_
                            (lambda ()
                              (_lp28771_
                               _rest28795_
                               (cons _bind28796_ _rebind28774_)
                               _vars28775_))))
                       (if (gx#stx-pair? ___stx4263942640_)
                           (let ((_e2880328834_ (gx#stx-e ___stx4263942640_)))
                             (let ((_tl2880528839_ (##cdr _e2880328834_))
                                   (_hd2880428837_ (##car _e2880328834_)))
                               (if (gx#stx-pair? _hd2880428837_)
                                   (let ((_e2880628842_
                                          (gx#stx-e _hd2880428837_)))
                                     (let ((_tl2880828847_
                                            (##cdr _e2880628842_))
                                           (_hd2880728845_
                                            (##car _e2880628842_)))
                                       (if (gx#stx-null? _tl2880828847_)
                                           (if (gx#stx-pair? _tl2880528839_)
                                               (let ((_e2880928850_
                                                      (gx#stx-e
                                                       _tl2880528839_)))
                                                 (let ((_tl2881128855_
                                                        (##cdr _e2880928850_))
                                                       (_hd2881028853_
                                                        (##car _e2880928850_)))
                                                   (if (gx#stx-pair?
                                                        _hd2881028853_)
                                                       (let ((_e2881228858_
                                                              (gx#stx-e
                                                               _hd2881028853_)))
                                                         (let ((_tl2881428863_
                                                                (##cdr _e2881228858_))
                                                               (_hd2881328861_
                                                                (##car _e2881228858_)))
                                                           (if (gx#identifier?
                                                                _hd2881328861_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd2881328861_)
                           (if (gx#stx-pair? _tl2881428863_)
                               (let ((_e2881528866_ (gx#stx-e _tl2881428863_)))
                                 (let ((_tl2881728871_ (##cdr _e2881528866_))
                                       (_hd2881628869_ (##car _e2881528866_)))
                                   (if (gx#stx-null? _tl2881728871_)
                                       (if (gx#stx-null? _tl2881128855_)
                                           (___kont4264142642_
                                            _hd2881628869_
                                            _hd2880728845_)
                                           (___kont4264342644_))
                                       (___kont4264342644_))))
                               (___kont4264342644_))
                           (___kont4264342644_))
                       (___kont4264342644_))))
               (___kont4264342644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4264342644_))
                                           (___kont4264342644_))))
                                   (___kont4264342644_))))
                           (___kont4264342644_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _rest2877628784_)
                                                       (let ((_hd2878128907_
                                                              (##car _rest2877628784_))
                                                             (_tl2878228909_
                                                              (##cdr _rest2877628784_)))
                                                         (let* ((_bind28912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2878128907_)
                        (_rest28914_ _tl2878228909_))
                   (_K2878028904_ _rest28914_ _bind28912_)))
               (_else2877828792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd2872028750_
                                             _hd2871728742_)
                                            (_g2870928726_ _g2871028729_))))
                                    (_g2870928726_ _g2871028729_))))
                            (_g2870928726_ _g2871028729_))))
                    (_g2870928726_ _g2871028729_)))))
        (_g2870828916_ _stx28705_))))
  (define gxc#push-match-vars-if%
    (lambda (_stx28620_ _vars28621_ _K28622_)
      (let* ((_g2862428645_
              (lambda (_g2862528642_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2862528642_)))
             (_g2862328702_
              (lambda (_g2862528648_)
                (if (gx#stx-pair? _g2862528648_)
                    (let ((_e2862928650_ (gx#stx-e _g2862528648_)))
                      (let ((_hd2863028653_ (##car _e2862928650_))
                            (_tl2863128655_ (##cdr _e2862928650_)))
                        (if (gx#stx-pair? _tl2863128655_)
                            (let ((_e2863228658_ (gx#stx-e _tl2863128655_)))
                              (let ((_hd2863328661_ (##car _e2863228658_))
                                    (_tl2863428663_ (##cdr _e2863228658_)))
                                (if (gx#stx-pair? _tl2863428663_)
                                    (let ((_e2863528666_
                                           (gx#stx-e _tl2863428663_)))
                                      (let ((_hd2863628669_
                                             (##car _e2863528666_))
                                            (_tl2863728671_
                                             (##cdr _e2863528666_)))
                                        (if (gx#stx-pair? _tl2863728671_)
                                            (let ((_e2863828674_
                                                   (gx#stx-e _tl2863728671_)))
                                              (let ((_hd2863928677_
                                                     (##car _e2863828674_))
                                                    (_tl2864028679_
                                                     (##cdr _e2863828674_)))
                                                (if (gx#stx-null?
                                                     _tl2864028679_)
                                                    ((lambda (_L28682_
                                                              _L28683_
                                                              _L28684_)
                                                       (if (gxc#apply-find-var-refs
                                                            _L28684_
                                                            (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _vars28621_))
                   (gxc#push-match-vars-stop _stx28620_ _vars28621_ _K28622_)
                   (gxc#xform-wrap-source
                    (cons '%#if
                          (cons _L28684_
                                (cons (gxc#compile-e
                                       _L28683_
                                       _vars28621_
                                       _K28622_)
                                      (cons (gxc#compile-e
                                             _L28682_
                                             _vars28621_
                                             _K28622_)
                                            '()))))
                    _stx28620_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd2863928677_
                                                     _hd2863628669_
                                                     _hd2863328661_)
                                                    (_g2862428645_
                                                     _g2862528648_))))
                                            (_g2862428645_ _g2862528648_))))
                                    (_g2862428645_ _g2862528648_))))
                            (_g2862428645_ _g2862528648_))))
                    (_g2862428645_ _g2862528648_)))))
        (_g2862328702_ _stx28620_))))
  (define gxc#push-match-vars-call%
    (lambda (_stx28540_ _vars28541_ _K28542_)
      (let* ((_g2854428563_
              (lambda (_g2854528560_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2854528560_)))
             (_g2854328617_
              (lambda (_g2854528566_)
                (if (gx#stx-pair? _g2854528566_)
                    (let ((_e2854728568_ (gx#stx-e _g2854528566_)))
                      (let ((_hd2854828571_ (##car _e2854728568_))
                            (_tl2854928573_ (##cdr _e2854728568_)))
                        (if (gx#stx-pair? _tl2854928573_)
                            (let ((_e2855028576_ (gx#stx-e _tl2854928573_)))
                              (let ((_hd2855128579_ (##car _e2855028576_))
                                    (_tl2855228581_ (##cdr _e2855028576_)))
                                (if (gx#stx-pair? _hd2855128579_)
                                    (let ((_e2855328584_
                                           (gx#stx-e _hd2855128579_)))
                                      (let ((_hd2855428587_
                                             (##car _e2855328584_))
                                            (_tl2855528589_
                                             (##cdr _e2855328584_)))
                                        (if (gx#identifier? _hd2855428587_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2855428587_)
                                                (if (gx#stx-pair?
                                                     _tl2855528589_)
                                                    (let ((_e2855628592_
                                                           (gx#stx-e
                                                            _tl2855528589_)))
                                                      (let ((_hd2855728595_
                                                             (##car _e2855628592_))
                                                            (_tl2855828597_
                                                             (##cdr _e2855628592_)))
                                                        (if (gx#stx-null?
                                                             _tl2855828597_)
                                                            ((lambda (_L28600_)
                                                               (if (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L28600_
                                _K28542_)
                               (pair? _vars28541_)
                               '#f)
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (reverse _vars28541_)
                                        (cons _stx28540_ '())))
                            _stx28540_)
                           _stx28540_))
                     _hd2855728595_)
                    (_g2854428563_ _g2854528566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2854428563_
                                                     _g2854528566_))
                                                (_g2854428563_ _g2854528566_))
                                            (_g2854428563_ _g2854528566_))))
                                    (_g2854428563_ _g2854528566_))))
                            (_g2854428563_ _g2854528566_))))
                    (_g2854428563_ _g2854528566_)))))
        (_g2854328617_ _stx28540_))))
  (define gxc#push-match-vars-stop
    (lambda (_stx28536_ _vars28537_ _K28538_)
      (if (null? _vars28537_)
          _stx28536_
          (gxc#xform-wrap-source
           (cons '%#let-values
                 (cons (reverse _vars28537_) (cons _stx28536_ '())))
           _stx28536_)))))
