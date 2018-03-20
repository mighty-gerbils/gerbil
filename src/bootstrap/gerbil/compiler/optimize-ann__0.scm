(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 100))
  (define gxc#&optmize-annotated
    (make-promise
     (lambda ()
       (let ((_tbl39585_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl39585_ (force gxc#&basic-xform))
           (table-set! _tbl39585_ '%#begin-annotation gxc#optimize-annotation%)
           _tbl39585_)))))
  (define gxc#apply-optimize-annotated
    (lambda (_stx39578_ . _args39580_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39578_ _args39580_))
       gxc#current-compile-methods
       (force gxc#&optmize-annotated))))
  (define gxc#&generate-runtime-repr
    (make-promise
     (lambda ()
       (let ((_tbl39575_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl39575_ (force gxc#&generate-runtime))
           (table-set! _tbl39575_ '%#quote-syntax identity)
           _tbl39575_)))))
  (define gxc#apply-generate-runtime-repr
    (lambda (_stx39568_ . _args39570_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39568_ _args39570_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-repr))))
  (define gxc#&push-match-vars
    (make-promise
     (lambda ()
       (let ((_tbl39565_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl39565_ '%#lambda gxc#xform-lambda%)
           (table-set!
            _tbl39565_
            '%#let-values
            gxc#push-match-vars-let-values%)
           (table-set! _tbl39565_ '%#letrec-values gxc#push-match-vars-stop)
           (table-set! _tbl39565_ '%#if gxc#push-match-vars-if%)
           (table-set! _tbl39565_ '%#call gxc#push-match-vars-call%)
           _tbl39565_)))))
  (define gxc#apply-push-match-vars
    (lambda (_stx39558_ . _args39560_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39558_ _args39560_))
       gxc#current-compile-methods
       (force gxc#&push-match-vars))))
  (define gxc#current-annotation-optimizer (make-parameter '()))
  (define gxc#optimize-annotation%
    (lambda (_stx39476_)
      (let* ((___stx3960139602_ _stx39476_)
             (_g3947939496_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx3960139602_))))
        (let ((___kont3960339604_
               (lambda (_L39532_ _L39533_)
                 (let ((_ann39549_ (gx#stx-e _L39533_)))
                   (call-with-parameters
                    (lambda ()
                      (let ((_$e39552_ _ann39549_))
                        (if (eq? '@match _$e39552_)
                            (begin
                              (gxc#verbose '"Optimizing match expansion")
                              (gxc#optimize-match _L39532_))
                            (if (eq? '@syntax-case _$e39552_)
                                (begin
                                  (gxc#verbose
                                   '"Optimizing syntax-case expansion")
                                  (gxc#optimize-syntax-case _L39532_))
                                (gxc#compile-e _L39532_)))))
                    gxc#current-annotation-optimizer
                    (cons _ann39549_ (gxc#current-annotation-optimizer))))))
              (___kont3960539606_
               (lambda () (gxc#xform-begin-annotation% _stx39476_))))
          (let ((___match3962639627_
                 (lambda (_e3948339508_
                          _hd3948439511_
                          _tl3948539513_
                          _e3948639516_
                          _hd3948739519_
                          _tl3948839521_
                          _e3948939524_
                          _hd3949039527_
                          _tl3949139529_)
                   (let ((_L39532_ _hd3949039527_) (_L39533_ _hd3948739519_))
                     (if (gx#identifier? _L39533_)
                         (___kont3960339604_ _L39532_ _L39533_)
                         (___kont3960539606_))))))
            (if (gx#stx-pair? ___stx3960139602_)
                (let ((_e3948339508_ (gx#stx-e ___stx3960139602_)))
                  (let ((_tl3948539513_ (##cdr _e3948339508_))
                        (_hd3948439511_ (##car _e3948339508_)))
                    (if (gx#stx-pair? _tl3948539513_)
                        (let ((_e3948639516_ (gx#stx-e _tl3948539513_)))
                          (let ((_tl3948839521_ (##cdr _e3948639516_))
                                (_hd3948739519_ (##car _e3948639516_)))
                            (if (gx#stx-pair? _tl3948839521_)
                                (let ((_e3948939524_
                                       (gx#stx-e _tl3948839521_)))
                                  (let ((_tl3949139529_ (##cdr _e3948939524_))
                                        (_hd3949039527_ (##car _e3948939524_)))
                                    (if (gx#stx-null? _tl3949139529_)
                                        (___match3962639627_
                                         _e3948339508_
                                         _hd3948439511_
                                         _tl3948539513_
                                         _e3948639516_
                                         _hd3948739519_
                                         _tl3948839521_
                                         _e3948939524_
                                         _hd3949039527_
                                         _tl3949139529_)
                                        (___kont3960539606_))))
                                (___kont3960539606_))))
                        (___kont3960539606_))))
                (___kont3960539606_)))))))
  (define gxc#optimize-match
    (lambda (_stx38775_)
      (let* ((_g3877738807_
              (lambda (_g3877838804_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3877838804_)))
             (_g3877639473_
              (lambda (_g3877838810_)
                (if (gx#stx-pair? _g3877838810_)
                    (let ((_e3878238812_ (gx#stx-e _g3877838810_)))
                      (let ((_hd3878338815_ (##car _e3878238812_))
                            (_tl3878438817_ (##cdr _e3878238812_)))
                        (if (gx#identifier? _hd3878338815_)
                            (if (gx#stx-eq? '%#let-values _hd3878338815_)
                                (if (gx#stx-pair? _tl3878438817_)
                                    (let ((_e3878538820_
                                           (gx#stx-e _tl3878438817_)))
                                      (let ((_hd3878638823_
                                             (##car _e3878538820_))
                                            (_tl3878738825_
                                             (##cdr _e3878538820_)))
                                        (if (gx#stx-pair? _hd3878638823_)
                                            (let ((_e3878838828_
                                                   (gx#stx-e _hd3878638823_)))
                                              (let ((_hd3878938831_
                                                     (##car _e3878838828_))
                                                    (_tl3879038833_
                                                     (##cdr _e3878838828_)))
                                                (if (gx#stx-pair?
                                                     _hd3878938831_)
                                                    (let ((_e3879138836_
                                                           (gx#stx-e
                                                            _hd3878938831_)))
                                                      (let ((_hd3879238839_
                                                             (##car _e3879138836_))
                                                            (_tl3879338841_
                                                             (##cdr _e3879138836_)))
                                                        (if (gx#stx-pair?
                                                             _hd3879238839_)
                                                            (let ((_e3879438844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3879238839_)))
                      (let ((_hd3879538847_ (##car _e3879438844_))
                            (_tl3879638849_ (##cdr _e3879438844_)))
                        (if (gx#stx-null? _tl3879638849_)
                            (if (gx#stx-pair? _tl3879338841_)
                                (let ((_e3879738852_
                                       (gx#stx-e _tl3879338841_)))
                                  (let ((_hd3879838855_ (##car _e3879738852_))
                                        (_tl3879938857_ (##cdr _e3879738852_)))
                                    (if (gx#stx-null? _tl3879938857_)
                                        (if (gx#stx-null? _tl3879038833_)
                                            (if (gx#stx-pair? _tl3878738825_)
                                                (let ((_e3880038860_
                                                       (gx#stx-e
                                                        _tl3878738825_)))
                                                  (let ((_hd3880138863_
                                                         (##car _e3880038860_))
                                                        (_tl3880238865_
                                                         (##cdr _e3880038860_)))
                                                    (if (gx#stx-null?
                                                         _tl3880238865_)
                                                        ((lambda (_L38868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L38869_
                          _L38870_)
                   (let _lp38894_ ((_body38896_ _L38868_)
                                   (_negation38897_ (cons _L38870_ _L38869_))
                                   (_clauses38898_ '())
                                   (_konts38899_ '()))
                     (let* ((___stx3980939810_ _body38896_)
                            (_g3890238942_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx3980939810_))))
                       (let ((___kont3981139812_
                              (lambda (_L39272_)
                                (let* ((___stx3974539746_ _L39272_)
                                       (_g3928639316_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx3974539746_))))
                                  (let ((___kont3974739748_
                                         (lambda (_L39412_ _L39413_ _L39414_)
                                           (if (null? _clauses38898_)
                                               (let* ((_negation3943839445_
                                                       _negation38897_)
                                                      (_E3944039449_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _negation3943839445_)))
                                                      (_K3944139455_
                                                       (lambda (_negate39452_
                                                                _E39453_)
                                                         (gxc#xform-wrap-source
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _E39453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _negate39452_ '()))
                                    '())
                              (cons (cons '%#let-values
                                          (cons (cons (cons (cons _L39414_ '())
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L39413_)
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L39412_ '())))
                                    '())))
                  _stx38775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _negation3943839445_)
                                                     (let ((_hd3944239458_
                                                            (##car _negation3943839445_))
                                                           (_tl3944339460_
                                                            (##cdr _negation3943839445_)))
                                                       (let* ((_E39463_
                                                               _hd3944239458_)
                                                              (_negate39465_
                                                               _tl3944339460_))
                                                         (_K3944139455_
                                                          _negate39465_
                                                          _E39463_)))
                                                     (_E3944039449_)))
                                               (gxc#optimize-match-body
                                                _stx38775_
                                                _negation38897_
                                                (cons (cons '#f
                                                            (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#lambda)
                          (cons '() (cons _L39412_ '()))))
              _clauses38898_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _L39414_
                                                            (gxc#compile-e
                                                             _L39413_))
                                                      _konts38899_)))))
                                        (___kont3974939750_
                                         (lambda ()
                                           (let* ((_negation3932239329_
                                                   _negation38897_)
                                                  (_E3932439333_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _negation3932239329_)))
                                                  (_K3932539339_
                                                   (lambda (_negate39336_
                                                            _E39337_)
                                                     (gxc#xform-wrap-source
                                                      (cons '%#let-values
                                                            (cons (cons (cons (cons _E39337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                            '())
                                      (cons _negate39336_ '()))
                                '())
                          (cons _L39272_ '())))
              _stx38775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _negation3932239329_)
                                                 (let ((_hd3932639342_
                                                        (##car _negation3932239329_))
                                                       (_tl3932739344_
                                                        (##cdr _negation3932239329_)))
                                                   (let* ((_E39347_
                                                           _hd3932639342_)
                                                          (_negate39349_
                                                           _tl3932739344_))
                                                     (_K3932539339_
                                                      _negate39349_
                                                      _E39347_)))
                                                 (_E3932439333_))))))
                                    (let ((_g3928539351_
                                           (lambda ()
                                             (if (null? _clauses38898_)
                                                 (___kont3974939750_)
                                                 (_g3928639316_)))))
                                      (if (gx#stx-pair? ___stx3974539746_)
                                          (let ((_e3929139356_
                                                 (gx#stx-e ___stx3974539746_)))
                                            (let ((_tl3929339361_
                                                   (##cdr _e3929139356_))
                                                  (_hd3929239359_
                                                   (##car _e3929139356_)))
                                              (if (gx#identifier?
                                                   _hd3929239359_)
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd3929239359_)
                                                      (if (gx#stx-pair?
                                                           _tl3929339361_)
                                                          (let ((_e3929439364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3929339361_)))
                    (let ((_tl3929639369_ (##cdr _e3929439364_))
                          (_hd3929539367_ (##car _e3929439364_)))
                      (if (gx#stx-pair? _hd3929539367_)
                          (let ((_e3929739372_ (gx#stx-e _hd3929539367_)))
                            (let ((_tl3929939377_ (##cdr _e3929739372_))
                                  (_hd3929839375_ (##car _e3929739372_)))
                              (if (gx#stx-pair? _hd3929839375_)
                                  (let ((_e3930039380_
                                         (gx#stx-e _hd3929839375_)))
                                    (let ((_tl3930239385_
                                           (##cdr _e3930039380_))
                                          (_hd3930139383_
                                           (##car _e3930039380_)))
                                      (if (gx#stx-pair? _hd3930139383_)
                                          (let ((_e3930339388_
                                                 (gx#stx-e _hd3930139383_)))
                                            (let ((_tl3930539393_
                                                   (##cdr _e3930339388_))
                                                  (_hd3930439391_
                                                   (##car _e3930339388_)))
                                              (if (gx#stx-null? _tl3930539393_)
                                                  (if (gx#stx-pair?
                                                       _tl3930239385_)
                                                      (let ((_e3930639396_
                                                             (gx#stx-e
                                                              _tl3930239385_)))
                                                        (let ((_tl3930839401_
                                                               (##cdr _e3930639396_))
                                                              (_hd3930739399_
                                                               (##car _e3930639396_)))
                                                          (if (gx#stx-null?
                                                               _tl3930839401_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3929939377_)
                          (if (gx#stx-pair? _tl3929639369_)
                              (let ((_e3930939404_ (gx#stx-e _tl3929639369_)))
                                (let ((_tl3931139409_ (##cdr _e3930939404_))
                                      (_hd3931039407_ (##car _e3930939404_)))
                                  (if (gx#stx-null? _tl3931139409_)
                                      (___kont3974739748_
                                       _hd3931039407_
                                       _hd3930739399_
                                       _hd3930439391_)
                                      (_g3928539351_))))
                              (_g3928539351_))
                          (_g3928539351_))
                      (_g3928539351_))))
              (_g3928539351_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3928539351_))))
                                          (_g3928539351_))))
                                  (_g3928539351_))))
                          (_g3928539351_))))
                  (_g3928539351_))
              (_g3928539351_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3928539351_))))
                                          (_g3928539351_)))))))
                             (___kont3981339814_
                              (lambda (_L39003_ _L39004_ _L39005_)
                                (let* ((___stx3962939630_ _L39004_)
                                       (_g3903239081_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx3962939630_))))
                                  (let ((___kont3963139632_
                                         (lambda (_L39209_ _L39210_ _L39211_)
                                           (_lp38894_
                                            _L39003_
                                            _negation38897_
                                            (cons (cons _L39005_
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#lambda)
                                                              (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L39209_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _clauses38898_)
                                            (cons (cons _L39211_
                                                        (gxc#compile-e
                                                         _L39210_))
                                                  _konts38899_))))
                                        (___kont3963339634_
                                         (lambda (_L39110_)
                                           (_lp38894_
                                            _L39003_
                                            (cons _L39005_
                                                  (gxc#compile-e _L39110_))
                                            _clauses38898_
                                            _konts38899_))))
                                    (if (gx#stx-pair? ___stx3962939630_)
                                        (let ((_e3903739129_
                                               (gx#stx-e ___stx3962939630_)))
                                          (let ((_tl3903939134_
                                                 (##cdr _e3903739129_))
                                                (_hd3903839132_
                                                 (##car _e3903739129_)))
                                            (if (gx#identifier? _hd3903839132_)
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd3903839132_)
                                                    (if (gx#stx-pair?
                                                         _tl3903939134_)
                                                        (let ((_e3904039137_
                                                               (gx#stx-e
                                                                _tl3903939134_)))
                                                          (let ((_tl3904239142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3904039137_))
                        (_hd3904139140_ (##car _e3904039137_)))
                    (if (gx#stx-null? _hd3904139140_)
                        (if (gx#stx-pair? _tl3904239142_)
                            (let ((_e3904339145_ (gx#stx-e _tl3904239142_)))
                              (let ((_tl3904539150_ (##cdr _e3904339145_))
                                    (_hd3904439148_ (##car _e3904339145_)))
                                (if (gx#stx-pair? _hd3904439148_)
                                    (let ((_e3904639153_
                                           (gx#stx-e _hd3904439148_)))
                                      (let ((_tl3904839158_
                                             (##cdr _e3904639153_))
                                            (_hd3904739156_
                                             (##car _e3904639153_)))
                                        (if (gx#identifier? _hd3904739156_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3904739156_)
                                                (if (gx#stx-pair?
                                                     _tl3904839158_)
                                                    (let ((_e3904939161_
                                                           (gx#stx-e
                                                            _tl3904839158_)))
                                                      (let ((_tl3905139166_
                                                             (##cdr _e3904939161_))
                                                            (_hd3905039164_
                                                             (##car _e3904939161_)))
                                                        (if (gx#stx-pair?
                                                             _hd3905039164_)
                                                            (let ((_e3905239169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3905039164_)))
                      (let ((_tl3905439174_ (##cdr _e3905239169_))
                            (_hd3905339172_ (##car _e3905239169_)))
                        (if (gx#stx-pair? _hd3905339172_)
                            (let ((_e3905539177_ (gx#stx-e _hd3905339172_)))
                              (let ((_tl3905739182_ (##cdr _e3905539177_))
                                    (_hd3905639180_ (##car _e3905539177_)))
                                (if (gx#stx-pair? _hd3905639180_)
                                    (let ((_e3905839185_
                                           (gx#stx-e _hd3905639180_)))
                                      (let ((_tl3906039190_
                                             (##cdr _e3905839185_))
                                            (_hd3905939188_
                                             (##car _e3905839185_)))
                                        (if (gx#stx-null? _tl3906039190_)
                                            (if (gx#stx-pair? _tl3905739182_)
                                                (let ((_e3906139193_
                                                       (gx#stx-e
                                                        _tl3905739182_)))
                                                  (let ((_tl3906339198_
                                                         (##cdr _e3906139193_))
                                                        (_hd3906239196_
                                                         (##car _e3906139193_)))
                                                    (if (gx#stx-null?
                                                         _tl3906339198_)
                                                        (if (gx#stx-null?
                                                             _tl3905439174_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3905139166_)
                        (let ((_e3906439201_ (gx#stx-e _tl3905139166_)))
                          (let ((_tl3906639206_ (##cdr _e3906439201_))
                                (_hd3906539204_ (##car _e3906439201_)))
                            (if (gx#stx-null? _tl3906639206_)
                                (if (gx#stx-null? _tl3904539150_)
                                    (___kont3963139632_
                                     _hd3906539204_
                                     _hd3906239196_
                                     _hd3905939188_)
                                    (_g3903239081_))
                                (_g3903239081_))))
                        (_g3903239081_))
                    (_g3903239081_))
                (_g3903239081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3903239081_))
                                            (_g3903239081_))))
                                    (_g3903239081_))))
                            (_g3903239081_))))
                    (_g3903239081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3903239081_))
                                                (_g3903239081_))
                                            (_g3903239081_))))
                                    (_g3903239081_))))
                            (_g3903239081_))
                        (_g3903239081_))))
                (_g3903239081_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#begin-annotation
                                                         _hd3903839132_)
                                                        (if (gx#stx-pair?
                                                             _tl3903939134_)
                                                            (let ((_e3907139094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3903939134_)))
                      (let ((_tl3907339099_ (##cdr _e3907139094_))
                            (_hd3907239097_ (##car _e3907139094_)))
                        (if (gx#identifier? _hd3907239097_)
                            (if (gx#stx-eq? '@match-else _hd3907239097_)
                                (if (gx#stx-pair? _tl3907339099_)
                                    (let ((_e3907439102_
                                           (gx#stx-e _tl3907339099_)))
                                      (let ((_tl3907639107_
                                             (##cdr _e3907439102_))
                                            (_hd3907539105_
                                             (##car _e3907439102_)))
                                        (if (gx#stx-null? _tl3907639107_)
                                            (___kont3963339634_ _hd3907539105_)
                                            (_g3903239081_))))
                                    (_g3903239081_))
                                (_g3903239081_))
                            (_g3903239081_))))
                    (_g3903239081_))
                (_g3903239081_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3903239081_))))
                                        (_g3903239081_)))))))
                         (if (gx#stx-pair? ___stx3980939810_)
                             (let ((_e3890539248_
                                    (gx#stx-e ___stx3980939810_)))
                               (let ((_tl3890739253_ (##cdr _e3890539248_))
                                     (_hd3890639251_ (##car _e3890539248_)))
                                 (if (gx#identifier? _hd3890639251_)
                                     (if (gx#stx-eq?
                                          '%#begin-annotation
                                          _hd3890639251_)
                                         (if (gx#stx-pair? _tl3890739253_)
                                             (let ((_e3890839256_
                                                    (gx#stx-e _tl3890739253_)))
                                               (let ((_tl3891039261_
                                                      (##cdr _e3890839256_))
                                                     (_hd3890939259_
                                                      (##car _e3890839256_)))
                                                 (if (gx#identifier?
                                                      _hd3890939259_)
                                                     (if (gx#stx-eq?
                                                          '@match-body
                                                          _hd3890939259_)
                                                         (if (gx#stx-pair?
                                                              _tl3891039261_)
                                                             (let ((_e3891139264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3891039261_)))
                       (let ((_tl3891339269_ (##cdr _e3891139264_))
                             (_hd3891239267_ (##car _e3891139264_)))
                         (if (gx#stx-null? _tl3891339269_)
                             (___kont3981139812_ _hd3891239267_)
                             (_g3890238942_))))
                     (_g3890238942_))
                 (_g3890238942_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3890238942_))))
                                             (_g3890238942_))
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd3890639251_)
                                             (if (gx#stx-pair? _tl3890739253_)
                                                 (let ((_e3892038955_
                                                        (gx#stx-e
                                                         _tl3890739253_)))
                                                   (let ((_tl3892238960_
                                                          (##cdr _e3892038955_))
                                                         (_hd3892138958_
                                                          (##car _e3892038955_)))
                                                     (if (gx#stx-pair?
                                                          _hd3892138958_)
                                                         (let ((_e3892338963_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3892138958_)))
                   (let ((_tl3892538968_ (##cdr _e3892338963_))
                         (_hd3892438966_ (##car _e3892338963_)))
                     (if (gx#stx-pair? _hd3892438966_)
                         (let ((_e3892638971_ (gx#stx-e _hd3892438966_)))
                           (let ((_tl3892838976_ (##cdr _e3892638971_))
                                 (_hd3892738974_ (##car _e3892638971_)))
                             (if (gx#stx-pair? _hd3892738974_)
                                 (let ((_e3892938979_
                                        (gx#stx-e _hd3892738974_)))
                                   (let ((_tl3893138984_ (##cdr _e3892938979_))
                                         (_hd3893038982_
                                          (##car _e3892938979_)))
                                     (if (gx#stx-null? _tl3893138984_)
                                         (if (gx#stx-pair? _tl3892838976_)
                                             (let ((_e3893238987_
                                                    (gx#stx-e _tl3892838976_)))
                                               (let ((_tl3893438992_
                                                      (##cdr _e3893238987_))
                                                     (_hd3893338990_
                                                      (##car _e3893238987_)))
                                                 (if (gx#stx-null?
                                                      _tl3893438992_)
                                                     (if (gx#stx-null?
                                                          _tl3892538968_)
                                                         (if (gx#stx-pair?
                                                              _tl3892238960_)
                                                             (let ((_e3893538995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3892238960_)))
                       (let ((_tl3893739000_ (##cdr _e3893538995_))
                             (_hd3893638998_ (##car _e3893538995_)))
                         (if (gx#stx-null? _tl3893739000_)
                             (___kont3981339814_
                              _hd3893638998_
                              _hd3893338990_
                              _hd3893038982_)
                             (_g3890238942_))))
                     (_g3890238942_))
                 (_g3890238942_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3890238942_))))
                                             (_g3890238942_))
                                         (_g3890238942_))))
                                 (_g3890238942_))))
                         (_g3890238942_))))
                 (_g3890238942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3890238942_))
                                             (_g3890238942_)))
                                     (_g3890238942_))))
                             (_g3890238942_))))))
                 _hd3880138863_
                 _hd3879838855_
                 _hd3879538847_)
                (_g3877738807_ _g3877838810_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3877738807_ _g3877838810_))
                                            (_g3877738807_ _g3877838810_))
                                        (_g3877738807_ _g3877838810_))))
                                (_g3877738807_ _g3877838810_))
                            (_g3877738807_ _g3877838810_))))
                    (_g3877738807_ _g3877838810_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3877738807_
                                                     _g3877838810_))))
                                            (_g3877738807_ _g3877838810_))))
                                    (_g3877738807_ _g3877838810_))
                                (_g3877738807_ _g3877838810_))
                            (_g3877738807_ _g3877838810_))))
                    (_g3877738807_ _g3877838810_)))))
        (_g3877639473_ _stx38775_))))
  (define gxc#optimize-match-body
    (lambda (_stx38476_ _negation38477_ _clauses38478_ _konts38479_)
      (letrec ((_push-variables38481_
                (lambda (_clause38728_ _kont38729_)
                  (let ((_clause3873038741_ _clause38728_)
                        (_kont3873138743_ _kont38729_))
                    (let* ((_E3873338747_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause3873038741_
                                     _kont3873138743_)))
                           (_K3873438763_
                            (lambda (_clause-lambda38750_ _clause-name38751_)
                              (let ((_K3873538755_
                                     (lambda (_K38753_)
                                       (cons _clause-name38751_
                                             (gxc#apply-push-match-vars
                                              _clause-lambda38750_
                                              '()
                                              _K38753_)))))
                                (if (##pair? _kont3873138743_)
                                    (let* ((_hd3873638758_
                                            (##car _kont3873138743_))
                                           (_K38761_ _hd3873638758_))
                                      (_K3873538755_ _K38761_))
                                    (_E3873338747_))))))
                      (if (##pair? _clause3873038741_)
                          (let ((_hd3873838766_ (##car _clause3873038741_))
                                (_tl3873938768_ (##cdr _clause3873038741_)))
                            (let* ((_clause-name38771_ _hd3873838766_)
                                   (_clause-lambda38773_ _tl3873938768_))
                              (_K3873438763_
                               _clause-lambda38773_
                               _clause-name38771_)))
                          (_E3873338747_))))))
               (_start-match38482_
                (lambda (_kont38662_)
                  (let* ((_g3866438680_
                          (lambda (_g3866538677_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3866538677_)))
                         (_g3866338725_
                          (lambda (_g3866538683_)
                            (if (gx#stx-pair? _g3866538683_)
                                (let ((_e3866738685_ (gx#stx-e _g3866538683_)))
                                  (let ((_hd3866838688_ (##car _e3866738685_))
                                        (_tl3866938690_ (##cdr _e3866738685_)))
                                    (if (gx#identifier? _hd3866838688_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3866838688_)
                                            (if (gx#stx-pair? _tl3866938690_)
                                                (let ((_e3867038693_
                                                       (gx#stx-e
                                                        _tl3866938690_)))
                                                  (let ((_hd3867138696_
                                                         (##car _e3867038693_))
                                                        (_tl3867238698_
                                                         (##cdr _e3867038693_)))
                                                    (if (gx#stx-null?
                                                         _hd3867138696_)
                                                        (if (gx#stx-pair?
                                                             _tl3867238698_)
                                                            (let ((_e3867338701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3867238698_)))
                      (let ((_hd3867438704_ (##car _e3867338701_))
                            (_tl3867538706_ (##cdr _e3867338701_)))
                        (if (gx#stx-null? _tl3867538706_)
                            ((lambda (_L38709_) _L38709_) _hd3867438704_)
                            (_g3866438680_ _g3866538683_))))
                    (_g3866438680_ _g3866538683_))
                (_g3866438680_ _g3866538683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3866438680_ _g3866538683_))
                                            (_g3866438680_ _g3866538683_))
                                        (_g3866438680_ _g3866538683_))))
                                (_g3866438680_ _g3866538683_)))))
                    (_g3866338725_ _kont38662_))))
               (_match-body38483_
                (lambda (_blocks38559_)
                  (let* ((_blocks3856038569_ _blocks38559_)
                         (_E3856238573_
                          (lambda ()
                            (error '"No clause matching" _blocks3856038569_)))
                         (_K3856338645_
                          (lambda (_rest38576_ _start38577_)
                            (let _lp38579_ ((_rest38581_ _rest38576_)
                                            (_body38582_
                                             (_start-match38482_
                                              _start38577_)))
                              (let* ((_rest3858338591_ _rest38581_)
                                     (_else3858538599_ (lambda () _body38582_))
                                     (_K3858738633_
                                      (lambda (_rest38602_ _block38603_)
                                        (let* ((_block3860438611_ _block38603_)
                                               (_E3860638615_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _block3860438611_)))
                                               (_K3860738621_
                                                (lambda (_kont38618_ _K38619_)
                                                  (_lp38579_
                                                   _rest38602_
                                                   (cons '%#let-values
                                                         (cons (cons (cons (cons _K38619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons _kont38618_ '()))
                             '())
                       (cons _body38582_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _block3860438611_)
                                              (let ((_hd3860838624_
                                                     (##car _block3860438611_))
                                                    (_tl3860938626_
                                                     (##cdr _block3860438611_)))
                                                (let* ((_K38629_
                                                        _hd3860838624_)
                                                       (_kont38631_
                                                        _tl3860938626_))
                                                  (_K3860738621_
                                                   _kont38631_
                                                   _K38629_)))
                                              (_E3860638615_))))))
                                (if (##pair? _rest3858338591_)
                                    (let ((_hd3858838636_
                                           (##car _rest3858338591_))
                                          (_tl3858938638_
                                           (##cdr _rest3858338591_)))
                                      (let* ((_block38641_ _hd3858838636_)
                                             (_rest38643_ _tl3858938638_))
                                        (_K3858738633_
                                         _rest38643_
                                         _block38641_)))
                                    (_else3858538599_)))))))
                    (if (##pair? _blocks3856038569_)
                        (let ((_hd3856438648_ (##car _blocks3856038569_))
                              (_tl3856538650_ (##cdr _blocks3856038569_)))
                          (if (##pair? _hd3856438648_)
                              (let ((_hd3856638653_ (##car _hd3856438648_))
                                    (_tl3856738655_ (##cdr _hd3856438648_)))
                                (if (##eq? _hd3856638653_ '#f)
                                    (let* ((_start38658_ _tl3856738655_)
                                           (_rest38660_ _tl3856538650_))
                                      (_K3856338645_ _rest38660_ _start38658_))
                                    (_E3856238573_)))
                              (_E3856238573_)))
                        (_E3856238573_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_clauses38486_
                   (map _push-variables38481_ _clauses38478_ _konts38479_))
                  (_blocks38488_
                   (gxc#optimize-match-basic-blocks _clauses38486_))
                  (_blocks38490_
                   (gxc#optimize-match-fold-basic-blocks _blocks38488_))
                  (_body38492_ (_match-body38483_ _blocks38490_))
                  (_bind38526_
                   (map (lambda (_e3849338495_)
                          (let* ((_g3849738504_ _e3849338495_)
                                 (_E3849938508_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g3849738504_)))
                                 (_K3850038514_
                                  (lambda (_kont38511_ _K38512_)
                                    (cons (cons _K38512_ '())
                                          (cons _kont38511_ '())))))
                            (if (##pair? _g3849738504_)
                                (let ((_hd3850138517_ (##car _g3849738504_))
                                      (_tl3850238519_ (##cdr _g3849738504_)))
                                  (let* ((_K38522_ _hd3850138517_)
                                         (_kont38524_ _tl3850238519_))
                                    (_K3850038514_ _kont38524_ _K38522_)))
                                (_E3849938508_))))
                        _konts38479_))
                  (_negate38556_
                   (let* ((_negation3852738534_ _negation38477_)
                          (_E3852938538_
                           (lambda ()
                             (error '"No clause matching"
                                    _negation3852738534_)))
                          (_K3853038544_
                           (lambda (_kont38541_ _K38542_)
                             (cons (cons _K38542_ '())
                                   (cons _kont38541_ '())))))
                     (if (##pair? _negation3852738534_)
                         (let ((_hd3853138547_ (##car _negation3852738534_))
                               (_tl3853238549_ (##cdr _negation3852738534_)))
                           (let* ((_K38552_ _hd3853138547_)
                                  (_kont38554_ _tl3853238549_))
                             (_K3853038544_ _kont38554_ _K38552_)))
                         (_E3852938538_)))))
             (gxc#xform-wrap-source
              (cons '%#let-values
                    (cons (cons _negate38556_ '())
                          (cons (cons '%#let-values
                                      (cons _bind38526_
                                            (cons _body38492_ '())))
                                '())))
              _stx38476_)))
         gx#current-expander-context
         (let ((__obj42674 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj42674) __obj42674))))))
  (define gxc#optimize-match-basic-blocks
    (lambda (_clauses38436_)
      (let _lp38438_ ((_rest38440_ _clauses38436_) (_blocks38441_ '()))
        (let* ((_rest3844238450_ _rest38440_)
               (_else3844438458_ (lambda () (reverse _blocks38441_)))
               (_K3844638464_
                (lambda (_rest38461_ _clause38462_)
                  (_lp38438_
                   _rest38461_
                   (gxc#optimize-match-lift-basic-blocks
                    _clause38462_
                    _blocks38441_)))))
          (if (##pair? _rest3844238450_)
              (let ((_hd3844738467_ (##car _rest3844238450_))
                    (_tl3844838469_ (##cdr _rest3844238450_)))
                (let* ((_clause38472_ _hd3844738467_)
                       (_rest38474_ _tl3844838469_))
                  (_K3844638464_ _rest38474_ _clause38472_)))
              (_else3844438458_))))))
  (define gxc#optimize-match-lift-basic-blocks
    (lambda (_clause37780_ _blocks37781_)
      (letrec ((_bind->args37783_
                (lambda (_bind38431_)
                  (foldl1 (lambda (_b38433_ _r38434_)
                            (cons (cons '%#ref (cons (car _b38433_) '()))
                                  _r38434_))
                          '()
                          _bind38431_)))
               (_create-block37784_
                (lambda (_body38380_ _let-bind38381_ _bind38382_ _assert38383_)
                  (let* ((_id38385_ (make-symbol (gensym '__match)))
                         (_id38387_ (gx#core-quote-syntax__0 _id38385_))
                         (_g42676_ (gx#core-bind-runtime!__0 _id38387_))
                         (_block38390_
                          (cons _id38387_
                                (cons _body38380_
                                      (cons _bind38382_
                                            (cons _assert38383_ '())))))
                         (_continue38392_
                          (cons '%#call
                                (cons (cons '%#ref (cons _id38387_ '()))
                                      (_bind->args37783_ _bind38382_))))
                         (_continue38428_
                          (if (null? _let-bind38381_)
                              _continue38392_
                              (let ((_locals38426_
                                     (map (lambda (_e3839338395_)
                                            (let* ((_g3839738404_
                                                    _e3839338395_)
                                                   (_E3839938408_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g3839738404_)))
                                                   (_K3840038414_
                                                    (lambda (_expr38411_
                                                             _id38412_)
                                                      (cons (cons _id38412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr38411_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g3839738404_)
                                                  (let ((_hd3840138417_
                                                         (##car _g3839738404_))
                                                        (_tl3840238419_
                                                         (##cdr _g3839738404_)))
                                                    (let* ((_id38422_
                                                            _hd3840138417_)
                                                           (_expr38424_
                                                            _tl3840238419_))
                                                      (_K3840038414_
                                                       _expr38424_
                                                       _id38422_)))
                                                  (_E3839938408_))))
                                          _let-bind38381_)))
                                (cons '%#let-values
                                      (cons _locals38426_
                                            (cons _continue38392_ '())))))))
                    (values _continue38428_ _block38390_))))
               (_basic-block37785_
                (lambda (_body37966_ _bind37967_ _assert37968_)
                  (let* ((___stx3991739918_ _body37966_)
                         (_g3797338057_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3991739918_))))
                    (let ((___kont3991939920_
                           (lambda (_L38316_ _L38317_ _L38318_)
                             (let ((_g42677_
                                    (_create-block37784_
                                     _L38317_
                                     '()
                                     _bind37967_
                                     (cons (cons _L38318_ '#t)
                                           _assert37968_))))
                               (begin
                                 (let ((_g42678_
                                        (if (##values? _g42677_)
                                            (##vector-length _g42677_)
                                            1)))
                                   (if (not (##fx= _g42678_ 2))
                                       (error "Context expects 2 values"
                                              _g42678_)))
                                 (let ((_k-continue38336_
                                        (##vector-ref _g42677_ 0))
                                       (_k-block38337_
                                        (##vector-ref _g42677_ 1)))
                                   (let* ((___stx3989939900_ _L38316_)
                                          (_g3834038349_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx3989939900_))))
                                     (let ((___kont3990139902_
                                            (lambda ()
                                              (values (cons '%#if
                                                            (cons _L38318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _k-continue38336_ (cons _L38316_ '()))))
              (cons _k-block38337_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont3990339904_
                                            (lambda ()
                                              (let ((_g42679_
                                                     (_create-block37784_
                                                      _L38316_
                                                      '()
                                                      _bind37967_
                                                      (cons (cons _L38318_ '#f)
                                                            _assert37968_))))
                                                (begin
                                                  (let ((_g42680_
                                                         (if (##values?
                                                              _g42679_)
                                                             (##vector-length
                                                              _g42679_)
                                                             1)))
                                                    (if (not (##fx= _g42680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g42680_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_e-continue38356_
                                                         (##vector-ref
                                                          _g42679_
                                                          0))
                                                        (_e-block38357_
                                                         (##vector-ref
                                                          _g42679_
                                                          1)))
                                                    (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L38318_
                                (cons _k-continue38336_
                                      (cons _e-continue38356_ '()))))
                    (cons _k-block38337_ (cons _e-block38357_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? ___stx3989939900_)
                                           (let ((_e3834238364_
                                                  (gx#stx-e
                                                   ___stx3989939900_)))
                                             (let ((_tl3834438369_
                                                    (##cdr _e3834238364_))
                                                   (_hd3834338367_
                                                    (##car _e3834238364_)))
                                               (if (gx#identifier?
                                                    _hd3834338367_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _hd3834338367_)
                                                       (___kont3990139902_)
                                                       (___kont3990339904_))
                                                   (___kont3990339904_))))
                                           (___kont3990339904_)))))))))
                          (___kont3992139922_
                           (lambda () (values _body37966_ '())))
                          (___kont3992539926_
                           (lambda (_L38145_ _L38146_ _L38147_)
                             (let* ((_let-bind38182_
                                     (map cons
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3816738170_
                                                             _g3816838172_)
                                                      (cons _g3816738170_
                                                            _g3816838172_))
                                                    '()
                                                    _L38147_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3817438177_
                                                             _g3817538179_)
                                                      (cons _g3817438177_
                                                            _g3817538179_))
                                                    '()
                                                    _L38146_))))
                                    (_g42681_
                                     (_create-block37784_
                                      _L38145_
                                      _let-bind38182_
                                      (foldl1 cons _bind37967_ _let-bind38182_)
                                      _assert37968_)))
                               (begin
                                 (let ((_g42682_
                                        (if (##values? _g42681_)
                                            (##vector-length _g42681_)
                                            1)))
                                   (if (not (##fx= _g42682_ 2))
                                       (error "Context expects 2 values"
                                              _g42682_)))
                                 (let ((_continue38184_
                                        (##vector-ref _g42681_ 0))
                                       (_block38185_
                                        (##vector-ref _g42681_ 1)))
                                   (let ()
                                     (values _continue38184_
                                             (cons _block38185_ '()))))))))
                          (___kont3992939930_
                           (lambda () (values _body37966_ '()))))
                      (let* ((___match4000840009_
                              (lambda (_e3802438069_
                                       _hd3802538072_
                                       _tl3802638074_
                                       _e3802738077_
                                       _hd3802838080_
                                       _tl3802938082_
                                       ___splice3992739928_
                                       _target3803038085_
                                       _tl3803238087_)
                                (letrec ((_loop3803338090_
                                          (lambda (_hd3803138093_
                                                   _expr3803738095_
                                                   _id3803838097_)
                                            (if (gx#stx-pair? _hd3803138093_)
                                                (let ((_e3803438100_
                                                       (gx#stx-e
                                                        _hd3803138093_)))
                                                  (let ((_lp-tl3803638105_
                                                         (##cdr _e3803438100_))
                                                        (_lp-hd3803538103_
                                                         (##car _e3803438100_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3803538103_)
                                                        (let ((_e3804138108_
                                                               (gx#stx-e
                                                                _lp-hd3803538103_)))
                                                          (let ((_tl3804338113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3804138108_))
                        (_hd3804238111_ (##car _e3804138108_)))
                    (if (gx#stx-pair? _hd3804238111_)
                        (let ((_e3804438116_ (gx#stx-e _hd3804238111_)))
                          (let ((_tl3804638121_ (##cdr _e3804438116_))
                                (_hd3804538119_ (##car _e3804438116_)))
                            (if (gx#stx-null? _tl3804638121_)
                                (if (gx#stx-pair? _tl3804338113_)
                                    (let ((_e3804738124_
                                           (gx#stx-e _tl3804338113_)))
                                      (let ((_tl3804938129_
                                             (##cdr _e3804738124_))
                                            (_hd3804838127_
                                             (##car _e3804738124_)))
                                        (if (gx#stx-null? _tl3804938129_)
                                            (_loop3803338090_
                                             _lp-tl3803638105_
                                             (cons _hd3804838127_
                                                   _expr3803738095_)
                                             (cons _hd3804538119_
                                                   _id3803838097_))
                                            (___kont3992939930_))))
                                    (___kont3992939930_))
                                (___kont3992939930_))))
                        (___kont3992939930_))))
                (___kont3992939930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_id3804038134_
                                                       (reverse _id3803838097_))
                                                      (_expr3803938132_
                                                       (reverse _expr3803738095_)))
                                                  (if (gx#stx-pair?
                                                       _tl3802938082_)
                                                      (let ((_e3805038137_
                                                             (gx#stx-e
                                                              _tl3802938082_)))
                                                        (let ((_tl3805238142_
                                                               (##cdr _e3805038137_))
                                                              (_hd3805138140_
                                                               (##car _e3805038137_)))
                                                          (if (gx#stx-null?
                                                               _tl3805238142_)
                                                              (___kont3992539926_
                                                               _hd3805138140_
                                                               _expr3803938132_
                                                               _id3804038134_)
                                                              (___kont3992939930_))))
                                                      (___kont3992939930_)))))))
                                  (_loop3803338090_
                                   _target3803038085_
                                   '()
                                   '()))))
                             (___match3998439985_
                              (lambda (_e3799038193_
                                       _hd3799138196_
                                       _tl3799238198_
                                       _e3799338201_
                                       _hd3799438204_
                                       _tl3799538206_
                                       ___splice3992339924_
                                       _target3799638209_
                                       _tl3799838211_)
                                (letrec ((_loop3799938214_
                                          (lambda (_hd3799738217_)
                                            (if (gx#stx-pair? _hd3799738217_)
                                                (let ((_e3800038220_
                                                       (gx#stx-e
                                                        _hd3799738217_)))
                                                  (let ((_lp-tl3800238225_
                                                         (##cdr _e3800038220_))
                                                        (_lp-hd3800138223_
                                                         (##car _e3800038220_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3800138223_)
                                                        (let ((_e3800338228_
                                                               (gx#stx-e
                                                                _lp-hd3800138223_)))
                                                          (let ((_tl3800538233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3800338228_))
                        (_hd3800438231_ (##car _e3800338228_)))
                    (if (gx#stx-pair? _hd3800438231_)
                        (let ((_e3800638236_ (gx#stx-e _hd3800438231_)))
                          (let ((_tl3800838241_ (##cdr _e3800638236_))
                                (_hd3800738239_ (##car _e3800638236_)))
                            (if (gx#stx-null? _tl3800838241_)
                                (if (gx#stx-pair? _tl3800538233_)
                                    (let ((_e3800938244_
                                           (gx#stx-e _tl3800538233_)))
                                      (let ((_tl3801138249_
                                             (##cdr _e3800938244_))
                                            (_hd3801038247_
                                             (##car _e3800938244_)))
                                        (if (gx#stx-pair? _hd3801038247_)
                                            (let ((_e3801238252_
                                                   (gx#stx-e _hd3801038247_)))
                                              (let ((_tl3801438257_
                                                     (##cdr _e3801238252_))
                                                    (_hd3801338255_
                                                     (##car _e3801238252_)))
                                                (if (gx#identifier?
                                                     _hd3801338255_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3801338255_)
                                                        (if (gx#stx-pair?
                                                             _tl3801438257_)
                                                            (let ((_e3801538260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3801438257_)))
                      (let ((_tl3801738265_ (##cdr _e3801538260_))
                            (_hd3801638263_ (##car _e3801538260_)))
                        (if (gx#stx-null? _tl3801738265_)
                            (if (gx#stx-null? _tl3801138249_)
                                (_loop3799938214_ _lp-tl3800238225_)
                                (___match4000840009_
                                 _e3799038193_
                                 _hd3799138196_
                                 _tl3799238198_
                                 _e3799338201_
                                 _hd3799438204_
                                 _tl3799538206_
                                 ___splice3992339924_
                                 _target3799638209_
                                 _tl3799838211_))
                            (___match4000840009_
                             _e3799038193_
                             _hd3799138196_
                             _tl3799238198_
                             _e3799338201_
                             _hd3799438204_
                             _tl3799538206_
                             ___splice3992339924_
                             _target3799638209_
                             _tl3799838211_))))
                    (___match4000840009_
                     _e3799038193_
                     _hd3799138196_
                     _tl3799238198_
                     _e3799338201_
                     _hd3799438204_
                     _tl3799538206_
                     ___splice3992339924_
                     _target3799638209_
                     _tl3799838211_))
                (___match4000840009_
                 _e3799038193_
                 _hd3799138196_
                 _tl3799238198_
                 _e3799338201_
                 _hd3799438204_
                 _tl3799538206_
                 ___splice3992339924_
                 _target3799638209_
                 _tl3799838211_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4000840009_
                                                     _e3799038193_
                                                     _hd3799138196_
                                                     _tl3799238198_
                                                     _e3799338201_
                                                     _hd3799438204_
                                                     _tl3799538206_
                                                     ___splice3992339924_
                                                     _target3799638209_
                                                     _tl3799838211_))))
                                            (___match4000840009_
                                             _e3799038193_
                                             _hd3799138196_
                                             _tl3799238198_
                                             _e3799338201_
                                             _hd3799438204_
                                             _tl3799538206_
                                             ___splice3992339924_
                                             _target3799638209_
                                             _tl3799838211_))))
                                    (___match4000840009_
                                     _e3799038193_
                                     _hd3799138196_
                                     _tl3799238198_
                                     _e3799338201_
                                     _hd3799438204_
                                     _tl3799538206_
                                     ___splice3992339924_
                                     _target3799638209_
                                     _tl3799838211_))
                                (___match4000840009_
                                 _e3799038193_
                                 _hd3799138196_
                                 _tl3799238198_
                                 _e3799338201_
                                 _hd3799438204_
                                 _tl3799538206_
                                 ___splice3992339924_
                                 _target3799638209_
                                 _tl3799838211_))))
                        (___match4000840009_
                         _e3799038193_
                         _hd3799138196_
                         _tl3799238198_
                         _e3799338201_
                         _hd3799438204_
                         _tl3799538206_
                         ___splice3992339924_
                         _target3799638209_
                         _tl3799838211_))))
                (___match4000840009_
                 _e3799038193_
                 _hd3799138196_
                 _tl3799238198_
                 _e3799338201_
                 _hd3799438204_
                 _tl3799538206_
                 ___splice3992339924_
                 _target3799638209_
                 _tl3799838211_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (if (gx#stx-pair?
                                                       _tl3799538206_)
                                                      (let ((_e3801838269_
                                                             (gx#stx-e
                                                              _tl3799538206_)))
                                                        (let ((_tl3802038274_
                                                               (##cdr _e3801838269_))
                                                              (_hd3801938272_
                                                               (##car _e3801838269_)))
                                                          (if (gx#stx-null?
                                                               _tl3802038274_)
                                                              (___kont3992139922_)
                                                              (___match4000840009_
                                                               _e3799038193_
                                                               _hd3799138196_
                                                               _tl3799238198_
                                                               _e3799338201_
                                                               _hd3799438204_
                                                               _tl3799538206_
                                                               ___splice3992339924_
                                                               _target3799638209_
                                                               _tl3799838211_))))
                                                      (___match4000840009_
                                                       _e3799038193_
                                                       _hd3799138196_
                                                       _tl3799238198_
                                                       _e3799338201_
                                                       _hd3799438204_
                                                       _tl3799538206_
                                                       ___splice3992339924_
                                                       _target3799638209_
                                                       _tl3799838211_)))))))
                                  (_loop3799938214_ _target3799638209_)))))
                        (if (gx#stx-pair? ___stx3991739918_)
                            (let ((_e3797838284_ (gx#stx-e ___stx3991739918_)))
                              (let ((_tl3798038289_ (##cdr _e3797838284_))
                                    (_hd3797938287_ (##car _e3797838284_)))
                                (if (gx#identifier? _hd3797938287_)
                                    (if (gx#stx-eq? '%#if _hd3797938287_)
                                        (if (gx#stx-pair? _tl3798038289_)
                                            (let ((_e3798138292_
                                                   (gx#stx-e _tl3798038289_)))
                                              (let ((_tl3798338297_
                                                     (##cdr _e3798138292_))
                                                    (_hd3798238295_
                                                     (##car _e3798138292_)))
                                                (if (gx#stx-pair?
                                                     _tl3798338297_)
                                                    (let ((_e3798438300_
                                                           (gx#stx-e
                                                            _tl3798338297_)))
                                                      (let ((_tl3798638305_
                                                             (##cdr _e3798438300_))
                                                            (_hd3798538303_
                                                             (##car _e3798438300_)))
                                                        (if (gx#stx-pair?
                                                             _tl3798638305_)
                                                            (let ((_e3798738308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3798638305_)))
                      (let ((_tl3798938313_ (##cdr _e3798738308_))
                            (_hd3798838311_ (##car _e3798738308_)))
                        (if (gx#stx-null? _tl3798938313_)
                            (___kont3991939920_
                             _hd3798838311_
                             _hd3798538303_
                             _hd3798238295_)
                            (___kont3992939930_))))
                    (___kont3992939930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3992939930_))))
                                            (___kont3992939930_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3797938287_)
                                            (if (gx#stx-pair? _tl3798038289_)
                                                (let ((_e3799338201_
                                                       (gx#stx-e
                                                        _tl3798038289_)))
                                                  (let ((_tl3799538206_
                                                         (##cdr _e3799338201_))
                                                        (_hd3799438204_
                                                         (##car _e3799338201_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3799438204_)
                                                        (let ((___splice3992339924_
                                                               (gx#syntax-split-splice
                                                                _hd3799438204_
                                                                '0)))
                                                          (let ((_tl3799838211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice3992339924_ '1))
                        (_target3799638209_
                         (##vector-ref ___splice3992339924_ '0)))
                    (if (gx#stx-null? _tl3799838211_)
                        (___match3998439985_
                         _e3797838284_
                         _hd3797938287_
                         _tl3798038289_
                         _e3799338201_
                         _hd3799438204_
                         _tl3799538206_
                         ___splice3992339924_
                         _target3799638209_
                         _tl3799838211_)
                        (___kont3992939930_))))
                (___kont3992939930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3992939930_))
                                            (___kont3992939930_)))
                                    (___kont3992939930_))))
                            (___kont3992939930_)))))))
               (_fold-blocks37786_
                (lambda (_rest37885_ _blocks37886_)
                  (let* ((_rest3788737904_ _rest37885_)
                         (_E3789037908_
                          (lambda ()
                            (error '"No clause matching" _rest3788737904_))))
                    (let ((_K3789237928_
                           (lambda (_rest37919_
                                    _assert37920_
                                    _bind37921_
                                    _body37922_
                                    _name37923_)
                             (let ((_g42683_
                                    (_basic-block37785_
                                     _body37922_
                                     _bind37921_
                                     _assert37920_)))
                               (begin
                                 (let ((_g42684_
                                        (if (##values? _g42683_)
                                            (##vector-length _g42683_)
                                            1)))
                                   (if (not (##fx= _g42684_ 2))
                                       (error "Context expects 2 values"
                                              _g42684_)))
                                 (let ((_body37925_ (##vector-ref _g42683_ 0))
                                       (_body-blocks37926_
                                        (##vector-ref _g42683_ 1)))
                                   (_fold-blocks37786_
                                    (foldl1 cons
                                            _rest37919_
                                            _body-blocks37926_)
                                    (cons (cons _name37923_
                                                (cons 'continue:
                                                      (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (reverse (map car _bind37921_))
                                (cons _body37925_ '())))
                    (cons _assert37920_ (cons _bind37921_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _blocks37886_)))))))
                          (_K3789137913_ (lambda () _blocks37886_)))
                      (let ((_try-match3788937916_
                             (lambda ()
                               (if (##null? _rest3788737904_)
                                   (_K3789137913_)
                                   (_E3789037908_)))))
                        (if (##pair? _rest3788737904_)
                            (let ((_tl3789437933_ (##cdr _rest3788737904_))
                                  (_hd3789337931_ (##car _rest3788737904_)))
                              (if (##pair? _hd3789337931_)
                                  (let ((_tl3789637938_ (##cdr _hd3789337931_))
                                        (_hd3789537936_
                                         (##car _hd3789337931_)))
                                    (if (##pair? _tl3789637938_)
                                        (let ((_tl3789837945_
                                               (##cdr _tl3789637938_))
                                              (_hd3789737943_
                                               (##car _tl3789637938_)))
                                          (if (##pair? _tl3789837945_)
                                              (let ((_tl3790037952_
                                                     (##cdr _tl3789837945_))
                                                    (_hd3789937950_
                                                     (##car _tl3789837945_)))
                                                (if (##pair? _tl3790037952_)
                                                    (let ((_tl3790237959_
                                                           (##cdr _tl3790037952_))
                                                          (_hd3790137957_
                                                           (##car _tl3790037952_)))
                                                      (if (##null? _tl3790237959_)
                                                          (let ((_name37941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3789537936_)
                        (_body37948_ _hd3789737943_)
                        (_bind37955_ _hd3789937950_)
                        (_assert37962_ _hd3790137957_)
                        (_rest37964_ _tl3789437933_))
                    (_K3789237928_
                     _rest37964_
                     _assert37962_
                     _bind37955_
                     _body37948_
                     _name37941_))
                  (_E3789037908_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3789037908_)))
                                              (_E3789037908_)))
                                        (_E3789037908_)))
                                  (_E3789037908_)))
                            (_try-match3788937916_))))))))
        (let* ((_clause3778737794_ _clause37780_)
               (_E3778937798_
                (lambda () (error '"No clause matching" _clause3778737794_)))
               (_K3779037873_
                (lambda (_body37801_ _name37802_)
                  (let* ((_g3780437820_
                          (lambda (_g3780537817_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3780537817_)))
                         (_g3780337870_
                          (lambda (_g3780537823_)
                            (if (gx#stx-pair? _g3780537823_)
                                (let ((_e3780737825_ (gx#stx-e _g3780537823_)))
                                  (let ((_hd3780837828_ (##car _e3780737825_))
                                        (_tl3780937830_ (##cdr _e3780737825_)))
                                    (if (gx#identifier? _hd3780837828_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3780837828_)
                                            (if (gx#stx-pair? _tl3780937830_)
                                                (let ((_e3781037833_
                                                       (gx#stx-e
                                                        _tl3780937830_)))
                                                  (let ((_hd3781137836_
                                                         (##car _e3781037833_))
                                                        (_tl3781237838_
                                                         (##cdr _e3781037833_)))
                                                    (if (gx#stx-null?
                                                         _hd3781137836_)
                                                        (if (gx#stx-pair?
                                                             _tl3781237838_)
                                                            (let ((_e3781337841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3781237838_)))
                      (let ((_hd3781437844_ (##car _e3781337841_))
                            (_tl3781537846_ (##cdr _e3781337841_)))
                        (if (gx#stx-null? _tl3781537846_)
                            ((lambda (_L37849_)
                               (let ((_g42685_
                                      (_basic-block37785_ _L37849_ '() '())))
                                 (begin
                                   (let ((_g42686_
                                          (if (##values? _g42685_)
                                              (##vector-length _g42685_)
                                              1)))
                                     (if (not (##fx= _g42686_ 2))
                                         (error "Context expects 2 values"
                                                _g42686_)))
                                   (let ((_body37867_
                                          (##vector-ref _g42685_ 0))
                                         (_body-blocks37868_
                                          (##vector-ref _g42685_ 1)))
                                     (_fold-blocks37786_
                                      _body-blocks37868_
                                      (cons (cons _name37802_
                                                  (cons 'restart:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '() (cons _body37867_ '())))
                      (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks37781_))))))
                             _hd3781437844_)
                            (_g3780437820_ _g3780537823_))))
                    (_g3780437820_ _g3780537823_))
                (_g3780437820_ _g3780537823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3780437820_ _g3780537823_))
                                            (_g3780437820_ _g3780537823_))
                                        (_g3780437820_ _g3780537823_))))
                                (_g3780437820_ _g3780537823_)))))
                    (_g3780337870_ _body37801_)))))
          (if (##pair? _clause3778737794_)
              (let ((_hd3779137876_ (##car _clause3778737794_))
                    (_tl3779237878_ (##cdr _clause3778737794_)))
                (let* ((_name37881_ _hd3779137876_)
                       (_body37883_ _tl3779237878_))
                  (_K3779037873_ _body37883_ _name37881_)))
              (_E3778937798_))))))
  (define gxc#optimize-match-fold-basic-blocks
    (lambda (_blocks37386_)
      (let _lp37388_ ((_rest37390_ _blocks37386_) (_blocks37391_ '()))
        (let* ((_rest3739237400_ _rest37390_)
               (_else3739437449_
                (lambda ()
                  (foldl1 (lambda (_block37408_ _r37409_)
                            (let* ((_block3741037421_ _block37408_)
                                   (_E3741237425_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _block3741037421_)))
                                   (_K3741337431_
                                    (lambda (_kont37428_ _name37429_)
                                      (cons (cons _name37429_ _kont37428_)
                                            _r37409_))))
                              (if (##pair? _block3741037421_)
                                  (let ((_hd3741437434_
                                         (##car _block3741037421_))
                                        (_tl3741537436_
                                         (##cdr _block3741037421_)))
                                    (let ((_name37439_ _hd3741437434_))
                                      (if (##pair? _tl3741537436_)
                                          (let ((_tl3741737441_
                                                 (##cdr _tl3741537436_)))
                                            (if (##pair? _tl3741737441_)
                                                (let* ((_hd3741837444_
                                                        (##car _tl3741737441_))
                                                       (_kont37447_
                                                        _hd3741837444_))
                                                  (_K3741337431_
                                                   _kont37447_
                                                   _name37439_))
                                                (_E3741237425_)))
                                          (_E3741237425_))))
                                  (_E3741237425_))))
                          '()
                          _blocks37391_)))
               (_K3739637768_
                (lambda (_rest37452_ _block37453_)
                  (let* ((_block3745437479_ _block37453_)
                         (_E3745737483_
                          (lambda ()
                            (error '"No clause matching" _block3745437479_))))
                    (let ((_K3746937739_
                           (lambda (_assert37661_ _kont37662_ _name37663_)
                             (let* ((_g3766537681_
                                     (lambda (_g3766637678_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3766637678_)))
                                    (_g3766437736_
                                     (lambda (_g3766637684_)
                                       (if (gx#stx-pair? _g3766637684_)
                                           (let ((_e3766837686_
                                                  (gx#stx-e _g3766637684_)))
                                             (let ((_hd3766937689_
                                                    (##car _e3766837686_))
                                                   (_tl3767037691_
                                                    (##cdr _e3766837686_)))
                                               (if (gx#identifier?
                                                    _hd3766937689_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3766937689_)
                                                       (if (gx#stx-pair?
                                                            _tl3767037691_)
                                                           (let ((_e3767137694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3767037691_)))
                     (let ((_hd3767237697_ (##car _e3767137694_))
                           (_tl3767337699_ (##cdr _e3767137694_)))
                       (if (gx#stx-null? _hd3767237697_)
                           (if (gx#stx-pair? _tl3767337699_)
                               (let ((_e3767437702_ (gx#stx-e _tl3767337699_)))
                                 (let ((_hd3767537705_ (##car _e3767437702_))
                                       (_tl3767637707_ (##cdr _e3767437702_)))
                                   (if (gx#stx-null? _tl3767637707_)
                                       ((lambda (_L37710_)
                                          (let* ((_body37725_
                                                  (gxc#optimize-match-block
                                                   _L37710_
                                                   _assert37661_
                                                   '()
                                                   _rest37452_))
                                                 (_block37727_
                                                  (cons _name37663_
                                                        (cons 'restart:
                                                              (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '() (cons _body37725_ '())))
                            (cons _assert37661_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_blocks37729_
                                                  (cons _block37727_
                                                        _blocks37391_))
                                                 (_rest37731_
                                                  (gxc#optimize-match-prune-blocks
                                                   _rest37452_
                                                   _blocks37729_))
                                                 (_rest37733_
                                                  (gxc#optimize-match-fuse-restart-blocks
                                                   _rest37731_
                                                   _blocks37729_)))
                                            (_lp37388_
                                             _rest37733_
                                             _blocks37729_)))
                                        _hd3767537705_)
                                       (_g3766537681_ _g3766637684_))))
                               (_g3766537681_ _g3766637684_))
                           (_g3766537681_ _g3766637684_))))
                   (_g3766537681_ _g3766637684_))
               (_g3766537681_ _g3766637684_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3766537681_
                                                    _g3766637684_))))
                                           (_g3766537681_ _g3766637684_)))))
                               (_g3766437736_ _kont37662_))))
                          (_K3745837622_
                           (lambda (_bind37487_
                                    _assert37488_
                                    _kont37489_
                                    _name37490_)
                             (let* ((_g3749237518_
                                     (lambda (_g3749337515_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3749337515_)))
                                    (_g3749137619_
                                     (lambda (_g3749337521_)
                                       (if (gx#stx-pair? _g3749337521_)
                                           (let ((_e3749637523_
                                                  (gx#stx-e _g3749337521_)))
                                             (let ((_hd3749737526_
                                                    (##car _e3749637523_))
                                                   (_tl3749837528_
                                                    (##cdr _e3749637523_)))
                                               (if (gx#identifier?
                                                    _hd3749737526_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3749737526_)
                                                       (if (gx#stx-pair?
                                                            _tl3749837528_)
                                                           (let ((_e3749937531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3749837528_)))
                     (let ((_hd3750037534_ (##car _e3749937531_))
                           (_tl3750137536_ (##cdr _e3749937531_)))
                       (if (gx#stx-pair/null? _hd3750037534_)
                           (let ((_g42687_
                                  (gx#syntax-split-splice _hd3750037534_ '0)))
                             (begin
                               (let ((_g42688_
                                      (if (##values? _g42687_)
                                          (##vector-length _g42687_)
                                          1)))
                                 (if (not (##fx= _g42688_ 2))
                                     (error "Context expects 2 values"
                                            _g42688_)))
                               (let ((_target3750237539_
                                      (##vector-ref _g42687_ 0))
                                     (_tl3750437541_
                                      (##vector-ref _g42687_ 1)))
                                 (if (gx#stx-null? _tl3750437541_)
                                     (letrec ((_loop3750537544_
                                               (lambda (_hd3750337547_
                                                        _id3750937549_)
                                                 (if (gx#stx-pair?
                                                      _hd3750337547_)
                                                     (let ((_e3750637552_
                                                            (gx#stx-e
                                                             _hd3750337547_)))
                                                       (let ((_lp-hd3750737555_
                                                              (##car _e3750637552_))
                                                             (_lp-tl3750837557_
                                                              (##cdr _e3750637552_)))
                                                         (_loop3750537544_
                                                          _lp-tl3750837557_
                                                          (cons _lp-hd3750737555_
                                                                _id3750937549_))))
                                                     (let ((_id3751037560_
                                                            (reverse _id3750937549_)))
                                                       (if (gx#stx-pair?
                                                            _tl3750137536_)
                                                           (let ((_e3751137563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3750137536_)))
                     (let ((_hd3751237566_ (##car _e3751137563_))
                           (_tl3751337568_ (##cdr _e3751137563_)))
                       (if (gx#stx-null? _tl3751337568_)
                           ((lambda (_L37571_ _L37572_)
                              (let* ((_body37601_
                                      (gxc#optimize-match-block
                                       _L37571_
                                       _assert37488_
                                       _bind37487_
                                       _rest37452_))
                                     (_block37610_
                                      (cons _name37490_
                                            (cons 'continue:
                                                  (cons (cons '%#lambda
                                                              (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g3760237605_ _g3760337607_)
                                        (cons _g3760237605_ _g3760337607_))
                                      '()
                                      _L37572_))
                            (cons _body37601_ '())))
                (cons _assert37488_ (cons _bind37487_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_blocks37612_
                                      (cons _block37610_ _blocks37391_))
                                     (_rest37614_
                                      (gxc#optimize-match-prune-blocks
                                       _rest37452_
                                       _blocks37612_))
                                     (_rest37616_
                                      (gxc#optimize-match-fuse-restart-blocks
                                       _rest37614_
                                       _blocks37612_)))
                                (_lp37388_ _rest37616_ _blocks37612_)))
                            _hd3751237566_
                            _id3751037560_)
                           (_g3749237518_ _g3749337521_))))
                   (_g3749237518_ _g3749337521_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3750537544_
                                        _target3750237539_
                                        '()))
                                     (_g3749237518_ _g3749337521_)))))
                           (_g3749237518_ _g3749337521_))))
                   (_g3749237518_ _g3749337521_))
               (_g3749237518_ _g3749337521_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3749237518_
                                                    _g3749337521_))))
                                           (_g3749237518_ _g3749337521_)))))
                               (_g3749137619_ _kont37489_)))))
                      (if (##pair? _block3745437479_)
                          (let ((_tl3747137744_ (##cdr _block3745437479_))
                                (_hd3747037742_ (##car _block3745437479_)))
                            (if (##pair? _tl3747137744_)
                                (let ((_tl3747337751_ (##cdr _tl3747137744_))
                                      (_hd3747237749_ (##car _tl3747137744_)))
                                  (if (##eq? _hd3747237749_ 'restart:)
                                      (if (##pair? _tl3747337751_)
                                          (let ((_tl3747537756_
                                                 (##cdr _tl3747337751_))
                                                (_hd3747437754_
                                                 (##car _tl3747337751_)))
                                            (if (##pair? _tl3747537756_)
                                                (let ((_tl3747737763_
                                                       (##cdr _tl3747537756_))
                                                      (_hd3747637761_
                                                       (##car _tl3747537756_)))
                                                  (if (##null? _tl3747737763_)
                                                      (let ((_name37747_
                                                             _hd3747037742_)
                                                            (_kont37759_
                                                             _hd3747437754_)
                                                            (_assert37766_
                                                             _hd3747637761_))
                                                        (_K3746937739_
                                                         _assert37766_
                                                         _kont37759_
                                                         _name37747_))
                                                      (_E3745737483_)))
                                                (_E3745737483_)))
                                          (_E3745737483_))
                                      (if (##eq? _hd3747237749_ 'continue:)
                                          (if (##pair? _tl3747337751_)
                                              (let ((_tl3746437639_
                                                     (##cdr _tl3747337751_))
                                                    (_hd3746337637_
                                                     (##car _tl3747337751_)))
                                                (if (##pair? _tl3746437639_)
                                                    (let ((_tl3746637646_
                                                           (##cdr _tl3746437639_))
                                                          (_hd3746537644_
                                                           (##car _tl3746437639_)))
                                                      (if (##pair? _tl3746637646_)
                                                          (let ((_tl3746837653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _tl3746637646_))
                        (_hd3746737651_ (##car _tl3746637646_)))
                    (if (##null? _tl3746837653_)
                        (let ((_name37630_ _hd3747037742_)
                              (_kont37642_ _hd3746337637_)
                              (_assert37649_ _hd3746537644_)
                              (_bind37656_ _hd3746737651_))
                          (_K3745837622_
                           _bind37656_
                           _assert37649_
                           _kont37642_
                           _name37630_))
                        (_E3745737483_)))
                  (_E3745737483_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3745737483_)))
                                              (_E3745737483_))
                                          (_E3745737483_))))
                                (_E3745737483_)))
                          (_E3745737483_)))))))
          (if (##pair? _rest3739237400_)
              (let ((_hd3739737771_ (##car _rest3739237400_))
                    (_tl3739837773_ (##cdr _rest3739237400_)))
                (let* ((_block37776_ _hd3739737771_)
                       (_rest37778_ _tl3739837773_))
                  (_K3739637768_ _rest37778_ _block37776_)))
              (_else3739437449_))))))
  (define gxc#optimize-match-block
    (lambda (_body32009_ _assert32010_ _bind32011_ _blocks32012_)
      (letrec* ((_env-assert32247_ '())
                (_env-type32248_ '())
                (_env-bind32249_ '())
                (_in-splice?32250_ '#f)
                (_do-assert32251_
                 (lambda (_assert37309_ _K37310_)
                   (if (pair? _assert37309_)
                       (let _lp37312_ ((_rest37314_ _assert37309_)
                                       (_env-assert37315_ _env-assert32247_)
                                       (_env-type37316_ _env-type32248_))
                         (let* ((_rest3731737325_ _rest37314_)
                                (_else3731937333_
                                 (lambda ()
                                   (_do-assert!32257_
                                    _env-assert37315_
                                    _env-type37316_
                                    _K37310_)))
                                (_K3732137374_
                                 (lambda (_rest37336_ _assert37337_)
                                   (let* ((_assert3733837345_ _assert37337_)
                                          (_E3734037349_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _assert3733837345_)))
                                          (_K3734137362_
                                           (lambda (_val37352_ _expr37353_)
                                             (let* ((_sexpr37355_
                                                     (gxc#apply-generate-runtime-repr
                                                      _expr37353_))
                                                    (_env-assert37357_
                                                     (cons (cons _sexpr37355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _val37352_)
                   _env-assert37315_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_env-type37359_
                                                     (_fold-assert-type32253_
                                                      _expr37353_
                                                      _val37352_
                                                      _env-type37316_)))
                                               (_lp37312_
                                                _rest37336_
                                                _env-assert37357_
                                                _env-type37359_)))))
                                     (if (##pair? _assert3733837345_)
                                         (let ((_hd3734237365_
                                                (##car _assert3733837345_))
                                               (_tl3734337367_
                                                (##cdr _assert3733837345_)))
                                           (let* ((_expr37370_ _hd3734237365_)
                                                  (_val37372_ _tl3734337367_))
                                             (_K3734137362_
                                              _val37372_
                                              _expr37370_)))
                                         (_E3734037349_))))))
                           (if (##pair? _rest3731737325_)
                               (let ((_hd3732237377_ (##car _rest3731737325_))
                                     (_tl3732337379_ (##cdr _rest3731737325_)))
                                 (let* ((_assert37382_ _hd3732237377_)
                                        (_rest37384_ _tl3732337379_))
                                   (_K3732137374_ _rest37384_ _assert37382_)))
                               (_else3731937333_))))
                       (_K37310_))))
                (_predicate-type32252_
                 (lambda (_id37254_)
                   (let* ((_sym37256_ (gxc#identifier-symbol _id37254_))
                          (_$e37258_ _sym37256_))
                     (let ((_default3726037291_
                            (lambda ()
                              (let* ((_g3726337270_
                                      (gxc#optimizer-resolve-type _sym37256_))
                                     (_else3726537278_ (lambda () '#f))
                                     (_K3726737283_
                                      (lambda (_struct-t37281_)
                                        (gxc#optimizer-resolve-type
                                         _struct-t37281_))))
                                (if (##structure-instance-of?
                                     _g3726337270_
                                     'gxc#!struct-pred::t)
                                    (let* ((_e3726837286_
                                            (##vector-ref _g3726337270_ '1))
                                           (_struct-t37289_ _e3726837286_))
                                      (gxc#optimizer-resolve-type
                                       _struct-t37289_))
                                    (_else3726537278_)))))
                           (_table3726137293_
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
                       (if (symbol? _$e37258_)
                           (let* ((_h37296_ (##symbol-hash _$e37258_))
                                  (_ix37299_ (##fxmodulo _h37296_ '63))
                                  (_q37302_
                                   (##vector-ref _table3726137293_ _ix37299_)))
                             (if _q37302_
                                 (if (eq? (##car _q37302_) _$e37258_)
                                     (let ((_x37306_ (##cdr _q37302_)))
                                       (if (##fx< _x37306_ '5)
                                           (if (##fx< _x37306_ '2)
                                               (if (##fx= _x37306_ '0)
                                                   'pair
                                                   'null)
                                               (if (##fx= _x37306_ '2)
                                                   'vector
                                                   (if (##fx= _x37306_ '3)
                                                       'box
                                                       'identifier)))
                                           (if (##fx< _x37306_ '7)
                                               (if (##fx= _x37306_ '5)
                                                   'stx-pair
                                                   'stx-null)
                                               (if (##fx= _x37306_ '7)
                                                   'stx-vector
                                                   (if (##fx= _x37306_ '8)
                                                       'stx-box
                                                       'stx-datum)))))
                                     (_default3726037291_))
                                 (_default3726037291_)))
                           (_default3726037291_))))))
                (_fold-assert-type32253_
                 (lambda (_expr36202_ _val36203_ _env36204_)
                   (let* ((___stx4017540176_ _expr36202_)
                          (_g3621236391_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4017540176_))))
                     (let ((___kont4017740178_
                            (lambda (_L37223_ _L37224_)
                              (let ((_$e37246_
                                     (_predicate-type32252_ _L37224_)))
                                (if _$e37246_
                                    ((lambda (_t37249_)
                                       (cons (cons _L37223_
                                                   (cons _t37249_
                                                         (cons _val36203_
                                                               '())))
                                             _env36204_))
                                     _$e37246_)
                                    _env36204_))))
                           (___kont4017940180_
                            (lambda (_L36913_ _L36914_ _L36915_)
                              (let ((_$e36940_
                                     (gxc#identifier-symbol _L36915_)))
                                (if (let ((_$e36943_ (eq? '##fx= _$e36940_)))
                                      (if _$e36943_
                                          _$e36943_
                                          (eq? 'fx= _$e36940_)))
                                    (let* ((___stx4008140082_ _L36914_)
                                           (_g3694736976_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               ___stx4008140082_))))
                                      (let ((___kont4008340084_
                                             (lambda (_L37044_ _L37045_)
                                               (let ((_$e37070_
                                                      (_countf-symbol32254_
                                                       _L37045_)))
                                                 (if _$e37070_
                                                     ((lambda (_sym37073_)
                                                        (cons (cons _L37044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym37073_
                                  (cons (gx#stx-e _L36913_)
                                        (cons _val36203_ '()))))
                      _env36204_))
              _$e37070_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _env36204_))))
                                            (___kont4008540086_
                                             (lambda () _env36204_)))
                                        (if (gx#stx-pair? ___stx4008140082_)
                                            (let ((_e3695136988_
                                                   (gx#stx-e
                                                    ___stx4008140082_)))
                                              (let ((_tl3695336993_
                                                     (##cdr _e3695136988_))
                                                    (_hd3695236991_
                                                     (##car _e3695136988_)))
                                                (if (gx#identifier?
                                                     _hd3695236991_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3695236991_)
                                                        (if (gx#stx-pair?
                                                             _tl3695336993_)
                                                            (let ((_e3695436996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3695336993_)))
                      (let ((_tl3695637001_ (##cdr _e3695436996_))
                            (_hd3695536999_ (##car _e3695436996_)))
                        (if (gx#stx-pair? _hd3695536999_)
                            (let ((_e3695737004_ (gx#stx-e _hd3695536999_)))
                              (let ((_tl3695937009_ (##cdr _e3695737004_))
                                    (_hd3695837007_ (##car _e3695737004_)))
                                (if (gx#identifier? _hd3695837007_)
                                    (if (gx#stx-eq? '%#ref _hd3695837007_)
                                        (if (gx#stx-pair? _tl3695937009_)
                                            (let ((_e3696037012_
                                                   (gx#stx-e _tl3695937009_)))
                                              (let ((_tl3696237017_
                                                     (##cdr _e3696037012_))
                                                    (_hd3696137015_
                                                     (##car _e3696037012_)))
                                                (if (gx#stx-null?
                                                     _tl3696237017_)
                                                    (if (gx#stx-pair?
                                                         _tl3695637001_)
                                                        (let ((_e3696337020_
                                                               (gx#stx-e
                                                                _tl3695637001_)))
                                                          (let ((_tl3696537025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3696337020_))
                        (_hd3696437023_ (##car _e3696337020_)))
                    (if (gx#stx-pair? _hd3696437023_)
                        (let ((_e3696637028_ (gx#stx-e _hd3696437023_)))
                          (let ((_tl3696837033_ (##cdr _e3696637028_))
                                (_hd3696737031_ (##car _e3696637028_)))
                            (if (gx#identifier? _hd3696737031_)
                                (if (gx#stx-eq? '%#ref _hd3696737031_)
                                    (if (gx#stx-pair? _tl3696837033_)
                                        (let ((_e3696937036_
                                               (gx#stx-e _tl3696837033_)))
                                          (let ((_tl3697137041_
                                                 (##cdr _e3696937036_))
                                                (_hd3697037039_
                                                 (##car _e3696937036_)))
                                            (if (gx#stx-null? _tl3697137041_)
                                                (if (gx#stx-null?
                                                     _tl3696537025_)
                                                    (___kont4008340084_
                                                     _hd3697037039_
                                                     _hd3696137015_)
                                                    (___kont4008540086_))
                                                (___kont4008540086_))))
                                        (___kont4008540086_))
                                    (___kont4008540086_))
                                (___kont4008540086_))))
                        (___kont4008540086_))))
                (___kont4008540086_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4008540086_))))
                                            (___kont4008540086_))
                                        (___kont4008540086_))
                                    (___kont4008540086_))))
                            (___kont4008540086_))))
                    (___kont4008540086_))
                (___kont4008540086_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4008540086_))))
                                            (___kont4008540086_))))
                                    (if (let ((_$e37078_
                                               (eq? '##eq? _$e36940_)))
                                          (if _$e37078_
                                              _$e37078_
                                              (let ((_$e37081_
                                                     (eq? 'eq? _$e36940_)))
                                                (if _$e37081_
                                                    _$e37081_
                                                    (let ((_$e37084_
                                                           (eq? '##eqv?
                                                                _$e36940_)))
                                                      (if _$e37084_
                                                          _$e37084_
                                                          (let ((_$e37087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (eq? 'eqv? _$e36940_)))
                    (if _$e37087_
                        _$e37087_
                        (let ((_$e37090_ (eq? '##equal? _$e36940_)))
                          (if _$e37090_
                              _$e37090_
                              (let ((_$e37093_ (eq? 'equal? _$e36940_)))
                                (if _$e37093_
                                    _$e37093_
                                    (let ((_$e37096_
                                           (eq? 'gx#free-identifier=?
                                                _$e36940_)))
                                      (if _$e37096_
                                          _$e37096_
                                          (eq? 'gx#stx-eq?
                                               _$e36940_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        ((lambda (_sym37099_)
                                           (let* ((_sym37101_
                                                   (_eqf-symbol32255_
                                                    _sym37099_))
                                                  (___stx4014940150_ _L36914_)
                                                  (_g3710437117_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4014940150_))))
                                             (let ((___kont4015140152_
                                                    (lambda (_L37145_)
                                                      (cons (cons _L37145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _sym37101_
                                (cons (gx#stx-e _L36913_)
                                      (cons _val36203_ '()))))
                    _env36204_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4015340154_
                                                    (lambda () _env36204_)))
                                               (if (gx#stx-pair?
                                                    ___stx4014940150_)
                                                   (let ((_e3710737129_
                                                          (gx#stx-e
                                                           ___stx4014940150_)))
                                                     (let ((_tl3710937134_
                                                            (##cdr _e3710737129_))
                                                           (_hd3710837132_
                                                            (##car _e3710737129_)))
                                                       (if (gx#identifier?
                                                            _hd3710837132_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3710837132_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3710937134_)
                           (let ((_e3711037137_ (gx#stx-e _tl3710937134_)))
                             (let ((_tl3711237142_ (##cdr _e3711037137_))
                                   (_hd3711137140_ (##car _e3711037137_)))
                               (if (gx#stx-null? _tl3711237142_)
                                   (___kont4015140152_ _hd3711137140_)
                                   (___kont4015340154_))))
                           (___kont4015340154_))
                       (___kont4015340154_))
                   (___kont4015340154_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4015340154_)))))
                                         _$e36940_)
                                        _env36204_)))))
                           (___kont4018140182_
                            (lambda (_L36817_ _L36818_ _L36819_)
                              (_fold-assert-type32253_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L36819_ '()))
                                           (cons _L36817_
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote)
                                                             (cons _L36818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36203_
                               _env36204_)))
                           (___kont4018340184_
                            (lambda (_L36707_ _L36708_ _L36709_)
                              (let ((_$e36738_
                                     (gxc#identifier-symbol _L36709_)))
                                (if (let ((_$e36741_
                                           (eq? 'gx#free-identifier=?
                                                _$e36738_)))
                                      (if _$e36741_
                                          _$e36741_
                                          (eq? 'gx#stx-eq? _$e36738_)))
                                    ((lambda (_sym36744_)
                                       (let ((_sym36746_
                                              (_eqf-symbol32255_ _sym36744_)))
                                         (cons (cons _L36708_
                                                     (cons _sym36746_
                                                           (cons _L36707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _val36203_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env36204_)))
                                     _$e36738_)
                                    _env36204_))))
                           (___kont4018540186_
                            (lambda (_L36591_ _L36592_ _L36593_)
                              (_fold-assert-type32253_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L36593_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#ref)
                                                       (cons _L36591_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote-syntax)
                                                             (cons _L36592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36203_
                               _env36204_)))
                           (___kont4018740188_
                            (lambda (_L36475_ _L36476_ _L36477_)
                              (_fold-assert-type32253_
                               (gxc#apply-expression-subst
                                _L36476_
                                _L36477_
                                _L36475_)
                               _val36203_
                               _env36204_)))
                           (___kont4018940190_ (lambda () _env36204_)))
                       (if (gx#stx-pair? ___stx4017540176_)
                           (let ((_e3621637167_ (gx#stx-e ___stx4017540176_)))
                             (let ((_tl3621837172_ (##cdr _e3621637167_))
                                   (_hd3621737170_ (##car _e3621637167_)))
                               (if (gx#identifier? _hd3621737170_)
                                   (if (gx#stx-eq? '%#call _hd3621737170_)
                                       (if (gx#stx-pair? _tl3621837172_)
                                           (let ((_e3621937175_
                                                  (gx#stx-e _tl3621837172_)))
                                             (let ((_tl3622137180_
                                                    (##cdr _e3621937175_))
                                                   (_hd3622037178_
                                                    (##car _e3621937175_)))
                                               (if (gx#stx-pair?
                                                    _hd3622037178_)
                                                   (let ((_e3622237183_
                                                          (gx#stx-e
                                                           _hd3622037178_)))
                                                     (let ((_tl3622437188_
                                                            (##cdr _e3622237183_))
                                                           (_hd3622337186_
                                                            (##car _e3622237183_)))
                                                       (if (gx#identifier?
                                                            _hd3622337186_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3622337186_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3622437188_)
                           (let ((_e3622537191_ (gx#stx-e _tl3622437188_)))
                             (let ((_tl3622737196_ (##cdr _e3622537191_))
                                   (_hd3622637194_ (##car _e3622537191_)))
                               (if (gx#stx-null? _tl3622737196_)
                                   (if (gx#stx-pair? _tl3622137180_)
                                       (let ((_e3622837199_
                                              (gx#stx-e _tl3622137180_)))
                                         (let ((_tl3623037204_
                                                (##cdr _e3622837199_))
                                               (_hd3622937202_
                                                (##car _e3622837199_)))
                                           (if (gx#stx-pair? _hd3622937202_)
                                               (let ((_e3623137207_
                                                      (gx#stx-e
                                                       _hd3622937202_)))
                                                 (let ((_tl3623337212_
                                                        (##cdr _e3623137207_))
                                                       (_hd3623237210_
                                                        (##car _e3623137207_)))
                                                   (if (gx#identifier?
                                                        _hd3623237210_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd3623237210_)
                                                           (if (gx#stx-pair?
                                                                _tl3623337212_)
                                                               (let ((_e3623437215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3623337212_)))
                         (let ((_tl3623637220_ (##cdr _e3623437215_))
                               (_hd3623537218_ (##car _e3623437215_)))
                           (if (gx#stx-null? _tl3623637220_)
                               (if (gx#stx-null? _tl3623037204_)
                                   (___kont4017740178_
                                    _hd3623537218_
                                    _hd3622637194_)
                                   (if (gx#stx-pair? _tl3623037204_)
                                       (let ((_e3625536889_
                                              (gx#stx-e _tl3623037204_)))
                                         (let ((_tl3625736894_
                                                (##cdr _e3625536889_))
                                               (_hd3625636892_
                                                (##car _e3625536889_)))
                                           (if (gx#stx-pair? _hd3625636892_)
                                               (let ((_e3625836897_
                                                      (gx#stx-e
                                                       _hd3625636892_)))
                                                 (let ((_tl3626036902_
                                                        (##cdr _e3625836897_))
                                                       (_hd3625936900_
                                                        (##car _e3625836897_)))
                                                   (if (gx#identifier?
                                                        _hd3625936900_)
                                                       (if (gx#stx-eq?
                                                            '%#quote
                                                            _hd3625936900_)
                                                           (if (gx#stx-pair?
                                                                _tl3626036902_)
                                                               (let ((_e3626136905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3626036902_)))
                         (let ((_tl3626336910_ (##cdr _e3626136905_))
                               (_hd3626236908_ (##car _e3626136905_)))
                           (if (gx#stx-null? _tl3626336910_)
                               (if (gx#stx-null? _tl3625736894_)
                                   (___kont4017940180_
                                    _hd3626236908_
                                    _hd3622937202_
                                    _hd3622637194_)
                                   (___kont4018940190_))
                               (___kont4018940190_))))
                       (___kont4018940190_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3625936900_)
                       (if (gx#stx-pair? _tl3626036902_)
                           (let ((_e3632136699_ (gx#stx-e _tl3626036902_)))
                             (let ((_tl3632336704_ (##cdr _e3632136699_))
                                   (_hd3632236702_ (##car _e3632136699_)))
                               (if (gx#stx-null? _tl3632336704_)
                                   (if (gx#stx-null? _tl3625736894_)
                                       (___kont4018340184_
                                        _hd3632236702_
                                        _hd3623537218_
                                        _hd3622637194_)
                                       (___kont4018940190_))
                                   (___kont4018940190_))))
                           (___kont4018940190_))
                       (___kont4018940190_)))
               (___kont4018940190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4018940190_))))
                                       (___kont4018940190_)))
                               (if (gx#stx-pair? _tl3623037204_)
                                   (let ((_e3625536889_
                                          (gx#stx-e _tl3623037204_)))
                                     (let ((_tl3625736894_
                                            (##cdr _e3625536889_))
                                           (_hd3625636892_
                                            (##car _e3625536889_)))
                                       (if (gx#stx-pair? _hd3625636892_)
                                           (let ((_e3625836897_
                                                  (gx#stx-e _hd3625636892_)))
                                             (let ((_tl3626036902_
                                                    (##cdr _e3625836897_))
                                                   (_hd3625936900_
                                                    (##car _e3625836897_)))
                                               (if (gx#identifier?
                                                    _hd3625936900_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3625936900_)
                                                       (if (gx#stx-pair?
                                                            _tl3626036902_)
                                                           (let ((_e3626136905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3626036902_)))
                     (let ((_tl3626336910_ (##cdr _e3626136905_))
                           (_hd3626236908_ (##car _e3626136905_)))
                       (if (gx#stx-null? _tl3626336910_)
                           (if (gx#stx-null? _tl3625736894_)
                               (___kont4017940180_
                                _hd3626236908_
                                _hd3622937202_
                                _hd3622637194_)
                               (___kont4018940190_))
                           (___kont4018940190_))))
                   (___kont4018940190_))
               (___kont4018940190_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4018940190_))))
                                           (___kont4018940190_))))
                                   (___kont4018940190_)))))
                       (if (gx#stx-pair? _tl3623037204_)
                           (let ((_e3625536889_ (gx#stx-e _tl3623037204_)))
                             (let ((_tl3625736894_ (##cdr _e3625536889_))
                                   (_hd3625636892_ (##car _e3625536889_)))
                               (if (gx#stx-pair? _hd3625636892_)
                                   (let ((_e3625836897_
                                          (gx#stx-e _hd3625636892_)))
                                     (let ((_tl3626036902_
                                            (##cdr _e3625836897_))
                                           (_hd3625936900_
                                            (##car _e3625836897_)))
                                       (if (gx#identifier? _hd3625936900_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3625936900_)
                                               (if (gx#stx-pair?
                                                    _tl3626036902_)
                                                   (let ((_e3626136905_
                                                          (gx#stx-e
                                                           _tl3626036902_)))
                                                     (let ((_tl3626336910_
                                                            (##cdr _e3626136905_))
                                                           (_hd3626236908_
                                                            (##car _e3626136905_)))
                                                       (if (gx#stx-null?
                                                            _tl3626336910_)
                                                           (if (gx#stx-null?
                                                                _tl3625736894_)
                                                               (___kont4017940180_
                                                                _hd3626236908_
                                                                _hd3622937202_
                                                                _hd3622637194_)
                                                               (___kont4018940190_))
                                                           (___kont4018940190_))))
                                                   (___kont4018940190_))
                                               (___kont4018940190_))
                                           (___kont4018940190_))))
                                   (___kont4018940190_))))
                           (___kont4018940190_)))
                   (if (gx#stx-pair? _tl3623037204_)
                       (let ((_e3625536889_ (gx#stx-e _tl3623037204_)))
                         (let ((_tl3625736894_ (##cdr _e3625536889_))
                               (_hd3625636892_ (##car _e3625536889_)))
                           (if (gx#stx-pair? _hd3625636892_)
                               (let ((_e3625836897_ (gx#stx-e _hd3625636892_)))
                                 (let ((_tl3626036902_ (##cdr _e3625836897_))
                                       (_hd3625936900_ (##car _e3625836897_)))
                                   (if (gx#identifier? _hd3625936900_)
                                       (if (gx#stx-eq? '%#quote _hd3625936900_)
                                           (if (gx#stx-pair? _tl3626036902_)
                                               (let ((_e3626136905_
                                                      (gx#stx-e
                                                       _tl3626036902_)))
                                                 (let ((_tl3626336910_
                                                        (##cdr _e3626136905_))
                                                       (_hd3626236908_
                                                        (##car _e3626136905_)))
                                                   (if (gx#stx-null?
                                                        _tl3626336910_)
                                                       (if (gx#stx-null?
                                                            _tl3625736894_)
                                                           (___kont4017940180_
                                                            _hd3626236908_
                                                            _hd3622937202_
                                                            _hd3622637194_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3623237210_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3623337212_)
                           (let ((_e3628536801_ (gx#stx-e _tl3623337212_)))
                             (let ((_tl3628736806_ (##cdr _e3628536801_))
                                   (_hd3628636804_ (##car _e3628536801_)))
                               (___kont4018940190_)))
                           (___kont4018940190_))
                       (if (gx#stx-eq? '%#quote-syntax _hd3623237210_)
                           (if (gx#stx-pair? _tl3623337212_)
                               (let ((_e3634536559_ (gx#stx-e _tl3623337212_)))
                                 (let ((_tl3634736564_ (##cdr _e3634536559_))
                                       (_hd3634636562_ (##car _e3634536559_)))
                                   (___kont4018940190_)))
                               (___kont4018940190_))
                           (___kont4018940190_))))
               (if (gx#stx-eq? '%#quote _hd3623237210_)
                   (if (gx#stx-pair? _tl3623337212_)
                       (let ((_e3628536801_ (gx#stx-e _tl3623337212_)))
                         (let ((_tl3628736806_ (##cdr _e3628536801_))
                               (_hd3628636804_ (##car _e3628536801_)))
                           (if (gx#stx-null? _tl3628736806_)
                               (if (gx#stx-null? _tl3625736894_)
                                   (___kont4018140182_
                                    _hd3625636892_
                                    _hd3628636804_
                                    _hd3622637194_)
                                   (___kont4018940190_))
                               (___kont4018940190_))))
                       (___kont4018940190_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3623237210_)
                       (if (gx#stx-pair? _tl3623337212_)
                           (let ((_e3634536559_ (gx#stx-e _tl3623337212_)))
                             (let ((_tl3634736564_ (##cdr _e3634536559_))
                                   (_hd3634636562_ (##car _e3634536559_)))
                               (___kont4018940190_)))
                           (___kont4018940190_))
                       (___kont4018940190_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3623237210_)
                                                   (if (gx#stx-pair?
                                                        _tl3623337212_)
                                                       (let ((_e3628536801_
                                                              (gx#stx-e
                                                               _tl3623337212_)))
                                                         (let ((_tl3628736806_
                                                                (##cdr _e3628536801_))
                                                               (_hd3628636804_
                                                                (##car _e3628536801_)))
                                                           (if (gx#stx-null?
                                                                _tl3628736806_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3625736894_)
                           (___kont4018140182_
                            _hd3625636892_
                            _hd3628636804_
                            _hd3622637194_)
                           (___kont4018940190_))
                       (___kont4018940190_))))
               (___kont4018940190_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3623237210_)
                                                       (if (gx#stx-pair?
                                                            _tl3623337212_)
                                                           (let ((_e3634536559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3623337212_)))
                     (let ((_tl3634736564_ (##cdr _e3634536559_))
                           (_hd3634636562_ (##car _e3634536559_)))
                       (___kont4018940190_)))
                   (___kont4018940190_))
               (___kont4018940190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3623237210_)
                                               (if (gx#stx-pair?
                                                    _tl3623337212_)
                                                   (let ((_e3628536801_
                                                          (gx#stx-e
                                                           _tl3623337212_)))
                                                     (let ((_tl3628736806_
                                                            (##cdr _e3628536801_))
                                                           (_hd3628636804_
                                                            (##car _e3628536801_)))
                                                       (if (gx#stx-null?
                                                            _tl3628736806_)
                                                           (if (gx#stx-null?
                                                                _tl3625736894_)
                                                               (___kont4018140182_
                                                                _hd3625636892_
                                                                _hd3628636804_
                                                                _hd3622637194_)
                                                               (___kont4018940190_))
                                                           (___kont4018940190_))))
                                                   (___kont4018940190_))
                                               (if (gx#stx-eq?
                                                    '%#quote-syntax
                                                    _hd3623237210_)
                                                   (if (gx#stx-pair?
                                                        _tl3623337212_)
                                                       (let ((_e3634536559_
                                                              (gx#stx-e
                                                               _tl3623337212_)))
                                                         (let ((_tl3634736564_
                                                                (##cdr _e3634536559_))
                                                               (_hd3634636562_
                                                                (##car _e3634536559_)))
                                                           (if (gx#stx-null?
                                                                _tl3634736564_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3625936900_)
                           (if (gx#stx-pair? _tl3626036902_)
                               (let ((_e3635436583_ (gx#stx-e _tl3626036902_)))
                                 (let ((_tl3635636588_ (##cdr _e3635436583_))
                                       (_hd3635536586_ (##car _e3635436583_)))
                                   (if (gx#stx-null? _tl3635636588_)
                                       (if (gx#stx-null? _tl3625736894_)
                                           (___kont4018540186_
                                            _hd3635536586_
                                            _hd3634636562_
                                            _hd3622637194_)
                                           (___kont4018940190_))
                                       (___kont4018940190_))))
                               (___kont4018940190_))
                           (___kont4018940190_))
                       (___kont4018940190_))))
               (___kont4018940190_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4018940190_))))
                                       (if (gx#stx-eq? '%#quote _hd3623237210_)
                                           (if (gx#stx-pair? _tl3623337212_)
                                               (let ((_e3628536801_
                                                      (gx#stx-e
                                                       _tl3623337212_)))
                                                 (let ((_tl3628736806_
                                                        (##cdr _e3628536801_))
                                                       (_hd3628636804_
                                                        (##car _e3628536801_)))
                                                   (if (gx#stx-null?
                                                        _tl3628736806_)
                                                       (if (gx#stx-null?
                                                            _tl3625736894_)
                                                           (___kont4018140182_
                                                            _hd3625636892_
                                                            _hd3628636804_
                                                            _hd3622637194_)
                                                           (___kont4018940190_))
                                                       (___kont4018940190_))))
                                               (___kont4018940190_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3623237210_)
                                               (if (gx#stx-pair?
                                                    _tl3623337212_)
                                                   (let ((_e3634536559_
                                                          (gx#stx-e
                                                           _tl3623337212_)))
                                                     (let ((_tl3634736564_
                                                            (##cdr _e3634536559_))
                                                           (_hd3634636562_
                                                            (##car _e3634536559_)))
                                                       (___kont4018940190_)))
                                                   (___kont4018940190_))
                                               (___kont4018940190_))))))
                               (if (gx#stx-eq? '%#quote _hd3623237210_)
                                   (if (gx#stx-pair? _tl3623337212_)
                                       (let ((_e3628536801_
                                              (gx#stx-e _tl3623337212_)))
                                         (let ((_tl3628736806_
                                                (##cdr _e3628536801_))
                                               (_hd3628636804_
                                                (##car _e3628536801_)))
                                           (if (gx#stx-null? _tl3628736806_)
                                               (if (gx#stx-null?
                                                    _tl3625736894_)
                                                   (___kont4018140182_
                                                    _hd3625636892_
                                                    _hd3628636804_
                                                    _hd3622637194_)
                                                   (___kont4018940190_))
                                               (___kont4018940190_))))
                                       (___kont4018940190_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3623237210_)
                                       (if (gx#stx-pair? _tl3623337212_)
                                           (let ((_e3634536559_
                                                  (gx#stx-e _tl3623337212_)))
                                             (let ((_tl3634736564_
                                                    (##cdr _e3634536559_))
                                                   (_hd3634636562_
                                                    (##car _e3634536559_)))
                                               (___kont4018940190_)))
                                           (___kont4018940190_))
                                       (___kont4018940190_))))))
                       (if (gx#stx-eq? '%#quote _hd3623237210_)
                           (if (gx#stx-pair? _tl3623337212_)
                               (let ((_e3628536801_ (gx#stx-e _tl3623337212_)))
                                 (let ((_tl3628736806_ (##cdr _e3628536801_))
                                       (_hd3628636804_ (##car _e3628536801_)))
                                   (___kont4018940190_)))
                               (___kont4018940190_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3623237210_)
                               (if (gx#stx-pair? _tl3623337212_)
                                   (let ((_e3634536559_
                                          (gx#stx-e _tl3623337212_)))
                                     (let ((_tl3634736564_
                                            (##cdr _e3634536559_))
                                           (_hd3634636562_
                                            (##car _e3634536559_)))
                                       (___kont4018940190_)))
                                   (___kont4018940190_))
                               (___kont4018940190_)))))
               (if (gx#stx-pair? _tl3623037204_)
                   (let ((_e3625536889_ (gx#stx-e _tl3623037204_)))
                     (let ((_tl3625736894_ (##cdr _e3625536889_))
                           (_hd3625636892_ (##car _e3625536889_)))
                       (if (gx#stx-pair? _hd3625636892_)
                           (let ((_e3625836897_ (gx#stx-e _hd3625636892_)))
                             (let ((_tl3626036902_ (##cdr _e3625836897_))
                                   (_hd3625936900_ (##car _e3625836897_)))
                               (if (gx#identifier? _hd3625936900_)
                                   (if (gx#stx-eq? '%#quote _hd3625936900_)
                                       (if (gx#stx-pair? _tl3626036902_)
                                           (let ((_e3626136905_
                                                  (gx#stx-e _tl3626036902_)))
                                             (let ((_tl3626336910_
                                                    (##cdr _e3626136905_))
                                                   (_hd3626236908_
                                                    (##car _e3626136905_)))
                                               (if (gx#stx-null?
                                                    _tl3626336910_)
                                                   (if (gx#stx-null?
                                                        _tl3625736894_)
                                                       (___kont4017940180_
                                                        _hd3626236908_
                                                        _hd3622937202_
                                                        _hd3622637194_)
                                                       (___kont4018940190_))
                                                   (___kont4018940190_))))
                                           (___kont4018940190_))
                                       (___kont4018940190_))
                                   (___kont4018940190_))))
                           (___kont4018940190_))))
                   (___kont4018940190_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl3623037204_)
                                                   (let ((_e3625536889_
                                                          (gx#stx-e
                                                           _tl3623037204_)))
                                                     (let ((_tl3625736894_
                                                            (##cdr _e3625536889_))
                                                           (_hd3625636892_
                                                            (##car _e3625536889_)))
                                                       (if (gx#stx-pair?
                                                            _hd3625636892_)
                                                           (let ((_e3625836897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3625636892_)))
                     (let ((_tl3626036902_ (##cdr _e3625836897_))
                           (_hd3625936900_ (##car _e3625836897_)))
                       (if (gx#identifier? _hd3625936900_)
                           (if (gx#stx-eq? '%#quote _hd3625936900_)
                               (if (gx#stx-pair? _tl3626036902_)
                                   (let ((_e3626136905_
                                          (gx#stx-e _tl3626036902_)))
                                     (let ((_tl3626336910_
                                            (##cdr _e3626136905_))
                                           (_hd3626236908_
                                            (##car _e3626136905_)))
                                       (if (gx#stx-null? _tl3626336910_)
                                           (if (gx#stx-null? _tl3625736894_)
                                               (___kont4017940180_
                                                _hd3626236908_
                                                _hd3622937202_
                                                _hd3622637194_)
                                               (___kont4018940190_))
                                           (___kont4018940190_))))
                                   (___kont4018940190_))
                               (___kont4018940190_))
                           (___kont4018940190_))))
                   (___kont4018940190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4018940190_)))))
                                       (___kont4018940190_))
                                   (___kont4018940190_))))
                           (___kont4018940190_))
                       (if (gx#stx-eq? '%#lambda _hd3622337186_)
                           (if (gx#stx-pair? _tl3622437188_)
                               (let ((_e3636936427_ (gx#stx-e _tl3622437188_)))
                                 (let ((_tl3637136432_ (##cdr _e3636936427_))
                                       (_hd3637036430_ (##car _e3636936427_)))
                                   (if (gx#stx-pair? _hd3637036430_)
                                       (let ((_e3637236435_
                                              (gx#stx-e _hd3637036430_)))
                                         (let ((_tl3637436440_
                                                (##cdr _e3637236435_))
                                               (_hd3637336438_
                                                (##car _e3637236435_)))
                                           (if (gx#stx-null? _tl3637436440_)
                                               (if (gx#stx-pair?
                                                    _tl3637136432_)
                                                   (let ((_e3637536443_
                                                          (gx#stx-e
                                                           _tl3637136432_)))
                                                     (let ((_tl3637736448_
                                                            (##cdr _e3637536443_))
                                                           (_hd3637636446_
                                                            (##car _e3637536443_)))
                                                       (if (gx#stx-null?
                                                            _tl3637736448_)
                                                           (if (gx#stx-pair?
                                                                _tl3622137180_)
                                                               (let ((_e3637836451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3622137180_)))
                         (let ((_tl3638036456_ (##cdr _e3637836451_))
                               (_hd3637936454_ (##car _e3637836451_)))
                           (if (gx#stx-pair? _hd3637936454_)
                               (let ((_e3638136459_ (gx#stx-e _hd3637936454_)))
                                 (let ((_tl3638336464_ (##cdr _e3638136459_))
                                       (_hd3638236462_ (##car _e3638136459_)))
                                   (if (gx#identifier? _hd3638236462_)
                                       (if (gx#stx-eq? '%#ref _hd3638236462_)
                                           (if (gx#stx-pair? _tl3638336464_)
                                               (let ((_e3638436467_
                                                      (gx#stx-e
                                                       _tl3638336464_)))
                                                 (let ((_tl3638636472_
                                                        (##cdr _e3638436467_))
                                                       (_hd3638536470_
                                                        (##car _e3638436467_)))
                                                   (if (gx#stx-null?
                                                        _tl3638636472_)
                                                       (if (gx#stx-null?
                                                            _tl3638036456_)
                                                           (___kont4018740188_
                                                            _hd3638536470_
                                                            _hd3637636446_
                                                            _hd3637336438_)
                                                           (___kont4018940190_))
                                                       (___kont4018940190_))))
                                               (___kont4018940190_))
                                           (___kont4018940190_))
                                       (___kont4018940190_))))
                               (___kont4018940190_))))
                       (___kont4018940190_))
                   (___kont4018940190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4018940190_))
                                               (___kont4018940190_))))
                                       (___kont4018940190_))))
                               (___kont4018940190_))
                           (___kont4018940190_)))
                   (___kont4018940190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4018940190_))))
                                           (___kont4018940190_))
                                       (___kont4018940190_))
                                   (___kont4018940190_))))
                           (___kont4018940190_))))))
                (_countf-symbol32254_
                 (lambda (_id36194_)
                   (let ((_$e36196_ (gxc#identifier-symbol _id36194_)))
                     (if (let ((_$e36199_ (eq? '##vector-length _$e36196_)))
                           (if _$e36199_
                               _$e36199_
                               (eq? 'vector-length _$e36196_)))
                         'vector-length
                         (if (eq? 'values-count _$e36196_)
                             'values-count
                             '#f)))))
                (_eqf-symbol32255_
                 (lambda (_sym36180_)
                   (let ((_$e36182_ _sym36180_))
                     (if (let ((_$e36185_ (eq? '##eq? _$e36182_)))
                           (if _$e36185_ _$e36185_ (eq? 'eq? _$e36182_)))
                         'eq?
                         (if (let ((_$e36188_ (eq? '##eqv? _$e36182_)))
                               (if _$e36188_ _$e36188_ (eq? 'eqv? _$e36182_)))
                             'eqv?
                             (if (let ((_$e36191_ (eq? '##equal? _$e36182_)))
                                   (if _$e36191_
                                       _$e36191_
                                       (eq? 'equal? _$e36182_)))
                                 'equal?
                                 (if (eq? 'gx#free-identifier=? _$e36182_)
                                     'free-identifier=?
                                     (if (eq? 'gx#stx-eq? _$e36182_)
                                         'stx-eq?
                                         '#f))))))))
                (_eqf-symbol?32256_
                 (lambda (_sym36163_)
                   (let ((_$e36165_ _sym36163_))
                     (if (let ((_$e36168_ (eq? 'eq? _$e36165_)))
                           (if _$e36168_
                               _$e36168_
                               (let ((_$e36171_ (eq? 'eqv? _$e36165_)))
                                 (if _$e36171_
                                     _$e36171_
                                     (let ((_$e36174_ (eq? 'equal? _$e36165_)))
                                       (if _$e36174_
                                           _$e36174_
                                           (let ((_$e36177_
                                                  (eq? 'free-identifier=?
                                                       _$e36165_)))
                                             (if _$e36177_
                                                 _$e36177_
                                                 (eq? 'stx-eq?
                                                      _$e36165_)))))))))
                         '#t
                         '#f))))
                (_do-assert!32257_
                 (lambda (_assert36154_ _type36155_ _K36156_)
                   (let ((_unwind-assert36158_ _env-assert32247_)
                         (_unwind-type36159_ _env-type32248_))
                     (begin
                       (set! _env-assert32247_ _assert36154_)
                       (set! _env-type32248_ _type36155_)
                       (let ((_val36161_ (_K36156_)))
                         (begin
                           (set! _env-assert32247_ _unwind-assert36158_)
                           (set! _env-type32248_ _unwind-type36159_)
                           _val36161_))))))
                (_do-bind32258_
                 (lambda (_bind36151_ _K36152_)
                   (if (pair? _bind36151_)
                       (_do-bind!32260_
                        (_fold-bind-env32259_ _bind36151_ _env-bind32249_)
                        _K36152_)
                       (_K36152_))))
                (_fold-bind-env32259_
                 (lambda (_bind36080_ _env36081_)
                   (let _lp36083_ ((_rest36085_ _bind36080_)
                                   (_env36086_ _env36081_))
                     (let* ((_rest3608736095_ _rest36085_)
                            (_else3608936103_ (lambda () _env36086_))
                            (_K3609136139_
                             (lambda (_rest36106_ _bind36107_)
                               (let* ((_bind3610836115_ _bind36107_)
                                      (_E3611036119_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3610836115_)))
                                      (_K3611136127_
                                       (lambda (_expr36122_ _id36123_)
                                         (let ((_sexpr36125_
                                                (gxc#apply-generate-runtime-repr
                                                 _expr36122_)))
                                           (_lp36083_
                                            _rest36106_
                                            (cons (cons _sexpr36125_ _id36123_)
                                                  _env36086_))))))
                                 (if (##pair? _bind3610836115_)
                                     (let ((_hd3611236130_
                                            (##car _bind3610836115_))
                                           (_tl3611336132_
                                            (##cdr _bind3610836115_)))
                                       (let* ((_id36135_ _hd3611236130_)
                                              (_expr36137_ _tl3611336132_))
                                         (_K3611136127_
                                          _expr36137_
                                          _id36135_)))
                                     (_E3611036119_))))))
                       (if (##pair? _rest3608736095_)
                           (let ((_hd3609236142_ (##car _rest3608736095_))
                                 (_tl3609336144_ (##cdr _rest3608736095_)))
                             (let* ((_bind36147_ _hd3609236142_)
                                    (_rest36149_ _tl3609336144_))
                               (_K3609136139_ _rest36149_ _bind36147_)))
                           (_else3608936103_))))))
                (_do-bind!32260_
                 (lambda (_env36073_ _K36074_)
                   (let ((_unwind36076_ _env-bind32249_))
                     (begin
                       (set! _env-bind32249_ _env36073_)
                       (let ((_val36078_ (_K36074_)))
                         (begin
                           (set! _env-bind32249_ _unwind36076_)
                           _val36078_))))))
                (_do-splice!32261_
                 (lambda (_K36067_)
                   (let ((_unwind36069_ _in-splice?32250_))
                     (begin
                       (set! _in-splice?32250_ '#t)
                       (let ((_val36071_ (_K36067_)))
                         (begin
                           (set! _in-splice?32250_ _unwind36069_)
                           _val36071_))))))
                (_optimize-e32262_
                 (lambda (_expr35264_)
                   (let* ((___stx4062740628_ _expr35264_)
                          (_g3527135444_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4062740628_))))
                     (let ((___kont4062940630_
                            (lambda (_L36039_ _L36040_ _L36041_)
                              (let ((_$e36058_ (_assert-e32265_ _L36041_)))
                                (if (eq? '#t _$e36058_)
                                    (_optimize-e32262_ _L36040_)
                                    (if (eq? '#f _$e36058_)
                                        (_optimize-e32262_ _L36039_)
                                        (let ((_K36061_
                                               (_optimize-t__0__3959039591_
                                                _L36040_
                                                _L36041_))
                                              (_E36062_
                                               (_optimize-f__3959239593_
                                                _L36039_
                                                _L36041_)))
                                          (if (equal? (gxc#apply-generate-runtime-repr
                                                       _K36061_)
                                                      (gxc#apply-generate-runtime-repr
                                                       _E36062_))
                                              _K36061_
                                              (cons '%#if
                                                    (cons _L36041_
                                                          (cons _K36061_
                                                                (cons _E36062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (___kont4063140632_
                            (lambda (_L35969_ _L35970_)
                              (let ((_$e35990_ (_lookup-block32270_ _L35970_)))
                                (if _$e35990_
                                    ((lambda (_block35993_)
                                       (if (_nonlinear-block?32272_
                                            _block35993_)
                                           _expr35264_
                                           (_optimize-e32262_
                                            (_inline-block32271_
                                             _block35993_
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g3599435997_
                                                                _g3599535999_)
                                                         (cons _g3599435997_
                                                               _g3599535999_))
                                                       '()
                                                       _L35969_))))))
                                     _$e35990_)
                                    _expr35264_))))
                           (___kont4063540636_
                            (lambda (_L35859_ _L35860_ _L35861_)
                              (let ((_body35880_ (_optimize-e32262_ _L35859_)))
                                (cons '%#let-values
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _L35860_
                                               _L35861_)
                                              (foldr2 (lambda (_g3588135885_
                                                               _g3588235887_
                                                               _g3588335889_)
                                                        (cons (cons (cons _g3588235887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                        (cons _g3588135885_ '()))
                                  '()))
                      _g3588335889_))
              '()
              _L35860_
              _L35861_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _body35880_ '()))))))
                           (___kont4063940640_
                            (lambda (_L35727_ _L35728_ _L35729_)
                              (_bind-e__0__3959839599_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3574735750_
                                                       _g3574835752_)
                                                (cons _g3574735750_
                                                      _g3574835752_))
                                              '()
                                              _L35729_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3575435757_
                                                       _g3575535759_)
                                                (cons _g3575435757_
                                                      _g3575535759_))
                                              '()
                                              _L35728_)))
                               _L35727_)))
                           (___kont4064340644_
                            (lambda (_L35584_
                                     _L35585_
                                     _L35586_
                                     _L35587_
                                     _L35588_)
                              (_do-splice!32261_
                               (lambda ()
                                 (let ((_expr35630_
                                        (_optimize-e32262_ _L35586_)))
                                   (cons '%#letrec-values
                                         (cons (cons (cons (cons _L35588_ '())
                                                           (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3563135634_
                                                        _g3563235636_)
                                                 (cons _g3563135634_
                                                       _g3563235636_))
                                               '()
                                               _L35587_))
                                     (cons _expr35630_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g3563835641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3563935643_)
                         (cons _g3563835641_ _g3563935643_))
                       '()
                       _L35585_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L35584_ '()))))))))
                           (___kont4064940650_ (lambda () _expr35264_)))
                       (let* ((___match4083640837_
                               (lambda (_e3539235456_
                                        _hd3539335459_
                                        _tl3539435461_
                                        _e3539535464_
                                        _hd3539635467_
                                        _tl3539735469_
                                        _e3539835472_
                                        _hd3539935475_
                                        _tl3540035477_
                                        _e3540135480_
                                        _hd3540235483_
                                        _tl3540335485_
                                        _e3540435488_
                                        _hd3540535491_
                                        _tl3540635493_
                                        _e3540735496_
                                        _hd3540835499_
                                        _tl3540935501_
                                        _e3541035504_
                                        _hd3541135507_
                                        _tl3541235509_
                                        _e3541335512_
                                        _hd3541435515_
                                        _tl3541535517_
                                        ___splice4064540646_
                                        _target3541635520_
                                        _tl3541835522_)
                                 (letrec ((_loop3541935525_
                                           (lambda (_hd3541735528_
                                                    _id3542335530_)
                                             (if (gx#stx-pair? _hd3541735528_)
                                                 (let ((_e3542035533_
                                                        (gx#stx-e
                                                         _hd3541735528_)))
                                                   (let ((_lp-tl3542235538_
                                                          (##cdr _e3542035533_))
                                                         (_lp-hd3542135536_
                                                          (##car _e3542035533_)))
                                                     (_loop3541935525_
                                                      _lp-tl3542235538_
                                                      (cons _lp-hd3542135536_
                                                            _id3542335530_))))
                                                 (let ((_id3542435541_
                                                        (reverse _id3542335530_)))
                                                   (if (gx#stx-pair?
                                                        _tl3541535517_)
                                                       (let ((_e3542535544_
                                                              (gx#stx-e
                                                               _tl3541535517_)))
                                                         (let ((_tl3542735549_
                                                                (##cdr _e3542535544_))
                                                               (_hd3542635547_
                                                                (##car _e3542535544_)))
                                                           (if (gx#stx-null?
                                                                _tl3542735549_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3540935501_)
                           (if (gx#stx-pair/null? _tl3540035477_)
                               (let ((___splice4064740648_
                                      (gx#syntax-split-splice
                                       _tl3540035477_
                                       '0)))
                                 (let ((_tl3543035554_
                                        (##vector-ref ___splice4064740648_ '1))
                                       (_target3542835552_
                                        (##vector-ref
                                         ___splice4064740648_
                                         '0)))
                                   (if (gx#stx-null? _tl3543035554_)
                                       (letrec ((_loop3543135557_
                                                 (lambda (_hd3542935560_
                                                          _bind3543535562_)
                                                   (if (gx#stx-pair?
                                                        _hd3542935560_)
                                                       (let ((_e3543235565_
                                                              (gx#stx-e
                                                               _hd3542935560_)))
                                                         (let ((_lp-tl3543435570_
                                                                (##cdr _e3543235565_))
                                                               (_lp-hd3543335568_
                                                                (##car _e3543235565_)))
                                                           (_loop3543135557_
                                                            _lp-tl3543435570_
                                                            (cons _lp-hd3543335568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind3543535562_))))
               (let ((_bind3543635573_ (reverse _bind3543535562_)))
                 (if (gx#stx-pair? _tl3539735469_)
                     (let ((_e3543735576_ (gx#stx-e _tl3539735469_)))
                       (let ((_tl3543935581_ (##cdr _e3543735576_))
                             (_hd3543835579_ (##car _e3543735576_)))
                         (if (gx#stx-null? _tl3543935581_)
                             (___kont4064340644_
                              _hd3543835579_
                              _bind3543635573_
                              _hd3542635547_
                              _id3542435541_
                              _hd3540535491_)
                             (___kont4064940650_))))
                     (___kont4064940650_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3543135557_
                                          _target3542835552_
                                          '()))
                                       (___kont4064940650_))))
                               (___kont4064940650_))
                           (___kont4064940650_))
                       (___kont4064940650_))))
               (___kont4064940650_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop3541935525_ _target3541635520_ '()))))
                              (___match4077040771_
                               (lambda (_e3535835651_
                                        _hd3535935654_
                                        _tl3536035656_
                                        _e3536135659_
                                        _hd3536235662_
                                        _tl3536335664_
                                        ___splice4064140642_
                                        _target3536435667_
                                        _tl3536635669_)
                                 (letrec ((_loop3536735672_
                                           (lambda (_hd3536535675_
                                                    _expr3537135677_
                                                    _id3537235679_)
                                             (if (gx#stx-pair? _hd3536535675_)
                                                 (let ((_e3536835682_
                                                        (gx#stx-e
                                                         _hd3536535675_)))
                                                   (let ((_lp-tl3537035687_
                                                          (##cdr _e3536835682_))
                                                         (_lp-hd3536935685_
                                                          (##car _e3536835682_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3536935685_)
                                                         (let ((_e3537535690_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3536935685_)))
                   (let ((_tl3537735695_ (##cdr _e3537535690_))
                         (_hd3537635693_ (##car _e3537535690_)))
                     (if (gx#stx-pair? _hd3537635693_)
                         (let ((_e3537835698_ (gx#stx-e _hd3537635693_)))
                           (let ((_tl3538035703_ (##cdr _e3537835698_))
                                 (_hd3537935701_ (##car _e3537835698_)))
                             (if (gx#stx-null? _tl3538035703_)
                                 (if (gx#stx-pair? _tl3537735695_)
                                     (let ((_e3538135706_
                                            (gx#stx-e _tl3537735695_)))
                                       (let ((_tl3538335711_
                                              (##cdr _e3538135706_))
                                             (_hd3538235709_
                                              (##car _e3538135706_)))
                                         (if (gx#stx-null? _tl3538335711_)
                                             (_loop3536735672_
                                              _lp-tl3537035687_
                                              (cons _hd3538235709_
                                                    _expr3537135677_)
                                              (cons _hd3537935701_
                                                    _id3537235679_))
                                             (___kont4064940650_))))
                                     (___kont4064940650_))
                                 (___kont4064940650_))))
                         (___kont4064940650_))))
                 (___kont4064940650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3537435716_
                                                        (reverse _id3537235679_))
                                                       (_expr3537335714_
                                                        (reverse _expr3537135677_)))
                                                   (if (gx#stx-pair?
                                                        _tl3536335664_)
                                                       (let ((_e3538435719_
                                                              (gx#stx-e
                                                               _tl3536335664_)))
                                                         (let ((_tl3538635724_
                                                                (##cdr _e3538435719_))
                                                               (_hd3538535722_
                                                                (##car _e3538435719_)))
                                                           (if (gx#stx-null?
                                                                _tl3538635724_)
                                                               (___kont4063940640_
                                                                _hd3538535722_
                                                                _expr3537335714_
                                                                _id3537435716_)
                                                               (___kont4064940650_))))
                                                       (___kont4064940650_)))))))
                                   (_loop3536735672_
                                    _target3536435667_
                                    '()
                                    '()))))
                              (___match4074640747_
                               (lambda (_e3532035767_
                                        _hd3532135770_
                                        _tl3532235772_
                                        _e3532335775_
                                        _hd3532435778_
                                        _tl3532535780_
                                        ___splice4063740638_
                                        _target3532635783_
                                        _tl3532835785_)
                                 (letrec ((_loop3532935788_
                                           (lambda (_hd3532735791_
                                                    _xid3533335793_
                                                    _id3533435795_)
                                             (if (gx#stx-pair? _hd3532735791_)
                                                 (let ((_e3533035798_
                                                        (gx#stx-e
                                                         _hd3532735791_)))
                                                   (let ((_lp-tl3533235803_
                                                          (##cdr _e3533035798_))
                                                         (_lp-hd3533135801_
                                                          (##car _e3533035798_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3533135801_)
                                                         (let ((_e3533735806_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3533135801_)))
                   (let ((_tl3533935811_ (##cdr _e3533735806_))
                         (_hd3533835809_ (##car _e3533735806_)))
                     (if (gx#stx-pair? _hd3533835809_)
                         (let ((_e3534035814_ (gx#stx-e _hd3533835809_)))
                           (let ((_tl3534235819_ (##cdr _e3534035814_))
                                 (_hd3534135817_ (##car _e3534035814_)))
                             (if (gx#stx-null? _tl3534235819_)
                                 (if (gx#stx-pair? _tl3533935811_)
                                     (let ((_e3534335822_
                                            (gx#stx-e _tl3533935811_)))
                                       (let ((_tl3534535827_
                                              (##cdr _e3534335822_))
                                             (_hd3534435825_
                                              (##car _e3534335822_)))
                                         (if (gx#stx-pair? _hd3534435825_)
                                             (let ((_e3534635830_
                                                    (gx#stx-e _hd3534435825_)))
                                               (let ((_tl3534835835_
                                                      (##cdr _e3534635830_))
                                                     (_hd3534735833_
                                                      (##car _e3534635830_)))
                                                 (if (gx#identifier?
                                                      _hd3534735833_)
                                                     (if (gx#stx-eq?
                                                          '%#ref
                                                          _hd3534735833_)
                                                         (if (gx#stx-pair?
                                                              _tl3534835835_)
                                                             (let ((_e3534935838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3534835835_)))
                       (let ((_tl3535135843_ (##cdr _e3534935838_))
                             (_hd3535035841_ (##car _e3534935838_)))
                         (if (gx#stx-null? _tl3535135843_)
                             (if (gx#stx-null? _tl3534535827_)
                                 (_loop3532935788_
                                  _lp-tl3533235803_
                                  (cons _hd3535035841_ _xid3533335793_)
                                  (cons _hd3534135817_ _id3533435795_))
                                 (___match4077040771_
                                  _e3532035767_
                                  _hd3532135770_
                                  _tl3532235772_
                                  _e3532335775_
                                  _hd3532435778_
                                  _tl3532535780_
                                  ___splice4063740638_
                                  _target3532635783_
                                  _tl3532835785_))
                             (___match4077040771_
                              _e3532035767_
                              _hd3532135770_
                              _tl3532235772_
                              _e3532335775_
                              _hd3532435778_
                              _tl3532535780_
                              ___splice4063740638_
                              _target3532635783_
                              _tl3532835785_))))
                     (___match4077040771_
                      _e3532035767_
                      _hd3532135770_
                      _tl3532235772_
                      _e3532335775_
                      _hd3532435778_
                      _tl3532535780_
                      ___splice4063740638_
                      _target3532635783_
                      _tl3532835785_))
                 (___match4077040771_
                  _e3532035767_
                  _hd3532135770_
                  _tl3532235772_
                  _e3532335775_
                  _hd3532435778_
                  _tl3532535780_
                  ___splice4063740638_
                  _target3532635783_
                  _tl3532835785_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___match4077040771_
                                                      _e3532035767_
                                                      _hd3532135770_
                                                      _tl3532235772_
                                                      _e3532335775_
                                                      _hd3532435778_
                                                      _tl3532535780_
                                                      ___splice4063740638_
                                                      _target3532635783_
                                                      _tl3532835785_))))
                                             (___match4077040771_
                                              _e3532035767_
                                              _hd3532135770_
                                              _tl3532235772_
                                              _e3532335775_
                                              _hd3532435778_
                                              _tl3532535780_
                                              ___splice4063740638_
                                              _target3532635783_
                                              _tl3532835785_))))
                                     (___match4077040771_
                                      _e3532035767_
                                      _hd3532135770_
                                      _tl3532235772_
                                      _e3532335775_
                                      _hd3532435778_
                                      _tl3532535780_
                                      ___splice4063740638_
                                      _target3532635783_
                                      _tl3532835785_))
                                 (___match4077040771_
                                  _e3532035767_
                                  _hd3532135770_
                                  _tl3532235772_
                                  _e3532335775_
                                  _hd3532435778_
                                  _tl3532535780_
                                  ___splice4063740638_
                                  _target3532635783_
                                  _tl3532835785_))))
                         (___match4077040771_
                          _e3532035767_
                          _hd3532135770_
                          _tl3532235772_
                          _e3532335775_
                          _hd3532435778_
                          _tl3532535780_
                          ___splice4063740638_
                          _target3532635783_
                          _tl3532835785_))))
                 (___match4077040771_
                  _e3532035767_
                  _hd3532135770_
                  _tl3532235772_
                  _e3532335775_
                  _hd3532435778_
                  _tl3532535780_
                  ___splice4063740638_
                  _target3532635783_
                  _tl3532835785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3533635848_
                                                        (reverse _id3533435795_))
                                                       (_xid3533535846_
                                                        (reverse _xid3533335793_)))
                                                   (if (gx#stx-pair?
                                                        _tl3532535780_)
                                                       (let ((_e3535235851_
                                                              (gx#stx-e
                                                               _tl3532535780_)))
                                                         (let ((_tl3535435856_
                                                                (##cdr _e3535235851_))
                                                               (_hd3535335854_
                                                                (##car _e3535235851_)))
                                                           (if (gx#stx-null?
                                                                _tl3535435856_)
                                                               (___kont4063540636_
                                                                _hd3535335854_
                                                                _xid3533535846_
                                                                _id3533635848_)
                                                               (___match4077040771_
                                                                _e3532035767_
                                                                _hd3532135770_
                                                                _tl3532235772_
                                                                _e3532335775_
                                                                _hd3532435778_
                                                                _tl3532535780_
                                                                ___splice4063740638_
                                                                _target3532635783_
                                                                _tl3532835785_))))
                                                       (___match4077040771_
                                                        _e3532035767_
                                                        _hd3532135770_
                                                        _tl3532235772_
                                                        _e3532335775_
                                                        _hd3532435778_
                                                        _tl3532535780_
                                                        ___splice4063740638_
                                                        _target3532635783_
                                                        _tl3532835785_)))))))
                                   (_loop3532935788_
                                    _target3532635783_
                                    '()
                                    '()))))
                              (___match4072240723_
                               (lambda (_e3529035897_
                                        _hd3529135900_
                                        _tl3529235902_
                                        _e3529335905_
                                        _hd3529435908_
                                        _tl3529535910_
                                        _e3529635913_
                                        _hd3529735916_
                                        _tl3529835918_
                                        _e3529935921_
                                        _hd3530035924_
                                        _tl3530135926_
                                        ___splice4063340634_
                                        _target3530235929_
                                        _tl3530435931_)
                                 (letrec ((_loop3530535934_
                                           (lambda (_hd3530335937_
                                                    _id3530935939_)
                                             (if (gx#stx-pair? _hd3530335937_)
                                                 (let ((_e3530635942_
                                                        (gx#stx-e
                                                         _hd3530335937_)))
                                                   (let ((_lp-tl3530835947_
                                                          (##cdr _e3530635942_))
                                                         (_lp-hd3530735945_
                                                          (##car _e3530635942_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3530735945_)
                                                         (let ((_e3531135950_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3530735945_)))
                   (let ((_tl3531335955_ (##cdr _e3531135950_))
                         (_hd3531235953_ (##car _e3531135950_)))
                     (if (gx#identifier? _hd3531235953_)
                         (if (gx#stx-eq? '%#ref _hd3531235953_)
                             (if (gx#stx-pair? _tl3531335955_)
                                 (let ((_e3531435958_
                                        (gx#stx-e _tl3531335955_)))
                                   (let ((_tl3531635963_ (##cdr _e3531435958_))
                                         (_hd3531535961_
                                          (##car _e3531435958_)))
                                     (if (gx#stx-null? _tl3531635963_)
                                         (_loop3530535934_
                                          _lp-tl3530835947_
                                          (cons _hd3531535961_ _id3530935939_))
                                         (___kont4064940650_))))
                                 (___kont4064940650_))
                             (___kont4064940650_))
                         (___kont4064940650_))))
                 (___kont4064940650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3531035966_
                                                        (reverse _id3530935939_)))
                                                   (___kont4063140632_
                                                    _id3531035966_
                                                    _hd3530035924_))))))
                                   (_loop3530535934_
                                    _target3530235929_
                                    '())))))
                         (if (gx#stx-pair? ___stx4062740628_)
                             (let ((_e3527636007_
                                    (gx#stx-e ___stx4062740628_)))
                               (let ((_tl3527836012_ (##cdr _e3527636007_))
                                     (_hd3527736010_ (##car _e3527636007_)))
                                 (if (gx#identifier? _hd3527736010_)
                                     (if (gx#stx-eq? '%#if _hd3527736010_)
                                         (if (gx#stx-pair? _tl3527836012_)
                                             (let ((_e3527936015_
                                                    (gx#stx-e _tl3527836012_)))
                                               (let ((_tl3528136020_
                                                      (##cdr _e3527936015_))
                                                     (_hd3528036018_
                                                      (##car _e3527936015_)))
                                                 (if (gx#stx-pair?
                                                      _tl3528136020_)
                                                     (let ((_e3528236023_
                                                            (gx#stx-e
                                                             _tl3528136020_)))
                                                       (let ((_tl3528436028_
                                                              (##cdr _e3528236023_))
                                                             (_hd3528336026_
                                                              (##car _e3528236023_)))
                                                         (if (gx#stx-pair?
                                                              _tl3528436028_)
                                                             (let ((_e3528536031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3528436028_)))
                       (let ((_tl3528736036_ (##cdr _e3528536031_))
                             (_hd3528636034_ (##car _e3528536031_)))
                         (if (gx#stx-null? _tl3528736036_)
                             (___kont4062940630_
                              _hd3528636034_
                              _hd3528336026_
                              _hd3528036018_)
                             (___kont4064940650_))))
                     (___kont4064940650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4064940650_))))
                                             (___kont4064940650_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3527736010_)
                                             (if (gx#stx-pair? _tl3527836012_)
                                                 (let ((_e3529335905_
                                                        (gx#stx-e
                                                         _tl3527836012_)))
                                                   (let ((_tl3529535910_
                                                          (##cdr _e3529335905_))
                                                         (_hd3529435908_
                                                          (##car _e3529335905_)))
                                                     (if (gx#stx-pair?
                                                          _hd3529435908_)
                                                         (let ((_e3529635913_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3529435908_)))
                   (let ((_tl3529835918_ (##cdr _e3529635913_))
                         (_hd3529735916_ (##car _e3529635913_)))
                     (if (gx#identifier? _hd3529735916_)
                         (if (gx#stx-eq? '%#ref _hd3529735916_)
                             (if (gx#stx-pair? _tl3529835918_)
                                 (let ((_e3529935921_
                                        (gx#stx-e _tl3529835918_)))
                                   (let ((_tl3530135926_ (##cdr _e3529935921_))
                                         (_hd3530035924_
                                          (##car _e3529935921_)))
                                     (if (gx#stx-null? _tl3530135926_)
                                         (if (gx#stx-pair/null? _tl3529535910_)
                                             (let ((___splice4063340634_
                                                    (gx#syntax-split-splice
                                                     _tl3529535910_
                                                     '0)))
                                               (let ((_tl3530435931_
                                                      (##vector-ref
                                                       ___splice4063340634_
                                                       '1))
                                                     (_target3530235929_
                                                      (##vector-ref
                                                       ___splice4063340634_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3530435931_)
                                                     (___match4072240723_
                                                      _e3527636007_
                                                      _hd3527736010_
                                                      _tl3527836012_
                                                      _e3529335905_
                                                      _hd3529435908_
                                                      _tl3529535910_
                                                      _e3529635913_
                                                      _hd3529735916_
                                                      _tl3529835918_
                                                      _e3529935921_
                                                      _hd3530035924_
                                                      _tl3530135926_
                                                      ___splice4063340634_
                                                      _target3530235929_
                                                      _tl3530435931_)
                                                     (___kont4064940650_))))
                                             (___kont4064940650_))
                                         (___kont4064940650_))))
                                 (___kont4064940650_))
                             (___kont4064940650_))
                         (___kont4064940650_))))
                 (___kont4064940650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4064940650_))
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _hd3527736010_)
                                                 (if (gx#stx-pair?
                                                      _tl3527836012_)
                                                     (let ((_e3532335775_
                                                            (gx#stx-e
                                                             _tl3527836012_)))
                                                       (let ((_tl3532535780_
                                                              (##cdr _e3532335775_))
                                                             (_hd3532435778_
                                                              (##car _e3532335775_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd3532435778_)
                                                             (let ((___splice4063740638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd3532435778_ '0)))
                       (let ((_tl3532835785_
                              (##vector-ref ___splice4063740638_ '1))
                             (_target3532635783_
                              (##vector-ref ___splice4063740638_ '0)))
                         (if (gx#stx-null? _tl3532835785_)
                             (___match4074640747_
                              _e3527636007_
                              _hd3527736010_
                              _tl3527836012_
                              _e3532335775_
                              _hd3532435778_
                              _tl3532535780_
                              ___splice4063740638_
                              _target3532635783_
                              _tl3532835785_)
                             (___kont4064940650_))))
                     (___kont4064940650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4064940650_))
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3527736010_)
                                                     (if (gx#stx-pair?
                                                          _tl3527836012_)
                                                         (let ((_e3539535464_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3527836012_)))
                   (let ((_tl3539735469_ (##cdr _e3539535464_))
                         (_hd3539635467_ (##car _e3539535464_)))
                     (if (gx#stx-pair? _hd3539635467_)
                         (let ((_e3539835472_ (gx#stx-e _hd3539635467_)))
                           (let ((_tl3540035477_ (##cdr _e3539835472_))
                                 (_hd3539935475_ (##car _e3539835472_)))
                             (if (gx#stx-pair? _hd3539935475_)
                                 (let ((_e3540135480_
                                        (gx#stx-e _hd3539935475_)))
                                   (let ((_tl3540335485_ (##cdr _e3540135480_))
                                         (_hd3540235483_
                                          (##car _e3540135480_)))
                                     (if (gx#stx-pair? _hd3540235483_)
                                         (let ((_e3540435488_
                                                (gx#stx-e _hd3540235483_)))
                                           (let ((_tl3540635493_
                                                  (##cdr _e3540435488_))
                                                 (_hd3540535491_
                                                  (##car _e3540435488_)))
                                             (if (gx#stx-null? _tl3540635493_)
                                                 (if (gx#stx-pair?
                                                      _tl3540335485_)
                                                     (let ((_e3540735496_
                                                            (gx#stx-e
                                                             _tl3540335485_)))
                                                       (let ((_tl3540935501_
                                                              (##cdr _e3540735496_))
                                                             (_hd3540835499_
                                                              (##car _e3540735496_)))
                                                         (if (gx#stx-pair?
                                                              _hd3540835499_)
                                                             (let ((_e3541035504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3540835499_)))
                       (let ((_tl3541235509_ (##cdr _e3541035504_))
                             (_hd3541135507_ (##car _e3541035504_)))
                         (if (gx#identifier? _hd3541135507_)
                             (if (gx#stx-eq? '%#lambda _hd3541135507_)
                                 (if (gx#stx-pair? _tl3541235509_)
                                     (let ((_e3541335512_
                                            (gx#stx-e _tl3541235509_)))
                                       (let ((_tl3541535517_
                                              (##cdr _e3541335512_))
                                             (_hd3541435515_
                                              (##car _e3541335512_)))
                                         (if (gx#stx-pair/null? _hd3541435515_)
                                             (let ((___splice4064540646_
                                                    (gx#syntax-split-splice
                                                     _hd3541435515_
                                                     '0)))
                                               (let ((_tl3541835522_
                                                      (##vector-ref
                                                       ___splice4064540646_
                                                       '1))
                                                     (_target3541635520_
                                                      (##vector-ref
                                                       ___splice4064540646_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3541835522_)
                                                     (___match4083640837_
                                                      _e3527636007_
                                                      _hd3527736010_
                                                      _tl3527836012_
                                                      _e3539535464_
                                                      _hd3539635467_
                                                      _tl3539735469_
                                                      _e3539835472_
                                                      _hd3539935475_
                                                      _tl3540035477_
                                                      _e3540135480_
                                                      _hd3540235483_
                                                      _tl3540335485_
                                                      _e3540435488_
                                                      _hd3540535491_
                                                      _tl3540635493_
                                                      _e3540735496_
                                                      _hd3540835499_
                                                      _tl3540935501_
                                                      _e3541035504_
                                                      _hd3541135507_
                                                      _tl3541235509_
                                                      _e3541335512_
                                                      _hd3541435515_
                                                      _tl3541535517_
                                                      ___splice4064540646_
                                                      _target3541635520_
                                                      _tl3541835522_)
                                                     (___kont4064940650_))))
                                             (___kont4064940650_))))
                                     (___kont4064940650_))
                                 (___kont4064940650_))
                             (___kont4064940650_))))
                     (___kont4064940650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4064940650_))
                                                 (___kont4064940650_))))
                                         (___kont4064940650_))))
                                 (___kont4064940650_))))
                         (___kont4064940650_))))
                 (___kont4064940650_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4064940650_)))))
                                     (___kont4064940650_))))
                             (___kont4064940650_)))))))
                (_optimize-t__3958839589_
                 (lambda (_expr35247_ _test35248_ _continue35249_)
                   (_do-assert32251_
                    (cons (cons _test35248_ '#t) '())
                    (lambda () (_continue35249_ _expr35247_)))))
                (_optimize-t__0__3959039591_
                 (lambda (_expr35255_ _test35256_)
                   (let ((_continue35258_ _optimize-e32262_))
                     (_optimize-t__3958839589_
                      _expr35255_
                      _test35256_
                      _continue35258_))))
                (_optimize-t32263_
                 (lambda _g42690_
                   (let ((_g42689_ (length _g42690_)))
                     (cond ((##fx= _g42689_ 2)
                            (apply _optimize-t__0__3959039591_ _g42690_))
                           ((##fx= _g42689_ 3)
                            (apply _optimize-t__3958839589_ _g42690_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42690_))))))
                (_optimize-f__3959239593_
                 (lambda (_expr34332_ _test34333_)
                   (_do-assert32251_
                    (if _test34333_ (cons (cons _test34333_ '#f) '()) '())
                    (lambda ()
                      (let* ((___stx4087740878_ _expr34332_)
                             (_g3434134514_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4087740878_))))
                        (let ((___kont4087940880_
                               (lambda (_L35102_ _L35103_)
                                 (let ((_$e35123_
                                        (_lookup-block32270_ _L35103_)))
                                   (if _$e35123_
                                       ((lambda (_block35126_)
                                          (if (_nonlinear-block?32272_
                                               _block35126_)
                                              _expr34332_
                                              (let* ((_inline35135_
                                                      (_inline-block32271_
                                                       _block35126_
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g3512735130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3512835132_)
                           (cons _g3512735130_ _g3512835132_))
                         '()
                         _L35102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___stx4083940840_
                                                      _inline35135_)
                                                     (_g3513835159_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4083940840_))))
                                                (let ((___kont4084140842_
                                                       (lambda (_L35203_
                                                                _L35204_
                                                                _L35205_)
                                                         (let ((_$e35227_
                                                                (_assert-e32265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L35205_)))
                   (if (eq? '#t _$e35227_)
                       (if _in-splice?32250_
                           (_optimize-f__0__3959439595_ _L35204_)
                           (_optimize-e32262_ _L35204_))
                       (if (eq? '#f _$e35227_)
                           (_optimize-f__0__3959439595_ _L35203_)
                           _expr34332_)))))
              (___kont4084340844_
               (lambda () (_optimize-f__0__3959439595_ _inline35135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4083940840_)
                                                      (let ((_e3514335171_
                                                             (gx#stx-e
                                                              ___stx4083940840_)))
                                                        (let ((_tl3514535176_
                                                               (##cdr _e3514335171_))
                                                              (_hd3514435174_
                                                               (##car _e3514335171_)))
                                                          (if (gx#identifier?
                                                               _hd3514435174_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#if
                           _hd3514435174_)
                          (if (gx#stx-pair? _tl3514535176_)
                              (let ((_e3514635179_ (gx#stx-e _tl3514535176_)))
                                (let ((_tl3514835184_ (##cdr _e3514635179_))
                                      (_hd3514735182_ (##car _e3514635179_)))
                                  (if (gx#stx-pair? _tl3514835184_)
                                      (let ((_e3514935187_
                                             (gx#stx-e _tl3514835184_)))
                                        (let ((_tl3515135192_
                                               (##cdr _e3514935187_))
                                              (_hd3515035190_
                                               (##car _e3514935187_)))
                                          (if (gx#stx-pair? _tl3515135192_)
                                              (let ((_e3515235195_
                                                     (gx#stx-e
                                                      _tl3515135192_)))
                                                (let ((_tl3515435200_
                                                       (##cdr _e3515235195_))
                                                      (_hd3515335198_
                                                       (##car _e3515235195_)))
                                                  (if (gx#stx-null?
                                                       _tl3515435200_)
                                                      (___kont4084140842_
                                                       _hd3515335198_
                                                       _hd3515035190_
                                                       _hd3514735182_)
                                                      (___kont4084340844_))))
                                              (___kont4084340844_))))
                                      (___kont4084340844_))))
                              (___kont4084340844_))
                          (___kont4084340844_))
                      (___kont4084340844_))))
              (___kont4084340844_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e35123_)
                                       _expr34332_))))
                              (___kont4088340884_
                               (lambda (_L35000_ _L35001_ _L35002_)
                                 (let ((_$e35019_ (_assert-e32265_ _L35002_)))
                                   (if (eq? '#t _$e35019_)
                                       (if _in-splice?32250_
                                           (_optimize-f__0__3959439595_
                                            _L35001_)
                                           (_optimize-e32262_ _L35001_))
                                       (if (eq? '#f _$e35019_)
                                           (_optimize-f__0__3959439595_
                                            _L35000_)
                                           (let ((_K35022_
                                                  (_optimize-t__3958839589_
                                                   _L35001_
                                                   _L35002_
                                                   _optimize-f32264_))
                                                 (_E35023_
                                                  (_optimize-f__3959239593_
                                                   _L35000_
                                                   _L35002_)))
                                             (if (equal? (gxc#apply-generate-runtime-repr
                                                          _K35022_)
                                                         (gxc#apply-generate-runtime-repr
                                                          _E35023_))
                                                 _K35022_
                                                 (cons '%#if
                                                       (cons _L35002_
                                                             (cons _K35022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _E35023_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (___kont4088540886_
                               (lambda (_L34930_ _L34931_ _L34932_)
                                 (let ((_body34951_
                                        (_optimize-f__0__3959439595_
                                         _L34930_)))
                                   (cons '%#let-values
                                         (cons (begin
                                                 (gx#syntax-check-splice-targets
                                                  _L34931_
                                                  _L34932_)
                                                 (foldr2 (lambda (_g3495234956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3495334958_
                          _g3495434960_)
                   (cons (cons (cons _g3495334958_ '())
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g3495234956_ '()))
                                     '()))
                         _g3495434960_))
                 '()
                 _L34931_
                 _L34932_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _body34951_ '()))))))
                              (___kont4088940890_
                               (lambda (_L34798_ _L34799_ _L34800_)
                                 (_bind-e__3959639597_
                                  (map cons
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3481834821_
                                                          _g3481934823_)
                                                   (cons _g3481834821_
                                                         _g3481934823_))
                                                 '()
                                                 _L34800_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3482534828_
                                                          _g3482634830_)
                                                   (cons _g3482534828_
                                                         _g3482634830_))
                                                 '()
                                                 _L34799_)))
                                  _L34798_
                                  _optimize-f32264_)))
                              (___kont4089340894_
                               (lambda (_L34654_
                                        _L34655_
                                        _L34656_
                                        _L34657_
                                        _L34658_)
                                 (_do-splice!32261_
                                  (lambda ()
                                    (let ((_expr34701_
                                           (_optimize-f__0__3959439595_
                                            _L34656_)))
                                      (cons '%#letrec-values
                                            (cons (cons (cons (cons _L34658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#lambda
                                  (cons (begin
                                          '#!void
                                          (foldr1 (lambda (_g3470234705_
                                                           _g3470334707_)
                                                    (cons _g3470234705_
                                                          _g3470334707_))
                                                  '()
                                                  _L34657_))
                                        (cons _expr34701_ '())))
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3470934712_ _g3471034714_)
                            (cons _g3470934712_ _g3471034714_))
                          '()
                          _L34655_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L34654_ '()))))))))
                              (___kont4089940900_ (lambda () _expr34332_)))
                          (let* ((___match4108641087_
                                  (lambda (_e3446234526_
                                           _hd3446334529_
                                           _tl3446434531_
                                           _e3446534534_
                                           _hd3446634537_
                                           _tl3446734539_
                                           _e3446834542_
                                           _hd3446934545_
                                           _tl3447034547_
                                           _e3447134550_
                                           _hd3447234553_
                                           _tl3447334555_
                                           _e3447434558_
                                           _hd3447534561_
                                           _tl3447634563_
                                           _e3447734566_
                                           _hd3447834569_
                                           _tl3447934571_
                                           _e3448034574_
                                           _hd3448134577_
                                           _tl3448234579_
                                           _e3448334582_
                                           _hd3448434585_
                                           _tl3448534587_
                                           ___splice4089540896_
                                           _target3448634590_
                                           _tl3448834592_)
                                    (letrec ((_loop3448934595_
                                              (lambda (_hd3448734598_
                                                       _id3449334600_)
                                                (if (gx#stx-pair?
                                                     _hd3448734598_)
                                                    (let ((_e3449034603_
                                                           (gx#stx-e
                                                            _hd3448734598_)))
                                                      (let ((_lp-tl3449234608_
                                                             (##cdr _e3449034603_))
                                                            (_lp-hd3449134606_
                                                             (##car _e3449034603_)))
                                                        (_loop3448934595_
                                                         _lp-tl3449234608_
                                                         (cons _lp-hd3449134606_
                                                               _id3449334600_))))
                                                    (let ((_id3449434611_
                                                           (reverse _id3449334600_)))
                                                      (if (gx#stx-pair?
                                                           _tl3448534587_)
                                                          (let ((_e3449534614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3448534587_)))
                    (let ((_tl3449734619_ (##cdr _e3449534614_))
                          (_hd3449634617_ (##car _e3449534614_)))
                      (if (gx#stx-null? _tl3449734619_)
                          (if (gx#stx-null? _tl3447934571_)
                              (if (gx#stx-pair/null? _tl3447034547_)
                                  (let ((___splice4089740898_
                                         (gx#syntax-split-splice
                                          _tl3447034547_
                                          '0)))
                                    (let ((_tl3450034624_
                                           (##vector-ref
                                            ___splice4089740898_
                                            '1))
                                          (_target3449834622_
                                           (##vector-ref
                                            ___splice4089740898_
                                            '0)))
                                      (if (gx#stx-null? _tl3450034624_)
                                          (letrec ((_loop3450134627_
                                                    (lambda (_hd3449934630_
                                                             _bind3450534632_)
                                                      (if (gx#stx-pair?
                                                           _hd3449934630_)
                                                          (let ((_e3450234635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3449934630_)))
                    (let ((_lp-tl3450434640_ (##cdr _e3450234635_))
                          (_lp-hd3450334638_ (##car _e3450234635_)))
                      (_loop3450134627_
                       _lp-tl3450434640_
                       (cons _lp-hd3450334638_ _bind3450534632_))))
                  (let ((_bind3450634643_ (reverse _bind3450534632_)))
                    (if (gx#stx-pair? _tl3446734539_)
                        (let ((_e3450734646_ (gx#stx-e _tl3446734539_)))
                          (let ((_tl3450934651_ (##cdr _e3450734646_))
                                (_hd3450834649_ (##car _e3450734646_)))
                            (if (gx#stx-null? _tl3450934651_)
                                (___kont4089340894_
                                 _hd3450834649_
                                 _bind3450634643_
                                 _hd3449634617_
                                 _id3449434611_
                                 _hd3447534561_)
                                (___kont4089940900_))))
                        (___kont4089940900_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3450134627_
                                             _target3449834622_
                                             '()))
                                          (___kont4089940900_))))
                                  (___kont4089940900_))
                              (___kont4089940900_))
                          (___kont4089940900_))))
                  (___kont4089940900_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3448934595_
                                       _target3448634590_
                                       '()))))
                                 (___match4102041021_
                                  (lambda (_e3442834722_
                                           _hd3442934725_
                                           _tl3443034727_
                                           _e3443134730_
                                           _hd3443234733_
                                           _tl3443334735_
                                           ___splice4089140892_
                                           _target3443434738_
                                           _tl3443634740_)
                                    (letrec ((_loop3443734743_
                                              (lambda (_hd3443534746_
                                                       _expr3444134748_
                                                       _id3444234750_)
                                                (if (gx#stx-pair?
                                                     _hd3443534746_)
                                                    (let ((_e3443834753_
                                                           (gx#stx-e
                                                            _hd3443534746_)))
                                                      (let ((_lp-tl3444034758_
                                                             (##cdr _e3443834753_))
                                                            (_lp-hd3443934756_
                                                             (##car _e3443834753_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3443934756_)
                                                            (let ((_e3444534761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3443934756_)))
                      (let ((_tl3444734766_ (##cdr _e3444534761_))
                            (_hd3444634764_ (##car _e3444534761_)))
                        (if (gx#stx-pair? _hd3444634764_)
                            (let ((_e3444834769_ (gx#stx-e _hd3444634764_)))
                              (let ((_tl3445034774_ (##cdr _e3444834769_))
                                    (_hd3444934772_ (##car _e3444834769_)))
                                (if (gx#stx-null? _tl3445034774_)
                                    (if (gx#stx-pair? _tl3444734766_)
                                        (let ((_e3445134777_
                                               (gx#stx-e _tl3444734766_)))
                                          (let ((_tl3445334782_
                                                 (##cdr _e3445134777_))
                                                (_hd3445234780_
                                                 (##car _e3445134777_)))
                                            (if (gx#stx-null? _tl3445334782_)
                                                (_loop3443734743_
                                                 _lp-tl3444034758_
                                                 (cons _hd3445234780_
                                                       _expr3444134748_)
                                                 (cons _hd3444934772_
                                                       _id3444234750_))
                                                (___kont4089940900_))))
                                        (___kont4089940900_))
                                    (___kont4089940900_))))
                            (___kont4089940900_))))
                    (___kont4089940900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3444434787_
                                                           (reverse _id3444234750_))
                                                          (_expr3444334785_
                                                           (reverse _expr3444134748_)))
                                                      (if (gx#stx-pair?
                                                           _tl3443334735_)
                                                          (let ((_e3445434790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3443334735_)))
                    (let ((_tl3445634795_ (##cdr _e3445434790_))
                          (_hd3445534793_ (##car _e3445434790_)))
                      (if (gx#stx-null? _tl3445634795_)
                          (___kont4088940890_
                           _hd3445534793_
                           _expr3444334785_
                           _id3444434787_)
                          (___kont4089940900_))))
                  (___kont4089940900_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3443734743_
                                       _target3443434738_
                                       '()
                                       '()))))
                                 (___match4099640997_
                                  (lambda (_e3439034838_
                                           _hd3439134841_
                                           _tl3439234843_
                                           _e3439334846_
                                           _hd3439434849_
                                           _tl3439534851_
                                           ___splice4088740888_
                                           _target3439634854_
                                           _tl3439834856_)
                                    (letrec ((_loop3439934859_
                                              (lambda (_hd3439734862_
                                                       _xid3440334864_
                                                       _id3440434866_)
                                                (if (gx#stx-pair?
                                                     _hd3439734862_)
                                                    (let ((_e3440034869_
                                                           (gx#stx-e
                                                            _hd3439734862_)))
                                                      (let ((_lp-tl3440234874_
                                                             (##cdr _e3440034869_))
                                                            (_lp-hd3440134872_
                                                             (##car _e3440034869_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3440134872_)
                                                            (let ((_e3440734877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3440134872_)))
                      (let ((_tl3440934882_ (##cdr _e3440734877_))
                            (_hd3440834880_ (##car _e3440734877_)))
                        (if (gx#stx-pair? _hd3440834880_)
                            (let ((_e3441034885_ (gx#stx-e _hd3440834880_)))
                              (let ((_tl3441234890_ (##cdr _e3441034885_))
                                    (_hd3441134888_ (##car _e3441034885_)))
                                (if (gx#stx-null? _tl3441234890_)
                                    (if (gx#stx-pair? _tl3440934882_)
                                        (let ((_e3441334893_
                                               (gx#stx-e _tl3440934882_)))
                                          (let ((_tl3441534898_
                                                 (##cdr _e3441334893_))
                                                (_hd3441434896_
                                                 (##car _e3441334893_)))
                                            (if (gx#stx-pair? _hd3441434896_)
                                                (let ((_e3441634901_
                                                       (gx#stx-e
                                                        _hd3441434896_)))
                                                  (let ((_tl3441834906_
                                                         (##cdr _e3441634901_))
                                                        (_hd3441734904_
                                                         (##car _e3441634901_)))
                                                    (if (gx#identifier?
                                                         _hd3441734904_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3441734904_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3441834906_)
                        (let ((_e3441934909_ (gx#stx-e _tl3441834906_)))
                          (let ((_tl3442134914_ (##cdr _e3441934909_))
                                (_hd3442034912_ (##car _e3441934909_)))
                            (if (gx#stx-null? _tl3442134914_)
                                (if (gx#stx-null? _tl3441534898_)
                                    (_loop3439934859_
                                     _lp-tl3440234874_
                                     (cons _hd3442034912_ _xid3440334864_)
                                     (cons _hd3441134888_ _id3440434866_))
                                    (___match4102041021_
                                     _e3439034838_
                                     _hd3439134841_
                                     _tl3439234843_
                                     _e3439334846_
                                     _hd3439434849_
                                     _tl3439534851_
                                     ___splice4088740888_
                                     _target3439634854_
                                     _tl3439834856_))
                                (___match4102041021_
                                 _e3439034838_
                                 _hd3439134841_
                                 _tl3439234843_
                                 _e3439334846_
                                 _hd3439434849_
                                 _tl3439534851_
                                 ___splice4088740888_
                                 _target3439634854_
                                 _tl3439834856_))))
                        (___match4102041021_
                         _e3439034838_
                         _hd3439134841_
                         _tl3439234843_
                         _e3439334846_
                         _hd3439434849_
                         _tl3439534851_
                         ___splice4088740888_
                         _target3439634854_
                         _tl3439834856_))
                    (___match4102041021_
                     _e3439034838_
                     _hd3439134841_
                     _tl3439234843_
                     _e3439334846_
                     _hd3439434849_
                     _tl3439534851_
                     ___splice4088740888_
                     _target3439634854_
                     _tl3439834856_))
                (___match4102041021_
                 _e3439034838_
                 _hd3439134841_
                 _tl3439234843_
                 _e3439334846_
                 _hd3439434849_
                 _tl3439534851_
                 ___splice4088740888_
                 _target3439634854_
                 _tl3439834856_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match4102041021_
                                                 _e3439034838_
                                                 _hd3439134841_
                                                 _tl3439234843_
                                                 _e3439334846_
                                                 _hd3439434849_
                                                 _tl3439534851_
                                                 ___splice4088740888_
                                                 _target3439634854_
                                                 _tl3439834856_))))
                                        (___match4102041021_
                                         _e3439034838_
                                         _hd3439134841_
                                         _tl3439234843_
                                         _e3439334846_
                                         _hd3439434849_
                                         _tl3439534851_
                                         ___splice4088740888_
                                         _target3439634854_
                                         _tl3439834856_))
                                    (___match4102041021_
                                     _e3439034838_
                                     _hd3439134841_
                                     _tl3439234843_
                                     _e3439334846_
                                     _hd3439434849_
                                     _tl3439534851_
                                     ___splice4088740888_
                                     _target3439634854_
                                     _tl3439834856_))))
                            (___match4102041021_
                             _e3439034838_
                             _hd3439134841_
                             _tl3439234843_
                             _e3439334846_
                             _hd3439434849_
                             _tl3439534851_
                             ___splice4088740888_
                             _target3439634854_
                             _tl3439834856_))))
                    (___match4102041021_
                     _e3439034838_
                     _hd3439134841_
                     _tl3439234843_
                     _e3439334846_
                     _hd3439434849_
                     _tl3439534851_
                     ___splice4088740888_
                     _target3439634854_
                     _tl3439834856_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3440634919_
                                                           (reverse _id3440434866_))
                                                          (_xid3440534917_
                                                           (reverse _xid3440334864_)))
                                                      (if (gx#stx-pair?
                                                           _tl3439534851_)
                                                          (let ((_e3442234922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3439534851_)))
                    (let ((_tl3442434927_ (##cdr _e3442234922_))
                          (_hd3442334925_ (##car _e3442234922_)))
                      (if (gx#stx-null? _tl3442434927_)
                          (___kont4088540886_
                           _hd3442334925_
                           _xid3440534917_
                           _id3440634919_)
                          (___match4102041021_
                           _e3439034838_
                           _hd3439134841_
                           _tl3439234843_
                           _e3439334846_
                           _hd3439434849_
                           _tl3439534851_
                           ___splice4088740888_
                           _target3439634854_
                           _tl3439834856_))))
                  (___match4102041021_
                   _e3439034838_
                   _hd3439134841_
                   _tl3439234843_
                   _e3439334846_
                   _hd3439434849_
                   _tl3439534851_
                   ___splice4088740888_
                   _target3439634854_
                   _tl3439834856_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3439934859_
                                       _target3439634854_
                                       '()
                                       '()))))
                                 (___match4094240943_
                                  (lambda (_e3434535030_
                                           _hd3434635033_
                                           _tl3434735035_
                                           _e3434835038_
                                           _hd3434935041_
                                           _tl3435035043_
                                           _e3435135046_
                                           _hd3435235049_
                                           _tl3435335051_
                                           _e3435435054_
                                           _hd3435535057_
                                           _tl3435635059_
                                           ___splice4088140882_
                                           _target3435735062_
                                           _tl3435935064_)
                                    (letrec ((_loop3436035067_
                                              (lambda (_hd3435835070_
                                                       _id3436435072_)
                                                (if (gx#stx-pair?
                                                     _hd3435835070_)
                                                    (let ((_e3436135075_
                                                           (gx#stx-e
                                                            _hd3435835070_)))
                                                      (let ((_lp-tl3436335080_
                                                             (##cdr _e3436135075_))
                                                            (_lp-hd3436235078_
                                                             (##car _e3436135075_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3436235078_)
                                                            (let ((_e3436635083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3436235078_)))
                      (let ((_tl3436835088_ (##cdr _e3436635083_))
                            (_hd3436735086_ (##car _e3436635083_)))
                        (if (gx#identifier? _hd3436735086_)
                            (if (gx#stx-eq? '%#ref _hd3436735086_)
                                (if (gx#stx-pair? _tl3436835088_)
                                    (let ((_e3436935091_
                                           (gx#stx-e _tl3436835088_)))
                                      (let ((_tl3437135096_
                                             (##cdr _e3436935091_))
                                            (_hd3437035094_
                                             (##car _e3436935091_)))
                                        (if (gx#stx-null? _tl3437135096_)
                                            (_loop3436035067_
                                             _lp-tl3436335080_
                                             (cons _hd3437035094_
                                                   _id3436435072_))
                                            (___kont4089940900_))))
                                    (___kont4089940900_))
                                (___kont4089940900_))
                            (___kont4089940900_))))
                    (___kont4089940900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3436535099_
                                                           (reverse _id3436435072_)))
                                                      (___kont4087940880_
                                                       _id3436535099_
                                                       _hd3435535057_))))))
                                      (_loop3436035067_
                                       _target3435735062_
                                       '())))))
                            (if (gx#stx-pair? ___stx4087740878_)
                                (let ((_e3434535030_
                                       (gx#stx-e ___stx4087740878_)))
                                  (let ((_tl3434735035_ (##cdr _e3434535030_))
                                        (_hd3434635033_ (##car _e3434535030_)))
                                    (if (gx#identifier? _hd3434635033_)
                                        (if (gx#stx-eq? '%#call _hd3434635033_)
                                            (if (gx#stx-pair? _tl3434735035_)
                                                (let ((_e3434835038_
                                                       (gx#stx-e
                                                        _tl3434735035_)))
                                                  (let ((_tl3435035043_
                                                         (##cdr _e3434835038_))
                                                        (_hd3434935041_
                                                         (##car _e3434835038_)))
                                                    (if (gx#stx-pair?
                                                         _hd3434935041_)
                                                        (let ((_e3435135046_
                                                               (gx#stx-e
                                                                _hd3434935041_)))
                                                          (let ((_tl3435335051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3435135046_))
                        (_hd3435235049_ (##car _e3435135046_)))
                    (if (gx#identifier? _hd3435235049_)
                        (if (gx#stx-eq? '%#ref _hd3435235049_)
                            (if (gx#stx-pair? _tl3435335051_)
                                (let ((_e3435435054_
                                       (gx#stx-e _tl3435335051_)))
                                  (let ((_tl3435635059_ (##cdr _e3435435054_))
                                        (_hd3435535057_ (##car _e3435435054_)))
                                    (if (gx#stx-null? _tl3435635059_)
                                        (if (gx#stx-pair/null? _tl3435035043_)
                                            (let ((___splice4088140882_
                                                   (gx#syntax-split-splice
                                                    _tl3435035043_
                                                    '0)))
                                              (let ((_tl3435935064_
                                                     (##vector-ref
                                                      ___splice4088140882_
                                                      '1))
                                                    (_target3435735062_
                                                     (##vector-ref
                                                      ___splice4088140882_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3435935064_)
                                                    (___match4094240943_
                                                     _e3434535030_
                                                     _hd3434635033_
                                                     _tl3434735035_
                                                     _e3434835038_
                                                     _hd3434935041_
                                                     _tl3435035043_
                                                     _e3435135046_
                                                     _hd3435235049_
                                                     _tl3435335051_
                                                     _e3435435054_
                                                     _hd3435535057_
                                                     _tl3435635059_
                                                     ___splice4088140882_
                                                     _target3435735062_
                                                     _tl3435935064_)
                                                    (___kont4089940900_))))
                                            (___kont4089940900_))
                                        (___kont4089940900_))))
                                (___kont4089940900_))
                            (___kont4089940900_))
                        (___kont4089940900_))))
                (___kont4089940900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4089940900_))
                                            (if (gx#stx-eq?
                                                 '%#if
                                                 _hd3434635033_)
                                                (if (gx#stx-pair?
                                                     _tl3434735035_)
                                                    (let ((_e3437834976_
                                                           (gx#stx-e
                                                            _tl3434735035_)))
                                                      (let ((_tl3438034981_
                                                             (##cdr _e3437834976_))
                                                            (_hd3437934979_
                                                             (##car _e3437834976_)))
                                                        (if (gx#stx-pair?
                                                             _tl3438034981_)
                                                            (let ((_e3438134984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3438034981_)))
                      (let ((_tl3438334989_ (##cdr _e3438134984_))
                            (_hd3438234987_ (##car _e3438134984_)))
                        (if (gx#stx-pair? _tl3438334989_)
                            (let ((_e3438434992_ (gx#stx-e _tl3438334989_)))
                              (let ((_tl3438634997_ (##cdr _e3438434992_))
                                    (_hd3438534995_ (##car _e3438434992_)))
                                (if (gx#stx-null? _tl3438634997_)
                                    (___kont4088340884_
                                     _hd3438534995_
                                     _hd3438234987_
                                     _hd3437934979_)
                                    (___kont4089940900_))))
                            (___kont4089940900_))))
                    (___kont4089940900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4089940900_))
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd3434635033_)
                                                    (if (gx#stx-pair?
                                                         _tl3434735035_)
                                                        (let ((_e3439334846_
                                                               (gx#stx-e
                                                                _tl3434735035_)))
                                                          (let ((_tl3439534851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3439334846_))
                        (_hd3439434849_ (##car _e3439334846_)))
                    (if (gx#stx-pair/null? _hd3439434849_)
                        (let ((___splice4088740888_
                               (gx#syntax-split-splice _hd3439434849_ '0)))
                          (let ((_tl3439834856_
                                 (##vector-ref ___splice4088740888_ '1))
                                (_target3439634854_
                                 (##vector-ref ___splice4088740888_ '0)))
                            (if (gx#stx-null? _tl3439834856_)
                                (___match4099640997_
                                 _e3434535030_
                                 _hd3434635033_
                                 _tl3434735035_
                                 _e3439334846_
                                 _hd3439434849_
                                 _tl3439534851_
                                 ___splice4088740888_
                                 _target3439634854_
                                 _tl3439834856_)
                                (___kont4089940900_))))
                        (___kont4089940900_))))
                (___kont4089940900_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#letrec-values
                                                         _hd3434635033_)
                                                        (if (gx#stx-pair?
                                                             _tl3434735035_)
                                                            (let ((_e3446534534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3434735035_)))
                      (let ((_tl3446734539_ (##cdr _e3446534534_))
                            (_hd3446634537_ (##car _e3446534534_)))
                        (if (gx#stx-pair? _hd3446634537_)
                            (let ((_e3446834542_ (gx#stx-e _hd3446634537_)))
                              (let ((_tl3447034547_ (##cdr _e3446834542_))
                                    (_hd3446934545_ (##car _e3446834542_)))
                                (if (gx#stx-pair? _hd3446934545_)
                                    (let ((_e3447134550_
                                           (gx#stx-e _hd3446934545_)))
                                      (let ((_tl3447334555_
                                             (##cdr _e3447134550_))
                                            (_hd3447234553_
                                             (##car _e3447134550_)))
                                        (if (gx#stx-pair? _hd3447234553_)
                                            (let ((_e3447434558_
                                                   (gx#stx-e _hd3447234553_)))
                                              (let ((_tl3447634563_
                                                     (##cdr _e3447434558_))
                                                    (_hd3447534561_
                                                     (##car _e3447434558_)))
                                                (if (gx#stx-null?
                                                     _tl3447634563_)
                                                    (if (gx#stx-pair?
                                                         _tl3447334555_)
                                                        (let ((_e3447734566_
                                                               (gx#stx-e
                                                                _tl3447334555_)))
                                                          (let ((_tl3447934571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3447734566_))
                        (_hd3447834569_ (##car _e3447734566_)))
                    (if (gx#stx-pair? _hd3447834569_)
                        (let ((_e3448034574_ (gx#stx-e _hd3447834569_)))
                          (let ((_tl3448234579_ (##cdr _e3448034574_))
                                (_hd3448134577_ (##car _e3448034574_)))
                            (if (gx#identifier? _hd3448134577_)
                                (if (gx#stx-eq? '%#lambda _hd3448134577_)
                                    (if (gx#stx-pair? _tl3448234579_)
                                        (let ((_e3448334582_
                                               (gx#stx-e _tl3448234579_)))
                                          (let ((_tl3448534587_
                                                 (##cdr _e3448334582_))
                                                (_hd3448434585_
                                                 (##car _e3448334582_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3448434585_)
                                                (let ((___splice4089540896_
                                                       (gx#syntax-split-splice
                                                        _hd3448434585_
                                                        '0)))
                                                  (let ((_tl3448834592_
                                                         (##vector-ref
                                                          ___splice4089540896_
                                                          '1))
                                                        (_target3448634590_
                                                         (##vector-ref
                                                          ___splice4089540896_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3448834592_)
                                                        (___match4108641087_
                                                         _e3434535030_
                                                         _hd3434635033_
                                                         _tl3434735035_
                                                         _e3446534534_
                                                         _hd3446634537_
                                                         _tl3446734539_
                                                         _e3446834542_
                                                         _hd3446934545_
                                                         _tl3447034547_
                                                         _e3447134550_
                                                         _hd3447234553_
                                                         _tl3447334555_
                                                         _e3447434558_
                                                         _hd3447534561_
                                                         _tl3447634563_
                                                         _e3447734566_
                                                         _hd3447834569_
                                                         _tl3447934571_
                                                         _e3448034574_
                                                         _hd3448134577_
                                                         _tl3448234579_
                                                         _e3448334582_
                                                         _hd3448434585_
                                                         _tl3448534587_
                                                         ___splice4089540896_
                                                         _target3448634590_
                                                         _tl3448834592_)
                                                        (___kont4089940900_))))
                                                (___kont4089940900_))))
                                        (___kont4089940900_))
                                    (___kont4089940900_))
                                (___kont4089940900_))))
                        (___kont4089940900_))))
                (___kont4089940900_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4089940900_))))
                                            (___kont4089940900_))))
                                    (___kont4089940900_))))
                            (___kont4089940900_))))
                    (___kont4089940900_))
                (___kont4089940900_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (___kont4089940900_))))
                                (___kont4089940900_)))))))))
                (_optimize-f__0__3959439595_
                 (lambda (_expr35239_)
                   (let ((_test35241_ '#f))
                     (_optimize-f__3959239593_ _expr35239_ _test35241_))))
                (_optimize-f32264_
                 (lambda _g42692_
                   (let ((_g42691_ (length _g42692_)))
                     (cond ((##fx= _g42691_ 1)
                            (apply _optimize-f__0__3959439595_ _g42692_))
                           ((##fx= _g42691_ 2)
                            (apply _optimize-f__3959239593_ _g42692_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42692_))))))
                (_assert-e32265_
                 (lambda (_expr33273_)
                   (let* ((_sexpr33275_
                           (gxc#apply-generate-runtime-repr _expr33273_))
                          (_$e33277_ (assoc _sexpr33275_ _env-assert32247_)))
                     (if _$e33277_
                         (cdr _$e33277_)
                         (let _assert33280_ ((_expr33282_ _expr33273_))
                           (let* ((___stx4118341184_ _expr33282_)
                                  (_g3329033469_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4118341184_))))
                             (let ((___kont4118541186_
                                    (lambda (_L34300_ _L34301_)
                                      (let ((_$e34323_
                                             (_predicate-type32252_ _L34301_)))
                                        (if _$e34323_
                                            ((lambda (_t34326_)
                                               (_assert-type32266_
                                                _L34300_
                                                _t34326_))
                                             _$e34323_)
                                            '#!void))))
                                   (___kont4118741188_
                                    (lambda (_L33993_ _L33994_ _L33995_)
                                      (let ((_$e34020_
                                             (gxc#identifier-symbol _L33995_)))
                                        (if (let ((_$e34023_
                                                   (eq? '##fx= _$e34020_)))
                                              (if _$e34023_
                                                  _$e34023_
                                                  (eq? 'fx= _$e34020_)))
                                            (let* ((___stx4108941090_ _L33994_)
                                                   (_g3402734056_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx4108941090_))))
                                              (let ((___kont4109141092_
                                                     (lambda (_L34124_
                                                              _L34125_)
                                                       (let ((_$e34150_
                                                              (_countf-symbol32254_
                                                               _L34125_)))
                                                         (if _$e34150_
                                                             ((lambda (_sym34153_)
                                                                (_assert-count32267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L34124_
                         _sym34153_
                         (gx#stx-e _L33993_)))
                      _$e34150_)
                     '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4109341094_
                                                     (lambda () '#!void)))
                                                (if (gx#stx-pair?
                                                     ___stx4108941090_)
                                                    (let ((_e3403134068_
                                                           (gx#stx-e
                                                            ___stx4108941090_)))
                                                      (let ((_tl3403334073_
                                                             (##cdr _e3403134068_))
                                                            (_hd3403234071_
                                                             (##car _e3403134068_)))
                                                        (if (gx#identifier?
                                                             _hd3403234071_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd3403234071_)
                        (if (gx#stx-pair? _tl3403334073_)
                            (let ((_e3403434076_ (gx#stx-e _tl3403334073_)))
                              (let ((_tl3403634081_ (##cdr _e3403434076_))
                                    (_hd3403534079_ (##car _e3403434076_)))
                                (if (gx#stx-pair? _hd3403534079_)
                                    (let ((_e3403734084_
                                           (gx#stx-e _hd3403534079_)))
                                      (let ((_tl3403934089_
                                             (##cdr _e3403734084_))
                                            (_hd3403834087_
                                             (##car _e3403734084_)))
                                        (if (gx#identifier? _hd3403834087_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3403834087_)
                                                (if (gx#stx-pair?
                                                     _tl3403934089_)
                                                    (let ((_e3404034092_
                                                           (gx#stx-e
                                                            _tl3403934089_)))
                                                      (let ((_tl3404234097_
                                                             (##cdr _e3404034092_))
                                                            (_hd3404134095_
                                                             (##car _e3404034092_)))
                                                        (if (gx#stx-null?
                                                             _tl3404234097_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3403634081_)
                        (let ((_e3404334100_ (gx#stx-e _tl3403634081_)))
                          (let ((_tl3404534105_ (##cdr _e3404334100_))
                                (_hd3404434103_ (##car _e3404334100_)))
                            (if (gx#stx-pair? _hd3404434103_)
                                (let ((_e3404634108_
                                       (gx#stx-e _hd3404434103_)))
                                  (let ((_tl3404834113_ (##cdr _e3404634108_))
                                        (_hd3404734111_ (##car _e3404634108_)))
                                    (if (gx#identifier? _hd3404734111_)
                                        (if (gx#stx-eq? '%#ref _hd3404734111_)
                                            (if (gx#stx-pair? _tl3404834113_)
                                                (let ((_e3404934116_
                                                       (gx#stx-e
                                                        _tl3404834113_)))
                                                  (let ((_tl3405134121_
                                                         (##cdr _e3404934116_))
                                                        (_hd3405034119_
                                                         (##car _e3404934116_)))
                                                    (if (gx#stx-null?
                                                         _tl3405134121_)
                                                        (if (gx#stx-null?
                                                             _tl3404534105_)
                                                            (___kont4109141092_
                                                             _hd3405034119_
                                                             _hd3404134095_)
                                                            (___kont4109341094_))
                                                        (___kont4109341094_))))
                                                (___kont4109341094_))
                                            (___kont4109341094_))
                                        (___kont4109341094_))))
                                (___kont4109341094_))))
                        (___kont4109341094_))
                    (___kont4109341094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4109341094_))
                                                (___kont4109341094_))
                                            (___kont4109341094_))))
                                    (___kont4109341094_))))
                            (___kont4109341094_))
                        (___kont4109341094_))
                    (___kont4109341094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4109341094_))))
                                            (if (let ((_$e34158_
                                                       (eq? '##eq? _$e34020_)))
                                                  (if _$e34158_
                                                      _$e34158_
                                                      (let ((_$e34161_
                                                             (eq? 'eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e34020_)))
                (if _$e34161_
                    _$e34161_
                    (let ((_$e34164_ (eq? '##eqv? _$e34020_)))
                      (if _$e34164_
                          _$e34164_
                          (let ((_$e34167_ (eq? 'eqv? _$e34020_)))
                            (if _$e34167_
                                _$e34167_
                                (let ((_$e34170_ (eq? '##equal? _$e34020_)))
                                  (if _$e34170_
                                      _$e34170_
                                      (let ((_$e34173_
                                             (eq? 'equal? _$e34020_)))
                                        (if _$e34173_
                                            _$e34173_
                                            (let ((_$e34176_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e34020_)))
                                              (if _$e34176_
                                                  _$e34176_
                                                  (eq? 'gx#stx-eq?
                                                       _$e34020_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                ((lambda (_sym34179_)
                                                   (let* ((___stx4115741158_
                                                           _L33994_)
                                                          (_g3418234195_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4115741158_))))
                                                     (let ((___kont4115941160_
                                                            (lambda (_L34223_)
                                                              (_assert-eqf32268_
                                                               _L34223_
                                                               (_eqf-symbol32255_
                                                                _sym34179_)
                                                               (gx#stx-e
                                                                _L33993_))))
                                                           (___kont4116141162_
                                                            (lambda ()
                                                              '#!void)))
                                                       (if (gx#stx-pair?
                                                            ___stx4115741158_)
                                                           (let ((_e3418534207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e ___stx4115741158_)))
                     (let ((_tl3418734212_ (##cdr _e3418534207_))
                           (_hd3418634210_ (##car _e3418534207_)))
                       (if (gx#identifier? _hd3418634210_)
                           (if (gx#stx-eq? '%#ref _hd3418634210_)
                               (if (gx#stx-pair? _tl3418734212_)
                                   (let ((_e3418834215_
                                          (gx#stx-e _tl3418734212_)))
                                     (let ((_tl3419034220_
                                            (##cdr _e3418834215_))
                                           (_hd3418934218_
                                            (##car _e3418834215_)))
                                       (if (gx#stx-null? _tl3419034220_)
                                           (___kont4115941160_ _hd3418934218_)
                                           (___kont4116141162_))))
                                   (___kont4116141162_))
                               (___kont4116141162_))
                           (___kont4116141162_))))
                   (___kont4116141162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e34020_)
                                                '#!void)))))
                                   (___kont4118941190_
                                    (lambda (_L33897_ _L33898_ _L33899_)
                                      (_assert33280_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L33899_ '()))
                                                   (cons _L33897_
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#quote)
                             (cons _L33898_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4119141192_
                                    (lambda (_L33789_ _L33790_ _L33791_)
                                      (let ((_$e33820_
                                             (gxc#identifier-symbol _L33791_)))
                                        (if (let ((_$e33823_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e33820_)))
                                              (if _$e33823_
                                                  _$e33823_
                                                  (eq? 'gx#stx-eq? _$e33820_)))
                                            ((lambda (_sym33826_)
                                               (_assert-eqf32268_
                                                _L33790_
                                                (_eqf-symbol32255_ _sym33826_)
                                                _L33789_))
                                             _$e33820_)
                                            '#!void))))
                                   (___kont4119341194_
                                    (lambda (_L33673_ _L33674_ _L33675_)
                                      (_assert33280_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L33675_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L33673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                             (cons _L33674_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4119541196_
                                    (lambda (_L33553_ _L33554_ _L33555_)
                                      (_assert33280_
                                       (gxc#apply-expression-subst
                                        _L33554_
                                        _L33555_
                                        _L33553_))))
                                   (___kont4119741198_ (lambda () '#!void)))
                               (if (gx#stx-pair? ___stx4118341184_)
                                   (let ((_e3329434244_
                                          (gx#stx-e ___stx4118341184_)))
                                     (let ((_tl3329634249_
                                            (##cdr _e3329434244_))
                                           (_hd3329534247_
                                            (##car _e3329434244_)))
                                       (if (gx#identifier? _hd3329534247_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd3329534247_)
                                               (if (gx#stx-pair?
                                                    _tl3329634249_)
                                                   (let ((_e3329734252_
                                                          (gx#stx-e
                                                           _tl3329634249_)))
                                                     (let ((_tl3329934257_
                                                            (##cdr _e3329734252_))
                                                           (_hd3329834255_
                                                            (##car _e3329734252_)))
                                                       (if (gx#stx-pair?
                                                            _hd3329834255_)
                                                           (let ((_e3330034260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3329834255_)))
                     (let ((_tl3330234265_ (##cdr _e3330034260_))
                           (_hd3330134263_ (##car _e3330034260_)))
                       (if (gx#identifier? _hd3330134263_)
                           (if (gx#stx-eq? '%#ref _hd3330134263_)
                               (if (gx#stx-pair? _tl3330234265_)
                                   (let ((_e3330334268_
                                          (gx#stx-e _tl3330234265_)))
                                     (let ((_tl3330534273_
                                            (##cdr _e3330334268_))
                                           (_hd3330434271_
                                            (##car _e3330334268_)))
                                       (if (gx#stx-null? _tl3330534273_)
                                           (if (gx#stx-pair? _tl3329934257_)
                                               (let ((_e3330634276_
                                                      (gx#stx-e
                                                       _tl3329934257_)))
                                                 (let ((_tl3330834281_
                                                        (##cdr _e3330634276_))
                                                       (_hd3330734279_
                                                        (##car _e3330634276_)))
                                                   (if (gx#stx-pair?
                                                        _hd3330734279_)
                                                       (let ((_e3330934284_
                                                              (gx#stx-e
                                                               _hd3330734279_)))
                                                         (let ((_tl3331134289_
                                                                (##cdr _e3330934284_))
                                                               (_hd3331034287_
                                                                (##car _e3330934284_)))
                                                           (if (gx#identifier?
                                                                _hd3331034287_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3331034287_)
                           (if (gx#stx-pair? _tl3331134289_)
                               (let ((_e3331234292_ (gx#stx-e _tl3331134289_)))
                                 (let ((_tl3331434297_ (##cdr _e3331234292_))
                                       (_hd3331334295_ (##car _e3331234292_)))
                                   (if (gx#stx-null? _tl3331434297_)
                                       (if (gx#stx-null? _tl3330834281_)
                                           (___kont4118541186_
                                            _hd3331334295_
                                            _hd3330434271_)
                                           (if (gx#stx-pair? _tl3330834281_)
                                               (let ((_e3333333969_
                                                      (gx#stx-e
                                                       _tl3330834281_)))
                                                 (let ((_tl3333533974_
                                                        (##cdr _e3333333969_))
                                                       (_hd3333433972_
                                                        (##car _e3333333969_)))
                                                   (if (gx#stx-pair?
                                                        _hd3333433972_)
                                                       (let ((_e3333633977_
                                                              (gx#stx-e
                                                               _hd3333433972_)))
                                                         (let ((_tl3333833982_
                                                                (##cdr _e3333633977_))
                                                               (_hd3333733980_
                                                                (##car _e3333633977_)))
                                                           (if (gx#identifier?
                                                                _hd3333733980_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#quote
                            _hd3333733980_)
                           (if (gx#stx-pair? _tl3333833982_)
                               (let ((_e3333933985_ (gx#stx-e _tl3333833982_)))
                                 (let ((_tl3334133990_ (##cdr _e3333933985_))
                                       (_hd3334033988_ (##car _e3333933985_)))
                                   (if (gx#stx-null? _tl3334133990_)
                                       (if (gx#stx-null? _tl3333533974_)
                                           (___kont4118741188_
                                            _hd3334033988_
                                            _hd3330734279_
                                            _hd3330434271_)
                                           (___kont4119741198_))
                                       (___kont4119741198_))))
                               (___kont4119741198_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3333733980_)
                               (if (gx#stx-pair? _tl3333833982_)
                                   (let ((_e3339933781_
                                          (gx#stx-e _tl3333833982_)))
                                     (let ((_tl3340133786_
                                            (##cdr _e3339933781_))
                                           (_hd3340033784_
                                            (##car _e3339933781_)))
                                       (if (gx#stx-null? _tl3340133786_)
                                           (if (gx#stx-null? _tl3333533974_)
                                               (___kont4119141192_
                                                _hd3340033784_
                                                _hd3331334295_
                                                _hd3330434271_)
                                               (___kont4119741198_))
                                           (___kont4119741198_))))
                                   (___kont4119741198_))
                               (___kont4119741198_)))
                       (___kont4119741198_))))
               (___kont4119741198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4119741198_)))
                                       (if (gx#stx-pair? _tl3330834281_)
                                           (let ((_e3333333969_
                                                  (gx#stx-e _tl3330834281_)))
                                             (let ((_tl3333533974_
                                                    (##cdr _e3333333969_))
                                                   (_hd3333433972_
                                                    (##car _e3333333969_)))
                                               (if (gx#stx-pair?
                                                    _hd3333433972_)
                                                   (let ((_e3333633977_
                                                          (gx#stx-e
                                                           _hd3333433972_)))
                                                     (let ((_tl3333833982_
                                                            (##cdr _e3333633977_))
                                                           (_hd3333733980_
                                                            (##car _e3333633977_)))
                                                       (if (gx#identifier?
                                                            _hd3333733980_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3333733980_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3333833982_)
                           (let ((_e3333933985_ (gx#stx-e _tl3333833982_)))
                             (let ((_tl3334133990_ (##cdr _e3333933985_))
                                   (_hd3334033988_ (##car _e3333933985_)))
                               (if (gx#stx-null? _tl3334133990_)
                                   (if (gx#stx-null? _tl3333533974_)
                                       (___kont4118741188_
                                        _hd3334033988_
                                        _hd3330734279_
                                        _hd3330434271_)
                                       (___kont4119741198_))
                                   (___kont4119741198_))))
                           (___kont4119741198_))
                       (___kont4119741198_))
                   (___kont4119741198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4119741198_))))
                                           (___kont4119741198_)))))
                               (if (gx#stx-pair? _tl3330834281_)
                                   (let ((_e3333333969_
                                          (gx#stx-e _tl3330834281_)))
                                     (let ((_tl3333533974_
                                            (##cdr _e3333333969_))
                                           (_hd3333433972_
                                            (##car _e3333333969_)))
                                       (if (gx#stx-pair? _hd3333433972_)
                                           (let ((_e3333633977_
                                                  (gx#stx-e _hd3333433972_)))
                                             (let ((_tl3333833982_
                                                    (##cdr _e3333633977_))
                                                   (_hd3333733980_
                                                    (##car _e3333633977_)))
                                               (if (gx#identifier?
                                                    _hd3333733980_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3333733980_)
                                                       (if (gx#stx-pair?
                                                            _tl3333833982_)
                                                           (let ((_e3333933985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3333833982_)))
                     (let ((_tl3334133990_ (##cdr _e3333933985_))
                           (_hd3334033988_ (##car _e3333933985_)))
                       (if (gx#stx-null? _tl3334133990_)
                           (if (gx#stx-null? _tl3333533974_)
                               (___kont4118741188_
                                _hd3334033988_
                                _hd3330734279_
                                _hd3330434271_)
                               (___kont4119741198_))
                           (___kont4119741198_))))
                   (___kont4119741198_))
               (___kont4119741198_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4119741198_))))
                                           (___kont4119741198_))))
                                   (___kont4119741198_)))
                           (if (gx#stx-pair? _tl3330834281_)
                               (let ((_e3333333969_ (gx#stx-e _tl3330834281_)))
                                 (let ((_tl3333533974_ (##cdr _e3333333969_))
                                       (_hd3333433972_ (##car _e3333333969_)))
                                   (if (gx#stx-pair? _hd3333433972_)
                                       (let ((_e3333633977_
                                              (gx#stx-e _hd3333433972_)))
                                         (let ((_tl3333833982_
                                                (##cdr _e3333633977_))
                                               (_hd3333733980_
                                                (##car _e3333633977_)))
                                           (if (gx#identifier? _hd3333733980_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3333733980_)
                                                   (if (gx#stx-pair?
                                                        _tl3333833982_)
                                                       (let ((_e3333933985_
                                                              (gx#stx-e
                                                               _tl3333833982_)))
                                                         (let ((_tl3334133990_
                                                                (##cdr _e3333933985_))
                                                               (_hd3334033988_
                                                                (##car _e3333933985_)))
                                                           (if (gx#stx-null?
                                                                _tl3334133990_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3333533974_)
                           (___kont4118741188_
                            _hd3334033988_
                            _hd3330734279_
                            _hd3330434271_)
                           (if (gx#stx-eq? '%#quote _hd3331034287_)
                               (if (gx#stx-pair? _tl3331134289_)
                                   (let ((_e3336333881_
                                          (gx#stx-e _tl3331134289_)))
                                     (let ((_tl3336533886_
                                            (##cdr _e3336333881_))
                                           (_hd3336433884_
                                            (##car _e3336333881_)))
                                       (___kont4119741198_)))
                                   (___kont4119741198_))
                               (if (gx#stx-eq? '%#quote-syntax _hd3331034287_)
                                   (if (gx#stx-pair? _tl3331134289_)
                                       (let ((_e3342333641_
                                              (gx#stx-e _tl3331134289_)))
                                         (let ((_tl3342533646_
                                                (##cdr _e3342333641_))
                                               (_hd3342433644_
                                                (##car _e3342333641_)))
                                           (___kont4119741198_)))
                                       (___kont4119741198_))
                                   (___kont4119741198_))))
                       (if (gx#stx-eq? '%#quote _hd3331034287_)
                           (if (gx#stx-pair? _tl3331134289_)
                               (let ((_e3336333881_ (gx#stx-e _tl3331134289_)))
                                 (let ((_tl3336533886_ (##cdr _e3336333881_))
                                       (_hd3336433884_ (##car _e3336333881_)))
                                   (if (gx#stx-null? _tl3336533886_)
                                       (if (gx#stx-null? _tl3333533974_)
                                           (___kont4118941190_
                                            _hd3333433972_
                                            _hd3336433884_
                                            _hd3330434271_)
                                           (___kont4119741198_))
                                       (___kont4119741198_))))
                               (___kont4119741198_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3331034287_)
                               (if (gx#stx-pair? _tl3331134289_)
                                   (let ((_e3342333641_
                                          (gx#stx-e _tl3331134289_)))
                                     (let ((_tl3342533646_
                                            (##cdr _e3342333641_))
                                           (_hd3342433644_
                                            (##car _e3342333641_)))
                                       (___kont4119741198_)))
                                   (___kont4119741198_))
                               (___kont4119741198_))))))
               (if (gx#stx-eq? '%#quote _hd3331034287_)
                   (if (gx#stx-pair? _tl3331134289_)
                       (let ((_e3336333881_ (gx#stx-e _tl3331134289_)))
                         (let ((_tl3336533886_ (##cdr _e3336333881_))
                               (_hd3336433884_ (##car _e3336333881_)))
                           (if (gx#stx-null? _tl3336533886_)
                               (if (gx#stx-null? _tl3333533974_)
                                   (___kont4118941190_
                                    _hd3333433972_
                                    _hd3336433884_
                                    _hd3330434271_)
                                   (___kont4119741198_))
                               (___kont4119741198_))))
                       (___kont4119741198_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3331034287_)
                       (if (gx#stx-pair? _tl3331134289_)
                           (let ((_e3342333641_ (gx#stx-e _tl3331134289_)))
                             (let ((_tl3342533646_ (##cdr _e3342333641_))
                                   (_hd3342433644_ (##car _e3342333641_)))
                               (___kont4119741198_)))
                           (___kont4119741198_))
                       (___kont4119741198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3331034287_)
                                                       (if (gx#stx-pair?
                                                            _tl3331134289_)
                                                           (let ((_e3336333881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3331134289_)))
                     (let ((_tl3336533886_ (##cdr _e3336333881_))
                           (_hd3336433884_ (##car _e3336333881_)))
                       (if (gx#stx-null? _tl3336533886_)
                           (if (gx#stx-null? _tl3333533974_)
                               (___kont4118941190_
                                _hd3333433972_
                                _hd3336433884_
                                _hd3330434271_)
                               (___kont4119741198_))
                           (___kont4119741198_))))
                   (___kont4119741198_))
               (if (gx#stx-eq? '%#quote-syntax _hd3331034287_)
                   (if (gx#stx-pair? _tl3331134289_)
                       (let ((_e3342333641_ (gx#stx-e _tl3331134289_)))
                         (let ((_tl3342533646_ (##cdr _e3342333641_))
                               (_hd3342433644_ (##car _e3342333641_)))
                           (if (gx#stx-null? _tl3342533646_)
                               (if (gx#stx-eq? '%#ref _hd3333733980_)
                                   (if (gx#stx-pair? _tl3333833982_)
                                       (let ((_e3343233665_
                                              (gx#stx-e _tl3333833982_)))
                                         (let ((_tl3343433670_
                                                (##cdr _e3343233665_))
                                               (_hd3343333668_
                                                (##car _e3343233665_)))
                                           (if (gx#stx-null? _tl3343433670_)
                                               (if (gx#stx-null?
                                                    _tl3333533974_)
                                                   (___kont4119341194_
                                                    _hd3343333668_
                                                    _hd3342433644_
                                                    _hd3330434271_)
                                                   (___kont4119741198_))
                                               (___kont4119741198_))))
                                       (___kont4119741198_))
                                   (___kont4119741198_))
                               (___kont4119741198_))))
                       (___kont4119741198_))
                   (___kont4119741198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3331034287_)
                                                   (if (gx#stx-pair?
                                                        _tl3331134289_)
                                                       (let ((_e3336333881_
                                                              (gx#stx-e
                                                               _tl3331134289_)))
                                                         (let ((_tl3336533886_
                                                                (##cdr _e3336333881_))
                                                               (_hd3336433884_
                                                                (##car _e3336333881_)))
                                                           (if (gx#stx-null?
                                                                _tl3336533886_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3333533974_)
                           (___kont4118941190_
                            _hd3333433972_
                            _hd3336433884_
                            _hd3330434271_)
                           (___kont4119741198_))
                       (___kont4119741198_))))
               (___kont4119741198_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3331034287_)
                                                       (if (gx#stx-pair?
                                                            _tl3331134289_)
                                                           (let ((_e3342333641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3331134289_)))
                     (let ((_tl3342533646_ (##cdr _e3342333641_))
                           (_hd3342433644_ (##car _e3342333641_)))
                       (___kont4119741198_)))
                   (___kont4119741198_))
               (___kont4119741198_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-eq? '%#quote _hd3331034287_)
                                           (if (gx#stx-pair? _tl3331134289_)
                                               (let ((_e3336333881_
                                                      (gx#stx-e
                                                       _tl3331134289_)))
                                                 (let ((_tl3336533886_
                                                        (##cdr _e3336333881_))
                                                       (_hd3336433884_
                                                        (##car _e3336333881_)))
                                                   (if (gx#stx-null?
                                                        _tl3336533886_)
                                                       (if (gx#stx-null?
                                                            _tl3333533974_)
                                                           (___kont4118941190_
                                                            _hd3333433972_
                                                            _hd3336433884_
                                                            _hd3330434271_)
                                                           (___kont4119741198_))
                                                       (___kont4119741198_))))
                                               (___kont4119741198_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3331034287_)
                                               (if (gx#stx-pair?
                                                    _tl3331134289_)
                                                   (let ((_e3342333641_
                                                          (gx#stx-e
                                                           _tl3331134289_)))
                                                     (let ((_tl3342533646_
                                                            (##cdr _e3342333641_))
                                                           (_hd3342433644_
                                                            (##car _e3342333641_)))
                                                       (___kont4119741198_)))
                                                   (___kont4119741198_))
                                               (___kont4119741198_))))))
                               (if (gx#stx-eq? '%#quote _hd3331034287_)
                                   (if (gx#stx-pair? _tl3331134289_)
                                       (let ((_e3336333881_
                                              (gx#stx-e _tl3331134289_)))
                                         (let ((_tl3336533886_
                                                (##cdr _e3336333881_))
                                               (_hd3336433884_
                                                (##car _e3336333881_)))
                                           (___kont4119741198_)))
                                       (___kont4119741198_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3331034287_)
                                       (if (gx#stx-pair? _tl3331134289_)
                                           (let ((_e3342333641_
                                                  (gx#stx-e _tl3331134289_)))
                                             (let ((_tl3342533646_
                                                    (##cdr _e3342333641_))
                                                   (_hd3342433644_
                                                    (##car _e3342333641_)))
                                               (___kont4119741198_)))
                                           (___kont4119741198_))
                                       (___kont4119741198_)))))
                       (if (gx#stx-pair? _tl3330834281_)
                           (let ((_e3333333969_ (gx#stx-e _tl3330834281_)))
                             (let ((_tl3333533974_ (##cdr _e3333333969_))
                                   (_hd3333433972_ (##car _e3333333969_)))
                               (if (gx#stx-pair? _hd3333433972_)
                                   (let ((_e3333633977_
                                          (gx#stx-e _hd3333433972_)))
                                     (let ((_tl3333833982_
                                            (##cdr _e3333633977_))
                                           (_hd3333733980_
                                            (##car _e3333633977_)))
                                       (if (gx#identifier? _hd3333733980_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3333733980_)
                                               (if (gx#stx-pair?
                                                    _tl3333833982_)
                                                   (let ((_e3333933985_
                                                          (gx#stx-e
                                                           _tl3333833982_)))
                                                     (let ((_tl3334133990_
                                                            (##cdr _e3333933985_))
                                                           (_hd3334033988_
                                                            (##car _e3333933985_)))
                                                       (if (gx#stx-null?
                                                            _tl3334133990_)
                                                           (if (gx#stx-null?
                                                                _tl3333533974_)
                                                               (___kont4118741188_
                                                                _hd3334033988_
                                                                _hd3330734279_
                                                                _hd3330434271_)
                                                               (___kont4119741198_))
                                                           (___kont4119741198_))))
                                                   (___kont4119741198_))
                                               (___kont4119741198_))
                                           (___kont4119741198_))))
                                   (___kont4119741198_))))
                           (___kont4119741198_)))))
               (if (gx#stx-pair? _tl3330834281_)
                   (let ((_e3333333969_ (gx#stx-e _tl3330834281_)))
                     (let ((_tl3333533974_ (##cdr _e3333333969_))
                           (_hd3333433972_ (##car _e3333333969_)))
                       (if (gx#stx-pair? _hd3333433972_)
                           (let ((_e3333633977_ (gx#stx-e _hd3333433972_)))
                             (let ((_tl3333833982_ (##cdr _e3333633977_))
                                   (_hd3333733980_ (##car _e3333633977_)))
                               (if (gx#identifier? _hd3333733980_)
                                   (if (gx#stx-eq? '%#quote _hd3333733980_)
                                       (if (gx#stx-pair? _tl3333833982_)
                                           (let ((_e3333933985_
                                                  (gx#stx-e _tl3333833982_)))
                                             (let ((_tl3334133990_
                                                    (##cdr _e3333933985_))
                                                   (_hd3334033988_
                                                    (##car _e3333933985_)))
                                               (if (gx#stx-null?
                                                    _tl3334133990_)
                                                   (if (gx#stx-null?
                                                        _tl3333533974_)
                                                       (___kont4118741188_
                                                        _hd3334033988_
                                                        _hd3330734279_
                                                        _hd3330434271_)
                                                       (___kont4119741198_))
                                                   (___kont4119741198_))))
                                           (___kont4119741198_))
                                       (___kont4119741198_))
                                   (___kont4119741198_))))
                           (___kont4119741198_))))
                   (___kont4119741198_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4119741198_))
                                           (___kont4119741198_))))
                                   (___kont4119741198_))
                               (if (gx#stx-eq? '%#lambda _hd3330134263_)
                                   (if (gx#stx-pair? _tl3330234265_)
                                       (let ((_e3344733505_
                                              (gx#stx-e _tl3330234265_)))
                                         (let ((_tl3344933510_
                                                (##cdr _e3344733505_))
                                               (_hd3344833508_
                                                (##car _e3344733505_)))
                                           (if (gx#stx-pair? _hd3344833508_)
                                               (let ((_e3345033513_
                                                      (gx#stx-e
                                                       _hd3344833508_)))
                                                 (let ((_tl3345233518_
                                                        (##cdr _e3345033513_))
                                                       (_hd3345133516_
                                                        (##car _e3345033513_)))
                                                   (if (gx#stx-null?
                                                        _tl3345233518_)
                                                       (if (gx#stx-pair?
                                                            _tl3344933510_)
                                                           (let ((_e3345333521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3344933510_)))
                     (let ((_tl3345533526_ (##cdr _e3345333521_))
                           (_hd3345433524_ (##car _e3345333521_)))
                       (if (gx#stx-null? _tl3345533526_)
                           (if (gx#stx-pair? _tl3329934257_)
                               (let ((_e3345633529_ (gx#stx-e _tl3329934257_)))
                                 (let ((_tl3345833534_ (##cdr _e3345633529_))
                                       (_hd3345733532_ (##car _e3345633529_)))
                                   (if (gx#stx-pair? _hd3345733532_)
                                       (let ((_e3345933537_
                                              (gx#stx-e _hd3345733532_)))
                                         (let ((_tl3346133542_
                                                (##cdr _e3345933537_))
                                               (_hd3346033540_
                                                (##car _e3345933537_)))
                                           (if (gx#identifier? _hd3346033540_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd3346033540_)
                                                   (if (gx#stx-pair?
                                                        _tl3346133542_)
                                                       (let ((_e3346233545_
                                                              (gx#stx-e
                                                               _tl3346133542_)))
                                                         (let ((_tl3346433550_
                                                                (##cdr _e3346233545_))
                                                               (_hd3346333548_
                                                                (##car _e3346233545_)))
                                                           (if (gx#stx-null?
                                                                _tl3346433550_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3345833534_)
                           (___kont4119541196_
                            _hd3346333548_
                            _hd3345433524_
                            _hd3345133516_)
                           (___kont4119741198_))
                       (___kont4119741198_))))
               (___kont4119741198_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4119741198_))
                                               (___kont4119741198_))))
                                       (___kont4119741198_))))
                               (___kont4119741198_))
                           (___kont4119741198_))))
                   (___kont4119741198_))
               (___kont4119741198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4119741198_))))
                                       (___kont4119741198_))
                                   (___kont4119741198_)))
                           (___kont4119741198_))))
                   (___kont4119741198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4119741198_))
                                               (___kont4119741198_))
                                           (___kont4119741198_))))
                                   (___kont4119741198_)))))))))
                (_assert-type32266_
                 (lambda (_id33165_ _t33166_)
                   (letrec ((_super-e33168_
                             (lambda (_t33265_)
                               (let ((_tid3326633268_
                                      (##structure-ref
                                       _t33265_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                 (if _tid3326633268_
                                     (let ((_tid33271_ _tid3326633268_))
                                       (gxc#optimizer-resolve-type _tid33271_))
                                     '#f)))))
                     (let _lp33170_ ((_rest33172_ _env-type32248_))
                       (let* ((_rest3317333181_ _rest33172_)
                              (_else3317533189_ (lambda () '#!void))
                              (_K3317733253_
                               (lambda (_rest33192_ _type-info33193_)
                                 (let* ((_type-info3319433206_
                                         _type-info33193_)
                                        (_else3319633214_
                                         (lambda () (_lp33170_ _rest33192_)))
                                        (_K3319833229_
                                         (lambda (_val33217_
                                                  _xt33218_
                                                  _xid33219_)
                                           (if (gx#free-identifier=?
                                                _id33165_
                                                _xid33219_)
                                               (if (eq? _t33166_ _xt33218_)
                                                   _val33217_
                                                   (if _val33217_
                                                       (if (if (##structure-instance-of?
                                                                _t33166_
                                                                'gxc#!struct-type::t)
                                                               (##structure-instance-of?
                                                                _xt33218_
                                                                'gxc#!struct-type::t)
                                                               '#f)
                                                           (let _subtype?33221_ ((_xt33223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          (_super-e33168_ _xt33218_)))
                     (if (not _xt33223_)
                         '#f
                         (if (eq? _xt33223_ _t33166_)
                             '#t
                             (_subtype?33221_ (_super-e33168_ _xt33223_)))))
                   '#f)
               (if (if (##structure-instance-of? _t33166_ 'gxc#!struct-type::t)
                       (##structure-instance-of?
                        _xt33218_
                        'gxc#!struct-type::t)
                       '#f)
                   (let _supertype?33225_ ((_t33227_
                                            (_super-e33168_ _t33166_)))
                     (if (not _t33227_)
                         (_lp33170_ _rest33192_)
                         (if (eq? _t33227_ _xt33218_)
                             '#f
                             (_supertype?33225_ (_super-e33168_ _t33227_)))))
                   (_lp33170_ _rest33192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp33170_ _rest33192_)))))
                                   (if (##pair? _type-info3319433206_)
                                       (let ((_hd3319933232_
                                              (##car _type-info3319433206_))
                                             (_tl3320033234_
                                              (##cdr _type-info3319433206_)))
                                         (let ((_xid33237_ _hd3319933232_))
                                           (if (##pair? _tl3320033234_)
                                               (let ((_hd3320133239_
                                                      (##car _tl3320033234_))
                                                     (_tl3320233241_
                                                      (##cdr _tl3320033234_)))
                                                 (let ((_xt33244_
                                                        _hd3320133239_))
                                                   (if (##pair? _tl3320233241_)
                                                       (let ((_hd3320333246_
                                                              (##car _tl3320233241_))
                                                             (_tl3320433248_
                                                              (##cdr _tl3320233241_)))
                                                         (let ((_val33251_
                                                                _hd3320333246_))
                                                           (if (##null? _tl3320433248_)
                                                               (_K3319833229_
                                                                _val33251_
                                                                _xt33244_
                                                                _xid33237_)
                                                               (_else3319633214_))))
                                                       (_else3319633214_))))
                                               (_else3319633214_))))
                                       (_else3319633214_))))))
                         (if (##pair? _rest3317333181_)
                             (let ((_hd3317833256_ (##car _rest3317333181_))
                                   (_tl3317933258_ (##cdr _rest3317333181_)))
                               (let* ((_type-info33261_ _hd3317833256_)
                                      (_rest33263_ _tl3317933258_))
                                 (_K3317733253_ _rest33263_ _type-info33261_)))
                             (_else3317533189_)))))))
                (_assert-count32267_
                 (lambda (_id33064_ _sym33065_ _count33066_)
                   (let _lp33068_ ((_rest33070_ _env-type32248_))
                     (let* ((_rest3307133079_ _rest33070_)
                            (_else3307333087_ (lambda () '#!void))
                            (_K3307533153_
                             (lambda (_rest33090_ _type-info33091_)
                               (let* ((_type-info3309233106_ _type-info33091_)
                                      (_else3309433114_
                                       (lambda () (_lp33068_ _rest33090_)))
                                      (_K3309633122_
                                       (lambda (_val33117_
                                                _xcount33118_
                                                _xsym33119_
                                                _xid33120_)
                                         (if (if (eq? _sym33065_ _xsym33119_)
                                                 (gx#free-identifier=?
                                                  _id33064_
                                                  _xid33120_)
                                                 '#f)
                                             (if _val33117_
                                                 (fx= _count33066_
                                                      _xcount33118_)
                                                 (if (fx= _count33066_
                                                          _xcount33118_)
                                                     '#f
                                                     (_lp33068_ _rest33090_)))
                                             (_lp33068_ _rest33090_)))))
                                 (if (##pair? _type-info3309233106_)
                                     (let ((_hd3309733125_
                                            (##car _type-info3309233106_))
                                           (_tl3309833127_
                                            (##cdr _type-info3309233106_)))
                                       (let ((_xid33130_ _hd3309733125_))
                                         (if (##pair? _tl3309833127_)
                                             (let ((_hd3309933132_
                                                    (##car _tl3309833127_))
                                                   (_tl3310033134_
                                                    (##cdr _tl3309833127_)))
                                               (let ((_xsym33137_
                                                      _hd3309933132_))
                                                 (if (##pair? _tl3310033134_)
                                                     (let ((_hd3310133139_
                                                            (##car _tl3310033134_))
                                                           (_tl3310233141_
                                                            (##cdr _tl3310033134_)))
                                                       (let ((_xcount33144_
                                                              _hd3310133139_))
                                                         (if (##pair? _tl3310233141_)
                                                             (let ((_hd3310333146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl3310233141_))
                           (_tl3310433148_ (##cdr _tl3310233141_)))
                       (let ((_val33151_ _hd3310333146_))
                         (if (##null? _tl3310433148_)
                             (_K3309633122_
                              _val33151_
                              _xcount33144_
                              _xsym33137_
                              _xid33130_)
                             (_else3309433114_))))
                     (_else3309433114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else3309433114_))))
                                             (_else3309433114_))))
                                     (_else3309433114_))))))
                       (if (##pair? _rest3307133079_)
                           (let ((_hd3307633156_ (##car _rest3307133079_))
                                 (_tl3307733158_ (##cdr _rest3307133079_)))
                             (let* ((_type-info33161_ _hd3307633156_)
                                    (_rest33163_ _tl3307733158_))
                               (_K3307533153_ _rest33163_ _type-info33161_)))
                           (_else3307333087_))))))
                (_assert-eqf32268_
                 (lambda (_id32954_ _sym32955_ _datum32956_)
                   (letrec ((_eqf32958_
                             (lambda (_sym33059_)
                               (let ((_$e33061_ _sym33059_))
                                 (if (eq? 'eq? _$e33061_)
                                     eq?
                                     (if (eq? 'eqv? _$e33061_)
                                         eqv?
                                         (if (eq? 'equal? _$e33061_)
                                             equal?
                                             (if (eq? 'free-identifier=?
                                                      _$e33061_)
                                                 gx#free-identifier=?
                                                 (if (eq? 'stx-eq? _$e33061_)
                                                     gx#stx-eq?
                                                     (gxc#raise-compile-error
                                                      '"Unexpected eqf symbol"
                                                      _body32009_
                                                      _sym33059_))))))))))
                     (let _lp32960_ ((_rest32962_ _env-type32248_))
                       (let* ((_rest3296332971_ _rest32962_)
                              (_else3296532979_ (lambda () '#!void))
                              (_K3296733047_
                               (lambda (_rest32982_ _type-info32983_)
                                 (let* ((_type-info3298432998_
                                         _type-info32983_)
                                        (_else3298633006_
                                         (lambda () (_lp32960_ _rest32982_)))
                                        (_K3298833016_
                                         (lambda (_val33009_
                                                  _xdatum33010_
                                                  _xsym33011_
                                                  _xid33012_)
                                           (if (if (eq? _sym32955_ _xsym33011_)
                                                   (gx#free-identifier=?
                                                    _id32954_
                                                    _xid33012_)
                                                   '#f)
                                               (let ((_=?33014_
                                                      (_eqf32958_ _sym32955_)))
                                                 (if _val33009_
                                                     (_=?33014_
                                                      _datum32956_
                                                      _xdatum33010_)
                                                     (if (_=?33014_
                                                          _datum32956_
                                                          _xdatum33010_)
                                                         '#f
                                                         (_lp32960_
                                                          _rest32982_))))
                                               (_lp32960_ _rest32982_)))))
                                   (if (##pair? _type-info3298432998_)
                                       (let ((_hd3298933019_
                                              (##car _type-info3298432998_))
                                             (_tl3299033021_
                                              (##cdr _type-info3298432998_)))
                                         (let ((_xid33024_ _hd3298933019_))
                                           (if (##pair? _tl3299033021_)
                                               (let ((_hd3299133026_
                                                      (##car _tl3299033021_))
                                                     (_tl3299233028_
                                                      (##cdr _tl3299033021_)))
                                                 (let ((_xsym33031_
                                                        _hd3299133026_))
                                                   (if (##pair? _tl3299233028_)
                                                       (let ((_hd3299333033_
                                                              (##car _tl3299233028_))
                                                             (_tl3299433035_
                                                              (##cdr _tl3299233028_)))
                                                         (let ((_xdatum33038_
                                                                _hd3299333033_))
                                                           (if (##pair? _tl3299433035_)
                                                               (let ((_hd3299533040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _tl3299433035_))
                             (_tl3299633042_ (##cdr _tl3299433035_)))
                         (let ((_val33045_ _hd3299533040_))
                           (if (##null? _tl3299633042_)
                               (_K3298833016_
                                _val33045_
                                _xdatum33038_
                                _xsym33031_
                                _xid33024_)
                               (_else3298633006_))))
                       (_else3298633006_))))
               (_else3298633006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else3298633006_))))
                                       (_else3298633006_))))))
                         (if (##pair? _rest3296332971_)
                             (let ((_hd3296833050_ (##car _rest3296332971_))
                                   (_tl3296933052_ (##cdr _rest3296332971_)))
                               (let* ((_type-info33055_ _hd3296833050_)
                                      (_rest33057_ _tl3296933052_))
                                 (_K3296733047_ _rest33057_ _type-info33055_)))
                             (_else3296532979_)))))))
                (_bind-e__3959639597_
                 (lambda (_bind32857_ _body32858_ _continue32859_)
                   (let _lp32861_ ((_rest32863_ _bind32857_)
                                   (_subst32864_ '())
                                   (_locals32865_ '())
                                   (_env32866_ _env-bind32249_))
                     (let* ((_rest3286732875_ _rest32863_)
                            (_else3286932889_
                             (lambda ()
                               (let* ((_body32883_
                                       (if (null? _subst32864_)
                                           _body32858_
                                           (gxc#apply-expression-subst*
                                            _body32858_
                                            _subst32864_)))
                                      (_body32886_
                                       (_do-bind!32260_
                                        _env32866_
                                        (lambda ()
                                          (_continue32859_ _body32883_)))))
                                 (if (null? _locals32865_)
                                     _body32886_
                                     (cons '%#let-values
                                           (cons _locals32865_
                                                 (cons _body32886_ '())))))))
                            (_K3287132930_
                             (lambda (_rest32892_ _bind32893_)
                               (let* ((_bind3289432901_ _bind32893_)
                                      (_E3289632905_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3289432901_)))
                                      (_K3289732918_
                                       (lambda (_expr32908_ _id32909_)
                                         (let* ((_sexpr32911_
                                                 (gxc#apply-generate-runtime-repr
                                                  _expr32908_))
                                                (_$e32913_
                                                 (assget _sexpr32911_
                                                         _env-bind32249_)))
                                           (if _$e32913_
                                               ((lambda (_xid32916_)
                                                  (_lp32861_
                                                   _rest32892_
                                                   (cons (cons _id32909_
                                                               _xid32916_)
                                                         _subst32864_)
                                                   _locals32865_
                                                   _env32866_))
                                                _$e32913_)
                                               (_lp32861_
                                                _rest32892_
                                                _subst32864_
                                                (cons (cons (cons _id32909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr32908_ '()))
              _locals32865_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _sexpr32911_
                                                            _id32909_)
                                                      _env32866_)))))))
                                 (if (##pair? _bind3289432901_)
                                     (let ((_hd3289832921_
                                            (##car _bind3289432901_))
                                           (_tl3289932923_
                                            (##cdr _bind3289432901_)))
                                       (let* ((_id32926_ _hd3289832921_)
                                              (_expr32928_ _tl3289932923_))
                                         (_K3289732918_
                                          _expr32928_
                                          _id32926_)))
                                     (_E3289632905_))))))
                       (if (##pair? _rest3286732875_)
                           (let ((_hd3287232933_ (##car _rest3286732875_))
                                 (_tl3287332935_ (##cdr _rest3286732875_)))
                             (let* ((_bind32938_ _hd3287232933_)
                                    (_rest32940_ _tl3287332935_))
                               (_K3287132930_ _rest32940_ _bind32938_)))
                           (_else3286932889_))))))
                (_bind-e__0__3959839599_
                 (lambda (_bind32945_ _body32946_)
                   (let ((_continue32948_ _optimize-e32262_))
                     (_bind-e__3959639597_
                      _bind32945_
                      _body32946_
                      _continue32948_))))
                (_bind-e32269_
                 (lambda _g42694_
                   (let ((_g42693_ (length _g42694_)))
                     (cond ((##fx= _g42693_ 2)
                            (apply _bind-e__0__3959839599_ _g42694_))
                           ((##fx= _g42693_ 3)
                            (apply _bind-e__3959639597_ _g42694_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42694_))))))
                (_lookup-block32270_
                 (lambda (_id32852_)
                   (find (lambda (_block32854_)
                           (gx#free-identifier=? (car _block32854_) _id32852_))
                         _blocks32012_)))
                (_inline-block32271_
                 (lambda (_block32728_ _args32729_)
                   (let* ((_kont32731_ (caddr _block32728_))
                          (_g3273332759_
                           (lambda (_g3273432756_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3273432756_)))
                          (_g3273232849_
                           (lambda (_g3273432762_)
                             (if (gx#stx-pair? _g3273432762_)
                                 (let ((_e3273732764_
                                        (gx#stx-e _g3273432762_)))
                                   (let ((_hd3273832767_ (##car _e3273732764_))
                                         (_tl3273932769_
                                          (##cdr _e3273732764_)))
                                     (if (gx#identifier? _hd3273832767_)
                                         (if (gx#stx-eq?
                                              '%#lambda
                                              _hd3273832767_)
                                             (if (gx#stx-pair? _tl3273932769_)
                                                 (let ((_e3274032772_
                                                        (gx#stx-e
                                                         _tl3273932769_)))
                                                   (let ((_hd3274132775_
                                                          (##car _e3274032772_))
                                                         (_tl3274232777_
                                                          (##cdr _e3274032772_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd3274132775_)
                                                         (let ((_g42695_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3274132775_
                         '0)))
                   (begin
                     (let ((_g42696_
                            (if (##values? _g42695_)
                                (##vector-length _g42695_)
                                1)))
                       (if (not (##fx= _g42696_ 2))
                           (error "Context expects 2 values" _g42696_)))
                     (let ((_target3274332780_ (##vector-ref _g42695_ 0))
                           (_tl3274532782_ (##vector-ref _g42695_ 1)))
                       (if (gx#stx-null? _tl3274532782_)
                           (letrec ((_loop3274632785_
                                     (lambda (_hd3274432788_ _id3275032790_)
                                       (if (gx#stx-pair? _hd3274432788_)
                                           (let ((_e3274732793_
                                                  (gx#stx-e _hd3274432788_)))
                                             (let ((_lp-hd3274832796_
                                                    (##car _e3274732793_))
                                                   (_lp-tl3274932798_
                                                    (##cdr _e3274732793_)))
                                               (_loop3274632785_
                                                _lp-tl3274932798_
                                                (cons _lp-hd3274832796_
                                                      _id3275032790_))))
                                           (let ((_id3275132801_
                                                  (reverse _id3275032790_)))
                                             (if (gx#stx-pair? _tl3274232777_)
                                                 (let ((_e3275232804_
                                                        (gx#stx-e
                                                         _tl3274232777_)))
                                                   (let ((_hd3275332807_
                                                          (##car _e3275232804_))
                                                         (_tl3275432809_
                                                          (##cdr _e3275232804_)))
                                                     (if (gx#stx-null?
                                                          _tl3275432809_)
                                                         ((lambda (_L32812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L32813_)
                    (if (null? (begin
                                 '#!void
                                 (foldr1 (lambda (_g3283232835_ _g3283332837_)
                                           (cons _g3283232835_ _g3283332837_))
                                         '()
                                         _L32813_)))
                        _L32812_
                        (let ((_subst32847_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3283932842_
                                                       _g3284032844_)
                                                (cons _g3283932842_
                                                      _g3284032844_))
                                              '()
                                              _L32813_))
                                    _args32729_)))
                          (gxc#apply-expression-subst*
                           _L32812_
                           _subst32847_))))
                  _hd3275332807_
                  _id3275132801_)
                 (_g3273332759_ _g3273432762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3273332759_
                                                  _g3273432762_)))))))
                             (_loop3274632785_ _target3274332780_ '()))
                           (_g3273332759_ _g3273432762_)))))
                 (_g3273332759_ _g3273432762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3273332759_ _g3273432762_))
                                             (_g3273332759_ _g3273432762_))
                                         (_g3273332759_ _g3273432762_))))
                                 (_g3273332759_ _g3273432762_)))))
                     (_g3273232849_ _kont32731_))))
                (_nonlinear-block?32272_
                 (lambda (_block32277_)
                   (letrec ((_nonlinear-expr?32279_
                             (lambda (_expr32387_)
                               (let* ((___stx4165341654_ _expr32387_)
                                      (_g3239332459_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4165341654_))))
                                 (let ((___kont4165541656_ (lambda () '#t))
                                       (___kont4165741658_
                                        (lambda (_L32658_)
                                          (let* ((___stx4163541636_ _L32658_)
                                                 (_g3267632685_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx4163541636_))))
                                            (let ((___kont4163741638_
                                                   (lambda () '#f))
                                                  (___kont4163941640_
                                                   (lambda () '#t)))
                                              (if (gx#stx-pair?
                                                   ___stx4163541636_)
                                                  (let ((_e3267832697_
                                                         (gx#stx-e
                                                          ___stx4163541636_)))
                                                    (let ((_tl3268032702_
                                                           (##cdr _e3267832697_))
                                                          (_hd3267932700_
                                                           (##car _e3267832697_)))
                                                      (if (gx#identifier?
                                                           _hd3267932700_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd3267932700_)
                                                              (___kont4163741638_)
                                                              (___kont4163941640_))
                                                          (___kont4163941640_))))
                                                  (___kont4163941640_))))))
                                       (___kont4166141662_
                                        (lambda (_L32556_)
                                          (_nonlinear-expr?32279_ _L32556_)))
                                       (___kont4166341664_
                                        (lambda (_L32503_ _L32504_ _L32505_)
                                          (let ((_$e32524_
                                                 (_nonlinear-expr?32279_
                                                  _L32504_)))
                                            (if _$e32524_
                                                _$e32524_
                                                (_nonlinear-expr?32279_
                                                 _L32503_)))))
                                       (___kont4166541666_ (lambda () '#f)))
                                   (let* ((___match4171641717_
                                           (lambda (_e3243132532_
                                                    _hd3243232535_
                                                    _tl3243332537_
                                                    _e3243432540_
                                                    _hd3243532543_
                                                    _tl3243632545_)
                                             (if (gx#stx-pair? _tl3243632545_)
                                                 (let ((_e3243732548_
                                                        (gx#stx-e
                                                         _tl3243632545_)))
                                                   (let ((_tl3243932553_
                                                          (##cdr _e3243732548_))
                                                         (_hd3243832551_
                                                          (##car _e3243732548_)))
                                                     (if (gx#stx-null?
                                                          _tl3243932553_)
                                                         (___kont4166141662_
                                                          _hd3243832551_)
                                                         (___kont4166541666_))))
                                                 (___kont4166541666_))))
                                          (___match4170041701_
                                           (lambda (_e3239932574_
                                                    _hd3240032577_
                                                    _tl3240132579_
                                                    _e3240232582_
                                                    _hd3240332585_
                                                    _tl3240432587_
                                                    ___splice4165941660_
                                                    _target3240532590_
                                                    _tl3240732592_)
                                             (letrec ((_loop3240832595_
                                                       (lambda (_hd3240632598_)
                                                         (if (gx#stx-pair?
                                                              _hd3240632598_)
                                                             (let ((_e3240932601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3240632598_)))
                       (let ((_lp-tl3241132606_ (##cdr _e3240932601_))
                             (_lp-hd3241032604_ (##car _e3240932601_)))
                         (if (gx#stx-pair? _lp-hd3241032604_)
                             (let ((_e3241232609_
                                    (gx#stx-e _lp-hd3241032604_)))
                               (let ((_tl3241432614_ (##cdr _e3241232609_))
                                     (_hd3241332612_ (##car _e3241232609_)))
                                 (if (gx#stx-pair? _hd3241332612_)
                                     (let ((_e3241532617_
                                            (gx#stx-e _hd3241332612_)))
                                       (let ((_tl3241732622_
                                              (##cdr _e3241532617_))
                                             (_hd3241632620_
                                              (##car _e3241532617_)))
                                         (if (gx#stx-null? _tl3241732622_)
                                             (if (gx#stx-pair? _tl3241432614_)
                                                 (let ((_e3241832625_
                                                        (gx#stx-e
                                                         _tl3241432614_)))
                                                   (let ((_tl3242032630_
                                                          (##cdr _e3241832625_))
                                                         (_hd3241932628_
                                                          (##car _e3241832625_)))
                                                     (if (gx#stx-pair?
                                                          _hd3241932628_)
                                                         (let ((_e3242132633_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3241932628_)))
                   (let ((_tl3242332638_ (##cdr _e3242132633_))
                         (_hd3242232636_ (##car _e3242132633_)))
                     (if (gx#identifier? _hd3242232636_)
                         (if (gx#stx-eq? '%#ref _hd3242232636_)
                             (if (gx#stx-pair? _tl3242332638_)
                                 (let ((_e3242432641_
                                        (gx#stx-e _tl3242332638_)))
                                   (let ((_tl3242632646_ (##cdr _e3242432641_))
                                         (_hd3242532644_
                                          (##car _e3242432641_)))
                                     (if (gx#stx-null? _tl3242632646_)
                                         (if (gx#stx-null? _tl3242032630_)
                                             (_loop3240832595_
                                              _lp-tl3241132606_)
                                             (___match4171641717_
                                              _e3239932574_
                                              _hd3240032577_
                                              _tl3240132579_
                                              _e3240232582_
                                              _hd3240332585_
                                              _tl3240432587_))
                                         (___match4171641717_
                                          _e3239932574_
                                          _hd3240032577_
                                          _tl3240132579_
                                          _e3240232582_
                                          _hd3240332585_
                                          _tl3240432587_))))
                                 (___match4171641717_
                                  _e3239932574_
                                  _hd3240032577_
                                  _tl3240132579_
                                  _e3240232582_
                                  _hd3240332585_
                                  _tl3240432587_))
                             (___match4171641717_
                              _e3239932574_
                              _hd3240032577_
                              _tl3240132579_
                              _e3240232582_
                              _hd3240332585_
                              _tl3240432587_))
                         (___match4171641717_
                          _e3239932574_
                          _hd3240032577_
                          _tl3240132579_
                          _e3240232582_
                          _hd3240332585_
                          _tl3240432587_))))
                 (___match4171641717_
                  _e3239932574_
                  _hd3240032577_
                  _tl3240132579_
                  _e3240232582_
                  _hd3240332585_
                  _tl3240432587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___match4171641717_
                                                  _e3239932574_
                                                  _hd3240032577_
                                                  _tl3240132579_
                                                  _e3240232582_
                                                  _hd3240332585_
                                                  _tl3240432587_))
                                             (___match4171641717_
                                              _e3239932574_
                                              _hd3240032577_
                                              _tl3240132579_
                                              _e3240232582_
                                              _hd3240332585_
                                              _tl3240432587_))))
                                     (___match4171641717_
                                      _e3239932574_
                                      _hd3240032577_
                                      _tl3240132579_
                                      _e3240232582_
                                      _hd3240332585_
                                      _tl3240432587_))))
                             (___match4171641717_
                              _e3239932574_
                              _hd3240032577_
                              _tl3240132579_
                              _e3240232582_
                              _hd3240332585_
                              _tl3240432587_))))
                     (let ()
                       (if (gx#stx-pair? _tl3240432587_)
                           (let ((_e3242732650_ (gx#stx-e _tl3240432587_)))
                             (let ((_tl3242932655_ (##cdr _e3242732650_))
                                   (_hd3242832653_ (##car _e3242732650_)))
                               (if (gx#stx-null? _tl3242932655_)
                                   (___kont4165741658_ _hd3242832653_)
                                   (___kont4166541666_))))
                           (___kont4166541666_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop3240832595_
                                                _target3240532590_)))))
                                     (if (gx#stx-pair? ___stx4165341654_)
                                         (let ((_e3239532715_
                                                (gx#stx-e ___stx4165341654_)))
                                           (let ((_tl3239732720_
                                                  (##cdr _e3239532715_))
                                                 (_hd3239632718_
                                                  (##car _e3239532715_)))
                                             (if (gx#identifier?
                                                  _hd3239632718_)
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3239632718_)
                                                     (___kont4165541656_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _hd3239632718_)
                                                         (if (gx#stx-pair?
                                                              _tl3239732720_)
                                                             (let ((_e3240232582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3239732720_)))
                       (let ((_tl3240432587_ (##cdr _e3240232582_))
                             (_hd3240332585_ (##car _e3240232582_)))
                         (if (gx#stx-pair/null? _hd3240332585_)
                             (let ((___splice4165941660_
                                    (gx#syntax-split-splice
                                     _hd3240332585_
                                     '0)))
                               (let ((_tl3240732592_
                                      (##vector-ref ___splice4165941660_ '1))
                                     (_target3240532590_
                                      (##vector-ref ___splice4165941660_ '0)))
                                 (if (gx#stx-null? _tl3240732592_)
                                     (___match4170041701_
                                      _e3239532715_
                                      _hd3239632718_
                                      _tl3239732720_
                                      _e3240232582_
                                      _hd3240332585_
                                      _tl3240432587_
                                      ___splice4165941660_
                                      _target3240532590_
                                      _tl3240732592_)
                                     (if (gx#stx-pair? _tl3240432587_)
                                         (let ((_e3243732548_
                                                (gx#stx-e _tl3240432587_)))
                                           (let ((_tl3243932553_
                                                  (##cdr _e3243732548_))
                                                 (_hd3243832551_
                                                  (##car _e3243732548_)))
                                             (if (gx#stx-null? _tl3243932553_)
                                                 (___kont4166141662_
                                                  _hd3243832551_)
                                                 (___kont4166541666_))))
                                         (___kont4166541666_)))))
                             (if (gx#stx-pair? _tl3240432587_)
                                 (let ((_e3243732548_
                                        (gx#stx-e _tl3240432587_)))
                                   (let ((_tl3243932553_ (##cdr _e3243732548_))
                                         (_hd3243832551_
                                          (##car _e3243732548_)))
                                     (if (gx#stx-null? _tl3243932553_)
                                         (___kont4166141662_ _hd3243832551_)
                                         (___kont4166541666_))))
                                 (___kont4166541666_)))))
                     (___kont4166541666_))
                 (if (gx#stx-eq? '%#if _hd3239632718_)
                     (if (gx#stx-pair? _tl3239732720_)
                         (let ((_e3244632479_ (gx#stx-e _tl3239732720_)))
                           (let ((_tl3244832484_ (##cdr _e3244632479_))
                                 (_hd3244732482_ (##car _e3244632479_)))
                             (if (gx#stx-pair? _tl3244832484_)
                                 (let ((_e3244932487_
                                        (gx#stx-e _tl3244832484_)))
                                   (let ((_tl3245132492_ (##cdr _e3244932487_))
                                         (_hd3245032490_
                                          (##car _e3244932487_)))
                                     (if (gx#stx-pair? _tl3245132492_)
                                         (let ((_e3245232495_
                                                (gx#stx-e _tl3245132492_)))
                                           (let ((_tl3245432500_
                                                  (##cdr _e3245232495_))
                                                 (_hd3245332498_
                                                  (##car _e3245232495_)))
                                             (if (gx#stx-null? _tl3245432500_)
                                                 (___kont4166341664_
                                                  _hd3245332498_
                                                  _hd3245032490_
                                                  _hd3244732482_)
                                                 (___kont4166541666_))))
                                         (___kont4166541666_))))
                                 (___kont4166541666_))))
                         (___kont4166541666_))
                     (___kont4166541666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4166541666_))))
                                         (___kont4166541666_))))))))
                     (let* ((_kont32281_ (caddr _block32277_))
                            (_g3228332309_
                             (lambda (_g3228432306_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3228432306_)))
                            (_g3228232384_
                             (lambda (_g3228432312_)
                               (if (gx#stx-pair? _g3228432312_)
                                   (let ((_e3228732314_
                                          (gx#stx-e _g3228432312_)))
                                     (let ((_hd3228832317_
                                            (##car _e3228732314_))
                                           (_tl3228932319_
                                            (##cdr _e3228732314_)))
                                       (if (gx#identifier? _hd3228832317_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd3228832317_)
                                               (if (gx#stx-pair?
                                                    _tl3228932319_)
                                                   (let ((_e3229032322_
                                                          (gx#stx-e
                                                           _tl3228932319_)))
                                                     (let ((_hd3229132325_
                                                            (##car _e3229032322_))
                                                           (_tl3229232327_
                                                            (##cdr _e3229032322_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd3229132325_)
                                                           (let ((_g42697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd3229132325_ '0)))
                     (begin
                       (let ((_g42698_
                              (if (##values? _g42697_)
                                  (##vector-length _g42697_)
                                  1)))
                         (if (not (##fx= _g42698_ 2))
                             (error "Context expects 2 values" _g42698_)))
                       (let ((_target3229332330_ (##vector-ref _g42697_ 0))
                             (_tl3229532332_ (##vector-ref _g42697_ 1)))
                         (if (gx#stx-null? _tl3229532332_)
                             (letrec ((_loop3229632335_
                                       (lambda (_hd3229432338_ _id3230032340_)
                                         (if (gx#stx-pair? _hd3229432338_)
                                             (let ((_e3229732343_
                                                    (gx#stx-e _hd3229432338_)))
                                               (let ((_lp-hd3229832346_
                                                      (##car _e3229732343_))
                                                     (_lp-tl3229932348_
                                                      (##cdr _e3229732343_)))
                                                 (_loop3229632335_
                                                  _lp-tl3229932348_
                                                  (cons _lp-hd3229832346_
                                                        _id3230032340_))))
                                             (let ((_id3230132351_
                                                    (reverse _id3230032340_)))
                                               (if (gx#stx-pair?
                                                    _tl3229232327_)
                                                   (let ((_e3230232354_
                                                          (gx#stx-e
                                                           _tl3229232327_)))
                                                     (let ((_hd3230332357_
                                                            (##car _e3230232354_))
                                                           (_tl3230432359_
                                                            (##cdr _e3230232354_)))
                                                       (if (gx#stx-null?
                                                            _tl3230432359_)
                                                           ((lambda (_L32362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L32363_)
                      (_nonlinear-expr?32279_ _L32362_))
                    _hd3230332357_
                    _id3230132351_)
                   (_g3228332309_ _g3228432312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3228332309_
                                                    _g3228432312_)))))))
                               (_loop3229632335_ _target3229332330_ '()))
                             (_g3228332309_ _g3228432312_)))))
                   (_g3228332309_ _g3228432312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3228332309_
                                                    _g3228432312_))
                                               (_g3228332309_ _g3228432312_))
                                           (_g3228332309_ _g3228432312_))))
                                   (_g3228332309_ _g3228432312_)))))
                       (_g3228232384_ _kont32281_))))))
        (_do-assert32251_
         _assert32010_
         (lambda ()
           (_do-bind32258_
            _bind32011_
            (lambda ()
              (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                  (_do-splice!32261_
                   (lambda () (_optimize-e32262_ _body32009_)))
                  (_optimize-e32262_ _body32009_)))))))))
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
                  (let* ((___stx4175741758_ _expr31400_)
                         (_g3140731504_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4175741758_))))
                    (let ((___kont4175941760_
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
                          (___kont4176141762_
                           (lambda (_L31768_)
                             (if (gx#free-identifier=? _L31768_ _name31242_)
                                 _assert31401_
                                 '#f)))
                          (___kont4176341764_
                           (lambda (_L31718_)
                             (_assert-restart31244_ _L31718_ _assert31401_)))
                          (___kont4176541766_
                           (lambda (_L31644_
                                    _L31645_
                                    _L31646_
                                    _L31647_
                                    _L31648_)
                             (_assert-restart31244_ _L31646_ _assert31401_)))
                          (___kont4177141772_ (lambda () '#f)))
                      (let ((___match4192641927_
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
                                      ___splice4176741768_
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
                             (let ((___splice4176941770_
                                    (gx#syntax-split-splice
                                     _tl3146031537_
                                     '0)))
                               (let ((_tl3149031614_
                                      (##vector-ref ___splice4176941770_ '1))
                                     (_target3148831612_
                                      (##vector-ref ___splice4176941770_ '0)))
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
                           (___kont4176541766_
                            _hd3149831639_
                            _bind3149631633_
                            _hd3148631607_
                            _id3148431601_
                            _hd3146531551_)
                           (___kont4177141772_))))
                   (___kont4177141772_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3149131617_
                                        _target3148831612_
                                        '()))
                                     (___kont4177141772_))))
                             (___kont4177141772_))
                         (___kont4177141772_))
                     (___kont4177141772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4177141772_)))))))
                                 (_loop3147931585_ _target3147631580_ '())))))
                        (if (gx#stx-pair? ___stx4175741758_)
                            (let ((_e3141231788_ (gx#stx-e ___stx4175741758_)))
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
                            (___kont4175941760_
                             _hd3142231815_
                             _hd3141931807_
                             _hd3141631799_)
                            (___kont4177141772_))))
                    (___kont4177141772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4177141772_))))
                                            (___kont4177141772_))
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
                                        (___kont4176141762_ _hd3143531763_)
                                        (___kont4177141772_))))
                                (___kont4177141772_))
                            (___kont4177141772_))
                        (___kont4177141772_))))
                (___kont4177141772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4177141772_))
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
                            (___kont4176341764_ _hd3144531713_)
                            (___kont4177141772_))))
                    (___kont4177141772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4177141772_))
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
                                            (let ((___splice4176741768_
                                                   (gx#syntax-split-splice
                                                    _hd3147431575_
                                                    '0)))
                                              (let ((_tl3147831582_
                                                     (##vector-ref
                                                      ___splice4176741768_
                                                      '1))
                                                    (_target3147631580_
                                                     (##vector-ref
                                                      ___splice4176741768_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3147831582_)
                                                    (___match4192641927_
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
                                                     ___splice4176741768_
                                                     _target3147631580_
                                                     _tl3147831582_)
                                                    (___kont4177141772_))))
                                            (___kont4177141772_))))
                                    (___kont4177141772_))
                                (___kont4177141772_))
                            (___kont4177141772_))))
                    (___kont4177141772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4177141772_))
                                                (___kont4177141772_))))
                                        (___kont4177141772_))))
                                (___kont4177141772_))))
                        (___kont4177141772_))))
                (___kont4177141772_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4177141772_)))))
                                    (___kont4177141772_))))
                            (___kont4177141772_))))))))
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
                                                        (let ((_g42699_
                                                               (gx#syntax-split-splice
                                                                _hd3127731311_
                                                                '0)))
                                                          (begin
                                                            (let ((_g42700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g42699_)
                               (##vector-length _g42699_)
                               1)))
                      (if (not (##fx= _g42700_ 2))
                          (error "Context expects 2 values" _g42700_)))
                    (let ((_target3127931316_ (##vector-ref _g42699_ 0))
                          (_tl3128131318_ (##vector-ref _g42699_ 1)))
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
                     (let* ((___stx4192941930_ _body30993_)
                            (_g3099731044_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4192941930_))))
                       (let ((___kont4193141932_
                              (lambda (_L31210_ _L31211_ _L31212_)
                                (_lp30991_
                                 _L31210_
                                 (cons (cons _L31212_ (gxc#compile-e _L31211_))
                                       _clauses30994_))))
                             (___kont4193341934_
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
                         (if (gx#stx-pair? ___stx4192941930_)
                             (let ((_e3100231154_
                                    (gx#stx-e ___stx4192941930_)))
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
                         (___kont4193141932_
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
                                                     (___kont4193341934_
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
                  (_g42701_ (gx#core-bind-runtime!__0 _id30810_))
                  (_g42702_
                   (gxc#optimize-syntax-case-clauses
                    _clauses30803_
                    (car _negation30802_))))
             (begin
               (let ((_g42703_
                      (if (##values? _g42702_) (##vector-length _g42702_) 1)))
                 (if (not (##fx= _g42703_ 2))
                     (error "Context expects 2 values" _g42703_)))
               (let ((_clauses30813_ (##vector-ref _g42702_ 0))
                     (_konts30814_ (##vector-ref _g42702_ 1)))
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
         (let ((__obj42675 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj42675) __obj42675))))))
  (define gxc#optimize-syntax-case-clauses
    (lambda (_clauses29558_ _negation-id29559_)
      (letrec ((_xform-e29561_
                (lambda (_expr29945_
                         _kont-id29946_
                         _kont-box29947_
                         _negation-id29948_)
                  (let* ((___stx4213142132_ _expr29945_)
                         (_g2995430087_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4213142132_))))
                    (let ((___kont4213342134_
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
                          (___kont4213542136_
                           (lambda (_L30692_
                                    _L30693_
                                    _L30694_
                                    _L30695_
                                    _L30696_)
                             (let* ((_id30731_
                                     (make-symbol (gensym '__splice)))
                                    (_id30733_
                                     (gx#core-quote-syntax__0 _id30731_))
                                    (_g42704_
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
                          (___kont4213742138_
                           (lambda (_L30574_ _L30575_)
                             (let ((_body30589_
                                    (_xform-e29561_
                                     _L30574_
                                     _kont-id29946_
                                     _kont-box29947_
                                     _negation-id29948_)))
                               (cons '%#let-values
                                     (cons _L30575_ (cons _body30589_ '()))))))
                          (___kont4213942140_
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
                          (___kont4214142142_
                           (lambda (_L30180_ _L30181_ _L30182_)
                             (let* ((___stx4203342034_ _L30181_)
                                    (_g3021130254_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4203342034_))))
                               (let ((___kont4203542036_
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
                                     (___kont4203742038_
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
                                 (let ((___match4212842129_
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
                                                (___kont4203542036_
                                                 _L30370_
                                                 _L30371_
                                                 _L30372_
                                                 _L30373_)
                                                (___kont4203742038_))))))
                                   (if (gx#stx-pair? ___stx4203342034_)
                                       (let ((_e3021730282_
                                              (gx#stx-e ___stx4203342034_)))
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
                                                   (___match4212842129_
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
                                                   (___kont4203742038_))
                                               (___kont4203742038_))
                                           (___kont4203742038_))))
                                   (___kont4203742038_))
                               (___kont4203742038_))
                           (___kont4203742038_))))
                   (___kont4203742038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4203742038_))
                                               (___kont4203742038_))))
                                       (___kont4203742038_))
                                   (___kont4203742038_))
                               (___kont4203742038_))))
                       (___kont4203742038_))))
               (___kont4203742038_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4203742038_))
                                               (___kont4203742038_))))
                                       (___kont4203742038_))))
                               (___kont4203742038_))))
                       (___kont4203742038_))))
               (___kont4203742038_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4203742038_))
                                               (___kont4203742038_))))
                                       (___kont4203742038_))))))))
                      (let* ((___match4238842389_
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
                                       ___splice4214342144_
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
                          (let ((___splice4214542146_
                                 (gx#syntax-split-splice _tl3005530105_ '0)))
                            (let ((_tl3007630158_
                                   (##vector-ref ___splice4214542146_ '1))
                                  (_target3007430156_
                                   (##vector-ref ___splice4214542146_ '0)))
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
                                                    (___kont4214142142_
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
                             (___match4227042271_
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
                                      (___kont4213542136_
                                       _L30692_
                                       _L30693_
                                       _L30694_
                                       _L30695_
                                       _L30696_)
                                      (___kont4213742138_
                                       _hd3001030687_
                                       _hd2998030607_))))))
                        (if (gx#stx-pair? ___stx4213142132_)
                            (let ((_e2995930744_ (gx#stx-e ___stx4213142132_)))
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
                            (___kont4213342134_
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
                                                (___match4227042271_
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
                                                (___kont4213742138_
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
                                            (___kont4213742138_
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
                                        (___kont4213742138_
                                         _hd3002130569_
                                         _hd2998030607_)
                                        (_g2995430087_))))
                                (_g2995430087_)))))
                    (if (gx#stx-pair? _tl2998130609_)
                        (let ((_e3002030566_ (gx#stx-e _tl2998130609_)))
                          (let ((_tl3002230571_ (##cdr _e3002030566_))
                                (_hd3002130569_ (##car _e3002030566_)))
                            (if (gx#stx-null? _tl3002230571_)
                                (___kont4213742138_
                                 _hd3002130569_
                                 _hd2998030607_)
                                (_g2995430087_))))
                        (_g2995430087_)))
                (if (gx#stx-pair? _tl2998130609_)
                    (let ((_e3002030566_ (gx#stx-e _tl2998130609_)))
                      (let ((_tl3002230571_ (##cdr _e3002030566_))
                            (_hd3002130569_ (##car _e3002030566_)))
                        (if (gx#stx-null? _tl3002230571_)
                            (___kont4213742138_ _hd3002130569_ _hd2998030607_)
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
                        (___kont4213742138_ _hd3002130569_ _hd2998030607_)
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
                                                        (___kont4213742138_
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
                                                (___kont4213742138_
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
                                            (___kont4213742138_
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
                                        (___kont4213742138_
                                         _hd3002130569_
                                         _hd2998030607_)
                                        (_g2995430087_))))
                                (_g2995430087_)))))
                    (if (gx#stx-pair? _tl2998130609_)
                        (let ((_e3002030566_ (gx#stx-e _tl2998130609_)))
                          (let ((_tl3002230571_ (##cdr _e3002030566_))
                                (_hd3002130569_ (##car _e3002030566_)))
                            (if (gx#stx-null? _tl3002230571_)
                                (___kont4213742138_
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
                        (___kont4213742138_ _hd3002130569_ _hd2998030607_)
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
                                                            (___kont4213742138_
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
                                                    (___kont4213742138_
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
                                            (___kont4213742138_
                                             _hd3002130569_
                                             _hd2998030607_)
                                            (_g2995430087_))))
                                    (_g2995430087_)))))
                        (if (gx#stx-pair? _tl2998130609_)
                            (let ((_e3002030566_ (gx#stx-e _tl2998130609_)))
                              (let ((_tl3002230571_ (##cdr _e3002030566_))
                                    (_hd3002130569_ (##car _e3002030566_)))
                                (if (gx#stx-null? _tl3002230571_)
                                    (___kont4213742138_
                                     _hd3002130569_
                                     _hd2998030607_)
                                    (_g2995430087_))))
                            (_g2995430087_)))))
                (if (gx#stx-pair? _tl2998130609_)
                    (let ((_e3002030566_ (gx#stx-e _tl2998130609_)))
                      (let ((_tl3002230571_ (##cdr _e3002030566_))
                            (_hd3002130569_ (##car _e3002030566_)))
                        (if (gx#stx-null? _tl3002230571_)
                            (___kont4213742138_ _hd3002130569_ _hd2998030607_)
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
                                (___kont4213942140_
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
                                                (let ((___splice4214342144_
                                                       (gx#syntax-split-splice
                                                        _hd3006030119_
                                                        '0)))
                                                  (let ((_tl3006430126_
                                                         (##vector-ref
                                                          ___splice4214342144_
                                                          '1))
                                                        (_target3006230124_
                                                         (##vector-ref
                                                          ___splice4214342144_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3006430126_)
                                                        (___match4238842389_
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
                                                         ___splice4214342144_
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
                                                        (let ((_g42705_
                                                               (gx#syntax-split-splice
                                                                _hd2978629832_
                                                                '0)))
                                                          (begin
                                                            (let ((_g42706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g42705_)
                               (##vector-length _g42705_)
                               1)))
                      (if (not (##fx= _g42706_ 2))
                          (error "Context expects 2 values" _g42706_)))
                    (let ((_target2978829837_ (##vector-ref _g42705_ 0))
                          (_tl2979029839_ (##vector-ref _g42705_ 1)))
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
                                     (_g42707_
                                      (gx#core-bind-runtime!__0 _id29610_))
                                     (_g42708_
                                      (_clause-e29563_
                                       _clause-lambda29605_
                                       _id29610_
                                       _rest29589_)))
                                (begin
                                  (let ((_g42709_
                                         (if (##values? _g42708_)
                                             (##vector-length _g42708_)
                                             1)))
                                    (if (not (##fx= _g42709_ 2))
                                        (error "Context expects 2 values"
                                               _g42709_)))
                                  (let ((_clause-lambda29613_
                                         (##vector-ref _g42708_ 0))
                                        (_kont29614_
                                         (##vector-ref _g42708_ 1)))
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
                  (let* ((___stx4239142392_ _expr29023_)
                         (_g2903029145_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4239142392_))))
                    (let ((___kont4239342394_
                           (lambda (_L29536_ _L29537_ _L29538_)
                             (cons '%#if
                                   (cons _L29538_
                                         (cons (_closure-e28906_ _L29537_)
                                               (cons (_closure-e28906_
                                                      _L29536_)
                                                     '()))))))
                          (___kont4239542396_
                           (lambda (_L29484_ _L29485_)
                             (cons '%#let-values
                                   (cons _L29485_
                                         (cons (_closure-e28906_ _L29484_)
                                               '())))))
                          (___kont4239742398_
                           (lambda (_L29430_ _L29431_ _L29432_)
                             (cons '%#letrec-values
                                   (cons (cons (cons (cons _L29432_ '())
                                                     (cons (_closure-e28906_
                                                            _L29431_)
                                                           '()))
                                               '())
                                         (cons _L29430_ '())))))
                          (___kont4239942400_
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
                          (___kont4240342404_
                           (lambda (_L29273_)
                             (cons '%#call
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _L29273_ '()))
                                         '()))))
                          (___kont4240542406_
                           (lambda (_L29206_ _L29207_) _expr29023_)))
                      (let* ((___match4262442625_
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
                                       ___splice4240742408_
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
                                                  (___kont4240542406_
                                                   _arg2914029203_
                                                   _hd2913029177_))))))
                                  (_loop2913529187_ _target2913229182_ '()))))
                             (___match4258242583_
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
                                      (___kont4240342404_ _L29273_)
                                      (if (gx#stx-pair/null? _tl2910829246_)
                                          (let ((___splice4240742408_
                                                 (gx#syntax-split-splice
                                                  _tl2910829246_
                                                  '0)))
                                            (let ((_tl2913429184_
                                                   (##vector-ref
                                                    ___splice4240742408_
                                                    '1))
                                                  (_target2913229182_
                                                   (##vector-ref
                                                    ___splice4240742408_
                                                    '0)))
                                              (if (gx#stx-null? _tl2913429184_)
                                                  (___match4262442625_
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
                                                   ___splice4240742408_
                                                   _target2913229182_
                                                   _tl2913429184_)
                                                  (_g2903029145_))))
                                          (_g2903029145_))))))
                             (___match4254042541_
                              (lambda (_e2908429295_
                                       _hd2908529298_
                                       _tl2908629300_
                                       _e2908729303_
                                       _hd2908829306_
                                       _tl2908929308_
                                       ___splice4240142402_
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
                                                              (___kont4239942400_
                                                               _hd2910029338_
                                                               _id2909829332_)
                                                              (_g2903029145_))))
                                                      (_g2903029145_)))))))
                                  (_loop2909329316_ _target2909029311_ '())))))
                        (if (gx#stx-pair? ___stx4239142392_)
                            (let ((_e2903529504_ (gx#stx-e ___stx4239142392_)))
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
                            (___kont4239342394_
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
                        (___kont4239542396_ _hd2905629479_ _hd2905329471_)
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
                                (___kont4239742398_
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
                        (let ((___splice4240142402_
                               (gx#syntax-split-splice _hd2908829306_ '0)))
                          (let ((_tl2909229313_
                                 (##vector-ref ___splice4240142402_ '1))
                                (_target2909029311_
                                 (##vector-ref ___splice4240142402_ '0)))
                            (if (gx#stx-null? _tl2909229313_)
                                (___match4254042541_
                                 _e2903529504_
                                 _hd2903629507_
                                 _tl2903729509_
                                 _e2908729303_
                                 _hd2908829306_
                                 _tl2908929308_
                                 ___splice4240142402_
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
                        (___match4258242583_
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
                            (let ((___splice4240742408_
                                   (gx#syntax-split-splice _tl2910829246_ '0)))
                              (let ((_tl2913429184_
                                     (##vector-ref ___splice4240742408_ '1))
                                    (_target2913229182_
                                     (##vector-ref ___splice4240742408_ '0)))
                                (if (gx#stx-null? _tl2913429184_)
                                    (___match4262442625_
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
                                     ___splice4240742408_
                                     _target2913229182_
                                     _tl2913429184_)
                                    (_g2903029145_))))
                            (_g2903029145_)))))
                (if (gx#stx-pair/null? _tl2910829246_)
                    (let ((___splice4240742408_
                           (gx#syntax-split-splice _tl2910829246_ '0)))
                      (let ((_tl2913429184_
                             (##vector-ref ___splice4240742408_ '1))
                            (_target2913229182_
                             (##vector-ref ___splice4240742408_ '0)))
                        (if (gx#stx-null? _tl2913429184_)
                            (___match4262442625_
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
                             ___splice4240742408_
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
                   (let* ((___stx4262742628_ _bind28779_)
                          (_g2878228805_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4262742628_))))
                     (let ((___kont4262942630_
                            (lambda (_L28857_ _L28858_)
                              (_lp28754_
                               _rest28778_
                               _rebind28757_
                               (cons _bind28779_ _vars28758_))))
                           (___kont4263142632_
                            (lambda ()
                              (_lp28754_
                               _rest28778_
                               (cons _bind28779_ _rebind28757_)
                               _vars28758_))))
                       (if (gx#stx-pair? ___stx4262742628_)
                           (let ((_e2878628817_ (gx#stx-e ___stx4262742628_)))
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
                                           (___kont4262942630_
                                            _hd2879928852_
                                            _hd2879028828_)
                                           (___kont4263142632_))
                                       (___kont4263142632_))))
                               (___kont4263142632_))
                           (___kont4263142632_))
                       (___kont4263142632_))))
               (___kont4263142632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4263142632_))
                                           (___kont4263142632_))))
                                   (___kont4263142632_))))
                           (___kont4263142632_)))))))
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
