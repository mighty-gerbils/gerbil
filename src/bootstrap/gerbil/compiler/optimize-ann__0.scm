(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 200))
  (define gxc#&optmize-annotated
    (##make-promise
     (lambda ()
       (let ((_tbl41158_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl41158_ (force gxc#&basic-xform))
           (table-set! _tbl41158_ '%#begin-annotation gxc#optimize-annotation%)
           _tbl41158_)))))
  (define gxc#apply-optimize-annotated
    (lambda (_stx41151_ . _args41153_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx41151_ _args41153_))
       gxc#current-compile-methods
       (force gxc#&optmize-annotated))))
  (define gxc#&generate-runtime-repr
    (##make-promise
     (lambda ()
       (let ((_tbl41148_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl41148_ (force gxc#&generate-runtime))
           (table-set! _tbl41148_ '%#quote-syntax identity)
           _tbl41148_)))))
  (define gxc#apply-generate-runtime-repr
    (lambda (_stx41141_ . _args41143_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx41141_ _args41143_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-repr))))
  (define gxc#&push-match-vars
    (##make-promise
     (lambda ()
       (let ((_tbl41138_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl41138_ '%#lambda gxc#xform-lambda%)
           (table-set!
            _tbl41138_
            '%#let-values
            gxc#push-match-vars-let-values%)
           (table-set! _tbl41138_ '%#letrec-values gxc#push-match-vars-stop)
           (table-set! _tbl41138_ '%#if gxc#push-match-vars-if%)
           (table-set! _tbl41138_ '%#call gxc#push-match-vars-call%)
           _tbl41138_)))))
  (define gxc#apply-push-match-vars
    (lambda (_stx41131_ . _args41133_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx41131_ _args41133_))
       gxc#current-compile-methods
       (force gxc#&push-match-vars))))
  (define gxc#current-annotation-optimizer (make-parameter '()))
  (define gxc#optimize-annotation%
    (lambda (_stx41049_)
      (let* ((___stx4117441175_ _stx41049_)
             (_g4105241069_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4117441175_))))
        (let ((___kont4117641177_
               (lambda (_L41105_ _L41106_)
                 (let ((_ann41122_ (gx#stx-e _L41106_)))
                   (call-with-parameters
                    (lambda ()
                      (let ((_$e41125_ _ann41122_))
                        (if (eq? '@match _$e41125_)
                            (begin
                              (gxc#verbose '"Optimizing match expansion")
                              (gxc#optimize-match _L41105_))
                            (if (eq? '@syntax-case _$e41125_)
                                (begin
                                  (gxc#verbose
                                   '"Optimizing syntax-case expansion")
                                  (gxc#optimize-syntax-case _L41105_))
                                (gxc#compile-e _L41105_)))))
                    gxc#current-annotation-optimizer
                    (cons _ann41122_ (gxc#current-annotation-optimizer))))))
              (___kont4117841179_
               (lambda () (gxc#xform-begin-annotation% _stx41049_))))
          (let ((___match4119941200_
                 (lambda (_e4105641081_
                          _hd4105741084_
                          _tl4105841086_
                          _e4105941089_
                          _hd4106041092_
                          _tl4106141094_
                          _e4106241097_
                          _hd4106341100_
                          _tl4106441102_)
                   (let ((_L41105_ _hd4106341100_) (_L41106_ _hd4106041092_))
                     (if (gx#identifier? _L41106_)
                         (___kont4117641177_ _L41105_ _L41106_)
                         (___kont4117841179_))))))
            (if (gx#stx-pair? ___stx4117441175_)
                (let ((_e4105641081_ (gx#stx-e ___stx4117441175_)))
                  (let ((_tl4105841086_ (##cdr _e4105641081_))
                        (_hd4105741084_ (##car _e4105641081_)))
                    (if (gx#stx-pair? _tl4105841086_)
                        (let ((_e4105941089_ (gx#stx-e _tl4105841086_)))
                          (let ((_tl4106141094_ (##cdr _e4105941089_))
                                (_hd4106041092_ (##car _e4105941089_)))
                            (if (gx#stx-pair? _tl4106141094_)
                                (let ((_e4106241097_
                                       (gx#stx-e _tl4106141094_)))
                                  (let ((_tl4106441102_ (##cdr _e4106241097_))
                                        (_hd4106341100_ (##car _e4106241097_)))
                                    (if (gx#stx-null? _tl4106441102_)
                                        (___match4119941200_
                                         _e4105641081_
                                         _hd4105741084_
                                         _tl4105841086_
                                         _e4105941089_
                                         _hd4106041092_
                                         _tl4106141094_
                                         _e4106241097_
                                         _hd4106341100_
                                         _tl4106441102_)
                                        (___kont4117841179_))))
                                (___kont4117841179_))))
                        (___kont4117841179_))))
                (___kont4117841179_)))))))
  (define gxc#optimize-match
    (lambda (_stx40348_)
      (let* ((_g4035040380_
              (lambda (_g4035140377_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4035140377_)))
             (_g4034941046_
              (lambda (_g4035140383_)
                (if (gx#stx-pair? _g4035140383_)
                    (let ((_e4035540385_ (gx#stx-e _g4035140383_)))
                      (let ((_hd4035640388_ (##car _e4035540385_))
                            (_tl4035740390_ (##cdr _e4035540385_)))
                        (if (gx#identifier? _hd4035640388_)
                            (if (gx#stx-eq? '%#let-values _hd4035640388_)
                                (if (gx#stx-pair? _tl4035740390_)
                                    (let ((_e4035840393_
                                           (gx#stx-e _tl4035740390_)))
                                      (let ((_hd4035940396_
                                             (##car _e4035840393_))
                                            (_tl4036040398_
                                             (##cdr _e4035840393_)))
                                        (if (gx#stx-pair? _hd4035940396_)
                                            (let ((_e4036140401_
                                                   (gx#stx-e _hd4035940396_)))
                                              (let ((_hd4036240404_
                                                     (##car _e4036140401_))
                                                    (_tl4036340406_
                                                     (##cdr _e4036140401_)))
                                                (if (gx#stx-pair?
                                                     _hd4036240404_)
                                                    (let ((_e4036440409_
                                                           (gx#stx-e
                                                            _hd4036240404_)))
                                                      (let ((_hd4036540412_
                                                             (##car _e4036440409_))
                                                            (_tl4036640414_
                                                             (##cdr _e4036440409_)))
                                                        (if (gx#stx-pair?
                                                             _hd4036540412_)
                                                            (let ((_e4036740417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4036540412_)))
                      (let ((_hd4036840420_ (##car _e4036740417_))
                            (_tl4036940422_ (##cdr _e4036740417_)))
                        (if (gx#stx-null? _tl4036940422_)
                            (if (gx#stx-pair? _tl4036640414_)
                                (let ((_e4037040425_
                                       (gx#stx-e _tl4036640414_)))
                                  (let ((_hd4037140428_ (##car _e4037040425_))
                                        (_tl4037240430_ (##cdr _e4037040425_)))
                                    (if (gx#stx-null? _tl4037240430_)
                                        (if (gx#stx-null? _tl4036340406_)
                                            (if (gx#stx-pair? _tl4036040398_)
                                                (let ((_e4037340433_
                                                       (gx#stx-e
                                                        _tl4036040398_)))
                                                  (let ((_hd4037440436_
                                                         (##car _e4037340433_))
                                                        (_tl4037540438_
                                                         (##cdr _e4037340433_)))
                                                    (if (gx#stx-null?
                                                         _tl4037540438_)
                                                        ((lambda (_L40441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L40442_
                          _L40443_)
                   (let _lp40467_ ((_body40469_ _L40441_)
                                   (_negation40470_ (cons _L40443_ _L40442_))
                                   (_clauses40471_ '())
                                   (_konts40472_ '()))
                     (let* ((___stx4138241383_ _body40469_)
                            (_g4047540515_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4138241383_))))
                       (let ((___kont4138441385_
                              (lambda (_L40845_)
                                (let* ((___stx4131841319_ _L40845_)
                                       (_g4085940889_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx4131841319_))))
                                  (let ((___kont4132041321_
                                         (lambda (_L40985_ _L40986_ _L40987_)
                                           (if (null? _clauses40471_)
                                               (let* ((_negation4101141018_
                                                       _negation40470_)
                                                      (_E4101341022_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _negation4101141018_)))
                                                      (_K4101441028_
                                                       (lambda (_negate41025_
                                                                _E41026_)
                                                         (gxc#xform-wrap-source
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _E41026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _negate41025_ '()))
                                    '())
                              (cons (cons '%#let-values
                                          (cons (cons (cons (cons _L40987_ '())
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L40986_)
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L40985_ '())))
                                    '())))
                  _stx40348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _negation4101141018_)
                                                     (let ((_hd4101541031_
                                                            (##car _negation4101141018_))
                                                           (_tl4101641033_
                                                            (##cdr _negation4101141018_)))
                                                       (let* ((_E41036_
                                                               _hd4101541031_)
                                                              (_negate41038_
                                                               _tl4101641033_))
                                                         (_K4101441028_
                                                          _negate41038_
                                                          _E41036_)))
                                                     (_E4101341022_)))
                                               (gxc#optimize-match-body
                                                _stx40348_
                                                _negation40470_
                                                (cons (cons '#f
                                                            (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#lambda)
                          (cons '() (cons _L40985_ '()))))
              _clauses40471_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _L40987_
                                                            (gxc#compile-e
                                                             _L40986_))
                                                      _konts40472_)))))
                                        (___kont4132241323_
                                         (lambda ()
                                           (let* ((_negation4089540902_
                                                   _negation40470_)
                                                  (_E4089740906_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _negation4089540902_)))
                                                  (_K4089840912_
                                                   (lambda (_negate40909_
                                                            _E40910_)
                                                     (gxc#xform-wrap-source
                                                      (cons '%#let-values
                                                            (cons (cons (cons (cons _E40910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                            '())
                                      (cons _negate40909_ '()))
                                '())
                          (cons _L40845_ '())))
              _stx40348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _negation4089540902_)
                                                 (let ((_hd4089940915_
                                                        (##car _negation4089540902_))
                                                       (_tl4090040917_
                                                        (##cdr _negation4089540902_)))
                                                   (let* ((_E40920_
                                                           _hd4089940915_)
                                                          (_negate40922_
                                                           _tl4090040917_))
                                                     (_K4089840912_
                                                      _negate40922_
                                                      _E40920_)))
                                                 (_E4089740906_))))))
                                    (let ((_g4085840924_
                                           (lambda ()
                                             (if (null? _clauses40471_)
                                                 (___kont4132241323_)
                                                 (_g4085940889_)))))
                                      (if (gx#stx-pair? ___stx4131841319_)
                                          (let ((_e4086440929_
                                                 (gx#stx-e ___stx4131841319_)))
                                            (let ((_tl4086640934_
                                                   (##cdr _e4086440929_))
                                                  (_hd4086540932_
                                                   (##car _e4086440929_)))
                                              (if (gx#identifier?
                                                   _hd4086540932_)
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd4086540932_)
                                                      (if (gx#stx-pair?
                                                           _tl4086640934_)
                                                          (let ((_e4086740937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4086640934_)))
                    (let ((_tl4086940942_ (##cdr _e4086740937_))
                          (_hd4086840940_ (##car _e4086740937_)))
                      (if (gx#stx-pair? _hd4086840940_)
                          (let ((_e4087040945_ (gx#stx-e _hd4086840940_)))
                            (let ((_tl4087240950_ (##cdr _e4087040945_))
                                  (_hd4087140948_ (##car _e4087040945_)))
                              (if (gx#stx-pair? _hd4087140948_)
                                  (let ((_e4087340953_
                                         (gx#stx-e _hd4087140948_)))
                                    (let ((_tl4087540958_
                                           (##cdr _e4087340953_))
                                          (_hd4087440956_
                                           (##car _e4087340953_)))
                                      (if (gx#stx-pair? _hd4087440956_)
                                          (let ((_e4087640961_
                                                 (gx#stx-e _hd4087440956_)))
                                            (let ((_tl4087840966_
                                                   (##cdr _e4087640961_))
                                                  (_hd4087740964_
                                                   (##car _e4087640961_)))
                                              (if (gx#stx-null? _tl4087840966_)
                                                  (if (gx#stx-pair?
                                                       _tl4087540958_)
                                                      (let ((_e4087940969_
                                                             (gx#stx-e
                                                              _tl4087540958_)))
                                                        (let ((_tl4088140974_
                                                               (##cdr _e4087940969_))
                                                              (_hd4088040972_
                                                               (##car _e4087940969_)))
                                                          (if (gx#stx-null?
                                                               _tl4088140974_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4087240950_)
                          (if (gx#stx-pair? _tl4086940942_)
                              (let ((_e4088240977_ (gx#stx-e _tl4086940942_)))
                                (let ((_tl4088440982_ (##cdr _e4088240977_))
                                      (_hd4088340980_ (##car _e4088240977_)))
                                  (if (gx#stx-null? _tl4088440982_)
                                      (___kont4132041321_
                                       _hd4088340980_
                                       _hd4088040972_
                                       _hd4087740964_)
                                      (_g4085840924_))))
                              (_g4085840924_))
                          (_g4085840924_))
                      (_g4085840924_))))
              (_g4085840924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4085840924_))))
                                          (_g4085840924_))))
                                  (_g4085840924_))))
                          (_g4085840924_))))
                  (_g4085840924_))
              (_g4085840924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4085840924_))))
                                          (_g4085840924_)))))))
                             (___kont4138641387_
                              (lambda (_L40576_ _L40577_ _L40578_)
                                (let* ((___stx4120241203_ _L40577_)
                                       (_g4060540654_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx4120241203_))))
                                  (let ((___kont4120441205_
                                         (lambda (_L40782_ _L40783_ _L40784_)
                                           (_lp40467_
                                            _L40576_
                                            _negation40470_
                                            (cons (cons _L40578_
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#lambda)
                                                              (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L40782_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _clauses40471_)
                                            (cons (cons _L40784_
                                                        (gxc#compile-e
                                                         _L40783_))
                                                  _konts40472_))))
                                        (___kont4120641207_
                                         (lambda (_L40683_)
                                           (_lp40467_
                                            _L40576_
                                            (cons _L40578_
                                                  (gxc#compile-e _L40683_))
                                            _clauses40471_
                                            _konts40472_))))
                                    (if (gx#stx-pair? ___stx4120241203_)
                                        (let ((_e4061040702_
                                               (gx#stx-e ___stx4120241203_)))
                                          (let ((_tl4061240707_
                                                 (##cdr _e4061040702_))
                                                (_hd4061140705_
                                                 (##car _e4061040702_)))
                                            (if (gx#identifier? _hd4061140705_)
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd4061140705_)
                                                    (if (gx#stx-pair?
                                                         _tl4061240707_)
                                                        (let ((_e4061340710_
                                                               (gx#stx-e
                                                                _tl4061240707_)))
                                                          (let ((_tl4061540715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4061340710_))
                        (_hd4061440713_ (##car _e4061340710_)))
                    (if (gx#stx-null? _hd4061440713_)
                        (if (gx#stx-pair? _tl4061540715_)
                            (let ((_e4061640718_ (gx#stx-e _tl4061540715_)))
                              (let ((_tl4061840723_ (##cdr _e4061640718_))
                                    (_hd4061740721_ (##car _e4061640718_)))
                                (if (gx#stx-pair? _hd4061740721_)
                                    (let ((_e4061940726_
                                           (gx#stx-e _hd4061740721_)))
                                      (let ((_tl4062140731_
                                             (##cdr _e4061940726_))
                                            (_hd4062040729_
                                             (##car _e4061940726_)))
                                        (if (gx#identifier? _hd4062040729_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd4062040729_)
                                                (if (gx#stx-pair?
                                                     _tl4062140731_)
                                                    (let ((_e4062240734_
                                                           (gx#stx-e
                                                            _tl4062140731_)))
                                                      (let ((_tl4062440739_
                                                             (##cdr _e4062240734_))
                                                            (_hd4062340737_
                                                             (##car _e4062240734_)))
                                                        (if (gx#stx-pair?
                                                             _hd4062340737_)
                                                            (let ((_e4062540742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4062340737_)))
                      (let ((_tl4062740747_ (##cdr _e4062540742_))
                            (_hd4062640745_ (##car _e4062540742_)))
                        (if (gx#stx-pair? _hd4062640745_)
                            (let ((_e4062840750_ (gx#stx-e _hd4062640745_)))
                              (let ((_tl4063040755_ (##cdr _e4062840750_))
                                    (_hd4062940753_ (##car _e4062840750_)))
                                (if (gx#stx-pair? _hd4062940753_)
                                    (let ((_e4063140758_
                                           (gx#stx-e _hd4062940753_)))
                                      (let ((_tl4063340763_
                                             (##cdr _e4063140758_))
                                            (_hd4063240761_
                                             (##car _e4063140758_)))
                                        (if (gx#stx-null? _tl4063340763_)
                                            (if (gx#stx-pair? _tl4063040755_)
                                                (let ((_e4063440766_
                                                       (gx#stx-e
                                                        _tl4063040755_)))
                                                  (let ((_tl4063640771_
                                                         (##cdr _e4063440766_))
                                                        (_hd4063540769_
                                                         (##car _e4063440766_)))
                                                    (if (gx#stx-null?
                                                         _tl4063640771_)
                                                        (if (gx#stx-null?
                                                             _tl4062740747_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4062440739_)
                        (let ((_e4063740774_ (gx#stx-e _tl4062440739_)))
                          (let ((_tl4063940779_ (##cdr _e4063740774_))
                                (_hd4063840777_ (##car _e4063740774_)))
                            (if (gx#stx-null? _tl4063940779_)
                                (if (gx#stx-null? _tl4061840723_)
                                    (___kont4120441205_
                                     _hd4063840777_
                                     _hd4063540769_
                                     _hd4063240761_)
                                    (_g4060540654_))
                                (_g4060540654_))))
                        (_g4060540654_))
                    (_g4060540654_))
                (_g4060540654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4060540654_))
                                            (_g4060540654_))))
                                    (_g4060540654_))))
                            (_g4060540654_))))
                    (_g4060540654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4060540654_))
                                                (_g4060540654_))
                                            (_g4060540654_))))
                                    (_g4060540654_))))
                            (_g4060540654_))
                        (_g4060540654_))))
                (_g4060540654_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#begin-annotation
                                                         _hd4061140705_)
                                                        (if (gx#stx-pair?
                                                             _tl4061240707_)
                                                            (let ((_e4064440667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4061240707_)))
                      (let ((_tl4064640672_ (##cdr _e4064440667_))
                            (_hd4064540670_ (##car _e4064440667_)))
                        (if (gx#identifier? _hd4064540670_)
                            (if (gx#stx-eq? '@match-else _hd4064540670_)
                                (if (gx#stx-pair? _tl4064640672_)
                                    (let ((_e4064740675_
                                           (gx#stx-e _tl4064640672_)))
                                      (let ((_tl4064940680_
                                             (##cdr _e4064740675_))
                                            (_hd4064840678_
                                             (##car _e4064740675_)))
                                        (if (gx#stx-null? _tl4064940680_)
                                            (___kont4120641207_ _hd4064840678_)
                                            (_g4060540654_))))
                                    (_g4060540654_))
                                (_g4060540654_))
                            (_g4060540654_))))
                    (_g4060540654_))
                (_g4060540654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4060540654_))))
                                        (_g4060540654_)))))))
                         (if (gx#stx-pair? ___stx4138241383_)
                             (let ((_e4047840821_
                                    (gx#stx-e ___stx4138241383_)))
                               (let ((_tl4048040826_ (##cdr _e4047840821_))
                                     (_hd4047940824_ (##car _e4047840821_)))
                                 (if (gx#identifier? _hd4047940824_)
                                     (if (gx#stx-eq?
                                          '%#begin-annotation
                                          _hd4047940824_)
                                         (if (gx#stx-pair? _tl4048040826_)
                                             (let ((_e4048140829_
                                                    (gx#stx-e _tl4048040826_)))
                                               (let ((_tl4048340834_
                                                      (##cdr _e4048140829_))
                                                     (_hd4048240832_
                                                      (##car _e4048140829_)))
                                                 (if (gx#identifier?
                                                      _hd4048240832_)
                                                     (if (gx#stx-eq?
                                                          '@match-body
                                                          _hd4048240832_)
                                                         (if (gx#stx-pair?
                                                              _tl4048340834_)
                                                             (let ((_e4048440837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4048340834_)))
                       (let ((_tl4048640842_ (##cdr _e4048440837_))
                             (_hd4048540840_ (##car _e4048440837_)))
                         (if (gx#stx-null? _tl4048640842_)
                             (___kont4138441385_ _hd4048540840_)
                             (_g4047540515_))))
                     (_g4047540515_))
                 (_g4047540515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4047540515_))))
                                             (_g4047540515_))
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd4047940824_)
                                             (if (gx#stx-pair? _tl4048040826_)
                                                 (let ((_e4049340528_
                                                        (gx#stx-e
                                                         _tl4048040826_)))
                                                   (let ((_tl4049540533_
                                                          (##cdr _e4049340528_))
                                                         (_hd4049440531_
                                                          (##car _e4049340528_)))
                                                     (if (gx#stx-pair?
                                                          _hd4049440531_)
                                                         (let ((_e4049640536_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4049440531_)))
                   (let ((_tl4049840541_ (##cdr _e4049640536_))
                         (_hd4049740539_ (##car _e4049640536_)))
                     (if (gx#stx-pair? _hd4049740539_)
                         (let ((_e4049940544_ (gx#stx-e _hd4049740539_)))
                           (let ((_tl4050140549_ (##cdr _e4049940544_))
                                 (_hd4050040547_ (##car _e4049940544_)))
                             (if (gx#stx-pair? _hd4050040547_)
                                 (let ((_e4050240552_
                                        (gx#stx-e _hd4050040547_)))
                                   (let ((_tl4050440557_ (##cdr _e4050240552_))
                                         (_hd4050340555_
                                          (##car _e4050240552_)))
                                     (if (gx#stx-null? _tl4050440557_)
                                         (if (gx#stx-pair? _tl4050140549_)
                                             (let ((_e4050540560_
                                                    (gx#stx-e _tl4050140549_)))
                                               (let ((_tl4050740565_
                                                      (##cdr _e4050540560_))
                                                     (_hd4050640563_
                                                      (##car _e4050540560_)))
                                                 (if (gx#stx-null?
                                                      _tl4050740565_)
                                                     (if (gx#stx-null?
                                                          _tl4049840541_)
                                                         (if (gx#stx-pair?
                                                              _tl4049540533_)
                                                             (let ((_e4050840568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4049540533_)))
                       (let ((_tl4051040573_ (##cdr _e4050840568_))
                             (_hd4050940571_ (##car _e4050840568_)))
                         (if (gx#stx-null? _tl4051040573_)
                             (___kont4138641387_
                              _hd4050940571_
                              _hd4050640563_
                              _hd4050340555_)
                             (_g4047540515_))))
                     (_g4047540515_))
                 (_g4047540515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4047540515_))))
                                             (_g4047540515_))
                                         (_g4047540515_))))
                                 (_g4047540515_))))
                         (_g4047540515_))))
                 (_g4047540515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4047540515_))
                                             (_g4047540515_)))
                                     (_g4047540515_))))
                             (_g4047540515_))))))
                 _hd4037440436_
                 _hd4037140428_
                 _hd4036840420_)
                (_g4035040380_ _g4035140383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4035040380_ _g4035140383_))
                                            (_g4035040380_ _g4035140383_))
                                        (_g4035040380_ _g4035140383_))))
                                (_g4035040380_ _g4035140383_))
                            (_g4035040380_ _g4035140383_))))
                    (_g4035040380_ _g4035140383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4035040380_
                                                     _g4035140383_))))
                                            (_g4035040380_ _g4035140383_))))
                                    (_g4035040380_ _g4035140383_))
                                (_g4035040380_ _g4035140383_))
                            (_g4035040380_ _g4035140383_))))
                    (_g4035040380_ _g4035140383_)))))
        (_g4034941046_ _stx40348_))))
  (define gxc#optimize-match-body
    (lambda (_stx40054_ _negation40055_ _clauses40056_ _konts40057_)
      (letrec ((_push-variables40059_
                (lambda (_clause40306_ _kont40307_)
                  (let ((_clause4030840318_ _clause40306_)
                        (_kont4030940320_ _kont40307_))
                    (let* ((_E4031140324_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause4030840318_
                                     _kont4030940320_)))
                           (_K4031240331_
                            (lambda (_clause-lambda40327_
                                     _clause-name40328_
                                     _K40329_)
                              (cons _clause-name40328_
                                    (gxc#apply-push-match-vars
                                     _clause-lambda40327_
                                     '()
                                     _K40329_)))))
                      (if (##pair? _clause4030840318_)
                          (let ((_hd4031540334_ (##car _clause4030840318_))
                                (_tl4031640336_ (##cdr _clause4030840318_)))
                            (let* ((_clause-name40339_ _hd4031540334_)
                                   (_clause-lambda40341_ _tl4031640336_))
                              (if (##pair? _kont4030940320_)
                                  (let* ((_hd4031340343_
                                          (##car _kont4030940320_))
                                         (_K40346_ _hd4031340343_))
                                    (_K4031240331_
                                     _clause-lambda40341_
                                     _clause-name40339_
                                     _K40346_))
                                  (_E4031140324_))))
                          (_E4031140324_))))))
               (_start-match40060_
                (lambda (_kont40240_)
                  (let* ((_g4024240258_
                          (lambda (_g4024340255_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4024340255_)))
                         (_g4024140303_
                          (lambda (_g4024340261_)
                            (if (gx#stx-pair? _g4024340261_)
                                (let ((_e4024540263_ (gx#stx-e _g4024340261_)))
                                  (let ((_hd4024640266_ (##car _e4024540263_))
                                        (_tl4024740268_ (##cdr _e4024540263_)))
                                    (if (gx#identifier? _hd4024640266_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd4024640266_)
                                            (if (gx#stx-pair? _tl4024740268_)
                                                (let ((_e4024840271_
                                                       (gx#stx-e
                                                        _tl4024740268_)))
                                                  (let ((_hd4024940274_
                                                         (##car _e4024840271_))
                                                        (_tl4025040276_
                                                         (##cdr _e4024840271_)))
                                                    (if (gx#stx-null?
                                                         _hd4024940274_)
                                                        (if (gx#stx-pair?
                                                             _tl4025040276_)
                                                            (let ((_e4025140279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4025040276_)))
                      (let ((_hd4025240282_ (##car _e4025140279_))
                            (_tl4025340284_ (##cdr _e4025140279_)))
                        (if (gx#stx-null? _tl4025340284_)
                            ((lambda (_L40287_) _L40287_) _hd4025240282_)
                            (_g4024240258_ _g4024340261_))))
                    (_g4024240258_ _g4024340261_))
                (_g4024240258_ _g4024340261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4024240258_ _g4024340261_))
                                            (_g4024240258_ _g4024340261_))
                                        (_g4024240258_ _g4024340261_))))
                                (_g4024240258_ _g4024340261_)))))
                    (_g4024140303_ _kont40240_))))
               (_match-body40061_
                (lambda (_blocks40137_)
                  (let* ((_blocks4013840147_ _blocks40137_)
                         (_E4014040151_
                          (lambda ()
                            (error '"No clause matching" _blocks4013840147_)))
                         (_K4014140223_
                          (lambda (_rest40154_ _start40155_)
                            (let _lp40157_ ((_rest40159_ _rest40154_)
                                            (_body40160_
                                             (_start-match40060_
                                              _start40155_)))
                              (let* ((_rest4016140169_ _rest40159_)
                                     (_else4016340177_ (lambda () _body40160_))
                                     (_K4016540211_
                                      (lambda (_rest40180_ _block40181_)
                                        (let* ((_block4018240189_ _block40181_)
                                               (_E4018440193_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _block4018240189_)))
                                               (_K4018540199_
                                                (lambda (_kont40196_ _K40197_)
                                                  (_lp40157_
                                                   _rest40180_
                                                   (cons '%#let-values
                                                         (cons (cons (cons (cons _K40197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons _kont40196_ '()))
                             '())
                       (cons _body40160_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _block4018240189_)
                                              (let ((_hd4018640202_
                                                     (##car _block4018240189_))
                                                    (_tl4018740204_
                                                     (##cdr _block4018240189_)))
                                                (let* ((_K40207_
                                                        _hd4018640202_)
                                                       (_kont40209_
                                                        _tl4018740204_))
                                                  (_K4018540199_
                                                   _kont40209_
                                                   _K40207_)))
                                              (_E4018440193_))))))
                                (if (##pair? _rest4016140169_)
                                    (let ((_hd4016640214_
                                           (##car _rest4016140169_))
                                          (_tl4016740216_
                                           (##cdr _rest4016140169_)))
                                      (let* ((_block40219_ _hd4016640214_)
                                             (_rest40221_ _tl4016740216_))
                                        (_K4016540211_
                                         _rest40221_
                                         _block40219_)))
                                    (_else4016340177_)))))))
                    (if (##pair? _blocks4013840147_)
                        (let ((_hd4014240226_ (##car _blocks4013840147_))
                              (_tl4014340228_ (##cdr _blocks4013840147_)))
                          (if (##pair? _hd4014240226_)
                              (let ((_hd4014440231_ (##car _hd4014240226_))
                                    (_tl4014540233_ (##cdr _hd4014240226_)))
                                (if (##eq? _hd4014440231_ '#f)
                                    (let* ((_start40236_ _tl4014540233_)
                                           (_rest40238_ _tl4014340228_))
                                      (_K4014140223_ _rest40238_ _start40236_))
                                    (_E4014040151_)))
                              (_E4014040151_)))
                        (_E4014040151_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_clauses40064_
                   (map _push-variables40059_ _clauses40056_ _konts40057_))
                  (_blocks40066_
                   (gxc#optimize-match-basic-blocks _clauses40064_))
                  (_blocks40068_
                   (gxc#optimize-match-fold-basic-blocks _blocks40066_))
                  (_body40070_ (_match-body40061_ _blocks40068_))
                  (_bind40104_
                   (map (lambda (_e4007140073_)
                          (let* ((_g4007540082_ _e4007140073_)
                                 (_E4007740086_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g4007540082_)))
                                 (_K4007840092_
                                  (lambda (_kont40089_ _K40090_)
                                    (cons (cons _K40090_ '())
                                          (cons _kont40089_ '())))))
                            (if (##pair? _g4007540082_)
                                (let ((_hd4007940095_ (##car _g4007540082_))
                                      (_tl4008040097_ (##cdr _g4007540082_)))
                                  (let* ((_K40100_ _hd4007940095_)
                                         (_kont40102_ _tl4008040097_))
                                    (_K4007840092_ _kont40102_ _K40100_)))
                                (_E4007740086_))))
                        _konts40057_))
                  (_negate40134_
                   (let* ((_negation4010540112_ _negation40055_)
                          (_E4010740116_
                           (lambda ()
                             (error '"No clause matching"
                                    _negation4010540112_)))
                          (_K4010840122_
                           (lambda (_kont40119_ _K40120_)
                             (cons (cons _K40120_ '())
                                   (cons _kont40119_ '())))))
                     (if (##pair? _negation4010540112_)
                         (let ((_hd4010940125_ (##car _negation4010540112_))
                               (_tl4011040127_ (##cdr _negation4010540112_)))
                           (let* ((_K40130_ _hd4010940125_)
                                  (_kont40132_ _tl4011040127_))
                             (_K4010840122_ _kont40132_ _K40130_)))
                         (_E4010740116_)))))
             (gxc#xform-wrap-source
              (cons '%#let-values
                    (cons (cons _negate40134_ '())
                          (cons (cons '%#let-values
                                      (cons _bind40104_
                                            (cons _body40070_ '())))
                                '())))
              _stx40054_)))
         gx#current-expander-context
         (let ((__obj44247 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj44247) __obj44247))))))
  (define gxc#optimize-match-basic-blocks
    (lambda (_clauses40014_)
      (let _lp40016_ ((_rest40018_ _clauses40014_) (_blocks40019_ '()))
        (let* ((_rest4002040028_ _rest40018_)
               (_else4002240036_ (lambda () (reverse _blocks40019_)))
               (_K4002440042_
                (lambda (_rest40039_ _clause40040_)
                  (_lp40016_
                   _rest40039_
                   (gxc#optimize-match-lift-basic-blocks
                    _clause40040_
                    _blocks40019_)))))
          (if (##pair? _rest4002040028_)
              (let ((_hd4002540045_ (##car _rest4002040028_))
                    (_tl4002640047_ (##cdr _rest4002040028_)))
                (let* ((_clause40050_ _hd4002540045_)
                       (_rest40052_ _tl4002640047_))
                  (_K4002440042_ _rest40052_ _clause40050_)))
              (_else4002240036_))))))
  (define gxc#optimize-match-lift-basic-blocks
    (lambda (_clause39358_ _blocks39359_)
      (letrec ((_bind->args39361_
                (lambda (_bind40009_)
                  (foldl1 (lambda (_b40011_ _r40012_)
                            (cons (cons '%#ref (cons (car _b40011_) '()))
                                  _r40012_))
                          '()
                          _bind40009_)))
               (_create-block39362_
                (lambda (_body39958_ _let-bind39959_ _bind39960_ _assert39961_)
                  (let* ((_id39963_ (make-symbol (gensym '__match)))
                         (_id39965_ (gx#core-quote-syntax__0 _id39963_))
                         (_g44250_ (gx#core-bind-runtime!__0 _id39965_))
                         (_block39968_
                          (cons _id39965_
                                (cons _body39958_
                                      (cons _bind39960_
                                            (cons _assert39961_ '())))))
                         (_continue39970_
                          (cons '%#call
                                (cons (cons '%#ref (cons _id39965_ '()))
                                      (_bind->args39361_ _bind39960_))))
                         (_continue40006_
                          (if (null? _let-bind39959_)
                              _continue39970_
                              (let ((_locals40004_
                                     (map (lambda (_e3997139973_)
                                            (let* ((_g3997539982_
                                                    _e3997139973_)
                                                   (_E3997739986_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g3997539982_)))
                                                   (_K3997839992_
                                                    (lambda (_expr39989_
                                                             _id39990_)
                                                      (cons (cons _id39990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr39989_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g3997539982_)
                                                  (let ((_hd3997939995_
                                                         (##car _g3997539982_))
                                                        (_tl3998039997_
                                                         (##cdr _g3997539982_)))
                                                    (let* ((_id40000_
                                                            _hd3997939995_)
                                                           (_expr40002_
                                                            _tl3998039997_))
                                                      (_K3997839992_
                                                       _expr40002_
                                                       _id40000_)))
                                                  (_E3997739986_))))
                                          _let-bind39959_)))
                                (cons '%#let-values
                                      (cons _locals40004_
                                            (cons _continue39970_ '())))))))
                    (values _continue40006_ _block39968_))))
               (_basic-block39363_
                (lambda (_body39544_ _bind39545_ _assert39546_)
                  (let* ((___stx4149041491_ _body39544_)
                         (_g3955139635_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4149041491_))))
                    (let ((___kont4149241493_
                           (lambda (_L39894_ _L39895_ _L39896_)
                             (let ((_g44251_
                                    (_create-block39362_
                                     _L39895_
                                     '()
                                     _bind39545_
                                     (cons (cons _L39896_ '#t)
                                           _assert39546_))))
                               (begin
                                 (let ((_g44252_
                                        (if (##values? _g44251_)
                                            (##vector-length _g44251_)
                                            1)))
                                   (if (not (##fx= _g44252_ 2))
                                       (error "Context expects 2 values"
                                              _g44252_)))
                                 (let ((_k-continue39914_
                                        (##vector-ref _g44251_ 0))
                                       (_k-block39915_
                                        (##vector-ref _g44251_ 1)))
                                   (let* ((___stx4147241473_ _L39894_)
                                          (_g3991839927_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx4147241473_))))
                                     (let ((___kont4147441475_
                                            (lambda ()
                                              (values (cons '%#if
                                                            (cons _L39896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _k-continue39914_ (cons _L39894_ '()))))
              (cons _k-block39915_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4147641477_
                                            (lambda ()
                                              (let ((_g44253_
                                                     (_create-block39362_
                                                      _L39894_
                                                      '()
                                                      _bind39545_
                                                      (cons (cons _L39896_ '#f)
                                                            _assert39546_))))
                                                (begin
                                                  (let ((_g44254_
                                                         (if (##values?
                                                              _g44253_)
                                                             (##vector-length
                                                              _g44253_)
                                                             1)))
                                                    (if (not (##fx= _g44254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g44254_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_e-continue39934_
                                                         (##vector-ref
                                                          _g44253_
                                                          0))
                                                        (_e-block39935_
                                                         (##vector-ref
                                                          _g44253_
                                                          1)))
                                                    (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L39896_
                                (cons _k-continue39914_
                                      (cons _e-continue39934_ '()))))
                    (cons _k-block39915_ (cons _e-block39935_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? ___stx4147241473_)
                                           (let ((_e3992039942_
                                                  (gx#stx-e
                                                   ___stx4147241473_)))
                                             (let ((_tl3992239947_
                                                    (##cdr _e3992039942_))
                                                   (_hd3992139945_
                                                    (##car _e3992039942_)))
                                               (if (gx#identifier?
                                                    _hd3992139945_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _hd3992139945_)
                                                       (___kont4147441475_)
                                                       (___kont4147641477_))
                                                   (___kont4147641477_))))
                                           (___kont4147641477_)))))))))
                          (___kont4149441495_
                           (lambda () (values _body39544_ '())))
                          (___kont4149841499_
                           (lambda (_L39723_ _L39724_ _L39725_)
                             (let* ((_let-bind39760_
                                     (map cons
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3974539748_
                                                             _g3974639750_)
                                                      (cons _g3974539748_
                                                            _g3974639750_))
                                                    '()
                                                    _L39725_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3975239755_
                                                             _g3975339757_)
                                                      (cons _g3975239755_
                                                            _g3975339757_))
                                                    '()
                                                    _L39724_))))
                                    (_g44255_
                                     (_create-block39362_
                                      _L39723_
                                      _let-bind39760_
                                      (foldl1 cons _bind39545_ _let-bind39760_)
                                      _assert39546_)))
                               (begin
                                 (let ((_g44256_
                                        (if (##values? _g44255_)
                                            (##vector-length _g44255_)
                                            1)))
                                   (if (not (##fx= _g44256_ 2))
                                       (error "Context expects 2 values"
                                              _g44256_)))
                                 (let ((_continue39762_
                                        (##vector-ref _g44255_ 0))
                                       (_block39763_
                                        (##vector-ref _g44255_ 1)))
                                   (let ()
                                     (values _continue39762_
                                             (cons _block39763_ '()))))))))
                          (___kont4150241503_
                           (lambda () (values _body39544_ '()))))
                      (let* ((___match4158141582_
                              (lambda (_e3960239647_
                                       _hd3960339650_
                                       _tl3960439652_
                                       _e3960539655_
                                       _hd3960639658_
                                       _tl3960739660_
                                       ___splice4150041501_
                                       _target3960839663_
                                       _tl3961039665_)
                                (letrec ((_loop3961139668_
                                          (lambda (_hd3960939671_
                                                   _expr3961539673_
                                                   _id3961639675_)
                                            (if (gx#stx-pair? _hd3960939671_)
                                                (let ((_e3961239678_
                                                       (gx#stx-e
                                                        _hd3960939671_)))
                                                  (let ((_lp-tl3961439683_
                                                         (##cdr _e3961239678_))
                                                        (_lp-hd3961339681_
                                                         (##car _e3961239678_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3961339681_)
                                                        (let ((_e3961939686_
                                                               (gx#stx-e
                                                                _lp-hd3961339681_)))
                                                          (let ((_tl3962139691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3961939686_))
                        (_hd3962039689_ (##car _e3961939686_)))
                    (if (gx#stx-pair? _hd3962039689_)
                        (let ((_e3962239694_ (gx#stx-e _hd3962039689_)))
                          (let ((_tl3962439699_ (##cdr _e3962239694_))
                                (_hd3962339697_ (##car _e3962239694_)))
                            (if (gx#stx-null? _tl3962439699_)
                                (if (gx#stx-pair? _tl3962139691_)
                                    (let ((_e3962539702_
                                           (gx#stx-e _tl3962139691_)))
                                      (let ((_tl3962739707_
                                             (##cdr _e3962539702_))
                                            (_hd3962639705_
                                             (##car _e3962539702_)))
                                        (if (gx#stx-null? _tl3962739707_)
                                            (_loop3961139668_
                                             _lp-tl3961439683_
                                             (cons _hd3962639705_
                                                   _expr3961539673_)
                                             (cons _hd3962339697_
                                                   _id3961639675_))
                                            (___kont4150241503_))))
                                    (___kont4150241503_))
                                (___kont4150241503_))))
                        (___kont4150241503_))))
                (___kont4150241503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_id3961839712_
                                                       (reverse _id3961639675_))
                                                      (_expr3961739710_
                                                       (reverse _expr3961539673_)))
                                                  (if (gx#stx-pair?
                                                       _tl3960739660_)
                                                      (let ((_e3962839715_
                                                             (gx#stx-e
                                                              _tl3960739660_)))
                                                        (let ((_tl3963039720_
                                                               (##cdr _e3962839715_))
                                                              (_hd3962939718_
                                                               (##car _e3962839715_)))
                                                          (if (gx#stx-null?
                                                               _tl3963039720_)
                                                              (___kont4149841499_
                                                               _hd3962939718_
                                                               _expr3961739710_
                                                               _id3961839712_)
                                                              (___kont4150241503_))))
                                                      (___kont4150241503_)))))))
                                  (_loop3961139668_
                                   _target3960839663_
                                   '()
                                   '()))))
                             (___match4155741558_
                              (lambda (_e3956839771_
                                       _hd3956939774_
                                       _tl3957039776_
                                       _e3957139779_
                                       _hd3957239782_
                                       _tl3957339784_
                                       ___splice4149641497_
                                       _target3957439787_
                                       _tl3957639789_)
                                (letrec ((_loop3957739792_
                                          (lambda (_hd3957539795_)
                                            (if (gx#stx-pair? _hd3957539795_)
                                                (let ((_e3957839798_
                                                       (gx#stx-e
                                                        _hd3957539795_)))
                                                  (let ((_lp-tl3958039803_
                                                         (##cdr _e3957839798_))
                                                        (_lp-hd3957939801_
                                                         (##car _e3957839798_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3957939801_)
                                                        (let ((_e3958139806_
                                                               (gx#stx-e
                                                                _lp-hd3957939801_)))
                                                          (let ((_tl3958339811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3958139806_))
                        (_hd3958239809_ (##car _e3958139806_)))
                    (if (gx#stx-pair? _hd3958239809_)
                        (let ((_e3958439814_ (gx#stx-e _hd3958239809_)))
                          (let ((_tl3958639819_ (##cdr _e3958439814_))
                                (_hd3958539817_ (##car _e3958439814_)))
                            (if (gx#stx-null? _tl3958639819_)
                                (if (gx#stx-pair? _tl3958339811_)
                                    (let ((_e3958739822_
                                           (gx#stx-e _tl3958339811_)))
                                      (let ((_tl3958939827_
                                             (##cdr _e3958739822_))
                                            (_hd3958839825_
                                             (##car _e3958739822_)))
                                        (if (gx#stx-pair? _hd3958839825_)
                                            (let ((_e3959039830_
                                                   (gx#stx-e _hd3958839825_)))
                                              (let ((_tl3959239835_
                                                     (##cdr _e3959039830_))
                                                    (_hd3959139833_
                                                     (##car _e3959039830_)))
                                                (if (gx#identifier?
                                                     _hd3959139833_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3959139833_)
                                                        (if (gx#stx-pair?
                                                             _tl3959239835_)
                                                            (let ((_e3959339838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3959239835_)))
                      (let ((_tl3959539843_ (##cdr _e3959339838_))
                            (_hd3959439841_ (##car _e3959339838_)))
                        (if (gx#stx-null? _tl3959539843_)
                            (if (gx#stx-null? _tl3958939827_)
                                (_loop3957739792_ _lp-tl3958039803_)
                                (___match4158141582_
                                 _e3956839771_
                                 _hd3956939774_
                                 _tl3957039776_
                                 _e3957139779_
                                 _hd3957239782_
                                 _tl3957339784_
                                 ___splice4149641497_
                                 _target3957439787_
                                 _tl3957639789_))
                            (___match4158141582_
                             _e3956839771_
                             _hd3956939774_
                             _tl3957039776_
                             _e3957139779_
                             _hd3957239782_
                             _tl3957339784_
                             ___splice4149641497_
                             _target3957439787_
                             _tl3957639789_))))
                    (___match4158141582_
                     _e3956839771_
                     _hd3956939774_
                     _tl3957039776_
                     _e3957139779_
                     _hd3957239782_
                     _tl3957339784_
                     ___splice4149641497_
                     _target3957439787_
                     _tl3957639789_))
                (___match4158141582_
                 _e3956839771_
                 _hd3956939774_
                 _tl3957039776_
                 _e3957139779_
                 _hd3957239782_
                 _tl3957339784_
                 ___splice4149641497_
                 _target3957439787_
                 _tl3957639789_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4158141582_
                                                     _e3956839771_
                                                     _hd3956939774_
                                                     _tl3957039776_
                                                     _e3957139779_
                                                     _hd3957239782_
                                                     _tl3957339784_
                                                     ___splice4149641497_
                                                     _target3957439787_
                                                     _tl3957639789_))))
                                            (___match4158141582_
                                             _e3956839771_
                                             _hd3956939774_
                                             _tl3957039776_
                                             _e3957139779_
                                             _hd3957239782_
                                             _tl3957339784_
                                             ___splice4149641497_
                                             _target3957439787_
                                             _tl3957639789_))))
                                    (___match4158141582_
                                     _e3956839771_
                                     _hd3956939774_
                                     _tl3957039776_
                                     _e3957139779_
                                     _hd3957239782_
                                     _tl3957339784_
                                     ___splice4149641497_
                                     _target3957439787_
                                     _tl3957639789_))
                                (___match4158141582_
                                 _e3956839771_
                                 _hd3956939774_
                                 _tl3957039776_
                                 _e3957139779_
                                 _hd3957239782_
                                 _tl3957339784_
                                 ___splice4149641497_
                                 _target3957439787_
                                 _tl3957639789_))))
                        (___match4158141582_
                         _e3956839771_
                         _hd3956939774_
                         _tl3957039776_
                         _e3957139779_
                         _hd3957239782_
                         _tl3957339784_
                         ___splice4149641497_
                         _target3957439787_
                         _tl3957639789_))))
                (___match4158141582_
                 _e3956839771_
                 _hd3956939774_
                 _tl3957039776_
                 _e3957139779_
                 _hd3957239782_
                 _tl3957339784_
                 ___splice4149641497_
                 _target3957439787_
                 _tl3957639789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (if (gx#stx-pair?
                                                       _tl3957339784_)
                                                      (let ((_e3959639847_
                                                             (gx#stx-e
                                                              _tl3957339784_)))
                                                        (let ((_tl3959839852_
                                                               (##cdr _e3959639847_))
                                                              (_hd3959739850_
                                                               (##car _e3959639847_)))
                                                          (if (gx#stx-null?
                                                               _tl3959839852_)
                                                              (___kont4149441495_)
                                                              (___match4158141582_
                                                               _e3956839771_
                                                               _hd3956939774_
                                                               _tl3957039776_
                                                               _e3957139779_
                                                               _hd3957239782_
                                                               _tl3957339784_
                                                               ___splice4149641497_
                                                               _target3957439787_
                                                               _tl3957639789_))))
                                                      (___match4158141582_
                                                       _e3956839771_
                                                       _hd3956939774_
                                                       _tl3957039776_
                                                       _e3957139779_
                                                       _hd3957239782_
                                                       _tl3957339784_
                                                       ___splice4149641497_
                                                       _target3957439787_
                                                       _tl3957639789_)))))))
                                  (_loop3957739792_ _target3957439787_)))))
                        (if (gx#stx-pair? ___stx4149041491_)
                            (let ((_e3955639862_ (gx#stx-e ___stx4149041491_)))
                              (let ((_tl3955839867_ (##cdr _e3955639862_))
                                    (_hd3955739865_ (##car _e3955639862_)))
                                (if (gx#identifier? _hd3955739865_)
                                    (if (gx#stx-eq? '%#if _hd3955739865_)
                                        (if (gx#stx-pair? _tl3955839867_)
                                            (let ((_e3955939870_
                                                   (gx#stx-e _tl3955839867_)))
                                              (let ((_tl3956139875_
                                                     (##cdr _e3955939870_))
                                                    (_hd3956039873_
                                                     (##car _e3955939870_)))
                                                (if (gx#stx-pair?
                                                     _tl3956139875_)
                                                    (let ((_e3956239878_
                                                           (gx#stx-e
                                                            _tl3956139875_)))
                                                      (let ((_tl3956439883_
                                                             (##cdr _e3956239878_))
                                                            (_hd3956339881_
                                                             (##car _e3956239878_)))
                                                        (if (gx#stx-pair?
                                                             _tl3956439883_)
                                                            (let ((_e3956539886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3956439883_)))
                      (let ((_tl3956739891_ (##cdr _e3956539886_))
                            (_hd3956639889_ (##car _e3956539886_)))
                        (if (gx#stx-null? _tl3956739891_)
                            (___kont4149241493_
                             _hd3956639889_
                             _hd3956339881_
                             _hd3956039873_)
                            (___kont4150241503_))))
                    (___kont4150241503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4150241503_))))
                                            (___kont4150241503_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3955739865_)
                                            (if (gx#stx-pair? _tl3955839867_)
                                                (let ((_e3957139779_
                                                       (gx#stx-e
                                                        _tl3955839867_)))
                                                  (let ((_tl3957339784_
                                                         (##cdr _e3957139779_))
                                                        (_hd3957239782_
                                                         (##car _e3957139779_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3957239782_)
                                                        (let ((___splice4149641497_
                                                               (gx#syntax-split-splice
                                                                _hd3957239782_
                                                                '0)))
                                                          (let ((_tl3957639789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice4149641497_ '1))
                        (_target3957439787_
                         (##vector-ref ___splice4149641497_ '0)))
                    (if (gx#stx-null? _tl3957639789_)
                        (___match4155741558_
                         _e3955639862_
                         _hd3955739865_
                         _tl3955839867_
                         _e3957139779_
                         _hd3957239782_
                         _tl3957339784_
                         ___splice4149641497_
                         _target3957439787_
                         _tl3957639789_)
                        (___kont4150241503_))))
                (___kont4150241503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4150241503_))
                                            (___kont4150241503_)))
                                    (___kont4150241503_))))
                            (___kont4150241503_)))))))
               (_fold-blocks39364_
                (lambda (_rest39463_ _blocks39464_)
                  (let* ((_rest3946539482_ _rest39463_)
                         (_E3946839486_
                          (lambda ()
                            (error '"No clause matching" _rest3946539482_))))
                    (let ((_K3947039506_
                           (lambda (_rest39497_
                                    _assert39498_
                                    _bind39499_
                                    _body39500_
                                    _name39501_)
                             (let ((_g44257_
                                    (_basic-block39363_
                                     _body39500_
                                     _bind39499_
                                     _assert39498_)))
                               (begin
                                 (let ((_g44258_
                                        (if (##values? _g44257_)
                                            (##vector-length _g44257_)
                                            1)))
                                   (if (not (##fx= _g44258_ 2))
                                       (error "Context expects 2 values"
                                              _g44258_)))
                                 (let ((_body39503_ (##vector-ref _g44257_ 0))
                                       (_body-blocks39504_
                                        (##vector-ref _g44257_ 1)))
                                   (_fold-blocks39364_
                                    (foldl1 cons
                                            _rest39497_
                                            _body-blocks39504_)
                                    (cons (cons _name39501_
                                                (cons 'continue:
                                                      (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (reverse (map car _bind39499_))
                                (cons _body39503_ '())))
                    (cons _assert39498_ (cons _bind39499_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _blocks39464_)))))))
                          (_K3946939491_ (lambda () _blocks39464_)))
                      (let ((_try-match3946739494_
                             (lambda ()
                               (if (##null? _rest3946539482_)
                                   (_K3946939491_)
                                   (_E3946839486_)))))
                        (if (##pair? _rest3946539482_)
                            (let ((_tl3947239511_ (##cdr _rest3946539482_))
                                  (_hd3947139509_ (##car _rest3946539482_)))
                              (if (##pair? _hd3947139509_)
                                  (let ((_tl3947439516_ (##cdr _hd3947139509_))
                                        (_hd3947339514_
                                         (##car _hd3947139509_)))
                                    (if (##pair? _tl3947439516_)
                                        (let ((_tl3947639523_
                                               (##cdr _tl3947439516_))
                                              (_hd3947539521_
                                               (##car _tl3947439516_)))
                                          (if (##pair? _tl3947639523_)
                                              (let ((_tl3947839530_
                                                     (##cdr _tl3947639523_))
                                                    (_hd3947739528_
                                                     (##car _tl3947639523_)))
                                                (if (##pair? _tl3947839530_)
                                                    (let ((_tl3948039537_
                                                           (##cdr _tl3947839530_))
                                                          (_hd3947939535_
                                                           (##car _tl3947839530_)))
                                                      (if (##null? _tl3948039537_)
                                                          (let ((_name39519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3947339514_)
                        (_body39526_ _hd3947539521_)
                        (_bind39533_ _hd3947739528_)
                        (_assert39540_ _hd3947939535_)
                        (_rest39542_ _tl3947239511_))
                    (_K3947039506_
                     _rest39542_
                     _assert39540_
                     _bind39533_
                     _body39526_
                     _name39519_))
                  (_E3946839486_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3946839486_)))
                                              (_E3946839486_)))
                                        (_E3946839486_)))
                                  (_E3946839486_)))
                            (_try-match3946739494_))))))))
        (let* ((_clause3936539372_ _clause39358_)
               (_E3936739376_
                (lambda () (error '"No clause matching" _clause3936539372_)))
               (_K3936839451_
                (lambda (_body39379_ _name39380_)
                  (let* ((_g3938239398_
                          (lambda (_g3938339395_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3938339395_)))
                         (_g3938139448_
                          (lambda (_g3938339401_)
                            (if (gx#stx-pair? _g3938339401_)
                                (let ((_e3938539403_ (gx#stx-e _g3938339401_)))
                                  (let ((_hd3938639406_ (##car _e3938539403_))
                                        (_tl3938739408_ (##cdr _e3938539403_)))
                                    (if (gx#identifier? _hd3938639406_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3938639406_)
                                            (if (gx#stx-pair? _tl3938739408_)
                                                (let ((_e3938839411_
                                                       (gx#stx-e
                                                        _tl3938739408_)))
                                                  (let ((_hd3938939414_
                                                         (##car _e3938839411_))
                                                        (_tl3939039416_
                                                         (##cdr _e3938839411_)))
                                                    (if (gx#stx-null?
                                                         _hd3938939414_)
                                                        (if (gx#stx-pair?
                                                             _tl3939039416_)
                                                            (let ((_e3939139419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3939039416_)))
                      (let ((_hd3939239422_ (##car _e3939139419_))
                            (_tl3939339424_ (##cdr _e3939139419_)))
                        (if (gx#stx-null? _tl3939339424_)
                            ((lambda (_L39427_)
                               (let ((_g44259_
                                      (_basic-block39363_ _L39427_ '() '())))
                                 (begin
                                   (let ((_g44260_
                                          (if (##values? _g44259_)
                                              (##vector-length _g44259_)
                                              1)))
                                     (if (not (##fx= _g44260_ 2))
                                         (error "Context expects 2 values"
                                                _g44260_)))
                                   (let ((_body39445_
                                          (##vector-ref _g44259_ 0))
                                         (_body-blocks39446_
                                          (##vector-ref _g44259_ 1)))
                                     (_fold-blocks39364_
                                      _body-blocks39446_
                                      (cons (cons _name39380_
                                                  (cons 'restart:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '() (cons _body39445_ '())))
                      (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks39359_))))))
                             _hd3939239422_)
                            (_g3938239398_ _g3938339401_))))
                    (_g3938239398_ _g3938339401_))
                (_g3938239398_ _g3938339401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3938239398_ _g3938339401_))
                                            (_g3938239398_ _g3938339401_))
                                        (_g3938239398_ _g3938339401_))))
                                (_g3938239398_ _g3938339401_)))))
                    (_g3938139448_ _body39379_)))))
          (if (##pair? _clause3936539372_)
              (let ((_hd3936939454_ (##car _clause3936539372_))
                    (_tl3937039456_ (##cdr _clause3936539372_)))
                (let* ((_name39459_ _hd3936939454_)
                       (_body39461_ _tl3937039456_))
                  (_K3936839451_ _body39461_ _name39459_)))
              (_E3936739376_))))))
  (define gxc#optimize-match-fold-basic-blocks
    (lambda (_blocks38964_)
      (let _lp38966_ ((_rest38968_ _blocks38964_) (_blocks38969_ '()))
        (let* ((_rest3897038978_ _rest38968_)
               (_else3897239027_
                (lambda ()
                  (foldl1 (lambda (_block38986_ _r38987_)
                            (let* ((_block3898838999_ _block38986_)
                                   (_E3899039003_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _block3898838999_)))
                                   (_K3899139009_
                                    (lambda (_kont39006_ _name39007_)
                                      (cons (cons _name39007_ _kont39006_)
                                            _r38987_))))
                              (if (##pair? _block3898838999_)
                                  (let ((_hd3899239012_
                                         (##car _block3898838999_))
                                        (_tl3899339014_
                                         (##cdr _block3898838999_)))
                                    (let ((_name39017_ _hd3899239012_))
                                      (if (##pair? _tl3899339014_)
                                          (let ((_tl3899539019_
                                                 (##cdr _tl3899339014_)))
                                            (if (##pair? _tl3899539019_)
                                                (let* ((_hd3899639022_
                                                        (##car _tl3899539019_))
                                                       (_kont39025_
                                                        _hd3899639022_))
                                                  (_K3899139009_
                                                   _kont39025_
                                                   _name39017_))
                                                (_E3899039003_)))
                                          (_E3899039003_))))
                                  (_E3899039003_))))
                          '()
                          _blocks38969_)))
               (_K3897439346_
                (lambda (_rest39030_ _block39031_)
                  (let* ((_block3903239057_ _block39031_)
                         (_E3903539061_
                          (lambda ()
                            (error '"No clause matching" _block3903239057_))))
                    (let ((_K3904739317_
                           (lambda (_assert39239_ _kont39240_ _name39241_)
                             (let* ((_g3924339259_
                                     (lambda (_g3924439256_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3924439256_)))
                                    (_g3924239314_
                                     (lambda (_g3924439262_)
                                       (if (gx#stx-pair? _g3924439262_)
                                           (let ((_e3924639264_
                                                  (gx#stx-e _g3924439262_)))
                                             (let ((_hd3924739267_
                                                    (##car _e3924639264_))
                                                   (_tl3924839269_
                                                    (##cdr _e3924639264_)))
                                               (if (gx#identifier?
                                                    _hd3924739267_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3924739267_)
                                                       (if (gx#stx-pair?
                                                            _tl3924839269_)
                                                           (let ((_e3924939272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3924839269_)))
                     (let ((_hd3925039275_ (##car _e3924939272_))
                           (_tl3925139277_ (##cdr _e3924939272_)))
                       (if (gx#stx-null? _hd3925039275_)
                           (if (gx#stx-pair? _tl3925139277_)
                               (let ((_e3925239280_ (gx#stx-e _tl3925139277_)))
                                 (let ((_hd3925339283_ (##car _e3925239280_))
                                       (_tl3925439285_ (##cdr _e3925239280_)))
                                   (if (gx#stx-null? _tl3925439285_)
                                       ((lambda (_L39288_)
                                          (let* ((_body39303_
                                                  (gxc#optimize-match-block
                                                   _L39288_
                                                   _assert39239_
                                                   '()
                                                   _rest39030_))
                                                 (_block39305_
                                                  (cons _name39241_
                                                        (cons 'restart:
                                                              (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '() (cons _body39303_ '())))
                            (cons _assert39239_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_blocks39307_
                                                  (cons _block39305_
                                                        _blocks38969_))
                                                 (_rest39309_
                                                  (gxc#optimize-match-prune-blocks
                                                   _rest39030_
                                                   _blocks39307_))
                                                 (_rest39311_
                                                  (gxc#optimize-match-fuse-restart-blocks
                                                   _rest39309_
                                                   _blocks39307_)))
                                            (_lp38966_
                                             _rest39311_
                                             _blocks39307_)))
                                        _hd3925339283_)
                                       (_g3924339259_ _g3924439262_))))
                               (_g3924339259_ _g3924439262_))
                           (_g3924339259_ _g3924439262_))))
                   (_g3924339259_ _g3924439262_))
               (_g3924339259_ _g3924439262_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3924339259_
                                                    _g3924439262_))))
                                           (_g3924339259_ _g3924439262_)))))
                               (_g3924239314_ _kont39240_))))
                          (_K3903639200_
                           (lambda (_bind39065_
                                    _assert39066_
                                    _kont39067_
                                    _name39068_)
                             (let* ((_g3907039096_
                                     (lambda (_g3907139093_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3907139093_)))
                                    (_g3906939197_
                                     (lambda (_g3907139099_)
                                       (if (gx#stx-pair? _g3907139099_)
                                           (let ((_e3907439101_
                                                  (gx#stx-e _g3907139099_)))
                                             (let ((_hd3907539104_
                                                    (##car _e3907439101_))
                                                   (_tl3907639106_
                                                    (##cdr _e3907439101_)))
                                               (if (gx#identifier?
                                                    _hd3907539104_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3907539104_)
                                                       (if (gx#stx-pair?
                                                            _tl3907639106_)
                                                           (let ((_e3907739109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3907639106_)))
                     (let ((_hd3907839112_ (##car _e3907739109_))
                           (_tl3907939114_ (##cdr _e3907739109_)))
                       (if (gx#stx-pair/null? _hd3907839112_)
                           (let ((_g44261_
                                  (gx#syntax-split-splice _hd3907839112_ '0)))
                             (begin
                               (let ((_g44262_
                                      (if (##values? _g44261_)
                                          (##vector-length _g44261_)
                                          1)))
                                 (if (not (##fx= _g44262_ 2))
                                     (error "Context expects 2 values"
                                            _g44262_)))
                               (let ((_target3908039117_
                                      (##vector-ref _g44261_ 0))
                                     (_tl3908239119_
                                      (##vector-ref _g44261_ 1)))
                                 (if (gx#stx-null? _tl3908239119_)
                                     (letrec ((_loop3908339122_
                                               (lambda (_hd3908139125_
                                                        _id3908739127_)
                                                 (if (gx#stx-pair?
                                                      _hd3908139125_)
                                                     (let ((_e3908439130_
                                                            (gx#stx-e
                                                             _hd3908139125_)))
                                                       (let ((_lp-hd3908539133_
                                                              (##car _e3908439130_))
                                                             (_lp-tl3908639135_
                                                              (##cdr _e3908439130_)))
                                                         (_loop3908339122_
                                                          _lp-tl3908639135_
                                                          (cons _lp-hd3908539133_
                                                                _id3908739127_))))
                                                     (let ((_id3908839138_
                                                            (reverse _id3908739127_)))
                                                       (if (gx#stx-pair?
                                                            _tl3907939114_)
                                                           (let ((_e3908939141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3907939114_)))
                     (let ((_hd3909039144_ (##car _e3908939141_))
                           (_tl3909139146_ (##cdr _e3908939141_)))
                       (if (gx#stx-null? _tl3909139146_)
                           ((lambda (_L39149_ _L39150_)
                              (let* ((_body39179_
                                      (gxc#optimize-match-block
                                       _L39149_
                                       _assert39066_
                                       _bind39065_
                                       _rest39030_))
                                     (_block39188_
                                      (cons _name39068_
                                            (cons 'continue:
                                                  (cons (cons '%#lambda
                                                              (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g3918039183_ _g3918139185_)
                                        (cons _g3918039183_ _g3918139185_))
                                      '()
                                      _L39150_))
                            (cons _body39179_ '())))
                (cons _assert39066_ (cons _bind39065_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_blocks39190_
                                      (cons _block39188_ _blocks38969_))
                                     (_rest39192_
                                      (gxc#optimize-match-prune-blocks
                                       _rest39030_
                                       _blocks39190_))
                                     (_rest39194_
                                      (gxc#optimize-match-fuse-restart-blocks
                                       _rest39192_
                                       _blocks39190_)))
                                (_lp38966_ _rest39194_ _blocks39190_)))
                            _hd3909039144_
                            _id3908839138_)
                           (_g3907039096_ _g3907139099_))))
                   (_g3907039096_ _g3907139099_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3908339122_
                                        _target3908039117_
                                        '()))
                                     (_g3907039096_ _g3907139099_)))))
                           (_g3907039096_ _g3907139099_))))
                   (_g3907039096_ _g3907139099_))
               (_g3907039096_ _g3907139099_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3907039096_
                                                    _g3907139099_))))
                                           (_g3907039096_ _g3907139099_)))))
                               (_g3906939197_ _kont39067_)))))
                      (if (##pair? _block3903239057_)
                          (let ((_tl3904939322_ (##cdr _block3903239057_))
                                (_hd3904839320_ (##car _block3903239057_)))
                            (if (##pair? _tl3904939322_)
                                (let ((_tl3905139329_ (##cdr _tl3904939322_))
                                      (_hd3905039327_ (##car _tl3904939322_)))
                                  (if (##eq? _hd3905039327_ 'restart:)
                                      (if (##pair? _tl3905139329_)
                                          (let ((_tl3905339334_
                                                 (##cdr _tl3905139329_))
                                                (_hd3905239332_
                                                 (##car _tl3905139329_)))
                                            (if (##pair? _tl3905339334_)
                                                (let ((_tl3905539341_
                                                       (##cdr _tl3905339334_))
                                                      (_hd3905439339_
                                                       (##car _tl3905339334_)))
                                                  (if (##null? _tl3905539341_)
                                                      (let ((_name39325_
                                                             _hd3904839320_)
                                                            (_kont39337_
                                                             _hd3905239332_)
                                                            (_assert39344_
                                                             _hd3905439339_))
                                                        (_K3904739317_
                                                         _assert39344_
                                                         _kont39337_
                                                         _name39325_))
                                                      (_E3903539061_)))
                                                (_E3903539061_)))
                                          (_E3903539061_))
                                      (if (##eq? _hd3905039327_ 'continue:)
                                          (if (##pair? _tl3905139329_)
                                              (let ((_tl3904239217_
                                                     (##cdr _tl3905139329_))
                                                    (_hd3904139215_
                                                     (##car _tl3905139329_)))
                                                (if (##pair? _tl3904239217_)
                                                    (let ((_tl3904439224_
                                                           (##cdr _tl3904239217_))
                                                          (_hd3904339222_
                                                           (##car _tl3904239217_)))
                                                      (if (##pair? _tl3904439224_)
                                                          (let ((_tl3904639231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _tl3904439224_))
                        (_hd3904539229_ (##car _tl3904439224_)))
                    (if (##null? _tl3904639231_)
                        (let ((_name39208_ _hd3904839320_)
                              (_kont39220_ _hd3904139215_)
                              (_assert39227_ _hd3904339222_)
                              (_bind39234_ _hd3904539229_))
                          (_K3903639200_
                           _bind39234_
                           _assert39227_
                           _kont39220_
                           _name39208_))
                        (_E3903539061_)))
                  (_E3903539061_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3903539061_)))
                                              (_E3903539061_))
                                          (_E3903539061_))))
                                (_E3903539061_)))
                          (_E3903539061_)))))))
          (if (##pair? _rest3897038978_)
              (let ((_hd3897539349_ (##car _rest3897038978_))
                    (_tl3897639351_ (##cdr _rest3897038978_)))
                (let* ((_block39354_ _hd3897539349_)
                       (_rest39356_ _tl3897639351_))
                  (_K3897439346_ _rest39356_ _block39354_)))
              (_else3897239027_))))))
  (define gxc#optimize-match-block
    (lambda (_body33587_ _assert33588_ _bind33589_ _blocks33590_)
      (letrec* ((_env-assert33825_ '())
                (_env-type33826_ '())
                (_env-bind33827_ '())
                (_in-splice?33828_ '#f)
                (_do-assert33829_
                 (lambda (_assert38887_ _K38888_)
                   (if (pair? _assert38887_)
                       (let _lp38890_ ((_rest38892_ _assert38887_)
                                       (_env-assert38893_ _env-assert33825_)
                                       (_env-type38894_ _env-type33826_))
                         (let* ((_rest3889538903_ _rest38892_)
                                (_else3889738911_
                                 (lambda ()
                                   (_do-assert!33835_
                                    _env-assert38893_
                                    _env-type38894_
                                    _K38888_)))
                                (_K3889938952_
                                 (lambda (_rest38914_ _assert38915_)
                                   (let* ((_assert3891638923_ _assert38915_)
                                          (_E3891838927_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _assert3891638923_)))
                                          (_K3891938940_
                                           (lambda (_val38930_ _expr38931_)
                                             (let* ((_sexpr38933_
                                                     (gxc#apply-generate-runtime-repr
                                                      _expr38931_))
                                                    (_env-assert38935_
                                                     (cons (cons _sexpr38933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _val38930_)
                   _env-assert38893_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_env-type38937_
                                                     (_fold-assert-type33831_
                                                      _expr38931_
                                                      _val38930_
                                                      _env-type38894_)))
                                               (_lp38890_
                                                _rest38914_
                                                _env-assert38935_
                                                _env-type38937_)))))
                                     (if (##pair? _assert3891638923_)
                                         (let ((_hd3892038943_
                                                (##car _assert3891638923_))
                                               (_tl3892138945_
                                                (##cdr _assert3891638923_)))
                                           (let* ((_expr38948_ _hd3892038943_)
                                                  (_val38950_ _tl3892138945_))
                                             (_K3891938940_
                                              _val38950_
                                              _expr38948_)))
                                         (_E3891838927_))))))
                           (if (##pair? _rest3889538903_)
                               (let ((_hd3890038955_ (##car _rest3889538903_))
                                     (_tl3890138957_ (##cdr _rest3889538903_)))
                                 (let* ((_assert38960_ _hd3890038955_)
                                        (_rest38962_ _tl3890138957_))
                                   (_K3889938952_ _rest38962_ _assert38960_)))
                               (_else3889738911_))))
                       (_K38888_))))
                (_predicate-type33830_
                 (lambda (_id38832_)
                   (let* ((_sym38834_ (gxc#identifier-symbol _id38832_))
                          (_$e38836_ _sym38834_))
                     (let ((_default3883838869_
                            (lambda ()
                              (let* ((_g3884138848_
                                      (gxc#optimizer-resolve-type _sym38834_))
                                     (_else3884338856_ (lambda () '#f))
                                     (_K3884538861_
                                      (lambda (_struct-t38859_)
                                        (gxc#optimizer-resolve-type
                                         _struct-t38859_))))
                                (if (##structure-instance-of?
                                     _g3884138848_
                                     'gxc#!struct-pred::t)
                                    (let* ((_e3884638864_
                                            (##vector-ref _g3884138848_ '1))
                                           (_struct-t38867_ _e3884638864_))
                                      (gxc#optimizer-resolve-type
                                       _struct-t38867_))
                                    (_else3884338856_)))))
                           (_table3883938871_
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
                       (if (symbol? _$e38836_)
                           (let* ((_h38874_ (##symbol-hash _$e38836_))
                                  (_ix38877_ (##fxmodulo _h38874_ '63))
                                  (_q38880_
                                   (##vector-ref _table3883938871_ _ix38877_)))
                             (if _q38880_
                                 (if (eq? (##car _q38880_) _$e38836_)
                                     (let ((_x38884_ (##cdr _q38880_)))
                                       (if (##fx< _x38884_ '5)
                                           (if (##fx< _x38884_ '2)
                                               (if (##fx= _x38884_ '0)
                                                   'pair
                                                   'null)
                                               (if (##fx= _x38884_ '2)
                                                   'vector
                                                   (if (##fx= _x38884_ '3)
                                                       'box
                                                       'identifier)))
                                           (if (##fx< _x38884_ '7)
                                               (if (##fx= _x38884_ '5)
                                                   'stx-pair
                                                   'stx-null)
                                               (if (##fx= _x38884_ '7)
                                                   'stx-vector
                                                   (if (##fx= _x38884_ '8)
                                                       'stx-box
                                                       'stx-datum)))))
                                     (_default3883838869_))
                                 (_default3883838869_)))
                           (_default3883838869_))))))
                (_fold-assert-type33831_
                 (lambda (_expr37780_ _val37781_ _env37782_)
                   (let* ((___stx4174841749_ _expr37780_)
                          (_g3779037969_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4174841749_))))
                     (let ((___kont4175041751_
                            (lambda (_L38801_ _L38802_)
                              (let ((_$e38824_
                                     (_predicate-type33830_ _L38802_)))
                                (if _$e38824_
                                    ((lambda (_t38827_)
                                       (cons (cons _L38801_
                                                   (cons _t38827_
                                                         (cons _val37781_
                                                               '())))
                                             _env37782_))
                                     _$e38824_)
                                    _env37782_))))
                           (___kont4175241753_
                            (lambda (_L38491_ _L38492_ _L38493_)
                              (let ((_$e38518_
                                     (gxc#identifier-symbol _L38493_)))
                                (if (let ((_$e38521_ (eq? '##fx= _$e38518_)))
                                      (if _$e38521_
                                          _$e38521_
                                          (eq? 'fx= _$e38518_)))
                                    (let* ((___stx4165441655_ _L38492_)
                                           (_g3852538554_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               ___stx4165441655_))))
                                      (let ((___kont4165641657_
                                             (lambda (_L38622_ _L38623_)
                                               (let ((_$e38648_
                                                      (_countf-symbol33832_
                                                       _L38623_)))
                                                 (if _$e38648_
                                                     ((lambda (_sym38651_)
                                                        (cons (cons _L38622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym38651_
                                  (cons (gx#stx-e _L38491_)
                                        (cons _val37781_ '()))))
                      _env37782_))
              _$e38648_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _env37782_))))
                                            (___kont4165841659_
                                             (lambda () _env37782_)))
                                        (if (gx#stx-pair? ___stx4165441655_)
                                            (let ((_e3852938566_
                                                   (gx#stx-e
                                                    ___stx4165441655_)))
                                              (let ((_tl3853138571_
                                                     (##cdr _e3852938566_))
                                                    (_hd3853038569_
                                                     (##car _e3852938566_)))
                                                (if (gx#identifier?
                                                     _hd3853038569_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3853038569_)
                                                        (if (gx#stx-pair?
                                                             _tl3853138571_)
                                                            (let ((_e3853238574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3853138571_)))
                      (let ((_tl3853438579_ (##cdr _e3853238574_))
                            (_hd3853338577_ (##car _e3853238574_)))
                        (if (gx#stx-pair? _hd3853338577_)
                            (let ((_e3853538582_ (gx#stx-e _hd3853338577_)))
                              (let ((_tl3853738587_ (##cdr _e3853538582_))
                                    (_hd3853638585_ (##car _e3853538582_)))
                                (if (gx#identifier? _hd3853638585_)
                                    (if (gx#stx-eq? '%#ref _hd3853638585_)
                                        (if (gx#stx-pair? _tl3853738587_)
                                            (let ((_e3853838590_
                                                   (gx#stx-e _tl3853738587_)))
                                              (let ((_tl3854038595_
                                                     (##cdr _e3853838590_))
                                                    (_hd3853938593_
                                                     (##car _e3853838590_)))
                                                (if (gx#stx-null?
                                                     _tl3854038595_)
                                                    (if (gx#stx-pair?
                                                         _tl3853438579_)
                                                        (let ((_e3854138598_
                                                               (gx#stx-e
                                                                _tl3853438579_)))
                                                          (let ((_tl3854338603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3854138598_))
                        (_hd3854238601_ (##car _e3854138598_)))
                    (if (gx#stx-pair? _hd3854238601_)
                        (let ((_e3854438606_ (gx#stx-e _hd3854238601_)))
                          (let ((_tl3854638611_ (##cdr _e3854438606_))
                                (_hd3854538609_ (##car _e3854438606_)))
                            (if (gx#identifier? _hd3854538609_)
                                (if (gx#stx-eq? '%#ref _hd3854538609_)
                                    (if (gx#stx-pair? _tl3854638611_)
                                        (let ((_e3854738614_
                                               (gx#stx-e _tl3854638611_)))
                                          (let ((_tl3854938619_
                                                 (##cdr _e3854738614_))
                                                (_hd3854838617_
                                                 (##car _e3854738614_)))
                                            (if (gx#stx-null? _tl3854938619_)
                                                (if (gx#stx-null?
                                                     _tl3854338603_)
                                                    (___kont4165641657_
                                                     _hd3854838617_
                                                     _hd3853938593_)
                                                    (___kont4165841659_))
                                                (___kont4165841659_))))
                                        (___kont4165841659_))
                                    (___kont4165841659_))
                                (___kont4165841659_))))
                        (___kont4165841659_))))
                (___kont4165841659_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4165841659_))))
                                            (___kont4165841659_))
                                        (___kont4165841659_))
                                    (___kont4165841659_))))
                            (___kont4165841659_))))
                    (___kont4165841659_))
                (___kont4165841659_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4165841659_))))
                                            (___kont4165841659_))))
                                    (if (let ((_$e38656_
                                               (eq? '##eq? _$e38518_)))
                                          (if _$e38656_
                                              _$e38656_
                                              (let ((_$e38659_
                                                     (eq? 'eq? _$e38518_)))
                                                (if _$e38659_
                                                    _$e38659_
                                                    (let ((_$e38662_
                                                           (eq? '##eqv?
                                                                _$e38518_)))
                                                      (if _$e38662_
                                                          _$e38662_
                                                          (let ((_$e38665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (eq? 'eqv? _$e38518_)))
                    (if _$e38665_
                        _$e38665_
                        (let ((_$e38668_ (eq? '##equal? _$e38518_)))
                          (if _$e38668_
                              _$e38668_
                              (let ((_$e38671_ (eq? 'equal? _$e38518_)))
                                (if _$e38671_
                                    _$e38671_
                                    (let ((_$e38674_
                                           (eq? 'gx#free-identifier=?
                                                _$e38518_)))
                                      (if _$e38674_
                                          _$e38674_
                                          (eq? 'gx#stx-eq?
                                               _$e38518_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        ((lambda (_sym38677_)
                                           (let* ((_sym38679_
                                                   (_eqf-symbol33833_
                                                    _sym38677_))
                                                  (___stx4172241723_ _L38492_)
                                                  (_g3868238695_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4172241723_))))
                                             (let ((___kont4172441725_
                                                    (lambda (_L38723_)
                                                      (cons (cons _L38723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _sym38679_
                                (cons (gx#stx-e _L38491_)
                                      (cons _val37781_ '()))))
                    _env37782_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4172641727_
                                                    (lambda () _env37782_)))
                                               (if (gx#stx-pair?
                                                    ___stx4172241723_)
                                                   (let ((_e3868538707_
                                                          (gx#stx-e
                                                           ___stx4172241723_)))
                                                     (let ((_tl3868738712_
                                                            (##cdr _e3868538707_))
                                                           (_hd3868638710_
                                                            (##car _e3868538707_)))
                                                       (if (gx#identifier?
                                                            _hd3868638710_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3868638710_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3868738712_)
                           (let ((_e3868838715_ (gx#stx-e _tl3868738712_)))
                             (let ((_tl3869038720_ (##cdr _e3868838715_))
                                   (_hd3868938718_ (##car _e3868838715_)))
                               (if (gx#stx-null? _tl3869038720_)
                                   (___kont4172441725_ _hd3868938718_)
                                   (___kont4172641727_))))
                           (___kont4172641727_))
                       (___kont4172641727_))
                   (___kont4172641727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4172641727_)))))
                                         _$e38518_)
                                        _env37782_)))))
                           (___kont4175441755_
                            (lambda (_L38395_ _L38396_ _L38397_)
                              (_fold-assert-type33831_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L38397_ '()))
                                           (cons _L38395_
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote)
                                                             (cons _L38396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val37781_
                               _env37782_)))
                           (___kont4175641757_
                            (lambda (_L38285_ _L38286_ _L38287_)
                              (let ((_$e38316_
                                     (gxc#identifier-symbol _L38287_)))
                                (if (let ((_$e38319_
                                           (eq? 'gx#free-identifier=?
                                                _$e38316_)))
                                      (if _$e38319_
                                          _$e38319_
                                          (eq? 'gx#stx-eq? _$e38316_)))
                                    ((lambda (_sym38322_)
                                       (let ((_sym38324_
                                              (_eqf-symbol33833_ _sym38322_)))
                                         (cons (cons _L38286_
                                                     (cons _sym38324_
                                                           (cons _L38285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _val37781_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env37782_)))
                                     _$e38316_)
                                    _env37782_))))
                           (___kont4175841759_
                            (lambda (_L38169_ _L38170_ _L38171_)
                              (_fold-assert-type33831_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L38171_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#ref)
                                                       (cons _L38169_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote-syntax)
                                                             (cons _L38170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val37781_
                               _env37782_)))
                           (___kont4176041761_
                            (lambda (_L38053_ _L38054_ _L38055_)
                              (_fold-assert-type33831_
                               (gxc#apply-expression-subst
                                _L38054_
                                _L38055_
                                _L38053_)
                               _val37781_
                               _env37782_)))
                           (___kont4176241763_ (lambda () _env37782_)))
                       (if (gx#stx-pair? ___stx4174841749_)
                           (let ((_e3779438745_ (gx#stx-e ___stx4174841749_)))
                             (let ((_tl3779638750_ (##cdr _e3779438745_))
                                   (_hd3779538748_ (##car _e3779438745_)))
                               (if (gx#identifier? _hd3779538748_)
                                   (if (gx#stx-eq? '%#call _hd3779538748_)
                                       (if (gx#stx-pair? _tl3779638750_)
                                           (let ((_e3779738753_
                                                  (gx#stx-e _tl3779638750_)))
                                             (let ((_tl3779938758_
                                                    (##cdr _e3779738753_))
                                                   (_hd3779838756_
                                                    (##car _e3779738753_)))
                                               (if (gx#stx-pair?
                                                    _hd3779838756_)
                                                   (let ((_e3780038761_
                                                          (gx#stx-e
                                                           _hd3779838756_)))
                                                     (let ((_tl3780238766_
                                                            (##cdr _e3780038761_))
                                                           (_hd3780138764_
                                                            (##car _e3780038761_)))
                                                       (if (gx#identifier?
                                                            _hd3780138764_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3780138764_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3780238766_)
                           (let ((_e3780338769_ (gx#stx-e _tl3780238766_)))
                             (let ((_tl3780538774_ (##cdr _e3780338769_))
                                   (_hd3780438772_ (##car _e3780338769_)))
                               (if (gx#stx-null? _tl3780538774_)
                                   (if (gx#stx-pair? _tl3779938758_)
                                       (let ((_e3780638777_
                                              (gx#stx-e _tl3779938758_)))
                                         (let ((_tl3780838782_
                                                (##cdr _e3780638777_))
                                               (_hd3780738780_
                                                (##car _e3780638777_)))
                                           (if (gx#stx-pair? _hd3780738780_)
                                               (let ((_e3780938785_
                                                      (gx#stx-e
                                                       _hd3780738780_)))
                                                 (let ((_tl3781138790_
                                                        (##cdr _e3780938785_))
                                                       (_hd3781038788_
                                                        (##car _e3780938785_)))
                                                   (if (gx#identifier?
                                                        _hd3781038788_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd3781038788_)
                                                           (if (gx#stx-pair?
                                                                _tl3781138790_)
                                                               (let ((_e3781238793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3781138790_)))
                         (let ((_tl3781438798_ (##cdr _e3781238793_))
                               (_hd3781338796_ (##car _e3781238793_)))
                           (if (gx#stx-null? _tl3781438798_)
                               (if (gx#stx-null? _tl3780838782_)
                                   (___kont4175041751_
                                    _hd3781338796_
                                    _hd3780438772_)
                                   (if (gx#stx-pair? _tl3780838782_)
                                       (let ((_e3783338467_
                                              (gx#stx-e _tl3780838782_)))
                                         (let ((_tl3783538472_
                                                (##cdr _e3783338467_))
                                               (_hd3783438470_
                                                (##car _e3783338467_)))
                                           (if (gx#stx-pair? _hd3783438470_)
                                               (let ((_e3783638475_
                                                      (gx#stx-e
                                                       _hd3783438470_)))
                                                 (let ((_tl3783838480_
                                                        (##cdr _e3783638475_))
                                                       (_hd3783738478_
                                                        (##car _e3783638475_)))
                                                   (if (gx#identifier?
                                                        _hd3783738478_)
                                                       (if (gx#stx-eq?
                                                            '%#quote
                                                            _hd3783738478_)
                                                           (if (gx#stx-pair?
                                                                _tl3783838480_)
                                                               (let ((_e3783938483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3783838480_)))
                         (let ((_tl3784138488_ (##cdr _e3783938483_))
                               (_hd3784038486_ (##car _e3783938483_)))
                           (if (gx#stx-null? _tl3784138488_)
                               (if (gx#stx-null? _tl3783538472_)
                                   (___kont4175241753_
                                    _hd3784038486_
                                    _hd3780738780_
                                    _hd3780438772_)
                                   (___kont4176241763_))
                               (___kont4176241763_))))
                       (___kont4176241763_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3783738478_)
                       (if (gx#stx-pair? _tl3783838480_)
                           (let ((_e3789938277_ (gx#stx-e _tl3783838480_)))
                             (let ((_tl3790138282_ (##cdr _e3789938277_))
                                   (_hd3790038280_ (##car _e3789938277_)))
                               (if (gx#stx-null? _tl3790138282_)
                                   (if (gx#stx-null? _tl3783538472_)
                                       (___kont4175641757_
                                        _hd3790038280_
                                        _hd3781338796_
                                        _hd3780438772_)
                                       (___kont4176241763_))
                                   (___kont4176241763_))))
                           (___kont4176241763_))
                       (___kont4176241763_)))
               (___kont4176241763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4176241763_))))
                                       (___kont4176241763_)))
                               (if (gx#stx-pair? _tl3780838782_)
                                   (let ((_e3783338467_
                                          (gx#stx-e _tl3780838782_)))
                                     (let ((_tl3783538472_
                                            (##cdr _e3783338467_))
                                           (_hd3783438470_
                                            (##car _e3783338467_)))
                                       (if (gx#stx-pair? _hd3783438470_)
                                           (let ((_e3783638475_
                                                  (gx#stx-e _hd3783438470_)))
                                             (let ((_tl3783838480_
                                                    (##cdr _e3783638475_))
                                                   (_hd3783738478_
                                                    (##car _e3783638475_)))
                                               (if (gx#identifier?
                                                    _hd3783738478_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3783738478_)
                                                       (if (gx#stx-pair?
                                                            _tl3783838480_)
                                                           (let ((_e3783938483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3783838480_)))
                     (let ((_tl3784138488_ (##cdr _e3783938483_))
                           (_hd3784038486_ (##car _e3783938483_)))
                       (if (gx#stx-null? _tl3784138488_)
                           (if (gx#stx-null? _tl3783538472_)
                               (___kont4175241753_
                                _hd3784038486_
                                _hd3780738780_
                                _hd3780438772_)
                               (___kont4176241763_))
                           (___kont4176241763_))))
                   (___kont4176241763_))
               (___kont4176241763_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176241763_))))
                                           (___kont4176241763_))))
                                   (___kont4176241763_)))))
                       (if (gx#stx-pair? _tl3780838782_)
                           (let ((_e3783338467_ (gx#stx-e _tl3780838782_)))
                             (let ((_tl3783538472_ (##cdr _e3783338467_))
                                   (_hd3783438470_ (##car _e3783338467_)))
                               (if (gx#stx-pair? _hd3783438470_)
                                   (let ((_e3783638475_
                                          (gx#stx-e _hd3783438470_)))
                                     (let ((_tl3783838480_
                                            (##cdr _e3783638475_))
                                           (_hd3783738478_
                                            (##car _e3783638475_)))
                                       (if (gx#identifier? _hd3783738478_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3783738478_)
                                               (if (gx#stx-pair?
                                                    _tl3783838480_)
                                                   (let ((_e3783938483_
                                                          (gx#stx-e
                                                           _tl3783838480_)))
                                                     (let ((_tl3784138488_
                                                            (##cdr _e3783938483_))
                                                           (_hd3784038486_
                                                            (##car _e3783938483_)))
                                                       (if (gx#stx-null?
                                                            _tl3784138488_)
                                                           (if (gx#stx-null?
                                                                _tl3783538472_)
                                                               (___kont4175241753_
                                                                _hd3784038486_
                                                                _hd3780738780_
                                                                _hd3780438772_)
                                                               (___kont4176241763_))
                                                           (___kont4176241763_))))
                                                   (___kont4176241763_))
                                               (___kont4176241763_))
                                           (___kont4176241763_))))
                                   (___kont4176241763_))))
                           (___kont4176241763_)))
                   (if (gx#stx-pair? _tl3780838782_)
                       (let ((_e3783338467_ (gx#stx-e _tl3780838782_)))
                         (let ((_tl3783538472_ (##cdr _e3783338467_))
                               (_hd3783438470_ (##car _e3783338467_)))
                           (if (gx#stx-pair? _hd3783438470_)
                               (let ((_e3783638475_ (gx#stx-e _hd3783438470_)))
                                 (let ((_tl3783838480_ (##cdr _e3783638475_))
                                       (_hd3783738478_ (##car _e3783638475_)))
                                   (if (gx#identifier? _hd3783738478_)
                                       (if (gx#stx-eq? '%#quote _hd3783738478_)
                                           (if (gx#stx-pair? _tl3783838480_)
                                               (let ((_e3783938483_
                                                      (gx#stx-e
                                                       _tl3783838480_)))
                                                 (let ((_tl3784138488_
                                                        (##cdr _e3783938483_))
                                                       (_hd3784038486_
                                                        (##car _e3783938483_)))
                                                   (if (gx#stx-null?
                                                        _tl3784138488_)
                                                       (if (gx#stx-null?
                                                            _tl3783538472_)
                                                           (___kont4175241753_
                                                            _hd3784038486_
                                                            _hd3780738780_
                                                            _hd3780438772_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3781038788_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3781138790_)
                           (let ((_e3786338379_ (gx#stx-e _tl3781138790_)))
                             (let ((_tl3786538384_ (##cdr _e3786338379_))
                                   (_hd3786438382_ (##car _e3786338379_)))
                               (___kont4176241763_)))
                           (___kont4176241763_))
                       (if (gx#stx-eq? '%#quote-syntax _hd3781038788_)
                           (if (gx#stx-pair? _tl3781138790_)
                               (let ((_e3792338137_ (gx#stx-e _tl3781138790_)))
                                 (let ((_tl3792538142_ (##cdr _e3792338137_))
                                       (_hd3792438140_ (##car _e3792338137_)))
                                   (___kont4176241763_)))
                               (___kont4176241763_))
                           (___kont4176241763_))))
               (if (gx#stx-eq? '%#quote _hd3781038788_)
                   (if (gx#stx-pair? _tl3781138790_)
                       (let ((_e3786338379_ (gx#stx-e _tl3781138790_)))
                         (let ((_tl3786538384_ (##cdr _e3786338379_))
                               (_hd3786438382_ (##car _e3786338379_)))
                           (if (gx#stx-null? _tl3786538384_)
                               (if (gx#stx-null? _tl3783538472_)
                                   (___kont4175441755_
                                    _hd3783438470_
                                    _hd3786438382_
                                    _hd3780438772_)
                                   (___kont4176241763_))
                               (___kont4176241763_))))
                       (___kont4176241763_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3781038788_)
                       (if (gx#stx-pair? _tl3781138790_)
                           (let ((_e3792338137_ (gx#stx-e _tl3781138790_)))
                             (let ((_tl3792538142_ (##cdr _e3792338137_))
                                   (_hd3792438140_ (##car _e3792338137_)))
                               (___kont4176241763_)))
                           (___kont4176241763_))
                       (___kont4176241763_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3781038788_)
                                                   (if (gx#stx-pair?
                                                        _tl3781138790_)
                                                       (let ((_e3786338379_
                                                              (gx#stx-e
                                                               _tl3781138790_)))
                                                         (let ((_tl3786538384_
                                                                (##cdr _e3786338379_))
                                                               (_hd3786438382_
                                                                (##car _e3786338379_)))
                                                           (if (gx#stx-null?
                                                                _tl3786538384_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3783538472_)
                           (___kont4175441755_
                            _hd3783438470_
                            _hd3786438382_
                            _hd3780438772_)
                           (___kont4176241763_))
                       (___kont4176241763_))))
               (___kont4176241763_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3781038788_)
                                                       (if (gx#stx-pair?
                                                            _tl3781138790_)
                                                           (let ((_e3792338137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3781138790_)))
                     (let ((_tl3792538142_ (##cdr _e3792338137_))
                           (_hd3792438140_ (##car _e3792338137_)))
                       (___kont4176241763_)))
                   (___kont4176241763_))
               (___kont4176241763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3781038788_)
                                               (if (gx#stx-pair?
                                                    _tl3781138790_)
                                                   (let ((_e3786338379_
                                                          (gx#stx-e
                                                           _tl3781138790_)))
                                                     (let ((_tl3786538384_
                                                            (##cdr _e3786338379_))
                                                           (_hd3786438382_
                                                            (##car _e3786338379_)))
                                                       (if (gx#stx-null?
                                                            _tl3786538384_)
                                                           (if (gx#stx-null?
                                                                _tl3783538472_)
                                                               (___kont4175441755_
                                                                _hd3783438470_
                                                                _hd3786438382_
                                                                _hd3780438772_)
                                                               (___kont4176241763_))
                                                           (___kont4176241763_))))
                                                   (___kont4176241763_))
                                               (if (gx#stx-eq?
                                                    '%#quote-syntax
                                                    _hd3781038788_)
                                                   (if (gx#stx-pair?
                                                        _tl3781138790_)
                                                       (let ((_e3792338137_
                                                              (gx#stx-e
                                                               _tl3781138790_)))
                                                         (let ((_tl3792538142_
                                                                (##cdr _e3792338137_))
                                                               (_hd3792438140_
                                                                (##car _e3792338137_)))
                                                           (if (gx#stx-null?
                                                                _tl3792538142_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3783738478_)
                           (if (gx#stx-pair? _tl3783838480_)
                               (let ((_e3793238161_ (gx#stx-e _tl3783838480_)))
                                 (let ((_tl3793438166_ (##cdr _e3793238161_))
                                       (_hd3793338164_ (##car _e3793238161_)))
                                   (if (gx#stx-null? _tl3793438166_)
                                       (if (gx#stx-null? _tl3783538472_)
                                           (___kont4175841759_
                                            _hd3793338164_
                                            _hd3792438140_
                                            _hd3780438772_)
                                           (___kont4176241763_))
                                       (___kont4176241763_))))
                               (___kont4176241763_))
                           (___kont4176241763_))
                       (___kont4176241763_))))
               (___kont4176241763_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176241763_))))
                                       (if (gx#stx-eq? '%#quote _hd3781038788_)
                                           (if (gx#stx-pair? _tl3781138790_)
                                               (let ((_e3786338379_
                                                      (gx#stx-e
                                                       _tl3781138790_)))
                                                 (let ((_tl3786538384_
                                                        (##cdr _e3786338379_))
                                                       (_hd3786438382_
                                                        (##car _e3786338379_)))
                                                   (if (gx#stx-null?
                                                        _tl3786538384_)
                                                       (if (gx#stx-null?
                                                            _tl3783538472_)
                                                           (___kont4175441755_
                                                            _hd3783438470_
                                                            _hd3786438382_
                                                            _hd3780438772_)
                                                           (___kont4176241763_))
                                                       (___kont4176241763_))))
                                               (___kont4176241763_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3781038788_)
                                               (if (gx#stx-pair?
                                                    _tl3781138790_)
                                                   (let ((_e3792338137_
                                                          (gx#stx-e
                                                           _tl3781138790_)))
                                                     (let ((_tl3792538142_
                                                            (##cdr _e3792338137_))
                                                           (_hd3792438140_
                                                            (##car _e3792338137_)))
                                                       (___kont4176241763_)))
                                                   (___kont4176241763_))
                                               (___kont4176241763_))))))
                               (if (gx#stx-eq? '%#quote _hd3781038788_)
                                   (if (gx#stx-pair? _tl3781138790_)
                                       (let ((_e3786338379_
                                              (gx#stx-e _tl3781138790_)))
                                         (let ((_tl3786538384_
                                                (##cdr _e3786338379_))
                                               (_hd3786438382_
                                                (##car _e3786338379_)))
                                           (if (gx#stx-null? _tl3786538384_)
                                               (if (gx#stx-null?
                                                    _tl3783538472_)
                                                   (___kont4175441755_
                                                    _hd3783438470_
                                                    _hd3786438382_
                                                    _hd3780438772_)
                                                   (___kont4176241763_))
                                               (___kont4176241763_))))
                                       (___kont4176241763_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3781038788_)
                                       (if (gx#stx-pair? _tl3781138790_)
                                           (let ((_e3792338137_
                                                  (gx#stx-e _tl3781138790_)))
                                             (let ((_tl3792538142_
                                                    (##cdr _e3792338137_))
                                                   (_hd3792438140_
                                                    (##car _e3792338137_)))
                                               (___kont4176241763_)))
                                           (___kont4176241763_))
                                       (___kont4176241763_))))))
                       (if (gx#stx-eq? '%#quote _hd3781038788_)
                           (if (gx#stx-pair? _tl3781138790_)
                               (let ((_e3786338379_ (gx#stx-e _tl3781138790_)))
                                 (let ((_tl3786538384_ (##cdr _e3786338379_))
                                       (_hd3786438382_ (##car _e3786338379_)))
                                   (___kont4176241763_)))
                               (___kont4176241763_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3781038788_)
                               (if (gx#stx-pair? _tl3781138790_)
                                   (let ((_e3792338137_
                                          (gx#stx-e _tl3781138790_)))
                                     (let ((_tl3792538142_
                                            (##cdr _e3792338137_))
                                           (_hd3792438140_
                                            (##car _e3792338137_)))
                                       (___kont4176241763_)))
                                   (___kont4176241763_))
                               (___kont4176241763_)))))
               (if (gx#stx-pair? _tl3780838782_)
                   (let ((_e3783338467_ (gx#stx-e _tl3780838782_)))
                     (let ((_tl3783538472_ (##cdr _e3783338467_))
                           (_hd3783438470_ (##car _e3783338467_)))
                       (if (gx#stx-pair? _hd3783438470_)
                           (let ((_e3783638475_ (gx#stx-e _hd3783438470_)))
                             (let ((_tl3783838480_ (##cdr _e3783638475_))
                                   (_hd3783738478_ (##car _e3783638475_)))
                               (if (gx#identifier? _hd3783738478_)
                                   (if (gx#stx-eq? '%#quote _hd3783738478_)
                                       (if (gx#stx-pair? _tl3783838480_)
                                           (let ((_e3783938483_
                                                  (gx#stx-e _tl3783838480_)))
                                             (let ((_tl3784138488_
                                                    (##cdr _e3783938483_))
                                                   (_hd3784038486_
                                                    (##car _e3783938483_)))
                                               (if (gx#stx-null?
                                                    _tl3784138488_)
                                                   (if (gx#stx-null?
                                                        _tl3783538472_)
                                                       (___kont4175241753_
                                                        _hd3784038486_
                                                        _hd3780738780_
                                                        _hd3780438772_)
                                                       (___kont4176241763_))
                                                   (___kont4176241763_))))
                                           (___kont4176241763_))
                                       (___kont4176241763_))
                                   (___kont4176241763_))))
                           (___kont4176241763_))))
                   (___kont4176241763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl3780838782_)
                                                   (let ((_e3783338467_
                                                          (gx#stx-e
                                                           _tl3780838782_)))
                                                     (let ((_tl3783538472_
                                                            (##cdr _e3783338467_))
                                                           (_hd3783438470_
                                                            (##car _e3783338467_)))
                                                       (if (gx#stx-pair?
                                                            _hd3783438470_)
                                                           (let ((_e3783638475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3783438470_)))
                     (let ((_tl3783838480_ (##cdr _e3783638475_))
                           (_hd3783738478_ (##car _e3783638475_)))
                       (if (gx#identifier? _hd3783738478_)
                           (if (gx#stx-eq? '%#quote _hd3783738478_)
                               (if (gx#stx-pair? _tl3783838480_)
                                   (let ((_e3783938483_
                                          (gx#stx-e _tl3783838480_)))
                                     (let ((_tl3784138488_
                                            (##cdr _e3783938483_))
                                           (_hd3784038486_
                                            (##car _e3783938483_)))
                                       (if (gx#stx-null? _tl3784138488_)
                                           (if (gx#stx-null? _tl3783538472_)
                                               (___kont4175241753_
                                                _hd3784038486_
                                                _hd3780738780_
                                                _hd3780438772_)
                                               (___kont4176241763_))
                                           (___kont4176241763_))))
                                   (___kont4176241763_))
                               (___kont4176241763_))
                           (___kont4176241763_))))
                   (___kont4176241763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176241763_)))))
                                       (___kont4176241763_))
                                   (___kont4176241763_))))
                           (___kont4176241763_))
                       (if (gx#stx-eq? '%#lambda _hd3780138764_)
                           (if (gx#stx-pair? _tl3780238766_)
                               (let ((_e3794738005_ (gx#stx-e _tl3780238766_)))
                                 (let ((_tl3794938010_ (##cdr _e3794738005_))
                                       (_hd3794838008_ (##car _e3794738005_)))
                                   (if (gx#stx-pair? _hd3794838008_)
                                       (let ((_e3795038013_
                                              (gx#stx-e _hd3794838008_)))
                                         (let ((_tl3795238018_
                                                (##cdr _e3795038013_))
                                               (_hd3795138016_
                                                (##car _e3795038013_)))
                                           (if (gx#stx-null? _tl3795238018_)
                                               (if (gx#stx-pair?
                                                    _tl3794938010_)
                                                   (let ((_e3795338021_
                                                          (gx#stx-e
                                                           _tl3794938010_)))
                                                     (let ((_tl3795538026_
                                                            (##cdr _e3795338021_))
                                                           (_hd3795438024_
                                                            (##car _e3795338021_)))
                                                       (if (gx#stx-null?
                                                            _tl3795538026_)
                                                           (if (gx#stx-pair?
                                                                _tl3779938758_)
                                                               (let ((_e3795638029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3779938758_)))
                         (let ((_tl3795838034_ (##cdr _e3795638029_))
                               (_hd3795738032_ (##car _e3795638029_)))
                           (if (gx#stx-pair? _hd3795738032_)
                               (let ((_e3795938037_ (gx#stx-e _hd3795738032_)))
                                 (let ((_tl3796138042_ (##cdr _e3795938037_))
                                       (_hd3796038040_ (##car _e3795938037_)))
                                   (if (gx#identifier? _hd3796038040_)
                                       (if (gx#stx-eq? '%#ref _hd3796038040_)
                                           (if (gx#stx-pair? _tl3796138042_)
                                               (let ((_e3796238045_
                                                      (gx#stx-e
                                                       _tl3796138042_)))
                                                 (let ((_tl3796438050_
                                                        (##cdr _e3796238045_))
                                                       (_hd3796338048_
                                                        (##car _e3796238045_)))
                                                   (if (gx#stx-null?
                                                        _tl3796438050_)
                                                       (if (gx#stx-null?
                                                            _tl3795838034_)
                                                           (___kont4176041761_
                                                            _hd3796338048_
                                                            _hd3795438024_
                                                            _hd3795138016_)
                                                           (___kont4176241763_))
                                                       (___kont4176241763_))))
                                               (___kont4176241763_))
                                           (___kont4176241763_))
                                       (___kont4176241763_))))
                               (___kont4176241763_))))
                       (___kont4176241763_))
                   (___kont4176241763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176241763_))
                                               (___kont4176241763_))))
                                       (___kont4176241763_))))
                               (___kont4176241763_))
                           (___kont4176241763_)))
                   (___kont4176241763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176241763_))))
                                           (___kont4176241763_))
                                       (___kont4176241763_))
                                   (___kont4176241763_))))
                           (___kont4176241763_))))))
                (_countf-symbol33832_
                 (lambda (_id37772_)
                   (let ((_$e37774_ (gxc#identifier-symbol _id37772_)))
                     (if (let ((_$e37777_ (eq? '##vector-length _$e37774_)))
                           (if _$e37777_
                               _$e37777_
                               (eq? 'vector-length _$e37774_)))
                         'vector-length
                         (if (eq? 'values-count _$e37774_)
                             'values-count
                             '#f)))))
                (_eqf-symbol33833_
                 (lambda (_sym37758_)
                   (let ((_$e37760_ _sym37758_))
                     (if (let ((_$e37763_ (eq? '##eq? _$e37760_)))
                           (if _$e37763_ _$e37763_ (eq? 'eq? _$e37760_)))
                         'eq?
                         (if (let ((_$e37766_ (eq? '##eqv? _$e37760_)))
                               (if _$e37766_ _$e37766_ (eq? 'eqv? _$e37760_)))
                             'eqv?
                             (if (let ((_$e37769_ (eq? '##equal? _$e37760_)))
                                   (if _$e37769_
                                       _$e37769_
                                       (eq? 'equal? _$e37760_)))
                                 'equal?
                                 (if (eq? 'gx#free-identifier=? _$e37760_)
                                     'free-identifier=?
                                     (if (eq? 'gx#stx-eq? _$e37760_)
                                         'stx-eq?
                                         '#f))))))))
                (_eqf-symbol?33834_
                 (lambda (_sym37741_)
                   (let ((_$e37743_ _sym37741_))
                     (if (let ((_$e37746_ (eq? 'eq? _$e37743_)))
                           (if _$e37746_
                               _$e37746_
                               (let ((_$e37749_ (eq? 'eqv? _$e37743_)))
                                 (if _$e37749_
                                     _$e37749_
                                     (let ((_$e37752_ (eq? 'equal? _$e37743_)))
                                       (if _$e37752_
                                           _$e37752_
                                           (let ((_$e37755_
                                                  (eq? 'free-identifier=?
                                                       _$e37743_)))
                                             (if _$e37755_
                                                 _$e37755_
                                                 (eq? 'stx-eq?
                                                      _$e37743_)))))))))
                         '#t
                         '#f))))
                (_do-assert!33835_
                 (lambda (_assert37732_ _type37733_ _K37734_)
                   (let ((_unwind-assert37736_ _env-assert33825_)
                         (_unwind-type37737_ _env-type33826_))
                     (begin
                       (set! _env-assert33825_ _assert37732_)
                       (set! _env-type33826_ _type37733_)
                       (let ((_val37739_ (_K37734_)))
                         (begin
                           (set! _env-assert33825_ _unwind-assert37736_)
                           (set! _env-type33826_ _unwind-type37737_)
                           _val37739_))))))
                (_do-bind33836_
                 (lambda (_bind37729_ _K37730_)
                   (if (pair? _bind37729_)
                       (_do-bind!33838_
                        (_fold-bind-env33837_ _bind37729_ _env-bind33827_)
                        _K37730_)
                       (_K37730_))))
                (_fold-bind-env33837_
                 (lambda (_bind37658_ _env37659_)
                   (let _lp37661_ ((_rest37663_ _bind37658_)
                                   (_env37664_ _env37659_))
                     (let* ((_rest3766537673_ _rest37663_)
                            (_else3766737681_ (lambda () _env37664_))
                            (_K3766937717_
                             (lambda (_rest37684_ _bind37685_)
                               (let* ((_bind3768637693_ _bind37685_)
                                      (_E3768837697_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3768637693_)))
                                      (_K3768937705_
                                       (lambda (_expr37700_ _id37701_)
                                         (let ((_sexpr37703_
                                                (gxc#apply-generate-runtime-repr
                                                 _expr37700_)))
                                           (_lp37661_
                                            _rest37684_
                                            (cons (cons _sexpr37703_ _id37701_)
                                                  _env37664_))))))
                                 (if (##pair? _bind3768637693_)
                                     (let ((_hd3769037708_
                                            (##car _bind3768637693_))
                                           (_tl3769137710_
                                            (##cdr _bind3768637693_)))
                                       (let* ((_id37713_ _hd3769037708_)
                                              (_expr37715_ _tl3769137710_))
                                         (_K3768937705_
                                          _expr37715_
                                          _id37713_)))
                                     (_E3768837697_))))))
                       (if (##pair? _rest3766537673_)
                           (let ((_hd3767037720_ (##car _rest3766537673_))
                                 (_tl3767137722_ (##cdr _rest3766537673_)))
                             (let* ((_bind37725_ _hd3767037720_)
                                    (_rest37727_ _tl3767137722_))
                               (_K3766937717_ _rest37727_ _bind37725_)))
                           (_else3766737681_))))))
                (_do-bind!33838_
                 (lambda (_env37651_ _K37652_)
                   (let ((_unwind37654_ _env-bind33827_))
                     (begin
                       (set! _env-bind33827_ _env37651_)
                       (let ((_val37656_ (_K37652_)))
                         (begin
                           (set! _env-bind33827_ _unwind37654_)
                           _val37656_))))))
                (_do-splice!33839_
                 (lambda (_K37645_)
                   (let ((_unwind37647_ _in-splice?33828_))
                     (begin
                       (set! _in-splice?33828_ '#t)
                       (let ((_val37649_ (_K37645_)))
                         (begin
                           (set! _in-splice?33828_ _unwind37647_)
                           _val37649_))))))
                (_optimize-e33840_
                 (lambda (_expr36842_)
                   (let* ((___stx4220042201_ _expr36842_)
                          (_g3684937022_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4220042201_))))
                     (let ((___kont4220242203_
                            (lambda (_L37617_ _L37618_ _L37619_)
                              (let ((_$e37636_ (_assert-e33843_ _L37619_)))
                                (if (eq? '#t _$e37636_)
                                    (_optimize-e33840_ _L37618_)
                                    (if (eq? '#f _$e37636_)
                                        (_optimize-e33840_ _L37617_)
                                        (let ((_K37639_
                                               (_optimize-t__0__4116341164_
                                                _L37618_
                                                _L37619_))
                                              (_E37640_
                                               (_optimize-f__4116541166_
                                                _L37617_
                                                _L37619_)))
                                          (if (equal? (gxc#apply-generate-runtime-repr
                                                       _K37639_)
                                                      (gxc#apply-generate-runtime-repr
                                                       _E37640_))
                                              _K37639_
                                              (cons '%#if
                                                    (cons _L37619_
                                                          (cons _K37639_
                                                                (cons _E37640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (___kont4220442205_
                            (lambda (_L37547_ _L37548_)
                              (let ((_$e37568_ (_lookup-block33848_ _L37548_)))
                                (if _$e37568_
                                    ((lambda (_block37571_)
                                       (if (_nonlinear-block?33850_
                                            _block37571_)
                                           _expr36842_
                                           (_optimize-e33840_
                                            (_inline-block33849_
                                             _block37571_
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g3757237575_
                                                                _g3757337577_)
                                                         (cons _g3757237575_
                                                               _g3757337577_))
                                                       '()
                                                       _L37547_))))))
                                     _$e37568_)
                                    _expr36842_))))
                           (___kont4220842209_
                            (lambda (_L37437_ _L37438_ _L37439_)
                              (let ((_body37458_ (_optimize-e33840_ _L37437_)))
                                (cons '%#let-values
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _L37438_
                                               _L37439_)
                                              (foldr2 (lambda (_g3745937463_
                                                               _g3746037465_
                                                               _g3746137467_)
                                                        (cons (cons (cons _g3746037465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                        (cons _g3745937463_ '()))
                                  '()))
                      _g3746137467_))
              '()
              _L37438_
              _L37439_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _body37458_ '()))))))
                           (___kont4221242213_
                            (lambda (_L37305_ _L37306_ _L37307_)
                              (_bind-e__0__4117141172_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3732537328_
                                                       _g3732637330_)
                                                (cons _g3732537328_
                                                      _g3732637330_))
                                              '()
                                              _L37307_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3733237335_
                                                       _g3733337337_)
                                                (cons _g3733237335_
                                                      _g3733337337_))
                                              '()
                                              _L37306_)))
                               _L37305_)))
                           (___kont4221642217_
                            (lambda (_L37162_
                                     _L37163_
                                     _L37164_
                                     _L37165_
                                     _L37166_)
                              (_do-splice!33839_
                               (lambda ()
                                 (let ((_expr37208_
                                        (_optimize-e33840_ _L37164_)))
                                   (cons '%#letrec-values
                                         (cons (cons (cons (cons _L37166_ '())
                                                           (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3720937212_
                                                        _g3721037214_)
                                                 (cons _g3720937212_
                                                       _g3721037214_))
                                               '()
                                               _L37165_))
                                     (cons _expr37208_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g3721637219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3721737221_)
                         (cons _g3721637219_ _g3721737221_))
                       '()
                       _L37163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L37162_ '()))))))))
                           (___kont4222242223_ (lambda () _expr36842_)))
                       (let* ((___match4240942410_
                               (lambda (_e3697037034_
                                        _hd3697137037_
                                        _tl3697237039_
                                        _e3697337042_
                                        _hd3697437045_
                                        _tl3697537047_
                                        _e3697637050_
                                        _hd3697737053_
                                        _tl3697837055_
                                        _e3697937058_
                                        _hd3698037061_
                                        _tl3698137063_
                                        _e3698237066_
                                        _hd3698337069_
                                        _tl3698437071_
                                        _e3698537074_
                                        _hd3698637077_
                                        _tl3698737079_
                                        _e3698837082_
                                        _hd3698937085_
                                        _tl3699037087_
                                        _e3699137090_
                                        _hd3699237093_
                                        _tl3699337095_
                                        ___splice4221842219_
                                        _target3699437098_
                                        _tl3699637100_)
                                 (letrec ((_loop3699737103_
                                           (lambda (_hd3699537106_
                                                    _id3700137108_)
                                             (if (gx#stx-pair? _hd3699537106_)
                                                 (let ((_e3699837111_
                                                        (gx#stx-e
                                                         _hd3699537106_)))
                                                   (let ((_lp-tl3700037116_
                                                          (##cdr _e3699837111_))
                                                         (_lp-hd3699937114_
                                                          (##car _e3699837111_)))
                                                     (_loop3699737103_
                                                      _lp-tl3700037116_
                                                      (cons _lp-hd3699937114_
                                                            _id3700137108_))))
                                                 (let ((_id3700237119_
                                                        (reverse _id3700137108_)))
                                                   (if (gx#stx-pair?
                                                        _tl3699337095_)
                                                       (let ((_e3700337122_
                                                              (gx#stx-e
                                                               _tl3699337095_)))
                                                         (let ((_tl3700537127_
                                                                (##cdr _e3700337122_))
                                                               (_hd3700437125_
                                                                (##car _e3700337122_)))
                                                           (if (gx#stx-null?
                                                                _tl3700537127_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3698737079_)
                           (if (gx#stx-pair/null? _tl3697837055_)
                               (let ((___splice4222042221_
                                      (gx#syntax-split-splice
                                       _tl3697837055_
                                       '0)))
                                 (let ((_tl3700837132_
                                        (##vector-ref ___splice4222042221_ '1))
                                       (_target3700637130_
                                        (##vector-ref
                                         ___splice4222042221_
                                         '0)))
                                   (if (gx#stx-null? _tl3700837132_)
                                       (letrec ((_loop3700937135_
                                                 (lambda (_hd3700737138_
                                                          _bind3701337140_)
                                                   (if (gx#stx-pair?
                                                        _hd3700737138_)
                                                       (let ((_e3701037143_
                                                              (gx#stx-e
                                                               _hd3700737138_)))
                                                         (let ((_lp-tl3701237148_
                                                                (##cdr _e3701037143_))
                                                               (_lp-hd3701137146_
                                                                (##car _e3701037143_)))
                                                           (_loop3700937135_
                                                            _lp-tl3701237148_
                                                            (cons _lp-hd3701137146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind3701337140_))))
               (let ((_bind3701437151_ (reverse _bind3701337140_)))
                 (if (gx#stx-pair? _tl3697537047_)
                     (let ((_e3701537154_ (gx#stx-e _tl3697537047_)))
                       (let ((_tl3701737159_ (##cdr _e3701537154_))
                             (_hd3701637157_ (##car _e3701537154_)))
                         (if (gx#stx-null? _tl3701737159_)
                             (___kont4221642217_
                              _hd3701637157_
                              _bind3701437151_
                              _hd3700437125_
                              _id3700237119_
                              _hd3698337069_)
                             (___kont4222242223_))))
                     (___kont4222242223_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3700937135_
                                          _target3700637130_
                                          '()))
                                       (___kont4222242223_))))
                               (___kont4222242223_))
                           (___kont4222242223_))
                       (___kont4222242223_))))
               (___kont4222242223_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop3699737103_ _target3699437098_ '()))))
                              (___match4234342344_
                               (lambda (_e3693637229_
                                        _hd3693737232_
                                        _tl3693837234_
                                        _e3693937237_
                                        _hd3694037240_
                                        _tl3694137242_
                                        ___splice4221442215_
                                        _target3694237245_
                                        _tl3694437247_)
                                 (letrec ((_loop3694537250_
                                           (lambda (_hd3694337253_
                                                    _expr3694937255_
                                                    _id3695037257_)
                                             (if (gx#stx-pair? _hd3694337253_)
                                                 (let ((_e3694637260_
                                                        (gx#stx-e
                                                         _hd3694337253_)))
                                                   (let ((_lp-tl3694837265_
                                                          (##cdr _e3694637260_))
                                                         (_lp-hd3694737263_
                                                          (##car _e3694637260_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3694737263_)
                                                         (let ((_e3695337268_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3694737263_)))
                   (let ((_tl3695537273_ (##cdr _e3695337268_))
                         (_hd3695437271_ (##car _e3695337268_)))
                     (if (gx#stx-pair? _hd3695437271_)
                         (let ((_e3695637276_ (gx#stx-e _hd3695437271_)))
                           (let ((_tl3695837281_ (##cdr _e3695637276_))
                                 (_hd3695737279_ (##car _e3695637276_)))
                             (if (gx#stx-null? _tl3695837281_)
                                 (if (gx#stx-pair? _tl3695537273_)
                                     (let ((_e3695937284_
                                            (gx#stx-e _tl3695537273_)))
                                       (let ((_tl3696137289_
                                              (##cdr _e3695937284_))
                                             (_hd3696037287_
                                              (##car _e3695937284_)))
                                         (if (gx#stx-null? _tl3696137289_)
                                             (_loop3694537250_
                                              _lp-tl3694837265_
                                              (cons _hd3696037287_
                                                    _expr3694937255_)
                                              (cons _hd3695737279_
                                                    _id3695037257_))
                                             (___kont4222242223_))))
                                     (___kont4222242223_))
                                 (___kont4222242223_))))
                         (___kont4222242223_))))
                 (___kont4222242223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3695237294_
                                                        (reverse _id3695037257_))
                                                       (_expr3695137292_
                                                        (reverse _expr3694937255_)))
                                                   (if (gx#stx-pair?
                                                        _tl3694137242_)
                                                       (let ((_e3696237297_
                                                              (gx#stx-e
                                                               _tl3694137242_)))
                                                         (let ((_tl3696437302_
                                                                (##cdr _e3696237297_))
                                                               (_hd3696337300_
                                                                (##car _e3696237297_)))
                                                           (if (gx#stx-null?
                                                                _tl3696437302_)
                                                               (___kont4221242213_
                                                                _hd3696337300_
                                                                _expr3695137292_
                                                                _id3695237294_)
                                                               (___kont4222242223_))))
                                                       (___kont4222242223_)))))))
                                   (_loop3694537250_
                                    _target3694237245_
                                    '()
                                    '()))))
                              (___match4231942320_
                               (lambda (_e3689837345_
                                        _hd3689937348_
                                        _tl3690037350_
                                        _e3690137353_
                                        _hd3690237356_
                                        _tl3690337358_
                                        ___splice4221042211_
                                        _target3690437361_
                                        _tl3690637363_)
                                 (letrec ((_loop3690737366_
                                           (lambda (_hd3690537369_
                                                    _xid3691137371_
                                                    _id3691237373_)
                                             (if (gx#stx-pair? _hd3690537369_)
                                                 (let ((_e3690837376_
                                                        (gx#stx-e
                                                         _hd3690537369_)))
                                                   (let ((_lp-tl3691037381_
                                                          (##cdr _e3690837376_))
                                                         (_lp-hd3690937379_
                                                          (##car _e3690837376_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3690937379_)
                                                         (let ((_e3691537384_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3690937379_)))
                   (let ((_tl3691737389_ (##cdr _e3691537384_))
                         (_hd3691637387_ (##car _e3691537384_)))
                     (if (gx#stx-pair? _hd3691637387_)
                         (let ((_e3691837392_ (gx#stx-e _hd3691637387_)))
                           (let ((_tl3692037397_ (##cdr _e3691837392_))
                                 (_hd3691937395_ (##car _e3691837392_)))
                             (if (gx#stx-null? _tl3692037397_)
                                 (if (gx#stx-pair? _tl3691737389_)
                                     (let ((_e3692137400_
                                            (gx#stx-e _tl3691737389_)))
                                       (let ((_tl3692337405_
                                              (##cdr _e3692137400_))
                                             (_hd3692237403_
                                              (##car _e3692137400_)))
                                         (if (gx#stx-pair? _hd3692237403_)
                                             (let ((_e3692437408_
                                                    (gx#stx-e _hd3692237403_)))
                                               (let ((_tl3692637413_
                                                      (##cdr _e3692437408_))
                                                     (_hd3692537411_
                                                      (##car _e3692437408_)))
                                                 (if (gx#identifier?
                                                      _hd3692537411_)
                                                     (if (gx#stx-eq?
                                                          '%#ref
                                                          _hd3692537411_)
                                                         (if (gx#stx-pair?
                                                              _tl3692637413_)
                                                             (let ((_e3692737416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3692637413_)))
                       (let ((_tl3692937421_ (##cdr _e3692737416_))
                             (_hd3692837419_ (##car _e3692737416_)))
                         (if (gx#stx-null? _tl3692937421_)
                             (if (gx#stx-null? _tl3692337405_)
                                 (_loop3690737366_
                                  _lp-tl3691037381_
                                  (cons _hd3692837419_ _xid3691137371_)
                                  (cons _hd3691937395_ _id3691237373_))
                                 (___match4234342344_
                                  _e3689837345_
                                  _hd3689937348_
                                  _tl3690037350_
                                  _e3690137353_
                                  _hd3690237356_
                                  _tl3690337358_
                                  ___splice4221042211_
                                  _target3690437361_
                                  _tl3690637363_))
                             (___match4234342344_
                              _e3689837345_
                              _hd3689937348_
                              _tl3690037350_
                              _e3690137353_
                              _hd3690237356_
                              _tl3690337358_
                              ___splice4221042211_
                              _target3690437361_
                              _tl3690637363_))))
                     (___match4234342344_
                      _e3689837345_
                      _hd3689937348_
                      _tl3690037350_
                      _e3690137353_
                      _hd3690237356_
                      _tl3690337358_
                      ___splice4221042211_
                      _target3690437361_
                      _tl3690637363_))
                 (___match4234342344_
                  _e3689837345_
                  _hd3689937348_
                  _tl3690037350_
                  _e3690137353_
                  _hd3690237356_
                  _tl3690337358_
                  ___splice4221042211_
                  _target3690437361_
                  _tl3690637363_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___match4234342344_
                                                      _e3689837345_
                                                      _hd3689937348_
                                                      _tl3690037350_
                                                      _e3690137353_
                                                      _hd3690237356_
                                                      _tl3690337358_
                                                      ___splice4221042211_
                                                      _target3690437361_
                                                      _tl3690637363_))))
                                             (___match4234342344_
                                              _e3689837345_
                                              _hd3689937348_
                                              _tl3690037350_
                                              _e3690137353_
                                              _hd3690237356_
                                              _tl3690337358_
                                              ___splice4221042211_
                                              _target3690437361_
                                              _tl3690637363_))))
                                     (___match4234342344_
                                      _e3689837345_
                                      _hd3689937348_
                                      _tl3690037350_
                                      _e3690137353_
                                      _hd3690237356_
                                      _tl3690337358_
                                      ___splice4221042211_
                                      _target3690437361_
                                      _tl3690637363_))
                                 (___match4234342344_
                                  _e3689837345_
                                  _hd3689937348_
                                  _tl3690037350_
                                  _e3690137353_
                                  _hd3690237356_
                                  _tl3690337358_
                                  ___splice4221042211_
                                  _target3690437361_
                                  _tl3690637363_))))
                         (___match4234342344_
                          _e3689837345_
                          _hd3689937348_
                          _tl3690037350_
                          _e3690137353_
                          _hd3690237356_
                          _tl3690337358_
                          ___splice4221042211_
                          _target3690437361_
                          _tl3690637363_))))
                 (___match4234342344_
                  _e3689837345_
                  _hd3689937348_
                  _tl3690037350_
                  _e3690137353_
                  _hd3690237356_
                  _tl3690337358_
                  ___splice4221042211_
                  _target3690437361_
                  _tl3690637363_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3691437426_
                                                        (reverse _id3691237373_))
                                                       (_xid3691337424_
                                                        (reverse _xid3691137371_)))
                                                   (if (gx#stx-pair?
                                                        _tl3690337358_)
                                                       (let ((_e3693037429_
                                                              (gx#stx-e
                                                               _tl3690337358_)))
                                                         (let ((_tl3693237434_
                                                                (##cdr _e3693037429_))
                                                               (_hd3693137432_
                                                                (##car _e3693037429_)))
                                                           (if (gx#stx-null?
                                                                _tl3693237434_)
                                                               (___kont4220842209_
                                                                _hd3693137432_
                                                                _xid3691337424_
                                                                _id3691437426_)
                                                               (___match4234342344_
                                                                _e3689837345_
                                                                _hd3689937348_
                                                                _tl3690037350_
                                                                _e3690137353_
                                                                _hd3690237356_
                                                                _tl3690337358_
                                                                ___splice4221042211_
                                                                _target3690437361_
                                                                _tl3690637363_))))
                                                       (___match4234342344_
                                                        _e3689837345_
                                                        _hd3689937348_
                                                        _tl3690037350_
                                                        _e3690137353_
                                                        _hd3690237356_
                                                        _tl3690337358_
                                                        ___splice4221042211_
                                                        _target3690437361_
                                                        _tl3690637363_)))))))
                                   (_loop3690737366_
                                    _target3690437361_
                                    '()
                                    '()))))
                              (___match4229542296_
                               (lambda (_e3686837475_
                                        _hd3686937478_
                                        _tl3687037480_
                                        _e3687137483_
                                        _hd3687237486_
                                        _tl3687337488_
                                        _e3687437491_
                                        _hd3687537494_
                                        _tl3687637496_
                                        _e3687737499_
                                        _hd3687837502_
                                        _tl3687937504_
                                        ___splice4220642207_
                                        _target3688037507_
                                        _tl3688237509_)
                                 (letrec ((_loop3688337512_
                                           (lambda (_hd3688137515_
                                                    _id3688737517_)
                                             (if (gx#stx-pair? _hd3688137515_)
                                                 (let ((_e3688437520_
                                                        (gx#stx-e
                                                         _hd3688137515_)))
                                                   (let ((_lp-tl3688637525_
                                                          (##cdr _e3688437520_))
                                                         (_lp-hd3688537523_
                                                          (##car _e3688437520_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3688537523_)
                                                         (let ((_e3688937528_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3688537523_)))
                   (let ((_tl3689137533_ (##cdr _e3688937528_))
                         (_hd3689037531_ (##car _e3688937528_)))
                     (if (gx#identifier? _hd3689037531_)
                         (if (gx#stx-eq? '%#ref _hd3689037531_)
                             (if (gx#stx-pair? _tl3689137533_)
                                 (let ((_e3689237536_
                                        (gx#stx-e _tl3689137533_)))
                                   (let ((_tl3689437541_ (##cdr _e3689237536_))
                                         (_hd3689337539_
                                          (##car _e3689237536_)))
                                     (if (gx#stx-null? _tl3689437541_)
                                         (_loop3688337512_
                                          _lp-tl3688637525_
                                          (cons _hd3689337539_ _id3688737517_))
                                         (___kont4222242223_))))
                                 (___kont4222242223_))
                             (___kont4222242223_))
                         (___kont4222242223_))))
                 (___kont4222242223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3688837544_
                                                        (reverse _id3688737517_)))
                                                   (___kont4220442205_
                                                    _id3688837544_
                                                    _hd3687837502_))))))
                                   (_loop3688337512_
                                    _target3688037507_
                                    '())))))
                         (if (gx#stx-pair? ___stx4220042201_)
                             (let ((_e3685437585_
                                    (gx#stx-e ___stx4220042201_)))
                               (let ((_tl3685637590_ (##cdr _e3685437585_))
                                     (_hd3685537588_ (##car _e3685437585_)))
                                 (if (gx#identifier? _hd3685537588_)
                                     (if (gx#stx-eq? '%#if _hd3685537588_)
                                         (if (gx#stx-pair? _tl3685637590_)
                                             (let ((_e3685737593_
                                                    (gx#stx-e _tl3685637590_)))
                                               (let ((_tl3685937598_
                                                      (##cdr _e3685737593_))
                                                     (_hd3685837596_
                                                      (##car _e3685737593_)))
                                                 (if (gx#stx-pair?
                                                      _tl3685937598_)
                                                     (let ((_e3686037601_
                                                            (gx#stx-e
                                                             _tl3685937598_)))
                                                       (let ((_tl3686237606_
                                                              (##cdr _e3686037601_))
                                                             (_hd3686137604_
                                                              (##car _e3686037601_)))
                                                         (if (gx#stx-pair?
                                                              _tl3686237606_)
                                                             (let ((_e3686337609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3686237606_)))
                       (let ((_tl3686537614_ (##cdr _e3686337609_))
                             (_hd3686437612_ (##car _e3686337609_)))
                         (if (gx#stx-null? _tl3686537614_)
                             (___kont4220242203_
                              _hd3686437612_
                              _hd3686137604_
                              _hd3685837596_)
                             (___kont4222242223_))))
                     (___kont4222242223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4222242223_))))
                                             (___kont4222242223_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3685537588_)
                                             (if (gx#stx-pair? _tl3685637590_)
                                                 (let ((_e3687137483_
                                                        (gx#stx-e
                                                         _tl3685637590_)))
                                                   (let ((_tl3687337488_
                                                          (##cdr _e3687137483_))
                                                         (_hd3687237486_
                                                          (##car _e3687137483_)))
                                                     (if (gx#stx-pair?
                                                          _hd3687237486_)
                                                         (let ((_e3687437491_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3687237486_)))
                   (let ((_tl3687637496_ (##cdr _e3687437491_))
                         (_hd3687537494_ (##car _e3687437491_)))
                     (if (gx#identifier? _hd3687537494_)
                         (if (gx#stx-eq? '%#ref _hd3687537494_)
                             (if (gx#stx-pair? _tl3687637496_)
                                 (let ((_e3687737499_
                                        (gx#stx-e _tl3687637496_)))
                                   (let ((_tl3687937504_ (##cdr _e3687737499_))
                                         (_hd3687837502_
                                          (##car _e3687737499_)))
                                     (if (gx#stx-null? _tl3687937504_)
                                         (if (gx#stx-pair/null? _tl3687337488_)
                                             (let ((___splice4220642207_
                                                    (gx#syntax-split-splice
                                                     _tl3687337488_
                                                     '0)))
                                               (let ((_tl3688237509_
                                                      (##vector-ref
                                                       ___splice4220642207_
                                                       '1))
                                                     (_target3688037507_
                                                      (##vector-ref
                                                       ___splice4220642207_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3688237509_)
                                                     (___match4229542296_
                                                      _e3685437585_
                                                      _hd3685537588_
                                                      _tl3685637590_
                                                      _e3687137483_
                                                      _hd3687237486_
                                                      _tl3687337488_
                                                      _e3687437491_
                                                      _hd3687537494_
                                                      _tl3687637496_
                                                      _e3687737499_
                                                      _hd3687837502_
                                                      _tl3687937504_
                                                      ___splice4220642207_
                                                      _target3688037507_
                                                      _tl3688237509_)
                                                     (___kont4222242223_))))
                                             (___kont4222242223_))
                                         (___kont4222242223_))))
                                 (___kont4222242223_))
                             (___kont4222242223_))
                         (___kont4222242223_))))
                 (___kont4222242223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4222242223_))
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _hd3685537588_)
                                                 (if (gx#stx-pair?
                                                      _tl3685637590_)
                                                     (let ((_e3690137353_
                                                            (gx#stx-e
                                                             _tl3685637590_)))
                                                       (let ((_tl3690337358_
                                                              (##cdr _e3690137353_))
                                                             (_hd3690237356_
                                                              (##car _e3690137353_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd3690237356_)
                                                             (let ((___splice4221042211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd3690237356_ '0)))
                       (let ((_tl3690637363_
                              (##vector-ref ___splice4221042211_ '1))
                             (_target3690437361_
                              (##vector-ref ___splice4221042211_ '0)))
                         (if (gx#stx-null? _tl3690637363_)
                             (___match4231942320_
                              _e3685437585_
                              _hd3685537588_
                              _tl3685637590_
                              _e3690137353_
                              _hd3690237356_
                              _tl3690337358_
                              ___splice4221042211_
                              _target3690437361_
                              _tl3690637363_)
                             (___kont4222242223_))))
                     (___kont4222242223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4222242223_))
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3685537588_)
                                                     (if (gx#stx-pair?
                                                          _tl3685637590_)
                                                         (let ((_e3697337042_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3685637590_)))
                   (let ((_tl3697537047_ (##cdr _e3697337042_))
                         (_hd3697437045_ (##car _e3697337042_)))
                     (if (gx#stx-pair? _hd3697437045_)
                         (let ((_e3697637050_ (gx#stx-e _hd3697437045_)))
                           (let ((_tl3697837055_ (##cdr _e3697637050_))
                                 (_hd3697737053_ (##car _e3697637050_)))
                             (if (gx#stx-pair? _hd3697737053_)
                                 (let ((_e3697937058_
                                        (gx#stx-e _hd3697737053_)))
                                   (let ((_tl3698137063_ (##cdr _e3697937058_))
                                         (_hd3698037061_
                                          (##car _e3697937058_)))
                                     (if (gx#stx-pair? _hd3698037061_)
                                         (let ((_e3698237066_
                                                (gx#stx-e _hd3698037061_)))
                                           (let ((_tl3698437071_
                                                  (##cdr _e3698237066_))
                                                 (_hd3698337069_
                                                  (##car _e3698237066_)))
                                             (if (gx#stx-null? _tl3698437071_)
                                                 (if (gx#stx-pair?
                                                      _tl3698137063_)
                                                     (let ((_e3698537074_
                                                            (gx#stx-e
                                                             _tl3698137063_)))
                                                       (let ((_tl3698737079_
                                                              (##cdr _e3698537074_))
                                                             (_hd3698637077_
                                                              (##car _e3698537074_)))
                                                         (if (gx#stx-pair?
                                                              _hd3698637077_)
                                                             (let ((_e3698837082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3698637077_)))
                       (let ((_tl3699037087_ (##cdr _e3698837082_))
                             (_hd3698937085_ (##car _e3698837082_)))
                         (if (gx#identifier? _hd3698937085_)
                             (if (gx#stx-eq? '%#lambda _hd3698937085_)
                                 (if (gx#stx-pair? _tl3699037087_)
                                     (let ((_e3699137090_
                                            (gx#stx-e _tl3699037087_)))
                                       (let ((_tl3699337095_
                                              (##cdr _e3699137090_))
                                             (_hd3699237093_
                                              (##car _e3699137090_)))
                                         (if (gx#stx-pair/null? _hd3699237093_)
                                             (let ((___splice4221842219_
                                                    (gx#syntax-split-splice
                                                     _hd3699237093_
                                                     '0)))
                                               (let ((_tl3699637100_
                                                      (##vector-ref
                                                       ___splice4221842219_
                                                       '1))
                                                     (_target3699437098_
                                                      (##vector-ref
                                                       ___splice4221842219_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3699637100_)
                                                     (___match4240942410_
                                                      _e3685437585_
                                                      _hd3685537588_
                                                      _tl3685637590_
                                                      _e3697337042_
                                                      _hd3697437045_
                                                      _tl3697537047_
                                                      _e3697637050_
                                                      _hd3697737053_
                                                      _tl3697837055_
                                                      _e3697937058_
                                                      _hd3698037061_
                                                      _tl3698137063_
                                                      _e3698237066_
                                                      _hd3698337069_
                                                      _tl3698437071_
                                                      _e3698537074_
                                                      _hd3698637077_
                                                      _tl3698737079_
                                                      _e3698837082_
                                                      _hd3698937085_
                                                      _tl3699037087_
                                                      _e3699137090_
                                                      _hd3699237093_
                                                      _tl3699337095_
                                                      ___splice4221842219_
                                                      _target3699437098_
                                                      _tl3699637100_)
                                                     (___kont4222242223_))))
                                             (___kont4222242223_))))
                                     (___kont4222242223_))
                                 (___kont4222242223_))
                             (___kont4222242223_))))
                     (___kont4222242223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4222242223_))
                                                 (___kont4222242223_))))
                                         (___kont4222242223_))))
                                 (___kont4222242223_))))
                         (___kont4222242223_))))
                 (___kont4222242223_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4222242223_)))))
                                     (___kont4222242223_))))
                             (___kont4222242223_)))))))
                (_optimize-t__4116141162_
                 (lambda (_expr36825_ _test36826_ _continue36827_)
                   (_do-assert33829_
                    (cons (cons _test36826_ '#t) '())
                    (lambda () (_continue36827_ _expr36825_)))))
                (_optimize-t__0__4116341164_
                 (lambda (_expr36833_ _test36834_)
                   (let ((_continue36836_ _optimize-e33840_))
                     (_optimize-t__4116141162_
                      _expr36833_
                      _test36834_
                      _continue36836_))))
                (_optimize-t33841_
                 (lambda _g44264_
                   (let ((_g44263_ (length _g44264_)))
                     (cond ((##fx= _g44263_ 2)
                            (apply _optimize-t__0__4116341164_ _g44264_))
                           ((##fx= _g44263_ 3)
                            (apply _optimize-t__4116141162_ _g44264_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g44264_))))))
                (_optimize-f__4116541166_
                 (lambda (_expr35910_ _test35911_)
                   (_do-assert33829_
                    (if _test35911_ (cons (cons _test35911_ '#f) '()) '())
                    (lambda ()
                      (let* ((___stx4245042451_ _expr35910_)
                             (_g3591936092_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4245042451_))))
                        (let ((___kont4245242453_
                               (lambda (_L36680_ _L36681_)
                                 (let ((_$e36701_
                                        (_lookup-block33848_ _L36681_)))
                                   (if _$e36701_
                                       ((lambda (_block36704_)
                                          (if (_nonlinear-block?33850_
                                               _block36704_)
                                              _expr35910_
                                              (let* ((_inline36713_
                                                      (_inline-block33849_
                                                       _block36704_
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g3670536708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3670636710_)
                           (cons _g3670536708_ _g3670636710_))
                         '()
                         _L36680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___stx4241242413_
                                                      _inline36713_)
                                                     (_g3671636737_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4241242413_))))
                                                (let ((___kont4241442415_
                                                       (lambda (_L36781_
                                                                _L36782_
                                                                _L36783_)
                                                         (let ((_$e36805_
                                                                (_assert-e33843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L36783_)))
                   (if (eq? '#t _$e36805_)
                       (if _in-splice?33828_
                           (_optimize-f__0__4116741168_ _L36782_)
                           (_optimize-e33840_ _L36782_))
                       (if (eq? '#f _$e36805_)
                           (_optimize-f__0__4116741168_ _L36781_)
                           _expr35910_)))))
              (___kont4241642417_
               (lambda () (_optimize-f__0__4116741168_ _inline36713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4241242413_)
                                                      (let ((_e3672136749_
                                                             (gx#stx-e
                                                              ___stx4241242413_)))
                                                        (let ((_tl3672336754_
                                                               (##cdr _e3672136749_))
                                                              (_hd3672236752_
                                                               (##car _e3672136749_)))
                                                          (if (gx#identifier?
                                                               _hd3672236752_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#if
                           _hd3672236752_)
                          (if (gx#stx-pair? _tl3672336754_)
                              (let ((_e3672436757_ (gx#stx-e _tl3672336754_)))
                                (let ((_tl3672636762_ (##cdr _e3672436757_))
                                      (_hd3672536760_ (##car _e3672436757_)))
                                  (if (gx#stx-pair? _tl3672636762_)
                                      (let ((_e3672736765_
                                             (gx#stx-e _tl3672636762_)))
                                        (let ((_tl3672936770_
                                               (##cdr _e3672736765_))
                                              (_hd3672836768_
                                               (##car _e3672736765_)))
                                          (if (gx#stx-pair? _tl3672936770_)
                                              (let ((_e3673036773_
                                                     (gx#stx-e
                                                      _tl3672936770_)))
                                                (let ((_tl3673236778_
                                                       (##cdr _e3673036773_))
                                                      (_hd3673136776_
                                                       (##car _e3673036773_)))
                                                  (if (gx#stx-null?
                                                       _tl3673236778_)
                                                      (___kont4241442415_
                                                       _hd3673136776_
                                                       _hd3672836768_
                                                       _hd3672536760_)
                                                      (___kont4241642417_))))
                                              (___kont4241642417_))))
                                      (___kont4241642417_))))
                              (___kont4241642417_))
                          (___kont4241642417_))
                      (___kont4241642417_))))
              (___kont4241642417_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e36701_)
                                       _expr35910_))))
                              (___kont4245642457_
                               (lambda (_L36578_ _L36579_ _L36580_)
                                 (let ((_$e36597_ (_assert-e33843_ _L36580_)))
                                   (if (eq? '#t _$e36597_)
                                       (if _in-splice?33828_
                                           (_optimize-f__0__4116741168_
                                            _L36579_)
                                           (_optimize-e33840_ _L36579_))
                                       (if (eq? '#f _$e36597_)
                                           (_optimize-f__0__4116741168_
                                            _L36578_)
                                           (let ((_K36600_
                                                  (_optimize-t__4116141162_
                                                   _L36579_
                                                   _L36580_
                                                   _optimize-f33842_))
                                                 (_E36601_
                                                  (_optimize-f__4116541166_
                                                   _L36578_
                                                   _L36580_)))
                                             (if (equal? (gxc#apply-generate-runtime-repr
                                                          _K36600_)
                                                         (gxc#apply-generate-runtime-repr
                                                          _E36601_))
                                                 _K36600_
                                                 (cons '%#if
                                                       (cons _L36580_
                                                             (cons _K36600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _E36601_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (___kont4245842459_
                               (lambda (_L36508_ _L36509_ _L36510_)
                                 (let ((_body36529_
                                        (_optimize-f__0__4116741168_
                                         _L36508_)))
                                   (cons '%#let-values
                                         (cons (begin
                                                 (gx#syntax-check-splice-targets
                                                  _L36509_
                                                  _L36510_)
                                                 (foldr2 (lambda (_g3653036534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3653136536_
                          _g3653236538_)
                   (cons (cons (cons _g3653136536_ '())
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g3653036534_ '()))
                                     '()))
                         _g3653236538_))
                 '()
                 _L36509_
                 _L36510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _body36529_ '()))))))
                              (___kont4246242463_
                               (lambda (_L36376_ _L36377_ _L36378_)
                                 (_bind-e__4116941170_
                                  (map cons
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3639636399_
                                                          _g3639736401_)
                                                   (cons _g3639636399_
                                                         _g3639736401_))
                                                 '()
                                                 _L36378_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3640336406_
                                                          _g3640436408_)
                                                   (cons _g3640336406_
                                                         _g3640436408_))
                                                 '()
                                                 _L36377_)))
                                  _L36376_
                                  _optimize-f33842_)))
                              (___kont4246642467_
                               (lambda (_L36232_
                                        _L36233_
                                        _L36234_
                                        _L36235_
                                        _L36236_)
                                 (_do-splice!33839_
                                  (lambda ()
                                    (let ((_expr36279_
                                           (_optimize-f__0__4116741168_
                                            _L36234_)))
                                      (cons '%#letrec-values
                                            (cons (cons (cons (cons _L36236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#lambda
                                  (cons (begin
                                          '#!void
                                          (foldr1 (lambda (_g3628036283_
                                                           _g3628136285_)
                                                    (cons _g3628036283_
                                                          _g3628136285_))
                                                  '()
                                                  _L36235_))
                                        (cons _expr36279_ '())))
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3628736290_ _g3628836292_)
                            (cons _g3628736290_ _g3628836292_))
                          '()
                          _L36233_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L36232_ '()))))))))
                              (___kont4247242473_ (lambda () _expr35910_)))
                          (let* ((___match4265942660_
                                  (lambda (_e3604036104_
                                           _hd3604136107_
                                           _tl3604236109_
                                           _e3604336112_
                                           _hd3604436115_
                                           _tl3604536117_
                                           _e3604636120_
                                           _hd3604736123_
                                           _tl3604836125_
                                           _e3604936128_
                                           _hd3605036131_
                                           _tl3605136133_
                                           _e3605236136_
                                           _hd3605336139_
                                           _tl3605436141_
                                           _e3605536144_
                                           _hd3605636147_
                                           _tl3605736149_
                                           _e3605836152_
                                           _hd3605936155_
                                           _tl3606036157_
                                           _e3606136160_
                                           _hd3606236163_
                                           _tl3606336165_
                                           ___splice4246842469_
                                           _target3606436168_
                                           _tl3606636170_)
                                    (letrec ((_loop3606736173_
                                              (lambda (_hd3606536176_
                                                       _id3607136178_)
                                                (if (gx#stx-pair?
                                                     _hd3606536176_)
                                                    (let ((_e3606836181_
                                                           (gx#stx-e
                                                            _hd3606536176_)))
                                                      (let ((_lp-tl3607036186_
                                                             (##cdr _e3606836181_))
                                                            (_lp-hd3606936184_
                                                             (##car _e3606836181_)))
                                                        (_loop3606736173_
                                                         _lp-tl3607036186_
                                                         (cons _lp-hd3606936184_
                                                               _id3607136178_))))
                                                    (let ((_id3607236189_
                                                           (reverse _id3607136178_)))
                                                      (if (gx#stx-pair?
                                                           _tl3606336165_)
                                                          (let ((_e3607336192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3606336165_)))
                    (let ((_tl3607536197_ (##cdr _e3607336192_))
                          (_hd3607436195_ (##car _e3607336192_)))
                      (if (gx#stx-null? _tl3607536197_)
                          (if (gx#stx-null? _tl3605736149_)
                              (if (gx#stx-pair/null? _tl3604836125_)
                                  (let ((___splice4247042471_
                                         (gx#syntax-split-splice
                                          _tl3604836125_
                                          '0)))
                                    (let ((_tl3607836202_
                                           (##vector-ref
                                            ___splice4247042471_
                                            '1))
                                          (_target3607636200_
                                           (##vector-ref
                                            ___splice4247042471_
                                            '0)))
                                      (if (gx#stx-null? _tl3607836202_)
                                          (letrec ((_loop3607936205_
                                                    (lambda (_hd3607736208_
                                                             _bind3608336210_)
                                                      (if (gx#stx-pair?
                                                           _hd3607736208_)
                                                          (let ((_e3608036213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3607736208_)))
                    (let ((_lp-tl3608236218_ (##cdr _e3608036213_))
                          (_lp-hd3608136216_ (##car _e3608036213_)))
                      (_loop3607936205_
                       _lp-tl3608236218_
                       (cons _lp-hd3608136216_ _bind3608336210_))))
                  (let ((_bind3608436221_ (reverse _bind3608336210_)))
                    (if (gx#stx-pair? _tl3604536117_)
                        (let ((_e3608536224_ (gx#stx-e _tl3604536117_)))
                          (let ((_tl3608736229_ (##cdr _e3608536224_))
                                (_hd3608636227_ (##car _e3608536224_)))
                            (if (gx#stx-null? _tl3608736229_)
                                (___kont4246642467_
                                 _hd3608636227_
                                 _bind3608436221_
                                 _hd3607436195_
                                 _id3607236189_
                                 _hd3605336139_)
                                (___kont4247242473_))))
                        (___kont4247242473_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3607936205_
                                             _target3607636200_
                                             '()))
                                          (___kont4247242473_))))
                                  (___kont4247242473_))
                              (___kont4247242473_))
                          (___kont4247242473_))))
                  (___kont4247242473_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3606736173_
                                       _target3606436168_
                                       '()))))
                                 (___match4259342594_
                                  (lambda (_e3600636300_
                                           _hd3600736303_
                                           _tl3600836305_
                                           _e3600936308_
                                           _hd3601036311_
                                           _tl3601136313_
                                           ___splice4246442465_
                                           _target3601236316_
                                           _tl3601436318_)
                                    (letrec ((_loop3601536321_
                                              (lambda (_hd3601336324_
                                                       _expr3601936326_
                                                       _id3602036328_)
                                                (if (gx#stx-pair?
                                                     _hd3601336324_)
                                                    (let ((_e3601636331_
                                                           (gx#stx-e
                                                            _hd3601336324_)))
                                                      (let ((_lp-tl3601836336_
                                                             (##cdr _e3601636331_))
                                                            (_lp-hd3601736334_
                                                             (##car _e3601636331_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3601736334_)
                                                            (let ((_e3602336339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3601736334_)))
                      (let ((_tl3602536344_ (##cdr _e3602336339_))
                            (_hd3602436342_ (##car _e3602336339_)))
                        (if (gx#stx-pair? _hd3602436342_)
                            (let ((_e3602636347_ (gx#stx-e _hd3602436342_)))
                              (let ((_tl3602836352_ (##cdr _e3602636347_))
                                    (_hd3602736350_ (##car _e3602636347_)))
                                (if (gx#stx-null? _tl3602836352_)
                                    (if (gx#stx-pair? _tl3602536344_)
                                        (let ((_e3602936355_
                                               (gx#stx-e _tl3602536344_)))
                                          (let ((_tl3603136360_
                                                 (##cdr _e3602936355_))
                                                (_hd3603036358_
                                                 (##car _e3602936355_)))
                                            (if (gx#stx-null? _tl3603136360_)
                                                (_loop3601536321_
                                                 _lp-tl3601836336_
                                                 (cons _hd3603036358_
                                                       _expr3601936326_)
                                                 (cons _hd3602736350_
                                                       _id3602036328_))
                                                (___kont4247242473_))))
                                        (___kont4247242473_))
                                    (___kont4247242473_))))
                            (___kont4247242473_))))
                    (___kont4247242473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3602236365_
                                                           (reverse _id3602036328_))
                                                          (_expr3602136363_
                                                           (reverse _expr3601936326_)))
                                                      (if (gx#stx-pair?
                                                           _tl3601136313_)
                                                          (let ((_e3603236368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3601136313_)))
                    (let ((_tl3603436373_ (##cdr _e3603236368_))
                          (_hd3603336371_ (##car _e3603236368_)))
                      (if (gx#stx-null? _tl3603436373_)
                          (___kont4246242463_
                           _hd3603336371_
                           _expr3602136363_
                           _id3602236365_)
                          (___kont4247242473_))))
                  (___kont4247242473_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3601536321_
                                       _target3601236316_
                                       '()
                                       '()))))
                                 (___match4256942570_
                                  (lambda (_e3596836416_
                                           _hd3596936419_
                                           _tl3597036421_
                                           _e3597136424_
                                           _hd3597236427_
                                           _tl3597336429_
                                           ___splice4246042461_
                                           _target3597436432_
                                           _tl3597636434_)
                                    (letrec ((_loop3597736437_
                                              (lambda (_hd3597536440_
                                                       _xid3598136442_
                                                       _id3598236444_)
                                                (if (gx#stx-pair?
                                                     _hd3597536440_)
                                                    (let ((_e3597836447_
                                                           (gx#stx-e
                                                            _hd3597536440_)))
                                                      (let ((_lp-tl3598036452_
                                                             (##cdr _e3597836447_))
                                                            (_lp-hd3597936450_
                                                             (##car _e3597836447_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3597936450_)
                                                            (let ((_e3598536455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3597936450_)))
                      (let ((_tl3598736460_ (##cdr _e3598536455_))
                            (_hd3598636458_ (##car _e3598536455_)))
                        (if (gx#stx-pair? _hd3598636458_)
                            (let ((_e3598836463_ (gx#stx-e _hd3598636458_)))
                              (let ((_tl3599036468_ (##cdr _e3598836463_))
                                    (_hd3598936466_ (##car _e3598836463_)))
                                (if (gx#stx-null? _tl3599036468_)
                                    (if (gx#stx-pair? _tl3598736460_)
                                        (let ((_e3599136471_
                                               (gx#stx-e _tl3598736460_)))
                                          (let ((_tl3599336476_
                                                 (##cdr _e3599136471_))
                                                (_hd3599236474_
                                                 (##car _e3599136471_)))
                                            (if (gx#stx-pair? _hd3599236474_)
                                                (let ((_e3599436479_
                                                       (gx#stx-e
                                                        _hd3599236474_)))
                                                  (let ((_tl3599636484_
                                                         (##cdr _e3599436479_))
                                                        (_hd3599536482_
                                                         (##car _e3599436479_)))
                                                    (if (gx#identifier?
                                                         _hd3599536482_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3599536482_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3599636484_)
                        (let ((_e3599736487_ (gx#stx-e _tl3599636484_)))
                          (let ((_tl3599936492_ (##cdr _e3599736487_))
                                (_hd3599836490_ (##car _e3599736487_)))
                            (if (gx#stx-null? _tl3599936492_)
                                (if (gx#stx-null? _tl3599336476_)
                                    (_loop3597736437_
                                     _lp-tl3598036452_
                                     (cons _hd3599836490_ _xid3598136442_)
                                     (cons _hd3598936466_ _id3598236444_))
                                    (___match4259342594_
                                     _e3596836416_
                                     _hd3596936419_
                                     _tl3597036421_
                                     _e3597136424_
                                     _hd3597236427_
                                     _tl3597336429_
                                     ___splice4246042461_
                                     _target3597436432_
                                     _tl3597636434_))
                                (___match4259342594_
                                 _e3596836416_
                                 _hd3596936419_
                                 _tl3597036421_
                                 _e3597136424_
                                 _hd3597236427_
                                 _tl3597336429_
                                 ___splice4246042461_
                                 _target3597436432_
                                 _tl3597636434_))))
                        (___match4259342594_
                         _e3596836416_
                         _hd3596936419_
                         _tl3597036421_
                         _e3597136424_
                         _hd3597236427_
                         _tl3597336429_
                         ___splice4246042461_
                         _target3597436432_
                         _tl3597636434_))
                    (___match4259342594_
                     _e3596836416_
                     _hd3596936419_
                     _tl3597036421_
                     _e3597136424_
                     _hd3597236427_
                     _tl3597336429_
                     ___splice4246042461_
                     _target3597436432_
                     _tl3597636434_))
                (___match4259342594_
                 _e3596836416_
                 _hd3596936419_
                 _tl3597036421_
                 _e3597136424_
                 _hd3597236427_
                 _tl3597336429_
                 ___splice4246042461_
                 _target3597436432_
                 _tl3597636434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match4259342594_
                                                 _e3596836416_
                                                 _hd3596936419_
                                                 _tl3597036421_
                                                 _e3597136424_
                                                 _hd3597236427_
                                                 _tl3597336429_
                                                 ___splice4246042461_
                                                 _target3597436432_
                                                 _tl3597636434_))))
                                        (___match4259342594_
                                         _e3596836416_
                                         _hd3596936419_
                                         _tl3597036421_
                                         _e3597136424_
                                         _hd3597236427_
                                         _tl3597336429_
                                         ___splice4246042461_
                                         _target3597436432_
                                         _tl3597636434_))
                                    (___match4259342594_
                                     _e3596836416_
                                     _hd3596936419_
                                     _tl3597036421_
                                     _e3597136424_
                                     _hd3597236427_
                                     _tl3597336429_
                                     ___splice4246042461_
                                     _target3597436432_
                                     _tl3597636434_))))
                            (___match4259342594_
                             _e3596836416_
                             _hd3596936419_
                             _tl3597036421_
                             _e3597136424_
                             _hd3597236427_
                             _tl3597336429_
                             ___splice4246042461_
                             _target3597436432_
                             _tl3597636434_))))
                    (___match4259342594_
                     _e3596836416_
                     _hd3596936419_
                     _tl3597036421_
                     _e3597136424_
                     _hd3597236427_
                     _tl3597336429_
                     ___splice4246042461_
                     _target3597436432_
                     _tl3597636434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3598436497_
                                                           (reverse _id3598236444_))
                                                          (_xid3598336495_
                                                           (reverse _xid3598136442_)))
                                                      (if (gx#stx-pair?
                                                           _tl3597336429_)
                                                          (let ((_e3600036500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3597336429_)))
                    (let ((_tl3600236505_ (##cdr _e3600036500_))
                          (_hd3600136503_ (##car _e3600036500_)))
                      (if (gx#stx-null? _tl3600236505_)
                          (___kont4245842459_
                           _hd3600136503_
                           _xid3598336495_
                           _id3598436497_)
                          (___match4259342594_
                           _e3596836416_
                           _hd3596936419_
                           _tl3597036421_
                           _e3597136424_
                           _hd3597236427_
                           _tl3597336429_
                           ___splice4246042461_
                           _target3597436432_
                           _tl3597636434_))))
                  (___match4259342594_
                   _e3596836416_
                   _hd3596936419_
                   _tl3597036421_
                   _e3597136424_
                   _hd3597236427_
                   _tl3597336429_
                   ___splice4246042461_
                   _target3597436432_
                   _tl3597636434_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3597736437_
                                       _target3597436432_
                                       '()
                                       '()))))
                                 (___match4251542516_
                                  (lambda (_e3592336608_
                                           _hd3592436611_
                                           _tl3592536613_
                                           _e3592636616_
                                           _hd3592736619_
                                           _tl3592836621_
                                           _e3592936624_
                                           _hd3593036627_
                                           _tl3593136629_
                                           _e3593236632_
                                           _hd3593336635_
                                           _tl3593436637_
                                           ___splice4245442455_
                                           _target3593536640_
                                           _tl3593736642_)
                                    (letrec ((_loop3593836645_
                                              (lambda (_hd3593636648_
                                                       _id3594236650_)
                                                (if (gx#stx-pair?
                                                     _hd3593636648_)
                                                    (let ((_e3593936653_
                                                           (gx#stx-e
                                                            _hd3593636648_)))
                                                      (let ((_lp-tl3594136658_
                                                             (##cdr _e3593936653_))
                                                            (_lp-hd3594036656_
                                                             (##car _e3593936653_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3594036656_)
                                                            (let ((_e3594436661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3594036656_)))
                      (let ((_tl3594636666_ (##cdr _e3594436661_))
                            (_hd3594536664_ (##car _e3594436661_)))
                        (if (gx#identifier? _hd3594536664_)
                            (if (gx#stx-eq? '%#ref _hd3594536664_)
                                (if (gx#stx-pair? _tl3594636666_)
                                    (let ((_e3594736669_
                                           (gx#stx-e _tl3594636666_)))
                                      (let ((_tl3594936674_
                                             (##cdr _e3594736669_))
                                            (_hd3594836672_
                                             (##car _e3594736669_)))
                                        (if (gx#stx-null? _tl3594936674_)
                                            (_loop3593836645_
                                             _lp-tl3594136658_
                                             (cons _hd3594836672_
                                                   _id3594236650_))
                                            (___kont4247242473_))))
                                    (___kont4247242473_))
                                (___kont4247242473_))
                            (___kont4247242473_))))
                    (___kont4247242473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3594336677_
                                                           (reverse _id3594236650_)))
                                                      (___kont4245242453_
                                                       _id3594336677_
                                                       _hd3593336635_))))))
                                      (_loop3593836645_
                                       _target3593536640_
                                       '())))))
                            (if (gx#stx-pair? ___stx4245042451_)
                                (let ((_e3592336608_
                                       (gx#stx-e ___stx4245042451_)))
                                  (let ((_tl3592536613_ (##cdr _e3592336608_))
                                        (_hd3592436611_ (##car _e3592336608_)))
                                    (if (gx#identifier? _hd3592436611_)
                                        (if (gx#stx-eq? '%#call _hd3592436611_)
                                            (if (gx#stx-pair? _tl3592536613_)
                                                (let ((_e3592636616_
                                                       (gx#stx-e
                                                        _tl3592536613_)))
                                                  (let ((_tl3592836621_
                                                         (##cdr _e3592636616_))
                                                        (_hd3592736619_
                                                         (##car _e3592636616_)))
                                                    (if (gx#stx-pair?
                                                         _hd3592736619_)
                                                        (let ((_e3592936624_
                                                               (gx#stx-e
                                                                _hd3592736619_)))
                                                          (let ((_tl3593136629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3592936624_))
                        (_hd3593036627_ (##car _e3592936624_)))
                    (if (gx#identifier? _hd3593036627_)
                        (if (gx#stx-eq? '%#ref _hd3593036627_)
                            (if (gx#stx-pair? _tl3593136629_)
                                (let ((_e3593236632_
                                       (gx#stx-e _tl3593136629_)))
                                  (let ((_tl3593436637_ (##cdr _e3593236632_))
                                        (_hd3593336635_ (##car _e3593236632_)))
                                    (if (gx#stx-null? _tl3593436637_)
                                        (if (gx#stx-pair/null? _tl3592836621_)
                                            (let ((___splice4245442455_
                                                   (gx#syntax-split-splice
                                                    _tl3592836621_
                                                    '0)))
                                              (let ((_tl3593736642_
                                                     (##vector-ref
                                                      ___splice4245442455_
                                                      '1))
                                                    (_target3593536640_
                                                     (##vector-ref
                                                      ___splice4245442455_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3593736642_)
                                                    (___match4251542516_
                                                     _e3592336608_
                                                     _hd3592436611_
                                                     _tl3592536613_
                                                     _e3592636616_
                                                     _hd3592736619_
                                                     _tl3592836621_
                                                     _e3592936624_
                                                     _hd3593036627_
                                                     _tl3593136629_
                                                     _e3593236632_
                                                     _hd3593336635_
                                                     _tl3593436637_
                                                     ___splice4245442455_
                                                     _target3593536640_
                                                     _tl3593736642_)
                                                    (___kont4247242473_))))
                                            (___kont4247242473_))
                                        (___kont4247242473_))))
                                (___kont4247242473_))
                            (___kont4247242473_))
                        (___kont4247242473_))))
                (___kont4247242473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4247242473_))
                                            (if (gx#stx-eq?
                                                 '%#if
                                                 _hd3592436611_)
                                                (if (gx#stx-pair?
                                                     _tl3592536613_)
                                                    (let ((_e3595636554_
                                                           (gx#stx-e
                                                            _tl3592536613_)))
                                                      (let ((_tl3595836559_
                                                             (##cdr _e3595636554_))
                                                            (_hd3595736557_
                                                             (##car _e3595636554_)))
                                                        (if (gx#stx-pair?
                                                             _tl3595836559_)
                                                            (let ((_e3595936562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3595836559_)))
                      (let ((_tl3596136567_ (##cdr _e3595936562_))
                            (_hd3596036565_ (##car _e3595936562_)))
                        (if (gx#stx-pair? _tl3596136567_)
                            (let ((_e3596236570_ (gx#stx-e _tl3596136567_)))
                              (let ((_tl3596436575_ (##cdr _e3596236570_))
                                    (_hd3596336573_ (##car _e3596236570_)))
                                (if (gx#stx-null? _tl3596436575_)
                                    (___kont4245642457_
                                     _hd3596336573_
                                     _hd3596036565_
                                     _hd3595736557_)
                                    (___kont4247242473_))))
                            (___kont4247242473_))))
                    (___kont4247242473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4247242473_))
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd3592436611_)
                                                    (if (gx#stx-pair?
                                                         _tl3592536613_)
                                                        (let ((_e3597136424_
                                                               (gx#stx-e
                                                                _tl3592536613_)))
                                                          (let ((_tl3597336429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3597136424_))
                        (_hd3597236427_ (##car _e3597136424_)))
                    (if (gx#stx-pair/null? _hd3597236427_)
                        (let ((___splice4246042461_
                               (gx#syntax-split-splice _hd3597236427_ '0)))
                          (let ((_tl3597636434_
                                 (##vector-ref ___splice4246042461_ '1))
                                (_target3597436432_
                                 (##vector-ref ___splice4246042461_ '0)))
                            (if (gx#stx-null? _tl3597636434_)
                                (___match4256942570_
                                 _e3592336608_
                                 _hd3592436611_
                                 _tl3592536613_
                                 _e3597136424_
                                 _hd3597236427_
                                 _tl3597336429_
                                 ___splice4246042461_
                                 _target3597436432_
                                 _tl3597636434_)
                                (___kont4247242473_))))
                        (___kont4247242473_))))
                (___kont4247242473_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#letrec-values
                                                         _hd3592436611_)
                                                        (if (gx#stx-pair?
                                                             _tl3592536613_)
                                                            (let ((_e3604336112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3592536613_)))
                      (let ((_tl3604536117_ (##cdr _e3604336112_))
                            (_hd3604436115_ (##car _e3604336112_)))
                        (if (gx#stx-pair? _hd3604436115_)
                            (let ((_e3604636120_ (gx#stx-e _hd3604436115_)))
                              (let ((_tl3604836125_ (##cdr _e3604636120_))
                                    (_hd3604736123_ (##car _e3604636120_)))
                                (if (gx#stx-pair? _hd3604736123_)
                                    (let ((_e3604936128_
                                           (gx#stx-e _hd3604736123_)))
                                      (let ((_tl3605136133_
                                             (##cdr _e3604936128_))
                                            (_hd3605036131_
                                             (##car _e3604936128_)))
                                        (if (gx#stx-pair? _hd3605036131_)
                                            (let ((_e3605236136_
                                                   (gx#stx-e _hd3605036131_)))
                                              (let ((_tl3605436141_
                                                     (##cdr _e3605236136_))
                                                    (_hd3605336139_
                                                     (##car _e3605236136_)))
                                                (if (gx#stx-null?
                                                     _tl3605436141_)
                                                    (if (gx#stx-pair?
                                                         _tl3605136133_)
                                                        (let ((_e3605536144_
                                                               (gx#stx-e
                                                                _tl3605136133_)))
                                                          (let ((_tl3605736149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3605536144_))
                        (_hd3605636147_ (##car _e3605536144_)))
                    (if (gx#stx-pair? _hd3605636147_)
                        (let ((_e3605836152_ (gx#stx-e _hd3605636147_)))
                          (let ((_tl3606036157_ (##cdr _e3605836152_))
                                (_hd3605936155_ (##car _e3605836152_)))
                            (if (gx#identifier? _hd3605936155_)
                                (if (gx#stx-eq? '%#lambda _hd3605936155_)
                                    (if (gx#stx-pair? _tl3606036157_)
                                        (let ((_e3606136160_
                                               (gx#stx-e _tl3606036157_)))
                                          (let ((_tl3606336165_
                                                 (##cdr _e3606136160_))
                                                (_hd3606236163_
                                                 (##car _e3606136160_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3606236163_)
                                                (let ((___splice4246842469_
                                                       (gx#syntax-split-splice
                                                        _hd3606236163_
                                                        '0)))
                                                  (let ((_tl3606636170_
                                                         (##vector-ref
                                                          ___splice4246842469_
                                                          '1))
                                                        (_target3606436168_
                                                         (##vector-ref
                                                          ___splice4246842469_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3606636170_)
                                                        (___match4265942660_
                                                         _e3592336608_
                                                         _hd3592436611_
                                                         _tl3592536613_
                                                         _e3604336112_
                                                         _hd3604436115_
                                                         _tl3604536117_
                                                         _e3604636120_
                                                         _hd3604736123_
                                                         _tl3604836125_
                                                         _e3604936128_
                                                         _hd3605036131_
                                                         _tl3605136133_
                                                         _e3605236136_
                                                         _hd3605336139_
                                                         _tl3605436141_
                                                         _e3605536144_
                                                         _hd3605636147_
                                                         _tl3605736149_
                                                         _e3605836152_
                                                         _hd3605936155_
                                                         _tl3606036157_
                                                         _e3606136160_
                                                         _hd3606236163_
                                                         _tl3606336165_
                                                         ___splice4246842469_
                                                         _target3606436168_
                                                         _tl3606636170_)
                                                        (___kont4247242473_))))
                                                (___kont4247242473_))))
                                        (___kont4247242473_))
                                    (___kont4247242473_))
                                (___kont4247242473_))))
                        (___kont4247242473_))))
                (___kont4247242473_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4247242473_))))
                                            (___kont4247242473_))))
                                    (___kont4247242473_))))
                            (___kont4247242473_))))
                    (___kont4247242473_))
                (___kont4247242473_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (___kont4247242473_))))
                                (___kont4247242473_)))))))))
                (_optimize-f__0__4116741168_
                 (lambda (_expr36817_)
                   (let ((_test36819_ '#f))
                     (_optimize-f__4116541166_ _expr36817_ _test36819_))))
                (_optimize-f33842_
                 (lambda _g44266_
                   (let ((_g44265_ (length _g44266_)))
                     (cond ((##fx= _g44265_ 1)
                            (apply _optimize-f__0__4116741168_ _g44266_))
                           ((##fx= _g44265_ 2)
                            (apply _optimize-f__4116541166_ _g44266_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g44266_))))))
                (_assert-e33843_
                 (lambda (_expr34851_)
                   (let* ((_sexpr34853_
                           (gxc#apply-generate-runtime-repr _expr34851_))
                          (_$e34855_ (assoc _sexpr34853_ _env-assert33825_)))
                     (if _$e34855_
                         (cdr _$e34855_)
                         (let _assert34858_ ((_expr34860_ _expr34851_))
                           (let* ((___stx4275642757_ _expr34860_)
                                  (_g3486835047_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4275642757_))))
                             (let ((___kont4275842759_
                                    (lambda (_L35878_ _L35879_)
                                      (let ((_$e35901_
                                             (_predicate-type33830_ _L35879_)))
                                        (if _$e35901_
                                            ((lambda (_t35904_)
                                               (_assert-type33844_
                                                _L35878_
                                                _t35904_))
                                             _$e35901_)
                                            '#!void))))
                                   (___kont4276042761_
                                    (lambda (_L35571_ _L35572_ _L35573_)
                                      (let ((_$e35598_
                                             (gxc#identifier-symbol _L35573_)))
                                        (if (let ((_$e35601_
                                                   (eq? '##fx= _$e35598_)))
                                              (if _$e35601_
                                                  _$e35601_
                                                  (eq? 'fx= _$e35598_)))
                                            (let* ((___stx4266242663_ _L35572_)
                                                   (_g3560535634_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx4266242663_))))
                                              (let ((___kont4266442665_
                                                     (lambda (_L35702_
                                                              _L35703_)
                                                       (let ((_$e35728_
                                                              (_countf-symbol33832_
                                                               _L35703_)))
                                                         (if _$e35728_
                                                             ((lambda (_sym35731_)
                                                                (_assert-count33845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L35702_
                         _sym35731_
                         (gx#stx-e _L35571_)))
                      _$e35728_)
                     '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4266642667_
                                                     (lambda () '#!void)))
                                                (if (gx#stx-pair?
                                                     ___stx4266242663_)
                                                    (let ((_e3560935646_
                                                           (gx#stx-e
                                                            ___stx4266242663_)))
                                                      (let ((_tl3561135651_
                                                             (##cdr _e3560935646_))
                                                            (_hd3561035649_
                                                             (##car _e3560935646_)))
                                                        (if (gx#identifier?
                                                             _hd3561035649_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd3561035649_)
                        (if (gx#stx-pair? _tl3561135651_)
                            (let ((_e3561235654_ (gx#stx-e _tl3561135651_)))
                              (let ((_tl3561435659_ (##cdr _e3561235654_))
                                    (_hd3561335657_ (##car _e3561235654_)))
                                (if (gx#stx-pair? _hd3561335657_)
                                    (let ((_e3561535662_
                                           (gx#stx-e _hd3561335657_)))
                                      (let ((_tl3561735667_
                                             (##cdr _e3561535662_))
                                            (_hd3561635665_
                                             (##car _e3561535662_)))
                                        (if (gx#identifier? _hd3561635665_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3561635665_)
                                                (if (gx#stx-pair?
                                                     _tl3561735667_)
                                                    (let ((_e3561835670_
                                                           (gx#stx-e
                                                            _tl3561735667_)))
                                                      (let ((_tl3562035675_
                                                             (##cdr _e3561835670_))
                                                            (_hd3561935673_
                                                             (##car _e3561835670_)))
                                                        (if (gx#stx-null?
                                                             _tl3562035675_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3561435659_)
                        (let ((_e3562135678_ (gx#stx-e _tl3561435659_)))
                          (let ((_tl3562335683_ (##cdr _e3562135678_))
                                (_hd3562235681_ (##car _e3562135678_)))
                            (if (gx#stx-pair? _hd3562235681_)
                                (let ((_e3562435686_
                                       (gx#stx-e _hd3562235681_)))
                                  (let ((_tl3562635691_ (##cdr _e3562435686_))
                                        (_hd3562535689_ (##car _e3562435686_)))
                                    (if (gx#identifier? _hd3562535689_)
                                        (if (gx#stx-eq? '%#ref _hd3562535689_)
                                            (if (gx#stx-pair? _tl3562635691_)
                                                (let ((_e3562735694_
                                                       (gx#stx-e
                                                        _tl3562635691_)))
                                                  (let ((_tl3562935699_
                                                         (##cdr _e3562735694_))
                                                        (_hd3562835697_
                                                         (##car _e3562735694_)))
                                                    (if (gx#stx-null?
                                                         _tl3562935699_)
                                                        (if (gx#stx-null?
                                                             _tl3562335683_)
                                                            (___kont4266442665_
                                                             _hd3562835697_
                                                             _hd3561935673_)
                                                            (___kont4266642667_))
                                                        (___kont4266642667_))))
                                                (___kont4266642667_))
                                            (___kont4266642667_))
                                        (___kont4266642667_))))
                                (___kont4266642667_))))
                        (___kont4266642667_))
                    (___kont4266642667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4266642667_))
                                                (___kont4266642667_))
                                            (___kont4266642667_))))
                                    (___kont4266642667_))))
                            (___kont4266642667_))
                        (___kont4266642667_))
                    (___kont4266642667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4266642667_))))
                                            (if (let ((_$e35736_
                                                       (eq? '##eq? _$e35598_)))
                                                  (if _$e35736_
                                                      _$e35736_
                                                      (let ((_$e35739_
                                                             (eq? 'eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e35598_)))
                (if _$e35739_
                    _$e35739_
                    (let ((_$e35742_ (eq? '##eqv? _$e35598_)))
                      (if _$e35742_
                          _$e35742_
                          (let ((_$e35745_ (eq? 'eqv? _$e35598_)))
                            (if _$e35745_
                                _$e35745_
                                (let ((_$e35748_ (eq? '##equal? _$e35598_)))
                                  (if _$e35748_
                                      _$e35748_
                                      (let ((_$e35751_
                                             (eq? 'equal? _$e35598_)))
                                        (if _$e35751_
                                            _$e35751_
                                            (let ((_$e35754_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e35598_)))
                                              (if _$e35754_
                                                  _$e35754_
                                                  (eq? 'gx#stx-eq?
                                                       _$e35598_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                ((lambda (_sym35757_)
                                                   (let* ((___stx4273042731_
                                                           _L35572_)
                                                          (_g3576035773_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4273042731_))))
                                                     (let ((___kont4273242733_
                                                            (lambda (_L35801_)
                                                              (_assert-eqf33846_
                                                               _L35801_
                                                               (_eqf-symbol33833_
                                                                _sym35757_)
                                                               (gx#stx-e
                                                                _L35571_))))
                                                           (___kont4273442735_
                                                            (lambda ()
                                                              '#!void)))
                                                       (if (gx#stx-pair?
                                                            ___stx4273042731_)
                                                           (let ((_e3576335785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e ___stx4273042731_)))
                     (let ((_tl3576535790_ (##cdr _e3576335785_))
                           (_hd3576435788_ (##car _e3576335785_)))
                       (if (gx#identifier? _hd3576435788_)
                           (if (gx#stx-eq? '%#ref _hd3576435788_)
                               (if (gx#stx-pair? _tl3576535790_)
                                   (let ((_e3576635793_
                                          (gx#stx-e _tl3576535790_)))
                                     (let ((_tl3576835798_
                                            (##cdr _e3576635793_))
                                           (_hd3576735796_
                                            (##car _e3576635793_)))
                                       (if (gx#stx-null? _tl3576835798_)
                                           (___kont4273242733_ _hd3576735796_)
                                           (___kont4273442735_))))
                                   (___kont4273442735_))
                               (___kont4273442735_))
                           (___kont4273442735_))))
                   (___kont4273442735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e35598_)
                                                '#!void)))))
                                   (___kont4276242763_
                                    (lambda (_L35475_ _L35476_ _L35477_)
                                      (_assert34858_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L35477_ '()))
                                                   (cons _L35475_
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#quote)
                             (cons _L35476_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4276442765_
                                    (lambda (_L35367_ _L35368_ _L35369_)
                                      (let ((_$e35398_
                                             (gxc#identifier-symbol _L35369_)))
                                        (if (let ((_$e35401_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e35398_)))
                                              (if _$e35401_
                                                  _$e35401_
                                                  (eq? 'gx#stx-eq? _$e35398_)))
                                            ((lambda (_sym35404_)
                                               (_assert-eqf33846_
                                                _L35368_
                                                (_eqf-symbol33833_ _sym35404_)
                                                _L35367_))
                                             _$e35398_)
                                            '#!void))))
                                   (___kont4276642767_
                                    (lambda (_L35251_ _L35252_ _L35253_)
                                      (_assert34858_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L35253_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L35251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                             (cons _L35252_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4276842769_
                                    (lambda (_L35131_ _L35132_ _L35133_)
                                      (_assert34858_
                                       (gxc#apply-expression-subst
                                        _L35132_
                                        _L35133_
                                        _L35131_))))
                                   (___kont4277042771_ (lambda () '#!void)))
                               (if (gx#stx-pair? ___stx4275642757_)
                                   (let ((_e3487235822_
                                          (gx#stx-e ___stx4275642757_)))
                                     (let ((_tl3487435827_
                                            (##cdr _e3487235822_))
                                           (_hd3487335825_
                                            (##car _e3487235822_)))
                                       (if (gx#identifier? _hd3487335825_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd3487335825_)
                                               (if (gx#stx-pair?
                                                    _tl3487435827_)
                                                   (let ((_e3487535830_
                                                          (gx#stx-e
                                                           _tl3487435827_)))
                                                     (let ((_tl3487735835_
                                                            (##cdr _e3487535830_))
                                                           (_hd3487635833_
                                                            (##car _e3487535830_)))
                                                       (if (gx#stx-pair?
                                                            _hd3487635833_)
                                                           (let ((_e3487835838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3487635833_)))
                     (let ((_tl3488035843_ (##cdr _e3487835838_))
                           (_hd3487935841_ (##car _e3487835838_)))
                       (if (gx#identifier? _hd3487935841_)
                           (if (gx#stx-eq? '%#ref _hd3487935841_)
                               (if (gx#stx-pair? _tl3488035843_)
                                   (let ((_e3488135846_
                                          (gx#stx-e _tl3488035843_)))
                                     (let ((_tl3488335851_
                                            (##cdr _e3488135846_))
                                           (_hd3488235849_
                                            (##car _e3488135846_)))
                                       (if (gx#stx-null? _tl3488335851_)
                                           (if (gx#stx-pair? _tl3487735835_)
                                               (let ((_e3488435854_
                                                      (gx#stx-e
                                                       _tl3487735835_)))
                                                 (let ((_tl3488635859_
                                                        (##cdr _e3488435854_))
                                                       (_hd3488535857_
                                                        (##car _e3488435854_)))
                                                   (if (gx#stx-pair?
                                                        _hd3488535857_)
                                                       (let ((_e3488735862_
                                                              (gx#stx-e
                                                               _hd3488535857_)))
                                                         (let ((_tl3488935867_
                                                                (##cdr _e3488735862_))
                                                               (_hd3488835865_
                                                                (##car _e3488735862_)))
                                                           (if (gx#identifier?
                                                                _hd3488835865_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3488835865_)
                           (if (gx#stx-pair? _tl3488935867_)
                               (let ((_e3489035870_ (gx#stx-e _tl3488935867_)))
                                 (let ((_tl3489235875_ (##cdr _e3489035870_))
                                       (_hd3489135873_ (##car _e3489035870_)))
                                   (if (gx#stx-null? _tl3489235875_)
                                       (if (gx#stx-null? _tl3488635859_)
                                           (___kont4275842759_
                                            _hd3489135873_
                                            _hd3488235849_)
                                           (if (gx#stx-pair? _tl3488635859_)
                                               (let ((_e3491135547_
                                                      (gx#stx-e
                                                       _tl3488635859_)))
                                                 (let ((_tl3491335552_
                                                        (##cdr _e3491135547_))
                                                       (_hd3491235550_
                                                        (##car _e3491135547_)))
                                                   (if (gx#stx-pair?
                                                        _hd3491235550_)
                                                       (let ((_e3491435555_
                                                              (gx#stx-e
                                                               _hd3491235550_)))
                                                         (let ((_tl3491635560_
                                                                (##cdr _e3491435555_))
                                                               (_hd3491535558_
                                                                (##car _e3491435555_)))
                                                           (if (gx#identifier?
                                                                _hd3491535558_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#quote
                            _hd3491535558_)
                           (if (gx#stx-pair? _tl3491635560_)
                               (let ((_e3491735563_ (gx#stx-e _tl3491635560_)))
                                 (let ((_tl3491935568_ (##cdr _e3491735563_))
                                       (_hd3491835566_ (##car _e3491735563_)))
                                   (if (gx#stx-null? _tl3491935568_)
                                       (if (gx#stx-null? _tl3491335552_)
                                           (___kont4276042761_
                                            _hd3491835566_
                                            _hd3488535857_
                                            _hd3488235849_)
                                           (___kont4277042771_))
                                       (___kont4277042771_))))
                               (___kont4277042771_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3491535558_)
                               (if (gx#stx-pair? _tl3491635560_)
                                   (let ((_e3497735359_
                                          (gx#stx-e _tl3491635560_)))
                                     (let ((_tl3497935364_
                                            (##cdr _e3497735359_))
                                           (_hd3497835362_
                                            (##car _e3497735359_)))
                                       (if (gx#stx-null? _tl3497935364_)
                                           (if (gx#stx-null? _tl3491335552_)
                                               (___kont4276442765_
                                                _hd3497835362_
                                                _hd3489135873_
                                                _hd3488235849_)
                                               (___kont4277042771_))
                                           (___kont4277042771_))))
                                   (___kont4277042771_))
                               (___kont4277042771_)))
                       (___kont4277042771_))))
               (___kont4277042771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4277042771_)))
                                       (if (gx#stx-pair? _tl3488635859_)
                                           (let ((_e3491135547_
                                                  (gx#stx-e _tl3488635859_)))
                                             (let ((_tl3491335552_
                                                    (##cdr _e3491135547_))
                                                   (_hd3491235550_
                                                    (##car _e3491135547_)))
                                               (if (gx#stx-pair?
                                                    _hd3491235550_)
                                                   (let ((_e3491435555_
                                                          (gx#stx-e
                                                           _hd3491235550_)))
                                                     (let ((_tl3491635560_
                                                            (##cdr _e3491435555_))
                                                           (_hd3491535558_
                                                            (##car _e3491435555_)))
                                                       (if (gx#identifier?
                                                            _hd3491535558_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3491535558_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3491635560_)
                           (let ((_e3491735563_ (gx#stx-e _tl3491635560_)))
                             (let ((_tl3491935568_ (##cdr _e3491735563_))
                                   (_hd3491835566_ (##car _e3491735563_)))
                               (if (gx#stx-null? _tl3491935568_)
                                   (if (gx#stx-null? _tl3491335552_)
                                       (___kont4276042761_
                                        _hd3491835566_
                                        _hd3488535857_
                                        _hd3488235849_)
                                       (___kont4277042771_))
                                   (___kont4277042771_))))
                           (___kont4277042771_))
                       (___kont4277042771_))
                   (___kont4277042771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4277042771_))))
                                           (___kont4277042771_)))))
                               (if (gx#stx-pair? _tl3488635859_)
                                   (let ((_e3491135547_
                                          (gx#stx-e _tl3488635859_)))
                                     (let ((_tl3491335552_
                                            (##cdr _e3491135547_))
                                           (_hd3491235550_
                                            (##car _e3491135547_)))
                                       (if (gx#stx-pair? _hd3491235550_)
                                           (let ((_e3491435555_
                                                  (gx#stx-e _hd3491235550_)))
                                             (let ((_tl3491635560_
                                                    (##cdr _e3491435555_))
                                                   (_hd3491535558_
                                                    (##car _e3491435555_)))
                                               (if (gx#identifier?
                                                    _hd3491535558_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3491535558_)
                                                       (if (gx#stx-pair?
                                                            _tl3491635560_)
                                                           (let ((_e3491735563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3491635560_)))
                     (let ((_tl3491935568_ (##cdr _e3491735563_))
                           (_hd3491835566_ (##car _e3491735563_)))
                       (if (gx#stx-null? _tl3491935568_)
                           (if (gx#stx-null? _tl3491335552_)
                               (___kont4276042761_
                                _hd3491835566_
                                _hd3488535857_
                                _hd3488235849_)
                               (___kont4277042771_))
                           (___kont4277042771_))))
                   (___kont4277042771_))
               (___kont4277042771_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4277042771_))))
                                           (___kont4277042771_))))
                                   (___kont4277042771_)))
                           (if (gx#stx-pair? _tl3488635859_)
                               (let ((_e3491135547_ (gx#stx-e _tl3488635859_)))
                                 (let ((_tl3491335552_ (##cdr _e3491135547_))
                                       (_hd3491235550_ (##car _e3491135547_)))
                                   (if (gx#stx-pair? _hd3491235550_)
                                       (let ((_e3491435555_
                                              (gx#stx-e _hd3491235550_)))
                                         (let ((_tl3491635560_
                                                (##cdr _e3491435555_))
                                               (_hd3491535558_
                                                (##car _e3491435555_)))
                                           (if (gx#identifier? _hd3491535558_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3491535558_)
                                                   (if (gx#stx-pair?
                                                        _tl3491635560_)
                                                       (let ((_e3491735563_
                                                              (gx#stx-e
                                                               _tl3491635560_)))
                                                         (let ((_tl3491935568_
                                                                (##cdr _e3491735563_))
                                                               (_hd3491835566_
                                                                (##car _e3491735563_)))
                                                           (if (gx#stx-null?
                                                                _tl3491935568_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3491335552_)
                           (___kont4276042761_
                            _hd3491835566_
                            _hd3488535857_
                            _hd3488235849_)
                           (if (gx#stx-eq? '%#quote _hd3488835865_)
                               (if (gx#stx-pair? _tl3488935867_)
                                   (let ((_e3494135459_
                                          (gx#stx-e _tl3488935867_)))
                                     (let ((_tl3494335464_
                                            (##cdr _e3494135459_))
                                           (_hd3494235462_
                                            (##car _e3494135459_)))
                                       (___kont4277042771_)))
                                   (___kont4277042771_))
                               (if (gx#stx-eq? '%#quote-syntax _hd3488835865_)
                                   (if (gx#stx-pair? _tl3488935867_)
                                       (let ((_e3500135219_
                                              (gx#stx-e _tl3488935867_)))
                                         (let ((_tl3500335224_
                                                (##cdr _e3500135219_))
                                               (_hd3500235222_
                                                (##car _e3500135219_)))
                                           (___kont4277042771_)))
                                       (___kont4277042771_))
                                   (___kont4277042771_))))
                       (if (gx#stx-eq? '%#quote _hd3488835865_)
                           (if (gx#stx-pair? _tl3488935867_)
                               (let ((_e3494135459_ (gx#stx-e _tl3488935867_)))
                                 (let ((_tl3494335464_ (##cdr _e3494135459_))
                                       (_hd3494235462_ (##car _e3494135459_)))
                                   (if (gx#stx-null? _tl3494335464_)
                                       (if (gx#stx-null? _tl3491335552_)
                                           (___kont4276242763_
                                            _hd3491235550_
                                            _hd3494235462_
                                            _hd3488235849_)
                                           (___kont4277042771_))
                                       (___kont4277042771_))))
                               (___kont4277042771_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3488835865_)
                               (if (gx#stx-pair? _tl3488935867_)
                                   (let ((_e3500135219_
                                          (gx#stx-e _tl3488935867_)))
                                     (let ((_tl3500335224_
                                            (##cdr _e3500135219_))
                                           (_hd3500235222_
                                            (##car _e3500135219_)))
                                       (___kont4277042771_)))
                                   (___kont4277042771_))
                               (___kont4277042771_))))))
               (if (gx#stx-eq? '%#quote _hd3488835865_)
                   (if (gx#stx-pair? _tl3488935867_)
                       (let ((_e3494135459_ (gx#stx-e _tl3488935867_)))
                         (let ((_tl3494335464_ (##cdr _e3494135459_))
                               (_hd3494235462_ (##car _e3494135459_)))
                           (if (gx#stx-null? _tl3494335464_)
                               (if (gx#stx-null? _tl3491335552_)
                                   (___kont4276242763_
                                    _hd3491235550_
                                    _hd3494235462_
                                    _hd3488235849_)
                                   (___kont4277042771_))
                               (___kont4277042771_))))
                       (___kont4277042771_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3488835865_)
                       (if (gx#stx-pair? _tl3488935867_)
                           (let ((_e3500135219_ (gx#stx-e _tl3488935867_)))
                             (let ((_tl3500335224_ (##cdr _e3500135219_))
                                   (_hd3500235222_ (##car _e3500135219_)))
                               (___kont4277042771_)))
                           (___kont4277042771_))
                       (___kont4277042771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3488835865_)
                                                       (if (gx#stx-pair?
                                                            _tl3488935867_)
                                                           (let ((_e3494135459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3488935867_)))
                     (let ((_tl3494335464_ (##cdr _e3494135459_))
                           (_hd3494235462_ (##car _e3494135459_)))
                       (if (gx#stx-null? _tl3494335464_)
                           (if (gx#stx-null? _tl3491335552_)
                               (___kont4276242763_
                                _hd3491235550_
                                _hd3494235462_
                                _hd3488235849_)
                               (___kont4277042771_))
                           (___kont4277042771_))))
                   (___kont4277042771_))
               (if (gx#stx-eq? '%#quote-syntax _hd3488835865_)
                   (if (gx#stx-pair? _tl3488935867_)
                       (let ((_e3500135219_ (gx#stx-e _tl3488935867_)))
                         (let ((_tl3500335224_ (##cdr _e3500135219_))
                               (_hd3500235222_ (##car _e3500135219_)))
                           (if (gx#stx-null? _tl3500335224_)
                               (if (gx#stx-eq? '%#ref _hd3491535558_)
                                   (if (gx#stx-pair? _tl3491635560_)
                                       (let ((_e3501035243_
                                              (gx#stx-e _tl3491635560_)))
                                         (let ((_tl3501235248_
                                                (##cdr _e3501035243_))
                                               (_hd3501135246_
                                                (##car _e3501035243_)))
                                           (if (gx#stx-null? _tl3501235248_)
                                               (if (gx#stx-null?
                                                    _tl3491335552_)
                                                   (___kont4276642767_
                                                    _hd3501135246_
                                                    _hd3500235222_
                                                    _hd3488235849_)
                                                   (___kont4277042771_))
                                               (___kont4277042771_))))
                                       (___kont4277042771_))
                                   (___kont4277042771_))
                               (___kont4277042771_))))
                       (___kont4277042771_))
                   (___kont4277042771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3488835865_)
                                                   (if (gx#stx-pair?
                                                        _tl3488935867_)
                                                       (let ((_e3494135459_
                                                              (gx#stx-e
                                                               _tl3488935867_)))
                                                         (let ((_tl3494335464_
                                                                (##cdr _e3494135459_))
                                                               (_hd3494235462_
                                                                (##car _e3494135459_)))
                                                           (if (gx#stx-null?
                                                                _tl3494335464_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3491335552_)
                           (___kont4276242763_
                            _hd3491235550_
                            _hd3494235462_
                            _hd3488235849_)
                           (___kont4277042771_))
                       (___kont4277042771_))))
               (___kont4277042771_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3488835865_)
                                                       (if (gx#stx-pair?
                                                            _tl3488935867_)
                                                           (let ((_e3500135219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3488935867_)))
                     (let ((_tl3500335224_ (##cdr _e3500135219_))
                           (_hd3500235222_ (##car _e3500135219_)))
                       (___kont4277042771_)))
                   (___kont4277042771_))
               (___kont4277042771_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-eq? '%#quote _hd3488835865_)
                                           (if (gx#stx-pair? _tl3488935867_)
                                               (let ((_e3494135459_
                                                      (gx#stx-e
                                                       _tl3488935867_)))
                                                 (let ((_tl3494335464_
                                                        (##cdr _e3494135459_))
                                                       (_hd3494235462_
                                                        (##car _e3494135459_)))
                                                   (if (gx#stx-null?
                                                        _tl3494335464_)
                                                       (if (gx#stx-null?
                                                            _tl3491335552_)
                                                           (___kont4276242763_
                                                            _hd3491235550_
                                                            _hd3494235462_
                                                            _hd3488235849_)
                                                           (___kont4277042771_))
                                                       (___kont4277042771_))))
                                               (___kont4277042771_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3488835865_)
                                               (if (gx#stx-pair?
                                                    _tl3488935867_)
                                                   (let ((_e3500135219_
                                                          (gx#stx-e
                                                           _tl3488935867_)))
                                                     (let ((_tl3500335224_
                                                            (##cdr _e3500135219_))
                                                           (_hd3500235222_
                                                            (##car _e3500135219_)))
                                                       (___kont4277042771_)))
                                                   (___kont4277042771_))
                                               (___kont4277042771_))))))
                               (if (gx#stx-eq? '%#quote _hd3488835865_)
                                   (if (gx#stx-pair? _tl3488935867_)
                                       (let ((_e3494135459_
                                              (gx#stx-e _tl3488935867_)))
                                         (let ((_tl3494335464_
                                                (##cdr _e3494135459_))
                                               (_hd3494235462_
                                                (##car _e3494135459_)))
                                           (___kont4277042771_)))
                                       (___kont4277042771_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3488835865_)
                                       (if (gx#stx-pair? _tl3488935867_)
                                           (let ((_e3500135219_
                                                  (gx#stx-e _tl3488935867_)))
                                             (let ((_tl3500335224_
                                                    (##cdr _e3500135219_))
                                                   (_hd3500235222_
                                                    (##car _e3500135219_)))
                                               (___kont4277042771_)))
                                           (___kont4277042771_))
                                       (___kont4277042771_)))))
                       (if (gx#stx-pair? _tl3488635859_)
                           (let ((_e3491135547_ (gx#stx-e _tl3488635859_)))
                             (let ((_tl3491335552_ (##cdr _e3491135547_))
                                   (_hd3491235550_ (##car _e3491135547_)))
                               (if (gx#stx-pair? _hd3491235550_)
                                   (let ((_e3491435555_
                                          (gx#stx-e _hd3491235550_)))
                                     (let ((_tl3491635560_
                                            (##cdr _e3491435555_))
                                           (_hd3491535558_
                                            (##car _e3491435555_)))
                                       (if (gx#identifier? _hd3491535558_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3491535558_)
                                               (if (gx#stx-pair?
                                                    _tl3491635560_)
                                                   (let ((_e3491735563_
                                                          (gx#stx-e
                                                           _tl3491635560_)))
                                                     (let ((_tl3491935568_
                                                            (##cdr _e3491735563_))
                                                           (_hd3491835566_
                                                            (##car _e3491735563_)))
                                                       (if (gx#stx-null?
                                                            _tl3491935568_)
                                                           (if (gx#stx-null?
                                                                _tl3491335552_)
                                                               (___kont4276042761_
                                                                _hd3491835566_
                                                                _hd3488535857_
                                                                _hd3488235849_)
                                                               (___kont4277042771_))
                                                           (___kont4277042771_))))
                                                   (___kont4277042771_))
                                               (___kont4277042771_))
                                           (___kont4277042771_))))
                                   (___kont4277042771_))))
                           (___kont4277042771_)))))
               (if (gx#stx-pair? _tl3488635859_)
                   (let ((_e3491135547_ (gx#stx-e _tl3488635859_)))
                     (let ((_tl3491335552_ (##cdr _e3491135547_))
                           (_hd3491235550_ (##car _e3491135547_)))
                       (if (gx#stx-pair? _hd3491235550_)
                           (let ((_e3491435555_ (gx#stx-e _hd3491235550_)))
                             (let ((_tl3491635560_ (##cdr _e3491435555_))
                                   (_hd3491535558_ (##car _e3491435555_)))
                               (if (gx#identifier? _hd3491535558_)
                                   (if (gx#stx-eq? '%#quote _hd3491535558_)
                                       (if (gx#stx-pair? _tl3491635560_)
                                           (let ((_e3491735563_
                                                  (gx#stx-e _tl3491635560_)))
                                             (let ((_tl3491935568_
                                                    (##cdr _e3491735563_))
                                                   (_hd3491835566_
                                                    (##car _e3491735563_)))
                                               (if (gx#stx-null?
                                                    _tl3491935568_)
                                                   (if (gx#stx-null?
                                                        _tl3491335552_)
                                                       (___kont4276042761_
                                                        _hd3491835566_
                                                        _hd3488535857_
                                                        _hd3488235849_)
                                                       (___kont4277042771_))
                                                   (___kont4277042771_))))
                                           (___kont4277042771_))
                                       (___kont4277042771_))
                                   (___kont4277042771_))))
                           (___kont4277042771_))))
                   (___kont4277042771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4277042771_))
                                           (___kont4277042771_))))
                                   (___kont4277042771_))
                               (if (gx#stx-eq? '%#lambda _hd3487935841_)
                                   (if (gx#stx-pair? _tl3488035843_)
                                       (let ((_e3502535083_
                                              (gx#stx-e _tl3488035843_)))
                                         (let ((_tl3502735088_
                                                (##cdr _e3502535083_))
                                               (_hd3502635086_
                                                (##car _e3502535083_)))
                                           (if (gx#stx-pair? _hd3502635086_)
                                               (let ((_e3502835091_
                                                      (gx#stx-e
                                                       _hd3502635086_)))
                                                 (let ((_tl3503035096_
                                                        (##cdr _e3502835091_))
                                                       (_hd3502935094_
                                                        (##car _e3502835091_)))
                                                   (if (gx#stx-null?
                                                        _tl3503035096_)
                                                       (if (gx#stx-pair?
                                                            _tl3502735088_)
                                                           (let ((_e3503135099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3502735088_)))
                     (let ((_tl3503335104_ (##cdr _e3503135099_))
                           (_hd3503235102_ (##car _e3503135099_)))
                       (if (gx#stx-null? _tl3503335104_)
                           (if (gx#stx-pair? _tl3487735835_)
                               (let ((_e3503435107_ (gx#stx-e _tl3487735835_)))
                                 (let ((_tl3503635112_ (##cdr _e3503435107_))
                                       (_hd3503535110_ (##car _e3503435107_)))
                                   (if (gx#stx-pair? _hd3503535110_)
                                       (let ((_e3503735115_
                                              (gx#stx-e _hd3503535110_)))
                                         (let ((_tl3503935120_
                                                (##cdr _e3503735115_))
                                               (_hd3503835118_
                                                (##car _e3503735115_)))
                                           (if (gx#identifier? _hd3503835118_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd3503835118_)
                                                   (if (gx#stx-pair?
                                                        _tl3503935120_)
                                                       (let ((_e3504035123_
                                                              (gx#stx-e
                                                               _tl3503935120_)))
                                                         (let ((_tl3504235128_
                                                                (##cdr _e3504035123_))
                                                               (_hd3504135126_
                                                                (##car _e3504035123_)))
                                                           (if (gx#stx-null?
                                                                _tl3504235128_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3503635112_)
                           (___kont4276842769_
                            _hd3504135126_
                            _hd3503235102_
                            _hd3502935094_)
                           (___kont4277042771_))
                       (___kont4277042771_))))
               (___kont4277042771_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4277042771_))
                                               (___kont4277042771_))))
                                       (___kont4277042771_))))
                               (___kont4277042771_))
                           (___kont4277042771_))))
                   (___kont4277042771_))
               (___kont4277042771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4277042771_))))
                                       (___kont4277042771_))
                                   (___kont4277042771_)))
                           (___kont4277042771_))))
                   (___kont4277042771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4277042771_))
                                               (___kont4277042771_))
                                           (___kont4277042771_))))
                                   (___kont4277042771_)))))))))
                (_assert-type33844_
                 (lambda (_id34743_ _t34744_)
                   (letrec ((_super-e34746_
                             (lambda (_t34843_)
                               (let ((_tid3484434846_
                                      (##structure-ref
                                       _t34843_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                 (if _tid3484434846_
                                     (let ((_tid34849_ _tid3484434846_))
                                       (gxc#optimizer-resolve-type _tid34849_))
                                     '#f)))))
                     (let _lp34748_ ((_rest34750_ _env-type33826_))
                       (let* ((_rest3475134759_ _rest34750_)
                              (_else3475334767_ (lambda () '#!void))
                              (_K3475534831_
                               (lambda (_rest34770_ _type-info34771_)
                                 (let* ((_type-info3477234784_
                                         _type-info34771_)
                                        (_else3477434792_
                                         (lambda () (_lp34748_ _rest34770_)))
                                        (_K3477634807_
                                         (lambda (_val34795_
                                                  _xt34796_
                                                  _xid34797_)
                                           (if (gx#free-identifier=?
                                                _id34743_
                                                _xid34797_)
                                               (if (eq? _t34744_ _xt34796_)
                                                   _val34795_
                                                   (if _val34795_
                                                       (if (if (##structure-instance-of?
                                                                _t34744_
                                                                'gxc#!struct-type::t)
                                                               (##structure-instance-of?
                                                                _xt34796_
                                                                'gxc#!struct-type::t)
                                                               '#f)
                                                           (let _subtype?34799_ ((_xt34801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          (_super-e34746_ _xt34796_)))
                     (if (not _xt34801_)
                         '#f
                         (if (eq? _xt34801_ _t34744_)
                             '#t
                             (_subtype?34799_ (_super-e34746_ _xt34801_)))))
                   '#f)
               (if (if (##structure-instance-of? _t34744_ 'gxc#!struct-type::t)
                       (##structure-instance-of?
                        _xt34796_
                        'gxc#!struct-type::t)
                       '#f)
                   (let _supertype?34803_ ((_t34805_
                                            (_super-e34746_ _t34744_)))
                     (if (not _t34805_)
                         (_lp34748_ _rest34770_)
                         (if (eq? _t34805_ _xt34796_)
                             '#f
                             (_supertype?34803_ (_super-e34746_ _t34805_)))))
                   (_lp34748_ _rest34770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp34748_ _rest34770_)))))
                                   (if (##pair? _type-info3477234784_)
                                       (let ((_hd3477734810_
                                              (##car _type-info3477234784_))
                                             (_tl3477834812_
                                              (##cdr _type-info3477234784_)))
                                         (let ((_xid34815_ _hd3477734810_))
                                           (if (##pair? _tl3477834812_)
                                               (let ((_hd3477934817_
                                                      (##car _tl3477834812_))
                                                     (_tl3478034819_
                                                      (##cdr _tl3477834812_)))
                                                 (let ((_xt34822_
                                                        _hd3477934817_))
                                                   (if (##pair? _tl3478034819_)
                                                       (let ((_hd3478134824_
                                                              (##car _tl3478034819_))
                                                             (_tl3478234826_
                                                              (##cdr _tl3478034819_)))
                                                         (let ((_val34829_
                                                                _hd3478134824_))
                                                           (if (##null? _tl3478234826_)
                                                               (_K3477634807_
                                                                _val34829_
                                                                _xt34822_
                                                                _xid34815_)
                                                               (_else3477434792_))))
                                                       (_else3477434792_))))
                                               (_else3477434792_))))
                                       (_else3477434792_))))))
                         (if (##pair? _rest3475134759_)
                             (let ((_hd3475634834_ (##car _rest3475134759_))
                                   (_tl3475734836_ (##cdr _rest3475134759_)))
                               (let* ((_type-info34839_ _hd3475634834_)
                                      (_rest34841_ _tl3475734836_))
                                 (_K3475534831_ _rest34841_ _type-info34839_)))
                             (_else3475334767_)))))))
                (_assert-count33845_
                 (lambda (_id34642_ _sym34643_ _count34644_)
                   (let _lp34646_ ((_rest34648_ _env-type33826_))
                     (let* ((_rest3464934657_ _rest34648_)
                            (_else3465134665_ (lambda () '#!void))
                            (_K3465334731_
                             (lambda (_rest34668_ _type-info34669_)
                               (let* ((_type-info3467034684_ _type-info34669_)
                                      (_else3467234692_
                                       (lambda () (_lp34646_ _rest34668_)))
                                      (_K3467434700_
                                       (lambda (_val34695_
                                                _xcount34696_
                                                _xsym34697_
                                                _xid34698_)
                                         (if (if (eq? _sym34643_ _xsym34697_)
                                                 (gx#free-identifier=?
                                                  _id34642_
                                                  _xid34698_)
                                                 '#f)
                                             (if _val34695_
                                                 (fx= _count34644_
                                                      _xcount34696_)
                                                 (if (fx= _count34644_
                                                          _xcount34696_)
                                                     '#f
                                                     (_lp34646_ _rest34668_)))
                                             (_lp34646_ _rest34668_)))))
                                 (if (##pair? _type-info3467034684_)
                                     (let ((_hd3467534703_
                                            (##car _type-info3467034684_))
                                           (_tl3467634705_
                                            (##cdr _type-info3467034684_)))
                                       (let ((_xid34708_ _hd3467534703_))
                                         (if (##pair? _tl3467634705_)
                                             (let ((_hd3467734710_
                                                    (##car _tl3467634705_))
                                                   (_tl3467834712_
                                                    (##cdr _tl3467634705_)))
                                               (let ((_xsym34715_
                                                      _hd3467734710_))
                                                 (if (##pair? _tl3467834712_)
                                                     (let ((_hd3467934717_
                                                            (##car _tl3467834712_))
                                                           (_tl3468034719_
                                                            (##cdr _tl3467834712_)))
                                                       (let ((_xcount34722_
                                                              _hd3467934717_))
                                                         (if (##pair? _tl3468034719_)
                                                             (let ((_hd3468134724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl3468034719_))
                           (_tl3468234726_ (##cdr _tl3468034719_)))
                       (let ((_val34729_ _hd3468134724_))
                         (if (##null? _tl3468234726_)
                             (_K3467434700_
                              _val34729_
                              _xcount34722_
                              _xsym34715_
                              _xid34708_)
                             (_else3467234692_))))
                     (_else3467234692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else3467234692_))))
                                             (_else3467234692_))))
                                     (_else3467234692_))))))
                       (if (##pair? _rest3464934657_)
                           (let ((_hd3465434734_ (##car _rest3464934657_))
                                 (_tl3465534736_ (##cdr _rest3464934657_)))
                             (let* ((_type-info34739_ _hd3465434734_)
                                    (_rest34741_ _tl3465534736_))
                               (_K3465334731_ _rest34741_ _type-info34739_)))
                           (_else3465134665_))))))
                (_assert-eqf33846_
                 (lambda (_id34532_ _sym34533_ _datum34534_)
                   (letrec ((_eqf34536_
                             (lambda (_sym34637_)
                               (let ((_$e34639_ _sym34637_))
                                 (if (eq? 'eq? _$e34639_)
                                     eq?
                                     (if (eq? 'eqv? _$e34639_)
                                         eqv?
                                         (if (eq? 'equal? _$e34639_)
                                             equal?
                                             (if (eq? 'free-identifier=?
                                                      _$e34639_)
                                                 gx#free-identifier=?
                                                 (if (eq? 'stx-eq? _$e34639_)
                                                     gx#stx-eq?
                                                     (gxc#raise-compile-error
                                                      '"Unexpected eqf symbol"
                                                      _body33587_
                                                      _sym34637_))))))))))
                     (let _lp34538_ ((_rest34540_ _env-type33826_))
                       (let* ((_rest3454134549_ _rest34540_)
                              (_else3454334557_ (lambda () '#!void))
                              (_K3454534625_
                               (lambda (_rest34560_ _type-info34561_)
                                 (let* ((_type-info3456234576_
                                         _type-info34561_)
                                        (_else3456434584_
                                         (lambda () (_lp34538_ _rest34560_)))
                                        (_K3456634594_
                                         (lambda (_val34587_
                                                  _xdatum34588_
                                                  _xsym34589_
                                                  _xid34590_)
                                           (if (if (eq? _sym34533_ _xsym34589_)
                                                   (gx#free-identifier=?
                                                    _id34532_
                                                    _xid34590_)
                                                   '#f)
                                               (let ((_=?34592_
                                                      (_eqf34536_ _sym34533_)))
                                                 (if _val34587_
                                                     (_=?34592_
                                                      _datum34534_
                                                      _xdatum34588_)
                                                     (if (_=?34592_
                                                          _datum34534_
                                                          _xdatum34588_)
                                                         '#f
                                                         (_lp34538_
                                                          _rest34560_))))
                                               (_lp34538_ _rest34560_)))))
                                   (if (##pair? _type-info3456234576_)
                                       (let ((_hd3456734597_
                                              (##car _type-info3456234576_))
                                             (_tl3456834599_
                                              (##cdr _type-info3456234576_)))
                                         (let ((_xid34602_ _hd3456734597_))
                                           (if (##pair? _tl3456834599_)
                                               (let ((_hd3456934604_
                                                      (##car _tl3456834599_))
                                                     (_tl3457034606_
                                                      (##cdr _tl3456834599_)))
                                                 (let ((_xsym34609_
                                                        _hd3456934604_))
                                                   (if (##pair? _tl3457034606_)
                                                       (let ((_hd3457134611_
                                                              (##car _tl3457034606_))
                                                             (_tl3457234613_
                                                              (##cdr _tl3457034606_)))
                                                         (let ((_xdatum34616_
                                                                _hd3457134611_))
                                                           (if (##pair? _tl3457234613_)
                                                               (let ((_hd3457334618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _tl3457234613_))
                             (_tl3457434620_ (##cdr _tl3457234613_)))
                         (let ((_val34623_ _hd3457334618_))
                           (if (##null? _tl3457434620_)
                               (_K3456634594_
                                _val34623_
                                _xdatum34616_
                                _xsym34609_
                                _xid34602_)
                               (_else3456434584_))))
                       (_else3456434584_))))
               (_else3456434584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else3456434584_))))
                                       (_else3456434584_))))))
                         (if (##pair? _rest3454134549_)
                             (let ((_hd3454634628_ (##car _rest3454134549_))
                                   (_tl3454734630_ (##cdr _rest3454134549_)))
                               (let* ((_type-info34633_ _hd3454634628_)
                                      (_rest34635_ _tl3454734630_))
                                 (_K3454534625_ _rest34635_ _type-info34633_)))
                             (_else3454334557_)))))))
                (_bind-e__4116941170_
                 (lambda (_bind34435_ _body34436_ _continue34437_)
                   (let _lp34439_ ((_rest34441_ _bind34435_)
                                   (_subst34442_ '())
                                   (_locals34443_ '())
                                   (_env34444_ _env-bind33827_))
                     (let* ((_rest3444534453_ _rest34441_)
                            (_else3444734467_
                             (lambda ()
                               (let* ((_body34461_
                                       (if (null? _subst34442_)
                                           _body34436_
                                           (gxc#apply-expression-subst*
                                            _body34436_
                                            _subst34442_)))
                                      (_body34464_
                                       (_do-bind!33838_
                                        _env34444_
                                        (lambda ()
                                          (_continue34437_ _body34461_)))))
                                 (if (null? _locals34443_)
                                     _body34464_
                                     (cons '%#let-values
                                           (cons _locals34443_
                                                 (cons _body34464_ '())))))))
                            (_K3444934508_
                             (lambda (_rest34470_ _bind34471_)
                               (let* ((_bind3447234479_ _bind34471_)
                                      (_E3447434483_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3447234479_)))
                                      (_K3447534496_
                                       (lambda (_expr34486_ _id34487_)
                                         (let* ((_sexpr34489_
                                                 (gxc#apply-generate-runtime-repr
                                                  _expr34486_))
                                                (_$e34491_
                                                 (assget _sexpr34489_
                                                         _env-bind33827_)))
                                           (if _$e34491_
                                               ((lambda (_xid34494_)
                                                  (_lp34439_
                                                   _rest34470_
                                                   (cons (cons _id34487_
                                                               _xid34494_)
                                                         _subst34442_)
                                                   _locals34443_
                                                   _env34444_))
                                                _$e34491_)
                                               (_lp34439_
                                                _rest34470_
                                                _subst34442_
                                                (cons (cons (cons _id34487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr34486_ '()))
              _locals34443_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _sexpr34489_
                                                            _id34487_)
                                                      _env34444_)))))))
                                 (if (##pair? _bind3447234479_)
                                     (let ((_hd3447634499_
                                            (##car _bind3447234479_))
                                           (_tl3447734501_
                                            (##cdr _bind3447234479_)))
                                       (let* ((_id34504_ _hd3447634499_)
                                              (_expr34506_ _tl3447734501_))
                                         (_K3447534496_
                                          _expr34506_
                                          _id34504_)))
                                     (_E3447434483_))))))
                       (if (##pair? _rest3444534453_)
                           (let ((_hd3445034511_ (##car _rest3444534453_))
                                 (_tl3445134513_ (##cdr _rest3444534453_)))
                             (let* ((_bind34516_ _hd3445034511_)
                                    (_rest34518_ _tl3445134513_))
                               (_K3444934508_ _rest34518_ _bind34516_)))
                           (_else3444734467_))))))
                (_bind-e__0__4117141172_
                 (lambda (_bind34523_ _body34524_)
                   (let ((_continue34526_ _optimize-e33840_))
                     (_bind-e__4116941170_
                      _bind34523_
                      _body34524_
                      _continue34526_))))
                (_bind-e33847_
                 (lambda _g44268_
                   (let ((_g44267_ (length _g44268_)))
                     (cond ((##fx= _g44267_ 2)
                            (apply _bind-e__0__4117141172_ _g44268_))
                           ((##fx= _g44267_ 3)
                            (apply _bind-e__4116941170_ _g44268_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g44268_))))))
                (_lookup-block33848_
                 (lambda (_id34430_)
                   (find (lambda (_block34432_)
                           (gx#free-identifier=? (car _block34432_) _id34430_))
                         _blocks33590_)))
                (_inline-block33849_
                 (lambda (_block34306_ _args34307_)
                   (let* ((_kont34309_ (caddr _block34306_))
                          (_g3431134337_
                           (lambda (_g3431234334_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3431234334_)))
                          (_g3431034427_
                           (lambda (_g3431234340_)
                             (if (gx#stx-pair? _g3431234340_)
                                 (let ((_e3431534342_
                                        (gx#stx-e _g3431234340_)))
                                   (let ((_hd3431634345_ (##car _e3431534342_))
                                         (_tl3431734347_
                                          (##cdr _e3431534342_)))
                                     (if (gx#identifier? _hd3431634345_)
                                         (if (gx#stx-eq?
                                              '%#lambda
                                              _hd3431634345_)
                                             (if (gx#stx-pair? _tl3431734347_)
                                                 (let ((_e3431834350_
                                                        (gx#stx-e
                                                         _tl3431734347_)))
                                                   (let ((_hd3431934353_
                                                          (##car _e3431834350_))
                                                         (_tl3432034355_
                                                          (##cdr _e3431834350_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd3431934353_)
                                                         (let ((_g44269_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3431934353_
                         '0)))
                   (begin
                     (let ((_g44270_
                            (if (##values? _g44269_)
                                (##vector-length _g44269_)
                                1)))
                       (if (not (##fx= _g44270_ 2))
                           (error "Context expects 2 values" _g44270_)))
                     (let ((_target3432134358_ (##vector-ref _g44269_ 0))
                           (_tl3432334360_ (##vector-ref _g44269_ 1)))
                       (if (gx#stx-null? _tl3432334360_)
                           (letrec ((_loop3432434363_
                                     (lambda (_hd3432234366_ _id3432834368_)
                                       (if (gx#stx-pair? _hd3432234366_)
                                           (let ((_e3432534371_
                                                  (gx#stx-e _hd3432234366_)))
                                             (let ((_lp-hd3432634374_
                                                    (##car _e3432534371_))
                                                   (_lp-tl3432734376_
                                                    (##cdr _e3432534371_)))
                                               (_loop3432434363_
                                                _lp-tl3432734376_
                                                (cons _lp-hd3432634374_
                                                      _id3432834368_))))
                                           (let ((_id3432934379_
                                                  (reverse _id3432834368_)))
                                             (if (gx#stx-pair? _tl3432034355_)
                                                 (let ((_e3433034382_
                                                        (gx#stx-e
                                                         _tl3432034355_)))
                                                   (let ((_hd3433134385_
                                                          (##car _e3433034382_))
                                                         (_tl3433234387_
                                                          (##cdr _e3433034382_)))
                                                     (if (gx#stx-null?
                                                          _tl3433234387_)
                                                         ((lambda (_L34390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L34391_)
                    (if (null? (begin
                                 '#!void
                                 (foldr1 (lambda (_g3441034413_ _g3441134415_)
                                           (cons _g3441034413_ _g3441134415_))
                                         '()
                                         _L34391_)))
                        _L34390_
                        (let ((_subst34425_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3441734420_
                                                       _g3441834422_)
                                                (cons _g3441734420_
                                                      _g3441834422_))
                                              '()
                                              _L34391_))
                                    _args34307_)))
                          (gxc#apply-expression-subst*
                           _L34390_
                           _subst34425_))))
                  _hd3433134385_
                  _id3432934379_)
                 (_g3431134337_ _g3431234340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3431134337_
                                                  _g3431234340_)))))))
                             (_loop3432434363_ _target3432134358_ '()))
                           (_g3431134337_ _g3431234340_)))))
                 (_g3431134337_ _g3431234340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3431134337_ _g3431234340_))
                                             (_g3431134337_ _g3431234340_))
                                         (_g3431134337_ _g3431234340_))))
                                 (_g3431134337_ _g3431234340_)))))
                     (_g3431034427_ _kont34309_))))
                (_nonlinear-block?33850_
                 (lambda (_block33855_)
                   (letrec ((_nonlinear-expr?33857_
                             (lambda (_expr33965_)
                               (let* ((___stx4322643227_ _expr33965_)
                                      (_g3397134037_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4322643227_))))
                                 (let ((___kont4322843229_ (lambda () '#t))
                                       (___kont4323043231_
                                        (lambda (_L34236_)
                                          (let* ((___stx4320843209_ _L34236_)
                                                 (_g3425434263_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx4320843209_))))
                                            (let ((___kont4321043211_
                                                   (lambda () '#f))
                                                  (___kont4321243213_
                                                   (lambda () '#t)))
                                              (if (gx#stx-pair?
                                                   ___stx4320843209_)
                                                  (let ((_e3425634275_
                                                         (gx#stx-e
                                                          ___stx4320843209_)))
                                                    (let ((_tl3425834280_
                                                           (##cdr _e3425634275_))
                                                          (_hd3425734278_
                                                           (##car _e3425634275_)))
                                                      (if (gx#identifier?
                                                           _hd3425734278_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd3425734278_)
                                                              (___kont4321043211_)
                                                              (___kont4321243213_))
                                                          (___kont4321243213_))))
                                                  (___kont4321243213_))))))
                                       (___kont4323443235_
                                        (lambda (_L34134_)
                                          (_nonlinear-expr?33857_ _L34134_)))
                                       (___kont4323643237_
                                        (lambda (_L34081_ _L34082_ _L34083_)
                                          (let ((_$e34102_
                                                 (_nonlinear-expr?33857_
                                                  _L34082_)))
                                            (if _$e34102_
                                                _$e34102_
                                                (_nonlinear-expr?33857_
                                                 _L34081_)))))
                                       (___kont4323843239_ (lambda () '#f)))
                                   (let* ((___match4328943290_
                                           (lambda (_e3400934110_
                                                    _hd3401034113_
                                                    _tl3401134115_
                                                    _e3401234118_
                                                    _hd3401334121_
                                                    _tl3401434123_)
                                             (if (gx#stx-pair? _tl3401434123_)
                                                 (let ((_e3401534126_
                                                        (gx#stx-e
                                                         _tl3401434123_)))
                                                   (let ((_tl3401734131_
                                                          (##cdr _e3401534126_))
                                                         (_hd3401634129_
                                                          (##car _e3401534126_)))
                                                     (if (gx#stx-null?
                                                          _tl3401734131_)
                                                         (___kont4323443235_
                                                          _hd3401634129_)
                                                         (___kont4323843239_))))
                                                 (___kont4323843239_))))
                                          (___match4327343274_
                                           (lambda (_e3397734152_
                                                    _hd3397834155_
                                                    _tl3397934157_
                                                    _e3398034160_
                                                    _hd3398134163_
                                                    _tl3398234165_
                                                    ___splice4323243233_
                                                    _target3398334168_
                                                    _tl3398534170_)
                                             (letrec ((_loop3398634173_
                                                       (lambda (_hd3398434176_)
                                                         (if (gx#stx-pair?
                                                              _hd3398434176_)
                                                             (let ((_e3398734179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3398434176_)))
                       (let ((_lp-tl3398934184_ (##cdr _e3398734179_))
                             (_lp-hd3398834182_ (##car _e3398734179_)))
                         (if (gx#stx-pair? _lp-hd3398834182_)
                             (let ((_e3399034187_
                                    (gx#stx-e _lp-hd3398834182_)))
                               (let ((_tl3399234192_ (##cdr _e3399034187_))
                                     (_hd3399134190_ (##car _e3399034187_)))
                                 (if (gx#stx-pair? _hd3399134190_)
                                     (let ((_e3399334195_
                                            (gx#stx-e _hd3399134190_)))
                                       (let ((_tl3399534200_
                                              (##cdr _e3399334195_))
                                             (_hd3399434198_
                                              (##car _e3399334195_)))
                                         (if (gx#stx-null? _tl3399534200_)
                                             (if (gx#stx-pair? _tl3399234192_)
                                                 (let ((_e3399634203_
                                                        (gx#stx-e
                                                         _tl3399234192_)))
                                                   (let ((_tl3399834208_
                                                          (##cdr _e3399634203_))
                                                         (_hd3399734206_
                                                          (##car _e3399634203_)))
                                                     (if (gx#stx-pair?
                                                          _hd3399734206_)
                                                         (let ((_e3399934211_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3399734206_)))
                   (let ((_tl3400134216_ (##cdr _e3399934211_))
                         (_hd3400034214_ (##car _e3399934211_)))
                     (if (gx#identifier? _hd3400034214_)
                         (if (gx#stx-eq? '%#ref _hd3400034214_)
                             (if (gx#stx-pair? _tl3400134216_)
                                 (let ((_e3400234219_
                                        (gx#stx-e _tl3400134216_)))
                                   (let ((_tl3400434224_ (##cdr _e3400234219_))
                                         (_hd3400334222_
                                          (##car _e3400234219_)))
                                     (if (gx#stx-null? _tl3400434224_)
                                         (if (gx#stx-null? _tl3399834208_)
                                             (_loop3398634173_
                                              _lp-tl3398934184_)
                                             (___match4328943290_
                                              _e3397734152_
                                              _hd3397834155_
                                              _tl3397934157_
                                              _e3398034160_
                                              _hd3398134163_
                                              _tl3398234165_))
                                         (___match4328943290_
                                          _e3397734152_
                                          _hd3397834155_
                                          _tl3397934157_
                                          _e3398034160_
                                          _hd3398134163_
                                          _tl3398234165_))))
                                 (___match4328943290_
                                  _e3397734152_
                                  _hd3397834155_
                                  _tl3397934157_
                                  _e3398034160_
                                  _hd3398134163_
                                  _tl3398234165_))
                             (___match4328943290_
                              _e3397734152_
                              _hd3397834155_
                              _tl3397934157_
                              _e3398034160_
                              _hd3398134163_
                              _tl3398234165_))
                         (___match4328943290_
                          _e3397734152_
                          _hd3397834155_
                          _tl3397934157_
                          _e3398034160_
                          _hd3398134163_
                          _tl3398234165_))))
                 (___match4328943290_
                  _e3397734152_
                  _hd3397834155_
                  _tl3397934157_
                  _e3398034160_
                  _hd3398134163_
                  _tl3398234165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___match4328943290_
                                                  _e3397734152_
                                                  _hd3397834155_
                                                  _tl3397934157_
                                                  _e3398034160_
                                                  _hd3398134163_
                                                  _tl3398234165_))
                                             (___match4328943290_
                                              _e3397734152_
                                              _hd3397834155_
                                              _tl3397934157_
                                              _e3398034160_
                                              _hd3398134163_
                                              _tl3398234165_))))
                                     (___match4328943290_
                                      _e3397734152_
                                      _hd3397834155_
                                      _tl3397934157_
                                      _e3398034160_
                                      _hd3398134163_
                                      _tl3398234165_))))
                             (___match4328943290_
                              _e3397734152_
                              _hd3397834155_
                              _tl3397934157_
                              _e3398034160_
                              _hd3398134163_
                              _tl3398234165_))))
                     (let ()
                       (if (gx#stx-pair? _tl3398234165_)
                           (let ((_e3400534228_ (gx#stx-e _tl3398234165_)))
                             (let ((_tl3400734233_ (##cdr _e3400534228_))
                                   (_hd3400634231_ (##car _e3400534228_)))
                               (if (gx#stx-null? _tl3400734233_)
                                   (___kont4323043231_ _hd3400634231_)
                                   (___kont4323843239_))))
                           (___kont4323843239_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop3398634173_
                                                _target3398334168_)))))
                                     (if (gx#stx-pair? ___stx4322643227_)
                                         (let ((_e3397334293_
                                                (gx#stx-e ___stx4322643227_)))
                                           (let ((_tl3397534298_
                                                  (##cdr _e3397334293_))
                                                 (_hd3397434296_
                                                  (##car _e3397334293_)))
                                             (if (gx#identifier?
                                                  _hd3397434296_)
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3397434296_)
                                                     (___kont4322843229_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _hd3397434296_)
                                                         (if (gx#stx-pair?
                                                              _tl3397534298_)
                                                             (let ((_e3398034160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3397534298_)))
                       (let ((_tl3398234165_ (##cdr _e3398034160_))
                             (_hd3398134163_ (##car _e3398034160_)))
                         (if (gx#stx-pair/null? _hd3398134163_)
                             (let ((___splice4323243233_
                                    (gx#syntax-split-splice
                                     _hd3398134163_
                                     '0)))
                               (let ((_tl3398534170_
                                      (##vector-ref ___splice4323243233_ '1))
                                     (_target3398334168_
                                      (##vector-ref ___splice4323243233_ '0)))
                                 (if (gx#stx-null? _tl3398534170_)
                                     (___match4327343274_
                                      _e3397334293_
                                      _hd3397434296_
                                      _tl3397534298_
                                      _e3398034160_
                                      _hd3398134163_
                                      _tl3398234165_
                                      ___splice4323243233_
                                      _target3398334168_
                                      _tl3398534170_)
                                     (if (gx#stx-pair? _tl3398234165_)
                                         (let ((_e3401534126_
                                                (gx#stx-e _tl3398234165_)))
                                           (let ((_tl3401734131_
                                                  (##cdr _e3401534126_))
                                                 (_hd3401634129_
                                                  (##car _e3401534126_)))
                                             (if (gx#stx-null? _tl3401734131_)
                                                 (___kont4323443235_
                                                  _hd3401634129_)
                                                 (___kont4323843239_))))
                                         (___kont4323843239_)))))
                             (if (gx#stx-pair? _tl3398234165_)
                                 (let ((_e3401534126_
                                        (gx#stx-e _tl3398234165_)))
                                   (let ((_tl3401734131_ (##cdr _e3401534126_))
                                         (_hd3401634129_
                                          (##car _e3401534126_)))
                                     (if (gx#stx-null? _tl3401734131_)
                                         (___kont4323443235_ _hd3401634129_)
                                         (___kont4323843239_))))
                                 (___kont4323843239_)))))
                     (___kont4323843239_))
                 (if (gx#stx-eq? '%#if _hd3397434296_)
                     (if (gx#stx-pair? _tl3397534298_)
                         (let ((_e3402434057_ (gx#stx-e _tl3397534298_)))
                           (let ((_tl3402634062_ (##cdr _e3402434057_))
                                 (_hd3402534060_ (##car _e3402434057_)))
                             (if (gx#stx-pair? _tl3402634062_)
                                 (let ((_e3402734065_
                                        (gx#stx-e _tl3402634062_)))
                                   (let ((_tl3402934070_ (##cdr _e3402734065_))
                                         (_hd3402834068_
                                          (##car _e3402734065_)))
                                     (if (gx#stx-pair? _tl3402934070_)
                                         (let ((_e3403034073_
                                                (gx#stx-e _tl3402934070_)))
                                           (let ((_tl3403234078_
                                                  (##cdr _e3403034073_))
                                                 (_hd3403134076_
                                                  (##car _e3403034073_)))
                                             (if (gx#stx-null? _tl3403234078_)
                                                 (___kont4323643237_
                                                  _hd3403134076_
                                                  _hd3402834068_
                                                  _hd3402534060_)
                                                 (___kont4323843239_))))
                                         (___kont4323843239_))))
                                 (___kont4323843239_))))
                         (___kont4323843239_))
                     (___kont4323843239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4323843239_))))
                                         (___kont4323843239_))))))))
                     (let* ((_kont33859_ (caddr _block33855_))
                            (_g3386133887_
                             (lambda (_g3386233884_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3386233884_)))
                            (_g3386033962_
                             (lambda (_g3386233890_)
                               (if (gx#stx-pair? _g3386233890_)
                                   (let ((_e3386533892_
                                          (gx#stx-e _g3386233890_)))
                                     (let ((_hd3386633895_
                                            (##car _e3386533892_))
                                           (_tl3386733897_
                                            (##cdr _e3386533892_)))
                                       (if (gx#identifier? _hd3386633895_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd3386633895_)
                                               (if (gx#stx-pair?
                                                    _tl3386733897_)
                                                   (let ((_e3386833900_
                                                          (gx#stx-e
                                                           _tl3386733897_)))
                                                     (let ((_hd3386933903_
                                                            (##car _e3386833900_))
                                                           (_tl3387033905_
                                                            (##cdr _e3386833900_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd3386933903_)
                                                           (let ((_g44271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd3386933903_ '0)))
                     (begin
                       (let ((_g44272_
                              (if (##values? _g44271_)
                                  (##vector-length _g44271_)
                                  1)))
                         (if (not (##fx= _g44272_ 2))
                             (error "Context expects 2 values" _g44272_)))
                       (let ((_target3387133908_ (##vector-ref _g44271_ 0))
                             (_tl3387333910_ (##vector-ref _g44271_ 1)))
                         (if (gx#stx-null? _tl3387333910_)
                             (letrec ((_loop3387433913_
                                       (lambda (_hd3387233916_ _id3387833918_)
                                         (if (gx#stx-pair? _hd3387233916_)
                                             (let ((_e3387533921_
                                                    (gx#stx-e _hd3387233916_)))
                                               (let ((_lp-hd3387633924_
                                                      (##car _e3387533921_))
                                                     (_lp-tl3387733926_
                                                      (##cdr _e3387533921_)))
                                                 (_loop3387433913_
                                                  _lp-tl3387733926_
                                                  (cons _lp-hd3387633924_
                                                        _id3387833918_))))
                                             (let ((_id3387933929_
                                                    (reverse _id3387833918_)))
                                               (if (gx#stx-pair?
                                                    _tl3387033905_)
                                                   (let ((_e3388033932_
                                                          (gx#stx-e
                                                           _tl3387033905_)))
                                                     (let ((_hd3388133935_
                                                            (##car _e3388033932_))
                                                           (_tl3388233937_
                                                            (##cdr _e3388033932_)))
                                                       (if (gx#stx-null?
                                                            _tl3388233937_)
                                                           ((lambda (_L33940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L33941_)
                      (_nonlinear-expr?33857_ _L33940_))
                    _hd3388133935_
                    _id3387933929_)
                   (_g3386133887_ _g3386233890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3386133887_
                                                    _g3386233890_)))))))
                               (_loop3387433913_ _target3387133908_ '()))
                             (_g3386133887_ _g3386233890_)))))
                   (_g3386133887_ _g3386233890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3386133887_
                                                    _g3386233890_))
                                               (_g3386133887_ _g3386233890_))
                                           (_g3386133887_ _g3386233890_))))
                                   (_g3386133887_ _g3386233890_)))))
                       (_g3386033962_ _kont33859_))))))
        (_do-assert33829_
         _assert33588_
         (lambda ()
           (_do-bind33836_
            _bind33589_
            (lambda ()
              (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                  (_do-splice!33839_
                   (lambda () (_optimize-e33840_ _body33587_)))
                  (_optimize-e33840_ _body33587_)))))))))
  (define gxc#optimize-match-prune-blocks
    (lambda (_blocks33499_ _konts33500_)
      (letrec* ((_rtab33502_ (make-table 'test: eq?)))
        (begin
          (for-each
           (lambda (_block33504_)
             (gxc#apply-collect-runtime-refs (caddr _block33504_) _rtab33502_))
           _konts33500_)
          (let _lp33506_ ((_rest33508_ _blocks33499_) (_r33509_ '()))
            (let* ((_rest3351033518_ _rest33508_)
                   (_else3351233526_ (lambda () (reverse _r33509_)))
                   (_K3351433575_
                    (lambda (_rest33529_ _block33530_)
                      (let* ((_block3353133542_ _block33530_)
                             (_E3353333546_
                              (lambda ()
                                (error '"No clause matching"
                                       _block3353133542_)))
                             (_K3353433553_
                              (lambda (_kont33549_ _type33550_ _name33551_)
                                (if (table-ref
                                     _rtab33502_
                                     (gxc#identifier-symbol _name33551_)
                                     '#f)
                                    (begin
                                      (gxc#apply-collect-runtime-refs
                                       _kont33549_
                                       _rtab33502_)
                                      (_lp33506_
                                       _rest33529_
                                       (cons _block33530_ _r33509_)))
                                    (_lp33506_ _rest33529_ _r33509_)))))
                        (if (##pair? _block3353133542_)
                            (let ((_hd3353533556_ (##car _block3353133542_))
                                  (_tl3353633558_ (##cdr _block3353133542_)))
                              (let ((_name33561_ _hd3353533556_))
                                (if (##pair? _tl3353633558_)
                                    (let ((_hd3353733563_
                                           (##car _tl3353633558_))
                                          (_tl3353833565_
                                           (##cdr _tl3353633558_)))
                                      (let ((_type33568_ _hd3353733563_))
                                        (if (##pair? _tl3353833565_)
                                            (let* ((_hd3353933570_
                                                    (##car _tl3353833565_))
                                                   (_kont33573_
                                                    _hd3353933570_))
                                              (_K3353433553_
                                               _kont33573_
                                               _type33568_
                                               _name33561_))
                                            (_E3353333546_))))
                                    (_E3353333546_))))
                            (_E3353333546_))))))
              (if (##pair? _rest3351033518_)
                  (let ((_hd3351533578_ (##car _rest3351033518_))
                        (_tl3351633580_ (##cdr _rest3351033518_)))
                    (let* ((_block33583_ _hd3351533578_)
                           (_rest33585_ _tl3351633580_))
                      (_K3351433575_ _rest33585_ _block33583_)))
                  (_else3351233526_))))))))
  (define gxc#optimize-match-fuse-restart-blocks
    (lambda (_blocks33423_ _konts33424_)
      (let* ((_blocks3342533441_ _blocks33423_)
             (_else3342733449_ (lambda () _blocks33423_))
             (_K3342933467_
              (lambda (_rest33452_ _kont33453_ _name33454_)
                (letrec* ((_rtab33456_ (make-table 'test: eq?)))
                  (begin
                    (for-each
                     (lambda (_block33458_)
                       (gxc#apply-collect-runtime-refs
                        (caddr _block33458_)
                        _rtab33456_))
                     _konts33424_)
                    (if (fx= (table-ref
                              _rtab33456_
                              (gxc#identifier-symbol _name33454_))
                             '1)
                        (let* ((_rblock33462_
                                (find (lambda (_block33460_)
                                        (gxc#apply-find-var-refs
                                         (caddr _block33460_)
                                         (cons _name33454_ '())))
                                      _konts33424_))
                               (_assert33464_
                                (gxc#optimize-match-assert-restart
                                 _rblock33462_
                                 _name33454_)))
                          (cons (cons _name33454_
                                      (cons 'restart:
                                            (cons _kont33453_
                                                  (cons _assert33464_ '()))))
                                _rest33452_))
                        _blocks33423_))))))
        (if (##pair? _blocks3342533441_)
            (let ((_hd3343033470_ (##car _blocks3342533441_))
                  (_tl3343133472_ (##cdr _blocks3342533441_)))
              (if (##pair? _hd3343033470_)
                  (let ((_hd3343233475_ (##car _hd3343033470_))
                        (_tl3343333477_ (##cdr _hd3343033470_)))
                    (let ((_name33480_ _hd3343233475_))
                      (if (##pair? _tl3343333477_)
                          (let ((_hd3343433482_ (##car _tl3343333477_))
                                (_tl3343533484_ (##cdr _tl3343333477_)))
                            (if (##eq? _hd3343433482_ 'restart:)
                                (if (##pair? _tl3343533484_)
                                    (let ((_hd3343633487_
                                           (##car _tl3343533484_))
                                          (_tl3343733489_
                                           (##cdr _tl3343533484_)))
                                      (let ((_kont33492_ _hd3343633487_))
                                        (if (##pair? _tl3343733489_)
                                            (let ((_tl3343933494_
                                                   (##cdr _tl3343733489_)))
                                              (if (##null? _tl3343933494_)
                                                  (let ((_rest33497_
                                                         _tl3343133472_))
                                                    (_K3342933467_
                                                     _rest33497_
                                                     _kont33492_
                                                     _name33480_))
                                                  (_else3342733449_)))
                                            (_else3342733449_))))
                                    (_else3342733449_))
                                (_else3342733449_)))
                          (_else3342733449_))))
                  (_else3342733449_)))
            (_else3342733449_)))))
  (define gxc#optimize-match-assert-restart
    (lambda (_block32819_ _name32820_)
      (letrec ((_assert-restart32822_
                (lambda (_expr32978_ _assert32979_)
                  (let* ((___stx4333043331_ _expr32978_)
                         (_g3298533082_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4333043331_))))
                    (let ((___kont4333243333_
                           (lambda (_L33398_ _L33399_ _L33400_)
                             (let ((_$e33417_
                                    (_assert-restart32822_
                                     _L33399_
                                     (cons (cons _L33400_ '#t)
                                           _assert32979_))))
                               (if _$e33417_
                                   _$e33417_
                                   (_assert-restart32822_
                                    _L33398_
                                    (cons (cons _L33400_ '#f)
                                          _assert32979_))))))
                          (___kont4333443335_
                           (lambda (_L33346_)
                             (if (gx#free-identifier=? _L33346_ _name32820_)
                                 _assert32979_
                                 '#f)))
                          (___kont4333643337_
                           (lambda (_L33296_)
                             (_assert-restart32822_ _L33296_ _assert32979_)))
                          (___kont4333843339_
                           (lambda (_L33222_
                                    _L33223_
                                    _L33224_
                                    _L33225_
                                    _L33226_)
                             (_assert-restart32822_ _L33224_ _assert32979_)))
                          (___kont4334443345_ (lambda () '#f)))
                      (let ((___match4349943500_
                             (lambda (_e3303033094_
                                      _hd3303133097_
                                      _tl3303233099_
                                      _e3303333102_
                                      _hd3303433105_
                                      _tl3303533107_
                                      _e3303633110_
                                      _hd3303733113_
                                      _tl3303833115_
                                      _e3303933118_
                                      _hd3304033121_
                                      _tl3304133123_
                                      _e3304233126_
                                      _hd3304333129_
                                      _tl3304433131_
                                      _e3304533134_
                                      _hd3304633137_
                                      _tl3304733139_
                                      _e3304833142_
                                      _hd3304933145_
                                      _tl3305033147_
                                      _e3305133150_
                                      _hd3305233153_
                                      _tl3305333155_
                                      ___splice4334043341_
                                      _target3305433158_
                                      _tl3305633160_)
                               (letrec ((_loop3305733163_
                                         (lambda (_hd3305533166_
                                                  _id3306133168_)
                                           (if (gx#stx-pair? _hd3305533166_)
                                               (let ((_e3305833171_
                                                      (gx#stx-e
                                                       _hd3305533166_)))
                                                 (let ((_lp-tl3306033176_
                                                        (##cdr _e3305833171_))
                                                       (_lp-hd3305933174_
                                                        (##car _e3305833171_)))
                                                   (_loop3305733163_
                                                    _lp-tl3306033176_
                                                    (cons _lp-hd3305933174_
                                                          _id3306133168_))))
                                               (let ((_id3306233179_
                                                      (reverse _id3306133168_)))
                                                 (if (gx#stx-pair?
                                                      _tl3305333155_)
                                                     (let ((_e3306333182_
                                                            (gx#stx-e
                                                             _tl3305333155_)))
                                                       (let ((_tl3306533187_
                                                              (##cdr _e3306333182_))
                                                             (_hd3306433185_
                                                              (##car _e3306333182_)))
                                                         (if (gx#stx-null?
                                                              _tl3306533187_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl3304733139_)
                         (if (gx#stx-pair/null? _tl3303833115_)
                             (let ((___splice4334243343_
                                    (gx#syntax-split-splice
                                     _tl3303833115_
                                     '0)))
                               (let ((_tl3306833192_
                                      (##vector-ref ___splice4334243343_ '1))
                                     (_target3306633190_
                                      (##vector-ref ___splice4334243343_ '0)))
                                 (if (gx#stx-null? _tl3306833192_)
                                     (letrec ((_loop3306933195_
                                               (lambda (_hd3306733198_
                                                        _bind3307333200_)
                                                 (if (gx#stx-pair?
                                                      _hd3306733198_)
                                                     (let ((_e3307033203_
                                                            (gx#stx-e
                                                             _hd3306733198_)))
                                                       (let ((_lp-tl3307233208_
                                                              (##cdr _e3307033203_))
                                                             (_lp-hd3307133206_
                                                              (##car _e3307033203_)))
                                                         (_loop3306933195_
                                                          _lp-tl3307233208_
                                                          (cons _lp-hd3307133206_
                                                                _bind3307333200_))))
                                                     (let ((_bind3307433211_
                                                            (reverse _bind3307333200_)))
                                                       (if (gx#stx-pair?
                                                            _tl3303533107_)
                                                           (let ((_e3307533214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3303533107_)))
                     (let ((_tl3307733219_ (##cdr _e3307533214_))
                           (_hd3307633217_ (##car _e3307533214_)))
                       (if (gx#stx-null? _tl3307733219_)
                           (___kont4333843339_
                            _hd3307633217_
                            _bind3307433211_
                            _hd3306433185_
                            _id3306233179_
                            _hd3304333129_)
                           (___kont4334443345_))))
                   (___kont4334443345_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3306933195_
                                        _target3306633190_
                                        '()))
                                     (___kont4334443345_))))
                             (___kont4334443345_))
                         (___kont4334443345_))
                     (___kont4334443345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4334443345_)))))))
                                 (_loop3305733163_ _target3305433158_ '())))))
                        (if (gx#stx-pair? ___stx4333043331_)
                            (let ((_e3299033366_ (gx#stx-e ___stx4333043331_)))
                              (let ((_tl3299233371_ (##cdr _e3299033366_))
                                    (_hd3299133369_ (##car _e3299033366_)))
                                (if (gx#identifier? _hd3299133369_)
                                    (if (gx#stx-eq? '%#if _hd3299133369_)
                                        (if (gx#stx-pair? _tl3299233371_)
                                            (let ((_e3299333374_
                                                   (gx#stx-e _tl3299233371_)))
                                              (let ((_tl3299533379_
                                                     (##cdr _e3299333374_))
                                                    (_hd3299433377_
                                                     (##car _e3299333374_)))
                                                (if (gx#stx-pair?
                                                     _tl3299533379_)
                                                    (let ((_e3299633382_
                                                           (gx#stx-e
                                                            _tl3299533379_)))
                                                      (let ((_tl3299833387_
                                                             (##cdr _e3299633382_))
                                                            (_hd3299733385_
                                                             (##car _e3299633382_)))
                                                        (if (gx#stx-pair?
                                                             _tl3299833387_)
                                                            (let ((_e3299933390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3299833387_)))
                      (let ((_tl3300133395_ (##cdr _e3299933390_))
                            (_hd3300033393_ (##car _e3299933390_)))
                        (if (gx#stx-null? _tl3300133395_)
                            (___kont4333243333_
                             _hd3300033393_
                             _hd3299733385_
                             _hd3299433377_)
                            (___kont4334443345_))))
                    (___kont4334443345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4334443345_))))
                                            (___kont4334443345_))
                                        (if (gx#stx-eq? '%#call _hd3299133369_)
                                            (if (gx#stx-pair? _tl3299233371_)
                                                (let ((_e3300633322_
                                                       (gx#stx-e
                                                        _tl3299233371_)))
                                                  (let ((_tl3300833327_
                                                         (##cdr _e3300633322_))
                                                        (_hd3300733325_
                                                         (##car _e3300633322_)))
                                                    (if (gx#stx-pair?
                                                         _hd3300733325_)
                                                        (let ((_e3300933330_
                                                               (gx#stx-e
                                                                _hd3300733325_)))
                                                          (let ((_tl3301133335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3300933330_))
                        (_hd3301033333_ (##car _e3300933330_)))
                    (if (gx#identifier? _hd3301033333_)
                        (if (gx#stx-eq? '%#ref _hd3301033333_)
                            (if (gx#stx-pair? _tl3301133335_)
                                (let ((_e3301233338_
                                       (gx#stx-e _tl3301133335_)))
                                  (let ((_tl3301433343_ (##cdr _e3301233338_))
                                        (_hd3301333341_ (##car _e3301233338_)))
                                    (if (gx#stx-null? _tl3301433343_)
                                        (___kont4333443335_ _hd3301333341_)
                                        (___kont4334443345_))))
                                (___kont4334443345_))
                            (___kont4334443345_))
                        (___kont4334443345_))))
                (___kont4334443345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4334443345_))
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3299133369_)
                                                (if (gx#stx-pair?
                                                     _tl3299233371_)
                                                    (let ((_e3301933280_
                                                           (gx#stx-e
                                                            _tl3299233371_)))
                                                      (let ((_tl3302133285_
                                                             (##cdr _e3301933280_))
                                                            (_hd3302033283_
                                                             (##car _e3301933280_)))
                                                        (if (gx#stx-pair?
                                                             _tl3302133285_)
                                                            (let ((_e3302233288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3302133285_)))
                      (let ((_tl3302433293_ (##cdr _e3302233288_))
                            (_hd3302333291_ (##car _e3302233288_)))
                        (if (gx#stx-null? _tl3302433293_)
                            (___kont4333643337_ _hd3302333291_)
                            (___kont4334443345_))))
                    (___kont4334443345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4334443345_))
                                                (if (gx#stx-eq?
                                                     '%#letrec-values
                                                     _hd3299133369_)
                                                    (if (gx#stx-pair?
                                                         _tl3299233371_)
                                                        (let ((_e3303333102_
                                                               (gx#stx-e
                                                                _tl3299233371_)))
                                                          (let ((_tl3303533107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3303333102_))
                        (_hd3303433105_ (##car _e3303333102_)))
                    (if (gx#stx-pair? _hd3303433105_)
                        (let ((_e3303633110_ (gx#stx-e _hd3303433105_)))
                          (let ((_tl3303833115_ (##cdr _e3303633110_))
                                (_hd3303733113_ (##car _e3303633110_)))
                            (if (gx#stx-pair? _hd3303733113_)
                                (let ((_e3303933118_
                                       (gx#stx-e _hd3303733113_)))
                                  (let ((_tl3304133123_ (##cdr _e3303933118_))
                                        (_hd3304033121_ (##car _e3303933118_)))
                                    (if (gx#stx-pair? _hd3304033121_)
                                        (let ((_e3304233126_
                                               (gx#stx-e _hd3304033121_)))
                                          (let ((_tl3304433131_
                                                 (##cdr _e3304233126_))
                                                (_hd3304333129_
                                                 (##car _e3304233126_)))
                                            (if (gx#stx-null? _tl3304433131_)
                                                (if (gx#stx-pair?
                                                     _tl3304133123_)
                                                    (let ((_e3304533134_
                                                           (gx#stx-e
                                                            _tl3304133123_)))
                                                      (let ((_tl3304733139_
                                                             (##cdr _e3304533134_))
                                                            (_hd3304633137_
                                                             (##car _e3304533134_)))
                                                        (if (gx#stx-pair?
                                                             _hd3304633137_)
                                                            (let ((_e3304833142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3304633137_)))
                      (let ((_tl3305033147_ (##cdr _e3304833142_))
                            (_hd3304933145_ (##car _e3304833142_)))
                        (if (gx#identifier? _hd3304933145_)
                            (if (gx#stx-eq? '%#lambda _hd3304933145_)
                                (if (gx#stx-pair? _tl3305033147_)
                                    (let ((_e3305133150_
                                           (gx#stx-e _tl3305033147_)))
                                      (let ((_tl3305333155_
                                             (##cdr _e3305133150_))
                                            (_hd3305233153_
                                             (##car _e3305133150_)))
                                        (if (gx#stx-pair/null? _hd3305233153_)
                                            (let ((___splice4334043341_
                                                   (gx#syntax-split-splice
                                                    _hd3305233153_
                                                    '0)))
                                              (let ((_tl3305633160_
                                                     (##vector-ref
                                                      ___splice4334043341_
                                                      '1))
                                                    (_target3305433158_
                                                     (##vector-ref
                                                      ___splice4334043341_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3305633160_)
                                                    (___match4349943500_
                                                     _e3299033366_
                                                     _hd3299133369_
                                                     _tl3299233371_
                                                     _e3303333102_
                                                     _hd3303433105_
                                                     _tl3303533107_
                                                     _e3303633110_
                                                     _hd3303733113_
                                                     _tl3303833115_
                                                     _e3303933118_
                                                     _hd3304033121_
                                                     _tl3304133123_
                                                     _e3304233126_
                                                     _hd3304333129_
                                                     _tl3304433131_
                                                     _e3304533134_
                                                     _hd3304633137_
                                                     _tl3304733139_
                                                     _e3304833142_
                                                     _hd3304933145_
                                                     _tl3305033147_
                                                     _e3305133150_
                                                     _hd3305233153_
                                                     _tl3305333155_
                                                     ___splice4334043341_
                                                     _target3305433158_
                                                     _tl3305633160_)
                                                    (___kont4334443345_))))
                                            (___kont4334443345_))))
                                    (___kont4334443345_))
                                (___kont4334443345_))
                            (___kont4334443345_))))
                    (___kont4334443345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4334443345_))
                                                (___kont4334443345_))))
                                        (___kont4334443345_))))
                                (___kont4334443345_))))
                        (___kont4334443345_))))
                (___kont4334443345_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4334443345_)))))
                                    (___kont4334443345_))))
                            (___kont4334443345_))))))))
        (let* ((_block3282332836_ _block32819_)
               (_E3282532840_
                (lambda () (error '"No clause matching" _block3282332836_)))
               (_K3282632953_
                (lambda (_maybe-bind32843_ _assert32844_ _kont32845_)
                  (let* ((_g3284732873_
                          (lambda (_g3284832870_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3284832870_)))
                         (_g3284632950_
                          (lambda (_g3284832876_)
                            (if (gx#stx-pair? _g3284832876_)
                                (let ((_e3285132878_ (gx#stx-e _g3284832876_)))
                                  (let ((_hd3285232881_ (##car _e3285132878_))
                                        (_tl3285332883_ (##cdr _e3285132878_)))
                                    (if (gx#identifier? _hd3285232881_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3285232881_)
                                            (if (gx#stx-pair? _tl3285332883_)
                                                (let ((_e3285432886_
                                                       (gx#stx-e
                                                        _tl3285332883_)))
                                                  (let ((_hd3285532889_
                                                         (##car _e3285432886_))
                                                        (_tl3285632891_
                                                         (##cdr _e3285432886_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3285532889_)
                                                        (let ((_g44273_
                                                               (gx#syntax-split-splice
                                                                _hd3285532889_
                                                                '0)))
                                                          (begin
                                                            (let ((_g44274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g44273_)
                               (##vector-length _g44273_)
                               1)))
                      (if (not (##fx= _g44274_ 2))
                          (error "Context expects 2 values" _g44274_)))
                    (let ((_target3285732894_ (##vector-ref _g44273_ 0))
                          (_tl3285932896_ (##vector-ref _g44273_ 1)))
                      (if (gx#stx-null? _tl3285932896_)
                          (letrec ((_loop3286032899_
                                    (lambda (_hd3285832902_ _id3286432904_)
                                      (if (gx#stx-pair? _hd3285832902_)
                                          (let ((_e3286132907_
                                                 (gx#stx-e _hd3285832902_)))
                                            (let ((_lp-hd3286232910_
                                                   (##car _e3286132907_))
                                                  (_lp-tl3286332912_
                                                   (##cdr _e3286132907_)))
                                              (_loop3286032899_
                                               _lp-tl3286332912_
                                               (cons _lp-hd3286232910_
                                                     _id3286432904_))))
                                          (let ((_id3286532915_
                                                 (reverse _id3286432904_)))
                                            (if (gx#stx-pair? _tl3285632891_)
                                                (let ((_e3286632918_
                                                       (gx#stx-e
                                                        _tl3285632891_)))
                                                  (let ((_hd3286732921_
                                                         (##car _e3286632918_))
                                                        (_tl3286832923_
                                                         (##cdr _e3286632918_)))
                                                    (if (gx#stx-null?
                                                         _tl3286832923_)
                                                        ((lambda (_L32926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L32927_)
                   (_assert-restart32822_ _L32926_ _assert32844_))
                 _hd3286732921_
                 _id3286532915_)
                (_g3284732873_ _g3284832876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3284732873_
                                                 _g3284832876_)))))))
                            (_loop3286032899_ _target3285732894_ '()))
                          (_g3284732873_ _g3284832876_)))))
                (_g3284732873_ _g3284832876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3284732873_ _g3284832876_))
                                            (_g3284732873_ _g3284832876_))
                                        (_g3284732873_ _g3284832876_))))
                                (_g3284732873_ _g3284832876_)))))
                    (_g3284632950_ _kont32845_)))))
          (if (##pair? _block3282332836_)
              (let ((_tl3282832956_ (##cdr _block3282332836_)))
                (if (##pair? _tl3282832956_)
                    (let ((_tl3283032959_ (##cdr _tl3282832956_)))
                      (if (##pair? _tl3283032959_)
                          (let ((_hd3283132962_ (##car _tl3283032959_))
                                (_tl3283232964_ (##cdr _tl3283032959_)))
                            (let ((_kont32967_ _hd3283132962_))
                              (if (##pair? _tl3283232964_)
                                  (let ((_hd3283332969_ (##car _tl3283232964_))
                                        (_tl3283432971_
                                         (##cdr _tl3283232964_)))
                                    (let* ((_assert32974_ _hd3283332969_)
                                           (_maybe-bind32976_ _tl3283432971_))
                                      (_K3282632953_
                                       _maybe-bind32976_
                                       _assert32974_
                                       _kont32967_)))
                                  (_E3282532840_))))
                          (_E3282532840_)))
                    (_E3282532840_)))
              (_E3282532840_))))))
  (define gxc#optimize-syntax-case
    (lambda (_stx32450_)
      (let* ((_g3245232482_
              (lambda (_g3245332479_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3245332479_)))
             (_g3245132816_
              (lambda (_g3245332485_)
                (if (gx#stx-pair? _g3245332485_)
                    (let ((_e3245732487_ (gx#stx-e _g3245332485_)))
                      (let ((_hd3245832490_ (##car _e3245732487_))
                            (_tl3245932492_ (##cdr _e3245732487_)))
                        (if (gx#identifier? _hd3245832490_)
                            (if (gx#stx-eq? '%#let-values _hd3245832490_)
                                (if (gx#stx-pair? _tl3245932492_)
                                    (let ((_e3246032495_
                                           (gx#stx-e _tl3245932492_)))
                                      (let ((_hd3246132498_
                                             (##car _e3246032495_))
                                            (_tl3246232500_
                                             (##cdr _e3246032495_)))
                                        (if (gx#stx-pair? _hd3246132498_)
                                            (let ((_e3246332503_
                                                   (gx#stx-e _hd3246132498_)))
                                              (let ((_hd3246432506_
                                                     (##car _e3246332503_))
                                                    (_tl3246532508_
                                                     (##cdr _e3246332503_)))
                                                (if (gx#stx-pair?
                                                     _hd3246432506_)
                                                    (let ((_e3246632511_
                                                           (gx#stx-e
                                                            _hd3246432506_)))
                                                      (let ((_hd3246732514_
                                                             (##car _e3246632511_))
                                                            (_tl3246832516_
                                                             (##cdr _e3246632511_)))
                                                        (if (gx#stx-pair?
                                                             _hd3246732514_)
                                                            (let ((_e3246932519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3246732514_)))
                      (let ((_hd3247032522_ (##car _e3246932519_))
                            (_tl3247132524_ (##cdr _e3246932519_)))
                        (if (gx#stx-null? _tl3247132524_)
                            (if (gx#stx-pair? _tl3246832516_)
                                (let ((_e3247232527_
                                       (gx#stx-e _tl3246832516_)))
                                  (let ((_hd3247332530_ (##car _e3247232527_))
                                        (_tl3247432532_ (##cdr _e3247232527_)))
                                    (if (gx#stx-null? _tl3247432532_)
                                        (if (gx#stx-null? _tl3246532508_)
                                            (if (gx#stx-pair? _tl3246232500_)
                                                (let ((_e3247532535_
                                                       (gx#stx-e
                                                        _tl3246232500_)))
                                                  (let ((_hd3247632538_
                                                         (##car _e3247532535_))
                                                        (_tl3247732540_
                                                         (##cdr _e3247532535_)))
                                                    (if (gx#stx-null?
                                                         _tl3247732540_)
                                                        ((lambda (_L32543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L32544_
                          _L32545_)
                   (let _lp32569_ ((_body32571_ _L32543_) (_clauses32572_ '()))
                     (let* ((___stx4350243503_ _body32571_)
                            (_g3257532622_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4350243503_))))
                       (let ((___kont4350443505_
                              (lambda (_L32788_ _L32789_ _L32790_)
                                (_lp32569_
                                 _L32788_
                                 (cons (cons _L32790_ (gxc#compile-e _L32789_))
                                       _clauses32572_))))
                             (___kont4350643507_
                              (lambda (_L32667_ _L32668_)
                                (let ((_$e32689_ (length _clauses32572_)))
                                  (if (eq? '0 _$e32689_)
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _L32545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L32544_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gxc#compile-e
                                                          _body32571_)
                                                         '())))
                                       _stx32450_)
                                      (if (eq? '1 _$e32689_)
                                          (let* ((_clauses3269132700_
                                                  _clauses32572_)
                                                 (_E3269332704_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _clauses3269132700_)))
                                                 (_K3269432710_
                                                  (lambda (_clause-lambda32707_
                                                           _clause32708_)
                                                    (gxc#xform-wrap-source
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _L32545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _L32544_ '()))
                               '())
                         (cons (cons '%#let-values
                                     (cons (cons (cons (cons _clause32708_ '())
                                                       (cons _clause-lambda32707_
                                                             '()))
                                                 '())
                                           (cons (gxc#compile-e _body32571_)
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx32450_))))
                                            (if (##pair? _clauses3269132700_)
                                                (let ((_hd3269532713_
                                                       (##car _clauses3269132700_))
                                                      (_tl3269632715_
                                                       (##cdr _clauses3269132700_)))
                                                  (if (##pair? _hd3269532713_)
                                                      (let ((_hd3269732718_
                                                             (##car _hd3269532713_))
                                                            (_tl3269832720_
                                                             (##cdr _hd3269532713_)))
                                                        (let* ((_clause32723_
                                                                _hd3269732718_)
                                                               (_clause-lambda32725_
                                                                _tl3269832720_))
                                                          (if (##null? _tl3269632715_)
                                                              (_K3269432710_
                                                               _clause-lambda32725_
                                                               _clause32723_)
                                                              (_E3269332704_))))
                                                      (_E3269332704_)))
                                                (_E3269332704_)))
                                          (gxc#optimize-syntax-case-body
                                           _stx32450_
                                           (gxc#compile-e _L32667_)
                                           (cons _L32545_ _L32544_)
                                           _clauses32572_)))))))
                         (if (gx#stx-pair? ___stx4350243503_)
                             (let ((_e3258032732_
                                    (gx#stx-e ___stx4350243503_)))
                               (let ((_tl3258232737_ (##cdr _e3258032732_))
                                     (_hd3258132735_ (##car _e3258032732_)))
                                 (if (gx#identifier? _hd3258132735_)
                                     (if (gx#stx-eq?
                                          '%#let-values
                                          _hd3258132735_)
                                         (if (gx#stx-pair? _tl3258232737_)
                                             (let ((_e3258332740_
                                                    (gx#stx-e _tl3258232737_)))
                                               (let ((_tl3258532745_
                                                      (##cdr _e3258332740_))
                                                     (_hd3258432743_
                                                      (##car _e3258332740_)))
                                                 (if (gx#stx-pair?
                                                      _hd3258432743_)
                                                     (let ((_e3258632748_
                                                            (gx#stx-e
                                                             _hd3258432743_)))
                                                       (let ((_tl3258832753_
                                                              (##cdr _e3258632748_))
                                                             (_hd3258732751_
                                                              (##car _e3258632748_)))
                                                         (if (gx#stx-pair?
                                                              _hd3258732751_)
                                                             (let ((_e3258932756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3258732751_)))
                       (let ((_tl3259132761_ (##cdr _e3258932756_))
                             (_hd3259032759_ (##car _e3258932756_)))
                         (if (gx#stx-pair? _hd3259032759_)
                             (let ((_e3259232764_ (gx#stx-e _hd3259032759_)))
                               (let ((_tl3259432769_ (##cdr _e3259232764_))
                                     (_hd3259332767_ (##car _e3259232764_)))
                                 (if (gx#stx-null? _tl3259432769_)
                                     (if (gx#stx-pair? _tl3259132761_)
                                         (let ((_e3259532772_
                                                (gx#stx-e _tl3259132761_)))
                                           (let ((_tl3259732777_
                                                  (##cdr _e3259532772_))
                                                 (_hd3259632775_
                                                  (##car _e3259532772_)))
                                             (if (gx#stx-null? _tl3259732777_)
                                                 (if (gx#stx-null?
                                                      _tl3258832753_)
                                                     (if (gx#stx-pair?
                                                          _tl3258532745_)
                                                         (let ((_e3259832780_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3258532745_)))
                   (let ((_tl3260032785_ (##cdr _e3259832780_))
                         (_hd3259932783_ (##car _e3259832780_)))
                     (if (gx#stx-null? _tl3260032785_)
                         (___kont4350443505_
                          _hd3259932783_
                          _hd3259632775_
                          _hd3259332767_)
                         (_g3257532622_))))
                 (_g3257532622_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3257532622_))
                                                 (_g3257532622_))))
                                         (_g3257532622_))
                                     (_g3257532622_))))
                             (_g3257532622_))))
                     (_g3257532622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3257532622_))))
                                             (_g3257532622_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3258132735_)
                                             (if (gx#stx-pair? _tl3258232737_)
                                                 (let ((_e3260632635_
                                                        (gx#stx-e
                                                         _tl3258232737_)))
                                                   (let ((_tl3260832640_
                                                          (##cdr _e3260632635_))
                                                         (_hd3260732638_
                                                          (##car _e3260632635_)))
                                                     (if (gx#stx-pair?
                                                          _hd3260732638_)
                                                         (let ((_e3260932643_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3260732638_)))
                   (let ((_tl3261132648_ (##cdr _e3260932643_))
                         (_hd3261032646_ (##car _e3260932643_)))
                     (if (gx#identifier? _hd3261032646_)
                         (if (gx#stx-eq? '%#ref _hd3261032646_)
                             (if (gx#stx-pair? _tl3261132648_)
                                 (let ((_e3261232651_
                                        (gx#stx-e _tl3261132648_)))
                                   (let ((_tl3261432656_ (##cdr _e3261232651_))
                                         (_hd3261332654_
                                          (##car _e3261232651_)))
                                     (if (gx#stx-null? _tl3261432656_)
                                         (if (gx#stx-pair? _tl3260832640_)
                                             (let ((_e3261532659_
                                                    (gx#stx-e _tl3260832640_)))
                                               (let ((_tl3261732664_
                                                      (##cdr _e3261532659_))
                                                     (_hd3261632662_
                                                      (##car _e3261532659_)))
                                                 (if (gx#stx-null?
                                                      _tl3261732664_)
                                                     (___kont4350643507_
                                                      _hd3261632662_
                                                      _hd3261332654_)
                                                     (_g3257532622_))))
                                             (_g3257532622_))
                                         (_g3257532622_))))
                                 (_g3257532622_))
                             (_g3257532622_))
                         (_g3257532622_))))
                 (_g3257532622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3257532622_))
                                             (_g3257532622_)))
                                     (_g3257532622_))))
                             (_g3257532622_))))))
                 _hd3247632538_
                 _hd3247332530_
                 _hd3247032522_)
                (_g3245232482_ _g3245332485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3245232482_ _g3245332485_))
                                            (_g3245232482_ _g3245332485_))
                                        (_g3245232482_ _g3245332485_))))
                                (_g3245232482_ _g3245332485_))
                            (_g3245232482_ _g3245332485_))))
                    (_g3245232482_ _g3245332485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3245232482_
                                                     _g3245332485_))))
                                            (_g3245232482_ _g3245332485_))))
                                    (_g3245232482_ _g3245332485_))
                                (_g3245232482_ _g3245332485_))
                            (_g3245232482_ _g3245332485_))))
                    (_g3245232482_ _g3245332485_)))))
        (_g3245132816_ _stx32450_))))
  (define gxc#optimize-syntax-case-body
    (lambda (_stx32378_ _expr32379_ _negation32380_ _clauses32381_)
      (letrec ((_normalize32383_
                (lambda (_clauses32410_)
                  (let* ((_clauses3241132420_ _clauses32410_)
                         (_E3241332424_
                          (lambda ()
                            (error '"No clause matching" _clauses3241132420_)))
                         (_K3241432431_
                          (lambda (_rest32427_ _kont32428_ _id32429_)
                            (cons (cons '#f _kont32428_) _rest32427_))))
                    (if (##pair? _clauses3241132420_)
                        (let ((_hd3241532434_ (##car _clauses3241132420_))
                              (_tl3241632436_ (##cdr _clauses3241132420_)))
                          (if (##pair? _hd3241532434_)
                              (let ((_hd3241732439_ (##car _hd3241532434_))
                                    (_tl3241832441_ (##cdr _hd3241532434_)))
                                (let* ((_id32444_ _hd3241732439_)
                                       (_kont32446_ _tl3241832441_)
                                       (_rest32448_ _tl3241632436_))
                                  (_K3241432431_
                                   _rest32448_
                                   _kont32446_
                                   _id32444_)))
                              (_E3241332424_)))
                        (_E3241332424_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_id32386_ (make-symbol (gensym '__stx)))
                  (_id32388_ (gx#core-quote-syntax__0 _id32386_))
                  (_g44275_ (gx#core-bind-runtime!__0 _id32388_))
                  (_g44276_
                   (gxc#optimize-syntax-case-clauses
                    _clauses32381_
                    (car _negation32380_))))
             (begin
               (let ((_g44277_
                      (if (##values? _g44276_) (##vector-length _g44276_) 1)))
                 (if (not (##fx= _g44277_ 2))
                     (error "Context expects 2 values" _g44277_)))
               (let ((_clauses32391_ (##vector-ref _g44276_ 0))
                     (_konts32392_ (##vector-ref _g44276_ 1)))
                 (let* ((_clauses32401_
                         (map (lambda (_g3239332396_ _g3239432398_)
                                (gxc#optimize-syntax-case-closure
                                 _g3239332396_
                                 _g3239432398_
                                 _id32388_))
                              _clauses32391_
                              (foldr1 cons
                                      (cons (car _negation32380_) '())
                                      (map car (cdr _clauses32391_)))))
                        (_clauses32403_ (_normalize32383_ _clauses32401_))
                        (_negation32405_
                         (gxc#optimize-syntax-case-closure
                          _negation32380_
                          '#f
                          _id32388_))
                        (_body32407_
                         (gxc#optimize-match-body
                          _stx32378_
                          _negation32405_
                          _clauses32403_
                          _konts32392_)))
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _id32388_ '())
                                            (cons _expr32379_ '()))
                                      '())
                                (cons _body32407_ '())))
                    _stx32378_))))))
         gx#current-expander-context
         (let ((__obj44248 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj44248) __obj44248))))))
  (define gxc#optimize-syntax-case-clauses
    (lambda (_clauses31136_ _negation-id31137_)
      (letrec ((_xform-e31139_
                (lambda (_expr31523_
                         _kont-id31524_
                         _kont-box31525_
                         _negation-id31526_)
                  (let* ((___stx4370443705_ _expr31523_)
                         (_g3153231665_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4370443705_))))
                    (let ((___kont4370643707_
                           (lambda (_L32354_ _L32355_ _L32356_)
                             (let ((_K32373_
                                    (_xform-e31139_
                                     _L32355_
                                     _kont-id31524_
                                     _kont-box31525_
                                     _negation-id31526_)))
                               (cons '%#if
                                     (cons _L32356_
                                           (cons _K32373_
                                                 (cons _L32354_ '())))))))
                          (___kont4370843709_
                           (lambda (_L32270_
                                    _L32271_
                                    _L32272_
                                    _L32273_
                                    _L32274_)
                             (let* ((_id32309_
                                     (make-symbol (gensym '__splice)))
                                    (_id32311_
                                     (gx#core-quote-syntax__0 _id32309_))
                                    (_g44278_
                                     (gx#core-bind-runtime!__0 _id32311_))
                                    (_body32314_
                                     (_xform-e31139_
                                      _L32270_
                                      _kont-id31524_
                                      _kont-box31525_
                                      _negation-id31526_)))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _id32311_ '())
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#call)
                           (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                       (cons _L32272_ '()))
                                 _L32271_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons '%#let-values
                                                       (cons (cons (cons (cons _L32274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons '%#call
                                             (cons '(%#ref ##vector-ref)
                                                   (cons (cons '%#ref
                                                               (cons _id32311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '(%#quote 0) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (cons _L32273_ '())
                                       (cons (cons '%#call
                                                   (cons '(%#ref ##vector-ref)
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _id32311_ '()))
                       (cons '(%#quote 1) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))
                     (cons _body32314_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                          (___kont4371043711_
                           (lambda (_L32152_ _L32153_)
                             (let ((_body32167_
                                    (_xform-e31139_
                                     _L32152_
                                     _kont-id31524_
                                     _kont-box31525_
                                     _negation-id31526_)))
                               (cons '%#let-values
                                     (cons _L32153_ (cons _body32167_ '()))))))
                          (___kont4371243713_
                           (lambda (_L32096_ _L32097_ _L32098_)
                             (let ((_lambda-expr32121_
                                    (_xform-loop-e31140_
                                     _L32097_
                                     _kont-id31524_
                                     _kont-box31525_
                                     _negation-id31526_)))
                               (cons '%#letrec-values
                                     (cons (cons (cons (cons _L32098_ '())
                                                       (cons _lambda-expr32121_
                                                             '()))
                                                 '())
                                           (cons _L32096_ '()))))))
                          (___kont4371443715_
                           (lambda (_L31758_ _L31759_ _L31760_)
                             (let* ((___stx4360643607_ _L31759_)
                                    (_g3178931832_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4360643607_))))
                               (let ((___kont4360843609_
                                      (lambda (_L31948_
                                               _L31949_
                                               _L31950_
                                               _L31951_)
                                        (let ((_kont31992_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3198431987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3198531989_)
                               (cons _g3198431987_ _g3198531989_))
                             '()
                             _L31760_))
                   (cons _L31950_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box31525_
                                             _kont31992_)
                                            (let* ((_kont-args32003_
                                                    (map (lambda (_id31994_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id31994_ '())))
                 (begin
                   '#!void
                   (foldr1 (lambda (_g3199531998_ _g3199632000_)
                             (cons _g3199531998_ _g3199632000_))
                           '()
                           _L31760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_body32005_
                                                    (cons '%#if
                                                          (cons _L31951_
                                                                (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#ref
                                                (cons _kont-id31524_ '()))
                                          _kont-args32003_))
                              (cons (cons (gx#datum->syntax__0 '#f '%#call)
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L31949_ '()))
                                                (cons (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)
                                                            (cons _L31948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g3200732010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3200832012_)
                             (cons _g3200732010_ _g3200832012_))
                           '()
                           _L31760_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _body32005_
                                                  (cons '%#let-values
                                                        (cons (map (lambda (_id32015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _arg32016_)
                             (cons (cons _id32015_ '()) (cons _arg32016_ '())))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3201732020_ _g3201832022_)
                                       (cons _g3201732020_ _g3201832022_))
                                     '()
                                     _L31760_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3202432027_ _g3202532029_)
                                       (cons _g3202432027_ _g3202532029_))
                                     '()
                                     _L31758_)))
                      (cons _body32005_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont4361043611_
                                      (lambda ()
                                        (let ((_kont31846_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3183831841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3183931843_)
                               (cons _g3183831841_ _g3183931843_))
                             '()
                             _L31760_))
                   (cons _L31759_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box31525_
                                             _kont31846_)
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kont-id31524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3184731850_ _g3184831852_)
                            (cons _g3184731850_ _g3184831852_))
                          '()
                          _L31758_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((___match4370143702_
                                        (lambda (_e3179531860_
                                                 _hd3179631863_
                                                 _tl3179731865_
                                                 _e3179831868_
                                                 _hd3179931871_
                                                 _tl3180031873_
                                                 _e3180131876_
                                                 _hd3180231879_
                                                 _tl3180331881_
                                                 _e3180431884_
                                                 _hd3180531887_
                                                 _tl3180631889_
                                                 _e3180731892_
                                                 _hd3180831895_
                                                 _tl3180931897_
                                                 _e3181031900_
                                                 _hd3181131903_
                                                 _tl3181231905_
                                                 _e3181331908_
                                                 _hd3181431911_
                                                 _tl3181531913_
                                                 _e3181631916_
                                                 _hd3181731919_
                                                 _tl3181831921_
                                                 _e3181931924_
                                                 _hd3182031927_
                                                 _tl3182131929_
                                                 _e3182231932_
                                                 _hd3182331935_
                                                 _tl3182431937_
                                                 _e3182531940_
                                                 _hd3182631943_
                                                 _tl3182731945_)
                                          (let ((_L31948_ _hd3182631943_)
                                                (_L31949_ _hd3181731919_)
                                                (_L31950_ _hd3180231879_)
                                                (_L31951_ _hd3179931871_))
                                            (if (gx#free-identifier=?
                                                 _L31949_
                                                 _negation-id31526_)
                                                (___kont4360843609_
                                                 _L31948_
                                                 _L31949_
                                                 _L31950_
                                                 _L31951_)
                                                (___kont4361043611_))))))
                                   (if (gx#stx-pair? ___stx4360643607_)
                                       (let ((_e3179531860_
                                              (gx#stx-e ___stx4360643607_)))
                                         (let ((_tl3179731865_
                                                (##cdr _e3179531860_))
                                               (_hd3179631863_
                                                (##car _e3179531860_)))
                                           (if (gx#identifier? _hd3179631863_)
                                               (if (gx#stx-eq?
                                                    '%#if
                                                    _hd3179631863_)
                                                   (if (gx#stx-pair?
                                                        _tl3179731865_)
                                                       (let ((_e3179831868_
                                                              (gx#stx-e
                                                               _tl3179731865_)))
                                                         (let ((_tl3180031873_
                                                                (##cdr _e3179831868_))
                                                               (_hd3179931871_
                                                                (##car _e3179831868_)))
                                                           (if (gx#stx-pair?
                                                                _tl3180031873_)
                                                               (let ((_e3180131876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3180031873_)))
                         (let ((_tl3180331881_ (##cdr _e3180131876_))
                               (_hd3180231879_ (##car _e3180131876_)))
                           (if (gx#stx-pair? _tl3180331881_)
                               (let ((_e3180431884_ (gx#stx-e _tl3180331881_)))
                                 (let ((_tl3180631889_ (##cdr _e3180431884_))
                                       (_hd3180531887_ (##car _e3180431884_)))
                                   (if (gx#stx-pair? _hd3180531887_)
                                       (let ((_e3180731892_
                                              (gx#stx-e _hd3180531887_)))
                                         (let ((_tl3180931897_
                                                (##cdr _e3180731892_))
                                               (_hd3180831895_
                                                (##car _e3180731892_)))
                                           (if (gx#identifier? _hd3180831895_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd3180831895_)
                                                   (if (gx#stx-pair?
                                                        _tl3180931897_)
                                                       (let ((_e3181031900_
                                                              (gx#stx-e
                                                               _tl3180931897_)))
                                                         (let ((_tl3181231905_
                                                                (##cdr _e3181031900_))
                                                               (_hd3181131903_
                                                                (##car _e3181031900_)))
                                                           (if (gx#stx-pair?
                                                                _hd3181131903_)
                                                               (let ((_e3181331908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd3181131903_)))
                         (let ((_tl3181531913_ (##cdr _e3181331908_))
                               (_hd3181431911_ (##car _e3181331908_)))
                           (if (gx#identifier? _hd3181431911_)
                               (if (gx#stx-eq? '%#ref _hd3181431911_)
                                   (if (gx#stx-pair? _tl3181531913_)
                                       (let ((_e3181631916_
                                              (gx#stx-e _tl3181531913_)))
                                         (let ((_tl3181831921_
                                                (##cdr _e3181631916_))
                                               (_hd3181731919_
                                                (##car _e3181631916_)))
                                           (if (gx#stx-null? _tl3181831921_)
                                               (if (gx#stx-pair?
                                                    _tl3181231905_)
                                                   (let ((_e3181931924_
                                                          (gx#stx-e
                                                           _tl3181231905_)))
                                                     (let ((_tl3182131929_
                                                            (##cdr _e3181931924_))
                                                           (_hd3182031927_
                                                            (##car _e3181931924_)))
                                                       (if (gx#stx-pair?
                                                            _hd3182031927_)
                                                           (let ((_e3182231932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3182031927_)))
                     (let ((_tl3182431937_ (##cdr _e3182231932_))
                           (_hd3182331935_ (##car _e3182231932_)))
                       (if (gx#identifier? _hd3182331935_)
                           (if (gx#stx-eq? '%#ref _hd3182331935_)
                               (if (gx#stx-pair? _tl3182431937_)
                                   (let ((_e3182531940_
                                          (gx#stx-e _tl3182431937_)))
                                     (let ((_tl3182731945_
                                            (##cdr _e3182531940_))
                                           (_hd3182631943_
                                            (##car _e3182531940_)))
                                       (if (gx#stx-null? _tl3182731945_)
                                           (if (gx#stx-null? _tl3182131929_)
                                               (if (gx#stx-null?
                                                    _tl3180631889_)
                                                   (___match4370143702_
                                                    _e3179531860_
                                                    _hd3179631863_
                                                    _tl3179731865_
                                                    _e3179831868_
                                                    _hd3179931871_
                                                    _tl3180031873_
                                                    _e3180131876_
                                                    _hd3180231879_
                                                    _tl3180331881_
                                                    _e3180431884_
                                                    _hd3180531887_
                                                    _tl3180631889_
                                                    _e3180731892_
                                                    _hd3180831895_
                                                    _tl3180931897_
                                                    _e3181031900_
                                                    _hd3181131903_
                                                    _tl3181231905_
                                                    _e3181331908_
                                                    _hd3181431911_
                                                    _tl3181531913_
                                                    _e3181631916_
                                                    _hd3181731919_
                                                    _tl3181831921_
                                                    _e3181931924_
                                                    _hd3182031927_
                                                    _tl3182131929_
                                                    _e3182231932_
                                                    _hd3182331935_
                                                    _tl3182431937_
                                                    _e3182531940_
                                                    _hd3182631943_
                                                    _tl3182731945_)
                                                   (___kont4361043611_))
                                               (___kont4361043611_))
                                           (___kont4361043611_))))
                                   (___kont4361043611_))
                               (___kont4361043611_))
                           (___kont4361043611_))))
                   (___kont4361043611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4361043611_))
                                               (___kont4361043611_))))
                                       (___kont4361043611_))
                                   (___kont4361043611_))
                               (___kont4361043611_))))
                       (___kont4361043611_))))
               (___kont4361043611_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4361043611_))
                                               (___kont4361043611_))))
                                       (___kont4361043611_))))
                               (___kont4361043611_))))
                       (___kont4361043611_))))
               (___kont4361043611_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4361043611_))
                                               (___kont4361043611_))))
                                       (___kont4361043611_))))))))
                      (let* ((___match4396143962_
                              (lambda (_e3162831670_
                                       _hd3162931673_
                                       _tl3163031675_
                                       _e3163131678_
                                       _hd3163231681_
                                       _tl3163331683_
                                       _e3163431686_
                                       _hd3163531689_
                                       _tl3163631691_
                                       _e3163731694_
                                       _hd3163831697_
                                       _tl3163931699_
                                       ___splice4371643717_
                                       _target3164031702_
                                       _tl3164231704_)
                                (letrec ((_loop3164331707_
                                          (lambda (_hd3164131710_
                                                   _id3164731712_)
                                            (if (gx#stx-pair? _hd3164131710_)
                                                (let ((_e3164431715_
                                                       (gx#stx-e
                                                        _hd3164131710_)))
                                                  (let ((_lp-tl3164631720_
                                                         (##cdr _e3164431715_))
                                                        (_lp-hd3164531718_
                                                         (##car _e3164431715_)))
                                                    (_loop3164331707_
                                                     _lp-tl3164631720_
                                                     (cons _lp-hd3164531718_
                                                           _id3164731712_))))
                                                (let ((_id3164831723_
                                                       (reverse _id3164731712_)))
                                                  (if (gx#stx-pair?
                                                       _tl3163931699_)
                                                      (let ((_e3164931726_
                                                             (gx#stx-e
                                                              _tl3163931699_)))
                                                        (let ((_tl3165131731_
                                                               (##cdr _e3164931726_))
                                                              (_hd3165031729_
                                                               (##car _e3164931726_)))
                                                          (if (gx#stx-null?
                                                               _tl3165131731_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3163331683_)
                          (let ((___splice4371843719_
                                 (gx#syntax-split-splice _tl3163331683_ '0)))
                            (let ((_tl3165431736_
                                   (##vector-ref ___splice4371843719_ '1))
                                  (_target3165231734_
                                   (##vector-ref ___splice4371843719_ '0)))
                              (if (gx#stx-null? _tl3165431736_)
                                  (letrec ((_loop3165531739_
                                            (lambda (_hd3165331742_
                                                     _arg3165931744_)
                                              (if (gx#stx-pair? _hd3165331742_)
                                                  (let ((_e3165631747_
                                                         (gx#stx-e
                                                          _hd3165331742_)))
                                                    (let ((_lp-tl3165831752_
                                                           (##cdr _e3165631747_))
                                                          (_lp-hd3165731750_
                                                           (##car _e3165631747_)))
                                                      (_loop3165531739_
                                                       _lp-tl3165831752_
                                                       (cons _lp-hd3165731750_
                                                             _arg3165931744_))))
                                                  (let ((_arg3166031755_
                                                         (reverse _arg3165931744_)))
                                                    (___kont4371443715_
                                                     _arg3166031755_
                                                     _hd3165031729_
                                                     _id3164831723_))))))
                                    (_loop3165531739_ _target3165231734_ '()))
                                  (_g3153231665_))))
                          (_g3153231665_))
                      (_g3153231665_))))
              (_g3153231665_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop3164331707_ _target3164031702_ '()))))
                             (___match4384343844_
                              (lambda (_e3155432174_
                                       _hd3155532177_
                                       _tl3155632179_
                                       _e3155732182_
                                       _hd3155832185_
                                       _tl3155932187_
                                       _e3156032190_
                                       _hd3156132193_
                                       _tl3156232195_
                                       _e3156332198_
                                       _hd3156432201_
                                       _tl3156532203_
                                       _e3156632206_
                                       _hd3156732209_
                                       _tl3156832211_
                                       _e3156932214_
                                       _hd3157032217_
                                       _tl3157132219_
                                       _e3157232222_
                                       _hd3157332225_
                                       _tl3157432227_
                                       _e3157532230_
                                       _hd3157632233_
                                       _tl3157732235_
                                       _e3157832238_
                                       _hd3157932241_
                                       _tl3158032243_
                                       _e3158132246_
                                       _hd3158232249_
                                       _tl3158332251_
                                       _e3158432254_
                                       _hd3158532257_
                                       _tl3158632259_
                                       _e3158732262_
                                       _hd3158832265_
                                       _tl3158932267_)
                                (let ((_L32270_ _hd3158832265_)
                                      (_L32271_ _tl3158032243_)
                                      (_L32272_ _hd3158532257_)
                                      (_L32273_ _hd3157032217_)
                                      (_L32274_ _hd3156732209_))
                                  (if (gxc#runtime-identifier=?
                                       _L32272_
                                       'gx#syntax-split-splice)
                                      (___kont4370843709_
                                       _L32270_
                                       _L32271_
                                       _L32272_
                                       _L32273_
                                       _L32274_)
                                      (___kont4371043711_
                                       _hd3158832265_
                                       _hd3155832185_))))))
                        (if (gx#stx-pair? ___stx4370443705_)
                            (let ((_e3153732322_ (gx#stx-e ___stx4370443705_)))
                              (let ((_tl3153932327_ (##cdr _e3153732322_))
                                    (_hd3153832325_ (##car _e3153732322_)))
                                (if (gx#identifier? _hd3153832325_)
                                    (if (gx#stx-eq? '%#if _hd3153832325_)
                                        (if (gx#stx-pair? _tl3153932327_)
                                            (let ((_e3154032330_
                                                   (gx#stx-e _tl3153932327_)))
                                              (let ((_tl3154232335_
                                                     (##cdr _e3154032330_))
                                                    (_hd3154132333_
                                                     (##car _e3154032330_)))
                                                (if (gx#stx-pair?
                                                     _tl3154232335_)
                                                    (let ((_e3154332338_
                                                           (gx#stx-e
                                                            _tl3154232335_)))
                                                      (let ((_tl3154532343_
                                                             (##cdr _e3154332338_))
                                                            (_hd3154432341_
                                                             (##car _e3154332338_)))
                                                        (if (gx#stx-pair?
                                                             _tl3154532343_)
                                                            (let ((_e3154632346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3154532343_)))
                      (let ((_tl3154832351_ (##cdr _e3154632346_))
                            (_hd3154732349_ (##car _e3154632346_)))
                        (if (gx#stx-null? _tl3154832351_)
                            (___kont4370643707_
                             _hd3154732349_
                             _hd3154432341_
                             _hd3154132333_)
                            (_g3153231665_))))
                    (_g3153231665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3153231665_))))
                                            (_g3153231665_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3153832325_)
                                            (if (gx#stx-pair? _tl3153932327_)
                                                (let ((_e3155732182_
                                                       (gx#stx-e
                                                        _tl3153932327_)))
                                                  (let ((_tl3155932187_
                                                         (##cdr _e3155732182_))
                                                        (_hd3155832185_
                                                         (##car _e3155732182_)))
                                                    (if (gx#stx-pair?
                                                         _hd3155832185_)
                                                        (let ((_e3156032190_
                                                               (gx#stx-e
                                                                _hd3155832185_)))
                                                          (let ((_tl3156232195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3156032190_))
                        (_hd3156132193_ (##car _e3156032190_)))
                    (if (gx#stx-pair? _hd3156132193_)
                        (let ((_e3156332198_ (gx#stx-e _hd3156132193_)))
                          (let ((_tl3156532203_ (##cdr _e3156332198_))
                                (_hd3156432201_ (##car _e3156332198_)))
                            (if (gx#stx-pair? _hd3156432201_)
                                (let ((_e3156632206_
                                       (gx#stx-e _hd3156432201_)))
                                  (let ((_tl3156832211_ (##cdr _e3156632206_))
                                        (_hd3156732209_ (##car _e3156632206_)))
                                    (if (gx#stx-pair? _tl3156832211_)
                                        (let ((_e3156932214_
                                               (gx#stx-e _tl3156832211_)))
                                          (let ((_tl3157132219_
                                                 (##cdr _e3156932214_))
                                                (_hd3157032217_
                                                 (##car _e3156932214_)))
                                            (if (gx#stx-null? _tl3157132219_)
                                                (if (gx#stx-pair?
                                                     _tl3156532203_)
                                                    (let ((_e3157232222_
                                                           (gx#stx-e
                                                            _tl3156532203_)))
                                                      (let ((_tl3157432227_
                                                             (##cdr _e3157232222_))
                                                            (_hd3157332225_
                                                             (##car _e3157232222_)))
                                                        (if (gx#stx-pair?
                                                             _hd3157332225_)
                                                            (let ((_e3157532230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3157332225_)))
                      (let ((_tl3157732235_ (##cdr _e3157532230_))
                            (_hd3157632233_ (##car _e3157532230_)))
                        (if (gx#identifier? _hd3157632233_)
                            (if (gx#stx-eq? '%#call _hd3157632233_)
                                (if (gx#stx-pair? _tl3157732235_)
                                    (let ((_e3157832238_
                                           (gx#stx-e _tl3157732235_)))
                                      (let ((_tl3158032243_
                                             (##cdr _e3157832238_))
                                            (_hd3157932241_
                                             (##car _e3157832238_)))
                                        (if (gx#stx-pair? _hd3157932241_)
                                            (let ((_e3158132246_
                                                   (gx#stx-e _hd3157932241_)))
                                              (let ((_tl3158332251_
                                                     (##cdr _e3158132246_))
                                                    (_hd3158232249_
                                                     (##car _e3158132246_)))
                                                (if (gx#identifier?
                                                     _hd3158232249_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3158232249_)
                                                        (if (gx#stx-pair?
                                                             _tl3158332251_)
                                                            (let ((_e3158432254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3158332251_)))
                      (let ((_tl3158632259_ (##cdr _e3158432254_))
                            (_hd3158532257_ (##car _e3158432254_)))
                        (if (gx#stx-null? _tl3158632259_)
                            (if (gx#stx-null? _tl3157432227_)
                                (if (gx#stx-null? _tl3156232195_)
                                    (if (gx#stx-pair? _tl3155932187_)
                                        (let ((_e3158732262_
                                               (gx#stx-e _tl3155932187_)))
                                          (let ((_tl3158932267_
                                                 (##cdr _e3158732262_))
                                                (_hd3158832265_
                                                 (##car _e3158732262_)))
                                            (if (gx#stx-null? _tl3158932267_)
                                                (___match4384343844_
                                                 _e3153732322_
                                                 _hd3153832325_
                                                 _tl3153932327_
                                                 _e3155732182_
                                                 _hd3155832185_
                                                 _tl3155932187_
                                                 _e3156032190_
                                                 _hd3156132193_
                                                 _tl3156232195_
                                                 _e3156332198_
                                                 _hd3156432201_
                                                 _tl3156532203_
                                                 _e3156632206_
                                                 _hd3156732209_
                                                 _tl3156832211_
                                                 _e3156932214_
                                                 _hd3157032217_
                                                 _tl3157132219_
                                                 _e3157232222_
                                                 _hd3157332225_
                                                 _tl3157432227_
                                                 _e3157532230_
                                                 _hd3157632233_
                                                 _tl3157732235_
                                                 _e3157832238_
                                                 _hd3157932241_
                                                 _tl3158032243_
                                                 _e3158132246_
                                                 _hd3158232249_
                                                 _tl3158332251_
                                                 _e3158432254_
                                                 _hd3158532257_
                                                 _tl3158632259_
                                                 _e3158732262_
                                                 _hd3158832265_
                                                 _tl3158932267_)
                                                (_g3153231665_))))
                                        (_g3153231665_))
                                    (if (gx#stx-pair? _tl3155932187_)
                                        (let ((_e3159832144_
                                               (gx#stx-e _tl3155932187_)))
                                          (let ((_tl3160032149_
                                                 (##cdr _e3159832144_))
                                                (_hd3159932147_
                                                 (##car _e3159832144_)))
                                            (if (gx#stx-null? _tl3160032149_)
                                                (___kont4371043711_
                                                 _hd3159932147_
                                                 _hd3155832185_)
                                                (_g3153231665_))))
                                        (_g3153231665_)))
                                (if (gx#stx-pair? _tl3155932187_)
                                    (let ((_e3159832144_
                                           (gx#stx-e _tl3155932187_)))
                                      (let ((_tl3160032149_
                                             (##cdr _e3159832144_))
                                            (_hd3159932147_
                                             (##car _e3159832144_)))
                                        (if (gx#stx-null? _tl3160032149_)
                                            (___kont4371043711_
                                             _hd3159932147_
                                             _hd3155832185_)
                                            (_g3153231665_))))
                                    (_g3153231665_)))
                            (if (gx#stx-pair? _tl3155932187_)
                                (let ((_e3159832144_
                                       (gx#stx-e _tl3155932187_)))
                                  (let ((_tl3160032149_ (##cdr _e3159832144_))
                                        (_hd3159932147_ (##car _e3159832144_)))
                                    (if (gx#stx-null? _tl3160032149_)
                                        (___kont4371043711_
                                         _hd3159932147_
                                         _hd3155832185_)
                                        (_g3153231665_))))
                                (_g3153231665_)))))
                    (if (gx#stx-pair? _tl3155932187_)
                        (let ((_e3159832144_ (gx#stx-e _tl3155932187_)))
                          (let ((_tl3160032149_ (##cdr _e3159832144_))
                                (_hd3159932147_ (##car _e3159832144_)))
                            (if (gx#stx-null? _tl3160032149_)
                                (___kont4371043711_
                                 _hd3159932147_
                                 _hd3155832185_)
                                (_g3153231665_))))
                        (_g3153231665_)))
                (if (gx#stx-pair? _tl3155932187_)
                    (let ((_e3159832144_ (gx#stx-e _tl3155932187_)))
                      (let ((_tl3160032149_ (##cdr _e3159832144_))
                            (_hd3159932147_ (##car _e3159832144_)))
                        (if (gx#stx-null? _tl3160032149_)
                            (___kont4371043711_ _hd3159932147_ _hd3155832185_)
                            (_g3153231665_))))
                    (_g3153231665_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3155932187_)
                                                        (let ((_e3159832144_
                                                               (gx#stx-e
                                                                _tl3155932187_)))
                                                          (let ((_tl3160032149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3159832144_))
                        (_hd3159932147_ (##car _e3159832144_)))
                    (if (gx#stx-null? _tl3160032149_)
                        (___kont4371043711_ _hd3159932147_ _hd3155832185_)
                        (_g3153231665_))))
                (_g3153231665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3155932187_)
                                                (let ((_e3159832144_
                                                       (gx#stx-e
                                                        _tl3155932187_)))
                                                  (let ((_tl3160032149_
                                                         (##cdr _e3159832144_))
                                                        (_hd3159932147_
                                                         (##car _e3159832144_)))
                                                    (if (gx#stx-null?
                                                         _tl3160032149_)
                                                        (___kont4371043711_
                                                         _hd3159932147_
                                                         _hd3155832185_)
                                                        (_g3153231665_))))
                                                (_g3153231665_)))))
                                    (if (gx#stx-pair? _tl3155932187_)
                                        (let ((_e3159832144_
                                               (gx#stx-e _tl3155932187_)))
                                          (let ((_tl3160032149_
                                                 (##cdr _e3159832144_))
                                                (_hd3159932147_
                                                 (##car _e3159832144_)))
                                            (if (gx#stx-null? _tl3160032149_)
                                                (___kont4371043711_
                                                 _hd3159932147_
                                                 _hd3155832185_)
                                                (_g3153231665_))))
                                        (_g3153231665_)))
                                (if (gx#stx-pair? _tl3155932187_)
                                    (let ((_e3159832144_
                                           (gx#stx-e _tl3155932187_)))
                                      (let ((_tl3160032149_
                                             (##cdr _e3159832144_))
                                            (_hd3159932147_
                                             (##car _e3159832144_)))
                                        (if (gx#stx-null? _tl3160032149_)
                                            (___kont4371043711_
                                             _hd3159932147_
                                             _hd3155832185_)
                                            (_g3153231665_))))
                                    (_g3153231665_)))
                            (if (gx#stx-pair? _tl3155932187_)
                                (let ((_e3159832144_
                                       (gx#stx-e _tl3155932187_)))
                                  (let ((_tl3160032149_ (##cdr _e3159832144_))
                                        (_hd3159932147_ (##car _e3159832144_)))
                                    (if (gx#stx-null? _tl3160032149_)
                                        (___kont4371043711_
                                         _hd3159932147_
                                         _hd3155832185_)
                                        (_g3153231665_))))
                                (_g3153231665_)))))
                    (if (gx#stx-pair? _tl3155932187_)
                        (let ((_e3159832144_ (gx#stx-e _tl3155932187_)))
                          (let ((_tl3160032149_ (##cdr _e3159832144_))
                                (_hd3159932147_ (##car _e3159832144_)))
                            (if (gx#stx-null? _tl3160032149_)
                                (___kont4371043711_
                                 _hd3159932147_
                                 _hd3155832185_)
                                (_g3153231665_))))
                        (_g3153231665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3155932187_)
                                                        (let ((_e3159832144_
                                                               (gx#stx-e
                                                                _tl3155932187_)))
                                                          (let ((_tl3160032149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3159832144_))
                        (_hd3159932147_ (##car _e3159832144_)))
                    (if (gx#stx-null? _tl3160032149_)
                        (___kont4371043711_ _hd3159932147_ _hd3155832185_)
                        (_g3153231665_))))
                (_g3153231665_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _tl3155932187_)
                                                    (let ((_e3159832144_
                                                           (gx#stx-e
                                                            _tl3155932187_)))
                                                      (let ((_tl3160032149_
                                                             (##cdr _e3159832144_))
                                                            (_hd3159932147_
                                                             (##car _e3159832144_)))
                                                        (if (gx#stx-null?
                                                             _tl3160032149_)
                                                            (___kont4371043711_
                                                             _hd3159932147_
                                                             _hd3155832185_)
                                                            (_g3153231665_))))
                                                    (_g3153231665_)))))
                                        (if (gx#stx-pair? _tl3155932187_)
                                            (let ((_e3159832144_
                                                   (gx#stx-e _tl3155932187_)))
                                              (let ((_tl3160032149_
                                                     (##cdr _e3159832144_))
                                                    (_hd3159932147_
                                                     (##car _e3159832144_)))
                                                (if (gx#stx-null?
                                                     _tl3160032149_)
                                                    (___kont4371043711_
                                                     _hd3159932147_
                                                     _hd3155832185_)
                                                    (_g3153231665_))))
                                            (_g3153231665_)))))
                                (if (gx#stx-pair? _tl3155932187_)
                                    (let ((_e3159832144_
                                           (gx#stx-e _tl3155932187_)))
                                      (let ((_tl3160032149_
                                             (##cdr _e3159832144_))
                                            (_hd3159932147_
                                             (##car _e3159832144_)))
                                        (if (gx#stx-null? _tl3160032149_)
                                            (___kont4371043711_
                                             _hd3159932147_
                                             _hd3155832185_)
                                            (_g3153231665_))))
                                    (_g3153231665_)))))
                        (if (gx#stx-pair? _tl3155932187_)
                            (let ((_e3159832144_ (gx#stx-e _tl3155932187_)))
                              (let ((_tl3160032149_ (##cdr _e3159832144_))
                                    (_hd3159932147_ (##car _e3159832144_)))
                                (if (gx#stx-null? _tl3160032149_)
                                    (___kont4371043711_
                                     _hd3159932147_
                                     _hd3155832185_)
                                    (_g3153231665_))))
                            (_g3153231665_)))))
                (if (gx#stx-pair? _tl3155932187_)
                    (let ((_e3159832144_ (gx#stx-e _tl3155932187_)))
                      (let ((_tl3160032149_ (##cdr _e3159832144_))
                            (_hd3159932147_ (##car _e3159832144_)))
                        (if (gx#stx-null? _tl3160032149_)
                            (___kont4371043711_ _hd3159932147_ _hd3155832185_)
                            (_g3153231665_))))
                    (_g3153231665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3153231665_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3153832325_)
                                                (if (gx#stx-pair?
                                                     _tl3153932327_)
                                                    (let ((_e3160732048_
                                                           (gx#stx-e
                                                            _tl3153932327_)))
                                                      (let ((_tl3160932053_
                                                             (##cdr _e3160732048_))
                                                            (_hd3160832051_
                                                             (##car _e3160732048_)))
                                                        (if (gx#stx-pair?
                                                             _hd3160832051_)
                                                            (let ((_e3161032056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3160832051_)))
                      (let ((_tl3161232061_ (##cdr _e3161032056_))
                            (_hd3161132059_ (##car _e3161032056_)))
                        (if (gx#stx-pair? _hd3161132059_)
                            (let ((_e3161332064_ (gx#stx-e _hd3161132059_)))
                              (let ((_tl3161532069_ (##cdr _e3161332064_))
                                    (_hd3161432067_ (##car _e3161332064_)))
                                (if (gx#stx-pair? _hd3161432067_)
                                    (let ((_e3161632072_
                                           (gx#stx-e _hd3161432067_)))
                                      (let ((_tl3161832077_
                                             (##cdr _e3161632072_))
                                            (_hd3161732075_
                                             (##car _e3161632072_)))
                                        (if (gx#stx-null? _tl3161832077_)
                                            (if (gx#stx-pair? _tl3161532069_)
                                                (let ((_e3161932080_
                                                       (gx#stx-e
                                                        _tl3161532069_)))
                                                  (let ((_tl3162132085_
                                                         (##cdr _e3161932080_))
                                                        (_hd3162032083_
                                                         (##car _e3161932080_)))
                                                    (if (gx#stx-null?
                                                         _tl3162132085_)
                                                        (if (gx#stx-null?
                                                             _tl3161232061_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3160932053_)
                        (let ((_e3162232088_ (gx#stx-e _tl3160932053_)))
                          (let ((_tl3162432093_ (##cdr _e3162232088_))
                                (_hd3162332091_ (##car _e3162232088_)))
                            (if (gx#stx-null? _tl3162432093_)
                                (___kont4371243713_
                                 _hd3162332091_
                                 _hd3162032083_
                                 _hd3161732075_)
                                (_g3153231665_))))
                        (_g3153231665_))
                    (_g3153231665_))
                (_g3153231665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3153231665_))
                                            (_g3153231665_))))
                                    (_g3153231665_))))
                            (_g3153231665_))))
                    (_g3153231665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3153231665_))
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd3153832325_)
                                                    (if (gx#stx-pair?
                                                         _tl3153932327_)
                                                        (let ((_e3163131678_
                                                               (gx#stx-e
                                                                _tl3153932327_)))
                                                          (let ((_tl3163331683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3163131678_))
                        (_hd3163231681_ (##car _e3163131678_)))
                    (if (gx#stx-pair? _hd3163231681_)
                        (let ((_e3163431686_ (gx#stx-e _hd3163231681_)))
                          (let ((_tl3163631691_ (##cdr _e3163431686_))
                                (_hd3163531689_ (##car _e3163431686_)))
                            (if (gx#identifier? _hd3163531689_)
                                (if (gx#stx-eq? '%#lambda _hd3163531689_)
                                    (if (gx#stx-pair? _tl3163631691_)
                                        (let ((_e3163731694_
                                               (gx#stx-e _tl3163631691_)))
                                          (let ((_tl3163931699_
                                                 (##cdr _e3163731694_))
                                                (_hd3163831697_
                                                 (##car _e3163731694_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3163831697_)
                                                (let ((___splice4371643717_
                                                       (gx#syntax-split-splice
                                                        _hd3163831697_
                                                        '0)))
                                                  (let ((_tl3164231704_
                                                         (##vector-ref
                                                          ___splice4371643717_
                                                          '1))
                                                        (_target3164031702_
                                                         (##vector-ref
                                                          ___splice4371643717_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3164231704_)
                                                        (___match4396143962_
                                                         _e3153732322_
                                                         _hd3153832325_
                                                         _tl3153932327_
                                                         _e3163131678_
                                                         _hd3163231681_
                                                         _tl3163331683_
                                                         _e3163431686_
                                                         _hd3163531689_
                                                         _tl3163631691_
                                                         _e3163731694_
                                                         _hd3163831697_
                                                         _tl3163931699_
                                                         ___splice4371643717_
                                                         _target3164031702_
                                                         _tl3164231704_)
                                                        (_g3153231665_))))
                                                (_g3153231665_))))
                                        (_g3153231665_))
                                    (_g3153231665_))
                                (_g3153231665_))))
                        (_g3153231665_))))
                (_g3153231665_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3153231665_)))))
                                    (_g3153231665_))))
                            (_g3153231665_)))))))
               (_xform-loop-e31140_
                (lambda (_expr31349_
                         _kont-id31350_
                         _kont-box31351_
                         _negation-id31352_)
                  (let* ((_g3135431394_
                          (lambda (_g3135531391_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3135531391_)))
                         (_g3135331520_
                          (lambda (_g3135531397_)
                            (if (gx#stx-pair? _g3135531397_)
                                (let ((_e3136031399_ (gx#stx-e _g3135531397_)))
                                  (let ((_hd3136131402_ (##car _e3136031399_))
                                        (_tl3136231404_ (##cdr _e3136031399_)))
                                    (if (gx#identifier? _hd3136131402_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3136131402_)
                                            (if (gx#stx-pair? _tl3136231404_)
                                                (let ((_e3136331407_
                                                       (gx#stx-e
                                                        _tl3136231404_)))
                                                  (let ((_hd3136431410_
                                                         (##car _e3136331407_))
                                                        (_tl3136531412_
                                                         (##cdr _e3136331407_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3136431410_)
                                                        (let ((_g44279_
                                                               (gx#syntax-split-splice
                                                                _hd3136431410_
                                                                '0)))
                                                          (begin
                                                            (let ((_g44280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g44279_)
                               (##vector-length _g44279_)
                               1)))
                      (if (not (##fx= _g44280_ 2))
                          (error "Context expects 2 values" _g44280_)))
                    (let ((_target3136631415_ (##vector-ref _g44279_ 0))
                          (_tl3136831417_ (##vector-ref _g44279_ 1)))
                      (if (gx#stx-null? _tl3136831417_)
                          (letrec ((_loop3136931420_
                                    (lambda (_hd3136731423_ _id3137331425_)
                                      (if (gx#stx-pair? _hd3136731423_)
                                          (let ((_e3137031428_
                                                 (gx#stx-e _hd3136731423_)))
                                            (let ((_lp-hd3137131431_
                                                   (##car _e3137031428_))
                                                  (_lp-tl3137231433_
                                                   (##cdr _e3137031428_)))
                                              (_loop3136931420_
                                               _lp-tl3137231433_
                                               (cons _lp-hd3137131431_
                                                     _id3137331425_))))
                                          (let ((_id3137431436_
                                                 (reverse _id3137331425_)))
                                            (if (gx#stx-pair? _tl3136531412_)
                                                (let ((_e3137531439_
                                                       (gx#stx-e
                                                        _tl3136531412_)))
                                                  (let ((_hd3137631442_
                                                         (##car _e3137531439_))
                                                        (_tl3137731444_
                                                         (##cdr _e3137531439_)))
                                                    (if (gx#stx-pair?
                                                         _hd3137631442_)
                                                        (let ((_e3137831447_
                                                               (gx#stx-e
                                                                _hd3137631442_)))
                                                          (let ((_hd3137931450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3137831447_))
                        (_tl3138031452_ (##cdr _e3137831447_)))
                    (if (gx#identifier? _hd3137931450_)
                        (if (gx#stx-eq? '%#if _hd3137931450_)
                            (if (gx#stx-pair? _tl3138031452_)
                                (let ((_e3138131455_
                                       (gx#stx-e _tl3138031452_)))
                                  (let ((_hd3138231458_ (##car _e3138131455_))
                                        (_tl3138331460_ (##cdr _e3138131455_)))
                                    (if (gx#stx-pair? _tl3138331460_)
                                        (let ((_e3138431463_
                                               (gx#stx-e _tl3138331460_)))
                                          (let ((_hd3138531466_
                                                 (##car _e3138431463_))
                                                (_tl3138631468_
                                                 (##cdr _e3138431463_)))
                                            (if (gx#stx-pair? _tl3138631468_)
                                                (let ((_e3138731471_
                                                       (gx#stx-e
                                                        _tl3138631468_)))
                                                  (let ((_hd3138831474_
                                                         (##car _e3138731471_))
                                                        (_tl3138931476_
                                                         (##cdr _e3138731471_)))
                                                    (if (gx#stx-null?
                                                         _tl3138931476_)
                                                        (if (gx#stx-null?
                                                             _tl3137731444_)
                                                            ((lambda (_L31479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L31480_
                              _L31481_
                              _L31482_)
                       (let ((_E31511_
                              (_xform-e31139_
                               _L31479_
                               _kont-id31350_
                               _kont-box31351_
                               _negation-id31352_)))
                         (cons '%#lambda
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3151231515_
                                                        _g3151331517_)
                                                 (cons _g3151231515_
                                                       _g3151331517_))
                                               '()
                                               _L31482_))
                                     (cons (cons '%#if
                                                 (cons _L31481_
                                                       (cons _L31480_
                                                             (cons _E31511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _hd3138831474_
                     _hd3138531466_
                     _hd3138231458_
                     _id3137431436_)
                    (_g3135431394_ _g3135531397_))
                (_g3135431394_ _g3135531397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3135431394_
                                                 _g3135531397_))))
                                        (_g3135431394_ _g3135531397_))))
                                (_g3135431394_ _g3135531397_))
                            (_g3135431394_ _g3135531397_))
                        (_g3135431394_ _g3135531397_))))
                (_g3135431394_ _g3135531397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3135431394_
                                                 _g3135531397_)))))))
                            (_loop3136931420_ _target3136631415_ '()))
                          (_g3135431394_ _g3135531397_)))))
                (_g3135431394_ _g3135531397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3135431394_ _g3135531397_))
                                            (_g3135431394_ _g3135531397_))
                                        (_g3135431394_ _g3135531397_))))
                                (_g3135431394_ _g3135531397_)))))
                    (_g3135331520_ _expr31349_))))
               (_clause-e31141_
                (lambda (_clause-lambda31219_ _kont-id31220_ _rest31221_)
                  (letrec* ((_kont-box31223_ (box '#f)))
                    (let* ((_negation-id31263_
                            (let* ((_rest3122431234_ _rest31221_)
                                   (_else3122631242_
                                    (lambda () _negation-id31137_))
                                   (_K3122831248_
                                    (lambda (_clause31245_ _clause-id31246_)
                                      _clause-id31246_)))
                              (if (##pair? _rest3122431234_)
                                  (let ((_hd3122931251_
                                         (##car _rest3122431234_)))
                                    (if (##pair? _hd3122931251_)
                                        (let ((_hd3123131254_
                                               (##car _hd3122931251_))
                                              (_tl3123231256_
                                               (##cdr _hd3122931251_)))
                                          (let* ((_clause-id31259_
                                                  _hd3123131254_)
                                                 (_clause31261_
                                                  _tl3123231256_))
                                            (_K3122831248_
                                             _clause31261_
                                             _clause-id31259_)))
                                        (_else3122631242_)))
                                  (_else3122631242_))))
                           (_g3126531285_
                            (lambda (_g3126631282_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g3126631282_)))
                           (_g3126431346_
                            (lambda (_g3126631288_)
                              (if (gx#stx-pair? _g3126631288_)
                                  (let ((_e3126931290_
                                         (gx#stx-e _g3126631288_)))
                                    (let ((_hd3127031293_
                                           (##car _e3126931290_))
                                          (_tl3127131295_
                                           (##cdr _e3126931290_)))
                                      (if (gx#identifier? _hd3127031293_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd3127031293_)
                                              (if (gx#stx-pair? _tl3127131295_)
                                                  (let ((_e3127231298_
                                                         (gx#stx-e
                                                          _tl3127131295_)))
                                                    (let ((_hd3127331301_
                                                           (##car _e3127231298_))
                                                          (_tl3127431303_
                                                           (##cdr _e3127231298_)))
                                                      (if (gx#stx-pair?
                                                           _hd3127331301_)
                                                          (let ((_e3127531306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3127331301_)))
                    (let ((_hd3127631309_ (##car _e3127531306_))
                          (_tl3127731311_ (##cdr _e3127531306_)))
                      (if (gx#stx-null? _tl3127731311_)
                          (if (gx#stx-pair? _tl3127431303_)
                              (let ((_e3127831314_ (gx#stx-e _tl3127431303_)))
                                (let ((_hd3127931317_ (##car _e3127831314_))
                                      (_tl3128031319_ (##cdr _e3127831314_)))
                                  (if (gx#stx-null? _tl3128031319_)
                                      ((lambda (_L31322_ _L31323_)
                                         (let ((_body31344_
                                                (_xform-e31139_
                                                 _L31322_
                                                 _kont-id31220_
                                                 _kont-box31223_
                                                 _negation-id31263_)))
                                           (values (cons '%#lambda
                                                         (cons (cons _L31323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _body31344_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (unbox _kont-box31223_))))
                                       _hd3127931317_
                                       _hd3127631309_)
                                      (_g3126531285_ _g3126631288_))))
                              (_g3126531285_ _g3126631288_))
                          (_g3126531285_ _g3126631288_))))
                  (_g3126531285_ _g3126631288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3126531285_
                                                   _g3126631288_))
                                              (_g3126531285_ _g3126631288_))
                                          (_g3126531285_ _g3126631288_))))
                                  (_g3126531285_ _g3126631288_)))))
                      (_g3126431346_ _clause-lambda31219_))))))
        (let _lp31143_ ((_rest31145_ _clauses31136_)
                        (_clauses31146_ '())
                        (_konts31147_ '()))
          (let* ((_rest3114831156_ _rest31145_)
                 (_else3115031164_
                  (lambda ()
                    (values (reverse _clauses31146_) (reverse _konts31147_))))
                 (_K3115231207_
                  (lambda (_rest31167_ _clause31168_)
                    (let* ((_clause3116931176_ _clause31168_)
                           (_E3117131180_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause3116931176_)))
                           (_K3117231195_
                            (lambda (_clause-lambda31183_ _clause-id31184_)
                              (let* ((_id31186_ (make-symbol (gensym '__kont)))
                                     (_id31188_
                                      (gx#core-quote-syntax__0 _id31186_))
                                     (_g44281_
                                      (gx#core-bind-runtime!__0 _id31188_))
                                     (_g44282_
                                      (_clause-e31141_
                                       _clause-lambda31183_
                                       _id31188_
                                       _rest31167_)))
                                (begin
                                  (let ((_g44283_
                                         (if (##values? _g44282_)
                                             (##vector-length _g44282_)
                                             1)))
                                    (if (not (##fx= _g44283_ 2))
                                        (error "Context expects 2 values"
                                               _g44283_)))
                                  (let ((_clause-lambda31191_
                                         (##vector-ref _g44282_ 0))
                                        (_kont31192_
                                         (##vector-ref _g44282_ 1)))
                                    (let ()
                                      (_lp31143_
                                       _rest31167_
                                       (cons (cons _clause-id31184_
                                                   _clause-lambda31191_)
                                             _clauses31146_)
                                       (cons (cons _id31188_ _kont31192_)
                                             _konts31147_)))))))))
                      (if (##pair? _clause3116931176_)
                          (let ((_hd3117331198_ (##car _clause3116931176_))
                                (_tl3117431200_ (##cdr _clause3116931176_)))
                            (let* ((_clause-id31203_ _hd3117331198_)
                                   (_clause-lambda31205_ _tl3117431200_))
                              (_K3117231195_
                               _clause-lambda31205_
                               _clause-id31203_)))
                          (_E3117131180_))))))
            (if (##pair? _rest3114831156_)
                (let ((_hd3115331210_ (##car _rest3114831156_))
                      (_tl3115431212_ (##cdr _rest3114831156_)))
                  (let* ((_clause31215_ _hd3115331210_)
                         (_rest31217_ _tl3115431212_))
                    (_K3115231207_ _rest31217_ _clause31215_)))
                (_else3115031164_)))))))
  (define gxc#optimize-syntax-case-closure
    (lambda (_clause30480_ _negation30481_ _target30482_)
      (letrec ((_closure-e30484_
                (lambda (_expr30601_)
                  (let* ((___stx4396443965_ _expr30601_)
                         (_g3060830723_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4396443965_))))
                    (let ((___kont4396643967_
                           (lambda (_L31114_ _L31115_ _L31116_)
                             (cons '%#if
                                   (cons _L31116_
                                         (cons (_closure-e30484_ _L31115_)
                                               (cons (_closure-e30484_
                                                      _L31114_)
                                                     '()))))))
                          (___kont4396843969_
                           (lambda (_L31062_ _L31063_)
                             (cons '%#let-values
                                   (cons _L31063_
                                         (cons (_closure-e30484_ _L31062_)
                                               '())))))
                          (___kont4397043971_
                           (lambda (_L31008_ _L31009_ _L31010_)
                             (cons '%#letrec-values
                                   (cons (cons (cons (cons _L31010_ '())
                                                     (cons (_closure-e30484_
                                                            _L31009_)
                                                           '()))
                                               '())
                                         (cons _L31008_ '())))))
                          (___kont4397243973_
                           (lambda (_L30921_ _L30922_)
                             (cons '%#lambda
                                   (cons (begin
                                           '#!void
                                           (foldr1 (lambda (_g3093930942_
                                                            _g3094030944_)
                                                     (cons _g3093930942_
                                                           _g3094030944_))
                                                   '()
                                                   _L30922_))
                                         (cons (_closure-e30484_ _L30921_)
                                               '())))))
                          (___kont4397643977_
                           (lambda (_L30851_)
                             (cons '%#call
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _L30851_ '()))
                                         '()))))
                          (___kont4397843979_
                           (lambda (_L30784_ _L30785_) _expr30601_)))
                      (let* ((___match4419744198_
                              (lambda (_e3069830728_
                                       _hd3069930731_
                                       _tl3070030733_
                                       _e3070130736_
                                       _hd3070230739_
                                       _tl3070330741_
                                       _e3070430744_
                                       _hd3070530747_
                                       _tl3070630749_
                                       _e3070730752_
                                       _hd3070830755_
                                       _tl3070930757_
                                       ___splice4398043981_
                                       _target3071030760_
                                       _tl3071230762_)
                                (letrec ((_loop3071330765_
                                          (lambda (_hd3071130768_
                                                   _arg3071730770_)
                                            (if (gx#stx-pair? _hd3071130768_)
                                                (let ((_e3071430773_
                                                       (gx#stx-e
                                                        _hd3071130768_)))
                                                  (let ((_lp-tl3071630778_
                                                         (##cdr _e3071430773_))
                                                        (_lp-hd3071530776_
                                                         (##car _e3071430773_)))
                                                    (_loop3071330765_
                                                     _lp-tl3071630778_
                                                     (cons _lp-hd3071530776_
                                                           _arg3071730770_))))
                                                (let ((_arg3071830781_
                                                       (reverse _arg3071730770_)))
                                                  (___kont4397843979_
                                                   _arg3071830781_
                                                   _hd3070830755_))))))
                                  (_loop3071330765_ _target3071030760_ '()))))
                             (___match4415544156_
                              (lambda (_e3068130811_
                                       _hd3068230814_
                                       _tl3068330816_
                                       _e3068430819_
                                       _hd3068530822_
                                       _tl3068630824_
                                       _e3068730827_
                                       _hd3068830830_
                                       _tl3068930832_
                                       _e3069030835_
                                       _hd3069130838_
                                       _tl3069230840_
                                       _e3069330843_
                                       _hd3069430846_
                                       _tl3069530848_)
                                (let ((_L30851_ _hd3069130838_))
                                  (if (gx#free-identifier=?
                                       _L30851_
                                       _negation30481_)
                                      (___kont4397643977_ _L30851_)
                                      (if (gx#stx-pair/null? _tl3068630824_)
                                          (let ((___splice4398043981_
                                                 (gx#syntax-split-splice
                                                  _tl3068630824_
                                                  '0)))
                                            (let ((_tl3071230762_
                                                   (##vector-ref
                                                    ___splice4398043981_
                                                    '1))
                                                  (_target3071030760_
                                                   (##vector-ref
                                                    ___splice4398043981_
                                                    '0)))
                                              (if (gx#stx-null? _tl3071230762_)
                                                  (___match4419744198_
                                                   _e3068130811_
                                                   _hd3068230814_
                                                   _tl3068330816_
                                                   _e3068430819_
                                                   _hd3068530822_
                                                   _tl3068630824_
                                                   _e3068730827_
                                                   _hd3068830830_
                                                   _tl3068930832_
                                                   _e3069030835_
                                                   _hd3069130838_
                                                   _tl3069230840_
                                                   ___splice4398043981_
                                                   _target3071030760_
                                                   _tl3071230762_)
                                                  (_g3060830723_))))
                                          (_g3060830723_))))))
                             (___match4411344114_
                              (lambda (_e3066230873_
                                       _hd3066330876_
                                       _tl3066430878_
                                       _e3066530881_
                                       _hd3066630884_
                                       _tl3066730886_
                                       ___splice4397443975_
                                       _target3066830889_
                                       _tl3067030891_)
                                (letrec ((_loop3067130894_
                                          (lambda (_hd3066930897_
                                                   _id3067530899_)
                                            (if (gx#stx-pair? _hd3066930897_)
                                                (let ((_e3067230902_
                                                       (gx#stx-e
                                                        _hd3066930897_)))
                                                  (let ((_lp-tl3067430907_
                                                         (##cdr _e3067230902_))
                                                        (_lp-hd3067330905_
                                                         (##car _e3067230902_)))
                                                    (_loop3067130894_
                                                     _lp-tl3067430907_
                                                     (cons _lp-hd3067330905_
                                                           _id3067530899_))))
                                                (let ((_id3067630910_
                                                       (reverse _id3067530899_)))
                                                  (if (gx#stx-pair?
                                                       _tl3066730886_)
                                                      (let ((_e3067730913_
                                                             (gx#stx-e
                                                              _tl3066730886_)))
                                                        (let ((_tl3067930918_
                                                               (##cdr _e3067730913_))
                                                              (_hd3067830916_
                                                               (##car _e3067730913_)))
                                                          (if (gx#stx-null?
                                                               _tl3067930918_)
                                                              (___kont4397243973_
                                                               _hd3067830916_
                                                               _id3067630910_)
                                                              (_g3060830723_))))
                                                      (_g3060830723_)))))))
                                  (_loop3067130894_ _target3066830889_ '())))))
                        (if (gx#stx-pair? ___stx4396443965_)
                            (let ((_e3061331082_ (gx#stx-e ___stx4396443965_)))
                              (let ((_tl3061531087_ (##cdr _e3061331082_))
                                    (_hd3061431085_ (##car _e3061331082_)))
                                (if (gx#identifier? _hd3061431085_)
                                    (if (gx#stx-eq? '%#if _hd3061431085_)
                                        (if (gx#stx-pair? _tl3061531087_)
                                            (let ((_e3061631090_
                                                   (gx#stx-e _tl3061531087_)))
                                              (let ((_tl3061831095_
                                                     (##cdr _e3061631090_))
                                                    (_hd3061731093_
                                                     (##car _e3061631090_)))
                                                (if (gx#stx-pair?
                                                     _tl3061831095_)
                                                    (let ((_e3061931098_
                                                           (gx#stx-e
                                                            _tl3061831095_)))
                                                      (let ((_tl3062131103_
                                                             (##cdr _e3061931098_))
                                                            (_hd3062031101_
                                                             (##car _e3061931098_)))
                                                        (if (gx#stx-pair?
                                                             _tl3062131103_)
                                                            (let ((_e3062231106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3062131103_)))
                      (let ((_tl3062431111_ (##cdr _e3062231106_))
                            (_hd3062331109_ (##car _e3062231106_)))
                        (if (gx#stx-null? _tl3062431111_)
                            (___kont4396643967_
                             _hd3062331109_
                             _hd3062031101_
                             _hd3061731093_)
                            (_g3060830723_))))
                    (_g3060830723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3060830723_))))
                                            (_g3060830723_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3061431085_)
                                            (if (gx#stx-pair? _tl3061531087_)
                                                (let ((_e3063031046_
                                                       (gx#stx-e
                                                        _tl3061531087_)))
                                                  (let ((_tl3063231051_
                                                         (##cdr _e3063031046_))
                                                        (_hd3063131049_
                                                         (##car _e3063031046_)))
                                                    (if (gx#stx-pair?
                                                         _tl3063231051_)
                                                        (let ((_e3063331054_
                                                               (gx#stx-e
                                                                _tl3063231051_)))
                                                          (let ((_tl3063531059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3063331054_))
                        (_hd3063431057_ (##car _e3063331054_)))
                    (if (gx#stx-null? _tl3063531059_)
                        (___kont4396843969_ _hd3063431057_ _hd3063131049_)
                        (_g3060830723_))))
                (_g3060830723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3060830723_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3061431085_)
                                                (if (gx#stx-pair?
                                                     _tl3061531087_)
                                                    (let ((_e3064230960_
                                                           (gx#stx-e
                                                            _tl3061531087_)))
                                                      (let ((_tl3064430965_
                                                             (##cdr _e3064230960_))
                                                            (_hd3064330963_
                                                             (##car _e3064230960_)))
                                                        (if (gx#stx-pair?
                                                             _hd3064330963_)
                                                            (let ((_e3064530968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3064330963_)))
                      (let ((_tl3064730973_ (##cdr _e3064530968_))
                            (_hd3064630971_ (##car _e3064530968_)))
                        (if (gx#stx-pair? _hd3064630971_)
                            (let ((_e3064830976_ (gx#stx-e _hd3064630971_)))
                              (let ((_tl3065030981_ (##cdr _e3064830976_))
                                    (_hd3064930979_ (##car _e3064830976_)))
                                (if (gx#stx-pair? _hd3064930979_)
                                    (let ((_e3065130984_
                                           (gx#stx-e _hd3064930979_)))
                                      (let ((_tl3065330989_
                                             (##cdr _e3065130984_))
                                            (_hd3065230987_
                                             (##car _e3065130984_)))
                                        (if (gx#stx-null? _tl3065330989_)
                                            (if (gx#stx-pair? _tl3065030981_)
                                                (let ((_e3065430992_
                                                       (gx#stx-e
                                                        _tl3065030981_)))
                                                  (let ((_tl3065630997_
                                                         (##cdr _e3065430992_))
                                                        (_hd3065530995_
                                                         (##car _e3065430992_)))
                                                    (if (gx#stx-null?
                                                         _tl3065630997_)
                                                        (if (gx#stx-null?
                                                             _tl3064730973_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3064430965_)
                        (let ((_e3065731000_ (gx#stx-e _tl3064430965_)))
                          (let ((_tl3065931005_ (##cdr _e3065731000_))
                                (_hd3065831003_ (##car _e3065731000_)))
                            (if (gx#stx-null? _tl3065931005_)
                                (___kont4397043971_
                                 _hd3065831003_
                                 _hd3065530995_
                                 _hd3065230987_)
                                (_g3060830723_))))
                        (_g3060830723_))
                    (_g3060830723_))
                (_g3060830723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3060830723_))
                                            (_g3060830723_))))
                                    (_g3060830723_))))
                            (_g3060830723_))))
                    (_g3060830723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3060830723_))
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd3061431085_)
                                                    (if (gx#stx-pair?
                                                         _tl3061531087_)
                                                        (let ((_e3066530881_
                                                               (gx#stx-e
                                                                _tl3061531087_)))
                                                          (let ((_tl3066730886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3066530881_))
                        (_hd3066630884_ (##car _e3066530881_)))
                    (if (gx#stx-pair/null? _hd3066630884_)
                        (let ((___splice4397443975_
                               (gx#syntax-split-splice _hd3066630884_ '0)))
                          (let ((_tl3067030891_
                                 (##vector-ref ___splice4397443975_ '1))
                                (_target3066830889_
                                 (##vector-ref ___splice4397443975_ '0)))
                            (if (gx#stx-null? _tl3067030891_)
                                (___match4411344114_
                                 _e3061331082_
                                 _hd3061431085_
                                 _tl3061531087_
                                 _e3066530881_
                                 _hd3066630884_
                                 _tl3066730886_
                                 ___splice4397443975_
                                 _target3066830889_
                                 _tl3067030891_)
                                (_g3060830723_))))
                        (_g3060830723_))))
                (_g3060830723_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3061431085_)
                                                        (if (gx#stx-pair?
                                                             _tl3061531087_)
                                                            (let ((_e3068430819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3061531087_)))
                      (let ((_tl3068630824_ (##cdr _e3068430819_))
                            (_hd3068530822_ (##car _e3068430819_)))
                        (if (gx#stx-pair? _hd3068530822_)
                            (let ((_e3068730827_ (gx#stx-e _hd3068530822_)))
                              (let ((_tl3068930832_ (##cdr _e3068730827_))
                                    (_hd3068830830_ (##car _e3068730827_)))
                                (if (gx#identifier? _hd3068830830_)
                                    (if (gx#stx-eq? '%#ref _hd3068830830_)
                                        (if (gx#stx-pair? _tl3068930832_)
                                            (let ((_e3069030835_
                                                   (gx#stx-e _tl3068930832_)))
                                              (let ((_tl3069230840_
                                                     (##cdr _e3069030835_))
                                                    (_hd3069130838_
                                                     (##car _e3069030835_)))
                                                (if (gx#stx-null?
                                                     _tl3069230840_)
                                                    (if (gx#stx-pair?
                                                         _tl3068630824_)
                                                        (let ((_e3069330843_
                                                               (gx#stx-e
                                                                _tl3068630824_)))
                                                          (let ((_tl3069530848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3069330843_))
                        (_hd3069430846_ (##car _e3069330843_)))
                    (if (gx#stx-null? _tl3069530848_)
                        (___match4415544156_
                         _e3061331082_
                         _hd3061431085_
                         _tl3061531087_
                         _e3068430819_
                         _hd3068530822_
                         _tl3068630824_
                         _e3068730827_
                         _hd3068830830_
                         _tl3068930832_
                         _e3069030835_
                         _hd3069130838_
                         _tl3069230840_
                         _e3069330843_
                         _hd3069430846_
                         _tl3069530848_)
                        (if (gx#stx-pair/null? _tl3068630824_)
                            (let ((___splice4398043981_
                                   (gx#syntax-split-splice _tl3068630824_ '0)))
                              (let ((_tl3071230762_
                                     (##vector-ref ___splice4398043981_ '1))
                                    (_target3071030760_
                                     (##vector-ref ___splice4398043981_ '0)))
                                (if (gx#stx-null? _tl3071230762_)
                                    (___match4419744198_
                                     _e3061331082_
                                     _hd3061431085_
                                     _tl3061531087_
                                     _e3068430819_
                                     _hd3068530822_
                                     _tl3068630824_
                                     _e3068730827_
                                     _hd3068830830_
                                     _tl3068930832_
                                     _e3069030835_
                                     _hd3069130838_
                                     _tl3069230840_
                                     ___splice4398043981_
                                     _target3071030760_
                                     _tl3071230762_)
                                    (_g3060830723_))))
                            (_g3060830723_)))))
                (if (gx#stx-pair/null? _tl3068630824_)
                    (let ((___splice4398043981_
                           (gx#syntax-split-splice _tl3068630824_ '0)))
                      (let ((_tl3071230762_
                             (##vector-ref ___splice4398043981_ '1))
                            (_target3071030760_
                             (##vector-ref ___splice4398043981_ '0)))
                        (if (gx#stx-null? _tl3071230762_)
                            (___match4419744198_
                             _e3061331082_
                             _hd3061431085_
                             _tl3061531087_
                             _e3068430819_
                             _hd3068530822_
                             _tl3068630824_
                             _e3068730827_
                             _hd3068830830_
                             _tl3068930832_
                             _e3069030835_
                             _hd3069130838_
                             _tl3069230840_
                             ___splice4398043981_
                             _target3071030760_
                             _tl3071230762_)
                            (_g3060830723_))))
                    (_g3060830723_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3060830723_))))
                                            (_g3060830723_))
                                        (_g3060830723_))
                                    (_g3060830723_))))
                            (_g3060830723_))))
                    (_g3060830723_))
                (_g3060830723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g3060830723_))))
                            (_g3060830723_))))))))
        (let* ((_clause3048530492_ _clause30480_)
               (_E3048730496_
                (lambda () (error '"No clause matching" _clause3048530492_)))
               (_K3048830589_
                (lambda (_kont30499_ _id30500_)
                  (let* ((_g3050230522_
                          (lambda (_g3050330519_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3050330519_)))
                         (_g3050130586_
                          (lambda (_g3050330525_)
                            (if (gx#stx-pair? _g3050330525_)
                                (let ((_e3050630527_ (gx#stx-e _g3050330525_)))
                                  (let ((_hd3050730530_ (##car _e3050630527_))
                                        (_tl3050830532_ (##cdr _e3050630527_)))
                                    (if (gx#identifier? _hd3050730530_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3050730530_)
                                            (if (gx#stx-pair? _tl3050830532_)
                                                (let ((_e3050930535_
                                                       (gx#stx-e
                                                        _tl3050830532_)))
                                                  (let ((_hd3051030538_
                                                         (##car _e3050930535_))
                                                        (_tl3051130540_
                                                         (##cdr _e3050930535_)))
                                                    (if (gx#stx-pair?
                                                         _hd3051030538_)
                                                        (let ((_e3051230543_
                                                               (gx#stx-e
                                                                _hd3051030538_)))
                                                          (let ((_hd3051330546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3051230543_))
                        (_tl3051430548_ (##cdr _e3051230543_)))
                    (if (gx#stx-null? _tl3051430548_)
                        (if (gx#stx-pair? _tl3051130540_)
                            (let ((_e3051530551_ (gx#stx-e _tl3051130540_)))
                              (let ((_hd3051630554_ (##car _e3051530551_))
                                    (_tl3051730556_ (##cdr _e3051530551_)))
                                (if (gx#stx-null? _tl3051730556_)
                                    ((lambda (_L30559_ _L30560_)
                                       (let* ((_body30581_
                                               (gxc#apply-expression-subst
                                                _L30559_
                                                _L30560_
                                                _target30482_))
                                              (_body30583_
                                               (if _negation30481_
                                                   (_closure-e30484_
                                                    _body30581_)
                                                   _body30581_)))
                                         (begin
                                           (gxc#optimizer-declare-type!__%
                                            (gxc#identifier-symbol _id30500_)
                                            (let ((__obj44249
                                                   (make-object
                                                    gxc#!lambda::t
                                                    '5)))
                                              (begin
                                                (gxc#!lambda:::init!__0
                                                 __obj44249
                                                 'lambda
                                                 '0
                                                 '#f)
                                                __obj44249))
                                            '#t)
                                           (cons _id30500_
                                                 (cons '%#lambda
                                                       (cons '()
                                                             (cons _body30583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd3051630554_
                                     _hd3051330546_)
                                    (_g3050230522_ _g3050330525_))))
                            (_g3050230522_ _g3050330525_))
                        (_g3050230522_ _g3050330525_))))
                (_g3050230522_ _g3050330525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3050230522_ _g3050330525_))
                                            (_g3050230522_ _g3050330525_))
                                        (_g3050230522_ _g3050330525_))))
                                (_g3050230522_ _g3050330525_)))))
                    (_g3050130586_ _kont30499_)))))
          (if (##pair? _clause3048530492_)
              (let ((_hd3048930592_ (##car _clause3048530492_))
                    (_tl3049030594_ (##cdr _clause3048530492_)))
                (let* ((_id30597_ _hd3048930592_) (_kont30599_ _tl3049030594_))
                  (_K3048830589_ _kont30599_ _id30597_)))
              (_E3048730496_))))))
  (define gxc#push-match-vars-let-values%
    (lambda (_stx30266_ _vars30267_ _K30268_)
      (let* ((_g3027030287_
              (lambda (_g3027130284_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3027130284_)))
             (_g3026930477_
              (lambda (_g3027130290_)
                (if (gx#stx-pair? _g3027130290_)
                    (let ((_e3027430292_ (gx#stx-e _g3027130290_)))
                      (let ((_hd3027530295_ (##car _e3027430292_))
                            (_tl3027630297_ (##cdr _e3027430292_)))
                        (if (gx#stx-pair? _tl3027630297_)
                            (let ((_e3027730300_ (gx#stx-e _tl3027630297_)))
                              (let ((_hd3027830303_ (##car _e3027730300_))
                                    (_tl3027930305_ (##cdr _e3027730300_)))
                                (if (gx#stx-pair? _tl3027930305_)
                                    (let ((_e3028030308_
                                           (gx#stx-e _tl3027930305_)))
                                      (let ((_hd3028130311_
                                             (##car _e3028030308_))
                                            (_tl3028230313_
                                             (##cdr _e3028030308_)))
                                        (if (gx#stx-null? _tl3028230313_)
                                            ((lambda (_L30316_ _L30317_)
                                               (let _lp30332_ ((_rest30334_
                                                                _L30317_)
                                                               (_rebind30335_
                                                                '())
                                                               (_vars30336_
                                                                _vars30267_))
                                                 (let* ((_rest3033730345_
                                                         _rest30334_)
                                                        (_else3033930353_
                                                         (lambda ()
                                                           (if (null? _rebind30335_)
                                                               (gxc#compile-e
                                                                _L30316_
                                                                _vars30336_
                                                                _K30268_)
                                                               (gxc#xform-wrap-source
                                                                (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (reverse _rebind30335_)
                                    (cons (gxc#compile-e
                                           _L30316_
                                           _vars30336_
                                           _K30268_)
                                          '())))
                        _stx30266_))))
                (_K3034130465_
                 (lambda (_rest30356_ _bind30357_)
                   (let* ((___stx4420044201_ _bind30357_)
                          (_g3036030383_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4420044201_))))
                     (let ((___kont4420244203_
                            (lambda (_L30435_ _L30436_)
                              (_lp30332_
                               _rest30356_
                               _rebind30335_
                               (cons _bind30357_ _vars30336_))))
                           (___kont4420444205_
                            (lambda ()
                              (_lp30332_
                               _rest30356_
                               (cons _bind30357_ _rebind30335_)
                               _vars30336_))))
                       (if (gx#stx-pair? ___stx4420044201_)
                           (let ((_e3036430395_ (gx#stx-e ___stx4420044201_)))
                             (let ((_tl3036630400_ (##cdr _e3036430395_))
                                   (_hd3036530398_ (##car _e3036430395_)))
                               (if (gx#stx-pair? _hd3036530398_)
                                   (let ((_e3036730403_
                                          (gx#stx-e _hd3036530398_)))
                                     (let ((_tl3036930408_
                                            (##cdr _e3036730403_))
                                           (_hd3036830406_
                                            (##car _e3036730403_)))
                                       (if (gx#stx-null? _tl3036930408_)
                                           (if (gx#stx-pair? _tl3036630400_)
                                               (let ((_e3037030411_
                                                      (gx#stx-e
                                                       _tl3036630400_)))
                                                 (let ((_tl3037230416_
                                                        (##cdr _e3037030411_))
                                                       (_hd3037130414_
                                                        (##car _e3037030411_)))
                                                   (if (gx#stx-pair?
                                                        _hd3037130414_)
                                                       (let ((_e3037330419_
                                                              (gx#stx-e
                                                               _hd3037130414_)))
                                                         (let ((_tl3037530424_
                                                                (##cdr _e3037330419_))
                                                               (_hd3037430422_
                                                                (##car _e3037330419_)))
                                                           (if (gx#identifier?
                                                                _hd3037430422_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3037430422_)
                           (if (gx#stx-pair? _tl3037530424_)
                               (let ((_e3037630427_ (gx#stx-e _tl3037530424_)))
                                 (let ((_tl3037830432_ (##cdr _e3037630427_))
                                       (_hd3037730430_ (##car _e3037630427_)))
                                   (if (gx#stx-null? _tl3037830432_)
                                       (if (gx#stx-null? _tl3037230416_)
                                           (___kont4420244203_
                                            _hd3037730430_
                                            _hd3036830406_)
                                           (___kont4420444205_))
                                       (___kont4420444205_))))
                               (___kont4420444205_))
                           (___kont4420444205_))
                       (___kont4420444205_))))
               (___kont4420444205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4420444205_))
                                           (___kont4420444205_))))
                                   (___kont4420444205_))))
                           (___kont4420444205_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _rest3033730345_)
                                                       (let ((_hd3034230468_
                                                              (##car _rest3033730345_))
                                                             (_tl3034330470_
                                                              (##cdr _rest3033730345_)))
                                                         (let* ((_bind30473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3034230468_)
                        (_rest30475_ _tl3034330470_))
                   (_K3034130465_ _rest30475_ _bind30473_)))
               (_else3033930353_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd3028130311_
                                             _hd3027830303_)
                                            (_g3027030287_ _g3027130290_))))
                                    (_g3027030287_ _g3027130290_))))
                            (_g3027030287_ _g3027130290_))))
                    (_g3027030287_ _g3027130290_)))))
        (_g3026930477_ _stx30266_))))
  (define gxc#push-match-vars-if%
    (lambda (_stx30181_ _vars30182_ _K30183_)
      (let* ((_g3018530206_
              (lambda (_g3018630203_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3018630203_)))
             (_g3018430263_
              (lambda (_g3018630209_)
                (if (gx#stx-pair? _g3018630209_)
                    (let ((_e3019030211_ (gx#stx-e _g3018630209_)))
                      (let ((_hd3019130214_ (##car _e3019030211_))
                            (_tl3019230216_ (##cdr _e3019030211_)))
                        (if (gx#stx-pair? _tl3019230216_)
                            (let ((_e3019330219_ (gx#stx-e _tl3019230216_)))
                              (let ((_hd3019430222_ (##car _e3019330219_))
                                    (_tl3019530224_ (##cdr _e3019330219_)))
                                (if (gx#stx-pair? _tl3019530224_)
                                    (let ((_e3019630227_
                                           (gx#stx-e _tl3019530224_)))
                                      (let ((_hd3019730230_
                                             (##car _e3019630227_))
                                            (_tl3019830232_
                                             (##cdr _e3019630227_)))
                                        (if (gx#stx-pair? _tl3019830232_)
                                            (let ((_e3019930235_
                                                   (gx#stx-e _tl3019830232_)))
                                              (let ((_hd3020030238_
                                                     (##car _e3019930235_))
                                                    (_tl3020130240_
                                                     (##cdr _e3019930235_)))
                                                (if (gx#stx-null?
                                                     _tl3020130240_)
                                                    ((lambda (_L30243_
                                                              _L30244_
                                                              _L30245_)
                                                       (if (gxc#apply-find-var-refs
                                                            _L30245_
                                                            (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _vars30182_))
                   (gxc#push-match-vars-stop _stx30181_ _vars30182_ _K30183_)
                   (gxc#xform-wrap-source
                    (cons '%#if
                          (cons _L30245_
                                (cons (gxc#compile-e
                                       _L30244_
                                       _vars30182_
                                       _K30183_)
                                      (cons (gxc#compile-e
                                             _L30243_
                                             _vars30182_
                                             _K30183_)
                                            '()))))
                    _stx30181_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd3020030238_
                                                     _hd3019730230_
                                                     _hd3019430222_)
                                                    (_g3018530206_
                                                     _g3018630209_))))
                                            (_g3018530206_ _g3018630209_))))
                                    (_g3018530206_ _g3018630209_))))
                            (_g3018530206_ _g3018630209_))))
                    (_g3018530206_ _g3018630209_)))))
        (_g3018430263_ _stx30181_))))
  (define gxc#push-match-vars-call%
    (lambda (_stx30101_ _vars30102_ _K30103_)
      (let* ((_g3010530124_
              (lambda (_g3010630121_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3010630121_)))
             (_g3010430178_
              (lambda (_g3010630127_)
                (if (gx#stx-pair? _g3010630127_)
                    (let ((_e3010830129_ (gx#stx-e _g3010630127_)))
                      (let ((_hd3010930132_ (##car _e3010830129_))
                            (_tl3011030134_ (##cdr _e3010830129_)))
                        (if (gx#stx-pair? _tl3011030134_)
                            (let ((_e3011130137_ (gx#stx-e _tl3011030134_)))
                              (let ((_hd3011230140_ (##car _e3011130137_))
                                    (_tl3011330142_ (##cdr _e3011130137_)))
                                (if (gx#stx-pair? _hd3011230140_)
                                    (let ((_e3011430145_
                                           (gx#stx-e _hd3011230140_)))
                                      (let ((_hd3011530148_
                                             (##car _e3011430145_))
                                            (_tl3011630150_
                                             (##cdr _e3011430145_)))
                                        (if (gx#identifier? _hd3011530148_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3011530148_)
                                                (if (gx#stx-pair?
                                                     _tl3011630150_)
                                                    (let ((_e3011730153_
                                                           (gx#stx-e
                                                            _tl3011630150_)))
                                                      (let ((_hd3011830156_
                                                             (##car _e3011730153_))
                                                            (_tl3011930158_
                                                             (##cdr _e3011730153_)))
                                                        (if (gx#stx-null?
                                                             _tl3011930158_)
                                                            ((lambda (_L30161_)
                                                               (if (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30161_
                                _K30103_)
                               (pair? _vars30102_)
                               '#f)
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (reverse _vars30102_)
                                        (cons _stx30101_ '())))
                            _stx30101_)
                           _stx30101_))
                     _hd3011830156_)
                    (_g3010530124_ _g3010630127_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3010530124_
                                                     _g3010630127_))
                                                (_g3010530124_ _g3010630127_))
                                            (_g3010530124_ _g3010630127_))))
                                    (_g3010530124_ _g3010630127_))))
                            (_g3010530124_ _g3010630127_))))
                    (_g3010530124_ _g3010630127_)))))
        (_g3010430178_ _stx30101_))))
  (define gxc#push-match-vars-stop
    (lambda (_stx30097_ _vars30098_ _K30099_)
      (if (null? _vars30098_)
          _stx30097_
          (gxc#xform-wrap-source
           (cons '%#let-values
                 (cons (reverse _vars30098_) (cons _stx30097_ '())))
           _stx30097_)))))
