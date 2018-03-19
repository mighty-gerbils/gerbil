(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&optmize-annotated
    (make-promise
     (lambda ()
       (let ((_tbl39581_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl39581_ (force gxc#&basic-xform))
           (table-set! _tbl39581_ '%#begin-annotation gxc#optimize-annotation%)
           _tbl39581_)))))
  (define gxc#apply-optimize-annotated
    (lambda (_stx39574_ . _args39576_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39574_ _args39576_))
       gxc#current-compile-methods
       (force gxc#&optmize-annotated))))
  (define gxc#&generate-runtime-repr
    (make-promise
     (lambda ()
       (let ((_tbl39571_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl39571_ (force gxc#&generate-runtime))
           (table-set! _tbl39571_ '%#quote-syntax identity)
           _tbl39571_)))))
  (define gxc#apply-generate-runtime-repr
    (lambda (_stx39564_ . _args39566_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39564_ _args39566_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-repr))))
  (define gxc#&push-match-vars
    (make-promise
     (lambda ()
       (let ((_tbl39561_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl39561_ '%#lambda gxc#xform-lambda%)
           (table-set!
            _tbl39561_
            '%#let-values
            gxc#push-match-vars-let-values%)
           (table-set! _tbl39561_ '%#letrec-values gxc#push-match-vars-stop)
           (table-set! _tbl39561_ '%#if gxc#push-match-vars-if%)
           (table-set! _tbl39561_ '%#call gxc#push-match-vars-call%)
           _tbl39561_)))))
  (define gxc#apply-push-match-vars
    (lambda (_stx39554_ . _args39556_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39554_ _args39556_))
       gxc#current-compile-methods
       (force gxc#&push-match-vars))))
  (define gxc#optimize-annotation%
    (lambda (_stx39475_)
      (let* ((___stx3959739598_ _stx39475_)
             (_g3947839495_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx3959739598_))))
        (let ((___kont3959939600_
               (lambda (_L39531_ _L39532_)
                 (let ((_$e39548_ (gx#stx-e _L39532_)))
                   (if (eq? '@match _$e39548_)
                       (begin
                         (gxc#verbose '"Optimizing match expansion")
                         (gxc#optimize-match _L39531_))
                       (if (eq? '@syntax-case _$e39548_)
                           (begin
                             (gxc#verbose '"Optimizing syntax-case expansion")
                             (gxc#optimize-syntax-case _L39531_))
                           (begin
                             (gxc#verbose
                              '"Ignoring uknown annotation "
                              (gx#stx-e _L39532_))
                             (gxc#compile-e _L39531_)))))))
              (___kont3960139602_
               (lambda () (gxc#xform-begin-annotation% _stx39475_))))
          (let ((___match3962239623_
                 (lambda (_e3948239507_
                          _hd3948339510_
                          _tl3948439512_
                          _e3948539515_
                          _hd3948639518_
                          _tl3948739520_
                          _e3948839523_
                          _hd3948939526_
                          _tl3949039528_)
                   (let ((_L39531_ _hd3948939526_) (_L39532_ _hd3948639518_))
                     (if (gx#identifier? _L39532_)
                         (___kont3959939600_ _L39531_ _L39532_)
                         (___kont3960139602_))))))
            (if (gx#stx-pair? ___stx3959739598_)
                (let ((_e3948239507_ (gx#stx-e ___stx3959739598_)))
                  (let ((_tl3948439512_ (##cdr _e3948239507_))
                        (_hd3948339510_ (##car _e3948239507_)))
                    (if (gx#stx-pair? _tl3948439512_)
                        (let ((_e3948539515_ (gx#stx-e _tl3948439512_)))
                          (let ((_tl3948739520_ (##cdr _e3948539515_))
                                (_hd3948639518_ (##car _e3948539515_)))
                            (if (gx#stx-pair? _tl3948739520_)
                                (let ((_e3948839523_
                                       (gx#stx-e _tl3948739520_)))
                                  (let ((_tl3949039528_ (##cdr _e3948839523_))
                                        (_hd3948939526_ (##car _e3948839523_)))
                                    (if (gx#stx-null? _tl3949039528_)
                                        (___match3962239623_
                                         _e3948239507_
                                         _hd3948339510_
                                         _tl3948439512_
                                         _e3948539515_
                                         _hd3948639518_
                                         _tl3948739520_
                                         _e3948839523_
                                         _hd3948939526_
                                         _tl3949039528_)
                                        (___kont3960139602_))))
                                (___kont3960139602_))))
                        (___kont3960139602_))))
                (___kont3960139602_)))))))
  (define gxc#optimize-match
    (lambda (_stx38774_)
      (let* ((_g3877638806_
              (lambda (_g3877738803_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3877738803_)))
             (_g3877539472_
              (lambda (_g3877738809_)
                (if (gx#stx-pair? _g3877738809_)
                    (let ((_e3878138811_ (gx#stx-e _g3877738809_)))
                      (let ((_hd3878238814_ (##car _e3878138811_))
                            (_tl3878338816_ (##cdr _e3878138811_)))
                        (if (gx#identifier? _hd3878238814_)
                            (if (gx#stx-eq? '%#let-values _hd3878238814_)
                                (if (gx#stx-pair? _tl3878338816_)
                                    (let ((_e3878438819_
                                           (gx#stx-e _tl3878338816_)))
                                      (let ((_hd3878538822_
                                             (##car _e3878438819_))
                                            (_tl3878638824_
                                             (##cdr _e3878438819_)))
                                        (if (gx#stx-pair? _hd3878538822_)
                                            (let ((_e3878738827_
                                                   (gx#stx-e _hd3878538822_)))
                                              (let ((_hd3878838830_
                                                     (##car _e3878738827_))
                                                    (_tl3878938832_
                                                     (##cdr _e3878738827_)))
                                                (if (gx#stx-pair?
                                                     _hd3878838830_)
                                                    (let ((_e3879038835_
                                                           (gx#stx-e
                                                            _hd3878838830_)))
                                                      (let ((_hd3879138838_
                                                             (##car _e3879038835_))
                                                            (_tl3879238840_
                                                             (##cdr _e3879038835_)))
                                                        (if (gx#stx-pair?
                                                             _hd3879138838_)
                                                            (let ((_e3879338843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3879138838_)))
                      (let ((_hd3879438846_ (##car _e3879338843_))
                            (_tl3879538848_ (##cdr _e3879338843_)))
                        (if (gx#stx-null? _tl3879538848_)
                            (if (gx#stx-pair? _tl3879238840_)
                                (let ((_e3879638851_
                                       (gx#stx-e _tl3879238840_)))
                                  (let ((_hd3879738854_ (##car _e3879638851_))
                                        (_tl3879838856_ (##cdr _e3879638851_)))
                                    (if (gx#stx-null? _tl3879838856_)
                                        (if (gx#stx-null? _tl3878938832_)
                                            (if (gx#stx-pair? _tl3878638824_)
                                                (let ((_e3879938859_
                                                       (gx#stx-e
                                                        _tl3878638824_)))
                                                  (let ((_hd3880038862_
                                                         (##car _e3879938859_))
                                                        (_tl3880138864_
                                                         (##cdr _e3879938859_)))
                                                    (if (gx#stx-null?
                                                         _tl3880138864_)
                                                        ((lambda (_L38867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L38868_
                          _L38869_)
                   (let _lp38893_ ((_body38895_ _L38867_)
                                   (_negation38896_ (cons _L38869_ _L38868_))
                                   (_clauses38897_ '())
                                   (_konts38898_ '()))
                     (let* ((___stx3980539806_ _body38895_)
                            (_g3890138941_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx3980539806_))))
                       (let ((___kont3980739808_
                              (lambda (_L39271_)
                                (let* ((___stx3974139742_ _L39271_)
                                       (_g3928539315_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx3974139742_))))
                                  (let ((___kont3974339744_
                                         (lambda (_L39411_ _L39412_ _L39413_)
                                           (if (null? _clauses38897_)
                                               (let* ((_negation3943739444_
                                                       _negation38896_)
                                                      (_E3943939448_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _negation3943739444_)))
                                                      (_K3944039454_
                                                       (lambda (_negate39451_
                                                                _E39452_)
                                                         (gxc#xform-wrap-source
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _E39452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _negate39451_ '()))
                                    '())
                              (cons (cons '%#let-values
                                          (cons (cons (cons (cons _L39413_ '())
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L39412_)
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L39411_ '())))
                                    '())))
                  _stx38774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _negation3943739444_)
                                                     (let ((_hd3944139457_
                                                            (##car _negation3943739444_))
                                                           (_tl3944239459_
                                                            (##cdr _negation3943739444_)))
                                                       (let* ((_E39462_
                                                               _hd3944139457_)
                                                              (_negate39464_
                                                               _tl3944239459_))
                                                         (_K3944039454_
                                                          _negate39464_
                                                          _E39462_)))
                                                     (_E3943939448_)))
                                               (gxc#optimize-match-body
                                                _stx38774_
                                                _negation38896_
                                                (cons (cons '#f
                                                            (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#lambda)
                          (cons '() (cons _L39411_ '()))))
              _clauses38897_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _L39413_
                                                            (gxc#compile-e
                                                             _L39412_))
                                                      _konts38898_)))))
                                        (___kont3974539746_
                                         (lambda ()
                                           (let* ((_negation3932139328_
                                                   _negation38896_)
                                                  (_E3932339332_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _negation3932139328_)))
                                                  (_K3932439338_
                                                   (lambda (_negate39335_
                                                            _E39336_)
                                                     (gxc#xform-wrap-source
                                                      (cons '%#let-values
                                                            (cons (cons (cons (cons _E39336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                            '())
                                      (cons _negate39335_ '()))
                                '())
                          (cons _L39271_ '())))
              _stx38774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _negation3932139328_)
                                                 (let ((_hd3932539341_
                                                        (##car _negation3932139328_))
                                                       (_tl3932639343_
                                                        (##cdr _negation3932139328_)))
                                                   (let* ((_E39346_
                                                           _hd3932539341_)
                                                          (_negate39348_
                                                           _tl3932639343_))
                                                     (_K3932439338_
                                                      _negate39348_
                                                      _E39346_)))
                                                 (_E3932339332_))))))
                                    (let ((_g3928439350_
                                           (lambda ()
                                             (if (null? _clauses38897_)
                                                 (___kont3974539746_)
                                                 (_g3928539315_)))))
                                      (if (gx#stx-pair? ___stx3974139742_)
                                          (let ((_e3929039355_
                                                 (gx#stx-e ___stx3974139742_)))
                                            (let ((_tl3929239360_
                                                   (##cdr _e3929039355_))
                                                  (_hd3929139358_
                                                   (##car _e3929039355_)))
                                              (if (gx#identifier?
                                                   _hd3929139358_)
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd3929139358_)
                                                      (if (gx#stx-pair?
                                                           _tl3929239360_)
                                                          (let ((_e3929339363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3929239360_)))
                    (let ((_tl3929539368_ (##cdr _e3929339363_))
                          (_hd3929439366_ (##car _e3929339363_)))
                      (if (gx#stx-pair? _hd3929439366_)
                          (let ((_e3929639371_ (gx#stx-e _hd3929439366_)))
                            (let ((_tl3929839376_ (##cdr _e3929639371_))
                                  (_hd3929739374_ (##car _e3929639371_)))
                              (if (gx#stx-pair? _hd3929739374_)
                                  (let ((_e3929939379_
                                         (gx#stx-e _hd3929739374_)))
                                    (let ((_tl3930139384_
                                           (##cdr _e3929939379_))
                                          (_hd3930039382_
                                           (##car _e3929939379_)))
                                      (if (gx#stx-pair? _hd3930039382_)
                                          (let ((_e3930239387_
                                                 (gx#stx-e _hd3930039382_)))
                                            (let ((_tl3930439392_
                                                   (##cdr _e3930239387_))
                                                  (_hd3930339390_
                                                   (##car _e3930239387_)))
                                              (if (gx#stx-null? _tl3930439392_)
                                                  (if (gx#stx-pair?
                                                       _tl3930139384_)
                                                      (let ((_e3930539395_
                                                             (gx#stx-e
                                                              _tl3930139384_)))
                                                        (let ((_tl3930739400_
                                                               (##cdr _e3930539395_))
                                                              (_hd3930639398_
                                                               (##car _e3930539395_)))
                                                          (if (gx#stx-null?
                                                               _tl3930739400_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3929839376_)
                          (if (gx#stx-pair? _tl3929539368_)
                              (let ((_e3930839403_ (gx#stx-e _tl3929539368_)))
                                (let ((_tl3931039408_ (##cdr _e3930839403_))
                                      (_hd3930939406_ (##car _e3930839403_)))
                                  (if (gx#stx-null? _tl3931039408_)
                                      (___kont3974339744_
                                       _hd3930939406_
                                       _hd3930639398_
                                       _hd3930339390_)
                                      (_g3928439350_))))
                              (_g3928439350_))
                          (_g3928439350_))
                      (_g3928439350_))))
              (_g3928439350_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3928439350_))))
                                          (_g3928439350_))))
                                  (_g3928439350_))))
                          (_g3928439350_))))
                  (_g3928439350_))
              (_g3928439350_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3928439350_))))
                                          (_g3928439350_)))))))
                             (___kont3980939810_
                              (lambda (_L39002_ _L39003_ _L39004_)
                                (let* ((___stx3962539626_ _L39003_)
                                       (_g3903139080_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx3962539626_))))
                                  (let ((___kont3962739628_
                                         (lambda (_L39208_ _L39209_ _L39210_)
                                           (_lp38893_
                                            _L39002_
                                            _negation38896_
                                            (cons (cons _L39004_
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#lambda)
                                                              (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L39208_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _clauses38897_)
                                            (cons (cons _L39210_
                                                        (gxc#compile-e
                                                         _L39209_))
                                                  _konts38898_))))
                                        (___kont3962939630_
                                         (lambda (_L39109_)
                                           (_lp38893_
                                            _L39002_
                                            (cons _L39004_
                                                  (gxc#compile-e _L39109_))
                                            _clauses38897_
                                            _konts38898_))))
                                    (if (gx#stx-pair? ___stx3962539626_)
                                        (let ((_e3903639128_
                                               (gx#stx-e ___stx3962539626_)))
                                          (let ((_tl3903839133_
                                                 (##cdr _e3903639128_))
                                                (_hd3903739131_
                                                 (##car _e3903639128_)))
                                            (if (gx#identifier? _hd3903739131_)
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd3903739131_)
                                                    (if (gx#stx-pair?
                                                         _tl3903839133_)
                                                        (let ((_e3903939136_
                                                               (gx#stx-e
                                                                _tl3903839133_)))
                                                          (let ((_tl3904139141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3903939136_))
                        (_hd3904039139_ (##car _e3903939136_)))
                    (if (gx#stx-null? _hd3904039139_)
                        (if (gx#stx-pair? _tl3904139141_)
                            (let ((_e3904239144_ (gx#stx-e _tl3904139141_)))
                              (let ((_tl3904439149_ (##cdr _e3904239144_))
                                    (_hd3904339147_ (##car _e3904239144_)))
                                (if (gx#stx-pair? _hd3904339147_)
                                    (let ((_e3904539152_
                                           (gx#stx-e _hd3904339147_)))
                                      (let ((_tl3904739157_
                                             (##cdr _e3904539152_))
                                            (_hd3904639155_
                                             (##car _e3904539152_)))
                                        (if (gx#identifier? _hd3904639155_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3904639155_)
                                                (if (gx#stx-pair?
                                                     _tl3904739157_)
                                                    (let ((_e3904839160_
                                                           (gx#stx-e
                                                            _tl3904739157_)))
                                                      (let ((_tl3905039165_
                                                             (##cdr _e3904839160_))
                                                            (_hd3904939163_
                                                             (##car _e3904839160_)))
                                                        (if (gx#stx-pair?
                                                             _hd3904939163_)
                                                            (let ((_e3905139168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3904939163_)))
                      (let ((_tl3905339173_ (##cdr _e3905139168_))
                            (_hd3905239171_ (##car _e3905139168_)))
                        (if (gx#stx-pair? _hd3905239171_)
                            (let ((_e3905439176_ (gx#stx-e _hd3905239171_)))
                              (let ((_tl3905639181_ (##cdr _e3905439176_))
                                    (_hd3905539179_ (##car _e3905439176_)))
                                (if (gx#stx-pair? _hd3905539179_)
                                    (let ((_e3905739184_
                                           (gx#stx-e _hd3905539179_)))
                                      (let ((_tl3905939189_
                                             (##cdr _e3905739184_))
                                            (_hd3905839187_
                                             (##car _e3905739184_)))
                                        (if (gx#stx-null? _tl3905939189_)
                                            (if (gx#stx-pair? _tl3905639181_)
                                                (let ((_e3906039192_
                                                       (gx#stx-e
                                                        _tl3905639181_)))
                                                  (let ((_tl3906239197_
                                                         (##cdr _e3906039192_))
                                                        (_hd3906139195_
                                                         (##car _e3906039192_)))
                                                    (if (gx#stx-null?
                                                         _tl3906239197_)
                                                        (if (gx#stx-null?
                                                             _tl3905339173_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3905039165_)
                        (let ((_e3906339200_ (gx#stx-e _tl3905039165_)))
                          (let ((_tl3906539205_ (##cdr _e3906339200_))
                                (_hd3906439203_ (##car _e3906339200_)))
                            (if (gx#stx-null? _tl3906539205_)
                                (if (gx#stx-null? _tl3904439149_)
                                    (___kont3962739628_
                                     _hd3906439203_
                                     _hd3906139195_
                                     _hd3905839187_)
                                    (_g3903139080_))
                                (_g3903139080_))))
                        (_g3903139080_))
                    (_g3903139080_))
                (_g3903139080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3903139080_))
                                            (_g3903139080_))))
                                    (_g3903139080_))))
                            (_g3903139080_))))
                    (_g3903139080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3903139080_))
                                                (_g3903139080_))
                                            (_g3903139080_))))
                                    (_g3903139080_))))
                            (_g3903139080_))
                        (_g3903139080_))))
                (_g3903139080_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#begin-annotation
                                                         _hd3903739131_)
                                                        (if (gx#stx-pair?
                                                             _tl3903839133_)
                                                            (let ((_e3907039093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3903839133_)))
                      (let ((_tl3907239098_ (##cdr _e3907039093_))
                            (_hd3907139096_ (##car _e3907039093_)))
                        (if (gx#identifier? _hd3907139096_)
                            (if (gx#stx-eq? '@match-else _hd3907139096_)
                                (if (gx#stx-pair? _tl3907239098_)
                                    (let ((_e3907339101_
                                           (gx#stx-e _tl3907239098_)))
                                      (let ((_tl3907539106_
                                             (##cdr _e3907339101_))
                                            (_hd3907439104_
                                             (##car _e3907339101_)))
                                        (if (gx#stx-null? _tl3907539106_)
                                            (___kont3962939630_ _hd3907439104_)
                                            (_g3903139080_))))
                                    (_g3903139080_))
                                (_g3903139080_))
                            (_g3903139080_))))
                    (_g3903139080_))
                (_g3903139080_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3903139080_))))
                                        (_g3903139080_)))))))
                         (if (gx#stx-pair? ___stx3980539806_)
                             (let ((_e3890439247_
                                    (gx#stx-e ___stx3980539806_)))
                               (let ((_tl3890639252_ (##cdr _e3890439247_))
                                     (_hd3890539250_ (##car _e3890439247_)))
                                 (if (gx#identifier? _hd3890539250_)
                                     (if (gx#stx-eq?
                                          '%#begin-annotation
                                          _hd3890539250_)
                                         (if (gx#stx-pair? _tl3890639252_)
                                             (let ((_e3890739255_
                                                    (gx#stx-e _tl3890639252_)))
                                               (let ((_tl3890939260_
                                                      (##cdr _e3890739255_))
                                                     (_hd3890839258_
                                                      (##car _e3890739255_)))
                                                 (if (gx#identifier?
                                                      _hd3890839258_)
                                                     (if (gx#stx-eq?
                                                          '@match-body
                                                          _hd3890839258_)
                                                         (if (gx#stx-pair?
                                                              _tl3890939260_)
                                                             (let ((_e3891039263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3890939260_)))
                       (let ((_tl3891239268_ (##cdr _e3891039263_))
                             (_hd3891139266_ (##car _e3891039263_)))
                         (if (gx#stx-null? _tl3891239268_)
                             (___kont3980739808_ _hd3891139266_)
                             (_g3890138941_))))
                     (_g3890138941_))
                 (_g3890138941_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3890138941_))))
                                             (_g3890138941_))
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd3890539250_)
                                             (if (gx#stx-pair? _tl3890639252_)
                                                 (let ((_e3891938954_
                                                        (gx#stx-e
                                                         _tl3890639252_)))
                                                   (let ((_tl3892138959_
                                                          (##cdr _e3891938954_))
                                                         (_hd3892038957_
                                                          (##car _e3891938954_)))
                                                     (if (gx#stx-pair?
                                                          _hd3892038957_)
                                                         (let ((_e3892238962_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3892038957_)))
                   (let ((_tl3892438967_ (##cdr _e3892238962_))
                         (_hd3892338965_ (##car _e3892238962_)))
                     (if (gx#stx-pair? _hd3892338965_)
                         (let ((_e3892538970_ (gx#stx-e _hd3892338965_)))
                           (let ((_tl3892738975_ (##cdr _e3892538970_))
                                 (_hd3892638973_ (##car _e3892538970_)))
                             (if (gx#stx-pair? _hd3892638973_)
                                 (let ((_e3892838978_
                                        (gx#stx-e _hd3892638973_)))
                                   (let ((_tl3893038983_ (##cdr _e3892838978_))
                                         (_hd3892938981_
                                          (##car _e3892838978_)))
                                     (if (gx#stx-null? _tl3893038983_)
                                         (if (gx#stx-pair? _tl3892738975_)
                                             (let ((_e3893138986_
                                                    (gx#stx-e _tl3892738975_)))
                                               (let ((_tl3893338991_
                                                      (##cdr _e3893138986_))
                                                     (_hd3893238989_
                                                      (##car _e3893138986_)))
                                                 (if (gx#stx-null?
                                                      _tl3893338991_)
                                                     (if (gx#stx-null?
                                                          _tl3892438967_)
                                                         (if (gx#stx-pair?
                                                              _tl3892138959_)
                                                             (let ((_e3893438994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3892138959_)))
                       (let ((_tl3893638999_ (##cdr _e3893438994_))
                             (_hd3893538997_ (##car _e3893438994_)))
                         (if (gx#stx-null? _tl3893638999_)
                             (___kont3980939810_
                              _hd3893538997_
                              _hd3893238989_
                              _hd3892938981_)
                             (_g3890138941_))))
                     (_g3890138941_))
                 (_g3890138941_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3890138941_))))
                                             (_g3890138941_))
                                         (_g3890138941_))))
                                 (_g3890138941_))))
                         (_g3890138941_))))
                 (_g3890138941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3890138941_))
                                             (_g3890138941_)))
                                     (_g3890138941_))))
                             (_g3890138941_))))))
                 _hd3880038862_
                 _hd3879738854_
                 _hd3879438846_)
                (_g3877638806_ _g3877738809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3877638806_ _g3877738809_))
                                            (_g3877638806_ _g3877738809_))
                                        (_g3877638806_ _g3877738809_))))
                                (_g3877638806_ _g3877738809_))
                            (_g3877638806_ _g3877738809_))))
                    (_g3877638806_ _g3877738809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3877638806_
                                                     _g3877738809_))))
                                            (_g3877638806_ _g3877738809_))))
                                    (_g3877638806_ _g3877738809_))
                                (_g3877638806_ _g3877738809_))
                            (_g3877638806_ _g3877738809_))))
                    (_g3877638806_ _g3877738809_)))))
        (_g3877539472_ _stx38774_))))
  (define gxc#optimize-match-body
    (lambda (_stx38475_ _negation38476_ _clauses38477_ _konts38478_)
      (letrec ((_push-variables38480_
                (lambda (_clause38727_ _kont38728_)
                  (let ((_clause3872938740_ _clause38727_)
                        (_kont3873038742_ _kont38728_))
                    (let* ((_E3873238746_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause3872938740_
                                     _kont3873038742_)))
                           (_K3873338762_
                            (lambda (_clause-lambda38749_ _clause-name38750_)
                              (let ((_K3873438754_
                                     (lambda (_K38752_)
                                       (cons _clause-name38750_
                                             (gxc#apply-push-match-vars
                                              _clause-lambda38749_
                                              '()
                                              _K38752_)))))
                                (if (##pair? _kont3873038742_)
                                    (let* ((_hd3873538757_
                                            (##car _kont3873038742_))
                                           (_K38760_ _hd3873538757_))
                                      (_K3873438754_ _K38760_))
                                    (_E3873238746_))))))
                      (if (##pair? _clause3872938740_)
                          (let ((_hd3873738765_ (##car _clause3872938740_))
                                (_tl3873838767_ (##cdr _clause3872938740_)))
                            (let* ((_clause-name38770_ _hd3873738765_)
                                   (_clause-lambda38772_ _tl3873838767_))
                              (_K3873338762_
                               _clause-lambda38772_
                               _clause-name38770_)))
                          (_E3873238746_))))))
               (_start-match38481_
                (lambda (_kont38661_)
                  (let* ((_g3866338679_
                          (lambda (_g3866438676_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3866438676_)))
                         (_g3866238724_
                          (lambda (_g3866438682_)
                            (if (gx#stx-pair? _g3866438682_)
                                (let ((_e3866638684_ (gx#stx-e _g3866438682_)))
                                  (let ((_hd3866738687_ (##car _e3866638684_))
                                        (_tl3866838689_ (##cdr _e3866638684_)))
                                    (if (gx#identifier? _hd3866738687_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3866738687_)
                                            (if (gx#stx-pair? _tl3866838689_)
                                                (let ((_e3866938692_
                                                       (gx#stx-e
                                                        _tl3866838689_)))
                                                  (let ((_hd3867038695_
                                                         (##car _e3866938692_))
                                                        (_tl3867138697_
                                                         (##cdr _e3866938692_)))
                                                    (if (gx#stx-null?
                                                         _hd3867038695_)
                                                        (if (gx#stx-pair?
                                                             _tl3867138697_)
                                                            (let ((_e3867238700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3867138697_)))
                      (let ((_hd3867338703_ (##car _e3867238700_))
                            (_tl3867438705_ (##cdr _e3867238700_)))
                        (if (gx#stx-null? _tl3867438705_)
                            ((lambda (_L38708_) _L38708_) _hd3867338703_)
                            (_g3866338679_ _g3866438682_))))
                    (_g3866338679_ _g3866438682_))
                (_g3866338679_ _g3866438682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3866338679_ _g3866438682_))
                                            (_g3866338679_ _g3866438682_))
                                        (_g3866338679_ _g3866438682_))))
                                (_g3866338679_ _g3866438682_)))))
                    (_g3866238724_ _kont38661_))))
               (_match-body38482_
                (lambda (_blocks38558_)
                  (let* ((_blocks3855938568_ _blocks38558_)
                         (_E3856138572_
                          (lambda ()
                            (error '"No clause matching" _blocks3855938568_)))
                         (_K3856238644_
                          (lambda (_rest38575_ _start38576_)
                            (let _lp38578_ ((_rest38580_ _rest38575_)
                                            (_body38581_
                                             (_start-match38481_
                                              _start38576_)))
                              (let* ((_rest3858238590_ _rest38580_)
                                     (_else3858438598_ (lambda () _body38581_))
                                     (_K3858638632_
                                      (lambda (_rest38601_ _block38602_)
                                        (let* ((_block3860338610_ _block38602_)
                                               (_E3860538614_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _block3860338610_)))
                                               (_K3860638620_
                                                (lambda (_kont38617_ _K38618_)
                                                  (_lp38578_
                                                   _rest38601_
                                                   (cons '%#let-values
                                                         (cons (cons (cons (cons _K38618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons _kont38617_ '()))
                             '())
                       (cons _body38581_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _block3860338610_)
                                              (let ((_hd3860738623_
                                                     (##car _block3860338610_))
                                                    (_tl3860838625_
                                                     (##cdr _block3860338610_)))
                                                (let* ((_K38628_
                                                        _hd3860738623_)
                                                       (_kont38630_
                                                        _tl3860838625_))
                                                  (_K3860638620_
                                                   _kont38630_
                                                   _K38628_)))
                                              (_E3860538614_))))))
                                (if (##pair? _rest3858238590_)
                                    (let ((_hd3858738635_
                                           (##car _rest3858238590_))
                                          (_tl3858838637_
                                           (##cdr _rest3858238590_)))
                                      (let* ((_block38640_ _hd3858738635_)
                                             (_rest38642_ _tl3858838637_))
                                        (_K3858638632_
                                         _rest38642_
                                         _block38640_)))
                                    (_else3858438598_)))))))
                    (if (##pair? _blocks3855938568_)
                        (let ((_hd3856338647_ (##car _blocks3855938568_))
                              (_tl3856438649_ (##cdr _blocks3855938568_)))
                          (if (##pair? _hd3856338647_)
                              (let ((_hd3856538652_ (##car _hd3856338647_))
                                    (_tl3856638654_ (##cdr _hd3856338647_)))
                                (if (##eq? _hd3856538652_ '#f)
                                    (let* ((_start38657_ _tl3856638654_)
                                           (_rest38659_ _tl3856438649_))
                                      (_K3856238644_ _rest38659_ _start38657_))
                                    (_E3856138572_)))
                              (_E3856138572_)))
                        (_E3856138572_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_clauses38485_
                   (map _push-variables38480_ _clauses38477_ _konts38478_))
                  (_blocks38487_
                   (gxc#optimize-match-basic-blocks _clauses38485_))
                  (_blocks38489_
                   (gxc#optimize-match-fold-basic-blocks _blocks38487_))
                  (_body38491_ (_match-body38482_ _blocks38489_))
                  (_bind38525_
                   (map (lambda (_e3849238494_)
                          (let* ((_g3849638503_ _e3849238494_)
                                 (_E3849838507_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g3849638503_)))
                                 (_K3849938513_
                                  (lambda (_kont38510_ _K38511_)
                                    (cons (cons _K38511_ '())
                                          (cons _kont38510_ '())))))
                            (if (##pair? _g3849638503_)
                                (let ((_hd3850038516_ (##car _g3849638503_))
                                      (_tl3850138518_ (##cdr _g3849638503_)))
                                  (let* ((_K38521_ _hd3850038516_)
                                         (_kont38523_ _tl3850138518_))
                                    (_K3849938513_ _kont38523_ _K38521_)))
                                (_E3849838507_))))
                        _konts38478_))
                  (_negate38555_
                   (let* ((_negation3852638533_ _negation38476_)
                          (_E3852838537_
                           (lambda ()
                             (error '"No clause matching"
                                    _negation3852638533_)))
                          (_K3852938543_
                           (lambda (_kont38540_ _K38541_)
                             (cons (cons _K38541_ '())
                                   (cons _kont38540_ '())))))
                     (if (##pair? _negation3852638533_)
                         (let ((_hd3853038546_ (##car _negation3852638533_))
                               (_tl3853138548_ (##cdr _negation3852638533_)))
                           (let* ((_K38551_ _hd3853038546_)
                                  (_kont38553_ _tl3853138548_))
                             (_K3852938543_ _kont38553_ _K38551_)))
                         (_E3852838537_)))))
             (gxc#xform-wrap-source
              (cons '%#let-values
                    (cons (cons _negate38555_ '())
                          (cons (cons '%#let-values
                                      (cons _bind38525_
                                            (cons _body38491_ '())))
                                '())))
              _stx38475_)))
         gx#current-expander-context
         (let ((__obj42670 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj42670) __obj42670))))))
  (define gxc#optimize-match-basic-blocks
    (lambda (_clauses38435_)
      (let _lp38437_ ((_rest38439_ _clauses38435_) (_blocks38440_ '()))
        (let* ((_rest3844138449_ _rest38439_)
               (_else3844338457_ (lambda () (reverse _blocks38440_)))
               (_K3844538463_
                (lambda (_rest38460_ _clause38461_)
                  (_lp38437_
                   _rest38460_
                   (gxc#optimize-match-lift-basic-blocks
                    _clause38461_
                    _blocks38440_)))))
          (if (##pair? _rest3844138449_)
              (let ((_hd3844638466_ (##car _rest3844138449_))
                    (_tl3844738468_ (##cdr _rest3844138449_)))
                (let* ((_clause38471_ _hd3844638466_)
                       (_rest38473_ _tl3844738468_))
                  (_K3844538463_ _rest38473_ _clause38471_)))
              (_else3844338457_))))))
  (define gxc#optimize-match-lift-basic-blocks
    (lambda (_clause37779_ _blocks37780_)
      (letrec ((_bind->args37782_
                (lambda (_bind38430_)
                  (foldl1 (lambda (_b38432_ _r38433_)
                            (cons (cons '%#ref (cons (car _b38432_) '()))
                                  _r38433_))
                          '()
                          _bind38430_)))
               (_create-block37783_
                (lambda (_body38379_ _let-bind38380_ _bind38381_ _assert38382_)
                  (let* ((_id38384_ (make-symbol (gensym '__match)))
                         (_id38386_ (gx#core-quote-syntax__0 _id38384_))
                         (_g42672_ (gx#core-bind-runtime!__0 _id38386_))
                         (_block38389_
                          (cons _id38386_
                                (cons _body38379_
                                      (cons _bind38381_
                                            (cons _assert38382_ '())))))
                         (_continue38391_
                          (cons '%#call
                                (cons (cons '%#ref (cons _id38386_ '()))
                                      (_bind->args37782_ _bind38381_))))
                         (_continue38427_
                          (if (null? _let-bind38380_)
                              _continue38391_
                              (let ((_locals38425_
                                     (map (lambda (_e3839238394_)
                                            (let* ((_g3839638403_
                                                    _e3839238394_)
                                                   (_E3839838407_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g3839638403_)))
                                                   (_K3839938413_
                                                    (lambda (_expr38410_
                                                             _id38411_)
                                                      (cons (cons _id38411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr38410_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g3839638403_)
                                                  (let ((_hd3840038416_
                                                         (##car _g3839638403_))
                                                        (_tl3840138418_
                                                         (##cdr _g3839638403_)))
                                                    (let* ((_id38421_
                                                            _hd3840038416_)
                                                           (_expr38423_
                                                            _tl3840138418_))
                                                      (_K3839938413_
                                                       _expr38423_
                                                       _id38421_)))
                                                  (_E3839838407_))))
                                          _let-bind38380_)))
                                (cons '%#let-values
                                      (cons _locals38425_
                                            (cons _continue38391_ '())))))))
                    (values _continue38427_ _block38389_))))
               (_basic-block37784_
                (lambda (_body37965_ _bind37966_ _assert37967_)
                  (let* ((___stx3991339914_ _body37965_)
                         (_g3797238056_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3991339914_))))
                    (let ((___kont3991539916_
                           (lambda (_L38315_ _L38316_ _L38317_)
                             (let ((_g42673_
                                    (_create-block37783_
                                     _L38316_
                                     '()
                                     _bind37966_
                                     (cons (cons _L38317_ '#t)
                                           _assert37967_))))
                               (begin
                                 (let ((_g42674_
                                        (if (##values? _g42673_)
                                            (##vector-length _g42673_)
                                            1)))
                                   (if (not (##fx= _g42674_ 2))
                                       (error "Context expects 2 values"
                                              _g42674_)))
                                 (let ((_k-continue38335_
                                        (##vector-ref _g42673_ 0))
                                       (_k-block38336_
                                        (##vector-ref _g42673_ 1)))
                                   (let* ((___stx3989539896_ _L38315_)
                                          (_g3833938348_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx3989539896_))))
                                     (let ((___kont3989739898_
                                            (lambda ()
                                              (values (cons '%#if
                                                            (cons _L38317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _k-continue38335_ (cons _L38315_ '()))))
              (cons _k-block38336_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont3989939900_
                                            (lambda ()
                                              (let ((_g42675_
                                                     (_create-block37783_
                                                      _L38315_
                                                      '()
                                                      _bind37966_
                                                      (cons (cons _L38317_ '#f)
                                                            _assert37967_))))
                                                (begin
                                                  (let ((_g42676_
                                                         (if (##values?
                                                              _g42675_)
                                                             (##vector-length
                                                              _g42675_)
                                                             1)))
                                                    (if (not (##fx= _g42676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g42676_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_e-continue38355_
                                                         (##vector-ref
                                                          _g42675_
                                                          0))
                                                        (_e-block38356_
                                                         (##vector-ref
                                                          _g42675_
                                                          1)))
                                                    (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L38317_
                                (cons _k-continue38335_
                                      (cons _e-continue38355_ '()))))
                    (cons _k-block38336_ (cons _e-block38356_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? ___stx3989539896_)
                                           (let ((_e3834138363_
                                                  (gx#stx-e
                                                   ___stx3989539896_)))
                                             (let ((_tl3834338368_
                                                    (##cdr _e3834138363_))
                                                   (_hd3834238366_
                                                    (##car _e3834138363_)))
                                               (if (gx#identifier?
                                                    _hd3834238366_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _hd3834238366_)
                                                       (___kont3989739898_)
                                                       (___kont3989939900_))
                                                   (___kont3989939900_))))
                                           (___kont3989939900_)))))))))
                          (___kont3991739918_
                           (lambda () (values _body37965_ '())))
                          (___kont3992139922_
                           (lambda (_L38144_ _L38145_ _L38146_)
                             (let* ((_let-bind38181_
                                     (map cons
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3816638169_
                                                             _g3816738171_)
                                                      (cons _g3816638169_
                                                            _g3816738171_))
                                                    '()
                                                    _L38146_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3817338176_
                                                             _g3817438178_)
                                                      (cons _g3817338176_
                                                            _g3817438178_))
                                                    '()
                                                    _L38145_))))
                                    (_g42677_
                                     (_create-block37783_
                                      _L38144_
                                      _let-bind38181_
                                      (foldl1 cons _bind37966_ _let-bind38181_)
                                      _assert37967_)))
                               (begin
                                 (let ((_g42678_
                                        (if (##values? _g42677_)
                                            (##vector-length _g42677_)
                                            1)))
                                   (if (not (##fx= _g42678_ 2))
                                       (error "Context expects 2 values"
                                              _g42678_)))
                                 (let ((_continue38183_
                                        (##vector-ref _g42677_ 0))
                                       (_block38184_
                                        (##vector-ref _g42677_ 1)))
                                   (let ()
                                     (values _continue38183_
                                             (cons _block38184_ '()))))))))
                          (___kont3992539926_
                           (lambda () (values _body37965_ '()))))
                      (let* ((___match4000440005_
                              (lambda (_e3802338068_
                                       _hd3802438071_
                                       _tl3802538073_
                                       _e3802638076_
                                       _hd3802738079_
                                       _tl3802838081_
                                       ___splice3992339924_
                                       _target3802938084_
                                       _tl3803138086_)
                                (letrec ((_loop3803238089_
                                          (lambda (_hd3803038092_
                                                   _expr3803638094_
                                                   _id3803738096_)
                                            (if (gx#stx-pair? _hd3803038092_)
                                                (let ((_e3803338099_
                                                       (gx#stx-e
                                                        _hd3803038092_)))
                                                  (let ((_lp-tl3803538104_
                                                         (##cdr _e3803338099_))
                                                        (_lp-hd3803438102_
                                                         (##car _e3803338099_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3803438102_)
                                                        (let ((_e3804038107_
                                                               (gx#stx-e
                                                                _lp-hd3803438102_)))
                                                          (let ((_tl3804238112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3804038107_))
                        (_hd3804138110_ (##car _e3804038107_)))
                    (if (gx#stx-pair? _hd3804138110_)
                        (let ((_e3804338115_ (gx#stx-e _hd3804138110_)))
                          (let ((_tl3804538120_ (##cdr _e3804338115_))
                                (_hd3804438118_ (##car _e3804338115_)))
                            (if (gx#stx-null? _tl3804538120_)
                                (if (gx#stx-pair? _tl3804238112_)
                                    (let ((_e3804638123_
                                           (gx#stx-e _tl3804238112_)))
                                      (let ((_tl3804838128_
                                             (##cdr _e3804638123_))
                                            (_hd3804738126_
                                             (##car _e3804638123_)))
                                        (if (gx#stx-null? _tl3804838128_)
                                            (_loop3803238089_
                                             _lp-tl3803538104_
                                             (cons _hd3804738126_
                                                   _expr3803638094_)
                                             (cons _hd3804438118_
                                                   _id3803738096_))
                                            (___kont3992539926_))))
                                    (___kont3992539926_))
                                (___kont3992539926_))))
                        (___kont3992539926_))))
                (___kont3992539926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_id3803938133_
                                                       (reverse _id3803738096_))
                                                      (_expr3803838131_
                                                       (reverse _expr3803638094_)))
                                                  (if (gx#stx-pair?
                                                       _tl3802838081_)
                                                      (let ((_e3804938136_
                                                             (gx#stx-e
                                                              _tl3802838081_)))
                                                        (let ((_tl3805138141_
                                                               (##cdr _e3804938136_))
                                                              (_hd3805038139_
                                                               (##car _e3804938136_)))
                                                          (if (gx#stx-null?
                                                               _tl3805138141_)
                                                              (___kont3992139922_
                                                               _hd3805038139_
                                                               _expr3803838131_
                                                               _id3803938133_)
                                                              (___kont3992539926_))))
                                                      (___kont3992539926_)))))))
                                  (_loop3803238089_
                                   _target3802938084_
                                   '()
                                   '()))))
                             (___match3998039981_
                              (lambda (_e3798938192_
                                       _hd3799038195_
                                       _tl3799138197_
                                       _e3799238200_
                                       _hd3799338203_
                                       _tl3799438205_
                                       ___splice3991939920_
                                       _target3799538208_
                                       _tl3799738210_)
                                (letrec ((_loop3799838213_
                                          (lambda (_hd3799638216_)
                                            (if (gx#stx-pair? _hd3799638216_)
                                                (let ((_e3799938219_
                                                       (gx#stx-e
                                                        _hd3799638216_)))
                                                  (let ((_lp-tl3800138224_
                                                         (##cdr _e3799938219_))
                                                        (_lp-hd3800038222_
                                                         (##car _e3799938219_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3800038222_)
                                                        (let ((_e3800238227_
                                                               (gx#stx-e
                                                                _lp-hd3800038222_)))
                                                          (let ((_tl3800438232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3800238227_))
                        (_hd3800338230_ (##car _e3800238227_)))
                    (if (gx#stx-pair? _hd3800338230_)
                        (let ((_e3800538235_ (gx#stx-e _hd3800338230_)))
                          (let ((_tl3800738240_ (##cdr _e3800538235_))
                                (_hd3800638238_ (##car _e3800538235_)))
                            (if (gx#stx-null? _tl3800738240_)
                                (if (gx#stx-pair? _tl3800438232_)
                                    (let ((_e3800838243_
                                           (gx#stx-e _tl3800438232_)))
                                      (let ((_tl3801038248_
                                             (##cdr _e3800838243_))
                                            (_hd3800938246_
                                             (##car _e3800838243_)))
                                        (if (gx#stx-pair? _hd3800938246_)
                                            (let ((_e3801138251_
                                                   (gx#stx-e _hd3800938246_)))
                                              (let ((_tl3801338256_
                                                     (##cdr _e3801138251_))
                                                    (_hd3801238254_
                                                     (##car _e3801138251_)))
                                                (if (gx#identifier?
                                                     _hd3801238254_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3801238254_)
                                                        (if (gx#stx-pair?
                                                             _tl3801338256_)
                                                            (let ((_e3801438259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3801338256_)))
                      (let ((_tl3801638264_ (##cdr _e3801438259_))
                            (_hd3801538262_ (##car _e3801438259_)))
                        (if (gx#stx-null? _tl3801638264_)
                            (if (gx#stx-null? _tl3801038248_)
                                (_loop3799838213_ _lp-tl3800138224_)
                                (___match4000440005_
                                 _e3798938192_
                                 _hd3799038195_
                                 _tl3799138197_
                                 _e3799238200_
                                 _hd3799338203_
                                 _tl3799438205_
                                 ___splice3991939920_
                                 _target3799538208_
                                 _tl3799738210_))
                            (___match4000440005_
                             _e3798938192_
                             _hd3799038195_
                             _tl3799138197_
                             _e3799238200_
                             _hd3799338203_
                             _tl3799438205_
                             ___splice3991939920_
                             _target3799538208_
                             _tl3799738210_))))
                    (___match4000440005_
                     _e3798938192_
                     _hd3799038195_
                     _tl3799138197_
                     _e3799238200_
                     _hd3799338203_
                     _tl3799438205_
                     ___splice3991939920_
                     _target3799538208_
                     _tl3799738210_))
                (___match4000440005_
                 _e3798938192_
                 _hd3799038195_
                 _tl3799138197_
                 _e3799238200_
                 _hd3799338203_
                 _tl3799438205_
                 ___splice3991939920_
                 _target3799538208_
                 _tl3799738210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4000440005_
                                                     _e3798938192_
                                                     _hd3799038195_
                                                     _tl3799138197_
                                                     _e3799238200_
                                                     _hd3799338203_
                                                     _tl3799438205_
                                                     ___splice3991939920_
                                                     _target3799538208_
                                                     _tl3799738210_))))
                                            (___match4000440005_
                                             _e3798938192_
                                             _hd3799038195_
                                             _tl3799138197_
                                             _e3799238200_
                                             _hd3799338203_
                                             _tl3799438205_
                                             ___splice3991939920_
                                             _target3799538208_
                                             _tl3799738210_))))
                                    (___match4000440005_
                                     _e3798938192_
                                     _hd3799038195_
                                     _tl3799138197_
                                     _e3799238200_
                                     _hd3799338203_
                                     _tl3799438205_
                                     ___splice3991939920_
                                     _target3799538208_
                                     _tl3799738210_))
                                (___match4000440005_
                                 _e3798938192_
                                 _hd3799038195_
                                 _tl3799138197_
                                 _e3799238200_
                                 _hd3799338203_
                                 _tl3799438205_
                                 ___splice3991939920_
                                 _target3799538208_
                                 _tl3799738210_))))
                        (___match4000440005_
                         _e3798938192_
                         _hd3799038195_
                         _tl3799138197_
                         _e3799238200_
                         _hd3799338203_
                         _tl3799438205_
                         ___splice3991939920_
                         _target3799538208_
                         _tl3799738210_))))
                (___match4000440005_
                 _e3798938192_
                 _hd3799038195_
                 _tl3799138197_
                 _e3799238200_
                 _hd3799338203_
                 _tl3799438205_
                 ___splice3991939920_
                 _target3799538208_
                 _tl3799738210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (if (gx#stx-pair?
                                                       _tl3799438205_)
                                                      (let ((_e3801738268_
                                                             (gx#stx-e
                                                              _tl3799438205_)))
                                                        (let ((_tl3801938273_
                                                               (##cdr _e3801738268_))
                                                              (_hd3801838271_
                                                               (##car _e3801738268_)))
                                                          (if (gx#stx-null?
                                                               _tl3801938273_)
                                                              (___kont3991739918_)
                                                              (___match4000440005_
                                                               _e3798938192_
                                                               _hd3799038195_
                                                               _tl3799138197_
                                                               _e3799238200_
                                                               _hd3799338203_
                                                               _tl3799438205_
                                                               ___splice3991939920_
                                                               _target3799538208_
                                                               _tl3799738210_))))
                                                      (___match4000440005_
                                                       _e3798938192_
                                                       _hd3799038195_
                                                       _tl3799138197_
                                                       _e3799238200_
                                                       _hd3799338203_
                                                       _tl3799438205_
                                                       ___splice3991939920_
                                                       _target3799538208_
                                                       _tl3799738210_)))))))
                                  (_loop3799838213_ _target3799538208_)))))
                        (if (gx#stx-pair? ___stx3991339914_)
                            (let ((_e3797738283_ (gx#stx-e ___stx3991339914_)))
                              (let ((_tl3797938288_ (##cdr _e3797738283_))
                                    (_hd3797838286_ (##car _e3797738283_)))
                                (if (gx#identifier? _hd3797838286_)
                                    (if (gx#stx-eq? '%#if _hd3797838286_)
                                        (if (gx#stx-pair? _tl3797938288_)
                                            (let ((_e3798038291_
                                                   (gx#stx-e _tl3797938288_)))
                                              (let ((_tl3798238296_
                                                     (##cdr _e3798038291_))
                                                    (_hd3798138294_
                                                     (##car _e3798038291_)))
                                                (if (gx#stx-pair?
                                                     _tl3798238296_)
                                                    (let ((_e3798338299_
                                                           (gx#stx-e
                                                            _tl3798238296_)))
                                                      (let ((_tl3798538304_
                                                             (##cdr _e3798338299_))
                                                            (_hd3798438302_
                                                             (##car _e3798338299_)))
                                                        (if (gx#stx-pair?
                                                             _tl3798538304_)
                                                            (let ((_e3798638307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3798538304_)))
                      (let ((_tl3798838312_ (##cdr _e3798638307_))
                            (_hd3798738310_ (##car _e3798638307_)))
                        (if (gx#stx-null? _tl3798838312_)
                            (___kont3991539916_
                             _hd3798738310_
                             _hd3798438302_
                             _hd3798138294_)
                            (___kont3992539926_))))
                    (___kont3992539926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3992539926_))))
                                            (___kont3992539926_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3797838286_)
                                            (if (gx#stx-pair? _tl3797938288_)
                                                (let ((_e3799238200_
                                                       (gx#stx-e
                                                        _tl3797938288_)))
                                                  (let ((_tl3799438205_
                                                         (##cdr _e3799238200_))
                                                        (_hd3799338203_
                                                         (##car _e3799238200_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3799338203_)
                                                        (let ((___splice3991939920_
                                                               (gx#syntax-split-splice
                                                                _hd3799338203_
                                                                '0)))
                                                          (let ((_tl3799738210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice3991939920_ '1))
                        (_target3799538208_
                         (##vector-ref ___splice3991939920_ '0)))
                    (if (gx#stx-null? _tl3799738210_)
                        (___match3998039981_
                         _e3797738283_
                         _hd3797838286_
                         _tl3797938288_
                         _e3799238200_
                         _hd3799338203_
                         _tl3799438205_
                         ___splice3991939920_
                         _target3799538208_
                         _tl3799738210_)
                        (___kont3992539926_))))
                (___kont3992539926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3992539926_))
                                            (___kont3992539926_)))
                                    (___kont3992539926_))))
                            (___kont3992539926_)))))))
               (_fold-blocks37785_
                (lambda (_rest37884_ _blocks37885_)
                  (let* ((_rest3788637903_ _rest37884_)
                         (_E3788937907_
                          (lambda ()
                            (error '"No clause matching" _rest3788637903_))))
                    (let ((_K3789137927_
                           (lambda (_rest37918_
                                    _assert37919_
                                    _bind37920_
                                    _body37921_
                                    _name37922_)
                             (let ((_g42679_
                                    (_basic-block37784_
                                     _body37921_
                                     _bind37920_
                                     _assert37919_)))
                               (begin
                                 (let ((_g42680_
                                        (if (##values? _g42679_)
                                            (##vector-length _g42679_)
                                            1)))
                                   (if (not (##fx= _g42680_ 2))
                                       (error "Context expects 2 values"
                                              _g42680_)))
                                 (let ((_body37924_ (##vector-ref _g42679_ 0))
                                       (_body-blocks37925_
                                        (##vector-ref _g42679_ 1)))
                                   (_fold-blocks37785_
                                    (foldl1 cons
                                            _rest37918_
                                            _body-blocks37925_)
                                    (cons (cons _name37922_
                                                (cons 'continue:
                                                      (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (reverse (map car _bind37920_))
                                (cons _body37924_ '())))
                    (cons _assert37919_ (cons _bind37920_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _blocks37885_)))))))
                          (_K3789037912_ (lambda () _blocks37885_)))
                      (let ((_try-match3788837915_
                             (lambda ()
                               (if (##null? _rest3788637903_)
                                   (_K3789037912_)
                                   (_E3788937907_)))))
                        (if (##pair? _rest3788637903_)
                            (let ((_tl3789337932_ (##cdr _rest3788637903_))
                                  (_hd3789237930_ (##car _rest3788637903_)))
                              (if (##pair? _hd3789237930_)
                                  (let ((_tl3789537937_ (##cdr _hd3789237930_))
                                        (_hd3789437935_
                                         (##car _hd3789237930_)))
                                    (if (##pair? _tl3789537937_)
                                        (let ((_tl3789737944_
                                               (##cdr _tl3789537937_))
                                              (_hd3789637942_
                                               (##car _tl3789537937_)))
                                          (if (##pair? _tl3789737944_)
                                              (let ((_tl3789937951_
                                                     (##cdr _tl3789737944_))
                                                    (_hd3789837949_
                                                     (##car _tl3789737944_)))
                                                (if (##pair? _tl3789937951_)
                                                    (let ((_tl3790137958_
                                                           (##cdr _tl3789937951_))
                                                          (_hd3790037956_
                                                           (##car _tl3789937951_)))
                                                      (if (##null? _tl3790137958_)
                                                          (let ((_name37940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3789437935_)
                        (_body37947_ _hd3789637942_)
                        (_bind37954_ _hd3789837949_)
                        (_assert37961_ _hd3790037956_)
                        (_rest37963_ _tl3789337932_))
                    (_K3789137927_
                     _rest37963_
                     _assert37961_
                     _bind37954_
                     _body37947_
                     _name37940_))
                  (_E3788937907_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3788937907_)))
                                              (_E3788937907_)))
                                        (_E3788937907_)))
                                  (_E3788937907_)))
                            (_try-match3788837915_))))))))
        (let* ((_clause3778637793_ _clause37779_)
               (_E3778837797_
                (lambda () (error '"No clause matching" _clause3778637793_)))
               (_K3778937872_
                (lambda (_body37800_ _name37801_)
                  (let* ((_g3780337819_
                          (lambda (_g3780437816_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3780437816_)))
                         (_g3780237869_
                          (lambda (_g3780437822_)
                            (if (gx#stx-pair? _g3780437822_)
                                (let ((_e3780637824_ (gx#stx-e _g3780437822_)))
                                  (let ((_hd3780737827_ (##car _e3780637824_))
                                        (_tl3780837829_ (##cdr _e3780637824_)))
                                    (if (gx#identifier? _hd3780737827_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3780737827_)
                                            (if (gx#stx-pair? _tl3780837829_)
                                                (let ((_e3780937832_
                                                       (gx#stx-e
                                                        _tl3780837829_)))
                                                  (let ((_hd3781037835_
                                                         (##car _e3780937832_))
                                                        (_tl3781137837_
                                                         (##cdr _e3780937832_)))
                                                    (if (gx#stx-null?
                                                         _hd3781037835_)
                                                        (if (gx#stx-pair?
                                                             _tl3781137837_)
                                                            (let ((_e3781237840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3781137837_)))
                      (let ((_hd3781337843_ (##car _e3781237840_))
                            (_tl3781437845_ (##cdr _e3781237840_)))
                        (if (gx#stx-null? _tl3781437845_)
                            ((lambda (_L37848_)
                               (let ((_g42681_
                                      (_basic-block37784_ _L37848_ '() '())))
                                 (begin
                                   (let ((_g42682_
                                          (if (##values? _g42681_)
                                              (##vector-length _g42681_)
                                              1)))
                                     (if (not (##fx= _g42682_ 2))
                                         (error "Context expects 2 values"
                                                _g42682_)))
                                   (let ((_body37866_
                                          (##vector-ref _g42681_ 0))
                                         (_body-blocks37867_
                                          (##vector-ref _g42681_ 1)))
                                     (_fold-blocks37785_
                                      _body-blocks37867_
                                      (cons (cons _name37801_
                                                  (cons 'restart:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '() (cons _body37866_ '())))
                      (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks37780_))))))
                             _hd3781337843_)
                            (_g3780337819_ _g3780437822_))))
                    (_g3780337819_ _g3780437822_))
                (_g3780337819_ _g3780437822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3780337819_ _g3780437822_))
                                            (_g3780337819_ _g3780437822_))
                                        (_g3780337819_ _g3780437822_))))
                                (_g3780337819_ _g3780437822_)))))
                    (_g3780237869_ _body37800_)))))
          (if (##pair? _clause3778637793_)
              (let ((_hd3779037875_ (##car _clause3778637793_))
                    (_tl3779137877_ (##cdr _clause3778637793_)))
                (let* ((_name37880_ _hd3779037875_)
                       (_body37882_ _tl3779137877_))
                  (_K3778937872_ _body37882_ _name37880_)))
              (_E3778837797_))))))
  (define gxc#optimize-match-fold-basic-blocks
    (lambda (_blocks37385_)
      (let _lp37387_ ((_rest37389_ _blocks37385_) (_blocks37390_ '()))
        (let* ((_rest3739137399_ _rest37389_)
               (_else3739337448_
                (lambda ()
                  (foldl1 (lambda (_block37407_ _r37408_)
                            (let* ((_block3740937420_ _block37407_)
                                   (_E3741137424_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _block3740937420_)))
                                   (_K3741237430_
                                    (lambda (_kont37427_ _name37428_)
                                      (cons (cons _name37428_ _kont37427_)
                                            _r37408_))))
                              (if (##pair? _block3740937420_)
                                  (let ((_hd3741337433_
                                         (##car _block3740937420_))
                                        (_tl3741437435_
                                         (##cdr _block3740937420_)))
                                    (let ((_name37438_ _hd3741337433_))
                                      (if (##pair? _tl3741437435_)
                                          (let ((_tl3741637440_
                                                 (##cdr _tl3741437435_)))
                                            (if (##pair? _tl3741637440_)
                                                (let* ((_hd3741737443_
                                                        (##car _tl3741637440_))
                                                       (_kont37446_
                                                        _hd3741737443_))
                                                  (_K3741237430_
                                                   _kont37446_
                                                   _name37438_))
                                                (_E3741137424_)))
                                          (_E3741137424_))))
                                  (_E3741137424_))))
                          '()
                          _blocks37390_)))
               (_K3739537767_
                (lambda (_rest37451_ _block37452_)
                  (let* ((_block3745337478_ _block37452_)
                         (_E3745637482_
                          (lambda ()
                            (error '"No clause matching" _block3745337478_))))
                    (let ((_K3746837738_
                           (lambda (_assert37660_ _kont37661_ _name37662_)
                             (let* ((_g3766437680_
                                     (lambda (_g3766537677_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3766537677_)))
                                    (_g3766337735_
                                     (lambda (_g3766537683_)
                                       (if (gx#stx-pair? _g3766537683_)
                                           (let ((_e3766737685_
                                                  (gx#stx-e _g3766537683_)))
                                             (let ((_hd3766837688_
                                                    (##car _e3766737685_))
                                                   (_tl3766937690_
                                                    (##cdr _e3766737685_)))
                                               (if (gx#identifier?
                                                    _hd3766837688_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3766837688_)
                                                       (if (gx#stx-pair?
                                                            _tl3766937690_)
                                                           (let ((_e3767037693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3766937690_)))
                     (let ((_hd3767137696_ (##car _e3767037693_))
                           (_tl3767237698_ (##cdr _e3767037693_)))
                       (if (gx#stx-null? _hd3767137696_)
                           (if (gx#stx-pair? _tl3767237698_)
                               (let ((_e3767337701_ (gx#stx-e _tl3767237698_)))
                                 (let ((_hd3767437704_ (##car _e3767337701_))
                                       (_tl3767537706_ (##cdr _e3767337701_)))
                                   (if (gx#stx-null? _tl3767537706_)
                                       ((lambda (_L37709_)
                                          (let* ((_body37724_
                                                  (gxc#optimize-match-block
                                                   _L37709_
                                                   _assert37660_
                                                   '()
                                                   _rest37451_))
                                                 (_block37726_
                                                  (cons _name37662_
                                                        (cons 'restart:
                                                              (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '() (cons _body37724_ '())))
                            (cons _assert37660_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_blocks37728_
                                                  (cons _block37726_
                                                        _blocks37390_))
                                                 (_rest37730_
                                                  (gxc#optimize-match-prune-blocks
                                                   _rest37451_
                                                   _blocks37728_))
                                                 (_rest37732_
                                                  (gxc#optimize-match-fuse-restart-blocks
                                                   _rest37730_
                                                   _blocks37728_)))
                                            (_lp37387_
                                             _rest37732_
                                             _blocks37728_)))
                                        _hd3767437704_)
                                       (_g3766437680_ _g3766537683_))))
                               (_g3766437680_ _g3766537683_))
                           (_g3766437680_ _g3766537683_))))
                   (_g3766437680_ _g3766537683_))
               (_g3766437680_ _g3766537683_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3766437680_
                                                    _g3766537683_))))
                                           (_g3766437680_ _g3766537683_)))))
                               (_g3766337735_ _kont37661_))))
                          (_K3745737621_
                           (lambda (_bind37486_
                                    _assert37487_
                                    _kont37488_
                                    _name37489_)
                             (let* ((_g3749137517_
                                     (lambda (_g3749237514_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3749237514_)))
                                    (_g3749037618_
                                     (lambda (_g3749237520_)
                                       (if (gx#stx-pair? _g3749237520_)
                                           (let ((_e3749537522_
                                                  (gx#stx-e _g3749237520_)))
                                             (let ((_hd3749637525_
                                                    (##car _e3749537522_))
                                                   (_tl3749737527_
                                                    (##cdr _e3749537522_)))
                                               (if (gx#identifier?
                                                    _hd3749637525_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3749637525_)
                                                       (if (gx#stx-pair?
                                                            _tl3749737527_)
                                                           (let ((_e3749837530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3749737527_)))
                     (let ((_hd3749937533_ (##car _e3749837530_))
                           (_tl3750037535_ (##cdr _e3749837530_)))
                       (if (gx#stx-pair/null? _hd3749937533_)
                           (let ((_g42683_
                                  (gx#syntax-split-splice _hd3749937533_ '0)))
                             (begin
                               (let ((_g42684_
                                      (if (##values? _g42683_)
                                          (##vector-length _g42683_)
                                          1)))
                                 (if (not (##fx= _g42684_ 2))
                                     (error "Context expects 2 values"
                                            _g42684_)))
                               (let ((_target3750137538_
                                      (##vector-ref _g42683_ 0))
                                     (_tl3750337540_
                                      (##vector-ref _g42683_ 1)))
                                 (if (gx#stx-null? _tl3750337540_)
                                     (letrec ((_loop3750437543_
                                               (lambda (_hd3750237546_
                                                        _id3750837548_)
                                                 (if (gx#stx-pair?
                                                      _hd3750237546_)
                                                     (let ((_e3750537551_
                                                            (gx#stx-e
                                                             _hd3750237546_)))
                                                       (let ((_lp-hd3750637554_
                                                              (##car _e3750537551_))
                                                             (_lp-tl3750737556_
                                                              (##cdr _e3750537551_)))
                                                         (_loop3750437543_
                                                          _lp-tl3750737556_
                                                          (cons _lp-hd3750637554_
                                                                _id3750837548_))))
                                                     (let ((_id3750937559_
                                                            (reverse _id3750837548_)))
                                                       (if (gx#stx-pair?
                                                            _tl3750037535_)
                                                           (let ((_e3751037562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3750037535_)))
                     (let ((_hd3751137565_ (##car _e3751037562_))
                           (_tl3751237567_ (##cdr _e3751037562_)))
                       (if (gx#stx-null? _tl3751237567_)
                           ((lambda (_L37570_ _L37571_)
                              (let* ((_body37600_
                                      (gxc#optimize-match-block
                                       _L37570_
                                       _assert37487_
                                       _bind37486_
                                       _rest37451_))
                                     (_block37609_
                                      (cons _name37489_
                                            (cons 'continue:
                                                  (cons (cons '%#lambda
                                                              (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g3760137604_ _g3760237606_)
                                        (cons _g3760137604_ _g3760237606_))
                                      '()
                                      _L37571_))
                            (cons _body37600_ '())))
                (cons _assert37487_ (cons _bind37486_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_blocks37611_
                                      (cons _block37609_ _blocks37390_))
                                     (_rest37613_
                                      (gxc#optimize-match-prune-blocks
                                       _rest37451_
                                       _blocks37611_))
                                     (_rest37615_
                                      (gxc#optimize-match-fuse-restart-blocks
                                       _rest37613_
                                       _blocks37611_)))
                                (_lp37387_ _rest37615_ _blocks37611_)))
                            _hd3751137565_
                            _id3750937559_)
                           (_g3749137517_ _g3749237520_))))
                   (_g3749137517_ _g3749237520_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3750437543_
                                        _target3750137538_
                                        '()))
                                     (_g3749137517_ _g3749237520_)))))
                           (_g3749137517_ _g3749237520_))))
                   (_g3749137517_ _g3749237520_))
               (_g3749137517_ _g3749237520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3749137517_
                                                    _g3749237520_))))
                                           (_g3749137517_ _g3749237520_)))))
                               (_g3749037618_ _kont37488_)))))
                      (if (##pair? _block3745337478_)
                          (let ((_tl3747037743_ (##cdr _block3745337478_))
                                (_hd3746937741_ (##car _block3745337478_)))
                            (if (##pair? _tl3747037743_)
                                (let ((_tl3747237750_ (##cdr _tl3747037743_))
                                      (_hd3747137748_ (##car _tl3747037743_)))
                                  (if (##eq? _hd3747137748_ 'restart:)
                                      (if (##pair? _tl3747237750_)
                                          (let ((_tl3747437755_
                                                 (##cdr _tl3747237750_))
                                                (_hd3747337753_
                                                 (##car _tl3747237750_)))
                                            (if (##pair? _tl3747437755_)
                                                (let ((_tl3747637762_
                                                       (##cdr _tl3747437755_))
                                                      (_hd3747537760_
                                                       (##car _tl3747437755_)))
                                                  (if (##null? _tl3747637762_)
                                                      (let ((_name37746_
                                                             _hd3746937741_)
                                                            (_kont37758_
                                                             _hd3747337753_)
                                                            (_assert37765_
                                                             _hd3747537760_))
                                                        (_K3746837738_
                                                         _assert37765_
                                                         _kont37758_
                                                         _name37746_))
                                                      (_E3745637482_)))
                                                (_E3745637482_)))
                                          (_E3745637482_))
                                      (if (##eq? _hd3747137748_ 'continue:)
                                          (if (##pair? _tl3747237750_)
                                              (let ((_tl3746337638_
                                                     (##cdr _tl3747237750_))
                                                    (_hd3746237636_
                                                     (##car _tl3747237750_)))
                                                (if (##pair? _tl3746337638_)
                                                    (let ((_tl3746537645_
                                                           (##cdr _tl3746337638_))
                                                          (_hd3746437643_
                                                           (##car _tl3746337638_)))
                                                      (if (##pair? _tl3746537645_)
                                                          (let ((_tl3746737652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _tl3746537645_))
                        (_hd3746637650_ (##car _tl3746537645_)))
                    (if (##null? _tl3746737652_)
                        (let ((_name37629_ _hd3746937741_)
                              (_kont37641_ _hd3746237636_)
                              (_assert37648_ _hd3746437643_)
                              (_bind37655_ _hd3746637650_))
                          (_K3745737621_
                           _bind37655_
                           _assert37648_
                           _kont37641_
                           _name37629_))
                        (_E3745637482_)))
                  (_E3745637482_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3745637482_)))
                                              (_E3745637482_))
                                          (_E3745637482_))))
                                (_E3745637482_)))
                          (_E3745637482_)))))))
          (if (##pair? _rest3739137399_)
              (let ((_hd3739637770_ (##car _rest3739137399_))
                    (_tl3739737772_ (##cdr _rest3739137399_)))
                (let* ((_block37775_ _hd3739637770_)
                       (_rest37777_ _tl3739737772_))
                  (_K3739537767_ _rest37777_ _block37775_)))
              (_else3739337448_))))))
  (define gxc#optimize-match-block
    (lambda (_body32009_ _assert32010_ _bind32011_ _blocks32012_)
      (letrec* ((_env-assert32247_ '())
                (_env-type32248_ '())
                (_env-bind32249_ '())
                (_in-splice?32250_ '#f)
                (_do-assert32251_
                 (lambda (_assert37308_ _K37309_)
                   (if (pair? _assert37308_)
                       (let _lp37311_ ((_rest37313_ _assert37308_)
                                       (_env-assert37314_ _env-assert32247_)
                                       (_env-type37315_ _env-type32248_))
                         (let* ((_rest3731637324_ _rest37313_)
                                (_else3731837332_
                                 (lambda ()
                                   (_do-assert!32257_
                                    _env-assert37314_
                                    _env-type37315_
                                    _K37309_)))
                                (_K3732037373_
                                 (lambda (_rest37335_ _assert37336_)
                                   (let* ((_assert3733737344_ _assert37336_)
                                          (_E3733937348_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _assert3733737344_)))
                                          (_K3734037361_
                                           (lambda (_val37351_ _expr37352_)
                                             (let* ((_sexpr37354_
                                                     (gxc#apply-generate-runtime-repr
                                                      _expr37352_))
                                                    (_env-assert37356_
                                                     (cons (cons _sexpr37354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _val37351_)
                   _env-assert37314_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_env-type37358_
                                                     (_fold-assert-type32253_
                                                      _expr37352_
                                                      _val37351_
                                                      _env-type37315_)))
                                               (_lp37311_
                                                _rest37335_
                                                _env-assert37356_
                                                _env-type37358_)))))
                                     (if (##pair? _assert3733737344_)
                                         (let ((_hd3734137364_
                                                (##car _assert3733737344_))
                                               (_tl3734237366_
                                                (##cdr _assert3733737344_)))
                                           (let* ((_expr37369_ _hd3734137364_)
                                                  (_val37371_ _tl3734237366_))
                                             (_K3734037361_
                                              _val37371_
                                              _expr37369_)))
                                         (_E3733937348_))))))
                           (if (##pair? _rest3731637324_)
                               (let ((_hd3732137376_ (##car _rest3731637324_))
                                     (_tl3732237378_ (##cdr _rest3731637324_)))
                                 (let* ((_assert37381_ _hd3732137376_)
                                        (_rest37383_ _tl3732237378_))
                                   (_K3732037373_ _rest37383_ _assert37381_)))
                               (_else3731837332_))))
                       (_K37309_))))
                (_predicate-type32252_
                 (lambda (_id37253_)
                   (let* ((_sym37255_ (gxc#identifier-symbol _id37253_))
                          (_$e37257_ _sym37255_))
                     (let ((_default3725937290_
                            (lambda ()
                              (let* ((_g3726237269_
                                      (gxc#optimizer-resolve-type _sym37255_))
                                     (_else3726437277_ (lambda () '#f))
                                     (_K3726637282_
                                      (lambda (_struct-t37280_)
                                        (gxc#optimizer-resolve-type
                                         _struct-t37280_))))
                                (if (##structure-instance-of?
                                     _g3726237269_
                                     'gxc#!struct-pred::t)
                                    (let* ((_e3726737285_
                                            (##vector-ref _g3726237269_ '1))
                                           (_struct-t37288_ _e3726737285_))
                                      (gxc#optimizer-resolve-type
                                       _struct-t37288_))
                                    (_else3726437277_)))))
                           (_table3726037292_
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
                       (if (symbol? _$e37257_)
                           (let* ((_h37295_ (##symbol-hash _$e37257_))
                                  (_ix37298_ (##fxmodulo _h37295_ '63))
                                  (_q37301_
                                   (##vector-ref _table3726037292_ _ix37298_)))
                             (if _q37301_
                                 (if (eq? (##car _q37301_) _$e37257_)
                                     (let ((_x37305_ (##cdr _q37301_)))
                                       (if (##fx< _x37305_ '5)
                                           (if (##fx< _x37305_ '2)
                                               (if (##fx= _x37305_ '0)
                                                   'pair
                                                   'null)
                                               (if (##fx= _x37305_ '2)
                                                   'vector
                                                   (if (##fx= _x37305_ '3)
                                                       'box
                                                       'identifier)))
                                           (if (##fx< _x37305_ '7)
                                               (if (##fx= _x37305_ '5)
                                                   'stx-pair
                                                   'stx-null)
                                               (if (##fx= _x37305_ '7)
                                                   'stx-vector
                                                   (if (##fx= _x37305_ '8)
                                                       'stx-box
                                                       'stx-datum)))))
                                     (_default3725937290_))
                                 (_default3725937290_)))
                           (_default3725937290_))))))
                (_fold-assert-type32253_
                 (lambda (_expr36201_ _val36202_ _env36203_)
                   (let* ((___stx4017140172_ _expr36201_)
                          (_g3621136390_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4017140172_))))
                     (let ((___kont4017340174_
                            (lambda (_L37222_ _L37223_)
                              (let ((_$e37245_
                                     (_predicate-type32252_ _L37223_)))
                                (if _$e37245_
                                    ((lambda (_t37248_)
                                       (cons (cons _L37222_
                                                   (cons _t37248_
                                                         (cons _val36202_
                                                               '())))
                                             _env36203_))
                                     _$e37245_)
                                    _env36203_))))
                           (___kont4017540176_
                            (lambda (_L36912_ _L36913_ _L36914_)
                              (let ((_$e36939_
                                     (gxc#identifier-symbol _L36914_)))
                                (if (let ((_$e36942_ (eq? '##fx= _$e36939_)))
                                      (if _$e36942_
                                          _$e36942_
                                          (eq? 'fx= _$e36939_)))
                                    (let* ((___stx4007740078_ _L36913_)
                                           (_g3694636975_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               ___stx4007740078_))))
                                      (let ((___kont4007940080_
                                             (lambda (_L37043_ _L37044_)
                                               (let ((_$e37069_
                                                      (_countf-symbol32254_
                                                       _L37044_)))
                                                 (if _$e37069_
                                                     ((lambda (_sym37072_)
                                                        (cons (cons _L37043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym37072_
                                  (cons (gx#stx-e _L36912_)
                                        (cons _val36202_ '()))))
                      _env36203_))
              _$e37069_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _env36203_))))
                                            (___kont4008140082_
                                             (lambda () _env36203_)))
                                        (if (gx#stx-pair? ___stx4007740078_)
                                            (let ((_e3695036987_
                                                   (gx#stx-e
                                                    ___stx4007740078_)))
                                              (let ((_tl3695236992_
                                                     (##cdr _e3695036987_))
                                                    (_hd3695136990_
                                                     (##car _e3695036987_)))
                                                (if (gx#identifier?
                                                     _hd3695136990_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3695136990_)
                                                        (if (gx#stx-pair?
                                                             _tl3695236992_)
                                                            (let ((_e3695336995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3695236992_)))
                      (let ((_tl3695537000_ (##cdr _e3695336995_))
                            (_hd3695436998_ (##car _e3695336995_)))
                        (if (gx#stx-pair? _hd3695436998_)
                            (let ((_e3695637003_ (gx#stx-e _hd3695436998_)))
                              (let ((_tl3695837008_ (##cdr _e3695637003_))
                                    (_hd3695737006_ (##car _e3695637003_)))
                                (if (gx#identifier? _hd3695737006_)
                                    (if (gx#stx-eq? '%#ref _hd3695737006_)
                                        (if (gx#stx-pair? _tl3695837008_)
                                            (let ((_e3695937011_
                                                   (gx#stx-e _tl3695837008_)))
                                              (let ((_tl3696137016_
                                                     (##cdr _e3695937011_))
                                                    (_hd3696037014_
                                                     (##car _e3695937011_)))
                                                (if (gx#stx-null?
                                                     _tl3696137016_)
                                                    (if (gx#stx-pair?
                                                         _tl3695537000_)
                                                        (let ((_e3696237019_
                                                               (gx#stx-e
                                                                _tl3695537000_)))
                                                          (let ((_tl3696437024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3696237019_))
                        (_hd3696337022_ (##car _e3696237019_)))
                    (if (gx#stx-pair? _hd3696337022_)
                        (let ((_e3696537027_ (gx#stx-e _hd3696337022_)))
                          (let ((_tl3696737032_ (##cdr _e3696537027_))
                                (_hd3696637030_ (##car _e3696537027_)))
                            (if (gx#identifier? _hd3696637030_)
                                (if (gx#stx-eq? '%#ref _hd3696637030_)
                                    (if (gx#stx-pair? _tl3696737032_)
                                        (let ((_e3696837035_
                                               (gx#stx-e _tl3696737032_)))
                                          (let ((_tl3697037040_
                                                 (##cdr _e3696837035_))
                                                (_hd3696937038_
                                                 (##car _e3696837035_)))
                                            (if (gx#stx-null? _tl3697037040_)
                                                (if (gx#stx-null?
                                                     _tl3696437024_)
                                                    (___kont4007940080_
                                                     _hd3696937038_
                                                     _hd3696037014_)
                                                    (___kont4008140082_))
                                                (___kont4008140082_))))
                                        (___kont4008140082_))
                                    (___kont4008140082_))
                                (___kont4008140082_))))
                        (___kont4008140082_))))
                (___kont4008140082_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4008140082_))))
                                            (___kont4008140082_))
                                        (___kont4008140082_))
                                    (___kont4008140082_))))
                            (___kont4008140082_))))
                    (___kont4008140082_))
                (___kont4008140082_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4008140082_))))
                                            (___kont4008140082_))))
                                    (if (let ((_$e37077_
                                               (eq? '##eq? _$e36939_)))
                                          (if _$e37077_
                                              _$e37077_
                                              (let ((_$e37080_
                                                     (eq? 'eq? _$e36939_)))
                                                (if _$e37080_
                                                    _$e37080_
                                                    (let ((_$e37083_
                                                           (eq? '##eqv?
                                                                _$e36939_)))
                                                      (if _$e37083_
                                                          _$e37083_
                                                          (let ((_$e37086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (eq? 'eqv? _$e36939_)))
                    (if _$e37086_
                        _$e37086_
                        (let ((_$e37089_ (eq? '##equal? _$e36939_)))
                          (if _$e37089_
                              _$e37089_
                              (let ((_$e37092_ (eq? 'equal? _$e36939_)))
                                (if _$e37092_
                                    _$e37092_
                                    (let ((_$e37095_
                                           (eq? 'gx#free-identifier=?
                                                _$e36939_)))
                                      (if _$e37095_
                                          _$e37095_
                                          (eq? 'gx#stx-eq?
                                               _$e36939_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        ((lambda (_sym37098_)
                                           (let* ((_sym37100_
                                                   (_eqf-symbol32255_
                                                    _sym37098_))
                                                  (___stx4014540146_ _L36913_)
                                                  (_g3710337116_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4014540146_))))
                                             (let ((___kont4014740148_
                                                    (lambda (_L37144_)
                                                      (cons (cons _L37144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _sym37100_
                                (cons (gx#stx-e _L36912_)
                                      (cons _val36202_ '()))))
                    _env36203_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4014940150_
                                                    (lambda () _env36203_)))
                                               (if (gx#stx-pair?
                                                    ___stx4014540146_)
                                                   (let ((_e3710637128_
                                                          (gx#stx-e
                                                           ___stx4014540146_)))
                                                     (let ((_tl3710837133_
                                                            (##cdr _e3710637128_))
                                                           (_hd3710737131_
                                                            (##car _e3710637128_)))
                                                       (if (gx#identifier?
                                                            _hd3710737131_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3710737131_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3710837133_)
                           (let ((_e3710937136_ (gx#stx-e _tl3710837133_)))
                             (let ((_tl3711137141_ (##cdr _e3710937136_))
                                   (_hd3711037139_ (##car _e3710937136_)))
                               (if (gx#stx-null? _tl3711137141_)
                                   (___kont4014740148_ _hd3711037139_)
                                   (___kont4014940150_))))
                           (___kont4014940150_))
                       (___kont4014940150_))
                   (___kont4014940150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4014940150_)))))
                                         _$e36939_)
                                        _env36203_)))))
                           (___kont4017740178_
                            (lambda (_L36816_ _L36817_ _L36818_)
                              (_fold-assert-type32253_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L36818_ '()))
                                           (cons _L36816_
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote)
                                                             (cons _L36817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36202_
                               _env36203_)))
                           (___kont4017940180_
                            (lambda (_L36706_ _L36707_ _L36708_)
                              (let ((_$e36737_
                                     (gxc#identifier-symbol _L36708_)))
                                (if (let ((_$e36740_
                                           (eq? 'gx#free-identifier=?
                                                _$e36737_)))
                                      (if _$e36740_
                                          _$e36740_
                                          (eq? 'gx#stx-eq? _$e36737_)))
                                    ((lambda (_sym36743_)
                                       (let ((_sym36745_
                                              (_eqf-symbol32255_ _sym36743_)))
                                         (cons (cons _L36707_
                                                     (cons _sym36745_
                                                           (cons _L36706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _val36202_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env36203_)))
                                     _$e36737_)
                                    _env36203_))))
                           (___kont4018140182_
                            (lambda (_L36590_ _L36591_ _L36592_)
                              (_fold-assert-type32253_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L36592_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#ref)
                                                       (cons _L36590_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote-syntax)
                                                             (cons _L36591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36202_
                               _env36203_)))
                           (___kont4018340184_
                            (lambda (_L36474_ _L36475_ _L36476_)
                              (_fold-assert-type32253_
                               (gxc#apply-expression-subst
                                _L36475_
                                _L36476_
                                _L36474_)
                               _val36202_
                               _env36203_)))
                           (___kont4018540186_ (lambda () _env36203_)))
                       (if (gx#stx-pair? ___stx4017140172_)
                           (let ((_e3621537166_ (gx#stx-e ___stx4017140172_)))
                             (let ((_tl3621737171_ (##cdr _e3621537166_))
                                   (_hd3621637169_ (##car _e3621537166_)))
                               (if (gx#identifier? _hd3621637169_)
                                   (if (gx#stx-eq? '%#call _hd3621637169_)
                                       (if (gx#stx-pair? _tl3621737171_)
                                           (let ((_e3621837174_
                                                  (gx#stx-e _tl3621737171_)))
                                             (let ((_tl3622037179_
                                                    (##cdr _e3621837174_))
                                                   (_hd3621937177_
                                                    (##car _e3621837174_)))
                                               (if (gx#stx-pair?
                                                    _hd3621937177_)
                                                   (let ((_e3622137182_
                                                          (gx#stx-e
                                                           _hd3621937177_)))
                                                     (let ((_tl3622337187_
                                                            (##cdr _e3622137182_))
                                                           (_hd3622237185_
                                                            (##car _e3622137182_)))
                                                       (if (gx#identifier?
                                                            _hd3622237185_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3622237185_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3622337187_)
                           (let ((_e3622437190_ (gx#stx-e _tl3622337187_)))
                             (let ((_tl3622637195_ (##cdr _e3622437190_))
                                   (_hd3622537193_ (##car _e3622437190_)))
                               (if (gx#stx-null? _tl3622637195_)
                                   (if (gx#stx-pair? _tl3622037179_)
                                       (let ((_e3622737198_
                                              (gx#stx-e _tl3622037179_)))
                                         (let ((_tl3622937203_
                                                (##cdr _e3622737198_))
                                               (_hd3622837201_
                                                (##car _e3622737198_)))
                                           (if (gx#stx-pair? _hd3622837201_)
                                               (let ((_e3623037206_
                                                      (gx#stx-e
                                                       _hd3622837201_)))
                                                 (let ((_tl3623237211_
                                                        (##cdr _e3623037206_))
                                                       (_hd3623137209_
                                                        (##car _e3623037206_)))
                                                   (if (gx#identifier?
                                                        _hd3623137209_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd3623137209_)
                                                           (if (gx#stx-pair?
                                                                _tl3623237211_)
                                                               (let ((_e3623337214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3623237211_)))
                         (let ((_tl3623537219_ (##cdr _e3623337214_))
                               (_hd3623437217_ (##car _e3623337214_)))
                           (if (gx#stx-null? _tl3623537219_)
                               (if (gx#stx-null? _tl3622937203_)
                                   (___kont4017340174_
                                    _hd3623437217_
                                    _hd3622537193_)
                                   (if (gx#stx-pair? _tl3622937203_)
                                       (let ((_e3625436888_
                                              (gx#stx-e _tl3622937203_)))
                                         (let ((_tl3625636893_
                                                (##cdr _e3625436888_))
                                               (_hd3625536891_
                                                (##car _e3625436888_)))
                                           (if (gx#stx-pair? _hd3625536891_)
                                               (let ((_e3625736896_
                                                      (gx#stx-e
                                                       _hd3625536891_)))
                                                 (let ((_tl3625936901_
                                                        (##cdr _e3625736896_))
                                                       (_hd3625836899_
                                                        (##car _e3625736896_)))
                                                   (if (gx#identifier?
                                                        _hd3625836899_)
                                                       (if (gx#stx-eq?
                                                            '%#quote
                                                            _hd3625836899_)
                                                           (if (gx#stx-pair?
                                                                _tl3625936901_)
                                                               (let ((_e3626036904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3625936901_)))
                         (let ((_tl3626236909_ (##cdr _e3626036904_))
                               (_hd3626136907_ (##car _e3626036904_)))
                           (if (gx#stx-null? _tl3626236909_)
                               (if (gx#stx-null? _tl3625636893_)
                                   (___kont4017540176_
                                    _hd3626136907_
                                    _hd3622837201_
                                    _hd3622537193_)
                                   (___kont4018540186_))
                               (___kont4018540186_))))
                       (___kont4018540186_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3625836899_)
                       (if (gx#stx-pair? _tl3625936901_)
                           (let ((_e3632036698_ (gx#stx-e _tl3625936901_)))
                             (let ((_tl3632236703_ (##cdr _e3632036698_))
                                   (_hd3632136701_ (##car _e3632036698_)))
                               (if (gx#stx-null? _tl3632236703_)
                                   (if (gx#stx-null? _tl3625636893_)
                                       (___kont4017940180_
                                        _hd3632136701_
                                        _hd3623437217_
                                        _hd3622537193_)
                                       (___kont4018540186_))
                                   (___kont4018540186_))))
                           (___kont4018540186_))
                       (___kont4018540186_)))
               (___kont4018540186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4018540186_))))
                                       (___kont4018540186_)))
                               (if (gx#stx-pair? _tl3622937203_)
                                   (let ((_e3625436888_
                                          (gx#stx-e _tl3622937203_)))
                                     (let ((_tl3625636893_
                                            (##cdr _e3625436888_))
                                           (_hd3625536891_
                                            (##car _e3625436888_)))
                                       (if (gx#stx-pair? _hd3625536891_)
                                           (let ((_e3625736896_
                                                  (gx#stx-e _hd3625536891_)))
                                             (let ((_tl3625936901_
                                                    (##cdr _e3625736896_))
                                                   (_hd3625836899_
                                                    (##car _e3625736896_)))
                                               (if (gx#identifier?
                                                    _hd3625836899_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3625836899_)
                                                       (if (gx#stx-pair?
                                                            _tl3625936901_)
                                                           (let ((_e3626036904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3625936901_)))
                     (let ((_tl3626236909_ (##cdr _e3626036904_))
                           (_hd3626136907_ (##car _e3626036904_)))
                       (if (gx#stx-null? _tl3626236909_)
                           (if (gx#stx-null? _tl3625636893_)
                               (___kont4017540176_
                                _hd3626136907_
                                _hd3622837201_
                                _hd3622537193_)
                               (___kont4018540186_))
                           (___kont4018540186_))))
                   (___kont4018540186_))
               (___kont4018540186_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4018540186_))))
                                           (___kont4018540186_))))
                                   (___kont4018540186_)))))
                       (if (gx#stx-pair? _tl3622937203_)
                           (let ((_e3625436888_ (gx#stx-e _tl3622937203_)))
                             (let ((_tl3625636893_ (##cdr _e3625436888_))
                                   (_hd3625536891_ (##car _e3625436888_)))
                               (if (gx#stx-pair? _hd3625536891_)
                                   (let ((_e3625736896_
                                          (gx#stx-e _hd3625536891_)))
                                     (let ((_tl3625936901_
                                            (##cdr _e3625736896_))
                                           (_hd3625836899_
                                            (##car _e3625736896_)))
                                       (if (gx#identifier? _hd3625836899_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3625836899_)
                                               (if (gx#stx-pair?
                                                    _tl3625936901_)
                                                   (let ((_e3626036904_
                                                          (gx#stx-e
                                                           _tl3625936901_)))
                                                     (let ((_tl3626236909_
                                                            (##cdr _e3626036904_))
                                                           (_hd3626136907_
                                                            (##car _e3626036904_)))
                                                       (if (gx#stx-null?
                                                            _tl3626236909_)
                                                           (if (gx#stx-null?
                                                                _tl3625636893_)
                                                               (___kont4017540176_
                                                                _hd3626136907_
                                                                _hd3622837201_
                                                                _hd3622537193_)
                                                               (___kont4018540186_))
                                                           (___kont4018540186_))))
                                                   (___kont4018540186_))
                                               (___kont4018540186_))
                                           (___kont4018540186_))))
                                   (___kont4018540186_))))
                           (___kont4018540186_)))
                   (if (gx#stx-pair? _tl3622937203_)
                       (let ((_e3625436888_ (gx#stx-e _tl3622937203_)))
                         (let ((_tl3625636893_ (##cdr _e3625436888_))
                               (_hd3625536891_ (##car _e3625436888_)))
                           (if (gx#stx-pair? _hd3625536891_)
                               (let ((_e3625736896_ (gx#stx-e _hd3625536891_)))
                                 (let ((_tl3625936901_ (##cdr _e3625736896_))
                                       (_hd3625836899_ (##car _e3625736896_)))
                                   (if (gx#identifier? _hd3625836899_)
                                       (if (gx#stx-eq? '%#quote _hd3625836899_)
                                           (if (gx#stx-pair? _tl3625936901_)
                                               (let ((_e3626036904_
                                                      (gx#stx-e
                                                       _tl3625936901_)))
                                                 (let ((_tl3626236909_
                                                        (##cdr _e3626036904_))
                                                       (_hd3626136907_
                                                        (##car _e3626036904_)))
                                                   (if (gx#stx-null?
                                                        _tl3626236909_)
                                                       (if (gx#stx-null?
                                                            _tl3625636893_)
                                                           (___kont4017540176_
                                                            _hd3626136907_
                                                            _hd3622837201_
                                                            _hd3622537193_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3623137209_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3623237211_)
                           (let ((_e3628436800_ (gx#stx-e _tl3623237211_)))
                             (let ((_tl3628636805_ (##cdr _e3628436800_))
                                   (_hd3628536803_ (##car _e3628436800_)))
                               (___kont4018540186_)))
                           (___kont4018540186_))
                       (if (gx#stx-eq? '%#quote-syntax _hd3623137209_)
                           (if (gx#stx-pair? _tl3623237211_)
                               (let ((_e3634436558_ (gx#stx-e _tl3623237211_)))
                                 (let ((_tl3634636563_ (##cdr _e3634436558_))
                                       (_hd3634536561_ (##car _e3634436558_)))
                                   (___kont4018540186_)))
                               (___kont4018540186_))
                           (___kont4018540186_))))
               (if (gx#stx-eq? '%#quote _hd3623137209_)
                   (if (gx#stx-pair? _tl3623237211_)
                       (let ((_e3628436800_ (gx#stx-e _tl3623237211_)))
                         (let ((_tl3628636805_ (##cdr _e3628436800_))
                               (_hd3628536803_ (##car _e3628436800_)))
                           (if (gx#stx-null? _tl3628636805_)
                               (if (gx#stx-null? _tl3625636893_)
                                   (___kont4017740178_
                                    _hd3625536891_
                                    _hd3628536803_
                                    _hd3622537193_)
                                   (___kont4018540186_))
                               (___kont4018540186_))))
                       (___kont4018540186_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3623137209_)
                       (if (gx#stx-pair? _tl3623237211_)
                           (let ((_e3634436558_ (gx#stx-e _tl3623237211_)))
                             (let ((_tl3634636563_ (##cdr _e3634436558_))
                                   (_hd3634536561_ (##car _e3634436558_)))
                               (___kont4018540186_)))
                           (___kont4018540186_))
                       (___kont4018540186_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3623137209_)
                                                   (if (gx#stx-pair?
                                                        _tl3623237211_)
                                                       (let ((_e3628436800_
                                                              (gx#stx-e
                                                               _tl3623237211_)))
                                                         (let ((_tl3628636805_
                                                                (##cdr _e3628436800_))
                                                               (_hd3628536803_
                                                                (##car _e3628436800_)))
                                                           (if (gx#stx-null?
                                                                _tl3628636805_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3625636893_)
                           (___kont4017740178_
                            _hd3625536891_
                            _hd3628536803_
                            _hd3622537193_)
                           (___kont4018540186_))
                       (___kont4018540186_))))
               (___kont4018540186_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3623137209_)
                                                       (if (gx#stx-pair?
                                                            _tl3623237211_)
                                                           (let ((_e3634436558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3623237211_)))
                     (let ((_tl3634636563_ (##cdr _e3634436558_))
                           (_hd3634536561_ (##car _e3634436558_)))
                       (___kont4018540186_)))
                   (___kont4018540186_))
               (___kont4018540186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3623137209_)
                                               (if (gx#stx-pair?
                                                    _tl3623237211_)
                                                   (let ((_e3628436800_
                                                          (gx#stx-e
                                                           _tl3623237211_)))
                                                     (let ((_tl3628636805_
                                                            (##cdr _e3628436800_))
                                                           (_hd3628536803_
                                                            (##car _e3628436800_)))
                                                       (if (gx#stx-null?
                                                            _tl3628636805_)
                                                           (if (gx#stx-null?
                                                                _tl3625636893_)
                                                               (___kont4017740178_
                                                                _hd3625536891_
                                                                _hd3628536803_
                                                                _hd3622537193_)
                                                               (___kont4018540186_))
                                                           (___kont4018540186_))))
                                                   (___kont4018540186_))
                                               (if (gx#stx-eq?
                                                    '%#quote-syntax
                                                    _hd3623137209_)
                                                   (if (gx#stx-pair?
                                                        _tl3623237211_)
                                                       (let ((_e3634436558_
                                                              (gx#stx-e
                                                               _tl3623237211_)))
                                                         (let ((_tl3634636563_
                                                                (##cdr _e3634436558_))
                                                               (_hd3634536561_
                                                                (##car _e3634436558_)))
                                                           (if (gx#stx-null?
                                                                _tl3634636563_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3625836899_)
                           (if (gx#stx-pair? _tl3625936901_)
                               (let ((_e3635336582_ (gx#stx-e _tl3625936901_)))
                                 (let ((_tl3635536587_ (##cdr _e3635336582_))
                                       (_hd3635436585_ (##car _e3635336582_)))
                                   (if (gx#stx-null? _tl3635536587_)
                                       (if (gx#stx-null? _tl3625636893_)
                                           (___kont4018140182_
                                            _hd3635436585_
                                            _hd3634536561_
                                            _hd3622537193_)
                                           (___kont4018540186_))
                                       (___kont4018540186_))))
                               (___kont4018540186_))
                           (___kont4018540186_))
                       (___kont4018540186_))))
               (___kont4018540186_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4018540186_))))
                                       (if (gx#stx-eq? '%#quote _hd3623137209_)
                                           (if (gx#stx-pair? _tl3623237211_)
                                               (let ((_e3628436800_
                                                      (gx#stx-e
                                                       _tl3623237211_)))
                                                 (let ((_tl3628636805_
                                                        (##cdr _e3628436800_))
                                                       (_hd3628536803_
                                                        (##car _e3628436800_)))
                                                   (if (gx#stx-null?
                                                        _tl3628636805_)
                                                       (if (gx#stx-null?
                                                            _tl3625636893_)
                                                           (___kont4017740178_
                                                            _hd3625536891_
                                                            _hd3628536803_
                                                            _hd3622537193_)
                                                           (___kont4018540186_))
                                                       (___kont4018540186_))))
                                               (___kont4018540186_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3623137209_)
                                               (if (gx#stx-pair?
                                                    _tl3623237211_)
                                                   (let ((_e3634436558_
                                                          (gx#stx-e
                                                           _tl3623237211_)))
                                                     (let ((_tl3634636563_
                                                            (##cdr _e3634436558_))
                                                           (_hd3634536561_
                                                            (##car _e3634436558_)))
                                                       (___kont4018540186_)))
                                                   (___kont4018540186_))
                                               (___kont4018540186_))))))
                               (if (gx#stx-eq? '%#quote _hd3623137209_)
                                   (if (gx#stx-pair? _tl3623237211_)
                                       (let ((_e3628436800_
                                              (gx#stx-e _tl3623237211_)))
                                         (let ((_tl3628636805_
                                                (##cdr _e3628436800_))
                                               (_hd3628536803_
                                                (##car _e3628436800_)))
                                           (if (gx#stx-null? _tl3628636805_)
                                               (if (gx#stx-null?
                                                    _tl3625636893_)
                                                   (___kont4017740178_
                                                    _hd3625536891_
                                                    _hd3628536803_
                                                    _hd3622537193_)
                                                   (___kont4018540186_))
                                               (___kont4018540186_))))
                                       (___kont4018540186_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3623137209_)
                                       (if (gx#stx-pair? _tl3623237211_)
                                           (let ((_e3634436558_
                                                  (gx#stx-e _tl3623237211_)))
                                             (let ((_tl3634636563_
                                                    (##cdr _e3634436558_))
                                                   (_hd3634536561_
                                                    (##car _e3634436558_)))
                                               (___kont4018540186_)))
                                           (___kont4018540186_))
                                       (___kont4018540186_))))))
                       (if (gx#stx-eq? '%#quote _hd3623137209_)
                           (if (gx#stx-pair? _tl3623237211_)
                               (let ((_e3628436800_ (gx#stx-e _tl3623237211_)))
                                 (let ((_tl3628636805_ (##cdr _e3628436800_))
                                       (_hd3628536803_ (##car _e3628436800_)))
                                   (___kont4018540186_)))
                               (___kont4018540186_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3623137209_)
                               (if (gx#stx-pair? _tl3623237211_)
                                   (let ((_e3634436558_
                                          (gx#stx-e _tl3623237211_)))
                                     (let ((_tl3634636563_
                                            (##cdr _e3634436558_))
                                           (_hd3634536561_
                                            (##car _e3634436558_)))
                                       (___kont4018540186_)))
                                   (___kont4018540186_))
                               (___kont4018540186_)))))
               (if (gx#stx-pair? _tl3622937203_)
                   (let ((_e3625436888_ (gx#stx-e _tl3622937203_)))
                     (let ((_tl3625636893_ (##cdr _e3625436888_))
                           (_hd3625536891_ (##car _e3625436888_)))
                       (if (gx#stx-pair? _hd3625536891_)
                           (let ((_e3625736896_ (gx#stx-e _hd3625536891_)))
                             (let ((_tl3625936901_ (##cdr _e3625736896_))
                                   (_hd3625836899_ (##car _e3625736896_)))
                               (if (gx#identifier? _hd3625836899_)
                                   (if (gx#stx-eq? '%#quote _hd3625836899_)
                                       (if (gx#stx-pair? _tl3625936901_)
                                           (let ((_e3626036904_
                                                  (gx#stx-e _tl3625936901_)))
                                             (let ((_tl3626236909_
                                                    (##cdr _e3626036904_))
                                                   (_hd3626136907_
                                                    (##car _e3626036904_)))
                                               (if (gx#stx-null?
                                                    _tl3626236909_)
                                                   (if (gx#stx-null?
                                                        _tl3625636893_)
                                                       (___kont4017540176_
                                                        _hd3626136907_
                                                        _hd3622837201_
                                                        _hd3622537193_)
                                                       (___kont4018540186_))
                                                   (___kont4018540186_))))
                                           (___kont4018540186_))
                                       (___kont4018540186_))
                                   (___kont4018540186_))))
                           (___kont4018540186_))))
                   (___kont4018540186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl3622937203_)
                                                   (let ((_e3625436888_
                                                          (gx#stx-e
                                                           _tl3622937203_)))
                                                     (let ((_tl3625636893_
                                                            (##cdr _e3625436888_))
                                                           (_hd3625536891_
                                                            (##car _e3625436888_)))
                                                       (if (gx#stx-pair?
                                                            _hd3625536891_)
                                                           (let ((_e3625736896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3625536891_)))
                     (let ((_tl3625936901_ (##cdr _e3625736896_))
                           (_hd3625836899_ (##car _e3625736896_)))
                       (if (gx#identifier? _hd3625836899_)
                           (if (gx#stx-eq? '%#quote _hd3625836899_)
                               (if (gx#stx-pair? _tl3625936901_)
                                   (let ((_e3626036904_
                                          (gx#stx-e _tl3625936901_)))
                                     (let ((_tl3626236909_
                                            (##cdr _e3626036904_))
                                           (_hd3626136907_
                                            (##car _e3626036904_)))
                                       (if (gx#stx-null? _tl3626236909_)
                                           (if (gx#stx-null? _tl3625636893_)
                                               (___kont4017540176_
                                                _hd3626136907_
                                                _hd3622837201_
                                                _hd3622537193_)
                                               (___kont4018540186_))
                                           (___kont4018540186_))))
                                   (___kont4018540186_))
                               (___kont4018540186_))
                           (___kont4018540186_))))
                   (___kont4018540186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4018540186_)))))
                                       (___kont4018540186_))
                                   (___kont4018540186_))))
                           (___kont4018540186_))
                       (if (gx#stx-eq? '%#lambda _hd3622237185_)
                           (if (gx#stx-pair? _tl3622337187_)
                               (let ((_e3636836426_ (gx#stx-e _tl3622337187_)))
                                 (let ((_tl3637036431_ (##cdr _e3636836426_))
                                       (_hd3636936429_ (##car _e3636836426_)))
                                   (if (gx#stx-pair? _hd3636936429_)
                                       (let ((_e3637136434_
                                              (gx#stx-e _hd3636936429_)))
                                         (let ((_tl3637336439_
                                                (##cdr _e3637136434_))
                                               (_hd3637236437_
                                                (##car _e3637136434_)))
                                           (if (gx#stx-null? _tl3637336439_)
                                               (if (gx#stx-pair?
                                                    _tl3637036431_)
                                                   (let ((_e3637436442_
                                                          (gx#stx-e
                                                           _tl3637036431_)))
                                                     (let ((_tl3637636447_
                                                            (##cdr _e3637436442_))
                                                           (_hd3637536445_
                                                            (##car _e3637436442_)))
                                                       (if (gx#stx-null?
                                                            _tl3637636447_)
                                                           (if (gx#stx-pair?
                                                                _tl3622037179_)
                                                               (let ((_e3637736450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3622037179_)))
                         (let ((_tl3637936455_ (##cdr _e3637736450_))
                               (_hd3637836453_ (##car _e3637736450_)))
                           (if (gx#stx-pair? _hd3637836453_)
                               (let ((_e3638036458_ (gx#stx-e _hd3637836453_)))
                                 (let ((_tl3638236463_ (##cdr _e3638036458_))
                                       (_hd3638136461_ (##car _e3638036458_)))
                                   (if (gx#identifier? _hd3638136461_)
                                       (if (gx#stx-eq? '%#ref _hd3638136461_)
                                           (if (gx#stx-pair? _tl3638236463_)
                                               (let ((_e3638336466_
                                                      (gx#stx-e
                                                       _tl3638236463_)))
                                                 (let ((_tl3638536471_
                                                        (##cdr _e3638336466_))
                                                       (_hd3638436469_
                                                        (##car _e3638336466_)))
                                                   (if (gx#stx-null?
                                                        _tl3638536471_)
                                                       (if (gx#stx-null?
                                                            _tl3637936455_)
                                                           (___kont4018340184_
                                                            _hd3638436469_
                                                            _hd3637536445_
                                                            _hd3637236437_)
                                                           (___kont4018540186_))
                                                       (___kont4018540186_))))
                                               (___kont4018540186_))
                                           (___kont4018540186_))
                                       (___kont4018540186_))))
                               (___kont4018540186_))))
                       (___kont4018540186_))
                   (___kont4018540186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4018540186_))
                                               (___kont4018540186_))))
                                       (___kont4018540186_))))
                               (___kont4018540186_))
                           (___kont4018540186_)))
                   (___kont4018540186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4018540186_))))
                                           (___kont4018540186_))
                                       (___kont4018540186_))
                                   (___kont4018540186_))))
                           (___kont4018540186_))))))
                (_countf-symbol32254_
                 (lambda (_id36193_)
                   (let ((_$e36195_ (gxc#identifier-symbol _id36193_)))
                     (if (let ((_$e36198_ (eq? '##vector-length _$e36195_)))
                           (if _$e36198_
                               _$e36198_
                               (eq? 'vector-length _$e36195_)))
                         'vector-length
                         (if (eq? 'values-count _$e36195_)
                             'values-count
                             '#f)))))
                (_eqf-symbol32255_
                 (lambda (_sym36179_)
                   (let ((_$e36181_ _sym36179_))
                     (if (let ((_$e36184_ (eq? '##eq? _$e36181_)))
                           (if _$e36184_ _$e36184_ (eq? 'eq? _$e36181_)))
                         'eq?
                         (if (let ((_$e36187_ (eq? '##eqv? _$e36181_)))
                               (if _$e36187_ _$e36187_ (eq? 'eqv? _$e36181_)))
                             'eqv?
                             (if (let ((_$e36190_ (eq? '##equal? _$e36181_)))
                                   (if _$e36190_
                                       _$e36190_
                                       (eq? 'equal? _$e36181_)))
                                 'equal?
                                 (if (eq? 'gx#free-identifier=? _$e36181_)
                                     'free-identifier=?
                                     (if (eq? 'gx#stx-eq? _$e36181_)
                                         'stx-eq?
                                         '#f))))))))
                (_eqf-symbol?32256_
                 (lambda (_sym36162_)
                   (let ((_$e36164_ _sym36162_))
                     (if (let ((_$e36167_ (eq? 'eq? _$e36164_)))
                           (if _$e36167_
                               _$e36167_
                               (let ((_$e36170_ (eq? 'eqv? _$e36164_)))
                                 (if _$e36170_
                                     _$e36170_
                                     (let ((_$e36173_ (eq? 'equal? _$e36164_)))
                                       (if _$e36173_
                                           _$e36173_
                                           (let ((_$e36176_
                                                  (eq? 'free-identifier=?
                                                       _$e36164_)))
                                             (if _$e36176_
                                                 _$e36176_
                                                 (eq? 'stx-eq?
                                                      _$e36164_)))))))))
                         '#t
                         '#f))))
                (_do-assert!32257_
                 (lambda (_assert36153_ _type36154_ _K36155_)
                   (let ((_unwind-assert36157_ _env-assert32247_)
                         (_unwind-type36158_ _env-type32248_))
                     (begin
                       (set! _env-assert32247_ _assert36153_)
                       (set! _env-type32248_ _type36154_)
                       (let ((_val36160_ (_K36155_)))
                         (begin
                           (set! _env-assert32247_ _unwind-assert36157_)
                           (set! _env-type32248_ _unwind-type36158_)
                           _val36160_))))))
                (_do-bind32258_
                 (lambda (_bind36150_ _K36151_)
                   (if (pair? _bind36150_)
                       (_do-bind!32260_
                        (_fold-bind-env32259_ _bind36150_ _env-bind32249_)
                        _K36151_)
                       (_K36151_))))
                (_fold-bind-env32259_
                 (lambda (_bind36079_ _env36080_)
                   (let _lp36082_ ((_rest36084_ _bind36079_)
                                   (_env36085_ _env36080_))
                     (let* ((_rest3608636094_ _rest36084_)
                            (_else3608836102_ (lambda () _env36085_))
                            (_K3609036138_
                             (lambda (_rest36105_ _bind36106_)
                               (let* ((_bind3610736114_ _bind36106_)
                                      (_E3610936118_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3610736114_)))
                                      (_K3611036126_
                                       (lambda (_expr36121_ _id36122_)
                                         (let ((_sexpr36124_
                                                (gxc#apply-generate-runtime-repr
                                                 _expr36121_)))
                                           (_lp36082_
                                            _rest36105_
                                            (cons (cons _sexpr36124_ _id36122_)
                                                  _env36085_))))))
                                 (if (##pair? _bind3610736114_)
                                     (let ((_hd3611136129_
                                            (##car _bind3610736114_))
                                           (_tl3611236131_
                                            (##cdr _bind3610736114_)))
                                       (let* ((_id36134_ _hd3611136129_)
                                              (_expr36136_ _tl3611236131_))
                                         (_K3611036126_
                                          _expr36136_
                                          _id36134_)))
                                     (_E3610936118_))))))
                       (if (##pair? _rest3608636094_)
                           (let ((_hd3609136141_ (##car _rest3608636094_))
                                 (_tl3609236143_ (##cdr _rest3608636094_)))
                             (let* ((_bind36146_ _hd3609136141_)
                                    (_rest36148_ _tl3609236143_))
                               (_K3609036138_ _rest36148_ _bind36146_)))
                           (_else3608836102_))))))
                (_do-bind!32260_
                 (lambda (_env36072_ _K36073_)
                   (let ((_unwind36075_ _env-bind32249_))
                     (begin
                       (set! _env-bind32249_ _env36072_)
                       (let ((_val36077_ (_K36073_)))
                         (begin
                           (set! _env-bind32249_ _unwind36075_)
                           _val36077_))))))
                (_do-splice!32261_
                 (lambda (_K36066_)
                   (let ((_unwind36068_ _in-splice?32250_))
                     (begin
                       (set! _in-splice?32250_ '#t)
                       (let ((_val36070_ (_K36066_)))
                         (begin
                           (set! _in-splice?32250_ _unwind36068_)
                           _val36070_))))))
                (_optimize-e32262_
                 (lambda (_expr35263_)
                   (let* ((___stx4062340624_ _expr35263_)
                          (_g3527035443_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4062340624_))))
                     (let ((___kont4062540626_
                            (lambda (_L36038_ _L36039_ _L36040_)
                              (let ((_$e36057_ (_assert-e32265_ _L36040_)))
                                (if (eq? '#t _$e36057_)
                                    (_optimize-e32262_ _L36039_)
                                    (if (eq? '#f _$e36057_)
                                        (_optimize-e32262_ _L36038_)
                                        (let ((_K36060_
                                               (_optimize-t__0__3958639587_
                                                _L36039_
                                                _L36040_))
                                              (_E36061_
                                               (_optimize-f__3958839589_
                                                _L36038_
                                                _L36040_)))
                                          (if (equal? (gxc#apply-generate-runtime-repr
                                                       _K36060_)
                                                      (gxc#apply-generate-runtime-repr
                                                       _E36061_))
                                              _K36060_
                                              (cons '%#if
                                                    (cons _L36040_
                                                          (cons _K36060_
                                                                (cons _E36061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (___kont4062740628_
                            (lambda (_L35968_ _L35969_)
                              (let ((_$e35989_ (_lookup-block32270_ _L35969_)))
                                (if _$e35989_
                                    ((lambda (_block35992_)
                                       (if (_nonlinear-block?32272_
                                            _block35992_)
                                           _expr35263_
                                           (_optimize-e32262_
                                            (_inline-block32271_
                                             _block35992_
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g3599335996_
                                                                _g3599435998_)
                                                         (cons _g3599335996_
                                                               _g3599435998_))
                                                       '()
                                                       _L35968_))))))
                                     _$e35989_)
                                    _expr35263_))))
                           (___kont4063140632_
                            (lambda (_L35858_ _L35859_ _L35860_)
                              (let ((_body35879_ (_optimize-e32262_ _L35858_)))
                                (cons '%#let-values
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _L35859_
                                               _L35860_)
                                              (foldr2 (lambda (_g3588035884_
                                                               _g3588135886_
                                                               _g3588235888_)
                                                        (cons (cons (cons _g3588135886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                        (cons _g3588035884_ '()))
                                  '()))
                      _g3588235888_))
              '()
              _L35859_
              _L35860_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _body35879_ '()))))))
                           (___kont4063540636_
                            (lambda (_L35726_ _L35727_ _L35728_)
                              (_bind-e__0__3959439595_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3574635749_
                                                       _g3574735751_)
                                                (cons _g3574635749_
                                                      _g3574735751_))
                                              '()
                                              _L35728_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3575335756_
                                                       _g3575435758_)
                                                (cons _g3575335756_
                                                      _g3575435758_))
                                              '()
                                              _L35727_)))
                               _L35726_)))
                           (___kont4063940640_
                            (lambda (_L35583_
                                     _L35584_
                                     _L35585_
                                     _L35586_
                                     _L35587_)
                              (_do-splice!32261_
                               (lambda ()
                                 (let ((_expr35629_
                                        (_optimize-e32262_ _L35585_)))
                                   (cons '%#letrec-values
                                         (cons (cons (cons (cons _L35587_ '())
                                                           (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3563035633_
                                                        _g3563135635_)
                                                 (cons _g3563035633_
                                                       _g3563135635_))
                                               '()
                                               _L35586_))
                                     (cons _expr35629_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g3563735640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3563835642_)
                         (cons _g3563735640_ _g3563835642_))
                       '()
                       _L35584_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L35583_ '()))))))))
                           (___kont4064540646_ (lambda () _expr35263_)))
                       (let* ((___match4083240833_
                               (lambda (_e3539135455_
                                        _hd3539235458_
                                        _tl3539335460_
                                        _e3539435463_
                                        _hd3539535466_
                                        _tl3539635468_
                                        _e3539735471_
                                        _hd3539835474_
                                        _tl3539935476_
                                        _e3540035479_
                                        _hd3540135482_
                                        _tl3540235484_
                                        _e3540335487_
                                        _hd3540435490_
                                        _tl3540535492_
                                        _e3540635495_
                                        _hd3540735498_
                                        _tl3540835500_
                                        _e3540935503_
                                        _hd3541035506_
                                        _tl3541135508_
                                        _e3541235511_
                                        _hd3541335514_
                                        _tl3541435516_
                                        ___splice4064140642_
                                        _target3541535519_
                                        _tl3541735521_)
                                 (letrec ((_loop3541835524_
                                           (lambda (_hd3541635527_
                                                    _id3542235529_)
                                             (if (gx#stx-pair? _hd3541635527_)
                                                 (let ((_e3541935532_
                                                        (gx#stx-e
                                                         _hd3541635527_)))
                                                   (let ((_lp-tl3542135537_
                                                          (##cdr _e3541935532_))
                                                         (_lp-hd3542035535_
                                                          (##car _e3541935532_)))
                                                     (_loop3541835524_
                                                      _lp-tl3542135537_
                                                      (cons _lp-hd3542035535_
                                                            _id3542235529_))))
                                                 (let ((_id3542335540_
                                                        (reverse _id3542235529_)))
                                                   (if (gx#stx-pair?
                                                        _tl3541435516_)
                                                       (let ((_e3542435543_
                                                              (gx#stx-e
                                                               _tl3541435516_)))
                                                         (let ((_tl3542635548_
                                                                (##cdr _e3542435543_))
                                                               (_hd3542535546_
                                                                (##car _e3542435543_)))
                                                           (if (gx#stx-null?
                                                                _tl3542635548_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3540835500_)
                           (if (gx#stx-pair/null? _tl3539935476_)
                               (let ((___splice4064340644_
                                      (gx#syntax-split-splice
                                       _tl3539935476_
                                       '0)))
                                 (let ((_tl3542935553_
                                        (##vector-ref ___splice4064340644_ '1))
                                       (_target3542735551_
                                        (##vector-ref
                                         ___splice4064340644_
                                         '0)))
                                   (if (gx#stx-null? _tl3542935553_)
                                       (letrec ((_loop3543035556_
                                                 (lambda (_hd3542835559_
                                                          _bind3543435561_)
                                                   (if (gx#stx-pair?
                                                        _hd3542835559_)
                                                       (let ((_e3543135564_
                                                              (gx#stx-e
                                                               _hd3542835559_)))
                                                         (let ((_lp-tl3543335569_
                                                                (##cdr _e3543135564_))
                                                               (_lp-hd3543235567_
                                                                (##car _e3543135564_)))
                                                           (_loop3543035556_
                                                            _lp-tl3543335569_
                                                            (cons _lp-hd3543235567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind3543435561_))))
               (let ((_bind3543535572_ (reverse _bind3543435561_)))
                 (if (gx#stx-pair? _tl3539635468_)
                     (let ((_e3543635575_ (gx#stx-e _tl3539635468_)))
                       (let ((_tl3543835580_ (##cdr _e3543635575_))
                             (_hd3543735578_ (##car _e3543635575_)))
                         (if (gx#stx-null? _tl3543835580_)
                             (___kont4063940640_
                              _hd3543735578_
                              _bind3543535572_
                              _hd3542535546_
                              _id3542335540_
                              _hd3540435490_)
                             (___kont4064540646_))))
                     (___kont4064540646_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3543035556_
                                          _target3542735551_
                                          '()))
                                       (___kont4064540646_))))
                               (___kont4064540646_))
                           (___kont4064540646_))
                       (___kont4064540646_))))
               (___kont4064540646_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop3541835524_ _target3541535519_ '()))))
                              (___match4076640767_
                               (lambda (_e3535735650_
                                        _hd3535835653_
                                        _tl3535935655_
                                        _e3536035658_
                                        _hd3536135661_
                                        _tl3536235663_
                                        ___splice4063740638_
                                        _target3536335666_
                                        _tl3536535668_)
                                 (letrec ((_loop3536635671_
                                           (lambda (_hd3536435674_
                                                    _expr3537035676_
                                                    _id3537135678_)
                                             (if (gx#stx-pair? _hd3536435674_)
                                                 (let ((_e3536735681_
                                                        (gx#stx-e
                                                         _hd3536435674_)))
                                                   (let ((_lp-tl3536935686_
                                                          (##cdr _e3536735681_))
                                                         (_lp-hd3536835684_
                                                          (##car _e3536735681_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3536835684_)
                                                         (let ((_e3537435689_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3536835684_)))
                   (let ((_tl3537635694_ (##cdr _e3537435689_))
                         (_hd3537535692_ (##car _e3537435689_)))
                     (if (gx#stx-pair? _hd3537535692_)
                         (let ((_e3537735697_ (gx#stx-e _hd3537535692_)))
                           (let ((_tl3537935702_ (##cdr _e3537735697_))
                                 (_hd3537835700_ (##car _e3537735697_)))
                             (if (gx#stx-null? _tl3537935702_)
                                 (if (gx#stx-pair? _tl3537635694_)
                                     (let ((_e3538035705_
                                            (gx#stx-e _tl3537635694_)))
                                       (let ((_tl3538235710_
                                              (##cdr _e3538035705_))
                                             (_hd3538135708_
                                              (##car _e3538035705_)))
                                         (if (gx#stx-null? _tl3538235710_)
                                             (_loop3536635671_
                                              _lp-tl3536935686_
                                              (cons _hd3538135708_
                                                    _expr3537035676_)
                                              (cons _hd3537835700_
                                                    _id3537135678_))
                                             (___kont4064540646_))))
                                     (___kont4064540646_))
                                 (___kont4064540646_))))
                         (___kont4064540646_))))
                 (___kont4064540646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3537335715_
                                                        (reverse _id3537135678_))
                                                       (_expr3537235713_
                                                        (reverse _expr3537035676_)))
                                                   (if (gx#stx-pair?
                                                        _tl3536235663_)
                                                       (let ((_e3538335718_
                                                              (gx#stx-e
                                                               _tl3536235663_)))
                                                         (let ((_tl3538535723_
                                                                (##cdr _e3538335718_))
                                                               (_hd3538435721_
                                                                (##car _e3538335718_)))
                                                           (if (gx#stx-null?
                                                                _tl3538535723_)
                                                               (___kont4063540636_
                                                                _hd3538435721_
                                                                _expr3537235713_
                                                                _id3537335715_)
                                                               (___kont4064540646_))))
                                                       (___kont4064540646_)))))))
                                   (_loop3536635671_
                                    _target3536335666_
                                    '()
                                    '()))))
                              (___match4074240743_
                               (lambda (_e3531935766_
                                        _hd3532035769_
                                        _tl3532135771_
                                        _e3532235774_
                                        _hd3532335777_
                                        _tl3532435779_
                                        ___splice4063340634_
                                        _target3532535782_
                                        _tl3532735784_)
                                 (letrec ((_loop3532835787_
                                           (lambda (_hd3532635790_
                                                    _xid3533235792_
                                                    _id3533335794_)
                                             (if (gx#stx-pair? _hd3532635790_)
                                                 (let ((_e3532935797_
                                                        (gx#stx-e
                                                         _hd3532635790_)))
                                                   (let ((_lp-tl3533135802_
                                                          (##cdr _e3532935797_))
                                                         (_lp-hd3533035800_
                                                          (##car _e3532935797_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3533035800_)
                                                         (let ((_e3533635805_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3533035800_)))
                   (let ((_tl3533835810_ (##cdr _e3533635805_))
                         (_hd3533735808_ (##car _e3533635805_)))
                     (if (gx#stx-pair? _hd3533735808_)
                         (let ((_e3533935813_ (gx#stx-e _hd3533735808_)))
                           (let ((_tl3534135818_ (##cdr _e3533935813_))
                                 (_hd3534035816_ (##car _e3533935813_)))
                             (if (gx#stx-null? _tl3534135818_)
                                 (if (gx#stx-pair? _tl3533835810_)
                                     (let ((_e3534235821_
                                            (gx#stx-e _tl3533835810_)))
                                       (let ((_tl3534435826_
                                              (##cdr _e3534235821_))
                                             (_hd3534335824_
                                              (##car _e3534235821_)))
                                         (if (gx#stx-pair? _hd3534335824_)
                                             (let ((_e3534535829_
                                                    (gx#stx-e _hd3534335824_)))
                                               (let ((_tl3534735834_
                                                      (##cdr _e3534535829_))
                                                     (_hd3534635832_
                                                      (##car _e3534535829_)))
                                                 (if (gx#identifier?
                                                      _hd3534635832_)
                                                     (if (gx#stx-eq?
                                                          '%#ref
                                                          _hd3534635832_)
                                                         (if (gx#stx-pair?
                                                              _tl3534735834_)
                                                             (let ((_e3534835837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3534735834_)))
                       (let ((_tl3535035842_ (##cdr _e3534835837_))
                             (_hd3534935840_ (##car _e3534835837_)))
                         (if (gx#stx-null? _tl3535035842_)
                             (if (gx#stx-null? _tl3534435826_)
                                 (_loop3532835787_
                                  _lp-tl3533135802_
                                  (cons _hd3534935840_ _xid3533235792_)
                                  (cons _hd3534035816_ _id3533335794_))
                                 (___match4076640767_
                                  _e3531935766_
                                  _hd3532035769_
                                  _tl3532135771_
                                  _e3532235774_
                                  _hd3532335777_
                                  _tl3532435779_
                                  ___splice4063340634_
                                  _target3532535782_
                                  _tl3532735784_))
                             (___match4076640767_
                              _e3531935766_
                              _hd3532035769_
                              _tl3532135771_
                              _e3532235774_
                              _hd3532335777_
                              _tl3532435779_
                              ___splice4063340634_
                              _target3532535782_
                              _tl3532735784_))))
                     (___match4076640767_
                      _e3531935766_
                      _hd3532035769_
                      _tl3532135771_
                      _e3532235774_
                      _hd3532335777_
                      _tl3532435779_
                      ___splice4063340634_
                      _target3532535782_
                      _tl3532735784_))
                 (___match4076640767_
                  _e3531935766_
                  _hd3532035769_
                  _tl3532135771_
                  _e3532235774_
                  _hd3532335777_
                  _tl3532435779_
                  ___splice4063340634_
                  _target3532535782_
                  _tl3532735784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___match4076640767_
                                                      _e3531935766_
                                                      _hd3532035769_
                                                      _tl3532135771_
                                                      _e3532235774_
                                                      _hd3532335777_
                                                      _tl3532435779_
                                                      ___splice4063340634_
                                                      _target3532535782_
                                                      _tl3532735784_))))
                                             (___match4076640767_
                                              _e3531935766_
                                              _hd3532035769_
                                              _tl3532135771_
                                              _e3532235774_
                                              _hd3532335777_
                                              _tl3532435779_
                                              ___splice4063340634_
                                              _target3532535782_
                                              _tl3532735784_))))
                                     (___match4076640767_
                                      _e3531935766_
                                      _hd3532035769_
                                      _tl3532135771_
                                      _e3532235774_
                                      _hd3532335777_
                                      _tl3532435779_
                                      ___splice4063340634_
                                      _target3532535782_
                                      _tl3532735784_))
                                 (___match4076640767_
                                  _e3531935766_
                                  _hd3532035769_
                                  _tl3532135771_
                                  _e3532235774_
                                  _hd3532335777_
                                  _tl3532435779_
                                  ___splice4063340634_
                                  _target3532535782_
                                  _tl3532735784_))))
                         (___match4076640767_
                          _e3531935766_
                          _hd3532035769_
                          _tl3532135771_
                          _e3532235774_
                          _hd3532335777_
                          _tl3532435779_
                          ___splice4063340634_
                          _target3532535782_
                          _tl3532735784_))))
                 (___match4076640767_
                  _e3531935766_
                  _hd3532035769_
                  _tl3532135771_
                  _e3532235774_
                  _hd3532335777_
                  _tl3532435779_
                  ___splice4063340634_
                  _target3532535782_
                  _tl3532735784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3533535847_
                                                        (reverse _id3533335794_))
                                                       (_xid3533435845_
                                                        (reverse _xid3533235792_)))
                                                   (if (gx#stx-pair?
                                                        _tl3532435779_)
                                                       (let ((_e3535135850_
                                                              (gx#stx-e
                                                               _tl3532435779_)))
                                                         (let ((_tl3535335855_
                                                                (##cdr _e3535135850_))
                                                               (_hd3535235853_
                                                                (##car _e3535135850_)))
                                                           (if (gx#stx-null?
                                                                _tl3535335855_)
                                                               (___kont4063140632_
                                                                _hd3535235853_
                                                                _xid3533435845_
                                                                _id3533535847_)
                                                               (___match4076640767_
                                                                _e3531935766_
                                                                _hd3532035769_
                                                                _tl3532135771_
                                                                _e3532235774_
                                                                _hd3532335777_
                                                                _tl3532435779_
                                                                ___splice4063340634_
                                                                _target3532535782_
                                                                _tl3532735784_))))
                                                       (___match4076640767_
                                                        _e3531935766_
                                                        _hd3532035769_
                                                        _tl3532135771_
                                                        _e3532235774_
                                                        _hd3532335777_
                                                        _tl3532435779_
                                                        ___splice4063340634_
                                                        _target3532535782_
                                                        _tl3532735784_)))))))
                                   (_loop3532835787_
                                    _target3532535782_
                                    '()
                                    '()))))
                              (___match4071840719_
                               (lambda (_e3528935896_
                                        _hd3529035899_
                                        _tl3529135901_
                                        _e3529235904_
                                        _hd3529335907_
                                        _tl3529435909_
                                        _e3529535912_
                                        _hd3529635915_
                                        _tl3529735917_
                                        _e3529835920_
                                        _hd3529935923_
                                        _tl3530035925_
                                        ___splice4062940630_
                                        _target3530135928_
                                        _tl3530335930_)
                                 (letrec ((_loop3530435933_
                                           (lambda (_hd3530235936_
                                                    _id3530835938_)
                                             (if (gx#stx-pair? _hd3530235936_)
                                                 (let ((_e3530535941_
                                                        (gx#stx-e
                                                         _hd3530235936_)))
                                                   (let ((_lp-tl3530735946_
                                                          (##cdr _e3530535941_))
                                                         (_lp-hd3530635944_
                                                          (##car _e3530535941_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3530635944_)
                                                         (let ((_e3531035949_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3530635944_)))
                   (let ((_tl3531235954_ (##cdr _e3531035949_))
                         (_hd3531135952_ (##car _e3531035949_)))
                     (if (gx#identifier? _hd3531135952_)
                         (if (gx#stx-eq? '%#ref _hd3531135952_)
                             (if (gx#stx-pair? _tl3531235954_)
                                 (let ((_e3531335957_
                                        (gx#stx-e _tl3531235954_)))
                                   (let ((_tl3531535962_ (##cdr _e3531335957_))
                                         (_hd3531435960_
                                          (##car _e3531335957_)))
                                     (if (gx#stx-null? _tl3531535962_)
                                         (_loop3530435933_
                                          _lp-tl3530735946_
                                          (cons _hd3531435960_ _id3530835938_))
                                         (___kont4064540646_))))
                                 (___kont4064540646_))
                             (___kont4064540646_))
                         (___kont4064540646_))))
                 (___kont4064540646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3530935965_
                                                        (reverse _id3530835938_)))
                                                   (___kont4062740628_
                                                    _id3530935965_
                                                    _hd3529935923_))))))
                                   (_loop3530435933_
                                    _target3530135928_
                                    '())))))
                         (if (gx#stx-pair? ___stx4062340624_)
                             (let ((_e3527536006_
                                    (gx#stx-e ___stx4062340624_)))
                               (let ((_tl3527736011_ (##cdr _e3527536006_))
                                     (_hd3527636009_ (##car _e3527536006_)))
                                 (if (gx#identifier? _hd3527636009_)
                                     (if (gx#stx-eq? '%#if _hd3527636009_)
                                         (if (gx#stx-pair? _tl3527736011_)
                                             (let ((_e3527836014_
                                                    (gx#stx-e _tl3527736011_)))
                                               (let ((_tl3528036019_
                                                      (##cdr _e3527836014_))
                                                     (_hd3527936017_
                                                      (##car _e3527836014_)))
                                                 (if (gx#stx-pair?
                                                      _tl3528036019_)
                                                     (let ((_e3528136022_
                                                            (gx#stx-e
                                                             _tl3528036019_)))
                                                       (let ((_tl3528336027_
                                                              (##cdr _e3528136022_))
                                                             (_hd3528236025_
                                                              (##car _e3528136022_)))
                                                         (if (gx#stx-pair?
                                                              _tl3528336027_)
                                                             (let ((_e3528436030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3528336027_)))
                       (let ((_tl3528636035_ (##cdr _e3528436030_))
                             (_hd3528536033_ (##car _e3528436030_)))
                         (if (gx#stx-null? _tl3528636035_)
                             (___kont4062540626_
                              _hd3528536033_
                              _hd3528236025_
                              _hd3527936017_)
                             (___kont4064540646_))))
                     (___kont4064540646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4064540646_))))
                                             (___kont4064540646_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3527636009_)
                                             (if (gx#stx-pair? _tl3527736011_)
                                                 (let ((_e3529235904_
                                                        (gx#stx-e
                                                         _tl3527736011_)))
                                                   (let ((_tl3529435909_
                                                          (##cdr _e3529235904_))
                                                         (_hd3529335907_
                                                          (##car _e3529235904_)))
                                                     (if (gx#stx-pair?
                                                          _hd3529335907_)
                                                         (let ((_e3529535912_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3529335907_)))
                   (let ((_tl3529735917_ (##cdr _e3529535912_))
                         (_hd3529635915_ (##car _e3529535912_)))
                     (if (gx#identifier? _hd3529635915_)
                         (if (gx#stx-eq? '%#ref _hd3529635915_)
                             (if (gx#stx-pair? _tl3529735917_)
                                 (let ((_e3529835920_
                                        (gx#stx-e _tl3529735917_)))
                                   (let ((_tl3530035925_ (##cdr _e3529835920_))
                                         (_hd3529935923_
                                          (##car _e3529835920_)))
                                     (if (gx#stx-null? _tl3530035925_)
                                         (if (gx#stx-pair/null? _tl3529435909_)
                                             (let ((___splice4062940630_
                                                    (gx#syntax-split-splice
                                                     _tl3529435909_
                                                     '0)))
                                               (let ((_tl3530335930_
                                                      (##vector-ref
                                                       ___splice4062940630_
                                                       '1))
                                                     (_target3530135928_
                                                      (##vector-ref
                                                       ___splice4062940630_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3530335930_)
                                                     (___match4071840719_
                                                      _e3527536006_
                                                      _hd3527636009_
                                                      _tl3527736011_
                                                      _e3529235904_
                                                      _hd3529335907_
                                                      _tl3529435909_
                                                      _e3529535912_
                                                      _hd3529635915_
                                                      _tl3529735917_
                                                      _e3529835920_
                                                      _hd3529935923_
                                                      _tl3530035925_
                                                      ___splice4062940630_
                                                      _target3530135928_
                                                      _tl3530335930_)
                                                     (___kont4064540646_))))
                                             (___kont4064540646_))
                                         (___kont4064540646_))))
                                 (___kont4064540646_))
                             (___kont4064540646_))
                         (___kont4064540646_))))
                 (___kont4064540646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4064540646_))
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _hd3527636009_)
                                                 (if (gx#stx-pair?
                                                      _tl3527736011_)
                                                     (let ((_e3532235774_
                                                            (gx#stx-e
                                                             _tl3527736011_)))
                                                       (let ((_tl3532435779_
                                                              (##cdr _e3532235774_))
                                                             (_hd3532335777_
                                                              (##car _e3532235774_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd3532335777_)
                                                             (let ((___splice4063340634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd3532335777_ '0)))
                       (let ((_tl3532735784_
                              (##vector-ref ___splice4063340634_ '1))
                             (_target3532535782_
                              (##vector-ref ___splice4063340634_ '0)))
                         (if (gx#stx-null? _tl3532735784_)
                             (___match4074240743_
                              _e3527536006_
                              _hd3527636009_
                              _tl3527736011_
                              _e3532235774_
                              _hd3532335777_
                              _tl3532435779_
                              ___splice4063340634_
                              _target3532535782_
                              _tl3532735784_)
                             (___kont4064540646_))))
                     (___kont4064540646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4064540646_))
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3527636009_)
                                                     (if (gx#stx-pair?
                                                          _tl3527736011_)
                                                         (let ((_e3539435463_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3527736011_)))
                   (let ((_tl3539635468_ (##cdr _e3539435463_))
                         (_hd3539535466_ (##car _e3539435463_)))
                     (if (gx#stx-pair? _hd3539535466_)
                         (let ((_e3539735471_ (gx#stx-e _hd3539535466_)))
                           (let ((_tl3539935476_ (##cdr _e3539735471_))
                                 (_hd3539835474_ (##car _e3539735471_)))
                             (if (gx#stx-pair? _hd3539835474_)
                                 (let ((_e3540035479_
                                        (gx#stx-e _hd3539835474_)))
                                   (let ((_tl3540235484_ (##cdr _e3540035479_))
                                         (_hd3540135482_
                                          (##car _e3540035479_)))
                                     (if (gx#stx-pair? _hd3540135482_)
                                         (let ((_e3540335487_
                                                (gx#stx-e _hd3540135482_)))
                                           (let ((_tl3540535492_
                                                  (##cdr _e3540335487_))
                                                 (_hd3540435490_
                                                  (##car _e3540335487_)))
                                             (if (gx#stx-null? _tl3540535492_)
                                                 (if (gx#stx-pair?
                                                      _tl3540235484_)
                                                     (let ((_e3540635495_
                                                            (gx#stx-e
                                                             _tl3540235484_)))
                                                       (let ((_tl3540835500_
                                                              (##cdr _e3540635495_))
                                                             (_hd3540735498_
                                                              (##car _e3540635495_)))
                                                         (if (gx#stx-pair?
                                                              _hd3540735498_)
                                                             (let ((_e3540935503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3540735498_)))
                       (let ((_tl3541135508_ (##cdr _e3540935503_))
                             (_hd3541035506_ (##car _e3540935503_)))
                         (if (gx#identifier? _hd3541035506_)
                             (if (gx#stx-eq? '%#lambda _hd3541035506_)
                                 (if (gx#stx-pair? _tl3541135508_)
                                     (let ((_e3541235511_
                                            (gx#stx-e _tl3541135508_)))
                                       (let ((_tl3541435516_
                                              (##cdr _e3541235511_))
                                             (_hd3541335514_
                                              (##car _e3541235511_)))
                                         (if (gx#stx-pair/null? _hd3541335514_)
                                             (let ((___splice4064140642_
                                                    (gx#syntax-split-splice
                                                     _hd3541335514_
                                                     '0)))
                                               (let ((_tl3541735521_
                                                      (##vector-ref
                                                       ___splice4064140642_
                                                       '1))
                                                     (_target3541535519_
                                                      (##vector-ref
                                                       ___splice4064140642_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3541735521_)
                                                     (___match4083240833_
                                                      _e3527536006_
                                                      _hd3527636009_
                                                      _tl3527736011_
                                                      _e3539435463_
                                                      _hd3539535466_
                                                      _tl3539635468_
                                                      _e3539735471_
                                                      _hd3539835474_
                                                      _tl3539935476_
                                                      _e3540035479_
                                                      _hd3540135482_
                                                      _tl3540235484_
                                                      _e3540335487_
                                                      _hd3540435490_
                                                      _tl3540535492_
                                                      _e3540635495_
                                                      _hd3540735498_
                                                      _tl3540835500_
                                                      _e3540935503_
                                                      _hd3541035506_
                                                      _tl3541135508_
                                                      _e3541235511_
                                                      _hd3541335514_
                                                      _tl3541435516_
                                                      ___splice4064140642_
                                                      _target3541535519_
                                                      _tl3541735521_)
                                                     (___kont4064540646_))))
                                             (___kont4064540646_))))
                                     (___kont4064540646_))
                                 (___kont4064540646_))
                             (___kont4064540646_))))
                     (___kont4064540646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4064540646_))
                                                 (___kont4064540646_))))
                                         (___kont4064540646_))))
                                 (___kont4064540646_))))
                         (___kont4064540646_))))
                 (___kont4064540646_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4064540646_)))))
                                     (___kont4064540646_))))
                             (___kont4064540646_)))))))
                (_optimize-t__3958439585_
                 (lambda (_expr35246_ _test35247_ _continue35248_)
                   (_do-assert32251_
                    (cons (cons _test35247_ '#t) '())
                    (lambda () (_continue35248_ _expr35246_)))))
                (_optimize-t__0__3958639587_
                 (lambda (_expr35254_ _test35255_)
                   (let ((_continue35257_ _optimize-e32262_))
                     (_optimize-t__3958439585_
                      _expr35254_
                      _test35255_
                      _continue35257_))))
                (_optimize-t32263_
                 (lambda _g42686_
                   (let ((_g42685_ (length _g42686_)))
                     (cond ((##fx= _g42685_ 2)
                            (apply _optimize-t__0__3958639587_ _g42686_))
                           ((##fx= _g42685_ 3)
                            (apply _optimize-t__3958439585_ _g42686_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42686_))))))
                (_optimize-f__3958839589_
                 (lambda (_expr34331_ _test34332_)
                   (_do-assert32251_
                    (if _test34332_ (cons (cons _test34332_ '#f) '()) '())
                    (lambda ()
                      (let* ((___stx4087340874_ _expr34331_)
                             (_g3434034513_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4087340874_))))
                        (let ((___kont4087540876_
                               (lambda (_L35101_ _L35102_)
                                 (let ((_$e35122_
                                        (_lookup-block32270_ _L35102_)))
                                   (if _$e35122_
                                       ((lambda (_block35125_)
                                          (if (_nonlinear-block?32272_
                                               _block35125_)
                                              _expr34331_
                                              (let* ((_inline35134_
                                                      (_inline-block32271_
                                                       _block35125_
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g3512635129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3512735131_)
                           (cons _g3512635129_ _g3512735131_))
                         '()
                         _L35101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___stx4083540836_
                                                      _inline35134_)
                                                     (_g3513735158_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4083540836_))))
                                                (let ((___kont4083740838_
                                                       (lambda (_L35202_
                                                                _L35203_
                                                                _L35204_)
                                                         (let ((_$e35226_
                                                                (_assert-e32265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L35204_)))
                   (if (eq? '#t _$e35226_)
                       (if _in-splice?32250_
                           (_optimize-f__0__3959039591_ _L35203_)
                           (_optimize-e32262_ _L35203_))
                       (if (eq? '#f _$e35226_)
                           (_optimize-f__0__3959039591_ _L35202_)
                           _expr34331_)))))
              (___kont4083940840_
               (lambda () (_optimize-f__0__3959039591_ _inline35134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4083540836_)
                                                      (let ((_e3514235170_
                                                             (gx#stx-e
                                                              ___stx4083540836_)))
                                                        (let ((_tl3514435175_
                                                               (##cdr _e3514235170_))
                                                              (_hd3514335173_
                                                               (##car _e3514235170_)))
                                                          (if (gx#identifier?
                                                               _hd3514335173_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#if
                           _hd3514335173_)
                          (if (gx#stx-pair? _tl3514435175_)
                              (let ((_e3514535178_ (gx#stx-e _tl3514435175_)))
                                (let ((_tl3514735183_ (##cdr _e3514535178_))
                                      (_hd3514635181_ (##car _e3514535178_)))
                                  (if (gx#stx-pair? _tl3514735183_)
                                      (let ((_e3514835186_
                                             (gx#stx-e _tl3514735183_)))
                                        (let ((_tl3515035191_
                                               (##cdr _e3514835186_))
                                              (_hd3514935189_
                                               (##car _e3514835186_)))
                                          (if (gx#stx-pair? _tl3515035191_)
                                              (let ((_e3515135194_
                                                     (gx#stx-e
                                                      _tl3515035191_)))
                                                (let ((_tl3515335199_
                                                       (##cdr _e3515135194_))
                                                      (_hd3515235197_
                                                       (##car _e3515135194_)))
                                                  (if (gx#stx-null?
                                                       _tl3515335199_)
                                                      (___kont4083740838_
                                                       _hd3515235197_
                                                       _hd3514935189_
                                                       _hd3514635181_)
                                                      (___kont4083940840_))))
                                              (___kont4083940840_))))
                                      (___kont4083940840_))))
                              (___kont4083940840_))
                          (___kont4083940840_))
                      (___kont4083940840_))))
              (___kont4083940840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e35122_)
                                       _expr34331_))))
                              (___kont4087940880_
                               (lambda (_L34999_ _L35000_ _L35001_)
                                 (let ((_$e35018_ (_assert-e32265_ _L35001_)))
                                   (if (eq? '#t _$e35018_)
                                       (if _in-splice?32250_
                                           (_optimize-f__0__3959039591_
                                            _L35000_)
                                           (_optimize-e32262_ _L35000_))
                                       (if (eq? '#f _$e35018_)
                                           (_optimize-f__0__3959039591_
                                            _L34999_)
                                           (let ((_K35021_
                                                  (_optimize-t__3958439585_
                                                   _L35000_
                                                   _L35001_
                                                   _optimize-f32264_))
                                                 (_E35022_
                                                  (_optimize-f__3958839589_
                                                   _L34999_
                                                   _L35001_)))
                                             (if (equal? (gxc#apply-generate-runtime-repr
                                                          _K35021_)
                                                         (gxc#apply-generate-runtime-repr
                                                          _E35022_))
                                                 _K35021_
                                                 (cons '%#if
                                                       (cons _L35001_
                                                             (cons _K35021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _E35022_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (___kont4088140882_
                               (lambda (_L34929_ _L34930_ _L34931_)
                                 (let ((_body34950_
                                        (_optimize-f__0__3959039591_
                                         _L34929_)))
                                   (cons '%#let-values
                                         (cons (begin
                                                 (gx#syntax-check-splice-targets
                                                  _L34930_
                                                  _L34931_)
                                                 (foldr2 (lambda (_g3495134955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3495234957_
                          _g3495334959_)
                   (cons (cons (cons _g3495234957_ '())
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g3495134955_ '()))
                                     '()))
                         _g3495334959_))
                 '()
                 _L34930_
                 _L34931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _body34950_ '()))))))
                              (___kont4088540886_
                               (lambda (_L34797_ _L34798_ _L34799_)
                                 (_bind-e__3959239593_
                                  (map cons
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3481734820_
                                                          _g3481834822_)
                                                   (cons _g3481734820_
                                                         _g3481834822_))
                                                 '()
                                                 _L34799_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3482434827_
                                                          _g3482534829_)
                                                   (cons _g3482434827_
                                                         _g3482534829_))
                                                 '()
                                                 _L34798_)))
                                  _L34797_
                                  _optimize-f32264_)))
                              (___kont4088940890_
                               (lambda (_L34653_
                                        _L34654_
                                        _L34655_
                                        _L34656_
                                        _L34657_)
                                 (_do-splice!32261_
                                  (lambda ()
                                    (let ((_expr34700_
                                           (_optimize-f__0__3959039591_
                                            _L34655_)))
                                      (cons '%#letrec-values
                                            (cons (cons (cons (cons _L34657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#lambda
                                  (cons (begin
                                          '#!void
                                          (foldr1 (lambda (_g3470134704_
                                                           _g3470234706_)
                                                    (cons _g3470134704_
                                                          _g3470234706_))
                                                  '()
                                                  _L34656_))
                                        (cons _expr34700_ '())))
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3470834711_ _g3470934713_)
                            (cons _g3470834711_ _g3470934713_))
                          '()
                          _L34654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L34653_ '()))))))))
                              (___kont4089540896_ (lambda () _expr34331_)))
                          (let* ((___match4108241083_
                                  (lambda (_e3446134525_
                                           _hd3446234528_
                                           _tl3446334530_
                                           _e3446434533_
                                           _hd3446534536_
                                           _tl3446634538_
                                           _e3446734541_
                                           _hd3446834544_
                                           _tl3446934546_
                                           _e3447034549_
                                           _hd3447134552_
                                           _tl3447234554_
                                           _e3447334557_
                                           _hd3447434560_
                                           _tl3447534562_
                                           _e3447634565_
                                           _hd3447734568_
                                           _tl3447834570_
                                           _e3447934573_
                                           _hd3448034576_
                                           _tl3448134578_
                                           _e3448234581_
                                           _hd3448334584_
                                           _tl3448434586_
                                           ___splice4089140892_
                                           _target3448534589_
                                           _tl3448734591_)
                                    (letrec ((_loop3448834594_
                                              (lambda (_hd3448634597_
                                                       _id3449234599_)
                                                (if (gx#stx-pair?
                                                     _hd3448634597_)
                                                    (let ((_e3448934602_
                                                           (gx#stx-e
                                                            _hd3448634597_)))
                                                      (let ((_lp-tl3449134607_
                                                             (##cdr _e3448934602_))
                                                            (_lp-hd3449034605_
                                                             (##car _e3448934602_)))
                                                        (_loop3448834594_
                                                         _lp-tl3449134607_
                                                         (cons _lp-hd3449034605_
                                                               _id3449234599_))))
                                                    (let ((_id3449334610_
                                                           (reverse _id3449234599_)))
                                                      (if (gx#stx-pair?
                                                           _tl3448434586_)
                                                          (let ((_e3449434613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3448434586_)))
                    (let ((_tl3449634618_ (##cdr _e3449434613_))
                          (_hd3449534616_ (##car _e3449434613_)))
                      (if (gx#stx-null? _tl3449634618_)
                          (if (gx#stx-null? _tl3447834570_)
                              (if (gx#stx-pair/null? _tl3446934546_)
                                  (let ((___splice4089340894_
                                         (gx#syntax-split-splice
                                          _tl3446934546_
                                          '0)))
                                    (let ((_tl3449934623_
                                           (##vector-ref
                                            ___splice4089340894_
                                            '1))
                                          (_target3449734621_
                                           (##vector-ref
                                            ___splice4089340894_
                                            '0)))
                                      (if (gx#stx-null? _tl3449934623_)
                                          (letrec ((_loop3450034626_
                                                    (lambda (_hd3449834629_
                                                             _bind3450434631_)
                                                      (if (gx#stx-pair?
                                                           _hd3449834629_)
                                                          (let ((_e3450134634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3449834629_)))
                    (let ((_lp-tl3450334639_ (##cdr _e3450134634_))
                          (_lp-hd3450234637_ (##car _e3450134634_)))
                      (_loop3450034626_
                       _lp-tl3450334639_
                       (cons _lp-hd3450234637_ _bind3450434631_))))
                  (let ((_bind3450534642_ (reverse _bind3450434631_)))
                    (if (gx#stx-pair? _tl3446634538_)
                        (let ((_e3450634645_ (gx#stx-e _tl3446634538_)))
                          (let ((_tl3450834650_ (##cdr _e3450634645_))
                                (_hd3450734648_ (##car _e3450634645_)))
                            (if (gx#stx-null? _tl3450834650_)
                                (___kont4088940890_
                                 _hd3450734648_
                                 _bind3450534642_
                                 _hd3449534616_
                                 _id3449334610_
                                 _hd3447434560_)
                                (___kont4089540896_))))
                        (___kont4089540896_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3450034626_
                                             _target3449734621_
                                             '()))
                                          (___kont4089540896_))))
                                  (___kont4089540896_))
                              (___kont4089540896_))
                          (___kont4089540896_))))
                  (___kont4089540896_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3448834594_
                                       _target3448534589_
                                       '()))))
                                 (___match4101641017_
                                  (lambda (_e3442734721_
                                           _hd3442834724_
                                           _tl3442934726_
                                           _e3443034729_
                                           _hd3443134732_
                                           _tl3443234734_
                                           ___splice4088740888_
                                           _target3443334737_
                                           _tl3443534739_)
                                    (letrec ((_loop3443634742_
                                              (lambda (_hd3443434745_
                                                       _expr3444034747_
                                                       _id3444134749_)
                                                (if (gx#stx-pair?
                                                     _hd3443434745_)
                                                    (let ((_e3443734752_
                                                           (gx#stx-e
                                                            _hd3443434745_)))
                                                      (let ((_lp-tl3443934757_
                                                             (##cdr _e3443734752_))
                                                            (_lp-hd3443834755_
                                                             (##car _e3443734752_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3443834755_)
                                                            (let ((_e3444434760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3443834755_)))
                      (let ((_tl3444634765_ (##cdr _e3444434760_))
                            (_hd3444534763_ (##car _e3444434760_)))
                        (if (gx#stx-pair? _hd3444534763_)
                            (let ((_e3444734768_ (gx#stx-e _hd3444534763_)))
                              (let ((_tl3444934773_ (##cdr _e3444734768_))
                                    (_hd3444834771_ (##car _e3444734768_)))
                                (if (gx#stx-null? _tl3444934773_)
                                    (if (gx#stx-pair? _tl3444634765_)
                                        (let ((_e3445034776_
                                               (gx#stx-e _tl3444634765_)))
                                          (let ((_tl3445234781_
                                                 (##cdr _e3445034776_))
                                                (_hd3445134779_
                                                 (##car _e3445034776_)))
                                            (if (gx#stx-null? _tl3445234781_)
                                                (_loop3443634742_
                                                 _lp-tl3443934757_
                                                 (cons _hd3445134779_
                                                       _expr3444034747_)
                                                 (cons _hd3444834771_
                                                       _id3444134749_))
                                                (___kont4089540896_))))
                                        (___kont4089540896_))
                                    (___kont4089540896_))))
                            (___kont4089540896_))))
                    (___kont4089540896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3444334786_
                                                           (reverse _id3444134749_))
                                                          (_expr3444234784_
                                                           (reverse _expr3444034747_)))
                                                      (if (gx#stx-pair?
                                                           _tl3443234734_)
                                                          (let ((_e3445334789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3443234734_)))
                    (let ((_tl3445534794_ (##cdr _e3445334789_))
                          (_hd3445434792_ (##car _e3445334789_)))
                      (if (gx#stx-null? _tl3445534794_)
                          (___kont4088540886_
                           _hd3445434792_
                           _expr3444234784_
                           _id3444334786_)
                          (___kont4089540896_))))
                  (___kont4089540896_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3443634742_
                                       _target3443334737_
                                       '()
                                       '()))))
                                 (___match4099240993_
                                  (lambda (_e3438934837_
                                           _hd3439034840_
                                           _tl3439134842_
                                           _e3439234845_
                                           _hd3439334848_
                                           _tl3439434850_
                                           ___splice4088340884_
                                           _target3439534853_
                                           _tl3439734855_)
                                    (letrec ((_loop3439834858_
                                              (lambda (_hd3439634861_
                                                       _xid3440234863_
                                                       _id3440334865_)
                                                (if (gx#stx-pair?
                                                     _hd3439634861_)
                                                    (let ((_e3439934868_
                                                           (gx#stx-e
                                                            _hd3439634861_)))
                                                      (let ((_lp-tl3440134873_
                                                             (##cdr _e3439934868_))
                                                            (_lp-hd3440034871_
                                                             (##car _e3439934868_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3440034871_)
                                                            (let ((_e3440634876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3440034871_)))
                      (let ((_tl3440834881_ (##cdr _e3440634876_))
                            (_hd3440734879_ (##car _e3440634876_)))
                        (if (gx#stx-pair? _hd3440734879_)
                            (let ((_e3440934884_ (gx#stx-e _hd3440734879_)))
                              (let ((_tl3441134889_ (##cdr _e3440934884_))
                                    (_hd3441034887_ (##car _e3440934884_)))
                                (if (gx#stx-null? _tl3441134889_)
                                    (if (gx#stx-pair? _tl3440834881_)
                                        (let ((_e3441234892_
                                               (gx#stx-e _tl3440834881_)))
                                          (let ((_tl3441434897_
                                                 (##cdr _e3441234892_))
                                                (_hd3441334895_
                                                 (##car _e3441234892_)))
                                            (if (gx#stx-pair? _hd3441334895_)
                                                (let ((_e3441534900_
                                                       (gx#stx-e
                                                        _hd3441334895_)))
                                                  (let ((_tl3441734905_
                                                         (##cdr _e3441534900_))
                                                        (_hd3441634903_
                                                         (##car _e3441534900_)))
                                                    (if (gx#identifier?
                                                         _hd3441634903_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3441634903_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3441734905_)
                        (let ((_e3441834908_ (gx#stx-e _tl3441734905_)))
                          (let ((_tl3442034913_ (##cdr _e3441834908_))
                                (_hd3441934911_ (##car _e3441834908_)))
                            (if (gx#stx-null? _tl3442034913_)
                                (if (gx#stx-null? _tl3441434897_)
                                    (_loop3439834858_
                                     _lp-tl3440134873_
                                     (cons _hd3441934911_ _xid3440234863_)
                                     (cons _hd3441034887_ _id3440334865_))
                                    (___match4101641017_
                                     _e3438934837_
                                     _hd3439034840_
                                     _tl3439134842_
                                     _e3439234845_
                                     _hd3439334848_
                                     _tl3439434850_
                                     ___splice4088340884_
                                     _target3439534853_
                                     _tl3439734855_))
                                (___match4101641017_
                                 _e3438934837_
                                 _hd3439034840_
                                 _tl3439134842_
                                 _e3439234845_
                                 _hd3439334848_
                                 _tl3439434850_
                                 ___splice4088340884_
                                 _target3439534853_
                                 _tl3439734855_))))
                        (___match4101641017_
                         _e3438934837_
                         _hd3439034840_
                         _tl3439134842_
                         _e3439234845_
                         _hd3439334848_
                         _tl3439434850_
                         ___splice4088340884_
                         _target3439534853_
                         _tl3439734855_))
                    (___match4101641017_
                     _e3438934837_
                     _hd3439034840_
                     _tl3439134842_
                     _e3439234845_
                     _hd3439334848_
                     _tl3439434850_
                     ___splice4088340884_
                     _target3439534853_
                     _tl3439734855_))
                (___match4101641017_
                 _e3438934837_
                 _hd3439034840_
                 _tl3439134842_
                 _e3439234845_
                 _hd3439334848_
                 _tl3439434850_
                 ___splice4088340884_
                 _target3439534853_
                 _tl3439734855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match4101641017_
                                                 _e3438934837_
                                                 _hd3439034840_
                                                 _tl3439134842_
                                                 _e3439234845_
                                                 _hd3439334848_
                                                 _tl3439434850_
                                                 ___splice4088340884_
                                                 _target3439534853_
                                                 _tl3439734855_))))
                                        (___match4101641017_
                                         _e3438934837_
                                         _hd3439034840_
                                         _tl3439134842_
                                         _e3439234845_
                                         _hd3439334848_
                                         _tl3439434850_
                                         ___splice4088340884_
                                         _target3439534853_
                                         _tl3439734855_))
                                    (___match4101641017_
                                     _e3438934837_
                                     _hd3439034840_
                                     _tl3439134842_
                                     _e3439234845_
                                     _hd3439334848_
                                     _tl3439434850_
                                     ___splice4088340884_
                                     _target3439534853_
                                     _tl3439734855_))))
                            (___match4101641017_
                             _e3438934837_
                             _hd3439034840_
                             _tl3439134842_
                             _e3439234845_
                             _hd3439334848_
                             _tl3439434850_
                             ___splice4088340884_
                             _target3439534853_
                             _tl3439734855_))))
                    (___match4101641017_
                     _e3438934837_
                     _hd3439034840_
                     _tl3439134842_
                     _e3439234845_
                     _hd3439334848_
                     _tl3439434850_
                     ___splice4088340884_
                     _target3439534853_
                     _tl3439734855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3440534918_
                                                           (reverse _id3440334865_))
                                                          (_xid3440434916_
                                                           (reverse _xid3440234863_)))
                                                      (if (gx#stx-pair?
                                                           _tl3439434850_)
                                                          (let ((_e3442134921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3439434850_)))
                    (let ((_tl3442334926_ (##cdr _e3442134921_))
                          (_hd3442234924_ (##car _e3442134921_)))
                      (if (gx#stx-null? _tl3442334926_)
                          (___kont4088140882_
                           _hd3442234924_
                           _xid3440434916_
                           _id3440534918_)
                          (___match4101641017_
                           _e3438934837_
                           _hd3439034840_
                           _tl3439134842_
                           _e3439234845_
                           _hd3439334848_
                           _tl3439434850_
                           ___splice4088340884_
                           _target3439534853_
                           _tl3439734855_))))
                  (___match4101641017_
                   _e3438934837_
                   _hd3439034840_
                   _tl3439134842_
                   _e3439234845_
                   _hd3439334848_
                   _tl3439434850_
                   ___splice4088340884_
                   _target3439534853_
                   _tl3439734855_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3439834858_
                                       _target3439534853_
                                       '()
                                       '()))))
                                 (___match4093840939_
                                  (lambda (_e3434435029_
                                           _hd3434535032_
                                           _tl3434635034_
                                           _e3434735037_
                                           _hd3434835040_
                                           _tl3434935042_
                                           _e3435035045_
                                           _hd3435135048_
                                           _tl3435235050_
                                           _e3435335053_
                                           _hd3435435056_
                                           _tl3435535058_
                                           ___splice4087740878_
                                           _target3435635061_
                                           _tl3435835063_)
                                    (letrec ((_loop3435935066_
                                              (lambda (_hd3435735069_
                                                       _id3436335071_)
                                                (if (gx#stx-pair?
                                                     _hd3435735069_)
                                                    (let ((_e3436035074_
                                                           (gx#stx-e
                                                            _hd3435735069_)))
                                                      (let ((_lp-tl3436235079_
                                                             (##cdr _e3436035074_))
                                                            (_lp-hd3436135077_
                                                             (##car _e3436035074_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3436135077_)
                                                            (let ((_e3436535082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3436135077_)))
                      (let ((_tl3436735087_ (##cdr _e3436535082_))
                            (_hd3436635085_ (##car _e3436535082_)))
                        (if (gx#identifier? _hd3436635085_)
                            (if (gx#stx-eq? '%#ref _hd3436635085_)
                                (if (gx#stx-pair? _tl3436735087_)
                                    (let ((_e3436835090_
                                           (gx#stx-e _tl3436735087_)))
                                      (let ((_tl3437035095_
                                             (##cdr _e3436835090_))
                                            (_hd3436935093_
                                             (##car _e3436835090_)))
                                        (if (gx#stx-null? _tl3437035095_)
                                            (_loop3435935066_
                                             _lp-tl3436235079_
                                             (cons _hd3436935093_
                                                   _id3436335071_))
                                            (___kont4089540896_))))
                                    (___kont4089540896_))
                                (___kont4089540896_))
                            (___kont4089540896_))))
                    (___kont4089540896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3436435098_
                                                           (reverse _id3436335071_)))
                                                      (___kont4087540876_
                                                       _id3436435098_
                                                       _hd3435435056_))))))
                                      (_loop3435935066_
                                       _target3435635061_
                                       '())))))
                            (if (gx#stx-pair? ___stx4087340874_)
                                (let ((_e3434435029_
                                       (gx#stx-e ___stx4087340874_)))
                                  (let ((_tl3434635034_ (##cdr _e3434435029_))
                                        (_hd3434535032_ (##car _e3434435029_)))
                                    (if (gx#identifier? _hd3434535032_)
                                        (if (gx#stx-eq? '%#call _hd3434535032_)
                                            (if (gx#stx-pair? _tl3434635034_)
                                                (let ((_e3434735037_
                                                       (gx#stx-e
                                                        _tl3434635034_)))
                                                  (let ((_tl3434935042_
                                                         (##cdr _e3434735037_))
                                                        (_hd3434835040_
                                                         (##car _e3434735037_)))
                                                    (if (gx#stx-pair?
                                                         _hd3434835040_)
                                                        (let ((_e3435035045_
                                                               (gx#stx-e
                                                                _hd3434835040_)))
                                                          (let ((_tl3435235050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3435035045_))
                        (_hd3435135048_ (##car _e3435035045_)))
                    (if (gx#identifier? _hd3435135048_)
                        (if (gx#stx-eq? '%#ref _hd3435135048_)
                            (if (gx#stx-pair? _tl3435235050_)
                                (let ((_e3435335053_
                                       (gx#stx-e _tl3435235050_)))
                                  (let ((_tl3435535058_ (##cdr _e3435335053_))
                                        (_hd3435435056_ (##car _e3435335053_)))
                                    (if (gx#stx-null? _tl3435535058_)
                                        (if (gx#stx-pair/null? _tl3434935042_)
                                            (let ((___splice4087740878_
                                                   (gx#syntax-split-splice
                                                    _tl3434935042_
                                                    '0)))
                                              (let ((_tl3435835063_
                                                     (##vector-ref
                                                      ___splice4087740878_
                                                      '1))
                                                    (_target3435635061_
                                                     (##vector-ref
                                                      ___splice4087740878_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3435835063_)
                                                    (___match4093840939_
                                                     _e3434435029_
                                                     _hd3434535032_
                                                     _tl3434635034_
                                                     _e3434735037_
                                                     _hd3434835040_
                                                     _tl3434935042_
                                                     _e3435035045_
                                                     _hd3435135048_
                                                     _tl3435235050_
                                                     _e3435335053_
                                                     _hd3435435056_
                                                     _tl3435535058_
                                                     ___splice4087740878_
                                                     _target3435635061_
                                                     _tl3435835063_)
                                                    (___kont4089540896_))))
                                            (___kont4089540896_))
                                        (___kont4089540896_))))
                                (___kont4089540896_))
                            (___kont4089540896_))
                        (___kont4089540896_))))
                (___kont4089540896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4089540896_))
                                            (if (gx#stx-eq?
                                                 '%#if
                                                 _hd3434535032_)
                                                (if (gx#stx-pair?
                                                     _tl3434635034_)
                                                    (let ((_e3437734975_
                                                           (gx#stx-e
                                                            _tl3434635034_)))
                                                      (let ((_tl3437934980_
                                                             (##cdr _e3437734975_))
                                                            (_hd3437834978_
                                                             (##car _e3437734975_)))
                                                        (if (gx#stx-pair?
                                                             _tl3437934980_)
                                                            (let ((_e3438034983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3437934980_)))
                      (let ((_tl3438234988_ (##cdr _e3438034983_))
                            (_hd3438134986_ (##car _e3438034983_)))
                        (if (gx#stx-pair? _tl3438234988_)
                            (let ((_e3438334991_ (gx#stx-e _tl3438234988_)))
                              (let ((_tl3438534996_ (##cdr _e3438334991_))
                                    (_hd3438434994_ (##car _e3438334991_)))
                                (if (gx#stx-null? _tl3438534996_)
                                    (___kont4087940880_
                                     _hd3438434994_
                                     _hd3438134986_
                                     _hd3437834978_)
                                    (___kont4089540896_))))
                            (___kont4089540896_))))
                    (___kont4089540896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4089540896_))
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd3434535032_)
                                                    (if (gx#stx-pair?
                                                         _tl3434635034_)
                                                        (let ((_e3439234845_
                                                               (gx#stx-e
                                                                _tl3434635034_)))
                                                          (let ((_tl3439434850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3439234845_))
                        (_hd3439334848_ (##car _e3439234845_)))
                    (if (gx#stx-pair/null? _hd3439334848_)
                        (let ((___splice4088340884_
                               (gx#syntax-split-splice _hd3439334848_ '0)))
                          (let ((_tl3439734855_
                                 (##vector-ref ___splice4088340884_ '1))
                                (_target3439534853_
                                 (##vector-ref ___splice4088340884_ '0)))
                            (if (gx#stx-null? _tl3439734855_)
                                (___match4099240993_
                                 _e3434435029_
                                 _hd3434535032_
                                 _tl3434635034_
                                 _e3439234845_
                                 _hd3439334848_
                                 _tl3439434850_
                                 ___splice4088340884_
                                 _target3439534853_
                                 _tl3439734855_)
                                (___kont4089540896_))))
                        (___kont4089540896_))))
                (___kont4089540896_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#letrec-values
                                                         _hd3434535032_)
                                                        (if (gx#stx-pair?
                                                             _tl3434635034_)
                                                            (let ((_e3446434533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3434635034_)))
                      (let ((_tl3446634538_ (##cdr _e3446434533_))
                            (_hd3446534536_ (##car _e3446434533_)))
                        (if (gx#stx-pair? _hd3446534536_)
                            (let ((_e3446734541_ (gx#stx-e _hd3446534536_)))
                              (let ((_tl3446934546_ (##cdr _e3446734541_))
                                    (_hd3446834544_ (##car _e3446734541_)))
                                (if (gx#stx-pair? _hd3446834544_)
                                    (let ((_e3447034549_
                                           (gx#stx-e _hd3446834544_)))
                                      (let ((_tl3447234554_
                                             (##cdr _e3447034549_))
                                            (_hd3447134552_
                                             (##car _e3447034549_)))
                                        (if (gx#stx-pair? _hd3447134552_)
                                            (let ((_e3447334557_
                                                   (gx#stx-e _hd3447134552_)))
                                              (let ((_tl3447534562_
                                                     (##cdr _e3447334557_))
                                                    (_hd3447434560_
                                                     (##car _e3447334557_)))
                                                (if (gx#stx-null?
                                                     _tl3447534562_)
                                                    (if (gx#stx-pair?
                                                         _tl3447234554_)
                                                        (let ((_e3447634565_
                                                               (gx#stx-e
                                                                _tl3447234554_)))
                                                          (let ((_tl3447834570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3447634565_))
                        (_hd3447734568_ (##car _e3447634565_)))
                    (if (gx#stx-pair? _hd3447734568_)
                        (let ((_e3447934573_ (gx#stx-e _hd3447734568_)))
                          (let ((_tl3448134578_ (##cdr _e3447934573_))
                                (_hd3448034576_ (##car _e3447934573_)))
                            (if (gx#identifier? _hd3448034576_)
                                (if (gx#stx-eq? '%#lambda _hd3448034576_)
                                    (if (gx#stx-pair? _tl3448134578_)
                                        (let ((_e3448234581_
                                               (gx#stx-e _tl3448134578_)))
                                          (let ((_tl3448434586_
                                                 (##cdr _e3448234581_))
                                                (_hd3448334584_
                                                 (##car _e3448234581_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3448334584_)
                                                (let ((___splice4089140892_
                                                       (gx#syntax-split-splice
                                                        _hd3448334584_
                                                        '0)))
                                                  (let ((_tl3448734591_
                                                         (##vector-ref
                                                          ___splice4089140892_
                                                          '1))
                                                        (_target3448534589_
                                                         (##vector-ref
                                                          ___splice4089140892_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3448734591_)
                                                        (___match4108241083_
                                                         _e3434435029_
                                                         _hd3434535032_
                                                         _tl3434635034_
                                                         _e3446434533_
                                                         _hd3446534536_
                                                         _tl3446634538_
                                                         _e3446734541_
                                                         _hd3446834544_
                                                         _tl3446934546_
                                                         _e3447034549_
                                                         _hd3447134552_
                                                         _tl3447234554_
                                                         _e3447334557_
                                                         _hd3447434560_
                                                         _tl3447534562_
                                                         _e3447634565_
                                                         _hd3447734568_
                                                         _tl3447834570_
                                                         _e3447934573_
                                                         _hd3448034576_
                                                         _tl3448134578_
                                                         _e3448234581_
                                                         _hd3448334584_
                                                         _tl3448434586_
                                                         ___splice4089140892_
                                                         _target3448534589_
                                                         _tl3448734591_)
                                                        (___kont4089540896_))))
                                                (___kont4089540896_))))
                                        (___kont4089540896_))
                                    (___kont4089540896_))
                                (___kont4089540896_))))
                        (___kont4089540896_))))
                (___kont4089540896_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4089540896_))))
                                            (___kont4089540896_))))
                                    (___kont4089540896_))))
                            (___kont4089540896_))))
                    (___kont4089540896_))
                (___kont4089540896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (___kont4089540896_))))
                                (___kont4089540896_)))))))))
                (_optimize-f__0__3959039591_
                 (lambda (_expr35238_)
                   (let ((_test35240_ '#f))
                     (_optimize-f__3958839589_ _expr35238_ _test35240_))))
                (_optimize-f32264_
                 (lambda _g42688_
                   (let ((_g42687_ (length _g42688_)))
                     (cond ((##fx= _g42687_ 1)
                            (apply _optimize-f__0__3959039591_ _g42688_))
                           ((##fx= _g42687_ 2)
                            (apply _optimize-f__3958839589_ _g42688_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42688_))))))
                (_assert-e32265_
                 (lambda (_expr33272_)
                   (let* ((_sexpr33274_
                           (gxc#apply-generate-runtime-repr _expr33272_))
                          (_$e33276_ (assoc _sexpr33274_ _env-assert32247_)))
                     (if _$e33276_
                         (cdr _$e33276_)
                         (let _assert33279_ ((_expr33281_ _expr33272_))
                           (let* ((___stx4117941180_ _expr33281_)
                                  (_g3328933468_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4117941180_))))
                             (let ((___kont4118141182_
                                    (lambda (_L34299_ _L34300_)
                                      (let ((_$e34322_
                                             (_predicate-type32252_ _L34300_)))
                                        (if _$e34322_
                                            ((lambda (_t34325_)
                                               (_assert-type32266_
                                                _L34299_
                                                _t34325_))
                                             _$e34322_)
                                            '#!void))))
                                   (___kont4118341184_
                                    (lambda (_L33992_ _L33993_ _L33994_)
                                      (let ((_$e34019_
                                             (gxc#identifier-symbol _L33994_)))
                                        (if (let ((_$e34022_
                                                   (eq? '##fx= _$e34019_)))
                                              (if _$e34022_
                                                  _$e34022_
                                                  (eq? 'fx= _$e34019_)))
                                            (let* ((___stx4108541086_ _L33993_)
                                                   (_g3402634055_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx4108541086_))))
                                              (let ((___kont4108741088_
                                                     (lambda (_L34123_
                                                              _L34124_)
                                                       (let ((_$e34149_
                                                              (_countf-symbol32254_
                                                               _L34124_)))
                                                         (if _$e34149_
                                                             ((lambda (_sym34152_)
                                                                (_assert-count32267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L34123_
                         _sym34152_
                         (gx#stx-e _L33992_)))
                      _$e34149_)
                     '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4108941090_
                                                     (lambda () '#!void)))
                                                (if (gx#stx-pair?
                                                     ___stx4108541086_)
                                                    (let ((_e3403034067_
                                                           (gx#stx-e
                                                            ___stx4108541086_)))
                                                      (let ((_tl3403234072_
                                                             (##cdr _e3403034067_))
                                                            (_hd3403134070_
                                                             (##car _e3403034067_)))
                                                        (if (gx#identifier?
                                                             _hd3403134070_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd3403134070_)
                        (if (gx#stx-pair? _tl3403234072_)
                            (let ((_e3403334075_ (gx#stx-e _tl3403234072_)))
                              (let ((_tl3403534080_ (##cdr _e3403334075_))
                                    (_hd3403434078_ (##car _e3403334075_)))
                                (if (gx#stx-pair? _hd3403434078_)
                                    (let ((_e3403634083_
                                           (gx#stx-e _hd3403434078_)))
                                      (let ((_tl3403834088_
                                             (##cdr _e3403634083_))
                                            (_hd3403734086_
                                             (##car _e3403634083_)))
                                        (if (gx#identifier? _hd3403734086_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3403734086_)
                                                (if (gx#stx-pair?
                                                     _tl3403834088_)
                                                    (let ((_e3403934091_
                                                           (gx#stx-e
                                                            _tl3403834088_)))
                                                      (let ((_tl3404134096_
                                                             (##cdr _e3403934091_))
                                                            (_hd3404034094_
                                                             (##car _e3403934091_)))
                                                        (if (gx#stx-null?
                                                             _tl3404134096_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3403534080_)
                        (let ((_e3404234099_ (gx#stx-e _tl3403534080_)))
                          (let ((_tl3404434104_ (##cdr _e3404234099_))
                                (_hd3404334102_ (##car _e3404234099_)))
                            (if (gx#stx-pair? _hd3404334102_)
                                (let ((_e3404534107_
                                       (gx#stx-e _hd3404334102_)))
                                  (let ((_tl3404734112_ (##cdr _e3404534107_))
                                        (_hd3404634110_ (##car _e3404534107_)))
                                    (if (gx#identifier? _hd3404634110_)
                                        (if (gx#stx-eq? '%#ref _hd3404634110_)
                                            (if (gx#stx-pair? _tl3404734112_)
                                                (let ((_e3404834115_
                                                       (gx#stx-e
                                                        _tl3404734112_)))
                                                  (let ((_tl3405034120_
                                                         (##cdr _e3404834115_))
                                                        (_hd3404934118_
                                                         (##car _e3404834115_)))
                                                    (if (gx#stx-null?
                                                         _tl3405034120_)
                                                        (if (gx#stx-null?
                                                             _tl3404434104_)
                                                            (___kont4108741088_
                                                             _hd3404934118_
                                                             _hd3404034094_)
                                                            (___kont4108941090_))
                                                        (___kont4108941090_))))
                                                (___kont4108941090_))
                                            (___kont4108941090_))
                                        (___kont4108941090_))))
                                (___kont4108941090_))))
                        (___kont4108941090_))
                    (___kont4108941090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4108941090_))
                                                (___kont4108941090_))
                                            (___kont4108941090_))))
                                    (___kont4108941090_))))
                            (___kont4108941090_))
                        (___kont4108941090_))
                    (___kont4108941090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4108941090_))))
                                            (if (let ((_$e34157_
                                                       (eq? '##eq? _$e34019_)))
                                                  (if _$e34157_
                                                      _$e34157_
                                                      (let ((_$e34160_
                                                             (eq? 'eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e34019_)))
                (if _$e34160_
                    _$e34160_
                    (let ((_$e34163_ (eq? '##eqv? _$e34019_)))
                      (if _$e34163_
                          _$e34163_
                          (let ((_$e34166_ (eq? 'eqv? _$e34019_)))
                            (if _$e34166_
                                _$e34166_
                                (let ((_$e34169_ (eq? '##equal? _$e34019_)))
                                  (if _$e34169_
                                      _$e34169_
                                      (let ((_$e34172_
                                             (eq? 'equal? _$e34019_)))
                                        (if _$e34172_
                                            _$e34172_
                                            (let ((_$e34175_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e34019_)))
                                              (if _$e34175_
                                                  _$e34175_
                                                  (eq? 'gx#stx-eq?
                                                       _$e34019_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                ((lambda (_sym34178_)
                                                   (let* ((___stx4115341154_
                                                           _L33993_)
                                                          (_g3418134194_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4115341154_))))
                                                     (let ((___kont4115541156_
                                                            (lambda (_L34222_)
                                                              (_assert-eqf32268_
                                                               _L34222_
                                                               (_eqf-symbol32255_
                                                                _sym34178_)
                                                               (gx#stx-e
                                                                _L33992_))))
                                                           (___kont4115741158_
                                                            (lambda ()
                                                              '#!void)))
                                                       (if (gx#stx-pair?
                                                            ___stx4115341154_)
                                                           (let ((_e3418434206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e ___stx4115341154_)))
                     (let ((_tl3418634211_ (##cdr _e3418434206_))
                           (_hd3418534209_ (##car _e3418434206_)))
                       (if (gx#identifier? _hd3418534209_)
                           (if (gx#stx-eq? '%#ref _hd3418534209_)
                               (if (gx#stx-pair? _tl3418634211_)
                                   (let ((_e3418734214_
                                          (gx#stx-e _tl3418634211_)))
                                     (let ((_tl3418934219_
                                            (##cdr _e3418734214_))
                                           (_hd3418834217_
                                            (##car _e3418734214_)))
                                       (if (gx#stx-null? _tl3418934219_)
                                           (___kont4115541156_ _hd3418834217_)
                                           (___kont4115741158_))))
                                   (___kont4115741158_))
                               (___kont4115741158_))
                           (___kont4115741158_))))
                   (___kont4115741158_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e34019_)
                                                '#!void)))))
                                   (___kont4118541186_
                                    (lambda (_L33896_ _L33897_ _L33898_)
                                      (_assert33279_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L33898_ '()))
                                                   (cons _L33896_
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#quote)
                             (cons _L33897_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4118741188_
                                    (lambda (_L33788_ _L33789_ _L33790_)
                                      (let ((_$e33819_
                                             (gxc#identifier-symbol _L33790_)))
                                        (if (let ((_$e33822_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e33819_)))
                                              (if _$e33822_
                                                  _$e33822_
                                                  (eq? 'gx#stx-eq? _$e33819_)))
                                            ((lambda (_sym33825_)
                                               (_assert-eqf32268_
                                                _L33789_
                                                (_eqf-symbol32255_ _sym33825_)
                                                _L33788_))
                                             _$e33819_)
                                            '#!void))))
                                   (___kont4118941190_
                                    (lambda (_L33672_ _L33673_ _L33674_)
                                      (_assert33279_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L33674_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L33672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                             (cons _L33673_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4119141192_
                                    (lambda (_L33552_ _L33553_ _L33554_)
                                      (_assert33279_
                                       (gxc#apply-expression-subst
                                        _L33553_
                                        _L33554_
                                        _L33552_))))
                                   (___kont4119341194_ (lambda () '#!void)))
                               (if (gx#stx-pair? ___stx4117941180_)
                                   (let ((_e3329334243_
                                          (gx#stx-e ___stx4117941180_)))
                                     (let ((_tl3329534248_
                                            (##cdr _e3329334243_))
                                           (_hd3329434246_
                                            (##car _e3329334243_)))
                                       (if (gx#identifier? _hd3329434246_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd3329434246_)
                                               (if (gx#stx-pair?
                                                    _tl3329534248_)
                                                   (let ((_e3329634251_
                                                          (gx#stx-e
                                                           _tl3329534248_)))
                                                     (let ((_tl3329834256_
                                                            (##cdr _e3329634251_))
                                                           (_hd3329734254_
                                                            (##car _e3329634251_)))
                                                       (if (gx#stx-pair?
                                                            _hd3329734254_)
                                                           (let ((_e3329934259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3329734254_)))
                     (let ((_tl3330134264_ (##cdr _e3329934259_))
                           (_hd3330034262_ (##car _e3329934259_)))
                       (if (gx#identifier? _hd3330034262_)
                           (if (gx#stx-eq? '%#ref _hd3330034262_)
                               (if (gx#stx-pair? _tl3330134264_)
                                   (let ((_e3330234267_
                                          (gx#stx-e _tl3330134264_)))
                                     (let ((_tl3330434272_
                                            (##cdr _e3330234267_))
                                           (_hd3330334270_
                                            (##car _e3330234267_)))
                                       (if (gx#stx-null? _tl3330434272_)
                                           (if (gx#stx-pair? _tl3329834256_)
                                               (let ((_e3330534275_
                                                      (gx#stx-e
                                                       _tl3329834256_)))
                                                 (let ((_tl3330734280_
                                                        (##cdr _e3330534275_))
                                                       (_hd3330634278_
                                                        (##car _e3330534275_)))
                                                   (if (gx#stx-pair?
                                                        _hd3330634278_)
                                                       (let ((_e3330834283_
                                                              (gx#stx-e
                                                               _hd3330634278_)))
                                                         (let ((_tl3331034288_
                                                                (##cdr _e3330834283_))
                                                               (_hd3330934286_
                                                                (##car _e3330834283_)))
                                                           (if (gx#identifier?
                                                                _hd3330934286_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3330934286_)
                           (if (gx#stx-pair? _tl3331034288_)
                               (let ((_e3331134291_ (gx#stx-e _tl3331034288_)))
                                 (let ((_tl3331334296_ (##cdr _e3331134291_))
                                       (_hd3331234294_ (##car _e3331134291_)))
                                   (if (gx#stx-null? _tl3331334296_)
                                       (if (gx#stx-null? _tl3330734280_)
                                           (___kont4118141182_
                                            _hd3331234294_
                                            _hd3330334270_)
                                           (if (gx#stx-pair? _tl3330734280_)
                                               (let ((_e3333233968_
                                                      (gx#stx-e
                                                       _tl3330734280_)))
                                                 (let ((_tl3333433973_
                                                        (##cdr _e3333233968_))
                                                       (_hd3333333971_
                                                        (##car _e3333233968_)))
                                                   (if (gx#stx-pair?
                                                        _hd3333333971_)
                                                       (let ((_e3333533976_
                                                              (gx#stx-e
                                                               _hd3333333971_)))
                                                         (let ((_tl3333733981_
                                                                (##cdr _e3333533976_))
                                                               (_hd3333633979_
                                                                (##car _e3333533976_)))
                                                           (if (gx#identifier?
                                                                _hd3333633979_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#quote
                            _hd3333633979_)
                           (if (gx#stx-pair? _tl3333733981_)
                               (let ((_e3333833984_ (gx#stx-e _tl3333733981_)))
                                 (let ((_tl3334033989_ (##cdr _e3333833984_))
                                       (_hd3333933987_ (##car _e3333833984_)))
                                   (if (gx#stx-null? _tl3334033989_)
                                       (if (gx#stx-null? _tl3333433973_)
                                           (___kont4118341184_
                                            _hd3333933987_
                                            _hd3330634278_
                                            _hd3330334270_)
                                           (___kont4119341194_))
                                       (___kont4119341194_))))
                               (___kont4119341194_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3333633979_)
                               (if (gx#stx-pair? _tl3333733981_)
                                   (let ((_e3339833780_
                                          (gx#stx-e _tl3333733981_)))
                                     (let ((_tl3340033785_
                                            (##cdr _e3339833780_))
                                           (_hd3339933783_
                                            (##car _e3339833780_)))
                                       (if (gx#stx-null? _tl3340033785_)
                                           (if (gx#stx-null? _tl3333433973_)
                                               (___kont4118741188_
                                                _hd3339933783_
                                                _hd3331234294_
                                                _hd3330334270_)
                                               (___kont4119341194_))
                                           (___kont4119341194_))))
                                   (___kont4119341194_))
                               (___kont4119341194_)))
                       (___kont4119341194_))))
               (___kont4119341194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4119341194_)))
                                       (if (gx#stx-pair? _tl3330734280_)
                                           (let ((_e3333233968_
                                                  (gx#stx-e _tl3330734280_)))
                                             (let ((_tl3333433973_
                                                    (##cdr _e3333233968_))
                                                   (_hd3333333971_
                                                    (##car _e3333233968_)))
                                               (if (gx#stx-pair?
                                                    _hd3333333971_)
                                                   (let ((_e3333533976_
                                                          (gx#stx-e
                                                           _hd3333333971_)))
                                                     (let ((_tl3333733981_
                                                            (##cdr _e3333533976_))
                                                           (_hd3333633979_
                                                            (##car _e3333533976_)))
                                                       (if (gx#identifier?
                                                            _hd3333633979_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3333633979_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3333733981_)
                           (let ((_e3333833984_ (gx#stx-e _tl3333733981_)))
                             (let ((_tl3334033989_ (##cdr _e3333833984_))
                                   (_hd3333933987_ (##car _e3333833984_)))
                               (if (gx#stx-null? _tl3334033989_)
                                   (if (gx#stx-null? _tl3333433973_)
                                       (___kont4118341184_
                                        _hd3333933987_
                                        _hd3330634278_
                                        _hd3330334270_)
                                       (___kont4119341194_))
                                   (___kont4119341194_))))
                           (___kont4119341194_))
                       (___kont4119341194_))
                   (___kont4119341194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4119341194_))))
                                           (___kont4119341194_)))))
                               (if (gx#stx-pair? _tl3330734280_)
                                   (let ((_e3333233968_
                                          (gx#stx-e _tl3330734280_)))
                                     (let ((_tl3333433973_
                                            (##cdr _e3333233968_))
                                           (_hd3333333971_
                                            (##car _e3333233968_)))
                                       (if (gx#stx-pair? _hd3333333971_)
                                           (let ((_e3333533976_
                                                  (gx#stx-e _hd3333333971_)))
                                             (let ((_tl3333733981_
                                                    (##cdr _e3333533976_))
                                                   (_hd3333633979_
                                                    (##car _e3333533976_)))
                                               (if (gx#identifier?
                                                    _hd3333633979_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3333633979_)
                                                       (if (gx#stx-pair?
                                                            _tl3333733981_)
                                                           (let ((_e3333833984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3333733981_)))
                     (let ((_tl3334033989_ (##cdr _e3333833984_))
                           (_hd3333933987_ (##car _e3333833984_)))
                       (if (gx#stx-null? _tl3334033989_)
                           (if (gx#stx-null? _tl3333433973_)
                               (___kont4118341184_
                                _hd3333933987_
                                _hd3330634278_
                                _hd3330334270_)
                               (___kont4119341194_))
                           (___kont4119341194_))))
                   (___kont4119341194_))
               (___kont4119341194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4119341194_))))
                                           (___kont4119341194_))))
                                   (___kont4119341194_)))
                           (if (gx#stx-pair? _tl3330734280_)
                               (let ((_e3333233968_ (gx#stx-e _tl3330734280_)))
                                 (let ((_tl3333433973_ (##cdr _e3333233968_))
                                       (_hd3333333971_ (##car _e3333233968_)))
                                   (if (gx#stx-pair? _hd3333333971_)
                                       (let ((_e3333533976_
                                              (gx#stx-e _hd3333333971_)))
                                         (let ((_tl3333733981_
                                                (##cdr _e3333533976_))
                                               (_hd3333633979_
                                                (##car _e3333533976_)))
                                           (if (gx#identifier? _hd3333633979_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3333633979_)
                                                   (if (gx#stx-pair?
                                                        _tl3333733981_)
                                                       (let ((_e3333833984_
                                                              (gx#stx-e
                                                               _tl3333733981_)))
                                                         (let ((_tl3334033989_
                                                                (##cdr _e3333833984_))
                                                               (_hd3333933987_
                                                                (##car _e3333833984_)))
                                                           (if (gx#stx-null?
                                                                _tl3334033989_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3333433973_)
                           (___kont4118341184_
                            _hd3333933987_
                            _hd3330634278_
                            _hd3330334270_)
                           (if (gx#stx-eq? '%#quote _hd3330934286_)
                               (if (gx#stx-pair? _tl3331034288_)
                                   (let ((_e3336233880_
                                          (gx#stx-e _tl3331034288_)))
                                     (let ((_tl3336433885_
                                            (##cdr _e3336233880_))
                                           (_hd3336333883_
                                            (##car _e3336233880_)))
                                       (___kont4119341194_)))
                                   (___kont4119341194_))
                               (if (gx#stx-eq? '%#quote-syntax _hd3330934286_)
                                   (if (gx#stx-pair? _tl3331034288_)
                                       (let ((_e3342233640_
                                              (gx#stx-e _tl3331034288_)))
                                         (let ((_tl3342433645_
                                                (##cdr _e3342233640_))
                                               (_hd3342333643_
                                                (##car _e3342233640_)))
                                           (___kont4119341194_)))
                                       (___kont4119341194_))
                                   (___kont4119341194_))))
                       (if (gx#stx-eq? '%#quote _hd3330934286_)
                           (if (gx#stx-pair? _tl3331034288_)
                               (let ((_e3336233880_ (gx#stx-e _tl3331034288_)))
                                 (let ((_tl3336433885_ (##cdr _e3336233880_))
                                       (_hd3336333883_ (##car _e3336233880_)))
                                   (if (gx#stx-null? _tl3336433885_)
                                       (if (gx#stx-null? _tl3333433973_)
                                           (___kont4118541186_
                                            _hd3333333971_
                                            _hd3336333883_
                                            _hd3330334270_)
                                           (___kont4119341194_))
                                       (___kont4119341194_))))
                               (___kont4119341194_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3330934286_)
                               (if (gx#stx-pair? _tl3331034288_)
                                   (let ((_e3342233640_
                                          (gx#stx-e _tl3331034288_)))
                                     (let ((_tl3342433645_
                                            (##cdr _e3342233640_))
                                           (_hd3342333643_
                                            (##car _e3342233640_)))
                                       (___kont4119341194_)))
                                   (___kont4119341194_))
                               (___kont4119341194_))))))
               (if (gx#stx-eq? '%#quote _hd3330934286_)
                   (if (gx#stx-pair? _tl3331034288_)
                       (let ((_e3336233880_ (gx#stx-e _tl3331034288_)))
                         (let ((_tl3336433885_ (##cdr _e3336233880_))
                               (_hd3336333883_ (##car _e3336233880_)))
                           (if (gx#stx-null? _tl3336433885_)
                               (if (gx#stx-null? _tl3333433973_)
                                   (___kont4118541186_
                                    _hd3333333971_
                                    _hd3336333883_
                                    _hd3330334270_)
                                   (___kont4119341194_))
                               (___kont4119341194_))))
                       (___kont4119341194_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3330934286_)
                       (if (gx#stx-pair? _tl3331034288_)
                           (let ((_e3342233640_ (gx#stx-e _tl3331034288_)))
                             (let ((_tl3342433645_ (##cdr _e3342233640_))
                                   (_hd3342333643_ (##car _e3342233640_)))
                               (___kont4119341194_)))
                           (___kont4119341194_))
                       (___kont4119341194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3330934286_)
                                                       (if (gx#stx-pair?
                                                            _tl3331034288_)
                                                           (let ((_e3336233880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3331034288_)))
                     (let ((_tl3336433885_ (##cdr _e3336233880_))
                           (_hd3336333883_ (##car _e3336233880_)))
                       (if (gx#stx-null? _tl3336433885_)
                           (if (gx#stx-null? _tl3333433973_)
                               (___kont4118541186_
                                _hd3333333971_
                                _hd3336333883_
                                _hd3330334270_)
                               (___kont4119341194_))
                           (___kont4119341194_))))
                   (___kont4119341194_))
               (if (gx#stx-eq? '%#quote-syntax _hd3330934286_)
                   (if (gx#stx-pair? _tl3331034288_)
                       (let ((_e3342233640_ (gx#stx-e _tl3331034288_)))
                         (let ((_tl3342433645_ (##cdr _e3342233640_))
                               (_hd3342333643_ (##car _e3342233640_)))
                           (if (gx#stx-null? _tl3342433645_)
                               (if (gx#stx-eq? '%#ref _hd3333633979_)
                                   (if (gx#stx-pair? _tl3333733981_)
                                       (let ((_e3343133664_
                                              (gx#stx-e _tl3333733981_)))
                                         (let ((_tl3343333669_
                                                (##cdr _e3343133664_))
                                               (_hd3343233667_
                                                (##car _e3343133664_)))
                                           (if (gx#stx-null? _tl3343333669_)
                                               (if (gx#stx-null?
                                                    _tl3333433973_)
                                                   (___kont4118941190_
                                                    _hd3343233667_
                                                    _hd3342333643_
                                                    _hd3330334270_)
                                                   (___kont4119341194_))
                                               (___kont4119341194_))))
                                       (___kont4119341194_))
                                   (___kont4119341194_))
                               (___kont4119341194_))))
                       (___kont4119341194_))
                   (___kont4119341194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3330934286_)
                                                   (if (gx#stx-pair?
                                                        _tl3331034288_)
                                                       (let ((_e3336233880_
                                                              (gx#stx-e
                                                               _tl3331034288_)))
                                                         (let ((_tl3336433885_
                                                                (##cdr _e3336233880_))
                                                               (_hd3336333883_
                                                                (##car _e3336233880_)))
                                                           (if (gx#stx-null?
                                                                _tl3336433885_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3333433973_)
                           (___kont4118541186_
                            _hd3333333971_
                            _hd3336333883_
                            _hd3330334270_)
                           (___kont4119341194_))
                       (___kont4119341194_))))
               (___kont4119341194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3330934286_)
                                                       (if (gx#stx-pair?
                                                            _tl3331034288_)
                                                           (let ((_e3342233640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3331034288_)))
                     (let ((_tl3342433645_ (##cdr _e3342233640_))
                           (_hd3342333643_ (##car _e3342233640_)))
                       (___kont4119341194_)))
                   (___kont4119341194_))
               (___kont4119341194_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-eq? '%#quote _hd3330934286_)
                                           (if (gx#stx-pair? _tl3331034288_)
                                               (let ((_e3336233880_
                                                      (gx#stx-e
                                                       _tl3331034288_)))
                                                 (let ((_tl3336433885_
                                                        (##cdr _e3336233880_))
                                                       (_hd3336333883_
                                                        (##car _e3336233880_)))
                                                   (if (gx#stx-null?
                                                        _tl3336433885_)
                                                       (if (gx#stx-null?
                                                            _tl3333433973_)
                                                           (___kont4118541186_
                                                            _hd3333333971_
                                                            _hd3336333883_
                                                            _hd3330334270_)
                                                           (___kont4119341194_))
                                                       (___kont4119341194_))))
                                               (___kont4119341194_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3330934286_)
                                               (if (gx#stx-pair?
                                                    _tl3331034288_)
                                                   (let ((_e3342233640_
                                                          (gx#stx-e
                                                           _tl3331034288_)))
                                                     (let ((_tl3342433645_
                                                            (##cdr _e3342233640_))
                                                           (_hd3342333643_
                                                            (##car _e3342233640_)))
                                                       (___kont4119341194_)))
                                                   (___kont4119341194_))
                                               (___kont4119341194_))))))
                               (if (gx#stx-eq? '%#quote _hd3330934286_)
                                   (if (gx#stx-pair? _tl3331034288_)
                                       (let ((_e3336233880_
                                              (gx#stx-e _tl3331034288_)))
                                         (let ((_tl3336433885_
                                                (##cdr _e3336233880_))
                                               (_hd3336333883_
                                                (##car _e3336233880_)))
                                           (___kont4119341194_)))
                                       (___kont4119341194_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3330934286_)
                                       (if (gx#stx-pair? _tl3331034288_)
                                           (let ((_e3342233640_
                                                  (gx#stx-e _tl3331034288_)))
                                             (let ((_tl3342433645_
                                                    (##cdr _e3342233640_))
                                                   (_hd3342333643_
                                                    (##car _e3342233640_)))
                                               (___kont4119341194_)))
                                           (___kont4119341194_))
                                       (___kont4119341194_)))))
                       (if (gx#stx-pair? _tl3330734280_)
                           (let ((_e3333233968_ (gx#stx-e _tl3330734280_)))
                             (let ((_tl3333433973_ (##cdr _e3333233968_))
                                   (_hd3333333971_ (##car _e3333233968_)))
                               (if (gx#stx-pair? _hd3333333971_)
                                   (let ((_e3333533976_
                                          (gx#stx-e _hd3333333971_)))
                                     (let ((_tl3333733981_
                                            (##cdr _e3333533976_))
                                           (_hd3333633979_
                                            (##car _e3333533976_)))
                                       (if (gx#identifier? _hd3333633979_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3333633979_)
                                               (if (gx#stx-pair?
                                                    _tl3333733981_)
                                                   (let ((_e3333833984_
                                                          (gx#stx-e
                                                           _tl3333733981_)))
                                                     (let ((_tl3334033989_
                                                            (##cdr _e3333833984_))
                                                           (_hd3333933987_
                                                            (##car _e3333833984_)))
                                                       (if (gx#stx-null?
                                                            _tl3334033989_)
                                                           (if (gx#stx-null?
                                                                _tl3333433973_)
                                                               (___kont4118341184_
                                                                _hd3333933987_
                                                                _hd3330634278_
                                                                _hd3330334270_)
                                                               (___kont4119341194_))
                                                           (___kont4119341194_))))
                                                   (___kont4119341194_))
                                               (___kont4119341194_))
                                           (___kont4119341194_))))
                                   (___kont4119341194_))))
                           (___kont4119341194_)))))
               (if (gx#stx-pair? _tl3330734280_)
                   (let ((_e3333233968_ (gx#stx-e _tl3330734280_)))
                     (let ((_tl3333433973_ (##cdr _e3333233968_))
                           (_hd3333333971_ (##car _e3333233968_)))
                       (if (gx#stx-pair? _hd3333333971_)
                           (let ((_e3333533976_ (gx#stx-e _hd3333333971_)))
                             (let ((_tl3333733981_ (##cdr _e3333533976_))
                                   (_hd3333633979_ (##car _e3333533976_)))
                               (if (gx#identifier? _hd3333633979_)
                                   (if (gx#stx-eq? '%#quote _hd3333633979_)
                                       (if (gx#stx-pair? _tl3333733981_)
                                           (let ((_e3333833984_
                                                  (gx#stx-e _tl3333733981_)))
                                             (let ((_tl3334033989_
                                                    (##cdr _e3333833984_))
                                                   (_hd3333933987_
                                                    (##car _e3333833984_)))
                                               (if (gx#stx-null?
                                                    _tl3334033989_)
                                                   (if (gx#stx-null?
                                                        _tl3333433973_)
                                                       (___kont4118341184_
                                                        _hd3333933987_
                                                        _hd3330634278_
                                                        _hd3330334270_)
                                                       (___kont4119341194_))
                                                   (___kont4119341194_))))
                                           (___kont4119341194_))
                                       (___kont4119341194_))
                                   (___kont4119341194_))))
                           (___kont4119341194_))))
                   (___kont4119341194_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4119341194_))
                                           (___kont4119341194_))))
                                   (___kont4119341194_))
                               (if (gx#stx-eq? '%#lambda _hd3330034262_)
                                   (if (gx#stx-pair? _tl3330134264_)
                                       (let ((_e3344633504_
                                              (gx#stx-e _tl3330134264_)))
                                         (let ((_tl3344833509_
                                                (##cdr _e3344633504_))
                                               (_hd3344733507_
                                                (##car _e3344633504_)))
                                           (if (gx#stx-pair? _hd3344733507_)
                                               (let ((_e3344933512_
                                                      (gx#stx-e
                                                       _hd3344733507_)))
                                                 (let ((_tl3345133517_
                                                        (##cdr _e3344933512_))
                                                       (_hd3345033515_
                                                        (##car _e3344933512_)))
                                                   (if (gx#stx-null?
                                                        _tl3345133517_)
                                                       (if (gx#stx-pair?
                                                            _tl3344833509_)
                                                           (let ((_e3345233520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3344833509_)))
                     (let ((_tl3345433525_ (##cdr _e3345233520_))
                           (_hd3345333523_ (##car _e3345233520_)))
                       (if (gx#stx-null? _tl3345433525_)
                           (if (gx#stx-pair? _tl3329834256_)
                               (let ((_e3345533528_ (gx#stx-e _tl3329834256_)))
                                 (let ((_tl3345733533_ (##cdr _e3345533528_))
                                       (_hd3345633531_ (##car _e3345533528_)))
                                   (if (gx#stx-pair? _hd3345633531_)
                                       (let ((_e3345833536_
                                              (gx#stx-e _hd3345633531_)))
                                         (let ((_tl3346033541_
                                                (##cdr _e3345833536_))
                                               (_hd3345933539_
                                                (##car _e3345833536_)))
                                           (if (gx#identifier? _hd3345933539_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd3345933539_)
                                                   (if (gx#stx-pair?
                                                        _tl3346033541_)
                                                       (let ((_e3346133544_
                                                              (gx#stx-e
                                                               _tl3346033541_)))
                                                         (let ((_tl3346333549_
                                                                (##cdr _e3346133544_))
                                                               (_hd3346233547_
                                                                (##car _e3346133544_)))
                                                           (if (gx#stx-null?
                                                                _tl3346333549_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3345733533_)
                           (___kont4119141192_
                            _hd3346233547_
                            _hd3345333523_
                            _hd3345033515_)
                           (___kont4119341194_))
                       (___kont4119341194_))))
               (___kont4119341194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4119341194_))
                                               (___kont4119341194_))))
                                       (___kont4119341194_))))
                               (___kont4119341194_))
                           (___kont4119341194_))))
                   (___kont4119341194_))
               (___kont4119341194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4119341194_))))
                                       (___kont4119341194_))
                                   (___kont4119341194_)))
                           (___kont4119341194_))))
                   (___kont4119341194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4119341194_))
                                               (___kont4119341194_))
                                           (___kont4119341194_))))
                                   (___kont4119341194_)))))))))
                (_assert-type32266_
                 (lambda (_id33164_ _t33165_)
                   (letrec ((_super-e33167_
                             (lambda (_t33264_)
                               (let ((_tid3326533267_
                                      (##structure-ref
                                       _t33264_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                 (if _tid3326533267_
                                     (let ((_tid33270_ _tid3326533267_))
                                       (gxc#optimizer-resolve-type _tid33270_))
                                     '#f)))))
                     (let _lp33169_ ((_rest33171_ _env-type32248_))
                       (let* ((_rest3317233180_ _rest33171_)
                              (_else3317433188_ (lambda () '#!void))
                              (_K3317633252_
                               (lambda (_rest33191_ _type-info33192_)
                                 (let* ((_type-info3319333205_
                                         _type-info33192_)
                                        (_else3319533213_
                                         (lambda () (_lp33169_ _rest33191_)))
                                        (_K3319733228_
                                         (lambda (_val33216_
                                                  _xt33217_
                                                  _xid33218_)
                                           (if (gx#free-identifier=?
                                                _id33164_
                                                _xid33218_)
                                               (if (eq? _t33165_ _xt33217_)
                                                   _val33216_
                                                   (if _val33216_
                                                       (if (if (##structure-instance-of?
                                                                _t33165_
                                                                'gxc#!struct-type::t)
                                                               (##structure-instance-of?
                                                                _xt33217_
                                                                'gxc#!struct-type::t)
                                                               '#f)
                                                           (let _subtype?33220_ ((_xt33222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          (_super-e33167_ _xt33217_)))
                     (if (not _xt33222_)
                         '#f
                         (if (eq? _xt33222_ _t33165_)
                             '#t
                             (_subtype?33220_ (_super-e33167_ _xt33222_)))))
                   '#f)
               (if (if (##structure-instance-of? _t33165_ 'gxc#!struct-type::t)
                       (##structure-instance-of?
                        _xt33217_
                        'gxc#!struct-type::t)
                       '#f)
                   (let _supertype?33224_ ((_t33226_
                                            (_super-e33167_ _t33165_)))
                     (if (not _t33226_)
                         (_lp33169_ _rest33191_)
                         (if (eq? _t33226_ _xt33217_)
                             '#f
                             (_supertype?33224_ (_super-e33167_ _t33226_)))))
                   (_lp33169_ _rest33191_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp33169_ _rest33191_)))))
                                   (if (##pair? _type-info3319333205_)
                                       (let ((_hd3319833231_
                                              (##car _type-info3319333205_))
                                             (_tl3319933233_
                                              (##cdr _type-info3319333205_)))
                                         (let ((_xid33236_ _hd3319833231_))
                                           (if (##pair? _tl3319933233_)
                                               (let ((_hd3320033238_
                                                      (##car _tl3319933233_))
                                                     (_tl3320133240_
                                                      (##cdr _tl3319933233_)))
                                                 (let ((_xt33243_
                                                        _hd3320033238_))
                                                   (if (##pair? _tl3320133240_)
                                                       (let ((_hd3320233245_
                                                              (##car _tl3320133240_))
                                                             (_tl3320333247_
                                                              (##cdr _tl3320133240_)))
                                                         (let ((_val33250_
                                                                _hd3320233245_))
                                                           (if (##null? _tl3320333247_)
                                                               (_K3319733228_
                                                                _val33250_
                                                                _xt33243_
                                                                _xid33236_)
                                                               (_else3319533213_))))
                                                       (_else3319533213_))))
                                               (_else3319533213_))))
                                       (_else3319533213_))))))
                         (if (##pair? _rest3317233180_)
                             (let ((_hd3317733255_ (##car _rest3317233180_))
                                   (_tl3317833257_ (##cdr _rest3317233180_)))
                               (let* ((_type-info33260_ _hd3317733255_)
                                      (_rest33262_ _tl3317833257_))
                                 (_K3317633252_ _rest33262_ _type-info33260_)))
                             (_else3317433188_)))))))
                (_assert-count32267_
                 (lambda (_id33063_ _sym33064_ _count33065_)
                   (let _lp33067_ ((_rest33069_ _env-type32248_))
                     (let* ((_rest3307033078_ _rest33069_)
                            (_else3307233086_ (lambda () '#!void))
                            (_K3307433152_
                             (lambda (_rest33089_ _type-info33090_)
                               (let* ((_type-info3309133105_ _type-info33090_)
                                      (_else3309333113_
                                       (lambda () (_lp33067_ _rest33089_)))
                                      (_K3309533121_
                                       (lambda (_val33116_
                                                _xcount33117_
                                                _xsym33118_
                                                _xid33119_)
                                         (if (if (eq? _sym33064_ _xsym33118_)
                                                 (gx#free-identifier=?
                                                  _id33063_
                                                  _xid33119_)
                                                 '#f)
                                             (if _val33116_
                                                 (fx= _count33065_
                                                      _xcount33117_)
                                                 (if (fx= _count33065_
                                                          _xcount33117_)
                                                     '#f
                                                     (_lp33067_ _rest33089_)))
                                             (_lp33067_ _rest33089_)))))
                                 (if (##pair? _type-info3309133105_)
                                     (let ((_hd3309633124_
                                            (##car _type-info3309133105_))
                                           (_tl3309733126_
                                            (##cdr _type-info3309133105_)))
                                       (let ((_xid33129_ _hd3309633124_))
                                         (if (##pair? _tl3309733126_)
                                             (let ((_hd3309833131_
                                                    (##car _tl3309733126_))
                                                   (_tl3309933133_
                                                    (##cdr _tl3309733126_)))
                                               (let ((_xsym33136_
                                                      _hd3309833131_))
                                                 (if (##pair? _tl3309933133_)
                                                     (let ((_hd3310033138_
                                                            (##car _tl3309933133_))
                                                           (_tl3310133140_
                                                            (##cdr _tl3309933133_)))
                                                       (let ((_xcount33143_
                                                              _hd3310033138_))
                                                         (if (##pair? _tl3310133140_)
                                                             (let ((_hd3310233145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl3310133140_))
                           (_tl3310333147_ (##cdr _tl3310133140_)))
                       (let ((_val33150_ _hd3310233145_))
                         (if (##null? _tl3310333147_)
                             (_K3309533121_
                              _val33150_
                              _xcount33143_
                              _xsym33136_
                              _xid33129_)
                             (_else3309333113_))))
                     (_else3309333113_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else3309333113_))))
                                             (_else3309333113_))))
                                     (_else3309333113_))))))
                       (if (##pair? _rest3307033078_)
                           (let ((_hd3307533155_ (##car _rest3307033078_))
                                 (_tl3307633157_ (##cdr _rest3307033078_)))
                             (let* ((_type-info33160_ _hd3307533155_)
                                    (_rest33162_ _tl3307633157_))
                               (_K3307433152_ _rest33162_ _type-info33160_)))
                           (_else3307233086_))))))
                (_assert-eqf32268_
                 (lambda (_id32953_ _sym32954_ _datum32955_)
                   (letrec ((_eqf32957_
                             (lambda (_sym33058_)
                               (let ((_$e33060_ _sym33058_))
                                 (if (eq? 'eq? _$e33060_)
                                     eq?
                                     (if (eq? 'eqv? _$e33060_)
                                         eqv?
                                         (if (eq? 'equal? _$e33060_)
                                             equal?
                                             (if (eq? 'free-identifier=?
                                                      _$e33060_)
                                                 gx#free-identifier=?
                                                 (if (eq? 'stx-eq? _$e33060_)
                                                     gx#stx-eq?
                                                     (gxc#raise-compile-error
                                                      '"Unexpected eqf symbol"
                                                      _body32009_
                                                      _sym33058_))))))))))
                     (let _lp32959_ ((_rest32961_ _env-type32248_))
                       (let* ((_rest3296232970_ _rest32961_)
                              (_else3296432978_ (lambda () '#!void))
                              (_K3296633046_
                               (lambda (_rest32981_ _type-info32982_)
                                 (let* ((_type-info3298332997_
                                         _type-info32982_)
                                        (_else3298533005_
                                         (lambda () (_lp32959_ _rest32981_)))
                                        (_K3298733015_
                                         (lambda (_val33008_
                                                  _xdatum33009_
                                                  _xsym33010_
                                                  _xid33011_)
                                           (if (if (eq? _sym32954_ _xsym33010_)
                                                   (gx#free-identifier=?
                                                    _id32953_
                                                    _xid33011_)
                                                   '#f)
                                               (let ((_=?33013_
                                                      (_eqf32957_ _sym32954_)))
                                                 (if _val33008_
                                                     (_=?33013_
                                                      _datum32955_
                                                      _xdatum33009_)
                                                     (if (_=?33013_
                                                          _datum32955_
                                                          _xdatum33009_)
                                                         '#f
                                                         (_lp32959_
                                                          _rest32981_))))
                                               (_lp32959_ _rest32981_)))))
                                   (if (##pair? _type-info3298332997_)
                                       (let ((_hd3298833018_
                                              (##car _type-info3298332997_))
                                             (_tl3298933020_
                                              (##cdr _type-info3298332997_)))
                                         (let ((_xid33023_ _hd3298833018_))
                                           (if (##pair? _tl3298933020_)
                                               (let ((_hd3299033025_
                                                      (##car _tl3298933020_))
                                                     (_tl3299133027_
                                                      (##cdr _tl3298933020_)))
                                                 (let ((_xsym33030_
                                                        _hd3299033025_))
                                                   (if (##pair? _tl3299133027_)
                                                       (let ((_hd3299233032_
                                                              (##car _tl3299133027_))
                                                             (_tl3299333034_
                                                              (##cdr _tl3299133027_)))
                                                         (let ((_xdatum33037_
                                                                _hd3299233032_))
                                                           (if (##pair? _tl3299333034_)
                                                               (let ((_hd3299433039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _tl3299333034_))
                             (_tl3299533041_ (##cdr _tl3299333034_)))
                         (let ((_val33044_ _hd3299433039_))
                           (if (##null? _tl3299533041_)
                               (_K3298733015_
                                _val33044_
                                _xdatum33037_
                                _xsym33030_
                                _xid33023_)
                               (_else3298533005_))))
                       (_else3298533005_))))
               (_else3298533005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else3298533005_))))
                                       (_else3298533005_))))))
                         (if (##pair? _rest3296232970_)
                             (let ((_hd3296733049_ (##car _rest3296232970_))
                                   (_tl3296833051_ (##cdr _rest3296232970_)))
                               (let* ((_type-info33054_ _hd3296733049_)
                                      (_rest33056_ _tl3296833051_))
                                 (_K3296633046_ _rest33056_ _type-info33054_)))
                             (_else3296432978_)))))))
                (_bind-e__3959239593_
                 (lambda (_bind32856_ _body32857_ _continue32858_)
                   (let _lp32860_ ((_rest32862_ _bind32856_)
                                   (_subst32863_ '())
                                   (_locals32864_ '())
                                   (_env32865_ _env-bind32249_))
                     (let* ((_rest3286632874_ _rest32862_)
                            (_else3286832888_
                             (lambda ()
                               (let* ((_body32882_
                                       (if (null? _subst32863_)
                                           _body32857_
                                           (gxc#apply-expression-subst*
                                            _body32857_
                                            _subst32863_)))
                                      (_body32885_
                                       (_do-bind!32260_
                                        _env32865_
                                        (lambda ()
                                          (_continue32858_ _body32882_)))))
                                 (if (null? _locals32864_)
                                     _body32885_
                                     (cons '%#let-values
                                           (cons _locals32864_
                                                 (cons _body32885_ '())))))))
                            (_K3287032929_
                             (lambda (_rest32891_ _bind32892_)
                               (let* ((_bind3289332900_ _bind32892_)
                                      (_E3289532904_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3289332900_)))
                                      (_K3289632917_
                                       (lambda (_expr32907_ _id32908_)
                                         (let* ((_sexpr32910_
                                                 (gxc#apply-generate-runtime-repr
                                                  _expr32907_))
                                                (_$e32912_
                                                 (assget _sexpr32910_
                                                         _env-bind32249_)))
                                           (if _$e32912_
                                               ((lambda (_xid32915_)
                                                  (_lp32860_
                                                   _rest32891_
                                                   (cons (cons _id32908_
                                                               _xid32915_)
                                                         _subst32863_)
                                                   _locals32864_
                                                   _env32865_))
                                                _$e32912_)
                                               (_lp32860_
                                                _rest32891_
                                                _subst32863_
                                                (cons (cons (cons _id32908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr32907_ '()))
              _locals32864_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _sexpr32910_
                                                            _id32908_)
                                                      _env32865_)))))))
                                 (if (##pair? _bind3289332900_)
                                     (let ((_hd3289732920_
                                            (##car _bind3289332900_))
                                           (_tl3289832922_
                                            (##cdr _bind3289332900_)))
                                       (let* ((_id32925_ _hd3289732920_)
                                              (_expr32927_ _tl3289832922_))
                                         (_K3289632917_
                                          _expr32927_
                                          _id32925_)))
                                     (_E3289532904_))))))
                       (if (##pair? _rest3286632874_)
                           (let ((_hd3287132932_ (##car _rest3286632874_))
                                 (_tl3287232934_ (##cdr _rest3286632874_)))
                             (let* ((_bind32937_ _hd3287132932_)
                                    (_rest32939_ _tl3287232934_))
                               (_K3287032929_ _rest32939_ _bind32937_)))
                           (_else3286832888_))))))
                (_bind-e__0__3959439595_
                 (lambda (_bind32944_ _body32945_)
                   (let ((_continue32947_ _optimize-e32262_))
                     (_bind-e__3959239593_
                      _bind32944_
                      _body32945_
                      _continue32947_))))
                (_bind-e32269_
                 (lambda _g42690_
                   (let ((_g42689_ (length _g42690_)))
                     (cond ((##fx= _g42689_ 2)
                            (apply _bind-e__0__3959439595_ _g42690_))
                           ((##fx= _g42689_ 3)
                            (apply _bind-e__3959239593_ _g42690_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42690_))))))
                (_lookup-block32270_
                 (lambda (_id32851_)
                   (find (lambda (_block32853_)
                           (gx#free-identifier=? (car _block32853_) _id32851_))
                         _blocks32012_)))
                (_inline-block32271_
                 (lambda (_block32727_ _args32728_)
                   (let* ((_kont32730_ (caddr _block32727_))
                          (_g3273232758_
                           (lambda (_g3273332755_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3273332755_)))
                          (_g3273132848_
                           (lambda (_g3273332761_)
                             (if (gx#stx-pair? _g3273332761_)
                                 (let ((_e3273632763_
                                        (gx#stx-e _g3273332761_)))
                                   (let ((_hd3273732766_ (##car _e3273632763_))
                                         (_tl3273832768_
                                          (##cdr _e3273632763_)))
                                     (if (gx#identifier? _hd3273732766_)
                                         (if (gx#stx-eq?
                                              '%#lambda
                                              _hd3273732766_)
                                             (if (gx#stx-pair? _tl3273832768_)
                                                 (let ((_e3273932771_
                                                        (gx#stx-e
                                                         _tl3273832768_)))
                                                   (let ((_hd3274032774_
                                                          (##car _e3273932771_))
                                                         (_tl3274132776_
                                                          (##cdr _e3273932771_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd3274032774_)
                                                         (let ((_g42691_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3274032774_
                         '0)))
                   (begin
                     (let ((_g42692_
                            (if (##values? _g42691_)
                                (##vector-length _g42691_)
                                1)))
                       (if (not (##fx= _g42692_ 2))
                           (error "Context expects 2 values" _g42692_)))
                     (let ((_target3274232779_ (##vector-ref _g42691_ 0))
                           (_tl3274432781_ (##vector-ref _g42691_ 1)))
                       (if (gx#stx-null? _tl3274432781_)
                           (letrec ((_loop3274532784_
                                     (lambda (_hd3274332787_ _id3274932789_)
                                       (if (gx#stx-pair? _hd3274332787_)
                                           (let ((_e3274632792_
                                                  (gx#stx-e _hd3274332787_)))
                                             (let ((_lp-hd3274732795_
                                                    (##car _e3274632792_))
                                                   (_lp-tl3274832797_
                                                    (##cdr _e3274632792_)))
                                               (_loop3274532784_
                                                _lp-tl3274832797_
                                                (cons _lp-hd3274732795_
                                                      _id3274932789_))))
                                           (let ((_id3275032800_
                                                  (reverse _id3274932789_)))
                                             (if (gx#stx-pair? _tl3274132776_)
                                                 (let ((_e3275132803_
                                                        (gx#stx-e
                                                         _tl3274132776_)))
                                                   (let ((_hd3275232806_
                                                          (##car _e3275132803_))
                                                         (_tl3275332808_
                                                          (##cdr _e3275132803_)))
                                                     (if (gx#stx-null?
                                                          _tl3275332808_)
                                                         ((lambda (_L32811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L32812_)
                    (if (null? (begin
                                 '#!void
                                 (foldr1 (lambda (_g3283132834_ _g3283232836_)
                                           (cons _g3283132834_ _g3283232836_))
                                         '()
                                         _L32812_)))
                        _L32811_
                        (let ((_subst32846_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3283832841_
                                                       _g3283932843_)
                                                (cons _g3283832841_
                                                      _g3283932843_))
                                              '()
                                              _L32812_))
                                    _args32728_)))
                          (gxc#apply-expression-subst*
                           _L32811_
                           _subst32846_))))
                  _hd3275232806_
                  _id3275032800_)
                 (_g3273232758_ _g3273332761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3273232758_
                                                  _g3273332761_)))))))
                             (_loop3274532784_ _target3274232779_ '()))
                           (_g3273232758_ _g3273332761_)))))
                 (_g3273232758_ _g3273332761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3273232758_ _g3273332761_))
                                             (_g3273232758_ _g3273332761_))
                                         (_g3273232758_ _g3273332761_))))
                                 (_g3273232758_ _g3273332761_)))))
                     (_g3273132848_ _kont32730_))))
                (_nonlinear-block?32272_
                 (lambda (_block32276_)
                   (letrec ((_nonlinear-expr?32278_
                             (lambda (_expr32386_)
                               (let* ((___stx4164941650_ _expr32386_)
                                      (_g3239232458_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4164941650_))))
                                 (let ((___kont4165141652_ (lambda () '#t))
                                       (___kont4165341654_
                                        (lambda (_L32657_)
                                          (let* ((___stx4163141632_ _L32657_)
                                                 (_g3267532684_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx4163141632_))))
                                            (let ((___kont4163341634_
                                                   (lambda () '#f))
                                                  (___kont4163541636_
                                                   (lambda () '#t)))
                                              (if (gx#stx-pair?
                                                   ___stx4163141632_)
                                                  (let ((_e3267732696_
                                                         (gx#stx-e
                                                          ___stx4163141632_)))
                                                    (let ((_tl3267932701_
                                                           (##cdr _e3267732696_))
                                                          (_hd3267832699_
                                                           (##car _e3267732696_)))
                                                      (if (gx#identifier?
                                                           _hd3267832699_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd3267832699_)
                                                              (___kont4163341634_)
                                                              (___kont4163541636_))
                                                          (___kont4163541636_))))
                                                  (___kont4163541636_))))))
                                       (___kont4165741658_
                                        (lambda (_L32555_)
                                          (_nonlinear-expr?32278_ _L32555_)))
                                       (___kont4165941660_
                                        (lambda (_L32502_ _L32503_ _L32504_)
                                          (let ((_$e32523_
                                                 (_nonlinear-expr?32278_
                                                  _L32503_)))
                                            (if _$e32523_
                                                _$e32523_
                                                (_nonlinear-expr?32278_
                                                 _L32502_)))))
                                       (___kont4166141662_ (lambda () '#f)))
                                   (let* ((___match4171241713_
                                           (lambda (_e3243032531_
                                                    _hd3243132534_
                                                    _tl3243232536_
                                                    _e3243332539_
                                                    _hd3243432542_
                                                    _tl3243532544_)
                                             (if (gx#stx-pair? _tl3243532544_)
                                                 (let ((_e3243632547_
                                                        (gx#stx-e
                                                         _tl3243532544_)))
                                                   (let ((_tl3243832552_
                                                          (##cdr _e3243632547_))
                                                         (_hd3243732550_
                                                          (##car _e3243632547_)))
                                                     (if (gx#stx-null?
                                                          _tl3243832552_)
                                                         (___kont4165741658_
                                                          _hd3243732550_)
                                                         (___kont4166141662_))))
                                                 (___kont4166141662_))))
                                          (___match4169641697_
                                           (lambda (_e3239832573_
                                                    _hd3239932576_
                                                    _tl3240032578_
                                                    _e3240132581_
                                                    _hd3240232584_
                                                    _tl3240332586_
                                                    ___splice4165541656_
                                                    _target3240432589_
                                                    _tl3240632591_)
                                             (letrec ((_loop3240732594_
                                                       (lambda (_hd3240532597_)
                                                         (if (gx#stx-pair?
                                                              _hd3240532597_)
                                                             (let ((_e3240832600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3240532597_)))
                       (let ((_lp-tl3241032605_ (##cdr _e3240832600_))
                             (_lp-hd3240932603_ (##car _e3240832600_)))
                         (if (gx#stx-pair? _lp-hd3240932603_)
                             (let ((_e3241132608_
                                    (gx#stx-e _lp-hd3240932603_)))
                               (let ((_tl3241332613_ (##cdr _e3241132608_))
                                     (_hd3241232611_ (##car _e3241132608_)))
                                 (if (gx#stx-pair? _hd3241232611_)
                                     (let ((_e3241432616_
                                            (gx#stx-e _hd3241232611_)))
                                       (let ((_tl3241632621_
                                              (##cdr _e3241432616_))
                                             (_hd3241532619_
                                              (##car _e3241432616_)))
                                         (if (gx#stx-null? _tl3241632621_)
                                             (if (gx#stx-pair? _tl3241332613_)
                                                 (let ((_e3241732624_
                                                        (gx#stx-e
                                                         _tl3241332613_)))
                                                   (let ((_tl3241932629_
                                                          (##cdr _e3241732624_))
                                                         (_hd3241832627_
                                                          (##car _e3241732624_)))
                                                     (if (gx#stx-pair?
                                                          _hd3241832627_)
                                                         (let ((_e3242032632_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3241832627_)))
                   (let ((_tl3242232637_ (##cdr _e3242032632_))
                         (_hd3242132635_ (##car _e3242032632_)))
                     (if (gx#identifier? _hd3242132635_)
                         (if (gx#stx-eq? '%#ref _hd3242132635_)
                             (if (gx#stx-pair? _tl3242232637_)
                                 (let ((_e3242332640_
                                        (gx#stx-e _tl3242232637_)))
                                   (let ((_tl3242532645_ (##cdr _e3242332640_))
                                         (_hd3242432643_
                                          (##car _e3242332640_)))
                                     (if (gx#stx-null? _tl3242532645_)
                                         (if (gx#stx-null? _tl3241932629_)
                                             (_loop3240732594_
                                              _lp-tl3241032605_)
                                             (___match4171241713_
                                              _e3239832573_
                                              _hd3239932576_
                                              _tl3240032578_
                                              _e3240132581_
                                              _hd3240232584_
                                              _tl3240332586_))
                                         (___match4171241713_
                                          _e3239832573_
                                          _hd3239932576_
                                          _tl3240032578_
                                          _e3240132581_
                                          _hd3240232584_
                                          _tl3240332586_))))
                                 (___match4171241713_
                                  _e3239832573_
                                  _hd3239932576_
                                  _tl3240032578_
                                  _e3240132581_
                                  _hd3240232584_
                                  _tl3240332586_))
                             (___match4171241713_
                              _e3239832573_
                              _hd3239932576_
                              _tl3240032578_
                              _e3240132581_
                              _hd3240232584_
                              _tl3240332586_))
                         (___match4171241713_
                          _e3239832573_
                          _hd3239932576_
                          _tl3240032578_
                          _e3240132581_
                          _hd3240232584_
                          _tl3240332586_))))
                 (___match4171241713_
                  _e3239832573_
                  _hd3239932576_
                  _tl3240032578_
                  _e3240132581_
                  _hd3240232584_
                  _tl3240332586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___match4171241713_
                                                  _e3239832573_
                                                  _hd3239932576_
                                                  _tl3240032578_
                                                  _e3240132581_
                                                  _hd3240232584_
                                                  _tl3240332586_))
                                             (___match4171241713_
                                              _e3239832573_
                                              _hd3239932576_
                                              _tl3240032578_
                                              _e3240132581_
                                              _hd3240232584_
                                              _tl3240332586_))))
                                     (___match4171241713_
                                      _e3239832573_
                                      _hd3239932576_
                                      _tl3240032578_
                                      _e3240132581_
                                      _hd3240232584_
                                      _tl3240332586_))))
                             (___match4171241713_
                              _e3239832573_
                              _hd3239932576_
                              _tl3240032578_
                              _e3240132581_
                              _hd3240232584_
                              _tl3240332586_))))
                     (let ()
                       (if (gx#stx-pair? _tl3240332586_)
                           (let ((_e3242632649_ (gx#stx-e _tl3240332586_)))
                             (let ((_tl3242832654_ (##cdr _e3242632649_))
                                   (_hd3242732652_ (##car _e3242632649_)))
                               (if (gx#stx-null? _tl3242832654_)
                                   (___kont4165341654_ _hd3242732652_)
                                   (___kont4166141662_))))
                           (___kont4166141662_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop3240732594_
                                                _target3240432589_)))))
                                     (if (gx#stx-pair? ___stx4164941650_)
                                         (let ((_e3239432714_
                                                (gx#stx-e ___stx4164941650_)))
                                           (let ((_tl3239632719_
                                                  (##cdr _e3239432714_))
                                                 (_hd3239532717_
                                                  (##car _e3239432714_)))
                                             (if (gx#identifier?
                                                  _hd3239532717_)
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3239532717_)
                                                     (___kont4165141652_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _hd3239532717_)
                                                         (if (gx#stx-pair?
                                                              _tl3239632719_)
                                                             (let ((_e3240132581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3239632719_)))
                       (let ((_tl3240332586_ (##cdr _e3240132581_))
                             (_hd3240232584_ (##car _e3240132581_)))
                         (if (gx#stx-pair/null? _hd3240232584_)
                             (let ((___splice4165541656_
                                    (gx#syntax-split-splice
                                     _hd3240232584_
                                     '0)))
                               (let ((_tl3240632591_
                                      (##vector-ref ___splice4165541656_ '1))
                                     (_target3240432589_
                                      (##vector-ref ___splice4165541656_ '0)))
                                 (if (gx#stx-null? _tl3240632591_)
                                     (___match4169641697_
                                      _e3239432714_
                                      _hd3239532717_
                                      _tl3239632719_
                                      _e3240132581_
                                      _hd3240232584_
                                      _tl3240332586_
                                      ___splice4165541656_
                                      _target3240432589_
                                      _tl3240632591_)
                                     (if (gx#stx-pair? _tl3240332586_)
                                         (let ((_e3243632547_
                                                (gx#stx-e _tl3240332586_)))
                                           (let ((_tl3243832552_
                                                  (##cdr _e3243632547_))
                                                 (_hd3243732550_
                                                  (##car _e3243632547_)))
                                             (if (gx#stx-null? _tl3243832552_)
                                                 (___kont4165741658_
                                                  _hd3243732550_)
                                                 (___kont4166141662_))))
                                         (___kont4166141662_)))))
                             (if (gx#stx-pair? _tl3240332586_)
                                 (let ((_e3243632547_
                                        (gx#stx-e _tl3240332586_)))
                                   (let ((_tl3243832552_ (##cdr _e3243632547_))
                                         (_hd3243732550_
                                          (##car _e3243632547_)))
                                     (if (gx#stx-null? _tl3243832552_)
                                         (___kont4165741658_ _hd3243732550_)
                                         (___kont4166141662_))))
                                 (___kont4166141662_)))))
                     (___kont4166141662_))
                 (if (gx#stx-eq? '%#if _hd3239532717_)
                     (if (gx#stx-pair? _tl3239632719_)
                         (let ((_e3244532478_ (gx#stx-e _tl3239632719_)))
                           (let ((_tl3244732483_ (##cdr _e3244532478_))
                                 (_hd3244632481_ (##car _e3244532478_)))
                             (if (gx#stx-pair? _tl3244732483_)
                                 (let ((_e3244832486_
                                        (gx#stx-e _tl3244732483_)))
                                   (let ((_tl3245032491_ (##cdr _e3244832486_))
                                         (_hd3244932489_
                                          (##car _e3244832486_)))
                                     (if (gx#stx-pair? _tl3245032491_)
                                         (let ((_e3245132494_
                                                (gx#stx-e _tl3245032491_)))
                                           (let ((_tl3245332499_
                                                  (##cdr _e3245132494_))
                                                 (_hd3245232497_
                                                  (##car _e3245132494_)))
                                             (if (gx#stx-null? _tl3245332499_)
                                                 (___kont4165941660_
                                                  _hd3245232497_
                                                  _hd3244932489_
                                                  _hd3244632481_)
                                                 (___kont4166141662_))))
                                         (___kont4166141662_))))
                                 (___kont4166141662_))))
                         (___kont4166141662_))
                     (___kont4166141662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4166141662_))))
                                         (___kont4166141662_))))))))
                     (let* ((_kont32280_ (caddr _block32276_))
                            (_g3228232308_
                             (lambda (_g3228332305_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3228332305_)))
                            (_g3228132383_
                             (lambda (_g3228332311_)
                               (if (gx#stx-pair? _g3228332311_)
                                   (let ((_e3228632313_
                                          (gx#stx-e _g3228332311_)))
                                     (let ((_hd3228732316_
                                            (##car _e3228632313_))
                                           (_tl3228832318_
                                            (##cdr _e3228632313_)))
                                       (if (gx#identifier? _hd3228732316_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd3228732316_)
                                               (if (gx#stx-pair?
                                                    _tl3228832318_)
                                                   (let ((_e3228932321_
                                                          (gx#stx-e
                                                           _tl3228832318_)))
                                                     (let ((_hd3229032324_
                                                            (##car _e3228932321_))
                                                           (_tl3229132326_
                                                            (##cdr _e3228932321_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd3229032324_)
                                                           (let ((_g42693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd3229032324_ '0)))
                     (begin
                       (let ((_g42694_
                              (if (##values? _g42693_)
                                  (##vector-length _g42693_)
                                  1)))
                         (if (not (##fx= _g42694_ 2))
                             (error "Context expects 2 values" _g42694_)))
                       (let ((_target3229232329_ (##vector-ref _g42693_ 0))
                             (_tl3229432331_ (##vector-ref _g42693_ 1)))
                         (if (gx#stx-null? _tl3229432331_)
                             (letrec ((_loop3229532334_
                                       (lambda (_hd3229332337_ _id3229932339_)
                                         (if (gx#stx-pair? _hd3229332337_)
                                             (let ((_e3229632342_
                                                    (gx#stx-e _hd3229332337_)))
                                               (let ((_lp-hd3229732345_
                                                      (##car _e3229632342_))
                                                     (_lp-tl3229832347_
                                                      (##cdr _e3229632342_)))
                                                 (_loop3229532334_
                                                  _lp-tl3229832347_
                                                  (cons _lp-hd3229732345_
                                                        _id3229932339_))))
                                             (let ((_id3230032350_
                                                    (reverse _id3229932339_)))
                                               (if (gx#stx-pair?
                                                    _tl3229132326_)
                                                   (let ((_e3230132353_
                                                          (gx#stx-e
                                                           _tl3229132326_)))
                                                     (let ((_hd3230232356_
                                                            (##car _e3230132353_))
                                                           (_tl3230332358_
                                                            (##cdr _e3230132353_)))
                                                       (if (gx#stx-null?
                                                            _tl3230332358_)
                                                           ((lambda (_L32361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L32362_)
                      (_nonlinear-expr?32278_ _L32361_))
                    _hd3230232356_
                    _id3230032350_)
                   (_g3228232308_ _g3228332311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3228232308_
                                                    _g3228332311_)))))))
                               (_loop3229532334_ _target3229232329_ '()))
                             (_g3228232308_ _g3228332311_)))))
                   (_g3228232308_ _g3228332311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3228232308_
                                                    _g3228332311_))
                                               (_g3228232308_ _g3228332311_))
                                           (_g3228232308_ _g3228332311_))))
                                   (_g3228232308_ _g3228332311_)))))
                       (_g3228132383_ _kont32280_))))))
        (_do-assert32251_
         _assert32010_
         (lambda ()
           (_do-bind32258_
            _bind32011_
            (lambda () (_optimize-e32262_ _body32009_))))))))
  (define gxc#optimize-match-prune-blocks
    (lambda (_blocks31921_ _konts31922_)
      (letrec* ((_rtab31924_ (make-hash-table-eq)))
        (begin
          (for-each
           (lambda (_block31926_)
             (gxc#apply-collect-runtime-refs (caddr _block31926_) _rtab31924_))
           _konts31922_)
          (let _lp31928_ ((_rest31930_ _blocks31921_) (_r31931_ '()))
            (let* ((_rest3193231940_ _rest31930_)
                   (_else3193431948_ (lambda () (reverse _r31931_)))
                   (_K3193631997_
                    (lambda (_rest31951_ _block31952_)
                      (let* ((_block3195331964_ _block31952_)
                             (_E3195531968_
                              (lambda ()
                                (error '"No clause matching"
                                       _block3195331964_)))
                             (_K3195631975_
                              (lambda (_kont31971_ _type31972_ _name31973_)
                                (if (table-ref
                                     _rtab31924_
                                     (gxc#identifier-symbol _name31973_)
                                     '#f)
                                    (begin
                                      (gxc#apply-collect-runtime-refs
                                       _kont31971_
                                       _rtab31924_)
                                      (_lp31928_
                                       _rest31951_
                                       (cons _block31952_ _r31931_)))
                                    (_lp31928_ _rest31951_ _r31931_)))))
                        (if (##pair? _block3195331964_)
                            (let ((_hd3195731978_ (##car _block3195331964_))
                                  (_tl3195831980_ (##cdr _block3195331964_)))
                              (let ((_name31983_ _hd3195731978_))
                                (if (##pair? _tl3195831980_)
                                    (let ((_hd3195931985_
                                           (##car _tl3195831980_))
                                          (_tl3196031987_
                                           (##cdr _tl3195831980_)))
                                      (let ((_type31990_ _hd3195931985_))
                                        (if (##pair? _tl3196031987_)
                                            (let* ((_hd3196131992_
                                                    (##car _tl3196031987_))
                                                   (_kont31995_
                                                    _hd3196131992_))
                                              (_K3195631975_
                                               _kont31995_
                                               _type31990_
                                               _name31983_))
                                            (_E3195531968_))))
                                    (_E3195531968_))))
                            (_E3195531968_))))))
              (if (##pair? _rest3193231940_)
                  (let ((_hd3193732000_ (##car _rest3193231940_))
                        (_tl3193832002_ (##cdr _rest3193231940_)))
                    (let* ((_block32005_ _hd3193732000_)
                           (_rest32007_ _tl3193832002_))
                      (_K3193631997_ _rest32007_ _block32005_)))
                  (_else3193431948_))))))))
  (define gxc#optimize-match-fuse-restart-blocks
    (lambda (_blocks31845_ _konts31846_)
      (let* ((_blocks3184731863_ _blocks31845_)
             (_else3184931871_ (lambda () _blocks31845_))
             (_K3185131889_
              (lambda (_rest31874_ _kont31875_ _name31876_)
                (letrec* ((_rtab31878_ (make-hash-table-eq)))
                  (begin
                    (for-each
                     (lambda (_block31880_)
                       (gxc#apply-collect-runtime-refs
                        (caddr _block31880_)
                        _rtab31878_))
                     _konts31846_)
                    (if (fx= (table-ref
                              _rtab31878_
                              (gxc#identifier-symbol _name31876_))
                             '1)
                        (let* ((_rblock31884_
                                (find (lambda (_block31882_)
                                        (gxc#apply-find-var-refs
                                         (caddr _block31882_)
                                         (cons _name31876_ '())))
                                      _konts31846_))
                               (_assert31886_
                                (gxc#optimize-match-assert-restart
                                 _rblock31884_
                                 _name31876_)))
                          (cons (cons _name31876_
                                      (cons 'restart:
                                            (cons _kont31875_
                                                  (cons _assert31886_ '()))))
                                _rest31874_))
                        _blocks31845_))))))
        (if (##pair? _blocks3184731863_)
            (let ((_hd3185231892_ (##car _blocks3184731863_))
                  (_tl3185331894_ (##cdr _blocks3184731863_)))
              (if (##pair? _hd3185231892_)
                  (let ((_hd3185431897_ (##car _hd3185231892_))
                        (_tl3185531899_ (##cdr _hd3185231892_)))
                    (let ((_name31902_ _hd3185431897_))
                      (if (##pair? _tl3185531899_)
                          (let ((_hd3185631904_ (##car _tl3185531899_))
                                (_tl3185731906_ (##cdr _tl3185531899_)))
                            (if (##eq? _hd3185631904_ 'restart:)
                                (if (##pair? _tl3185731906_)
                                    (let ((_hd3185831909_
                                           (##car _tl3185731906_))
                                          (_tl3185931911_
                                           (##cdr _tl3185731906_)))
                                      (let ((_kont31914_ _hd3185831909_))
                                        (if (##pair? _tl3185931911_)
                                            (let ((_tl3186131916_
                                                   (##cdr _tl3185931911_)))
                                              (if (##null? _tl3186131916_)
                                                  (let ((_rest31919_
                                                         _tl3185331894_))
                                                    (_K3185131889_
                                                     _rest31919_
                                                     _kont31914_
                                                     _name31902_))
                                                  (_else3184931871_)))
                                            (_else3184931871_))))
                                    (_else3184931871_))
                                (_else3184931871_)))
                          (_else3184931871_))))
                  (_else3184931871_)))
            (_else3184931871_)))))
  (define gxc#optimize-match-assert-restart
    (lambda (_block31241_ _name31242_)
      (letrec ((_assert-restart31244_
                (lambda (_expr31400_ _assert31401_)
                  (let* ((___stx4175341754_ _expr31400_)
                         (_g3140731504_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4175341754_))))
                    (let ((___kont4175541756_
                           (lambda (_L31820_ _L31821_ _L31822_)
                             (let ((_$e31839_
                                    (_assert-restart31244_
                                     _L31821_
                                     (cons (cons _L31822_ '#t)
                                           _assert31401_))))
                               (if _$e31839_
                                   _$e31839_
                                   (_assert-restart31244_
                                    _L31820_
                                    (cons (cons _L31822_ '#f)
                                          _assert31401_))))))
                          (___kont4175741758_
                           (lambda (_L31768_)
                             (if (gx#free-identifier=? _L31768_ _name31242_)
                                 _assert31401_
                                 '#f)))
                          (___kont4175941760_
                           (lambda (_L31718_)
                             (_assert-restart31244_ _L31718_ _assert31401_)))
                          (___kont4176141762_
                           (lambda (_L31644_
                                    _L31645_
                                    _L31646_
                                    _L31647_
                                    _L31648_)
                             (_assert-restart31244_ _L31646_ _assert31401_)))
                          (___kont4176741768_ (lambda () '#f)))
                      (let ((___match4192241923_
                             (lambda (_e3145231516_
                                      _hd3145331519_
                                      _tl3145431521_
                                      _e3145531524_
                                      _hd3145631527_
                                      _tl3145731529_
                                      _e3145831532_
                                      _hd3145931535_
                                      _tl3146031537_
                                      _e3146131540_
                                      _hd3146231543_
                                      _tl3146331545_
                                      _e3146431548_
                                      _hd3146531551_
                                      _tl3146631553_
                                      _e3146731556_
                                      _hd3146831559_
                                      _tl3146931561_
                                      _e3147031564_
                                      _hd3147131567_
                                      _tl3147231569_
                                      _e3147331572_
                                      _hd3147431575_
                                      _tl3147531577_
                                      ___splice4176341764_
                                      _target3147631580_
                                      _tl3147831582_)
                               (letrec ((_loop3147931585_
                                         (lambda (_hd3147731588_
                                                  _id3148331590_)
                                           (if (gx#stx-pair? _hd3147731588_)
                                               (let ((_e3148031593_
                                                      (gx#stx-e
                                                       _hd3147731588_)))
                                                 (let ((_lp-tl3148231598_
                                                        (##cdr _e3148031593_))
                                                       (_lp-hd3148131596_
                                                        (##car _e3148031593_)))
                                                   (_loop3147931585_
                                                    _lp-tl3148231598_
                                                    (cons _lp-hd3148131596_
                                                          _id3148331590_))))
                                               (let ((_id3148431601_
                                                      (reverse _id3148331590_)))
                                                 (if (gx#stx-pair?
                                                      _tl3147531577_)
                                                     (let ((_e3148531604_
                                                            (gx#stx-e
                                                             _tl3147531577_)))
                                                       (let ((_tl3148731609_
                                                              (##cdr _e3148531604_))
                                                             (_hd3148631607_
                                                              (##car _e3148531604_)))
                                                         (if (gx#stx-null?
                                                              _tl3148731609_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl3146931561_)
                         (if (gx#stx-pair/null? _tl3146031537_)
                             (let ((___splice4176541766_
                                    (gx#syntax-split-splice
                                     _tl3146031537_
                                     '0)))
                               (let ((_tl3149031614_
                                      (##vector-ref ___splice4176541766_ '1))
                                     (_target3148831612_
                                      (##vector-ref ___splice4176541766_ '0)))
                                 (if (gx#stx-null? _tl3149031614_)
                                     (letrec ((_loop3149131617_
                                               (lambda (_hd3148931620_
                                                        _bind3149531622_)
                                                 (if (gx#stx-pair?
                                                      _hd3148931620_)
                                                     (let ((_e3149231625_
                                                            (gx#stx-e
                                                             _hd3148931620_)))
                                                       (let ((_lp-tl3149431630_
                                                              (##cdr _e3149231625_))
                                                             (_lp-hd3149331628_
                                                              (##car _e3149231625_)))
                                                         (_loop3149131617_
                                                          _lp-tl3149431630_
                                                          (cons _lp-hd3149331628_
                                                                _bind3149531622_))))
                                                     (let ((_bind3149631633_
                                                            (reverse _bind3149531622_)))
                                                       (if (gx#stx-pair?
                                                            _tl3145731529_)
                                                           (let ((_e3149731636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3145731529_)))
                     (let ((_tl3149931641_ (##cdr _e3149731636_))
                           (_hd3149831639_ (##car _e3149731636_)))
                       (if (gx#stx-null? _tl3149931641_)
                           (___kont4176141762_
                            _hd3149831639_
                            _bind3149631633_
                            _hd3148631607_
                            _id3148431601_
                            _hd3146531551_)
                           (___kont4176741768_))))
                   (___kont4176741768_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3149131617_
                                        _target3148831612_
                                        '()))
                                     (___kont4176741768_))))
                             (___kont4176741768_))
                         (___kont4176741768_))
                     (___kont4176741768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4176741768_)))))))
                                 (_loop3147931585_ _target3147631580_ '())))))
                        (if (gx#stx-pair? ___stx4175341754_)
                            (let ((_e3141231788_ (gx#stx-e ___stx4175341754_)))
                              (let ((_tl3141431793_ (##cdr _e3141231788_))
                                    (_hd3141331791_ (##car _e3141231788_)))
                                (if (gx#identifier? _hd3141331791_)
                                    (if (gx#stx-eq? '%#if _hd3141331791_)
                                        (if (gx#stx-pair? _tl3141431793_)
                                            (let ((_e3141531796_
                                                   (gx#stx-e _tl3141431793_)))
                                              (let ((_tl3141731801_
                                                     (##cdr _e3141531796_))
                                                    (_hd3141631799_
                                                     (##car _e3141531796_)))
                                                (if (gx#stx-pair?
                                                     _tl3141731801_)
                                                    (let ((_e3141831804_
                                                           (gx#stx-e
                                                            _tl3141731801_)))
                                                      (let ((_tl3142031809_
                                                             (##cdr _e3141831804_))
                                                            (_hd3141931807_
                                                             (##car _e3141831804_)))
                                                        (if (gx#stx-pair?
                                                             _tl3142031809_)
                                                            (let ((_e3142131812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3142031809_)))
                      (let ((_tl3142331817_ (##cdr _e3142131812_))
                            (_hd3142231815_ (##car _e3142131812_)))
                        (if (gx#stx-null? _tl3142331817_)
                            (___kont4175541756_
                             _hd3142231815_
                             _hd3141931807_
                             _hd3141631799_)
                            (___kont4176741768_))))
                    (___kont4176741768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4176741768_))))
                                            (___kont4176741768_))
                                        (if (gx#stx-eq? '%#call _hd3141331791_)
                                            (if (gx#stx-pair? _tl3141431793_)
                                                (let ((_e3142831744_
                                                       (gx#stx-e
                                                        _tl3141431793_)))
                                                  (let ((_tl3143031749_
                                                         (##cdr _e3142831744_))
                                                        (_hd3142931747_
                                                         (##car _e3142831744_)))
                                                    (if (gx#stx-pair?
                                                         _hd3142931747_)
                                                        (let ((_e3143131752_
                                                               (gx#stx-e
                                                                _hd3142931747_)))
                                                          (let ((_tl3143331757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3143131752_))
                        (_hd3143231755_ (##car _e3143131752_)))
                    (if (gx#identifier? _hd3143231755_)
                        (if (gx#stx-eq? '%#ref _hd3143231755_)
                            (if (gx#stx-pair? _tl3143331757_)
                                (let ((_e3143431760_
                                       (gx#stx-e _tl3143331757_)))
                                  (let ((_tl3143631765_ (##cdr _e3143431760_))
                                        (_hd3143531763_ (##car _e3143431760_)))
                                    (if (gx#stx-null? _tl3143631765_)
                                        (___kont4175741758_ _hd3143531763_)
                                        (___kont4176741768_))))
                                (___kont4176741768_))
                            (___kont4176741768_))
                        (___kont4176741768_))))
                (___kont4176741768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4176741768_))
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3141331791_)
                                                (if (gx#stx-pair?
                                                     _tl3141431793_)
                                                    (let ((_e3144131702_
                                                           (gx#stx-e
                                                            _tl3141431793_)))
                                                      (let ((_tl3144331707_
                                                             (##cdr _e3144131702_))
                                                            (_hd3144231705_
                                                             (##car _e3144131702_)))
                                                        (if (gx#stx-pair?
                                                             _tl3144331707_)
                                                            (let ((_e3144431710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3144331707_)))
                      (let ((_tl3144631715_ (##cdr _e3144431710_))
                            (_hd3144531713_ (##car _e3144431710_)))
                        (if (gx#stx-null? _tl3144631715_)
                            (___kont4175941760_ _hd3144531713_)
                            (___kont4176741768_))))
                    (___kont4176741768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4176741768_))
                                                (if (gx#stx-eq?
                                                     '%#letrec-values
                                                     _hd3141331791_)
                                                    (if (gx#stx-pair?
                                                         _tl3141431793_)
                                                        (let ((_e3145531524_
                                                               (gx#stx-e
                                                                _tl3141431793_)))
                                                          (let ((_tl3145731529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3145531524_))
                        (_hd3145631527_ (##car _e3145531524_)))
                    (if (gx#stx-pair? _hd3145631527_)
                        (let ((_e3145831532_ (gx#stx-e _hd3145631527_)))
                          (let ((_tl3146031537_ (##cdr _e3145831532_))
                                (_hd3145931535_ (##car _e3145831532_)))
                            (if (gx#stx-pair? _hd3145931535_)
                                (let ((_e3146131540_
                                       (gx#stx-e _hd3145931535_)))
                                  (let ((_tl3146331545_ (##cdr _e3146131540_))
                                        (_hd3146231543_ (##car _e3146131540_)))
                                    (if (gx#stx-pair? _hd3146231543_)
                                        (let ((_e3146431548_
                                               (gx#stx-e _hd3146231543_)))
                                          (let ((_tl3146631553_
                                                 (##cdr _e3146431548_))
                                                (_hd3146531551_
                                                 (##car _e3146431548_)))
                                            (if (gx#stx-null? _tl3146631553_)
                                                (if (gx#stx-pair?
                                                     _tl3146331545_)
                                                    (let ((_e3146731556_
                                                           (gx#stx-e
                                                            _tl3146331545_)))
                                                      (let ((_tl3146931561_
                                                             (##cdr _e3146731556_))
                                                            (_hd3146831559_
                                                             (##car _e3146731556_)))
                                                        (if (gx#stx-pair?
                                                             _hd3146831559_)
                                                            (let ((_e3147031564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3146831559_)))
                      (let ((_tl3147231569_ (##cdr _e3147031564_))
                            (_hd3147131567_ (##car _e3147031564_)))
                        (if (gx#identifier? _hd3147131567_)
                            (if (gx#stx-eq? '%#lambda _hd3147131567_)
                                (if (gx#stx-pair? _tl3147231569_)
                                    (let ((_e3147331572_
                                           (gx#stx-e _tl3147231569_)))
                                      (let ((_tl3147531577_
                                             (##cdr _e3147331572_))
                                            (_hd3147431575_
                                             (##car _e3147331572_)))
                                        (if (gx#stx-pair/null? _hd3147431575_)
                                            (let ((___splice4176341764_
                                                   (gx#syntax-split-splice
                                                    _hd3147431575_
                                                    '0)))
                                              (let ((_tl3147831582_
                                                     (##vector-ref
                                                      ___splice4176341764_
                                                      '1))
                                                    (_target3147631580_
                                                     (##vector-ref
                                                      ___splice4176341764_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3147831582_)
                                                    (___match4192241923_
                                                     _e3141231788_
                                                     _hd3141331791_
                                                     _tl3141431793_
                                                     _e3145531524_
                                                     _hd3145631527_
                                                     _tl3145731529_
                                                     _e3145831532_
                                                     _hd3145931535_
                                                     _tl3146031537_
                                                     _e3146131540_
                                                     _hd3146231543_
                                                     _tl3146331545_
                                                     _e3146431548_
                                                     _hd3146531551_
                                                     _tl3146631553_
                                                     _e3146731556_
                                                     _hd3146831559_
                                                     _tl3146931561_
                                                     _e3147031564_
                                                     _hd3147131567_
                                                     _tl3147231569_
                                                     _e3147331572_
                                                     _hd3147431575_
                                                     _tl3147531577_
                                                     ___splice4176341764_
                                                     _target3147631580_
                                                     _tl3147831582_)
                                                    (___kont4176741768_))))
                                            (___kont4176741768_))))
                                    (___kont4176741768_))
                                (___kont4176741768_))
                            (___kont4176741768_))))
                    (___kont4176741768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4176741768_))
                                                (___kont4176741768_))))
                                        (___kont4176741768_))))
                                (___kont4176741768_))))
                        (___kont4176741768_))))
                (___kont4176741768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4176741768_)))))
                                    (___kont4176741768_))))
                            (___kont4176741768_))))))))
        (let* ((_block3124531258_ _block31241_)
               (_E3124731262_
                (lambda () (error '"No clause matching" _block3124531258_)))
               (_K3124831375_
                (lambda (_maybe-bind31265_ _assert31266_ _kont31267_)
                  (let* ((_g3126931295_
                          (lambda (_g3127031292_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3127031292_)))
                         (_g3126831372_
                          (lambda (_g3127031298_)
                            (if (gx#stx-pair? _g3127031298_)
                                (let ((_e3127331300_ (gx#stx-e _g3127031298_)))
                                  (let ((_hd3127431303_ (##car _e3127331300_))
                                        (_tl3127531305_ (##cdr _e3127331300_)))
                                    (if (gx#identifier? _hd3127431303_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3127431303_)
                                            (if (gx#stx-pair? _tl3127531305_)
                                                (let ((_e3127631308_
                                                       (gx#stx-e
                                                        _tl3127531305_)))
                                                  (let ((_hd3127731311_
                                                         (##car _e3127631308_))
                                                        (_tl3127831313_
                                                         (##cdr _e3127631308_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3127731311_)
                                                        (let ((_g42695_
                                                               (gx#syntax-split-splice
                                                                _hd3127731311_
                                                                '0)))
                                                          (begin
                                                            (let ((_g42696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g42695_)
                               (##vector-length _g42695_)
                               1)))
                      (if (not (##fx= _g42696_ 2))
                          (error "Context expects 2 values" _g42696_)))
                    (let ((_target3127931316_ (##vector-ref _g42695_ 0))
                          (_tl3128131318_ (##vector-ref _g42695_ 1)))
                      (if (gx#stx-null? _tl3128131318_)
                          (letrec ((_loop3128231321_
                                    (lambda (_hd3128031324_ _id3128631326_)
                                      (if (gx#stx-pair? _hd3128031324_)
                                          (let ((_e3128331329_
                                                 (gx#stx-e _hd3128031324_)))
                                            (let ((_lp-hd3128431332_
                                                   (##car _e3128331329_))
                                                  (_lp-tl3128531334_
                                                   (##cdr _e3128331329_)))
                                              (_loop3128231321_
                                               _lp-tl3128531334_
                                               (cons _lp-hd3128431332_
                                                     _id3128631326_))))
                                          (let ((_id3128731337_
                                                 (reverse _id3128631326_)))
                                            (if (gx#stx-pair? _tl3127831313_)
                                                (let ((_e3128831340_
                                                       (gx#stx-e
                                                        _tl3127831313_)))
                                                  (let ((_hd3128931343_
                                                         (##car _e3128831340_))
                                                        (_tl3129031345_
                                                         (##cdr _e3128831340_)))
                                                    (if (gx#stx-null?
                                                         _tl3129031345_)
                                                        ((lambda (_L31348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L31349_)
                   (_assert-restart31244_ _L31348_ _assert31266_))
                 _hd3128931343_
                 _id3128731337_)
                (_g3126931295_ _g3127031298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3126931295_
                                                 _g3127031298_)))))))
                            (_loop3128231321_ _target3127931316_ '()))
                          (_g3126931295_ _g3127031298_)))))
                (_g3126931295_ _g3127031298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3126931295_ _g3127031298_))
                                            (_g3126931295_ _g3127031298_))
                                        (_g3126931295_ _g3127031298_))))
                                (_g3126931295_ _g3127031298_)))))
                    (_g3126831372_ _kont31267_)))))
          (if (##pair? _block3124531258_)
              (let ((_tl3125031378_ (##cdr _block3124531258_)))
                (if (##pair? _tl3125031378_)
                    (let ((_tl3125231381_ (##cdr _tl3125031378_)))
                      (if (##pair? _tl3125231381_)
                          (let ((_hd3125331384_ (##car _tl3125231381_))
                                (_tl3125431386_ (##cdr _tl3125231381_)))
                            (let ((_kont31389_ _hd3125331384_))
                              (if (##pair? _tl3125431386_)
                                  (let ((_hd3125531391_ (##car _tl3125431386_))
                                        (_tl3125631393_
                                         (##cdr _tl3125431386_)))
                                    (let* ((_assert31396_ _hd3125531391_)
                                           (_maybe-bind31398_ _tl3125631393_))
                                      (_K3124831375_
                                       _maybe-bind31398_
                                       _assert31396_
                                       _kont31389_)))
                                  (_E3124731262_))))
                          (_E3124731262_)))
                    (_E3124731262_)))
              (_E3124731262_))))))
  (define gxc#optimize-syntax-case
    (lambda (_stx30872_)
      (let* ((_g3087430904_
              (lambda (_g3087530901_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3087530901_)))
             (_g3087331238_
              (lambda (_g3087530907_)
                (if (gx#stx-pair? _g3087530907_)
                    (let ((_e3087930909_ (gx#stx-e _g3087530907_)))
                      (let ((_hd3088030912_ (##car _e3087930909_))
                            (_tl3088130914_ (##cdr _e3087930909_)))
                        (if (gx#identifier? _hd3088030912_)
                            (if (gx#stx-eq? '%#let-values _hd3088030912_)
                                (if (gx#stx-pair? _tl3088130914_)
                                    (let ((_e3088230917_
                                           (gx#stx-e _tl3088130914_)))
                                      (let ((_hd3088330920_
                                             (##car _e3088230917_))
                                            (_tl3088430922_
                                             (##cdr _e3088230917_)))
                                        (if (gx#stx-pair? _hd3088330920_)
                                            (let ((_e3088530925_
                                                   (gx#stx-e _hd3088330920_)))
                                              (let ((_hd3088630928_
                                                     (##car _e3088530925_))
                                                    (_tl3088730930_
                                                     (##cdr _e3088530925_)))
                                                (if (gx#stx-pair?
                                                     _hd3088630928_)
                                                    (let ((_e3088830933_
                                                           (gx#stx-e
                                                            _hd3088630928_)))
                                                      (let ((_hd3088930936_
                                                             (##car _e3088830933_))
                                                            (_tl3089030938_
                                                             (##cdr _e3088830933_)))
                                                        (if (gx#stx-pair?
                                                             _hd3088930936_)
                                                            (let ((_e3089130941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3088930936_)))
                      (let ((_hd3089230944_ (##car _e3089130941_))
                            (_tl3089330946_ (##cdr _e3089130941_)))
                        (if (gx#stx-null? _tl3089330946_)
                            (if (gx#stx-pair? _tl3089030938_)
                                (let ((_e3089430949_
                                       (gx#stx-e _tl3089030938_)))
                                  (let ((_hd3089530952_ (##car _e3089430949_))
                                        (_tl3089630954_ (##cdr _e3089430949_)))
                                    (if (gx#stx-null? _tl3089630954_)
                                        (if (gx#stx-null? _tl3088730930_)
                                            (if (gx#stx-pair? _tl3088430922_)
                                                (let ((_e3089730957_
                                                       (gx#stx-e
                                                        _tl3088430922_)))
                                                  (let ((_hd3089830960_
                                                         (##car _e3089730957_))
                                                        (_tl3089930962_
                                                         (##cdr _e3089730957_)))
                                                    (if (gx#stx-null?
                                                         _tl3089930962_)
                                                        ((lambda (_L30965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L30966_
                          _L30967_)
                   (let _lp30991_ ((_body30993_ _L30965_) (_clauses30994_ '()))
                     (let* ((___stx4192541926_ _body30993_)
                            (_g3099731044_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4192541926_))))
                       (let ((___kont4192741928_
                              (lambda (_L31210_ _L31211_ _L31212_)
                                (_lp30991_
                                 _L31210_
                                 (cons (cons _L31212_ (gxc#compile-e _L31211_))
                                       _clauses30994_))))
                             (___kont4192941930_
                              (lambda (_L31089_ _L31090_)
                                (let ((_$e31111_ (length _clauses30994_)))
                                  (if (eq? '0 _$e31111_)
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _L30967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L30966_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gxc#compile-e
                                                          _body30993_)
                                                         '())))
                                       _stx30872_)
                                      (if (eq? '1 _$e31111_)
                                          (let* ((_clauses3111331122_
                                                  _clauses30994_)
                                                 (_E3111531126_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _clauses3111331122_)))
                                                 (_K3111631132_
                                                  (lambda (_clause-lambda31129_
                                                           _clause31130_)
                                                    (gxc#xform-wrap-source
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _L30967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _L30966_ '()))
                               '())
                         (cons (cons '%#let-values
                                     (cons (cons (cons (cons _clause31130_ '())
                                                       (cons _clause-lambda31129_
                                                             '()))
                                                 '())
                                           (cons (gxc#compile-e _body30993_)
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx30872_))))
                                            (if (##pair? _clauses3111331122_)
                                                (let ((_hd3111731135_
                                                       (##car _clauses3111331122_))
                                                      (_tl3111831137_
                                                       (##cdr _clauses3111331122_)))
                                                  (if (##pair? _hd3111731135_)
                                                      (let ((_hd3111931140_
                                                             (##car _hd3111731135_))
                                                            (_tl3112031142_
                                                             (##cdr _hd3111731135_)))
                                                        (let* ((_clause31145_
                                                                _hd3111931140_)
                                                               (_clause-lambda31147_
                                                                _tl3112031142_))
                                                          (if (##null? _tl3111831137_)
                                                              (_K3111631132_
                                                               _clause-lambda31147_
                                                               _clause31145_)
                                                              (_E3111531126_))))
                                                      (_E3111531126_)))
                                                (_E3111531126_)))
                                          (gxc#optimize-syntax-case-body
                                           _stx30872_
                                           (gxc#compile-e _L31089_)
                                           (cons _L30967_ _L30966_)
                                           _clauses30994_)))))))
                         (if (gx#stx-pair? ___stx4192541926_)
                             (let ((_e3100231154_
                                    (gx#stx-e ___stx4192541926_)))
                               (let ((_tl3100431159_ (##cdr _e3100231154_))
                                     (_hd3100331157_ (##car _e3100231154_)))
                                 (if (gx#identifier? _hd3100331157_)
                                     (if (gx#stx-eq?
                                          '%#let-values
                                          _hd3100331157_)
                                         (if (gx#stx-pair? _tl3100431159_)
                                             (let ((_e3100531162_
                                                    (gx#stx-e _tl3100431159_)))
                                               (let ((_tl3100731167_
                                                      (##cdr _e3100531162_))
                                                     (_hd3100631165_
                                                      (##car _e3100531162_)))
                                                 (if (gx#stx-pair?
                                                      _hd3100631165_)
                                                     (let ((_e3100831170_
                                                            (gx#stx-e
                                                             _hd3100631165_)))
                                                       (let ((_tl3101031175_
                                                              (##cdr _e3100831170_))
                                                             (_hd3100931173_
                                                              (##car _e3100831170_)))
                                                         (if (gx#stx-pair?
                                                              _hd3100931173_)
                                                             (let ((_e3101131178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3100931173_)))
                       (let ((_tl3101331183_ (##cdr _e3101131178_))
                             (_hd3101231181_ (##car _e3101131178_)))
                         (if (gx#stx-pair? _hd3101231181_)
                             (let ((_e3101431186_ (gx#stx-e _hd3101231181_)))
                               (let ((_tl3101631191_ (##cdr _e3101431186_))
                                     (_hd3101531189_ (##car _e3101431186_)))
                                 (if (gx#stx-null? _tl3101631191_)
                                     (if (gx#stx-pair? _tl3101331183_)
                                         (let ((_e3101731194_
                                                (gx#stx-e _tl3101331183_)))
                                           (let ((_tl3101931199_
                                                  (##cdr _e3101731194_))
                                                 (_hd3101831197_
                                                  (##car _e3101731194_)))
                                             (if (gx#stx-null? _tl3101931199_)
                                                 (if (gx#stx-null?
                                                      _tl3101031175_)
                                                     (if (gx#stx-pair?
                                                          _tl3100731167_)
                                                         (let ((_e3102031202_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3100731167_)))
                   (let ((_tl3102231207_ (##cdr _e3102031202_))
                         (_hd3102131205_ (##car _e3102031202_)))
                     (if (gx#stx-null? _tl3102231207_)
                         (___kont4192741928_
                          _hd3102131205_
                          _hd3101831197_
                          _hd3101531189_)
                         (_g3099731044_))))
                 (_g3099731044_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3099731044_))
                                                 (_g3099731044_))))
                                         (_g3099731044_))
                                     (_g3099731044_))))
                             (_g3099731044_))))
                     (_g3099731044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3099731044_))))
                                             (_g3099731044_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3100331157_)
                                             (if (gx#stx-pair? _tl3100431159_)
                                                 (let ((_e3102831057_
                                                        (gx#stx-e
                                                         _tl3100431159_)))
                                                   (let ((_tl3103031062_
                                                          (##cdr _e3102831057_))
                                                         (_hd3102931060_
                                                          (##car _e3102831057_)))
                                                     (if (gx#stx-pair?
                                                          _hd3102931060_)
                                                         (let ((_e3103131065_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3102931060_)))
                   (let ((_tl3103331070_ (##cdr _e3103131065_))
                         (_hd3103231068_ (##car _e3103131065_)))
                     (if (gx#identifier? _hd3103231068_)
                         (if (gx#stx-eq? '%#ref _hd3103231068_)
                             (if (gx#stx-pair? _tl3103331070_)
                                 (let ((_e3103431073_
                                        (gx#stx-e _tl3103331070_)))
                                   (let ((_tl3103631078_ (##cdr _e3103431073_))
                                         (_hd3103531076_
                                          (##car _e3103431073_)))
                                     (if (gx#stx-null? _tl3103631078_)
                                         (if (gx#stx-pair? _tl3103031062_)
                                             (let ((_e3103731081_
                                                    (gx#stx-e _tl3103031062_)))
                                               (let ((_tl3103931086_
                                                      (##cdr _e3103731081_))
                                                     (_hd3103831084_
                                                      (##car _e3103731081_)))
                                                 (if (gx#stx-null?
                                                      _tl3103931086_)
                                                     (___kont4192941930_
                                                      _hd3103831084_
                                                      _hd3103531076_)
                                                     (_g3099731044_))))
                                             (_g3099731044_))
                                         (_g3099731044_))))
                                 (_g3099731044_))
                             (_g3099731044_))
                         (_g3099731044_))))
                 (_g3099731044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3099731044_))
                                             (_g3099731044_)))
                                     (_g3099731044_))))
                             (_g3099731044_))))))
                 _hd3089830960_
                 _hd3089530952_
                 _hd3089230944_)
                (_g3087430904_ _g3087530907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3087430904_ _g3087530907_))
                                            (_g3087430904_ _g3087530907_))
                                        (_g3087430904_ _g3087530907_))))
                                (_g3087430904_ _g3087530907_))
                            (_g3087430904_ _g3087530907_))))
                    (_g3087430904_ _g3087530907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3087430904_
                                                     _g3087530907_))))
                                            (_g3087430904_ _g3087530907_))))
                                    (_g3087430904_ _g3087530907_))
                                (_g3087430904_ _g3087530907_))
                            (_g3087430904_ _g3087530907_))))
                    (_g3087430904_ _g3087530907_)))))
        (_g3087331238_ _stx30872_))))
  (define gxc#optimize-syntax-case-body
    (lambda (_stx30800_ _expr30801_ _negation30802_ _clauses30803_)
      (letrec ((_normalize30805_
                (lambda (_clauses30832_)
                  (let* ((_clauses3083330842_ _clauses30832_)
                         (_E3083530846_
                          (lambda ()
                            (error '"No clause matching" _clauses3083330842_)))
                         (_K3083630853_
                          (lambda (_rest30849_ _kont30850_ _id30851_)
                            (cons (cons '#f _kont30850_) _rest30849_))))
                    (if (##pair? _clauses3083330842_)
                        (let ((_hd3083730856_ (##car _clauses3083330842_))
                              (_tl3083830858_ (##cdr _clauses3083330842_)))
                          (if (##pair? _hd3083730856_)
                              (let ((_hd3083930861_ (##car _hd3083730856_))
                                    (_tl3084030863_ (##cdr _hd3083730856_)))
                                (let* ((_id30866_ _hd3083930861_)
                                       (_kont30868_ _tl3084030863_)
                                       (_rest30870_ _tl3083830858_))
                                  (_K3083630853_
                                   _rest30870_
                                   _kont30868_
                                   _id30866_)))
                              (_E3083530846_)))
                        (_E3083530846_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_id30808_ (make-symbol (gensym '__stx)))
                  (_id30810_ (gx#core-quote-syntax__0 _id30808_))
                  (_g42697_ (gx#core-bind-runtime!__0 _id30810_))
                  (_g42698_
                   (gxc#optimize-syntax-case-clauses
                    _clauses30803_
                    (car _negation30802_))))
             (begin
               (let ((_g42699_
                      (if (##values? _g42698_) (##vector-length _g42698_) 1)))
                 (if (not (##fx= _g42699_ 2))
                     (error "Context expects 2 values" _g42699_)))
               (let ((_clauses30813_ (##vector-ref _g42698_ 0))
                     (_konts30814_ (##vector-ref _g42698_ 1)))
                 (let* ((_clauses30823_
                         (map (lambda (_g3081530818_ _g3081630820_)
                                (gxc#optimize-syntax-case-closure
                                 _g3081530818_
                                 _g3081630820_
                                 _id30810_))
                              _clauses30813_
                              (foldr1 cons
                                      (cons (car _negation30802_) '())
                                      (map car (cdr _clauses30813_)))))
                        (_clauses30825_ (_normalize30805_ _clauses30823_))
                        (_negation30827_
                         (gxc#optimize-syntax-case-closure
                          _negation30802_
                          '#f
                          _id30810_))
                        (_body30829_
                         (gxc#optimize-match-body
                          _stx30800_
                          _negation30827_
                          _clauses30825_
                          _konts30814_)))
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _id30810_ '())
                                            (cons _expr30801_ '()))
                                      '())
                                (cons _body30829_ '())))
                    _stx30800_))))))
         gx#current-expander-context
         (let ((__obj42671 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj42671) __obj42671))))))
  (define gxc#optimize-syntax-case-clauses
    (lambda (_clauses29558_ _negation-id29559_)
      (letrec ((_xform-e29561_
                (lambda (_expr29945_
                         _kont-id29946_
                         _kont-box29947_
                         _negation-id29948_)
                  (let* ((___stx4212742128_ _expr29945_)
                         (_g2995430087_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4212742128_))))
                    (let ((___kont4212942130_
                           (lambda (_L30776_ _L30777_ _L30778_)
                             (let ((_K30795_
                                    (_xform-e29561_
                                     _L30777_
                                     _kont-id29946_
                                     _kont-box29947_
                                     _negation-id29948_)))
                               (cons '%#if
                                     (cons _L30778_
                                           (cons _K30795_
                                                 (cons _L30776_ '())))))))
                          (___kont4213142132_
                           (lambda (_L30692_
                                    _L30693_
                                    _L30694_
                                    _L30695_
                                    _L30696_)
                             (let* ((_id30731_
                                     (make-symbol (gensym '__splice)))
                                    (_id30733_
                                     (gx#core-quote-syntax__0 _id30731_))
                                    (_g42700_
                                     (gx#core-bind-runtime!__0 _id30733_))
                                    (_body30736_
                                     (_xform-e29561_
                                      _L30692_
                                      _kont-id29946_
                                      _kont-box29947_
                                      _negation-id29948_)))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _id30733_ '())
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#call)
                           (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                       (cons _L30694_ '()))
                                 _L30693_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons '%#let-values
                                                       (cons (cons (cons (cons _L30696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons '%#call
                                             (cons '(%#ref ##vector-ref)
                                                   (cons (cons '%#ref
                                                               (cons _id30733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '(%#quote 0) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (cons _L30695_ '())
                                       (cons (cons '%#call
                                                   (cons '(%#ref ##vector-ref)
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _id30733_ '()))
                       (cons '(%#quote 1) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))
                     (cons _body30736_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                          (___kont4213342134_
                           (lambda (_L30574_ _L30575_)
                             (let ((_body30589_
                                    (_xform-e29561_
                                     _L30574_
                                     _kont-id29946_
                                     _kont-box29947_
                                     _negation-id29948_)))
                               (cons '%#let-values
                                     (cons _L30575_ (cons _body30589_ '()))))))
                          (___kont4213542136_
                           (lambda (_L30518_ _L30519_ _L30520_)
                             (let ((_lambda-expr30543_
                                    (_xform-loop-e29562_
                                     _L30519_
                                     _kont-id29946_
                                     _kont-box29947_
                                     _negation-id29948_)))
                               (cons '%#letrec-values
                                     (cons (cons (cons (cons _L30520_ '())
                                                       (cons _lambda-expr30543_
                                                             '()))
                                                 '())
                                           (cons _L30518_ '()))))))
                          (___kont4213742138_
                           (lambda (_L30180_ _L30181_ _L30182_)
                             (let* ((___stx4202942030_ _L30181_)
                                    (_g3021130254_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4202942030_))))
                               (let ((___kont4203142032_
                                      (lambda (_L30370_
                                               _L30371_
                                               _L30372_
                                               _L30373_)
                                        (let ((_kont30414_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3040630409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3040730411_)
                               (cons _g3040630409_ _g3040730411_))
                             '()
                             _L30182_))
                   (cons _L30372_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box29947_
                                             _kont30414_)
                                            (let* ((_kont-args30425_
                                                    (map (lambda (_id30416_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id30416_ '())))
                 (begin
                   '#!void
                   (foldr1 (lambda (_g3041730420_ _g3041830422_)
                             (cons _g3041730420_ _g3041830422_))
                           '()
                           _L30182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_body30427_
                                                    (cons '%#if
                                                          (cons _L30373_
                                                                (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#ref
                                                (cons _kont-id29946_ '()))
                                          _kont-args30425_))
                              (cons (cons (gx#datum->syntax__0 '#f '%#call)
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L30371_ '()))
                                                (cons (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)
                                                            (cons _L30370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g3042930432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3043030434_)
                             (cons _g3042930432_ _g3043030434_))
                           '()
                           _L30182_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _body30427_
                                                  (cons '%#let-values
                                                        (cons (map (lambda (_id30437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _arg30438_)
                             (cons (cons _id30437_ '()) (cons _arg30438_ '())))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3043930442_ _g3044030444_)
                                       (cons _g3043930442_ _g3044030444_))
                                     '()
                                     _L30182_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3044630449_ _g3044730451_)
                                       (cons _g3044630449_ _g3044730451_))
                                     '()
                                     _L30180_)))
                      (cons _body30427_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont4203342034_
                                      (lambda ()
                                        (let ((_kont30268_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3026030263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3026130265_)
                               (cons _g3026030263_ _g3026130265_))
                             '()
                             _L30182_))
                   (cons _L30181_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box29947_
                                             _kont30268_)
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kont-id29946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3026930272_ _g3027030274_)
                            (cons _g3026930272_ _g3027030274_))
                          '()
                          _L30180_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((___match4212442125_
                                        (lambda (_e3021730282_
                                                 _hd3021830285_
                                                 _tl3021930287_
                                                 _e3022030290_
                                                 _hd3022130293_
                                                 _tl3022230295_
                                                 _e3022330298_
                                                 _hd3022430301_
                                                 _tl3022530303_
                                                 _e3022630306_
                                                 _hd3022730309_
                                                 _tl3022830311_
                                                 _e3022930314_
                                                 _hd3023030317_
                                                 _tl3023130319_
                                                 _e3023230322_
                                                 _hd3023330325_
                                                 _tl3023430327_
                                                 _e3023530330_
                                                 _hd3023630333_
                                                 _tl3023730335_
                                                 _e3023830338_
                                                 _hd3023930341_
                                                 _tl3024030343_
                                                 _e3024130346_
                                                 _hd3024230349_
                                                 _tl3024330351_
                                                 _e3024430354_
                                                 _hd3024530357_
                                                 _tl3024630359_
                                                 _e3024730362_
                                                 _hd3024830365_
                                                 _tl3024930367_)
                                          (let ((_L30370_ _hd3024830365_)
                                                (_L30371_ _hd3023930341_)
                                                (_L30372_ _hd3022430301_)
                                                (_L30373_ _hd3022130293_))
                                            (if (gx#free-identifier=?
                                                 _L30371_
                                                 _negation-id29948_)
                                                (___kont4203142032_
                                                 _L30370_
                                                 _L30371_
                                                 _L30372_
                                                 _L30373_)
                                                (___kont4203342034_))))))
                                   (if (gx#stx-pair? ___stx4202942030_)
                                       (let ((_e3021730282_
                                              (gx#stx-e ___stx4202942030_)))
                                         (let ((_tl3021930287_
                                                (##cdr _e3021730282_))
                                               (_hd3021830285_
                                                (##car _e3021730282_)))
                                           (if (gx#identifier? _hd3021830285_)
                                               (if (gx#stx-eq?
                                                    '%#if
                                                    _hd3021830285_)
                                                   (if (gx#stx-pair?
                                                        _tl3021930287_)
                                                       (let ((_e3022030290_
                                                              (gx#stx-e
                                                               _tl3021930287_)))
                                                         (let ((_tl3022230295_
                                                                (##cdr _e3022030290_))
                                                               (_hd3022130293_
                                                                (##car _e3022030290_)))
                                                           (if (gx#stx-pair?
                                                                _tl3022230295_)
                                                               (let ((_e3022330298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3022230295_)))
                         (let ((_tl3022530303_ (##cdr _e3022330298_))
                               (_hd3022430301_ (##car _e3022330298_)))
                           (if (gx#stx-pair? _tl3022530303_)
                               (let ((_e3022630306_ (gx#stx-e _tl3022530303_)))
                                 (let ((_tl3022830311_ (##cdr _e3022630306_))
                                       (_hd3022730309_ (##car _e3022630306_)))
                                   (if (gx#stx-pair? _hd3022730309_)
                                       (let ((_e3022930314_
                                              (gx#stx-e _hd3022730309_)))
                                         (let ((_tl3023130319_
                                                (##cdr _e3022930314_))
                                               (_hd3023030317_
                                                (##car _e3022930314_)))
                                           (if (gx#identifier? _hd3023030317_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd3023030317_)
                                                   (if (gx#stx-pair?
                                                        _tl3023130319_)
                                                       (let ((_e3023230322_
                                                              (gx#stx-e
                                                               _tl3023130319_)))
                                                         (let ((_tl3023430327_
                                                                (##cdr _e3023230322_))
                                                               (_hd3023330325_
                                                                (##car _e3023230322_)))
                                                           (if (gx#stx-pair?
                                                                _hd3023330325_)
                                                               (let ((_e3023530330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd3023330325_)))
                         (let ((_tl3023730335_ (##cdr _e3023530330_))
                               (_hd3023630333_ (##car _e3023530330_)))
                           (if (gx#identifier? _hd3023630333_)
                               (if (gx#stx-eq? '%#ref _hd3023630333_)
                                   (if (gx#stx-pair? _tl3023730335_)
                                       (let ((_e3023830338_
                                              (gx#stx-e _tl3023730335_)))
                                         (let ((_tl3024030343_
                                                (##cdr _e3023830338_))
                                               (_hd3023930341_
                                                (##car _e3023830338_)))
                                           (if (gx#stx-null? _tl3024030343_)
                                               (if (gx#stx-pair?
                                                    _tl3023430327_)
                                                   (let ((_e3024130346_
                                                          (gx#stx-e
                                                           _tl3023430327_)))
                                                     (let ((_tl3024330351_
                                                            (##cdr _e3024130346_))
                                                           (_hd3024230349_
                                                            (##car _e3024130346_)))
                                                       (if (gx#stx-pair?
                                                            _hd3024230349_)
                                                           (let ((_e3024430354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3024230349_)))
                     (let ((_tl3024630359_ (##cdr _e3024430354_))
                           (_hd3024530357_ (##car _e3024430354_)))
                       (if (gx#identifier? _hd3024530357_)
                           (if (gx#stx-eq? '%#ref _hd3024530357_)
                               (if (gx#stx-pair? _tl3024630359_)
                                   (let ((_e3024730362_
                                          (gx#stx-e _tl3024630359_)))
                                     (let ((_tl3024930367_
                                            (##cdr _e3024730362_))
                                           (_hd3024830365_
                                            (##car _e3024730362_)))
                                       (if (gx#stx-null? _tl3024930367_)
                                           (if (gx#stx-null? _tl3024330351_)
                                               (if (gx#stx-null?
                                                    _tl3022830311_)
                                                   (___match4212442125_
                                                    _e3021730282_
                                                    _hd3021830285_
                                                    _tl3021930287_
                                                    _e3022030290_
                                                    _hd3022130293_
                                                    _tl3022230295_
                                                    _e3022330298_
                                                    _hd3022430301_
                                                    _tl3022530303_
                                                    _e3022630306_
                                                    _hd3022730309_
                                                    _tl3022830311_
                                                    _e3022930314_
                                                    _hd3023030317_
                                                    _tl3023130319_
                                                    _e3023230322_
                                                    _hd3023330325_
                                                    _tl3023430327_
                                                    _e3023530330_
                                                    _hd3023630333_
                                                    _tl3023730335_
                                                    _e3023830338_
                                                    _hd3023930341_
                                                    _tl3024030343_
                                                    _e3024130346_
                                                    _hd3024230349_
                                                    _tl3024330351_
                                                    _e3024430354_
                                                    _hd3024530357_
                                                    _tl3024630359_
                                                    _e3024730362_
                                                    _hd3024830365_
                                                    _tl3024930367_)
                                                   (___kont4203342034_))
                                               (___kont4203342034_))
                                           (___kont4203342034_))))
                                   (___kont4203342034_))
                               (___kont4203342034_))
                           (___kont4203342034_))))
                   (___kont4203342034_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4203342034_))
                                               (___kont4203342034_))))
                                       (___kont4203342034_))
                                   (___kont4203342034_))
                               (___kont4203342034_))))
                       (___kont4203342034_))))
               (___kont4203342034_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4203342034_))
                                               (___kont4203342034_))))
                                       (___kont4203342034_))))
                               (___kont4203342034_))))
                       (___kont4203342034_))))
               (___kont4203342034_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4203342034_))
                                               (___kont4203342034_))))
                                       (___kont4203342034_))))))))
                      (let* ((___match4238442385_
                              (lambda (_e3005030092_
                                       _hd3005130095_
                                       _tl3005230097_
                                       _e3005330100_
                                       _hd3005430103_
                                       _tl3005530105_
                                       _e3005630108_
                                       _hd3005730111_
                                       _tl3005830113_
                                       _e3005930116_
                                       _hd3006030119_
                                       _tl3006130121_
                                       ___splice4213942140_
                                       _target3006230124_
                                       _tl3006430126_)
                                (letrec ((_loop3006530129_
                                          (lambda (_hd3006330132_
                                                   _id3006930134_)
                                            (if (gx#stx-pair? _hd3006330132_)
                                                (let ((_e3006630137_
                                                       (gx#stx-e
                                                        _hd3006330132_)))
                                                  (let ((_lp-tl3006830142_
                                                         (##cdr _e3006630137_))
                                                        (_lp-hd3006730140_
                                                         (##car _e3006630137_)))
                                                    (_loop3006530129_
                                                     _lp-tl3006830142_
                                                     (cons _lp-hd3006730140_
                                                           _id3006930134_))))
                                                (let ((_id3007030145_
                                                       (reverse _id3006930134_)))
                                                  (if (gx#stx-pair?
                                                       _tl3006130121_)
                                                      (let ((_e3007130148_
                                                             (gx#stx-e
                                                              _tl3006130121_)))
                                                        (let ((_tl3007330153_
                                                               (##cdr _e3007130148_))
                                                              (_hd3007230151_
                                                               (##car _e3007130148_)))
                                                          (if (gx#stx-null?
                                                               _tl3007330153_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3005530105_)
                          (let ((___splice4214142142_
                                 (gx#syntax-split-splice _tl3005530105_ '0)))
                            (let ((_tl3007630158_
                                   (##vector-ref ___splice4214142142_ '1))
                                  (_target3007430156_
                                   (##vector-ref ___splice4214142142_ '0)))
                              (if (gx#stx-null? _tl3007630158_)
                                  (letrec ((_loop3007730161_
                                            (lambda (_hd3007530164_
                                                     _arg3008130166_)
                                              (if (gx#stx-pair? _hd3007530164_)
                                                  (let ((_e3007830169_
                                                         (gx#stx-e
                                                          _hd3007530164_)))
                                                    (let ((_lp-tl3008030174_
                                                           (##cdr _e3007830169_))
                                                          (_lp-hd3007930172_
                                                           (##car _e3007830169_)))
                                                      (_loop3007730161_
                                                       _lp-tl3008030174_
                                                       (cons _lp-hd3007930172_
                                                             _arg3008130166_))))
                                                  (let ((_arg3008230177_
                                                         (reverse _arg3008130166_)))
                                                    (___kont4213742138_
                                                     _arg3008230177_
                                                     _hd3007230151_
                                                     _id3007030145_))))))
                                    (_loop3007730161_ _target3007430156_ '()))
                                  (_g2995430087_))))
                          (_g2995430087_))
                      (_g2995430087_))))
              (_g2995430087_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop3006530129_ _target3006230124_ '()))))
                             (___match4226642267_
                              (lambda (_e2997630596_
                                       _hd2997730599_
                                       _tl2997830601_
                                       _e2997930604_
                                       _hd2998030607_
                                       _tl2998130609_
                                       _e2998230612_
                                       _hd2998330615_
                                       _tl2998430617_
                                       _e2998530620_
                                       _hd2998630623_
                                       _tl2998730625_
                                       _e2998830628_
                                       _hd2998930631_
                                       _tl2999030633_
                                       _e2999130636_
                                       _hd2999230639_
                                       _tl2999330641_
                                       _e2999430644_
                                       _hd2999530647_
                                       _tl2999630649_
                                       _e2999730652_
                                       _hd2999830655_
                                       _tl2999930657_
                                       _e3000030660_
                                       _hd3000130663_
                                       _tl3000230665_
                                       _e3000330668_
                                       _hd3000430671_
                                       _tl3000530673_
                                       _e3000630676_
                                       _hd3000730679_
                                       _tl3000830681_
                                       _e3000930684_
                                       _hd3001030687_
                                       _tl3001130689_)
                                (let ((_L30692_ _hd3001030687_)
                                      (_L30693_ _tl3000230665_)
                                      (_L30694_ _hd3000730679_)
                                      (_L30695_ _hd2999230639_)
                                      (_L30696_ _hd2998930631_))
                                  (if (gxc#runtime-identifier=?
                                       _L30694_
                                       'gx#syntax-split-splice)
                                      (___kont4213142132_
                                       _L30692_
                                       _L30693_
                                       _L30694_
                                       _L30695_
                                       _L30696_)
                                      (___kont4213342134_
                                       _hd3001030687_
                                       _hd2998030607_))))))
                        (if (gx#stx-pair? ___stx4212742128_)
                            (let ((_e2995930744_ (gx#stx-e ___stx4212742128_)))
                              (let ((_tl2996130749_ (##cdr _e2995930744_))
                                    (_hd2996030747_ (##car _e2995930744_)))
                                (if (gx#identifier? _hd2996030747_)
                                    (if (gx#stx-eq? '%#if _hd2996030747_)
                                        (if (gx#stx-pair? _tl2996130749_)
                                            (let ((_e2996230752_
                                                   (gx#stx-e _tl2996130749_)))
                                              (let ((_tl2996430757_
                                                     (##cdr _e2996230752_))
                                                    (_hd2996330755_
                                                     (##car _e2996230752_)))
                                                (if (gx#stx-pair?
                                                     _tl2996430757_)
                                                    (let ((_e2996530760_
                                                           (gx#stx-e
                                                            _tl2996430757_)))
                                                      (let ((_tl2996730765_
                                                             (##cdr _e2996530760_))
                                                            (_hd2996630763_
                                                             (##car _e2996530760_)))
                                                        (if (gx#stx-pair?
                                                             _tl2996730765_)
                                                            (let ((_e2996830768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2996730765_)))
                      (let ((_tl2997030773_ (##cdr _e2996830768_))
                            (_hd2996930771_ (##car _e2996830768_)))
                        (if (gx#stx-null? _tl2997030773_)
                            (___kont4212942130_
                             _hd2996930771_
                             _hd2996630763_
                             _hd2996330755_)
                            (_g2995430087_))))
                    (_g2995430087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2995430087_))))
                                            (_g2995430087_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd2996030747_)
                                            (if (gx#stx-pair? _tl2996130749_)
                                                (let ((_e2997930604_
                                                       (gx#stx-e
                                                        _tl2996130749_)))
                                                  (let ((_tl2998130609_
                                                         (##cdr _e2997930604_))
                                                        (_hd2998030607_
                                                         (##car _e2997930604_)))
                                                    (if (gx#stx-pair?
                                                         _hd2998030607_)
                                                        (let ((_e2998230612_
                                                               (gx#stx-e
                                                                _hd2998030607_)))
                                                          (let ((_tl2998430617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2998230612_))
                        (_hd2998330615_ (##car _e2998230612_)))
                    (if (gx#stx-pair? _hd2998330615_)
                        (let ((_e2998530620_ (gx#stx-e _hd2998330615_)))
                          (let ((_tl2998730625_ (##cdr _e2998530620_))
                                (_hd2998630623_ (##car _e2998530620_)))
                            (if (gx#stx-pair? _hd2998630623_)
                                (let ((_e2998830628_
                                       (gx#stx-e _hd2998630623_)))
                                  (let ((_tl2999030633_ (##cdr _e2998830628_))
                                        (_hd2998930631_ (##car _e2998830628_)))
                                    (if (gx#stx-pair? _tl2999030633_)
                                        (let ((_e2999130636_
                                               (gx#stx-e _tl2999030633_)))
                                          (let ((_tl2999330641_
                                                 (##cdr _e2999130636_))
                                                (_hd2999230639_
                                                 (##car _e2999130636_)))
                                            (if (gx#stx-null? _tl2999330641_)
                                                (if (gx#stx-pair?
                                                     _tl2998730625_)
                                                    (let ((_e2999430644_
                                                           (gx#stx-e
                                                            _tl2998730625_)))
                                                      (let ((_tl2999630649_
                                                             (##cdr _e2999430644_))
                                                            (_hd2999530647_
                                                             (##car _e2999430644_)))
                                                        (if (gx#stx-pair?
                                                             _hd2999530647_)
                                                            (let ((_e2999730652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2999530647_)))
                      (let ((_tl2999930657_ (##cdr _e2999730652_))
                            (_hd2999830655_ (##car _e2999730652_)))
                        (if (gx#identifier? _hd2999830655_)
                            (if (gx#stx-eq? '%#call _hd2999830655_)
                                (if (gx#stx-pair? _tl2999930657_)
                                    (let ((_e3000030660_
                                           (gx#stx-e _tl2999930657_)))
                                      (let ((_tl3000230665_
                                             (##cdr _e3000030660_))
                                            (_hd3000130663_
                                             (##car _e3000030660_)))
                                        (if (gx#stx-pair? _hd3000130663_)
                                            (let ((_e3000330668_
                                                   (gx#stx-e _hd3000130663_)))
                                              (let ((_tl3000530673_
                                                     (##cdr _e3000330668_))
                                                    (_hd3000430671_
                                                     (##car _e3000330668_)))
                                                (if (gx#identifier?
                                                     _hd3000430671_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3000430671_)
                                                        (if (gx#stx-pair?
                                                             _tl3000530673_)
                                                            (let ((_e3000630676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3000530673_)))
                      (let ((_tl3000830681_ (##cdr _e3000630676_))
                            (_hd3000730679_ (##car _e3000630676_)))
                        (if (gx#stx-null? _tl3000830681_)
                            (if (gx#stx-null? _tl2999630649_)
                                (if (gx#stx-null? _tl2998430617_)
                                    (if (gx#stx-pair? _tl2998130609_)
                                        (let ((_e3000930684_
                                               (gx#stx-e _tl2998130609_)))
                                          (let ((_tl3001130689_
                                                 (##cdr _e3000930684_))
                                                (_hd3001030687_
                                                 (##car _e3000930684_)))
                                            (if (gx#stx-null? _tl3001130689_)
                                                (___match4226642267_
                                                 _e2995930744_
                                                 _hd2996030747_
                                                 _tl2996130749_
                                                 _e2997930604_
                                                 _hd2998030607_
                                                 _tl2998130609_
                                                 _e2998230612_
                                                 _hd2998330615_
                                                 _tl2998430617_
                                                 _e2998530620_
                                                 _hd2998630623_
                                                 _tl2998730625_
                                                 _e2998830628_
                                                 _hd2998930631_
                                                 _tl2999030633_
                                                 _e2999130636_
                                                 _hd2999230639_
                                                 _tl2999330641_
                                                 _e2999430644_
                                                 _hd2999530647_
                                                 _tl2999630649_
                                                 _e2999730652_
                                                 _hd2999830655_
                                                 _tl2999930657_
                                                 _e3000030660_
                                                 _hd3000130663_
                                                 _tl3000230665_
                                                 _e3000330668_
                                                 _hd3000430671_
                                                 _tl3000530673_
                                                 _e3000630676_
                                                 _hd3000730679_
                                                 _tl3000830681_
                                                 _e3000930684_
                                                 _hd3001030687_
                                                 _tl3001130689_)
                                                (_g2995430087_))))
                                        (_g2995430087_))
                                    (if (gx#stx-pair? _tl2998130609_)
                                        (let ((_e3002030566_
                                               (gx#stx-e _tl2998130609_)))
                                          (let ((_tl3002230571_
                                                 (##cdr _e3002030566_))
                                                (_hd3002130569_
                                                 (##car _e3002030566_)))
                                            (if (gx#stx-null? _tl3002230571_)
                                                (___kont4213342134_
                                                 _hd3002130569_
                                                 _hd2998030607_)
                                                (_g2995430087_))))
                                        (_g2995430087_)))
                                (if (gx#stx-pair? _tl2998130609_)
                                    (let ((_e3002030566_
                                           (gx#stx-e _tl2998130609_)))
                                      (let ((_tl3002230571_
                                             (##cdr _e3002030566_))
                                            (_hd3002130569_
                                             (##car _e3002030566_)))
                                        (if (gx#stx-null? _tl3002230571_)
                                            (___kont4213342134_
                                             _hd3002130569_
                                             _hd2998030607_)
                                            (_g2995430087_))))
                                    (_g2995430087_)))
                            (if (gx#stx-pair? _tl2998130609_)
                                (let ((_e3002030566_
                                       (gx#stx-e _tl2998130609_)))
                                  (let ((_tl3002230571_ (##cdr _e3002030566_))
                                        (_hd3002130569_ (##car _e3002030566_)))
                                    (if (gx#stx-null? _tl3002230571_)
                                        (___kont4213342134_
                                         _hd3002130569_
                                         _hd2998030607_)
                                        (_g2995430087_))))
                                (_g2995430087_)))))
                    (if (gx#stx-pair? _tl2998130609_)
                        (let ((_e3002030566_ (gx#stx-e _tl2998130609_)))
                          (let ((_tl3002230571_ (##cdr _e3002030566_))
                                (_hd3002130569_ (##car _e3002030566_)))
                            (if (gx#stx-null? _tl3002230571_)
                                (___kont4213342134_
                                 _hd3002130569_
                                 _hd2998030607_)
                                (_g2995430087_))))
                        (_g2995430087_)))
                (if (gx#stx-pair? _tl2998130609_)
                    (let ((_e3002030566_ (gx#stx-e _tl2998130609_)))
                      (let ((_tl3002230571_ (##cdr _e3002030566_))
                            (_hd3002130569_ (##car _e3002030566_)))
                        (if (gx#stx-null? _tl3002230571_)
                            (___kont4213342134_ _hd3002130569_ _hd2998030607_)
                            (_g2995430087_))))
                    (_g2995430087_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl2998130609_)
                                                        (let ((_e3002030566_
                                                               (gx#stx-e
                                                                _tl2998130609_)))
                                                          (let ((_tl3002230571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3002030566_))
                        (_hd3002130569_ (##car _e3002030566_)))
                    (if (gx#stx-null? _tl3002230571_)
                        (___kont4213342134_ _hd3002130569_ _hd2998030607_)
                        (_g2995430087_))))
                (_g2995430087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2998130609_)
                                                (let ((_e3002030566_
                                                       (gx#stx-e
                                                        _tl2998130609_)))
                                                  (let ((_tl3002230571_
                                                         (##cdr _e3002030566_))
                                                        (_hd3002130569_
                                                         (##car _e3002030566_)))
                                                    (if (gx#stx-null?
                                                         _tl3002230571_)
                                                        (___kont4213342134_
                                                         _hd3002130569_
                                                         _hd2998030607_)
                                                        (_g2995430087_))))
                                                (_g2995430087_)))))
                                    (if (gx#stx-pair? _tl2998130609_)
                                        (let ((_e3002030566_
                                               (gx#stx-e _tl2998130609_)))
                                          (let ((_tl3002230571_
                                                 (##cdr _e3002030566_))
                                                (_hd3002130569_
                                                 (##car _e3002030566_)))
                                            (if (gx#stx-null? _tl3002230571_)
                                                (___kont4213342134_
                                                 _hd3002130569_
                                                 _hd2998030607_)
                                                (_g2995430087_))))
                                        (_g2995430087_)))
                                (if (gx#stx-pair? _tl2998130609_)
                                    (let ((_e3002030566_
                                           (gx#stx-e _tl2998130609_)))
                                      (let ((_tl3002230571_
                                             (##cdr _e3002030566_))
                                            (_hd3002130569_
                                             (##car _e3002030566_)))
                                        (if (gx#stx-null? _tl3002230571_)
                                            (___kont4213342134_
                                             _hd3002130569_
                                             _hd2998030607_)
                                            (_g2995430087_))))
                                    (_g2995430087_)))
                            (if (gx#stx-pair? _tl2998130609_)
                                (let ((_e3002030566_
                                       (gx#stx-e _tl2998130609_)))
                                  (let ((_tl3002230571_ (##cdr _e3002030566_))
                                        (_hd3002130569_ (##car _e3002030566_)))
                                    (if (gx#stx-null? _tl3002230571_)
                                        (___kont4213342134_
                                         _hd3002130569_
                                         _hd2998030607_)
                                        (_g2995430087_))))
                                (_g2995430087_)))))
                    (if (gx#stx-pair? _tl2998130609_)
                        (let ((_e3002030566_ (gx#stx-e _tl2998130609_)))
                          (let ((_tl3002230571_ (##cdr _e3002030566_))
                                (_hd3002130569_ (##car _e3002030566_)))
                            (if (gx#stx-null? _tl3002230571_)
                                (___kont4213342134_
                                 _hd3002130569_
                                 _hd2998030607_)
                                (_g2995430087_))))
                        (_g2995430087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl2998130609_)
                                                        (let ((_e3002030566_
                                                               (gx#stx-e
                                                                _tl2998130609_)))
                                                          (let ((_tl3002230571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3002030566_))
                        (_hd3002130569_ (##car _e3002030566_)))
                    (if (gx#stx-null? _tl3002230571_)
                        (___kont4213342134_ _hd3002130569_ _hd2998030607_)
                        (_g2995430087_))))
                (_g2995430087_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _tl2998130609_)
                                                    (let ((_e3002030566_
                                                           (gx#stx-e
                                                            _tl2998130609_)))
                                                      (let ((_tl3002230571_
                                                             (##cdr _e3002030566_))
                                                            (_hd3002130569_
                                                             (##car _e3002030566_)))
                                                        (if (gx#stx-null?
                                                             _tl3002230571_)
                                                            (___kont4213342134_
                                                             _hd3002130569_
                                                             _hd2998030607_)
                                                            (_g2995430087_))))
                                                    (_g2995430087_)))))
                                        (if (gx#stx-pair? _tl2998130609_)
                                            (let ((_e3002030566_
                                                   (gx#stx-e _tl2998130609_)))
                                              (let ((_tl3002230571_
                                                     (##cdr _e3002030566_))
                                                    (_hd3002130569_
                                                     (##car _e3002030566_)))
                                                (if (gx#stx-null?
                                                     _tl3002230571_)
                                                    (___kont4213342134_
                                                     _hd3002130569_
                                                     _hd2998030607_)
                                                    (_g2995430087_))))
                                            (_g2995430087_)))))
                                (if (gx#stx-pair? _tl2998130609_)
                                    (let ((_e3002030566_
                                           (gx#stx-e _tl2998130609_)))
                                      (let ((_tl3002230571_
                                             (##cdr _e3002030566_))
                                            (_hd3002130569_
                                             (##car _e3002030566_)))
                                        (if (gx#stx-null? _tl3002230571_)
                                            (___kont4213342134_
                                             _hd3002130569_
                                             _hd2998030607_)
                                            (_g2995430087_))))
                                    (_g2995430087_)))))
                        (if (gx#stx-pair? _tl2998130609_)
                            (let ((_e3002030566_ (gx#stx-e _tl2998130609_)))
                              (let ((_tl3002230571_ (##cdr _e3002030566_))
                                    (_hd3002130569_ (##car _e3002030566_)))
                                (if (gx#stx-null? _tl3002230571_)
                                    (___kont4213342134_
                                     _hd3002130569_
                                     _hd2998030607_)
                                    (_g2995430087_))))
                            (_g2995430087_)))))
                (if (gx#stx-pair? _tl2998130609_)
                    (let ((_e3002030566_ (gx#stx-e _tl2998130609_)))
                      (let ((_tl3002230571_ (##cdr _e3002030566_))
                            (_hd3002130569_ (##car _e3002030566_)))
                        (if (gx#stx-null? _tl3002230571_)
                            (___kont4213342134_ _hd3002130569_ _hd2998030607_)
                            (_g2995430087_))))
                    (_g2995430087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2995430087_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd2996030747_)
                                                (if (gx#stx-pair?
                                                     _tl2996130749_)
                                                    (let ((_e3002930470_
                                                           (gx#stx-e
                                                            _tl2996130749_)))
                                                      (let ((_tl3003130475_
                                                             (##cdr _e3002930470_))
                                                            (_hd3003030473_
                                                             (##car _e3002930470_)))
                                                        (if (gx#stx-pair?
                                                             _hd3003030473_)
                                                            (let ((_e3003230478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3003030473_)))
                      (let ((_tl3003430483_ (##cdr _e3003230478_))
                            (_hd3003330481_ (##car _e3003230478_)))
                        (if (gx#stx-pair? _hd3003330481_)
                            (let ((_e3003530486_ (gx#stx-e _hd3003330481_)))
                              (let ((_tl3003730491_ (##cdr _e3003530486_))
                                    (_hd3003630489_ (##car _e3003530486_)))
                                (if (gx#stx-pair? _hd3003630489_)
                                    (let ((_e3003830494_
                                           (gx#stx-e _hd3003630489_)))
                                      (let ((_tl3004030499_
                                             (##cdr _e3003830494_))
                                            (_hd3003930497_
                                             (##car _e3003830494_)))
                                        (if (gx#stx-null? _tl3004030499_)
                                            (if (gx#stx-pair? _tl3003730491_)
                                                (let ((_e3004130502_
                                                       (gx#stx-e
                                                        _tl3003730491_)))
                                                  (let ((_tl3004330507_
                                                         (##cdr _e3004130502_))
                                                        (_hd3004230505_
                                                         (##car _e3004130502_)))
                                                    (if (gx#stx-null?
                                                         _tl3004330507_)
                                                        (if (gx#stx-null?
                                                             _tl3003430483_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3003130475_)
                        (let ((_e3004430510_ (gx#stx-e _tl3003130475_)))
                          (let ((_tl3004630515_ (##cdr _e3004430510_))
                                (_hd3004530513_ (##car _e3004430510_)))
                            (if (gx#stx-null? _tl3004630515_)
                                (___kont4213542136_
                                 _hd3004530513_
                                 _hd3004230505_
                                 _hd3003930497_)
                                (_g2995430087_))))
                        (_g2995430087_))
                    (_g2995430087_))
                (_g2995430087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2995430087_))
                                            (_g2995430087_))))
                                    (_g2995430087_))))
                            (_g2995430087_))))
                    (_g2995430087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2995430087_))
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2996030747_)
                                                    (if (gx#stx-pair?
                                                         _tl2996130749_)
                                                        (let ((_e3005330100_
                                                               (gx#stx-e
                                                                _tl2996130749_)))
                                                          (let ((_tl3005530105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3005330100_))
                        (_hd3005430103_ (##car _e3005330100_)))
                    (if (gx#stx-pair? _hd3005430103_)
                        (let ((_e3005630108_ (gx#stx-e _hd3005430103_)))
                          (let ((_tl3005830113_ (##cdr _e3005630108_))
                                (_hd3005730111_ (##car _e3005630108_)))
                            (if (gx#identifier? _hd3005730111_)
                                (if (gx#stx-eq? '%#lambda _hd3005730111_)
                                    (if (gx#stx-pair? _tl3005830113_)
                                        (let ((_e3005930116_
                                               (gx#stx-e _tl3005830113_)))
                                          (let ((_tl3006130121_
                                                 (##cdr _e3005930116_))
                                                (_hd3006030119_
                                                 (##car _e3005930116_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3006030119_)
                                                (let ((___splice4213942140_
                                                       (gx#syntax-split-splice
                                                        _hd3006030119_
                                                        '0)))
                                                  (let ((_tl3006430126_
                                                         (##vector-ref
                                                          ___splice4213942140_
                                                          '1))
                                                        (_target3006230124_
                                                         (##vector-ref
                                                          ___splice4213942140_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3006430126_)
                                                        (___match4238442385_
                                                         _e2995930744_
                                                         _hd2996030747_
                                                         _tl2996130749_
                                                         _e3005330100_
                                                         _hd3005430103_
                                                         _tl3005530105_
                                                         _e3005630108_
                                                         _hd3005730111_
                                                         _tl3005830113_
                                                         _e3005930116_
                                                         _hd3006030119_
                                                         _tl3006130121_
                                                         ___splice4213942140_
                                                         _target3006230124_
                                                         _tl3006430126_)
                                                        (_g2995430087_))))
                                                (_g2995430087_))))
                                        (_g2995430087_))
                                    (_g2995430087_))
                                (_g2995430087_))))
                        (_g2995430087_))))
                (_g2995430087_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2995430087_)))))
                                    (_g2995430087_))))
                            (_g2995430087_)))))))
               (_xform-loop-e29562_
                (lambda (_expr29771_
                         _kont-id29772_
                         _kont-box29773_
                         _negation-id29774_)
                  (let* ((_g2977629816_
                          (lambda (_g2977729813_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2977729813_)))
                         (_g2977529942_
                          (lambda (_g2977729819_)
                            (if (gx#stx-pair? _g2977729819_)
                                (let ((_e2978229821_ (gx#stx-e _g2977729819_)))
                                  (let ((_hd2978329824_ (##car _e2978229821_))
                                        (_tl2978429826_ (##cdr _e2978229821_)))
                                    (if (gx#identifier? _hd2978329824_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2978329824_)
                                            (if (gx#stx-pair? _tl2978429826_)
                                                (let ((_e2978529829_
                                                       (gx#stx-e
                                                        _tl2978429826_)))
                                                  (let ((_hd2978629832_
                                                         (##car _e2978529829_))
                                                        (_tl2978729834_
                                                         (##cdr _e2978529829_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd2978629832_)
                                                        (let ((_g42701_
                                                               (gx#syntax-split-splice
                                                                _hd2978629832_
                                                                '0)))
                                                          (begin
                                                            (let ((_g42702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g42701_)
                               (##vector-length _g42701_)
                               1)))
                      (if (not (##fx= _g42702_ 2))
                          (error "Context expects 2 values" _g42702_)))
                    (let ((_target2978829837_ (##vector-ref _g42701_ 0))
                          (_tl2979029839_ (##vector-ref _g42701_ 1)))
                      (if (gx#stx-null? _tl2979029839_)
                          (letrec ((_loop2979129842_
                                    (lambda (_hd2978929845_ _id2979529847_)
                                      (if (gx#stx-pair? _hd2978929845_)
                                          (let ((_e2979229850_
                                                 (gx#stx-e _hd2978929845_)))
                                            (let ((_lp-hd2979329853_
                                                   (##car _e2979229850_))
                                                  (_lp-tl2979429855_
                                                   (##cdr _e2979229850_)))
                                              (_loop2979129842_
                                               _lp-tl2979429855_
                                               (cons _lp-hd2979329853_
                                                     _id2979529847_))))
                                          (let ((_id2979629858_
                                                 (reverse _id2979529847_)))
                                            (if (gx#stx-pair? _tl2978729834_)
                                                (let ((_e2979729861_
                                                       (gx#stx-e
                                                        _tl2978729834_)))
                                                  (let ((_hd2979829864_
                                                         (##car _e2979729861_))
                                                        (_tl2979929866_
                                                         (##cdr _e2979729861_)))
                                                    (if (gx#stx-pair?
                                                         _hd2979829864_)
                                                        (let ((_e2980029869_
                                                               (gx#stx-e
                                                                _hd2979829864_)))
                                                          (let ((_hd2980129872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2980029869_))
                        (_tl2980229874_ (##cdr _e2980029869_)))
                    (if (gx#identifier? _hd2980129872_)
                        (if (gx#stx-eq? '%#if _hd2980129872_)
                            (if (gx#stx-pair? _tl2980229874_)
                                (let ((_e2980329877_
                                       (gx#stx-e _tl2980229874_)))
                                  (let ((_hd2980429880_ (##car _e2980329877_))
                                        (_tl2980529882_ (##cdr _e2980329877_)))
                                    (if (gx#stx-pair? _tl2980529882_)
                                        (let ((_e2980629885_
                                               (gx#stx-e _tl2980529882_)))
                                          (let ((_hd2980729888_
                                                 (##car _e2980629885_))
                                                (_tl2980829890_
                                                 (##cdr _e2980629885_)))
                                            (if (gx#stx-pair? _tl2980829890_)
                                                (let ((_e2980929893_
                                                       (gx#stx-e
                                                        _tl2980829890_)))
                                                  (let ((_hd2981029896_
                                                         (##car _e2980929893_))
                                                        (_tl2981129898_
                                                         (##cdr _e2980929893_)))
                                                    (if (gx#stx-null?
                                                         _tl2981129898_)
                                                        (if (gx#stx-null?
                                                             _tl2979929866_)
                                                            ((lambda (_L29901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L29902_
                              _L29903_
                              _L29904_)
                       (let ((_E29933_
                              (_xform-e29561_
                               _L29901_
                               _kont-id29772_
                               _kont-box29773_
                               _negation-id29774_)))
                         (cons '%#lambda
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g2993429937_
                                                        _g2993529939_)
                                                 (cons _g2993429937_
                                                       _g2993529939_))
                                               '()
                                               _L29904_))
                                     (cons (cons '%#if
                                                 (cons _L29903_
                                                       (cons _L29902_
                                                             (cons _E29933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _hd2981029896_
                     _hd2980729888_
                     _hd2980429880_
                     _id2979629858_)
                    (_g2977629816_ _g2977729819_))
                (_g2977629816_ _g2977729819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2977629816_
                                                 _g2977729819_))))
                                        (_g2977629816_ _g2977729819_))))
                                (_g2977629816_ _g2977729819_))
                            (_g2977629816_ _g2977729819_))
                        (_g2977629816_ _g2977729819_))))
                (_g2977629816_ _g2977729819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2977629816_
                                                 _g2977729819_)))))))
                            (_loop2979129842_ _target2978829837_ '()))
                          (_g2977629816_ _g2977729819_)))))
                (_g2977629816_ _g2977729819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2977629816_ _g2977729819_))
                                            (_g2977629816_ _g2977729819_))
                                        (_g2977629816_ _g2977729819_))))
                                (_g2977629816_ _g2977729819_)))))
                    (_g2977529942_ _expr29771_))))
               (_clause-e29563_
                (lambda (_clause-lambda29641_ _kont-id29642_ _rest29643_)
                  (letrec* ((_kont-box29645_ (box '#f)))
                    (let* ((_negation-id29685_
                            (let* ((_rest2964629656_ _rest29643_)
                                   (_else2964829664_
                                    (lambda () _negation-id29559_))
                                   (_K2965029670_
                                    (lambda (_clause29667_ _clause-id29668_)
                                      _clause-id29668_)))
                              (if (##pair? _rest2964629656_)
                                  (let ((_hd2965129673_
                                         (##car _rest2964629656_)))
                                    (if (##pair? _hd2965129673_)
                                        (let ((_hd2965329676_
                                               (##car _hd2965129673_))
                                              (_tl2965429678_
                                               (##cdr _hd2965129673_)))
                                          (let* ((_clause-id29681_
                                                  _hd2965329676_)
                                                 (_clause29683_
                                                  _tl2965429678_))
                                            (_K2965029670_
                                             _clause29683_
                                             _clause-id29681_)))
                                        (_else2964829664_)))
                                  (_else2964829664_))))
                           (_g2968729707_
                            (lambda (_g2968829704_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2968829704_)))
                           (_g2968629768_
                            (lambda (_g2968829710_)
                              (if (gx#stx-pair? _g2968829710_)
                                  (let ((_e2969129712_
                                         (gx#stx-e _g2968829710_)))
                                    (let ((_hd2969229715_
                                           (##car _e2969129712_))
                                          (_tl2969329717_
                                           (##cdr _e2969129712_)))
                                      (if (gx#identifier? _hd2969229715_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd2969229715_)
                                              (if (gx#stx-pair? _tl2969329717_)
                                                  (let ((_e2969429720_
                                                         (gx#stx-e
                                                          _tl2969329717_)))
                                                    (let ((_hd2969529723_
                                                           (##car _e2969429720_))
                                                          (_tl2969629725_
                                                           (##cdr _e2969429720_)))
                                                      (if (gx#stx-pair?
                                                           _hd2969529723_)
                                                          (let ((_e2969729728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2969529723_)))
                    (let ((_hd2969829731_ (##car _e2969729728_))
                          (_tl2969929733_ (##cdr _e2969729728_)))
                      (if (gx#stx-null? _tl2969929733_)
                          (if (gx#stx-pair? _tl2969629725_)
                              (let ((_e2970029736_ (gx#stx-e _tl2969629725_)))
                                (let ((_hd2970129739_ (##car _e2970029736_))
                                      (_tl2970229741_ (##cdr _e2970029736_)))
                                  (if (gx#stx-null? _tl2970229741_)
                                      ((lambda (_L29744_ _L29745_)
                                         (let ((_body29766_
                                                (_xform-e29561_
                                                 _L29744_
                                                 _kont-id29642_
                                                 _kont-box29645_
                                                 _negation-id29685_)))
                                           (values (cons '%#lambda
                                                         (cons (cons _L29745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _body29766_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (unbox _kont-box29645_))))
                                       _hd2970129739_
                                       _hd2969829731_)
                                      (_g2968729707_ _g2968829710_))))
                              (_g2968729707_ _g2968829710_))
                          (_g2968729707_ _g2968829710_))))
                  (_g2968729707_ _g2968829710_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2968729707_
                                                   _g2968829710_))
                                              (_g2968729707_ _g2968829710_))
                                          (_g2968729707_ _g2968829710_))))
                                  (_g2968729707_ _g2968829710_)))))
                      (_g2968629768_ _clause-lambda29641_))))))
        (let _lp29565_ ((_rest29567_ _clauses29558_)
                        (_clauses29568_ '())
                        (_konts29569_ '()))
          (let* ((_rest2957029578_ _rest29567_)
                 (_else2957229586_
                  (lambda ()
                    (values (reverse _clauses29568_) (reverse _konts29569_))))
                 (_K2957429629_
                  (lambda (_rest29589_ _clause29590_)
                    (let* ((_clause2959129598_ _clause29590_)
                           (_E2959329602_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause2959129598_)))
                           (_K2959429617_
                            (lambda (_clause-lambda29605_ _clause-id29606_)
                              (let* ((_id29608_ (make-symbol (gensym '__kont)))
                                     (_id29610_
                                      (gx#core-quote-syntax__0 _id29608_))
                                     (_g42703_
                                      (gx#core-bind-runtime!__0 _id29610_))
                                     (_g42704_
                                      (_clause-e29563_
                                       _clause-lambda29605_
                                       _id29610_
                                       _rest29589_)))
                                (begin
                                  (let ((_g42705_
                                         (if (##values? _g42704_)
                                             (##vector-length _g42704_)
                                             1)))
                                    (if (not (##fx= _g42705_ 2))
                                        (error "Context expects 2 values"
                                               _g42705_)))
                                  (let ((_clause-lambda29613_
                                         (##vector-ref _g42704_ 0))
                                        (_kont29614_
                                         (##vector-ref _g42704_ 1)))
                                    (let ()
                                      (_lp29565_
                                       _rest29589_
                                       (cons (cons _clause-id29606_
                                                   _clause-lambda29613_)
                                             _clauses29568_)
                                       (cons (cons _id29610_ _kont29614_)
                                             _konts29569_)))))))))
                      (if (##pair? _clause2959129598_)
                          (let ((_hd2959529620_ (##car _clause2959129598_))
                                (_tl2959629622_ (##cdr _clause2959129598_)))
                            (let* ((_clause-id29625_ _hd2959529620_)
                                   (_clause-lambda29627_ _tl2959629622_))
                              (_K2959429617_
                               _clause-lambda29627_
                               _clause-id29625_)))
                          (_E2959329602_))))))
            (if (##pair? _rest2957029578_)
                (let ((_hd2957529632_ (##car _rest2957029578_))
                      (_tl2957629634_ (##cdr _rest2957029578_)))
                  (let* ((_clause29637_ _hd2957529632_)
                         (_rest29639_ _tl2957629634_))
                    (_K2957429629_ _rest29639_ _clause29637_)))
                (_else2957229586_)))))))
  (define gxc#optimize-syntax-case-closure
    (lambda (_clause28902_ _negation28903_ _target28904_)
      (letrec ((_closure-e28906_
                (lambda (_expr29023_)
                  (let* ((___stx4238742388_ _expr29023_)
                         (_g2903029145_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4238742388_))))
                    (let ((___kont4238942390_
                           (lambda (_L29536_ _L29537_ _L29538_)
                             (cons '%#if
                                   (cons _L29538_
                                         (cons (_closure-e28906_ _L29537_)
                                               (cons (_closure-e28906_
                                                      _L29536_)
                                                     '()))))))
                          (___kont4239142392_
                           (lambda (_L29484_ _L29485_)
                             (cons '%#let-values
                                   (cons _L29485_
                                         (cons (_closure-e28906_ _L29484_)
                                               '())))))
                          (___kont4239342394_
                           (lambda (_L29430_ _L29431_ _L29432_)
                             (cons '%#letrec-values
                                   (cons (cons (cons (cons _L29432_ '())
                                                     (cons (_closure-e28906_
                                                            _L29431_)
                                                           '()))
                                               '())
                                         (cons _L29430_ '())))))
                          (___kont4239542396_
                           (lambda (_L29343_ _L29344_)
                             (cons '%#lambda
                                   (cons (begin
                                           '#!void
                                           (foldr1 (lambda (_g2936129364_
                                                            _g2936229366_)
                                                     (cons _g2936129364_
                                                           _g2936229366_))
                                                   '()
                                                   _L29344_))
                                         (cons (_closure-e28906_ _L29343_)
                                               '())))))
                          (___kont4239942400_
                           (lambda (_L29273_)
                             (cons '%#call
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _L29273_ '()))
                                         '()))))
                          (___kont4240142402_
                           (lambda (_L29206_ _L29207_) _expr29023_)))
                      (let* ((___match4262042621_
                              (lambda (_e2912029150_
                                       _hd2912129153_
                                       _tl2912229155_
                                       _e2912329158_
                                       _hd2912429161_
                                       _tl2912529163_
                                       _e2912629166_
                                       _hd2912729169_
                                       _tl2912829171_
                                       _e2912929174_
                                       _hd2913029177_
                                       _tl2913129179_
                                       ___splice4240342404_
                                       _target2913229182_
                                       _tl2913429184_)
                                (letrec ((_loop2913529187_
                                          (lambda (_hd2913329190_
                                                   _arg2913929192_)
                                            (if (gx#stx-pair? _hd2913329190_)
                                                (let ((_e2913629195_
                                                       (gx#stx-e
                                                        _hd2913329190_)))
                                                  (let ((_lp-tl2913829200_
                                                         (##cdr _e2913629195_))
                                                        (_lp-hd2913729198_
                                                         (##car _e2913629195_)))
                                                    (_loop2913529187_
                                                     _lp-tl2913829200_
                                                     (cons _lp-hd2913729198_
                                                           _arg2913929192_))))
                                                (let ((_arg2914029203_
                                                       (reverse _arg2913929192_)))
                                                  (___kont4240142402_
                                                   _arg2914029203_
                                                   _hd2913029177_))))))
                                  (_loop2913529187_ _target2913229182_ '()))))
                             (___match4257842579_
                              (lambda (_e2910329233_
                                       _hd2910429236_
                                       _tl2910529238_
                                       _e2910629241_
                                       _hd2910729244_
                                       _tl2910829246_
                                       _e2910929249_
                                       _hd2911029252_
                                       _tl2911129254_
                                       _e2911229257_
                                       _hd2911329260_
                                       _tl2911429262_
                                       _e2911529265_
                                       _hd2911629268_
                                       _tl2911729270_)
                                (let ((_L29273_ _hd2911329260_))
                                  (if (gx#free-identifier=?
                                       _L29273_
                                       _negation28903_)
                                      (___kont4239942400_ _L29273_)
                                      (if (gx#stx-pair/null? _tl2910829246_)
                                          (let ((___splice4240342404_
                                                 (gx#syntax-split-splice
                                                  _tl2910829246_
                                                  '0)))
                                            (let ((_tl2913429184_
                                                   (##vector-ref
                                                    ___splice4240342404_
                                                    '1))
                                                  (_target2913229182_
                                                   (##vector-ref
                                                    ___splice4240342404_
                                                    '0)))
                                              (if (gx#stx-null? _tl2913429184_)
                                                  (___match4262042621_
                                                   _e2910329233_
                                                   _hd2910429236_
                                                   _tl2910529238_
                                                   _e2910629241_
                                                   _hd2910729244_
                                                   _tl2910829246_
                                                   _e2910929249_
                                                   _hd2911029252_
                                                   _tl2911129254_
                                                   _e2911229257_
                                                   _hd2911329260_
                                                   _tl2911429262_
                                                   ___splice4240342404_
                                                   _target2913229182_
                                                   _tl2913429184_)
                                                  (_g2903029145_))))
                                          (_g2903029145_))))))
                             (___match4253642537_
                              (lambda (_e2908429295_
                                       _hd2908529298_
                                       _tl2908629300_
                                       _e2908729303_
                                       _hd2908829306_
                                       _tl2908929308_
                                       ___splice4239742398_
                                       _target2909029311_
                                       _tl2909229313_)
                                (letrec ((_loop2909329316_
                                          (lambda (_hd2909129319_
                                                   _id2909729321_)
                                            (if (gx#stx-pair? _hd2909129319_)
                                                (let ((_e2909429324_
                                                       (gx#stx-e
                                                        _hd2909129319_)))
                                                  (let ((_lp-tl2909629329_
                                                         (##cdr _e2909429324_))
                                                        (_lp-hd2909529327_
                                                         (##car _e2909429324_)))
                                                    (_loop2909329316_
                                                     _lp-tl2909629329_
                                                     (cons _lp-hd2909529327_
                                                           _id2909729321_))))
                                                (let ((_id2909829332_
                                                       (reverse _id2909729321_)))
                                                  (if (gx#stx-pair?
                                                       _tl2908929308_)
                                                      (let ((_e2909929335_
                                                             (gx#stx-e
                                                              _tl2908929308_)))
                                                        (let ((_tl2910129340_
                                                               (##cdr _e2909929335_))
                                                              (_hd2910029338_
                                                               (##car _e2909929335_)))
                                                          (if (gx#stx-null?
                                                               _tl2910129340_)
                                                              (___kont4239542396_
                                                               _hd2910029338_
                                                               _id2909829332_)
                                                              (_g2903029145_))))
                                                      (_g2903029145_)))))))
                                  (_loop2909329316_ _target2909029311_ '())))))
                        (if (gx#stx-pair? ___stx4238742388_)
                            (let ((_e2903529504_ (gx#stx-e ___stx4238742388_)))
                              (let ((_tl2903729509_ (##cdr _e2903529504_))
                                    (_hd2903629507_ (##car _e2903529504_)))
                                (if (gx#identifier? _hd2903629507_)
                                    (if (gx#stx-eq? '%#if _hd2903629507_)
                                        (if (gx#stx-pair? _tl2903729509_)
                                            (let ((_e2903829512_
                                                   (gx#stx-e _tl2903729509_)))
                                              (let ((_tl2904029517_
                                                     (##cdr _e2903829512_))
                                                    (_hd2903929515_
                                                     (##car _e2903829512_)))
                                                (if (gx#stx-pair?
                                                     _tl2904029517_)
                                                    (let ((_e2904129520_
                                                           (gx#stx-e
                                                            _tl2904029517_)))
                                                      (let ((_tl2904329525_
                                                             (##cdr _e2904129520_))
                                                            (_hd2904229523_
                                                             (##car _e2904129520_)))
                                                        (if (gx#stx-pair?
                                                             _tl2904329525_)
                                                            (let ((_e2904429528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2904329525_)))
                      (let ((_tl2904629533_ (##cdr _e2904429528_))
                            (_hd2904529531_ (##car _e2904429528_)))
                        (if (gx#stx-null? _tl2904629533_)
                            (___kont4238942390_
                             _hd2904529531_
                             _hd2904229523_
                             _hd2903929515_)
                            (_g2903029145_))))
                    (_g2903029145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2903029145_))))
                                            (_g2903029145_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd2903629507_)
                                            (if (gx#stx-pair? _tl2903729509_)
                                                (let ((_e2905229468_
                                                       (gx#stx-e
                                                        _tl2903729509_)))
                                                  (let ((_tl2905429473_
                                                         (##cdr _e2905229468_))
                                                        (_hd2905329471_
                                                         (##car _e2905229468_)))
                                                    (if (gx#stx-pair?
                                                         _tl2905429473_)
                                                        (let ((_e2905529476_
                                                               (gx#stx-e
                                                                _tl2905429473_)))
                                                          (let ((_tl2905729481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2905529476_))
                        (_hd2905629479_ (##car _e2905529476_)))
                    (if (gx#stx-null? _tl2905729481_)
                        (___kont4239142392_ _hd2905629479_ _hd2905329471_)
                        (_g2903029145_))))
                (_g2903029145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2903029145_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd2903629507_)
                                                (if (gx#stx-pair?
                                                     _tl2903729509_)
                                                    (let ((_e2906429382_
                                                           (gx#stx-e
                                                            _tl2903729509_)))
                                                      (let ((_tl2906629387_
                                                             (##cdr _e2906429382_))
                                                            (_hd2906529385_
                                                             (##car _e2906429382_)))
                                                        (if (gx#stx-pair?
                                                             _hd2906529385_)
                                                            (let ((_e2906729390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2906529385_)))
                      (let ((_tl2906929395_ (##cdr _e2906729390_))
                            (_hd2906829393_ (##car _e2906729390_)))
                        (if (gx#stx-pair? _hd2906829393_)
                            (let ((_e2907029398_ (gx#stx-e _hd2906829393_)))
                              (let ((_tl2907229403_ (##cdr _e2907029398_))
                                    (_hd2907129401_ (##car _e2907029398_)))
                                (if (gx#stx-pair? _hd2907129401_)
                                    (let ((_e2907329406_
                                           (gx#stx-e _hd2907129401_)))
                                      (let ((_tl2907529411_
                                             (##cdr _e2907329406_))
                                            (_hd2907429409_
                                             (##car _e2907329406_)))
                                        (if (gx#stx-null? _tl2907529411_)
                                            (if (gx#stx-pair? _tl2907229403_)
                                                (let ((_e2907629414_
                                                       (gx#stx-e
                                                        _tl2907229403_)))
                                                  (let ((_tl2907829419_
                                                         (##cdr _e2907629414_))
                                                        (_hd2907729417_
                                                         (##car _e2907629414_)))
                                                    (if (gx#stx-null?
                                                         _tl2907829419_)
                                                        (if (gx#stx-null?
                                                             _tl2906929395_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2906629387_)
                        (let ((_e2907929422_ (gx#stx-e _tl2906629387_)))
                          (let ((_tl2908129427_ (##cdr _e2907929422_))
                                (_hd2908029425_ (##car _e2907929422_)))
                            (if (gx#stx-null? _tl2908129427_)
                                (___kont4239342394_
                                 _hd2908029425_
                                 _hd2907729417_
                                 _hd2907429409_)
                                (_g2903029145_))))
                        (_g2903029145_))
                    (_g2903029145_))
                (_g2903029145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2903029145_))
                                            (_g2903029145_))))
                                    (_g2903029145_))))
                            (_g2903029145_))))
                    (_g2903029145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2903029145_))
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd2903629507_)
                                                    (if (gx#stx-pair?
                                                         _tl2903729509_)
                                                        (let ((_e2908729303_
                                                               (gx#stx-e
                                                                _tl2903729509_)))
                                                          (let ((_tl2908929308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2908729303_))
                        (_hd2908829306_ (##car _e2908729303_)))
                    (if (gx#stx-pair/null? _hd2908829306_)
                        (let ((___splice4239742398_
                               (gx#syntax-split-splice _hd2908829306_ '0)))
                          (let ((_tl2909229313_
                                 (##vector-ref ___splice4239742398_ '1))
                                (_target2909029311_
                                 (##vector-ref ___splice4239742398_ '0)))
                            (if (gx#stx-null? _tl2909229313_)
                                (___match4253642537_
                                 _e2903529504_
                                 _hd2903629507_
                                 _tl2903729509_
                                 _e2908729303_
                                 _hd2908829306_
                                 _tl2908929308_
                                 ___splice4239742398_
                                 _target2909029311_
                                 _tl2909229313_)
                                (_g2903029145_))))
                        (_g2903029145_))))
                (_g2903029145_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2903629507_)
                                                        (if (gx#stx-pair?
                                                             _tl2903729509_)
                                                            (let ((_e2910629241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2903729509_)))
                      (let ((_tl2910829246_ (##cdr _e2910629241_))
                            (_hd2910729244_ (##car _e2910629241_)))
                        (if (gx#stx-pair? _hd2910729244_)
                            (let ((_e2910929249_ (gx#stx-e _hd2910729244_)))
                              (let ((_tl2911129254_ (##cdr _e2910929249_))
                                    (_hd2911029252_ (##car _e2910929249_)))
                                (if (gx#identifier? _hd2911029252_)
                                    (if (gx#stx-eq? '%#ref _hd2911029252_)
                                        (if (gx#stx-pair? _tl2911129254_)
                                            (let ((_e2911229257_
                                                   (gx#stx-e _tl2911129254_)))
                                              (let ((_tl2911429262_
                                                     (##cdr _e2911229257_))
                                                    (_hd2911329260_
                                                     (##car _e2911229257_)))
                                                (if (gx#stx-null?
                                                     _tl2911429262_)
                                                    (if (gx#stx-pair?
                                                         _tl2910829246_)
                                                        (let ((_e2911529265_
                                                               (gx#stx-e
                                                                _tl2910829246_)))
                                                          (let ((_tl2911729270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2911529265_))
                        (_hd2911629268_ (##car _e2911529265_)))
                    (if (gx#stx-null? _tl2911729270_)
                        (___match4257842579_
                         _e2903529504_
                         _hd2903629507_
                         _tl2903729509_
                         _e2910629241_
                         _hd2910729244_
                         _tl2910829246_
                         _e2910929249_
                         _hd2911029252_
                         _tl2911129254_
                         _e2911229257_
                         _hd2911329260_
                         _tl2911429262_
                         _e2911529265_
                         _hd2911629268_
                         _tl2911729270_)
                        (if (gx#stx-pair/null? _tl2910829246_)
                            (let ((___splice4240342404_
                                   (gx#syntax-split-splice _tl2910829246_ '0)))
                              (let ((_tl2913429184_
                                     (##vector-ref ___splice4240342404_ '1))
                                    (_target2913229182_
                                     (##vector-ref ___splice4240342404_ '0)))
                                (if (gx#stx-null? _tl2913429184_)
                                    (___match4262042621_
                                     _e2903529504_
                                     _hd2903629507_
                                     _tl2903729509_
                                     _e2910629241_
                                     _hd2910729244_
                                     _tl2910829246_
                                     _e2910929249_
                                     _hd2911029252_
                                     _tl2911129254_
                                     _e2911229257_
                                     _hd2911329260_
                                     _tl2911429262_
                                     ___splice4240342404_
                                     _target2913229182_
                                     _tl2913429184_)
                                    (_g2903029145_))))
                            (_g2903029145_)))))
                (if (gx#stx-pair/null? _tl2910829246_)
                    (let ((___splice4240342404_
                           (gx#syntax-split-splice _tl2910829246_ '0)))
                      (let ((_tl2913429184_
                             (##vector-ref ___splice4240342404_ '1))
                            (_target2913229182_
                             (##vector-ref ___splice4240342404_ '0)))
                        (if (gx#stx-null? _tl2913429184_)
                            (___match4262042621_
                             _e2903529504_
                             _hd2903629507_
                             _tl2903729509_
                             _e2910629241_
                             _hd2910729244_
                             _tl2910829246_
                             _e2910929249_
                             _hd2911029252_
                             _tl2911129254_
                             _e2911229257_
                             _hd2911329260_
                             _tl2911429262_
                             ___splice4240342404_
                             _target2913229182_
                             _tl2913429184_)
                            (_g2903029145_))))
                    (_g2903029145_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2903029145_))))
                                            (_g2903029145_))
                                        (_g2903029145_))
                                    (_g2903029145_))))
                            (_g2903029145_))))
                    (_g2903029145_))
                (_g2903029145_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g2903029145_))))
                            (_g2903029145_))))))))
        (let* ((_clause2890728914_ _clause28902_)
               (_E2890928918_
                (lambda () (error '"No clause matching" _clause2890728914_)))
               (_K2891029011_
                (lambda (_kont28921_ _id28922_)
                  (let* ((_g2892428944_
                          (lambda (_g2892528941_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2892528941_)))
                         (_g2892329008_
                          (lambda (_g2892528947_)
                            (if (gx#stx-pair? _g2892528947_)
                                (let ((_e2892828949_ (gx#stx-e _g2892528947_)))
                                  (let ((_hd2892928952_ (##car _e2892828949_))
                                        (_tl2893028954_ (##cdr _e2892828949_)))
                                    (if (gx#identifier? _hd2892928952_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2892928952_)
                                            (if (gx#stx-pair? _tl2893028954_)
                                                (let ((_e2893128957_
                                                       (gx#stx-e
                                                        _tl2893028954_)))
                                                  (let ((_hd2893228960_
                                                         (##car _e2893128957_))
                                                        (_tl2893328962_
                                                         (##cdr _e2893128957_)))
                                                    (if (gx#stx-pair?
                                                         _hd2893228960_)
                                                        (let ((_e2893428965_
                                                               (gx#stx-e
                                                                _hd2893228960_)))
                                                          (let ((_hd2893528968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2893428965_))
                        (_tl2893628970_ (##cdr _e2893428965_)))
                    (if (gx#stx-null? _tl2893628970_)
                        (if (gx#stx-pair? _tl2893328962_)
                            (let ((_e2893728973_ (gx#stx-e _tl2893328962_)))
                              (let ((_hd2893828976_ (##car _e2893728973_))
                                    (_tl2893928978_ (##cdr _e2893728973_)))
                                (if (gx#stx-null? _tl2893928978_)
                                    ((lambda (_L28981_ _L28982_)
                                       (let* ((_body29003_
                                               (gxc#apply-expression-subst
                                                _L28981_
                                                _L28982_
                                                _target28904_))
                                              (_body29005_
                                               (if _negation28903_
                                                   (_closure-e28906_
                                                    _body29003_)
                                                   _body29003_)))
                                         (cons _id28922_
                                               (cons '%#lambda
                                                     (cons '()
                                                           (cons _body29005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2893828976_
                                     _hd2893528968_)
                                    (_g2892428944_ _g2892528947_))))
                            (_g2892428944_ _g2892528947_))
                        (_g2892428944_ _g2892528947_))))
                (_g2892428944_ _g2892528947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2892428944_ _g2892528947_))
                                            (_g2892428944_ _g2892528947_))
                                        (_g2892428944_ _g2892528947_))))
                                (_g2892428944_ _g2892528947_)))))
                    (_g2892329008_ _kont28921_)))))
          (if (##pair? _clause2890728914_)
              (let ((_hd2891129014_ (##car _clause2890728914_))
                    (_tl2891229016_ (##cdr _clause2890728914_)))
                (let* ((_id29019_ _hd2891129014_) (_kont29021_ _tl2891229016_))
                  (_K2891029011_ _kont29021_ _id29019_)))
              (_E2890928918_))))))
  (define gxc#push-match-vars-let-values%
    (lambda (_stx28688_ _vars28689_ _K28690_)
      (let* ((_g2869228709_
              (lambda (_g2869328706_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2869328706_)))
             (_g2869128899_
              (lambda (_g2869328712_)
                (if (gx#stx-pair? _g2869328712_)
                    (let ((_e2869628714_ (gx#stx-e _g2869328712_)))
                      (let ((_hd2869728717_ (##car _e2869628714_))
                            (_tl2869828719_ (##cdr _e2869628714_)))
                        (if (gx#stx-pair? _tl2869828719_)
                            (let ((_e2869928722_ (gx#stx-e _tl2869828719_)))
                              (let ((_hd2870028725_ (##car _e2869928722_))
                                    (_tl2870128727_ (##cdr _e2869928722_)))
                                (if (gx#stx-pair? _tl2870128727_)
                                    (let ((_e2870228730_
                                           (gx#stx-e _tl2870128727_)))
                                      (let ((_hd2870328733_
                                             (##car _e2870228730_))
                                            (_tl2870428735_
                                             (##cdr _e2870228730_)))
                                        (if (gx#stx-null? _tl2870428735_)
                                            ((lambda (_L28738_ _L28739_)
                                               (let _lp28754_ ((_rest28756_
                                                                _L28739_)
                                                               (_rebind28757_
                                                                '())
                                                               (_vars28758_
                                                                _vars28689_))
                                                 (let* ((_rest2875928767_
                                                         _rest28756_)
                                                        (_else2876128775_
                                                         (lambda ()
                                                           (if (null? _rebind28757_)
                                                               (gxc#compile-e
                                                                _L28738_
                                                                _vars28758_
                                                                _K28690_)
                                                               (gxc#xform-wrap-source
                                                                (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (reverse _rebind28757_)
                                    (cons (gxc#compile-e
                                           _L28738_
                                           _vars28758_
                                           _K28690_)
                                          '())))
                        _stx28688_))))
                (_K2876328887_
                 (lambda (_rest28778_ _bind28779_)
                   (let* ((___stx4262342624_ _bind28779_)
                          (_g2878228805_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4262342624_))))
                     (let ((___kont4262542626_
                            (lambda (_L28857_ _L28858_)
                              (_lp28754_
                               _rest28778_
                               _rebind28757_
                               (cons _bind28779_ _vars28758_))))
                           (___kont4262742628_
                            (lambda ()
                              (_lp28754_
                               _rest28778_
                               (cons _bind28779_ _rebind28757_)
                               _vars28758_))))
                       (if (gx#stx-pair? ___stx4262342624_)
                           (let ((_e2878628817_ (gx#stx-e ___stx4262342624_)))
                             (let ((_tl2878828822_ (##cdr _e2878628817_))
                                   (_hd2878728820_ (##car _e2878628817_)))
                               (if (gx#stx-pair? _hd2878728820_)
                                   (let ((_e2878928825_
                                          (gx#stx-e _hd2878728820_)))
                                     (let ((_tl2879128830_
                                            (##cdr _e2878928825_))
                                           (_hd2879028828_
                                            (##car _e2878928825_)))
                                       (if (gx#stx-null? _tl2879128830_)
                                           (if (gx#stx-pair? _tl2878828822_)
                                               (let ((_e2879228833_
                                                      (gx#stx-e
                                                       _tl2878828822_)))
                                                 (let ((_tl2879428838_
                                                        (##cdr _e2879228833_))
                                                       (_hd2879328836_
                                                        (##car _e2879228833_)))
                                                   (if (gx#stx-pair?
                                                        _hd2879328836_)
                                                       (let ((_e2879528841_
                                                              (gx#stx-e
                                                               _hd2879328836_)))
                                                         (let ((_tl2879728846_
                                                                (##cdr _e2879528841_))
                                                               (_hd2879628844_
                                                                (##car _e2879528841_)))
                                                           (if (gx#identifier?
                                                                _hd2879628844_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd2879628844_)
                           (if (gx#stx-pair? _tl2879728846_)
                               (let ((_e2879828849_ (gx#stx-e _tl2879728846_)))
                                 (let ((_tl2880028854_ (##cdr _e2879828849_))
                                       (_hd2879928852_ (##car _e2879828849_)))
                                   (if (gx#stx-null? _tl2880028854_)
                                       (if (gx#stx-null? _tl2879428838_)
                                           (___kont4262542626_
                                            _hd2879928852_
                                            _hd2879028828_)
                                           (___kont4262742628_))
                                       (___kont4262742628_))))
                               (___kont4262742628_))
                           (___kont4262742628_))
                       (___kont4262742628_))))
               (___kont4262742628_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4262742628_))
                                           (___kont4262742628_))))
                                   (___kont4262742628_))))
                           (___kont4262742628_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _rest2875928767_)
                                                       (let ((_hd2876428890_
                                                              (##car _rest2875928767_))
                                                             (_tl2876528892_
                                                              (##cdr _rest2875928767_)))
                                                         (let* ((_bind28895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2876428890_)
                        (_rest28897_ _tl2876528892_))
                   (_K2876328887_ _rest28897_ _bind28895_)))
               (_else2876128775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd2870328733_
                                             _hd2870028725_)
                                            (_g2869228709_ _g2869328712_))))
                                    (_g2869228709_ _g2869328712_))))
                            (_g2869228709_ _g2869328712_))))
                    (_g2869228709_ _g2869328712_)))))
        (_g2869128899_ _stx28688_))))
  (define gxc#push-match-vars-if%
    (lambda (_stx28603_ _vars28604_ _K28605_)
      (let* ((_g2860728628_
              (lambda (_g2860828625_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2860828625_)))
             (_g2860628685_
              (lambda (_g2860828631_)
                (if (gx#stx-pair? _g2860828631_)
                    (let ((_e2861228633_ (gx#stx-e _g2860828631_)))
                      (let ((_hd2861328636_ (##car _e2861228633_))
                            (_tl2861428638_ (##cdr _e2861228633_)))
                        (if (gx#stx-pair? _tl2861428638_)
                            (let ((_e2861528641_ (gx#stx-e _tl2861428638_)))
                              (let ((_hd2861628644_ (##car _e2861528641_))
                                    (_tl2861728646_ (##cdr _e2861528641_)))
                                (if (gx#stx-pair? _tl2861728646_)
                                    (let ((_e2861828649_
                                           (gx#stx-e _tl2861728646_)))
                                      (let ((_hd2861928652_
                                             (##car _e2861828649_))
                                            (_tl2862028654_
                                             (##cdr _e2861828649_)))
                                        (if (gx#stx-pair? _tl2862028654_)
                                            (let ((_e2862128657_
                                                   (gx#stx-e _tl2862028654_)))
                                              (let ((_hd2862228660_
                                                     (##car _e2862128657_))
                                                    (_tl2862328662_
                                                     (##cdr _e2862128657_)))
                                                (if (gx#stx-null?
                                                     _tl2862328662_)
                                                    ((lambda (_L28665_
                                                              _L28666_
                                                              _L28667_)
                                                       (if (gxc#apply-find-var-refs
                                                            _L28667_
                                                            (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _vars28604_))
                   (gxc#push-match-vars-stop _stx28603_ _vars28604_ _K28605_)
                   (gxc#xform-wrap-source
                    (cons '%#if
                          (cons _L28667_
                                (cons (gxc#compile-e
                                       _L28666_
                                       _vars28604_
                                       _K28605_)
                                      (cons (gxc#compile-e
                                             _L28665_
                                             _vars28604_
                                             _K28605_)
                                            '()))))
                    _stx28603_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd2862228660_
                                                     _hd2861928652_
                                                     _hd2861628644_)
                                                    (_g2860728628_
                                                     _g2860828631_))))
                                            (_g2860728628_ _g2860828631_))))
                                    (_g2860728628_ _g2860828631_))))
                            (_g2860728628_ _g2860828631_))))
                    (_g2860728628_ _g2860828631_)))))
        (_g2860628685_ _stx28603_))))
  (define gxc#push-match-vars-call%
    (lambda (_stx28523_ _vars28524_ _K28525_)
      (let* ((_g2852728546_
              (lambda (_g2852828543_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2852828543_)))
             (_g2852628600_
              (lambda (_g2852828549_)
                (if (gx#stx-pair? _g2852828549_)
                    (let ((_e2853028551_ (gx#stx-e _g2852828549_)))
                      (let ((_hd2853128554_ (##car _e2853028551_))
                            (_tl2853228556_ (##cdr _e2853028551_)))
                        (if (gx#stx-pair? _tl2853228556_)
                            (let ((_e2853328559_ (gx#stx-e _tl2853228556_)))
                              (let ((_hd2853428562_ (##car _e2853328559_))
                                    (_tl2853528564_ (##cdr _e2853328559_)))
                                (if (gx#stx-pair? _hd2853428562_)
                                    (let ((_e2853628567_
                                           (gx#stx-e _hd2853428562_)))
                                      (let ((_hd2853728570_
                                             (##car _e2853628567_))
                                            (_tl2853828572_
                                             (##cdr _e2853628567_)))
                                        (if (gx#identifier? _hd2853728570_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2853728570_)
                                                (if (gx#stx-pair?
                                                     _tl2853828572_)
                                                    (let ((_e2853928575_
                                                           (gx#stx-e
                                                            _tl2853828572_)))
                                                      (let ((_hd2854028578_
                                                             (##car _e2853928575_))
                                                            (_tl2854128580_
                                                             (##cdr _e2853928575_)))
                                                        (if (gx#stx-null?
                                                             _tl2854128580_)
                                                            ((lambda (_L28583_)
                                                               (if (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L28583_
                                _K28525_)
                               (pair? _vars28524_)
                               '#f)
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (reverse _vars28524_)
                                        (cons _stx28523_ '())))
                            _stx28523_)
                           _stx28523_))
                     _hd2854028578_)
                    (_g2852728546_ _g2852828549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2852728546_
                                                     _g2852828549_))
                                                (_g2852728546_ _g2852828549_))
                                            (_g2852728546_ _g2852828549_))))
                                    (_g2852728546_ _g2852828549_))))
                            (_g2852728546_ _g2852828549_))))
                    (_g2852728546_ _g2852828549_)))))
        (_g2852628600_ _stx28523_))))
  (define gxc#push-match-vars-stop
    (lambda (_stx28519_ _vars28520_ _K28521_)
      (if (null? _vars28520_)
          _stx28519_
          (gxc#xform-wrap-source
           (cons '%#let-values
                 (cons (reverse _vars28520_) (cons _stx28519_ '())))
           _stx28519_)))))
