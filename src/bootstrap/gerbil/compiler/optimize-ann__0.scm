(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 200))
  (define gxc#&optmize-annotated
    (make-promise
     (lambda ()
       (let ((_tbl39625_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl39625_ (force gxc#&basic-xform))
           (table-set! _tbl39625_ '%#begin-annotation gxc#optimize-annotation%)
           _tbl39625_)))))
  (define gxc#apply-optimize-annotated
    (lambda (_stx39618_ . _args39620_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39618_ _args39620_))
       gxc#current-compile-methods
       (force gxc#&optmize-annotated))))
  (define gxc#&generate-runtime-repr
    (make-promise
     (lambda ()
       (let ((_tbl39615_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl39615_ (force gxc#&generate-runtime))
           (table-set! _tbl39615_ '%#quote-syntax identity)
           _tbl39615_)))))
  (define gxc#apply-generate-runtime-repr
    (lambda (_stx39608_ . _args39610_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39608_ _args39610_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-repr))))
  (define gxc#&push-match-vars
    (make-promise
     (lambda ()
       (let ((_tbl39605_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl39605_ '%#lambda gxc#xform-lambda%)
           (table-set!
            _tbl39605_
            '%#let-values
            gxc#push-match-vars-let-values%)
           (table-set! _tbl39605_ '%#letrec-values gxc#push-match-vars-stop)
           (table-set! _tbl39605_ '%#if gxc#push-match-vars-if%)
           (table-set! _tbl39605_ '%#call gxc#push-match-vars-call%)
           _tbl39605_)))))
  (define gxc#apply-push-match-vars
    (lambda (_stx39598_ . _args39600_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39598_ _args39600_))
       gxc#current-compile-methods
       (force gxc#&push-match-vars))))
  (define gxc#current-annotation-optimizer (make-parameter '()))
  (define gxc#optimize-annotation%
    (lambda (_stx39516_)
      (let* ((___stx3964139642_ _stx39516_)
             (_g3951939536_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx3964139642_))))
        (let ((___kont3964339644_
               (lambda (_L39572_ _L39573_)
                 (let ((_ann39589_ (gx#stx-e _L39573_)))
                   (call-with-parameters
                    (lambda ()
                      (let ((_$e39592_ _ann39589_))
                        (if (eq? '@match _$e39592_)
                            (begin
                              (gxc#verbose '"Optimizing match expansion")
                              (gxc#optimize-match _L39572_))
                            (if (eq? '@syntax-case _$e39592_)
                                (begin
                                  (gxc#verbose
                                   '"Optimizing syntax-case expansion")
                                  (gxc#optimize-syntax-case _L39572_))
                                (gxc#compile-e _L39572_)))))
                    gxc#current-annotation-optimizer
                    (cons _ann39589_ (gxc#current-annotation-optimizer))))))
              (___kont3964539646_
               (lambda () (gxc#xform-begin-annotation% _stx39516_))))
          (let ((___match3966639667_
                 (lambda (_e3952339548_
                          _hd3952439551_
                          _tl3952539553_
                          _e3952639556_
                          _hd3952739559_
                          _tl3952839561_
                          _e3952939564_
                          _hd3953039567_
                          _tl3953139569_)
                   (let ((_L39572_ _hd3953039567_) (_L39573_ _hd3952739559_))
                     (if (gx#identifier? _L39573_)
                         (___kont3964339644_ _L39572_ _L39573_)
                         (___kont3964539646_))))))
            (if (gx#stx-pair? ___stx3964139642_)
                (let ((_e3952339548_ (gx#stx-e ___stx3964139642_)))
                  (let ((_tl3952539553_ (##cdr _e3952339548_))
                        (_hd3952439551_ (##car _e3952339548_)))
                    (if (gx#stx-pair? _tl3952539553_)
                        (let ((_e3952639556_ (gx#stx-e _tl3952539553_)))
                          (let ((_tl3952839561_ (##cdr _e3952639556_))
                                (_hd3952739559_ (##car _e3952639556_)))
                            (if (gx#stx-pair? _tl3952839561_)
                                (let ((_e3952939564_
                                       (gx#stx-e _tl3952839561_)))
                                  (let ((_tl3953139569_ (##cdr _e3952939564_))
                                        (_hd3953039567_ (##car _e3952939564_)))
                                    (if (gx#stx-null? _tl3953139569_)
                                        (___match3966639667_
                                         _e3952339548_
                                         _hd3952439551_
                                         _tl3952539553_
                                         _e3952639556_
                                         _hd3952739559_
                                         _tl3952839561_
                                         _e3952939564_
                                         _hd3953039567_
                                         _tl3953139569_)
                                        (___kont3964539646_))))
                                (___kont3964539646_))))
                        (___kont3964539646_))))
                (___kont3964539646_)))))))
  (define gxc#optimize-match
    (lambda (_stx38815_)
      (let* ((_g3881738847_
              (lambda (_g3881838844_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3881838844_)))
             (_g3881639513_
              (lambda (_g3881838850_)
                (if (gx#stx-pair? _g3881838850_)
                    (let ((_e3882238852_ (gx#stx-e _g3881838850_)))
                      (let ((_hd3882338855_ (##car _e3882238852_))
                            (_tl3882438857_ (##cdr _e3882238852_)))
                        (if (gx#identifier? _hd3882338855_)
                            (if (gx#stx-eq? '%#let-values _hd3882338855_)
                                (if (gx#stx-pair? _tl3882438857_)
                                    (let ((_e3882538860_
                                           (gx#stx-e _tl3882438857_)))
                                      (let ((_hd3882638863_
                                             (##car _e3882538860_))
                                            (_tl3882738865_
                                             (##cdr _e3882538860_)))
                                        (if (gx#stx-pair? _hd3882638863_)
                                            (let ((_e3882838868_
                                                   (gx#stx-e _hd3882638863_)))
                                              (let ((_hd3882938871_
                                                     (##car _e3882838868_))
                                                    (_tl3883038873_
                                                     (##cdr _e3882838868_)))
                                                (if (gx#stx-pair?
                                                     _hd3882938871_)
                                                    (let ((_e3883138876_
                                                           (gx#stx-e
                                                            _hd3882938871_)))
                                                      (let ((_hd3883238879_
                                                             (##car _e3883138876_))
                                                            (_tl3883338881_
                                                             (##cdr _e3883138876_)))
                                                        (if (gx#stx-pair?
                                                             _hd3883238879_)
                                                            (let ((_e3883438884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3883238879_)))
                      (let ((_hd3883538887_ (##car _e3883438884_))
                            (_tl3883638889_ (##cdr _e3883438884_)))
                        (if (gx#stx-null? _tl3883638889_)
                            (if (gx#stx-pair? _tl3883338881_)
                                (let ((_e3883738892_
                                       (gx#stx-e _tl3883338881_)))
                                  (let ((_hd3883838895_ (##car _e3883738892_))
                                        (_tl3883938897_ (##cdr _e3883738892_)))
                                    (if (gx#stx-null? _tl3883938897_)
                                        (if (gx#stx-null? _tl3883038873_)
                                            (if (gx#stx-pair? _tl3882738865_)
                                                (let ((_e3884038900_
                                                       (gx#stx-e
                                                        _tl3882738865_)))
                                                  (let ((_hd3884138903_
                                                         (##car _e3884038900_))
                                                        (_tl3884238905_
                                                         (##cdr _e3884038900_)))
                                                    (if (gx#stx-null?
                                                         _tl3884238905_)
                                                        ((lambda (_L38908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L38909_
                          _L38910_)
                   (let _lp38934_ ((_body38936_ _L38908_)
                                   (_negation38937_ (cons _L38910_ _L38909_))
                                   (_clauses38938_ '())
                                   (_konts38939_ '()))
                     (let* ((___stx3984939850_ _body38936_)
                            (_g3894238982_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx3984939850_))))
                       (let ((___kont3985139852_
                              (lambda (_L39312_)
                                (let* ((___stx3978539786_ _L39312_)
                                       (_g3932639356_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx3978539786_))))
                                  (let ((___kont3978739788_
                                         (lambda (_L39452_ _L39453_ _L39454_)
                                           (if (null? _clauses38938_)
                                               (let* ((_negation3947839485_
                                                       _negation38937_)
                                                      (_E3948039489_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _negation3947839485_)))
                                                      (_K3948139495_
                                                       (lambda (_negate39492_
                                                                _E39493_)
                                                         (gxc#xform-wrap-source
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _E39493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _negate39492_ '()))
                                    '())
                              (cons (cons '%#let-values
                                          (cons (cons (cons (cons _L39454_ '())
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L39453_)
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L39452_ '())))
                                    '())))
                  _stx38815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _negation3947839485_)
                                                     (let ((_hd3948239498_
                                                            (##car _negation3947839485_))
                                                           (_tl3948339500_
                                                            (##cdr _negation3947839485_)))
                                                       (let* ((_E39503_
                                                               _hd3948239498_)
                                                              (_negate39505_
                                                               _tl3948339500_))
                                                         (_K3948139495_
                                                          _negate39505_
                                                          _E39503_)))
                                                     (_E3948039489_)))
                                               (gxc#optimize-match-body
                                                _stx38815_
                                                _negation38937_
                                                (cons (cons '#f
                                                            (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#lambda)
                          (cons '() (cons _L39452_ '()))))
              _clauses38938_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _L39454_
                                                            (gxc#compile-e
                                                             _L39453_))
                                                      _konts38939_)))))
                                        (___kont3978939790_
                                         (lambda ()
                                           (let* ((_negation3936239369_
                                                   _negation38937_)
                                                  (_E3936439373_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _negation3936239369_)))
                                                  (_K3936539379_
                                                   (lambda (_negate39376_
                                                            _E39377_)
                                                     (gxc#xform-wrap-source
                                                      (cons '%#let-values
                                                            (cons (cons (cons (cons _E39377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                            '())
                                      (cons _negate39376_ '()))
                                '())
                          (cons _L39312_ '())))
              _stx38815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _negation3936239369_)
                                                 (let ((_hd3936639382_
                                                        (##car _negation3936239369_))
                                                       (_tl3936739384_
                                                        (##cdr _negation3936239369_)))
                                                   (let* ((_E39387_
                                                           _hd3936639382_)
                                                          (_negate39389_
                                                           _tl3936739384_))
                                                     (_K3936539379_
                                                      _negate39389_
                                                      _E39387_)))
                                                 (_E3936439373_))))))
                                    (let ((_g3932539391_
                                           (lambda ()
                                             (if (null? _clauses38938_)
                                                 (___kont3978939790_)
                                                 (_g3932639356_)))))
                                      (if (gx#stx-pair? ___stx3978539786_)
                                          (let ((_e3933139396_
                                                 (gx#stx-e ___stx3978539786_)))
                                            (let ((_tl3933339401_
                                                   (##cdr _e3933139396_))
                                                  (_hd3933239399_
                                                   (##car _e3933139396_)))
                                              (if (gx#identifier?
                                                   _hd3933239399_)
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd3933239399_)
                                                      (if (gx#stx-pair?
                                                           _tl3933339401_)
                                                          (let ((_e3933439404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3933339401_)))
                    (let ((_tl3933639409_ (##cdr _e3933439404_))
                          (_hd3933539407_ (##car _e3933439404_)))
                      (if (gx#stx-pair? _hd3933539407_)
                          (let ((_e3933739412_ (gx#stx-e _hd3933539407_)))
                            (let ((_tl3933939417_ (##cdr _e3933739412_))
                                  (_hd3933839415_ (##car _e3933739412_)))
                              (if (gx#stx-pair? _hd3933839415_)
                                  (let ((_e3934039420_
                                         (gx#stx-e _hd3933839415_)))
                                    (let ((_tl3934239425_
                                           (##cdr _e3934039420_))
                                          (_hd3934139423_
                                           (##car _e3934039420_)))
                                      (if (gx#stx-pair? _hd3934139423_)
                                          (let ((_e3934339428_
                                                 (gx#stx-e _hd3934139423_)))
                                            (let ((_tl3934539433_
                                                   (##cdr _e3934339428_))
                                                  (_hd3934439431_
                                                   (##car _e3934339428_)))
                                              (if (gx#stx-null? _tl3934539433_)
                                                  (if (gx#stx-pair?
                                                       _tl3934239425_)
                                                      (let ((_e3934639436_
                                                             (gx#stx-e
                                                              _tl3934239425_)))
                                                        (let ((_tl3934839441_
                                                               (##cdr _e3934639436_))
                                                              (_hd3934739439_
                                                               (##car _e3934639436_)))
                                                          (if (gx#stx-null?
                                                               _tl3934839441_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3933939417_)
                          (if (gx#stx-pair? _tl3933639409_)
                              (let ((_e3934939444_ (gx#stx-e _tl3933639409_)))
                                (let ((_tl3935139449_ (##cdr _e3934939444_))
                                      (_hd3935039447_ (##car _e3934939444_)))
                                  (if (gx#stx-null? _tl3935139449_)
                                      (___kont3978739788_
                                       _hd3935039447_
                                       _hd3934739439_
                                       _hd3934439431_)
                                      (_g3932539391_))))
                              (_g3932539391_))
                          (_g3932539391_))
                      (_g3932539391_))))
              (_g3932539391_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3932539391_))))
                                          (_g3932539391_))))
                                  (_g3932539391_))))
                          (_g3932539391_))))
                  (_g3932539391_))
              (_g3932539391_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3932539391_))))
                                          (_g3932539391_)))))))
                             (___kont3985339854_
                              (lambda (_L39043_ _L39044_ _L39045_)
                                (let* ((___stx3966939670_ _L39044_)
                                       (_g3907239121_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx3966939670_))))
                                  (let ((___kont3967139672_
                                         (lambda (_L39249_ _L39250_ _L39251_)
                                           (_lp38934_
                                            _L39043_
                                            _negation38937_
                                            (cons (cons _L39045_
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#lambda)
                                                              (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L39249_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _clauses38938_)
                                            (cons (cons _L39251_
                                                        (gxc#compile-e
                                                         _L39250_))
                                                  _konts38939_))))
                                        (___kont3967339674_
                                         (lambda (_L39150_)
                                           (_lp38934_
                                            _L39043_
                                            (cons _L39045_
                                                  (gxc#compile-e _L39150_))
                                            _clauses38938_
                                            _konts38939_))))
                                    (if (gx#stx-pair? ___stx3966939670_)
                                        (let ((_e3907739169_
                                               (gx#stx-e ___stx3966939670_)))
                                          (let ((_tl3907939174_
                                                 (##cdr _e3907739169_))
                                                (_hd3907839172_
                                                 (##car _e3907739169_)))
                                            (if (gx#identifier? _hd3907839172_)
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd3907839172_)
                                                    (if (gx#stx-pair?
                                                         _tl3907939174_)
                                                        (let ((_e3908039177_
                                                               (gx#stx-e
                                                                _tl3907939174_)))
                                                          (let ((_tl3908239182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3908039177_))
                        (_hd3908139180_ (##car _e3908039177_)))
                    (if (gx#stx-null? _hd3908139180_)
                        (if (gx#stx-pair? _tl3908239182_)
                            (let ((_e3908339185_ (gx#stx-e _tl3908239182_)))
                              (let ((_tl3908539190_ (##cdr _e3908339185_))
                                    (_hd3908439188_ (##car _e3908339185_)))
                                (if (gx#stx-pair? _hd3908439188_)
                                    (let ((_e3908639193_
                                           (gx#stx-e _hd3908439188_)))
                                      (let ((_tl3908839198_
                                             (##cdr _e3908639193_))
                                            (_hd3908739196_
                                             (##car _e3908639193_)))
                                        (if (gx#identifier? _hd3908739196_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3908739196_)
                                                (if (gx#stx-pair?
                                                     _tl3908839198_)
                                                    (let ((_e3908939201_
                                                           (gx#stx-e
                                                            _tl3908839198_)))
                                                      (let ((_tl3909139206_
                                                             (##cdr _e3908939201_))
                                                            (_hd3909039204_
                                                             (##car _e3908939201_)))
                                                        (if (gx#stx-pair?
                                                             _hd3909039204_)
                                                            (let ((_e3909239209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3909039204_)))
                      (let ((_tl3909439214_ (##cdr _e3909239209_))
                            (_hd3909339212_ (##car _e3909239209_)))
                        (if (gx#stx-pair? _hd3909339212_)
                            (let ((_e3909539217_ (gx#stx-e _hd3909339212_)))
                              (let ((_tl3909739222_ (##cdr _e3909539217_))
                                    (_hd3909639220_ (##car _e3909539217_)))
                                (if (gx#stx-pair? _hd3909639220_)
                                    (let ((_e3909839225_
                                           (gx#stx-e _hd3909639220_)))
                                      (let ((_tl3910039230_
                                             (##cdr _e3909839225_))
                                            (_hd3909939228_
                                             (##car _e3909839225_)))
                                        (if (gx#stx-null? _tl3910039230_)
                                            (if (gx#stx-pair? _tl3909739222_)
                                                (let ((_e3910139233_
                                                       (gx#stx-e
                                                        _tl3909739222_)))
                                                  (let ((_tl3910339238_
                                                         (##cdr _e3910139233_))
                                                        (_hd3910239236_
                                                         (##car _e3910139233_)))
                                                    (if (gx#stx-null?
                                                         _tl3910339238_)
                                                        (if (gx#stx-null?
                                                             _tl3909439214_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3909139206_)
                        (let ((_e3910439241_ (gx#stx-e _tl3909139206_)))
                          (let ((_tl3910639246_ (##cdr _e3910439241_))
                                (_hd3910539244_ (##car _e3910439241_)))
                            (if (gx#stx-null? _tl3910639246_)
                                (if (gx#stx-null? _tl3908539190_)
                                    (___kont3967139672_
                                     _hd3910539244_
                                     _hd3910239236_
                                     _hd3909939228_)
                                    (_g3907239121_))
                                (_g3907239121_))))
                        (_g3907239121_))
                    (_g3907239121_))
                (_g3907239121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3907239121_))
                                            (_g3907239121_))))
                                    (_g3907239121_))))
                            (_g3907239121_))))
                    (_g3907239121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3907239121_))
                                                (_g3907239121_))
                                            (_g3907239121_))))
                                    (_g3907239121_))))
                            (_g3907239121_))
                        (_g3907239121_))))
                (_g3907239121_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#begin-annotation
                                                         _hd3907839172_)
                                                        (if (gx#stx-pair?
                                                             _tl3907939174_)
                                                            (let ((_e3911139134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3907939174_)))
                      (let ((_tl3911339139_ (##cdr _e3911139134_))
                            (_hd3911239137_ (##car _e3911139134_)))
                        (if (gx#identifier? _hd3911239137_)
                            (if (gx#stx-eq? '@match-else _hd3911239137_)
                                (if (gx#stx-pair? _tl3911339139_)
                                    (let ((_e3911439142_
                                           (gx#stx-e _tl3911339139_)))
                                      (let ((_tl3911639147_
                                             (##cdr _e3911439142_))
                                            (_hd3911539145_
                                             (##car _e3911439142_)))
                                        (if (gx#stx-null? _tl3911639147_)
                                            (___kont3967339674_ _hd3911539145_)
                                            (_g3907239121_))))
                                    (_g3907239121_))
                                (_g3907239121_))
                            (_g3907239121_))))
                    (_g3907239121_))
                (_g3907239121_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3907239121_))))
                                        (_g3907239121_)))))))
                         (if (gx#stx-pair? ___stx3984939850_)
                             (let ((_e3894539288_
                                    (gx#stx-e ___stx3984939850_)))
                               (let ((_tl3894739293_ (##cdr _e3894539288_))
                                     (_hd3894639291_ (##car _e3894539288_)))
                                 (if (gx#identifier? _hd3894639291_)
                                     (if (gx#stx-eq?
                                          '%#begin-annotation
                                          _hd3894639291_)
                                         (if (gx#stx-pair? _tl3894739293_)
                                             (let ((_e3894839296_
                                                    (gx#stx-e _tl3894739293_)))
                                               (let ((_tl3895039301_
                                                      (##cdr _e3894839296_))
                                                     (_hd3894939299_
                                                      (##car _e3894839296_)))
                                                 (if (gx#identifier?
                                                      _hd3894939299_)
                                                     (if (gx#stx-eq?
                                                          '@match-body
                                                          _hd3894939299_)
                                                         (if (gx#stx-pair?
                                                              _tl3895039301_)
                                                             (let ((_e3895139304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3895039301_)))
                       (let ((_tl3895339309_ (##cdr _e3895139304_))
                             (_hd3895239307_ (##car _e3895139304_)))
                         (if (gx#stx-null? _tl3895339309_)
                             (___kont3985139852_ _hd3895239307_)
                             (_g3894238982_))))
                     (_g3894238982_))
                 (_g3894238982_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3894238982_))))
                                             (_g3894238982_))
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd3894639291_)
                                             (if (gx#stx-pair? _tl3894739293_)
                                                 (let ((_e3896038995_
                                                        (gx#stx-e
                                                         _tl3894739293_)))
                                                   (let ((_tl3896239000_
                                                          (##cdr _e3896038995_))
                                                         (_hd3896138998_
                                                          (##car _e3896038995_)))
                                                     (if (gx#stx-pair?
                                                          _hd3896138998_)
                                                         (let ((_e3896339003_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3896138998_)))
                   (let ((_tl3896539008_ (##cdr _e3896339003_))
                         (_hd3896439006_ (##car _e3896339003_)))
                     (if (gx#stx-pair? _hd3896439006_)
                         (let ((_e3896639011_ (gx#stx-e _hd3896439006_)))
                           (let ((_tl3896839016_ (##cdr _e3896639011_))
                                 (_hd3896739014_ (##car _e3896639011_)))
                             (if (gx#stx-pair? _hd3896739014_)
                                 (let ((_e3896939019_
                                        (gx#stx-e _hd3896739014_)))
                                   (let ((_tl3897139024_ (##cdr _e3896939019_))
                                         (_hd3897039022_
                                          (##car _e3896939019_)))
                                     (if (gx#stx-null? _tl3897139024_)
                                         (if (gx#stx-pair? _tl3896839016_)
                                             (let ((_e3897239027_
                                                    (gx#stx-e _tl3896839016_)))
                                               (let ((_tl3897439032_
                                                      (##cdr _e3897239027_))
                                                     (_hd3897339030_
                                                      (##car _e3897239027_)))
                                                 (if (gx#stx-null?
                                                      _tl3897439032_)
                                                     (if (gx#stx-null?
                                                          _tl3896539008_)
                                                         (if (gx#stx-pair?
                                                              _tl3896239000_)
                                                             (let ((_e3897539035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3896239000_)))
                       (let ((_tl3897739040_ (##cdr _e3897539035_))
                             (_hd3897639038_ (##car _e3897539035_)))
                         (if (gx#stx-null? _tl3897739040_)
                             (___kont3985339854_
                              _hd3897639038_
                              _hd3897339030_
                              _hd3897039022_)
                             (_g3894238982_))))
                     (_g3894238982_))
                 (_g3894238982_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3894238982_))))
                                             (_g3894238982_))
                                         (_g3894238982_))))
                                 (_g3894238982_))))
                         (_g3894238982_))))
                 (_g3894238982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3894238982_))
                                             (_g3894238982_)))
                                     (_g3894238982_))))
                             (_g3894238982_))))))
                 _hd3884138903_
                 _hd3883838895_
                 _hd3883538887_)
                (_g3881738847_ _g3881838850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3881738847_ _g3881838850_))
                                            (_g3881738847_ _g3881838850_))
                                        (_g3881738847_ _g3881838850_))))
                                (_g3881738847_ _g3881838850_))
                            (_g3881738847_ _g3881838850_))))
                    (_g3881738847_ _g3881838850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3881738847_
                                                     _g3881838850_))))
                                            (_g3881738847_ _g3881838850_))))
                                    (_g3881738847_ _g3881838850_))
                                (_g3881738847_ _g3881838850_))
                            (_g3881738847_ _g3881838850_))))
                    (_g3881738847_ _g3881838850_)))))
        (_g3881639513_ _stx38815_))))
  (define gxc#optimize-match-body
    (lambda (_stx38521_ _negation38522_ _clauses38523_ _konts38524_)
      (letrec ((_push-variables38526_
                (lambda (_clause38773_ _kont38774_)
                  (let ((_clause3877538785_ _clause38773_)
                        (_kont3877638787_ _kont38774_))
                    (let* ((_E3877838791_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause3877538785_
                                     _kont3877638787_)))
                           (_K3877938798_
                            (lambda (_clause-lambda38794_
                                     _clause-name38795_
                                     _K38796_)
                              (cons _clause-name38795_
                                    (gxc#apply-push-match-vars
                                     _clause-lambda38794_
                                     '()
                                     _K38796_)))))
                      (if (##pair? _clause3877538785_)
                          (let ((_hd3878238801_ (##car _clause3877538785_))
                                (_tl3878338803_ (##cdr _clause3877538785_)))
                            (let* ((_clause-name38806_ _hd3878238801_)
                                   (_clause-lambda38808_ _tl3878338803_))
                              (if (##pair? _kont3877638787_)
                                  (let* ((_hd3878038810_
                                          (##car _kont3877638787_))
                                         (_K38813_ _hd3878038810_))
                                    (_K3877938798_
                                     _clause-lambda38808_
                                     _clause-name38806_
                                     _K38813_))
                                  (_E3877838791_))))
                          (_E3877838791_))))))
               (_start-match38527_
                (lambda (_kont38707_)
                  (let* ((_g3870938725_
                          (lambda (_g3871038722_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3871038722_)))
                         (_g3870838770_
                          (lambda (_g3871038728_)
                            (if (gx#stx-pair? _g3871038728_)
                                (let ((_e3871238730_ (gx#stx-e _g3871038728_)))
                                  (let ((_hd3871338733_ (##car _e3871238730_))
                                        (_tl3871438735_ (##cdr _e3871238730_)))
                                    (if (gx#identifier? _hd3871338733_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3871338733_)
                                            (if (gx#stx-pair? _tl3871438735_)
                                                (let ((_e3871538738_
                                                       (gx#stx-e
                                                        _tl3871438735_)))
                                                  (let ((_hd3871638741_
                                                         (##car _e3871538738_))
                                                        (_tl3871738743_
                                                         (##cdr _e3871538738_)))
                                                    (if (gx#stx-null?
                                                         _hd3871638741_)
                                                        (if (gx#stx-pair?
                                                             _tl3871738743_)
                                                            (let ((_e3871838746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3871738743_)))
                      (let ((_hd3871938749_ (##car _e3871838746_))
                            (_tl3872038751_ (##cdr _e3871838746_)))
                        (if (gx#stx-null? _tl3872038751_)
                            ((lambda (_L38754_) _L38754_) _hd3871938749_)
                            (_g3870938725_ _g3871038728_))))
                    (_g3870938725_ _g3871038728_))
                (_g3870938725_ _g3871038728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3870938725_ _g3871038728_))
                                            (_g3870938725_ _g3871038728_))
                                        (_g3870938725_ _g3871038728_))))
                                (_g3870938725_ _g3871038728_)))))
                    (_g3870838770_ _kont38707_))))
               (_match-body38528_
                (lambda (_blocks38604_)
                  (let* ((_blocks3860538614_ _blocks38604_)
                         (_E3860738618_
                          (lambda ()
                            (error '"No clause matching" _blocks3860538614_)))
                         (_K3860838690_
                          (lambda (_rest38621_ _start38622_)
                            (let _lp38624_ ((_rest38626_ _rest38621_)
                                            (_body38627_
                                             (_start-match38527_
                                              _start38622_)))
                              (let* ((_rest3862838636_ _rest38626_)
                                     (_else3863038644_ (lambda () _body38627_))
                                     (_K3863238678_
                                      (lambda (_rest38647_ _block38648_)
                                        (let* ((_block3864938656_ _block38648_)
                                               (_E3865138660_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _block3864938656_)))
                                               (_K3865238666_
                                                (lambda (_kont38663_ _K38664_)
                                                  (_lp38624_
                                                   _rest38647_
                                                   (cons '%#let-values
                                                         (cons (cons (cons (cons _K38664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons _kont38663_ '()))
                             '())
                       (cons _body38627_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _block3864938656_)
                                              (let ((_hd3865338669_
                                                     (##car _block3864938656_))
                                                    (_tl3865438671_
                                                     (##cdr _block3864938656_)))
                                                (let* ((_K38674_
                                                        _hd3865338669_)
                                                       (_kont38676_
                                                        _tl3865438671_))
                                                  (_K3865238666_
                                                   _kont38676_
                                                   _K38674_)))
                                              (_E3865138660_))))))
                                (if (##pair? _rest3862838636_)
                                    (let ((_hd3863338681_
                                           (##car _rest3862838636_))
                                          (_tl3863438683_
                                           (##cdr _rest3862838636_)))
                                      (let* ((_block38686_ _hd3863338681_)
                                             (_rest38688_ _tl3863438683_))
                                        (_K3863238678_
                                         _rest38688_
                                         _block38686_)))
                                    (_else3863038644_)))))))
                    (if (##pair? _blocks3860538614_)
                        (let ((_hd3860938693_ (##car _blocks3860538614_))
                              (_tl3861038695_ (##cdr _blocks3860538614_)))
                          (if (##pair? _hd3860938693_)
                              (let ((_hd3861138698_ (##car _hd3860938693_))
                                    (_tl3861238700_ (##cdr _hd3860938693_)))
                                (if (##eq? _hd3861138698_ '#f)
                                    (let* ((_start38703_ _tl3861238700_)
                                           (_rest38705_ _tl3861038695_))
                                      (_K3860838690_ _rest38705_ _start38703_))
                                    (_E3860738618_)))
                              (_E3860738618_)))
                        (_E3860738618_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_clauses38531_
                   (map _push-variables38526_ _clauses38523_ _konts38524_))
                  (_blocks38533_
                   (gxc#optimize-match-basic-blocks _clauses38531_))
                  (_blocks38535_
                   (gxc#optimize-match-fold-basic-blocks _blocks38533_))
                  (_body38537_ (_match-body38528_ _blocks38535_))
                  (_bind38571_
                   (map (lambda (_e3853838540_)
                          (let* ((_g3854238549_ _e3853838540_)
                                 (_E3854438553_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g3854238549_)))
                                 (_K3854538559_
                                  (lambda (_kont38556_ _K38557_)
                                    (cons (cons _K38557_ '())
                                          (cons _kont38556_ '())))))
                            (if (##pair? _g3854238549_)
                                (let ((_hd3854638562_ (##car _g3854238549_))
                                      (_tl3854738564_ (##cdr _g3854238549_)))
                                  (let* ((_K38567_ _hd3854638562_)
                                         (_kont38569_ _tl3854738564_))
                                    (_K3854538559_ _kont38569_ _K38567_)))
                                (_E3854438553_))))
                        _konts38524_))
                  (_negate38601_
                   (let* ((_negation3857238579_ _negation38522_)
                          (_E3857438583_
                           (lambda ()
                             (error '"No clause matching"
                                    _negation3857238579_)))
                          (_K3857538589_
                           (lambda (_kont38586_ _K38587_)
                             (cons (cons _K38587_ '())
                                   (cons _kont38586_ '())))))
                     (if (##pair? _negation3857238579_)
                         (let ((_hd3857638592_ (##car _negation3857238579_))
                               (_tl3857738594_ (##cdr _negation3857238579_)))
                           (let* ((_K38597_ _hd3857638592_)
                                  (_kont38599_ _tl3857738594_))
                             (_K3857538589_ _kont38599_ _K38597_)))
                         (_E3857438583_)))))
             (gxc#xform-wrap-source
              (cons '%#let-values
                    (cons (cons _negate38601_ '())
                          (cons (cons '%#let-values
                                      (cons _bind38571_
                                            (cons _body38537_ '())))
                                '())))
              _stx38521_)))
         gx#current-expander-context
         (let ((__obj42714 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj42714) __obj42714))))))
  (define gxc#optimize-match-basic-blocks
    (lambda (_clauses38481_)
      (let _lp38483_ ((_rest38485_ _clauses38481_) (_blocks38486_ '()))
        (let* ((_rest3848738495_ _rest38485_)
               (_else3848938503_ (lambda () (reverse _blocks38486_)))
               (_K3849138509_
                (lambda (_rest38506_ _clause38507_)
                  (_lp38483_
                   _rest38506_
                   (gxc#optimize-match-lift-basic-blocks
                    _clause38507_
                    _blocks38486_)))))
          (if (##pair? _rest3848738495_)
              (let ((_hd3849238512_ (##car _rest3848738495_))
                    (_tl3849338514_ (##cdr _rest3848738495_)))
                (let* ((_clause38517_ _hd3849238512_)
                       (_rest38519_ _tl3849338514_))
                  (_K3849138509_ _rest38519_ _clause38517_)))
              (_else3848938503_))))))
  (define gxc#optimize-match-lift-basic-blocks
    (lambda (_clause37825_ _blocks37826_)
      (letrec ((_bind->args37828_
                (lambda (_bind38476_)
                  (foldl1 (lambda (_b38478_ _r38479_)
                            (cons (cons '%#ref (cons (car _b38478_) '()))
                                  _r38479_))
                          '()
                          _bind38476_)))
               (_create-block37829_
                (lambda (_body38425_ _let-bind38426_ _bind38427_ _assert38428_)
                  (let* ((_id38430_ (make-symbol (gensym '__match)))
                         (_id38432_ (gx#core-quote-syntax__0 _id38430_))
                         (_g42716_ (gx#core-bind-runtime!__0 _id38432_))
                         (_block38435_
                          (cons _id38432_
                                (cons _body38425_
                                      (cons _bind38427_
                                            (cons _assert38428_ '())))))
                         (_continue38437_
                          (cons '%#call
                                (cons (cons '%#ref (cons _id38432_ '()))
                                      (_bind->args37828_ _bind38427_))))
                         (_continue38473_
                          (if (null? _let-bind38426_)
                              _continue38437_
                              (let ((_locals38471_
                                     (map (lambda (_e3843838440_)
                                            (let* ((_g3844238449_
                                                    _e3843838440_)
                                                   (_E3844438453_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g3844238449_)))
                                                   (_K3844538459_
                                                    (lambda (_expr38456_
                                                             _id38457_)
                                                      (cons (cons _id38457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr38456_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g3844238449_)
                                                  (let ((_hd3844638462_
                                                         (##car _g3844238449_))
                                                        (_tl3844738464_
                                                         (##cdr _g3844238449_)))
                                                    (let* ((_id38467_
                                                            _hd3844638462_)
                                                           (_expr38469_
                                                            _tl3844738464_))
                                                      (_K3844538459_
                                                       _expr38469_
                                                       _id38467_)))
                                                  (_E3844438453_))))
                                          _let-bind38426_)))
                                (cons '%#let-values
                                      (cons _locals38471_
                                            (cons _continue38437_ '())))))))
                    (values _continue38473_ _block38435_))))
               (_basic-block37830_
                (lambda (_body38011_ _bind38012_ _assert38013_)
                  (let* ((___stx3995739958_ _body38011_)
                         (_g3801838102_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3995739958_))))
                    (let ((___kont3995939960_
                           (lambda (_L38361_ _L38362_ _L38363_)
                             (let ((_g42717_
                                    (_create-block37829_
                                     _L38362_
                                     '()
                                     _bind38012_
                                     (cons (cons _L38363_ '#t)
                                           _assert38013_))))
                               (begin
                                 (let ((_g42718_
                                        (if (##values? _g42717_)
                                            (##vector-length _g42717_)
                                            1)))
                                   (if (not (##fx= _g42718_ 2))
                                       (error "Context expects 2 values"
                                              _g42718_)))
                                 (let ((_k-continue38381_
                                        (##vector-ref _g42717_ 0))
                                       (_k-block38382_
                                        (##vector-ref _g42717_ 1)))
                                   (let* ((___stx3993939940_ _L38361_)
                                          (_g3838538394_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx3993939940_))))
                                     (let ((___kont3994139942_
                                            (lambda ()
                                              (values (cons '%#if
                                                            (cons _L38363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _k-continue38381_ (cons _L38361_ '()))))
              (cons _k-block38382_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont3994339944_
                                            (lambda ()
                                              (let ((_g42719_
                                                     (_create-block37829_
                                                      _L38361_
                                                      '()
                                                      _bind38012_
                                                      (cons (cons _L38363_ '#f)
                                                            _assert38013_))))
                                                (begin
                                                  (let ((_g42720_
                                                         (if (##values?
                                                              _g42719_)
                                                             (##vector-length
                                                              _g42719_)
                                                             1)))
                                                    (if (not (##fx= _g42720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g42720_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_e-continue38401_
                                                         (##vector-ref
                                                          _g42719_
                                                          0))
                                                        (_e-block38402_
                                                         (##vector-ref
                                                          _g42719_
                                                          1)))
                                                    (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L38363_
                                (cons _k-continue38381_
                                      (cons _e-continue38401_ '()))))
                    (cons _k-block38382_ (cons _e-block38402_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? ___stx3993939940_)
                                           (let ((_e3838738409_
                                                  (gx#stx-e
                                                   ___stx3993939940_)))
                                             (let ((_tl3838938414_
                                                    (##cdr _e3838738409_))
                                                   (_hd3838838412_
                                                    (##car _e3838738409_)))
                                               (if (gx#identifier?
                                                    _hd3838838412_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _hd3838838412_)
                                                       (___kont3994139942_)
                                                       (___kont3994339944_))
                                                   (___kont3994339944_))))
                                           (___kont3994339944_)))))))))
                          (___kont3996139962_
                           (lambda () (values _body38011_ '())))
                          (___kont3996539966_
                           (lambda (_L38190_ _L38191_ _L38192_)
                             (let* ((_let-bind38227_
                                     (map cons
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3821238215_
                                                             _g3821338217_)
                                                      (cons _g3821238215_
                                                            _g3821338217_))
                                                    '()
                                                    _L38192_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3821938222_
                                                             _g3822038224_)
                                                      (cons _g3821938222_
                                                            _g3822038224_))
                                                    '()
                                                    _L38191_))))
                                    (_g42721_
                                     (_create-block37829_
                                      _L38190_
                                      _let-bind38227_
                                      (foldl1 cons _bind38012_ _let-bind38227_)
                                      _assert38013_)))
                               (begin
                                 (let ((_g42722_
                                        (if (##values? _g42721_)
                                            (##vector-length _g42721_)
                                            1)))
                                   (if (not (##fx= _g42722_ 2))
                                       (error "Context expects 2 values"
                                              _g42722_)))
                                 (let ((_continue38229_
                                        (##vector-ref _g42721_ 0))
                                       (_block38230_
                                        (##vector-ref _g42721_ 1)))
                                   (let ()
                                     (values _continue38229_
                                             (cons _block38230_ '()))))))))
                          (___kont3996939970_
                           (lambda () (values _body38011_ '()))))
                      (let* ((___match4004840049_
                              (lambda (_e3806938114_
                                       _hd3807038117_
                                       _tl3807138119_
                                       _e3807238122_
                                       _hd3807338125_
                                       _tl3807438127_
                                       ___splice3996739968_
                                       _target3807538130_
                                       _tl3807738132_)
                                (letrec ((_loop3807838135_
                                          (lambda (_hd3807638138_
                                                   _expr3808238140_
                                                   _id3808338142_)
                                            (if (gx#stx-pair? _hd3807638138_)
                                                (let ((_e3807938145_
                                                       (gx#stx-e
                                                        _hd3807638138_)))
                                                  (let ((_lp-tl3808138150_
                                                         (##cdr _e3807938145_))
                                                        (_lp-hd3808038148_
                                                         (##car _e3807938145_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3808038148_)
                                                        (let ((_e3808638153_
                                                               (gx#stx-e
                                                                _lp-hd3808038148_)))
                                                          (let ((_tl3808838158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3808638153_))
                        (_hd3808738156_ (##car _e3808638153_)))
                    (if (gx#stx-pair? _hd3808738156_)
                        (let ((_e3808938161_ (gx#stx-e _hd3808738156_)))
                          (let ((_tl3809138166_ (##cdr _e3808938161_))
                                (_hd3809038164_ (##car _e3808938161_)))
                            (if (gx#stx-null? _tl3809138166_)
                                (if (gx#stx-pair? _tl3808838158_)
                                    (let ((_e3809238169_
                                           (gx#stx-e _tl3808838158_)))
                                      (let ((_tl3809438174_
                                             (##cdr _e3809238169_))
                                            (_hd3809338172_
                                             (##car _e3809238169_)))
                                        (if (gx#stx-null? _tl3809438174_)
                                            (_loop3807838135_
                                             _lp-tl3808138150_
                                             (cons _hd3809338172_
                                                   _expr3808238140_)
                                             (cons _hd3809038164_
                                                   _id3808338142_))
                                            (___kont3996939970_))))
                                    (___kont3996939970_))
                                (___kont3996939970_))))
                        (___kont3996939970_))))
                (___kont3996939970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_id3808538179_
                                                       (reverse _id3808338142_))
                                                      (_expr3808438177_
                                                       (reverse _expr3808238140_)))
                                                  (if (gx#stx-pair?
                                                       _tl3807438127_)
                                                      (let ((_e3809538182_
                                                             (gx#stx-e
                                                              _tl3807438127_)))
                                                        (let ((_tl3809738187_
                                                               (##cdr _e3809538182_))
                                                              (_hd3809638185_
                                                               (##car _e3809538182_)))
                                                          (if (gx#stx-null?
                                                               _tl3809738187_)
                                                              (___kont3996539966_
                                                               _hd3809638185_
                                                               _expr3808438177_
                                                               _id3808538179_)
                                                              (___kont3996939970_))))
                                                      (___kont3996939970_)))))))
                                  (_loop3807838135_
                                   _target3807538130_
                                   '()
                                   '()))))
                             (___match4002440025_
                              (lambda (_e3803538238_
                                       _hd3803638241_
                                       _tl3803738243_
                                       _e3803838246_
                                       _hd3803938249_
                                       _tl3804038251_
                                       ___splice3996339964_
                                       _target3804138254_
                                       _tl3804338256_)
                                (letrec ((_loop3804438259_
                                          (lambda (_hd3804238262_)
                                            (if (gx#stx-pair? _hd3804238262_)
                                                (let ((_e3804538265_
                                                       (gx#stx-e
                                                        _hd3804238262_)))
                                                  (let ((_lp-tl3804738270_
                                                         (##cdr _e3804538265_))
                                                        (_lp-hd3804638268_
                                                         (##car _e3804538265_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3804638268_)
                                                        (let ((_e3804838273_
                                                               (gx#stx-e
                                                                _lp-hd3804638268_)))
                                                          (let ((_tl3805038278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3804838273_))
                        (_hd3804938276_ (##car _e3804838273_)))
                    (if (gx#stx-pair? _hd3804938276_)
                        (let ((_e3805138281_ (gx#stx-e _hd3804938276_)))
                          (let ((_tl3805338286_ (##cdr _e3805138281_))
                                (_hd3805238284_ (##car _e3805138281_)))
                            (if (gx#stx-null? _tl3805338286_)
                                (if (gx#stx-pair? _tl3805038278_)
                                    (let ((_e3805438289_
                                           (gx#stx-e _tl3805038278_)))
                                      (let ((_tl3805638294_
                                             (##cdr _e3805438289_))
                                            (_hd3805538292_
                                             (##car _e3805438289_)))
                                        (if (gx#stx-pair? _hd3805538292_)
                                            (let ((_e3805738297_
                                                   (gx#stx-e _hd3805538292_)))
                                              (let ((_tl3805938302_
                                                     (##cdr _e3805738297_))
                                                    (_hd3805838300_
                                                     (##car _e3805738297_)))
                                                (if (gx#identifier?
                                                     _hd3805838300_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3805838300_)
                                                        (if (gx#stx-pair?
                                                             _tl3805938302_)
                                                            (let ((_e3806038305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3805938302_)))
                      (let ((_tl3806238310_ (##cdr _e3806038305_))
                            (_hd3806138308_ (##car _e3806038305_)))
                        (if (gx#stx-null? _tl3806238310_)
                            (if (gx#stx-null? _tl3805638294_)
                                (_loop3804438259_ _lp-tl3804738270_)
                                (___match4004840049_
                                 _e3803538238_
                                 _hd3803638241_
                                 _tl3803738243_
                                 _e3803838246_
                                 _hd3803938249_
                                 _tl3804038251_
                                 ___splice3996339964_
                                 _target3804138254_
                                 _tl3804338256_))
                            (___match4004840049_
                             _e3803538238_
                             _hd3803638241_
                             _tl3803738243_
                             _e3803838246_
                             _hd3803938249_
                             _tl3804038251_
                             ___splice3996339964_
                             _target3804138254_
                             _tl3804338256_))))
                    (___match4004840049_
                     _e3803538238_
                     _hd3803638241_
                     _tl3803738243_
                     _e3803838246_
                     _hd3803938249_
                     _tl3804038251_
                     ___splice3996339964_
                     _target3804138254_
                     _tl3804338256_))
                (___match4004840049_
                 _e3803538238_
                 _hd3803638241_
                 _tl3803738243_
                 _e3803838246_
                 _hd3803938249_
                 _tl3804038251_
                 ___splice3996339964_
                 _target3804138254_
                 _tl3804338256_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4004840049_
                                                     _e3803538238_
                                                     _hd3803638241_
                                                     _tl3803738243_
                                                     _e3803838246_
                                                     _hd3803938249_
                                                     _tl3804038251_
                                                     ___splice3996339964_
                                                     _target3804138254_
                                                     _tl3804338256_))))
                                            (___match4004840049_
                                             _e3803538238_
                                             _hd3803638241_
                                             _tl3803738243_
                                             _e3803838246_
                                             _hd3803938249_
                                             _tl3804038251_
                                             ___splice3996339964_
                                             _target3804138254_
                                             _tl3804338256_))))
                                    (___match4004840049_
                                     _e3803538238_
                                     _hd3803638241_
                                     _tl3803738243_
                                     _e3803838246_
                                     _hd3803938249_
                                     _tl3804038251_
                                     ___splice3996339964_
                                     _target3804138254_
                                     _tl3804338256_))
                                (___match4004840049_
                                 _e3803538238_
                                 _hd3803638241_
                                 _tl3803738243_
                                 _e3803838246_
                                 _hd3803938249_
                                 _tl3804038251_
                                 ___splice3996339964_
                                 _target3804138254_
                                 _tl3804338256_))))
                        (___match4004840049_
                         _e3803538238_
                         _hd3803638241_
                         _tl3803738243_
                         _e3803838246_
                         _hd3803938249_
                         _tl3804038251_
                         ___splice3996339964_
                         _target3804138254_
                         _tl3804338256_))))
                (___match4004840049_
                 _e3803538238_
                 _hd3803638241_
                 _tl3803738243_
                 _e3803838246_
                 _hd3803938249_
                 _tl3804038251_
                 ___splice3996339964_
                 _target3804138254_
                 _tl3804338256_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (if (gx#stx-pair?
                                                       _tl3804038251_)
                                                      (let ((_e3806338314_
                                                             (gx#stx-e
                                                              _tl3804038251_)))
                                                        (let ((_tl3806538319_
                                                               (##cdr _e3806338314_))
                                                              (_hd3806438317_
                                                               (##car _e3806338314_)))
                                                          (if (gx#stx-null?
                                                               _tl3806538319_)
                                                              (___kont3996139962_)
                                                              (___match4004840049_
                                                               _e3803538238_
                                                               _hd3803638241_
                                                               _tl3803738243_
                                                               _e3803838246_
                                                               _hd3803938249_
                                                               _tl3804038251_
                                                               ___splice3996339964_
                                                               _target3804138254_
                                                               _tl3804338256_))))
                                                      (___match4004840049_
                                                       _e3803538238_
                                                       _hd3803638241_
                                                       _tl3803738243_
                                                       _e3803838246_
                                                       _hd3803938249_
                                                       _tl3804038251_
                                                       ___splice3996339964_
                                                       _target3804138254_
                                                       _tl3804338256_)))))))
                                  (_loop3804438259_ _target3804138254_)))))
                        (if (gx#stx-pair? ___stx3995739958_)
                            (let ((_e3802338329_ (gx#stx-e ___stx3995739958_)))
                              (let ((_tl3802538334_ (##cdr _e3802338329_))
                                    (_hd3802438332_ (##car _e3802338329_)))
                                (if (gx#identifier? _hd3802438332_)
                                    (if (gx#stx-eq? '%#if _hd3802438332_)
                                        (if (gx#stx-pair? _tl3802538334_)
                                            (let ((_e3802638337_
                                                   (gx#stx-e _tl3802538334_)))
                                              (let ((_tl3802838342_
                                                     (##cdr _e3802638337_))
                                                    (_hd3802738340_
                                                     (##car _e3802638337_)))
                                                (if (gx#stx-pair?
                                                     _tl3802838342_)
                                                    (let ((_e3802938345_
                                                           (gx#stx-e
                                                            _tl3802838342_)))
                                                      (let ((_tl3803138350_
                                                             (##cdr _e3802938345_))
                                                            (_hd3803038348_
                                                             (##car _e3802938345_)))
                                                        (if (gx#stx-pair?
                                                             _tl3803138350_)
                                                            (let ((_e3803238353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3803138350_)))
                      (let ((_tl3803438358_ (##cdr _e3803238353_))
                            (_hd3803338356_ (##car _e3803238353_)))
                        (if (gx#stx-null? _tl3803438358_)
                            (___kont3995939960_
                             _hd3803338356_
                             _hd3803038348_
                             _hd3802738340_)
                            (___kont3996939970_))))
                    (___kont3996939970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3996939970_))))
                                            (___kont3996939970_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3802438332_)
                                            (if (gx#stx-pair? _tl3802538334_)
                                                (let ((_e3803838246_
                                                       (gx#stx-e
                                                        _tl3802538334_)))
                                                  (let ((_tl3804038251_
                                                         (##cdr _e3803838246_))
                                                        (_hd3803938249_
                                                         (##car _e3803838246_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3803938249_)
                                                        (let ((___splice3996339964_
                                                               (gx#syntax-split-splice
                                                                _hd3803938249_
                                                                '0)))
                                                          (let ((_tl3804338256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice3996339964_ '1))
                        (_target3804138254_
                         (##vector-ref ___splice3996339964_ '0)))
                    (if (gx#stx-null? _tl3804338256_)
                        (___match4002440025_
                         _e3802338329_
                         _hd3802438332_
                         _tl3802538334_
                         _e3803838246_
                         _hd3803938249_
                         _tl3804038251_
                         ___splice3996339964_
                         _target3804138254_
                         _tl3804338256_)
                        (___kont3996939970_))))
                (___kont3996939970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3996939970_))
                                            (___kont3996939970_)))
                                    (___kont3996939970_))))
                            (___kont3996939970_)))))))
               (_fold-blocks37831_
                (lambda (_rest37930_ _blocks37931_)
                  (let* ((_rest3793237949_ _rest37930_)
                         (_E3793537953_
                          (lambda ()
                            (error '"No clause matching" _rest3793237949_))))
                    (let ((_K3793737973_
                           (lambda (_rest37964_
                                    _assert37965_
                                    _bind37966_
                                    _body37967_
                                    _name37968_)
                             (let ((_g42723_
                                    (_basic-block37830_
                                     _body37967_
                                     _bind37966_
                                     _assert37965_)))
                               (begin
                                 (let ((_g42724_
                                        (if (##values? _g42723_)
                                            (##vector-length _g42723_)
                                            1)))
                                   (if (not (##fx= _g42724_ 2))
                                       (error "Context expects 2 values"
                                              _g42724_)))
                                 (let ((_body37970_ (##vector-ref _g42723_ 0))
                                       (_body-blocks37971_
                                        (##vector-ref _g42723_ 1)))
                                   (_fold-blocks37831_
                                    (foldl1 cons
                                            _rest37964_
                                            _body-blocks37971_)
                                    (cons (cons _name37968_
                                                (cons 'continue:
                                                      (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (reverse (map car _bind37966_))
                                (cons _body37970_ '())))
                    (cons _assert37965_ (cons _bind37966_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _blocks37931_)))))))
                          (_K3793637958_ (lambda () _blocks37931_)))
                      (let ((_try-match3793437961_
                             (lambda ()
                               (if (##null? _rest3793237949_)
                                   (_K3793637958_)
                                   (_E3793537953_)))))
                        (if (##pair? _rest3793237949_)
                            (let ((_tl3793937978_ (##cdr _rest3793237949_))
                                  (_hd3793837976_ (##car _rest3793237949_)))
                              (if (##pair? _hd3793837976_)
                                  (let ((_tl3794137983_ (##cdr _hd3793837976_))
                                        (_hd3794037981_
                                         (##car _hd3793837976_)))
                                    (if (##pair? _tl3794137983_)
                                        (let ((_tl3794337990_
                                               (##cdr _tl3794137983_))
                                              (_hd3794237988_
                                               (##car _tl3794137983_)))
                                          (if (##pair? _tl3794337990_)
                                              (let ((_tl3794537997_
                                                     (##cdr _tl3794337990_))
                                                    (_hd3794437995_
                                                     (##car _tl3794337990_)))
                                                (if (##pair? _tl3794537997_)
                                                    (let ((_tl3794738004_
                                                           (##cdr _tl3794537997_))
                                                          (_hd3794638002_
                                                           (##car _tl3794537997_)))
                                                      (if (##null? _tl3794738004_)
                                                          (let ((_name37986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3794037981_)
                        (_body37993_ _hd3794237988_)
                        (_bind38000_ _hd3794437995_)
                        (_assert38007_ _hd3794638002_)
                        (_rest38009_ _tl3793937978_))
                    (_K3793737973_
                     _rest38009_
                     _assert38007_
                     _bind38000_
                     _body37993_
                     _name37986_))
                  (_E3793537953_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3793537953_)))
                                              (_E3793537953_)))
                                        (_E3793537953_)))
                                  (_E3793537953_)))
                            (_try-match3793437961_))))))))
        (let* ((_clause3783237839_ _clause37825_)
               (_E3783437843_
                (lambda () (error '"No clause matching" _clause3783237839_)))
               (_K3783537918_
                (lambda (_body37846_ _name37847_)
                  (let* ((_g3784937865_
                          (lambda (_g3785037862_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3785037862_)))
                         (_g3784837915_
                          (lambda (_g3785037868_)
                            (if (gx#stx-pair? _g3785037868_)
                                (let ((_e3785237870_ (gx#stx-e _g3785037868_)))
                                  (let ((_hd3785337873_ (##car _e3785237870_))
                                        (_tl3785437875_ (##cdr _e3785237870_)))
                                    (if (gx#identifier? _hd3785337873_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3785337873_)
                                            (if (gx#stx-pair? _tl3785437875_)
                                                (let ((_e3785537878_
                                                       (gx#stx-e
                                                        _tl3785437875_)))
                                                  (let ((_hd3785637881_
                                                         (##car _e3785537878_))
                                                        (_tl3785737883_
                                                         (##cdr _e3785537878_)))
                                                    (if (gx#stx-null?
                                                         _hd3785637881_)
                                                        (if (gx#stx-pair?
                                                             _tl3785737883_)
                                                            (let ((_e3785837886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3785737883_)))
                      (let ((_hd3785937889_ (##car _e3785837886_))
                            (_tl3786037891_ (##cdr _e3785837886_)))
                        (if (gx#stx-null? _tl3786037891_)
                            ((lambda (_L37894_)
                               (let ((_g42725_
                                      (_basic-block37830_ _L37894_ '() '())))
                                 (begin
                                   (let ((_g42726_
                                          (if (##values? _g42725_)
                                              (##vector-length _g42725_)
                                              1)))
                                     (if (not (##fx= _g42726_ 2))
                                         (error "Context expects 2 values"
                                                _g42726_)))
                                   (let ((_body37912_
                                          (##vector-ref _g42725_ 0))
                                         (_body-blocks37913_
                                          (##vector-ref _g42725_ 1)))
                                     (_fold-blocks37831_
                                      _body-blocks37913_
                                      (cons (cons _name37847_
                                                  (cons 'restart:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '() (cons _body37912_ '())))
                      (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks37826_))))))
                             _hd3785937889_)
                            (_g3784937865_ _g3785037868_))))
                    (_g3784937865_ _g3785037868_))
                (_g3784937865_ _g3785037868_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3784937865_ _g3785037868_))
                                            (_g3784937865_ _g3785037868_))
                                        (_g3784937865_ _g3785037868_))))
                                (_g3784937865_ _g3785037868_)))))
                    (_g3784837915_ _body37846_)))))
          (if (##pair? _clause3783237839_)
              (let ((_hd3783637921_ (##car _clause3783237839_))
                    (_tl3783737923_ (##cdr _clause3783237839_)))
                (let* ((_name37926_ _hd3783637921_)
                       (_body37928_ _tl3783737923_))
                  (_K3783537918_ _body37928_ _name37926_)))
              (_E3783437843_))))))
  (define gxc#optimize-match-fold-basic-blocks
    (lambda (_blocks37431_)
      (let _lp37433_ ((_rest37435_ _blocks37431_) (_blocks37436_ '()))
        (let* ((_rest3743737445_ _rest37435_)
               (_else3743937494_
                (lambda ()
                  (foldl1 (lambda (_block37453_ _r37454_)
                            (let* ((_block3745537466_ _block37453_)
                                   (_E3745737470_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _block3745537466_)))
                                   (_K3745837476_
                                    (lambda (_kont37473_ _name37474_)
                                      (cons (cons _name37474_ _kont37473_)
                                            _r37454_))))
                              (if (##pair? _block3745537466_)
                                  (let ((_hd3745937479_
                                         (##car _block3745537466_))
                                        (_tl3746037481_
                                         (##cdr _block3745537466_)))
                                    (let ((_name37484_ _hd3745937479_))
                                      (if (##pair? _tl3746037481_)
                                          (let ((_tl3746237486_
                                                 (##cdr _tl3746037481_)))
                                            (if (##pair? _tl3746237486_)
                                                (let* ((_hd3746337489_
                                                        (##car _tl3746237486_))
                                                       (_kont37492_
                                                        _hd3746337489_))
                                                  (_K3745837476_
                                                   _kont37492_
                                                   _name37484_))
                                                (_E3745737470_)))
                                          (_E3745737470_))))
                                  (_E3745737470_))))
                          '()
                          _blocks37436_)))
               (_K3744137813_
                (lambda (_rest37497_ _block37498_)
                  (let* ((_block3749937524_ _block37498_)
                         (_E3750237528_
                          (lambda ()
                            (error '"No clause matching" _block3749937524_))))
                    (let ((_K3751437784_
                           (lambda (_assert37706_ _kont37707_ _name37708_)
                             (let* ((_g3771037726_
                                     (lambda (_g3771137723_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3771137723_)))
                                    (_g3770937781_
                                     (lambda (_g3771137729_)
                                       (if (gx#stx-pair? _g3771137729_)
                                           (let ((_e3771337731_
                                                  (gx#stx-e _g3771137729_)))
                                             (let ((_hd3771437734_
                                                    (##car _e3771337731_))
                                                   (_tl3771537736_
                                                    (##cdr _e3771337731_)))
                                               (if (gx#identifier?
                                                    _hd3771437734_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3771437734_)
                                                       (if (gx#stx-pair?
                                                            _tl3771537736_)
                                                           (let ((_e3771637739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3771537736_)))
                     (let ((_hd3771737742_ (##car _e3771637739_))
                           (_tl3771837744_ (##cdr _e3771637739_)))
                       (if (gx#stx-null? _hd3771737742_)
                           (if (gx#stx-pair? _tl3771837744_)
                               (let ((_e3771937747_ (gx#stx-e _tl3771837744_)))
                                 (let ((_hd3772037750_ (##car _e3771937747_))
                                       (_tl3772137752_ (##cdr _e3771937747_)))
                                   (if (gx#stx-null? _tl3772137752_)
                                       ((lambda (_L37755_)
                                          (let* ((_body37770_
                                                  (gxc#optimize-match-block
                                                   _L37755_
                                                   _assert37706_
                                                   '()
                                                   _rest37497_))
                                                 (_block37772_
                                                  (cons _name37708_
                                                        (cons 'restart:
                                                              (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '() (cons _body37770_ '())))
                            (cons _assert37706_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_blocks37774_
                                                  (cons _block37772_
                                                        _blocks37436_))
                                                 (_rest37776_
                                                  (gxc#optimize-match-prune-blocks
                                                   _rest37497_
                                                   _blocks37774_))
                                                 (_rest37778_
                                                  (gxc#optimize-match-fuse-restart-blocks
                                                   _rest37776_
                                                   _blocks37774_)))
                                            (_lp37433_
                                             _rest37778_
                                             _blocks37774_)))
                                        _hd3772037750_)
                                       (_g3771037726_ _g3771137729_))))
                               (_g3771037726_ _g3771137729_))
                           (_g3771037726_ _g3771137729_))))
                   (_g3771037726_ _g3771137729_))
               (_g3771037726_ _g3771137729_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3771037726_
                                                    _g3771137729_))))
                                           (_g3771037726_ _g3771137729_)))))
                               (_g3770937781_ _kont37707_))))
                          (_K3750337667_
                           (lambda (_bind37532_
                                    _assert37533_
                                    _kont37534_
                                    _name37535_)
                             (let* ((_g3753737563_
                                     (lambda (_g3753837560_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3753837560_)))
                                    (_g3753637664_
                                     (lambda (_g3753837566_)
                                       (if (gx#stx-pair? _g3753837566_)
                                           (let ((_e3754137568_
                                                  (gx#stx-e _g3753837566_)))
                                             (let ((_hd3754237571_
                                                    (##car _e3754137568_))
                                                   (_tl3754337573_
                                                    (##cdr _e3754137568_)))
                                               (if (gx#identifier?
                                                    _hd3754237571_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3754237571_)
                                                       (if (gx#stx-pair?
                                                            _tl3754337573_)
                                                           (let ((_e3754437576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3754337573_)))
                     (let ((_hd3754537579_ (##car _e3754437576_))
                           (_tl3754637581_ (##cdr _e3754437576_)))
                       (if (gx#stx-pair/null? _hd3754537579_)
                           (let ((_g42727_
                                  (gx#syntax-split-splice _hd3754537579_ '0)))
                             (begin
                               (let ((_g42728_
                                      (if (##values? _g42727_)
                                          (##vector-length _g42727_)
                                          1)))
                                 (if (not (##fx= _g42728_ 2))
                                     (error "Context expects 2 values"
                                            _g42728_)))
                               (let ((_target3754737584_
                                      (##vector-ref _g42727_ 0))
                                     (_tl3754937586_
                                      (##vector-ref _g42727_ 1)))
                                 (if (gx#stx-null? _tl3754937586_)
                                     (letrec ((_loop3755037589_
                                               (lambda (_hd3754837592_
                                                        _id3755437594_)
                                                 (if (gx#stx-pair?
                                                      _hd3754837592_)
                                                     (let ((_e3755137597_
                                                            (gx#stx-e
                                                             _hd3754837592_)))
                                                       (let ((_lp-hd3755237600_
                                                              (##car _e3755137597_))
                                                             (_lp-tl3755337602_
                                                              (##cdr _e3755137597_)))
                                                         (_loop3755037589_
                                                          _lp-tl3755337602_
                                                          (cons _lp-hd3755237600_
                                                                _id3755437594_))))
                                                     (let ((_id3755537605_
                                                            (reverse _id3755437594_)))
                                                       (if (gx#stx-pair?
                                                            _tl3754637581_)
                                                           (let ((_e3755637608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3754637581_)))
                     (let ((_hd3755737611_ (##car _e3755637608_))
                           (_tl3755837613_ (##cdr _e3755637608_)))
                       (if (gx#stx-null? _tl3755837613_)
                           ((lambda (_L37616_ _L37617_)
                              (let* ((_body37646_
                                      (gxc#optimize-match-block
                                       _L37616_
                                       _assert37533_
                                       _bind37532_
                                       _rest37497_))
                                     (_block37655_
                                      (cons _name37535_
                                            (cons 'continue:
                                                  (cons (cons '%#lambda
                                                              (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g3764737650_ _g3764837652_)
                                        (cons _g3764737650_ _g3764837652_))
                                      '()
                                      _L37617_))
                            (cons _body37646_ '())))
                (cons _assert37533_ (cons _bind37532_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_blocks37657_
                                      (cons _block37655_ _blocks37436_))
                                     (_rest37659_
                                      (gxc#optimize-match-prune-blocks
                                       _rest37497_
                                       _blocks37657_))
                                     (_rest37661_
                                      (gxc#optimize-match-fuse-restart-blocks
                                       _rest37659_
                                       _blocks37657_)))
                                (_lp37433_ _rest37661_ _blocks37657_)))
                            _hd3755737611_
                            _id3755537605_)
                           (_g3753737563_ _g3753837566_))))
                   (_g3753737563_ _g3753837566_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3755037589_
                                        _target3754737584_
                                        '()))
                                     (_g3753737563_ _g3753837566_)))))
                           (_g3753737563_ _g3753837566_))))
                   (_g3753737563_ _g3753837566_))
               (_g3753737563_ _g3753837566_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3753737563_
                                                    _g3753837566_))))
                                           (_g3753737563_ _g3753837566_)))))
                               (_g3753637664_ _kont37534_)))))
                      (if (##pair? _block3749937524_)
                          (let ((_tl3751637789_ (##cdr _block3749937524_))
                                (_hd3751537787_ (##car _block3749937524_)))
                            (if (##pair? _tl3751637789_)
                                (let ((_tl3751837796_ (##cdr _tl3751637789_))
                                      (_hd3751737794_ (##car _tl3751637789_)))
                                  (if (##eq? _hd3751737794_ 'restart:)
                                      (if (##pair? _tl3751837796_)
                                          (let ((_tl3752037801_
                                                 (##cdr _tl3751837796_))
                                                (_hd3751937799_
                                                 (##car _tl3751837796_)))
                                            (if (##pair? _tl3752037801_)
                                                (let ((_tl3752237808_
                                                       (##cdr _tl3752037801_))
                                                      (_hd3752137806_
                                                       (##car _tl3752037801_)))
                                                  (if (##null? _tl3752237808_)
                                                      (let ((_name37792_
                                                             _hd3751537787_)
                                                            (_kont37804_
                                                             _hd3751937799_)
                                                            (_assert37811_
                                                             _hd3752137806_))
                                                        (_K3751437784_
                                                         _assert37811_
                                                         _kont37804_
                                                         _name37792_))
                                                      (_E3750237528_)))
                                                (_E3750237528_)))
                                          (_E3750237528_))
                                      (if (##eq? _hd3751737794_ 'continue:)
                                          (if (##pair? _tl3751837796_)
                                              (let ((_tl3750937684_
                                                     (##cdr _tl3751837796_))
                                                    (_hd3750837682_
                                                     (##car _tl3751837796_)))
                                                (if (##pair? _tl3750937684_)
                                                    (let ((_tl3751137691_
                                                           (##cdr _tl3750937684_))
                                                          (_hd3751037689_
                                                           (##car _tl3750937684_)))
                                                      (if (##pair? _tl3751137691_)
                                                          (let ((_tl3751337698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _tl3751137691_))
                        (_hd3751237696_ (##car _tl3751137691_)))
                    (if (##null? _tl3751337698_)
                        (let ((_name37675_ _hd3751537787_)
                              (_kont37687_ _hd3750837682_)
                              (_assert37694_ _hd3751037689_)
                              (_bind37701_ _hd3751237696_))
                          (_K3750337667_
                           _bind37701_
                           _assert37694_
                           _kont37687_
                           _name37675_))
                        (_E3750237528_)))
                  (_E3750237528_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3750237528_)))
                                              (_E3750237528_))
                                          (_E3750237528_))))
                                (_E3750237528_)))
                          (_E3750237528_)))))))
          (if (##pair? _rest3743737445_)
              (let ((_hd3744237816_ (##car _rest3743737445_))
                    (_tl3744337818_ (##cdr _rest3743737445_)))
                (let* ((_block37821_ _hd3744237816_)
                       (_rest37823_ _tl3744337818_))
                  (_K3744137813_ _rest37823_ _block37821_)))
              (_else3743937494_))))))
  (define gxc#optimize-match-block
    (lambda (_body32054_ _assert32055_ _bind32056_ _blocks32057_)
      (letrec* ((_env-assert32292_ '())
                (_env-type32293_ '())
                (_env-bind32294_ '())
                (_in-splice?32295_ '#f)
                (_do-assert32296_
                 (lambda (_assert37354_ _K37355_)
                   (if (pair? _assert37354_)
                       (let _lp37357_ ((_rest37359_ _assert37354_)
                                       (_env-assert37360_ _env-assert32292_)
                                       (_env-type37361_ _env-type32293_))
                         (let* ((_rest3736237370_ _rest37359_)
                                (_else3736437378_
                                 (lambda ()
                                   (_do-assert!32302_
                                    _env-assert37360_
                                    _env-type37361_
                                    _K37355_)))
                                (_K3736637419_
                                 (lambda (_rest37381_ _assert37382_)
                                   (let* ((_assert3738337390_ _assert37382_)
                                          (_E3738537394_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _assert3738337390_)))
                                          (_K3738637407_
                                           (lambda (_val37397_ _expr37398_)
                                             (let* ((_sexpr37400_
                                                     (gxc#apply-generate-runtime-repr
                                                      _expr37398_))
                                                    (_env-assert37402_
                                                     (cons (cons _sexpr37400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _val37397_)
                   _env-assert37360_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_env-type37404_
                                                     (_fold-assert-type32298_
                                                      _expr37398_
                                                      _val37397_
                                                      _env-type37361_)))
                                               (_lp37357_
                                                _rest37381_
                                                _env-assert37402_
                                                _env-type37404_)))))
                                     (if (##pair? _assert3738337390_)
                                         (let ((_hd3738737410_
                                                (##car _assert3738337390_))
                                               (_tl3738837412_
                                                (##cdr _assert3738337390_)))
                                           (let* ((_expr37415_ _hd3738737410_)
                                                  (_val37417_ _tl3738837412_))
                                             (_K3738637407_
                                              _val37417_
                                              _expr37415_)))
                                         (_E3738537394_))))))
                           (if (##pair? _rest3736237370_)
                               (let ((_hd3736737422_ (##car _rest3736237370_))
                                     (_tl3736837424_ (##cdr _rest3736237370_)))
                                 (let* ((_assert37427_ _hd3736737422_)
                                        (_rest37429_ _tl3736837424_))
                                   (_K3736637419_ _rest37429_ _assert37427_)))
                               (_else3736437378_))))
                       (_K37355_))))
                (_predicate-type32297_
                 (lambda (_id37299_)
                   (let* ((_sym37301_ (gxc#identifier-symbol _id37299_))
                          (_$e37303_ _sym37301_))
                     (let ((_default3730537336_
                            (lambda ()
                              (let* ((_g3730837315_
                                      (gxc#optimizer-resolve-type _sym37301_))
                                     (_else3731037323_ (lambda () '#f))
                                     (_K3731237328_
                                      (lambda (_struct-t37326_)
                                        (gxc#optimizer-resolve-type
                                         _struct-t37326_))))
                                (if (##structure-instance-of?
                                     _g3730837315_
                                     'gxc#!struct-pred::t)
                                    (let* ((_e3731337331_
                                            (##vector-ref _g3730837315_ '1))
                                           (_struct-t37334_ _e3731337331_))
                                      (gxc#optimizer-resolve-type
                                       _struct-t37334_))
                                    (_else3731037323_)))))
                           (_table3730637338_
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
                       (if (symbol? _$e37303_)
                           (let* ((_h37341_ (##symbol-hash _$e37303_))
                                  (_ix37344_ (##fxmodulo _h37341_ '63))
                                  (_q37347_
                                   (##vector-ref _table3730637338_ _ix37344_)))
                             (if _q37347_
                                 (if (eq? (##car _q37347_) _$e37303_)
                                     (let ((_x37351_ (##cdr _q37347_)))
                                       (if (##fx< _x37351_ '5)
                                           (if (##fx< _x37351_ '2)
                                               (if (##fx= _x37351_ '0)
                                                   'pair
                                                   'null)
                                               (if (##fx= _x37351_ '2)
                                                   'vector
                                                   (if (##fx= _x37351_ '3)
                                                       'box
                                                       'identifier)))
                                           (if (##fx< _x37351_ '7)
                                               (if (##fx= _x37351_ '5)
                                                   'stx-pair
                                                   'stx-null)
                                               (if (##fx= _x37351_ '7)
                                                   'stx-vector
                                                   (if (##fx= _x37351_ '8)
                                                       'stx-box
                                                       'stx-datum)))))
                                     (_default3730537336_))
                                 (_default3730537336_)))
                           (_default3730537336_))))))
                (_fold-assert-type32298_
                 (lambda (_expr36247_ _val36248_ _env36249_)
                   (let* ((___stx4021540216_ _expr36247_)
                          (_g3625736436_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4021540216_))))
                     (let ((___kont4021740218_
                            (lambda (_L37268_ _L37269_)
                              (let ((_$e37291_
                                     (_predicate-type32297_ _L37269_)))
                                (if _$e37291_
                                    ((lambda (_t37294_)
                                       (cons (cons _L37268_
                                                   (cons _t37294_
                                                         (cons _val36248_
                                                               '())))
                                             _env36249_))
                                     _$e37291_)
                                    _env36249_))))
                           (___kont4021940220_
                            (lambda (_L36958_ _L36959_ _L36960_)
                              (let ((_$e36985_
                                     (gxc#identifier-symbol _L36960_)))
                                (if (let ((_$e36988_ (eq? '##fx= _$e36985_)))
                                      (if _$e36988_
                                          _$e36988_
                                          (eq? 'fx= _$e36985_)))
                                    (let* ((___stx4012140122_ _L36959_)
                                           (_g3699237021_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               ___stx4012140122_))))
                                      (let ((___kont4012340124_
                                             (lambda (_L37089_ _L37090_)
                                               (let ((_$e37115_
                                                      (_countf-symbol32299_
                                                       _L37090_)))
                                                 (if _$e37115_
                                                     ((lambda (_sym37118_)
                                                        (cons (cons _L37089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym37118_
                                  (cons (gx#stx-e _L36958_)
                                        (cons _val36248_ '()))))
                      _env36249_))
              _$e37115_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _env36249_))))
                                            (___kont4012540126_
                                             (lambda () _env36249_)))
                                        (if (gx#stx-pair? ___stx4012140122_)
                                            (let ((_e3699637033_
                                                   (gx#stx-e
                                                    ___stx4012140122_)))
                                              (let ((_tl3699837038_
                                                     (##cdr _e3699637033_))
                                                    (_hd3699737036_
                                                     (##car _e3699637033_)))
                                                (if (gx#identifier?
                                                     _hd3699737036_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3699737036_)
                                                        (if (gx#stx-pair?
                                                             _tl3699837038_)
                                                            (let ((_e3699937041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3699837038_)))
                      (let ((_tl3700137046_ (##cdr _e3699937041_))
                            (_hd3700037044_ (##car _e3699937041_)))
                        (if (gx#stx-pair? _hd3700037044_)
                            (let ((_e3700237049_ (gx#stx-e _hd3700037044_)))
                              (let ((_tl3700437054_ (##cdr _e3700237049_))
                                    (_hd3700337052_ (##car _e3700237049_)))
                                (if (gx#identifier? _hd3700337052_)
                                    (if (gx#stx-eq? '%#ref _hd3700337052_)
                                        (if (gx#stx-pair? _tl3700437054_)
                                            (let ((_e3700537057_
                                                   (gx#stx-e _tl3700437054_)))
                                              (let ((_tl3700737062_
                                                     (##cdr _e3700537057_))
                                                    (_hd3700637060_
                                                     (##car _e3700537057_)))
                                                (if (gx#stx-null?
                                                     _tl3700737062_)
                                                    (if (gx#stx-pair?
                                                         _tl3700137046_)
                                                        (let ((_e3700837065_
                                                               (gx#stx-e
                                                                _tl3700137046_)))
                                                          (let ((_tl3701037070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3700837065_))
                        (_hd3700937068_ (##car _e3700837065_)))
                    (if (gx#stx-pair? _hd3700937068_)
                        (let ((_e3701137073_ (gx#stx-e _hd3700937068_)))
                          (let ((_tl3701337078_ (##cdr _e3701137073_))
                                (_hd3701237076_ (##car _e3701137073_)))
                            (if (gx#identifier? _hd3701237076_)
                                (if (gx#stx-eq? '%#ref _hd3701237076_)
                                    (if (gx#stx-pair? _tl3701337078_)
                                        (let ((_e3701437081_
                                               (gx#stx-e _tl3701337078_)))
                                          (let ((_tl3701637086_
                                                 (##cdr _e3701437081_))
                                                (_hd3701537084_
                                                 (##car _e3701437081_)))
                                            (if (gx#stx-null? _tl3701637086_)
                                                (if (gx#stx-null?
                                                     _tl3701037070_)
                                                    (___kont4012340124_
                                                     _hd3701537084_
                                                     _hd3700637060_)
                                                    (___kont4012540126_))
                                                (___kont4012540126_))))
                                        (___kont4012540126_))
                                    (___kont4012540126_))
                                (___kont4012540126_))))
                        (___kont4012540126_))))
                (___kont4012540126_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4012540126_))))
                                            (___kont4012540126_))
                                        (___kont4012540126_))
                                    (___kont4012540126_))))
                            (___kont4012540126_))))
                    (___kont4012540126_))
                (___kont4012540126_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4012540126_))))
                                            (___kont4012540126_))))
                                    (if (let ((_$e37123_
                                               (eq? '##eq? _$e36985_)))
                                          (if _$e37123_
                                              _$e37123_
                                              (let ((_$e37126_
                                                     (eq? 'eq? _$e36985_)))
                                                (if _$e37126_
                                                    _$e37126_
                                                    (let ((_$e37129_
                                                           (eq? '##eqv?
                                                                _$e36985_)))
                                                      (if _$e37129_
                                                          _$e37129_
                                                          (let ((_$e37132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (eq? 'eqv? _$e36985_)))
                    (if _$e37132_
                        _$e37132_
                        (let ((_$e37135_ (eq? '##equal? _$e36985_)))
                          (if _$e37135_
                              _$e37135_
                              (let ((_$e37138_ (eq? 'equal? _$e36985_)))
                                (if _$e37138_
                                    _$e37138_
                                    (let ((_$e37141_
                                           (eq? 'gx#free-identifier=?
                                                _$e36985_)))
                                      (if _$e37141_
                                          _$e37141_
                                          (eq? 'gx#stx-eq?
                                               _$e36985_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        ((lambda (_sym37144_)
                                           (let* ((_sym37146_
                                                   (_eqf-symbol32300_
                                                    _sym37144_))
                                                  (___stx4018940190_ _L36959_)
                                                  (_g3714937162_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4018940190_))))
                                             (let ((___kont4019140192_
                                                    (lambda (_L37190_)
                                                      (cons (cons _L37190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _sym37146_
                                (cons (gx#stx-e _L36958_)
                                      (cons _val36248_ '()))))
                    _env36249_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4019340194_
                                                    (lambda () _env36249_)))
                                               (if (gx#stx-pair?
                                                    ___stx4018940190_)
                                                   (let ((_e3715237174_
                                                          (gx#stx-e
                                                           ___stx4018940190_)))
                                                     (let ((_tl3715437179_
                                                            (##cdr _e3715237174_))
                                                           (_hd3715337177_
                                                            (##car _e3715237174_)))
                                                       (if (gx#identifier?
                                                            _hd3715337177_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3715337177_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3715437179_)
                           (let ((_e3715537182_ (gx#stx-e _tl3715437179_)))
                             (let ((_tl3715737187_ (##cdr _e3715537182_))
                                   (_hd3715637185_ (##car _e3715537182_)))
                               (if (gx#stx-null? _tl3715737187_)
                                   (___kont4019140192_ _hd3715637185_)
                                   (___kont4019340194_))))
                           (___kont4019340194_))
                       (___kont4019340194_))
                   (___kont4019340194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4019340194_)))))
                                         _$e36985_)
                                        _env36249_)))))
                           (___kont4022140222_
                            (lambda (_L36862_ _L36863_ _L36864_)
                              (_fold-assert-type32298_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L36864_ '()))
                                           (cons _L36862_
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote)
                                                             (cons _L36863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36248_
                               _env36249_)))
                           (___kont4022340224_
                            (lambda (_L36752_ _L36753_ _L36754_)
                              (let ((_$e36783_
                                     (gxc#identifier-symbol _L36754_)))
                                (if (let ((_$e36786_
                                           (eq? 'gx#free-identifier=?
                                                _$e36783_)))
                                      (if _$e36786_
                                          _$e36786_
                                          (eq? 'gx#stx-eq? _$e36783_)))
                                    ((lambda (_sym36789_)
                                       (let ((_sym36791_
                                              (_eqf-symbol32300_ _sym36789_)))
                                         (cons (cons _L36753_
                                                     (cons _sym36791_
                                                           (cons _L36752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _val36248_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env36249_)))
                                     _$e36783_)
                                    _env36249_))))
                           (___kont4022540226_
                            (lambda (_L36636_ _L36637_ _L36638_)
                              (_fold-assert-type32298_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L36638_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#ref)
                                                       (cons _L36636_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote-syntax)
                                                             (cons _L36637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36248_
                               _env36249_)))
                           (___kont4022740228_
                            (lambda (_L36520_ _L36521_ _L36522_)
                              (_fold-assert-type32298_
                               (gxc#apply-expression-subst
                                _L36521_
                                _L36522_
                                _L36520_)
                               _val36248_
                               _env36249_)))
                           (___kont4022940230_ (lambda () _env36249_)))
                       (if (gx#stx-pair? ___stx4021540216_)
                           (let ((_e3626137212_ (gx#stx-e ___stx4021540216_)))
                             (let ((_tl3626337217_ (##cdr _e3626137212_))
                                   (_hd3626237215_ (##car _e3626137212_)))
                               (if (gx#identifier? _hd3626237215_)
                                   (if (gx#stx-eq? '%#call _hd3626237215_)
                                       (if (gx#stx-pair? _tl3626337217_)
                                           (let ((_e3626437220_
                                                  (gx#stx-e _tl3626337217_)))
                                             (let ((_tl3626637225_
                                                    (##cdr _e3626437220_))
                                                   (_hd3626537223_
                                                    (##car _e3626437220_)))
                                               (if (gx#stx-pair?
                                                    _hd3626537223_)
                                                   (let ((_e3626737228_
                                                          (gx#stx-e
                                                           _hd3626537223_)))
                                                     (let ((_tl3626937233_
                                                            (##cdr _e3626737228_))
                                                           (_hd3626837231_
                                                            (##car _e3626737228_)))
                                                       (if (gx#identifier?
                                                            _hd3626837231_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3626837231_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3626937233_)
                           (let ((_e3627037236_ (gx#stx-e _tl3626937233_)))
                             (let ((_tl3627237241_ (##cdr _e3627037236_))
                                   (_hd3627137239_ (##car _e3627037236_)))
                               (if (gx#stx-null? _tl3627237241_)
                                   (if (gx#stx-pair? _tl3626637225_)
                                       (let ((_e3627337244_
                                              (gx#stx-e _tl3626637225_)))
                                         (let ((_tl3627537249_
                                                (##cdr _e3627337244_))
                                               (_hd3627437247_
                                                (##car _e3627337244_)))
                                           (if (gx#stx-pair? _hd3627437247_)
                                               (let ((_e3627637252_
                                                      (gx#stx-e
                                                       _hd3627437247_)))
                                                 (let ((_tl3627837257_
                                                        (##cdr _e3627637252_))
                                                       (_hd3627737255_
                                                        (##car _e3627637252_)))
                                                   (if (gx#identifier?
                                                        _hd3627737255_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd3627737255_)
                                                           (if (gx#stx-pair?
                                                                _tl3627837257_)
                                                               (let ((_e3627937260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3627837257_)))
                         (let ((_tl3628137265_ (##cdr _e3627937260_))
                               (_hd3628037263_ (##car _e3627937260_)))
                           (if (gx#stx-null? _tl3628137265_)
                               (if (gx#stx-null? _tl3627537249_)
                                   (___kont4021740218_
                                    _hd3628037263_
                                    _hd3627137239_)
                                   (if (gx#stx-pair? _tl3627537249_)
                                       (let ((_e3630036934_
                                              (gx#stx-e _tl3627537249_)))
                                         (let ((_tl3630236939_
                                                (##cdr _e3630036934_))
                                               (_hd3630136937_
                                                (##car _e3630036934_)))
                                           (if (gx#stx-pair? _hd3630136937_)
                                               (let ((_e3630336942_
                                                      (gx#stx-e
                                                       _hd3630136937_)))
                                                 (let ((_tl3630536947_
                                                        (##cdr _e3630336942_))
                                                       (_hd3630436945_
                                                        (##car _e3630336942_)))
                                                   (if (gx#identifier?
                                                        _hd3630436945_)
                                                       (if (gx#stx-eq?
                                                            '%#quote
                                                            _hd3630436945_)
                                                           (if (gx#stx-pair?
                                                                _tl3630536947_)
                                                               (let ((_e3630636950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3630536947_)))
                         (let ((_tl3630836955_ (##cdr _e3630636950_))
                               (_hd3630736953_ (##car _e3630636950_)))
                           (if (gx#stx-null? _tl3630836955_)
                               (if (gx#stx-null? _tl3630236939_)
                                   (___kont4021940220_
                                    _hd3630736953_
                                    _hd3627437247_
                                    _hd3627137239_)
                                   (___kont4022940230_))
                               (___kont4022940230_))))
                       (___kont4022940230_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3630436945_)
                       (if (gx#stx-pair? _tl3630536947_)
                           (let ((_e3636636744_ (gx#stx-e _tl3630536947_)))
                             (let ((_tl3636836749_ (##cdr _e3636636744_))
                                   (_hd3636736747_ (##car _e3636636744_)))
                               (if (gx#stx-null? _tl3636836749_)
                                   (if (gx#stx-null? _tl3630236939_)
                                       (___kont4022340224_
                                        _hd3636736747_
                                        _hd3628037263_
                                        _hd3627137239_)
                                       (___kont4022940230_))
                                   (___kont4022940230_))))
                           (___kont4022940230_))
                       (___kont4022940230_)))
               (___kont4022940230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4022940230_))))
                                       (___kont4022940230_)))
                               (if (gx#stx-pair? _tl3627537249_)
                                   (let ((_e3630036934_
                                          (gx#stx-e _tl3627537249_)))
                                     (let ((_tl3630236939_
                                            (##cdr _e3630036934_))
                                           (_hd3630136937_
                                            (##car _e3630036934_)))
                                       (if (gx#stx-pair? _hd3630136937_)
                                           (let ((_e3630336942_
                                                  (gx#stx-e _hd3630136937_)))
                                             (let ((_tl3630536947_
                                                    (##cdr _e3630336942_))
                                                   (_hd3630436945_
                                                    (##car _e3630336942_)))
                                               (if (gx#identifier?
                                                    _hd3630436945_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3630436945_)
                                                       (if (gx#stx-pair?
                                                            _tl3630536947_)
                                                           (let ((_e3630636950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3630536947_)))
                     (let ((_tl3630836955_ (##cdr _e3630636950_))
                           (_hd3630736953_ (##car _e3630636950_)))
                       (if (gx#stx-null? _tl3630836955_)
                           (if (gx#stx-null? _tl3630236939_)
                               (___kont4021940220_
                                _hd3630736953_
                                _hd3627437247_
                                _hd3627137239_)
                               (___kont4022940230_))
                           (___kont4022940230_))))
                   (___kont4022940230_))
               (___kont4022940230_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4022940230_))))
                                           (___kont4022940230_))))
                                   (___kont4022940230_)))))
                       (if (gx#stx-pair? _tl3627537249_)
                           (let ((_e3630036934_ (gx#stx-e _tl3627537249_)))
                             (let ((_tl3630236939_ (##cdr _e3630036934_))
                                   (_hd3630136937_ (##car _e3630036934_)))
                               (if (gx#stx-pair? _hd3630136937_)
                                   (let ((_e3630336942_
                                          (gx#stx-e _hd3630136937_)))
                                     (let ((_tl3630536947_
                                            (##cdr _e3630336942_))
                                           (_hd3630436945_
                                            (##car _e3630336942_)))
                                       (if (gx#identifier? _hd3630436945_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3630436945_)
                                               (if (gx#stx-pair?
                                                    _tl3630536947_)
                                                   (let ((_e3630636950_
                                                          (gx#stx-e
                                                           _tl3630536947_)))
                                                     (let ((_tl3630836955_
                                                            (##cdr _e3630636950_))
                                                           (_hd3630736953_
                                                            (##car _e3630636950_)))
                                                       (if (gx#stx-null?
                                                            _tl3630836955_)
                                                           (if (gx#stx-null?
                                                                _tl3630236939_)
                                                               (___kont4021940220_
                                                                _hd3630736953_
                                                                _hd3627437247_
                                                                _hd3627137239_)
                                                               (___kont4022940230_))
                                                           (___kont4022940230_))))
                                                   (___kont4022940230_))
                                               (___kont4022940230_))
                                           (___kont4022940230_))))
                                   (___kont4022940230_))))
                           (___kont4022940230_)))
                   (if (gx#stx-pair? _tl3627537249_)
                       (let ((_e3630036934_ (gx#stx-e _tl3627537249_)))
                         (let ((_tl3630236939_ (##cdr _e3630036934_))
                               (_hd3630136937_ (##car _e3630036934_)))
                           (if (gx#stx-pair? _hd3630136937_)
                               (let ((_e3630336942_ (gx#stx-e _hd3630136937_)))
                                 (let ((_tl3630536947_ (##cdr _e3630336942_))
                                       (_hd3630436945_ (##car _e3630336942_)))
                                   (if (gx#identifier? _hd3630436945_)
                                       (if (gx#stx-eq? '%#quote _hd3630436945_)
                                           (if (gx#stx-pair? _tl3630536947_)
                                               (let ((_e3630636950_
                                                      (gx#stx-e
                                                       _tl3630536947_)))
                                                 (let ((_tl3630836955_
                                                        (##cdr _e3630636950_))
                                                       (_hd3630736953_
                                                        (##car _e3630636950_)))
                                                   (if (gx#stx-null?
                                                        _tl3630836955_)
                                                       (if (gx#stx-null?
                                                            _tl3630236939_)
                                                           (___kont4021940220_
                                                            _hd3630736953_
                                                            _hd3627437247_
                                                            _hd3627137239_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3627737255_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3627837257_)
                           (let ((_e3633036846_ (gx#stx-e _tl3627837257_)))
                             (let ((_tl3633236851_ (##cdr _e3633036846_))
                                   (_hd3633136849_ (##car _e3633036846_)))
                               (___kont4022940230_)))
                           (___kont4022940230_))
                       (if (gx#stx-eq? '%#quote-syntax _hd3627737255_)
                           (if (gx#stx-pair? _tl3627837257_)
                               (let ((_e3639036604_ (gx#stx-e _tl3627837257_)))
                                 (let ((_tl3639236609_ (##cdr _e3639036604_))
                                       (_hd3639136607_ (##car _e3639036604_)))
                                   (___kont4022940230_)))
                               (___kont4022940230_))
                           (___kont4022940230_))))
               (if (gx#stx-eq? '%#quote _hd3627737255_)
                   (if (gx#stx-pair? _tl3627837257_)
                       (let ((_e3633036846_ (gx#stx-e _tl3627837257_)))
                         (let ((_tl3633236851_ (##cdr _e3633036846_))
                               (_hd3633136849_ (##car _e3633036846_)))
                           (if (gx#stx-null? _tl3633236851_)
                               (if (gx#stx-null? _tl3630236939_)
                                   (___kont4022140222_
                                    _hd3630136937_
                                    _hd3633136849_
                                    _hd3627137239_)
                                   (___kont4022940230_))
                               (___kont4022940230_))))
                       (___kont4022940230_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3627737255_)
                       (if (gx#stx-pair? _tl3627837257_)
                           (let ((_e3639036604_ (gx#stx-e _tl3627837257_)))
                             (let ((_tl3639236609_ (##cdr _e3639036604_))
                                   (_hd3639136607_ (##car _e3639036604_)))
                               (___kont4022940230_)))
                           (___kont4022940230_))
                       (___kont4022940230_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3627737255_)
                                                   (if (gx#stx-pair?
                                                        _tl3627837257_)
                                                       (let ((_e3633036846_
                                                              (gx#stx-e
                                                               _tl3627837257_)))
                                                         (let ((_tl3633236851_
                                                                (##cdr _e3633036846_))
                                                               (_hd3633136849_
                                                                (##car _e3633036846_)))
                                                           (if (gx#stx-null?
                                                                _tl3633236851_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3630236939_)
                           (___kont4022140222_
                            _hd3630136937_
                            _hd3633136849_
                            _hd3627137239_)
                           (___kont4022940230_))
                       (___kont4022940230_))))
               (___kont4022940230_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3627737255_)
                                                       (if (gx#stx-pair?
                                                            _tl3627837257_)
                                                           (let ((_e3639036604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3627837257_)))
                     (let ((_tl3639236609_ (##cdr _e3639036604_))
                           (_hd3639136607_ (##car _e3639036604_)))
                       (___kont4022940230_)))
                   (___kont4022940230_))
               (___kont4022940230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3627737255_)
                                               (if (gx#stx-pair?
                                                    _tl3627837257_)
                                                   (let ((_e3633036846_
                                                          (gx#stx-e
                                                           _tl3627837257_)))
                                                     (let ((_tl3633236851_
                                                            (##cdr _e3633036846_))
                                                           (_hd3633136849_
                                                            (##car _e3633036846_)))
                                                       (if (gx#stx-null?
                                                            _tl3633236851_)
                                                           (if (gx#stx-null?
                                                                _tl3630236939_)
                                                               (___kont4022140222_
                                                                _hd3630136937_
                                                                _hd3633136849_
                                                                _hd3627137239_)
                                                               (___kont4022940230_))
                                                           (___kont4022940230_))))
                                                   (___kont4022940230_))
                                               (if (gx#stx-eq?
                                                    '%#quote-syntax
                                                    _hd3627737255_)
                                                   (if (gx#stx-pair?
                                                        _tl3627837257_)
                                                       (let ((_e3639036604_
                                                              (gx#stx-e
                                                               _tl3627837257_)))
                                                         (let ((_tl3639236609_
                                                                (##cdr _e3639036604_))
                                                               (_hd3639136607_
                                                                (##car _e3639036604_)))
                                                           (if (gx#stx-null?
                                                                _tl3639236609_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3630436945_)
                           (if (gx#stx-pair? _tl3630536947_)
                               (let ((_e3639936628_ (gx#stx-e _tl3630536947_)))
                                 (let ((_tl3640136633_ (##cdr _e3639936628_))
                                       (_hd3640036631_ (##car _e3639936628_)))
                                   (if (gx#stx-null? _tl3640136633_)
                                       (if (gx#stx-null? _tl3630236939_)
                                           (___kont4022540226_
                                            _hd3640036631_
                                            _hd3639136607_
                                            _hd3627137239_)
                                           (___kont4022940230_))
                                       (___kont4022940230_))))
                               (___kont4022940230_))
                           (___kont4022940230_))
                       (___kont4022940230_))))
               (___kont4022940230_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4022940230_))))
                                       (if (gx#stx-eq? '%#quote _hd3627737255_)
                                           (if (gx#stx-pair? _tl3627837257_)
                                               (let ((_e3633036846_
                                                      (gx#stx-e
                                                       _tl3627837257_)))
                                                 (let ((_tl3633236851_
                                                        (##cdr _e3633036846_))
                                                       (_hd3633136849_
                                                        (##car _e3633036846_)))
                                                   (if (gx#stx-null?
                                                        _tl3633236851_)
                                                       (if (gx#stx-null?
                                                            _tl3630236939_)
                                                           (___kont4022140222_
                                                            _hd3630136937_
                                                            _hd3633136849_
                                                            _hd3627137239_)
                                                           (___kont4022940230_))
                                                       (___kont4022940230_))))
                                               (___kont4022940230_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3627737255_)
                                               (if (gx#stx-pair?
                                                    _tl3627837257_)
                                                   (let ((_e3639036604_
                                                          (gx#stx-e
                                                           _tl3627837257_)))
                                                     (let ((_tl3639236609_
                                                            (##cdr _e3639036604_))
                                                           (_hd3639136607_
                                                            (##car _e3639036604_)))
                                                       (___kont4022940230_)))
                                                   (___kont4022940230_))
                                               (___kont4022940230_))))))
                               (if (gx#stx-eq? '%#quote _hd3627737255_)
                                   (if (gx#stx-pair? _tl3627837257_)
                                       (let ((_e3633036846_
                                              (gx#stx-e _tl3627837257_)))
                                         (let ((_tl3633236851_
                                                (##cdr _e3633036846_))
                                               (_hd3633136849_
                                                (##car _e3633036846_)))
                                           (if (gx#stx-null? _tl3633236851_)
                                               (if (gx#stx-null?
                                                    _tl3630236939_)
                                                   (___kont4022140222_
                                                    _hd3630136937_
                                                    _hd3633136849_
                                                    _hd3627137239_)
                                                   (___kont4022940230_))
                                               (___kont4022940230_))))
                                       (___kont4022940230_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3627737255_)
                                       (if (gx#stx-pair? _tl3627837257_)
                                           (let ((_e3639036604_
                                                  (gx#stx-e _tl3627837257_)))
                                             (let ((_tl3639236609_
                                                    (##cdr _e3639036604_))
                                                   (_hd3639136607_
                                                    (##car _e3639036604_)))
                                               (___kont4022940230_)))
                                           (___kont4022940230_))
                                       (___kont4022940230_))))))
                       (if (gx#stx-eq? '%#quote _hd3627737255_)
                           (if (gx#stx-pair? _tl3627837257_)
                               (let ((_e3633036846_ (gx#stx-e _tl3627837257_)))
                                 (let ((_tl3633236851_ (##cdr _e3633036846_))
                                       (_hd3633136849_ (##car _e3633036846_)))
                                   (___kont4022940230_)))
                               (___kont4022940230_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3627737255_)
                               (if (gx#stx-pair? _tl3627837257_)
                                   (let ((_e3639036604_
                                          (gx#stx-e _tl3627837257_)))
                                     (let ((_tl3639236609_
                                            (##cdr _e3639036604_))
                                           (_hd3639136607_
                                            (##car _e3639036604_)))
                                       (___kont4022940230_)))
                                   (___kont4022940230_))
                               (___kont4022940230_)))))
               (if (gx#stx-pair? _tl3627537249_)
                   (let ((_e3630036934_ (gx#stx-e _tl3627537249_)))
                     (let ((_tl3630236939_ (##cdr _e3630036934_))
                           (_hd3630136937_ (##car _e3630036934_)))
                       (if (gx#stx-pair? _hd3630136937_)
                           (let ((_e3630336942_ (gx#stx-e _hd3630136937_)))
                             (let ((_tl3630536947_ (##cdr _e3630336942_))
                                   (_hd3630436945_ (##car _e3630336942_)))
                               (if (gx#identifier? _hd3630436945_)
                                   (if (gx#stx-eq? '%#quote _hd3630436945_)
                                       (if (gx#stx-pair? _tl3630536947_)
                                           (let ((_e3630636950_
                                                  (gx#stx-e _tl3630536947_)))
                                             (let ((_tl3630836955_
                                                    (##cdr _e3630636950_))
                                                   (_hd3630736953_
                                                    (##car _e3630636950_)))
                                               (if (gx#stx-null?
                                                    _tl3630836955_)
                                                   (if (gx#stx-null?
                                                        _tl3630236939_)
                                                       (___kont4021940220_
                                                        _hd3630736953_
                                                        _hd3627437247_
                                                        _hd3627137239_)
                                                       (___kont4022940230_))
                                                   (___kont4022940230_))))
                                           (___kont4022940230_))
                                       (___kont4022940230_))
                                   (___kont4022940230_))))
                           (___kont4022940230_))))
                   (___kont4022940230_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl3627537249_)
                                                   (let ((_e3630036934_
                                                          (gx#stx-e
                                                           _tl3627537249_)))
                                                     (let ((_tl3630236939_
                                                            (##cdr _e3630036934_))
                                                           (_hd3630136937_
                                                            (##car _e3630036934_)))
                                                       (if (gx#stx-pair?
                                                            _hd3630136937_)
                                                           (let ((_e3630336942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3630136937_)))
                     (let ((_tl3630536947_ (##cdr _e3630336942_))
                           (_hd3630436945_ (##car _e3630336942_)))
                       (if (gx#identifier? _hd3630436945_)
                           (if (gx#stx-eq? '%#quote _hd3630436945_)
                               (if (gx#stx-pair? _tl3630536947_)
                                   (let ((_e3630636950_
                                          (gx#stx-e _tl3630536947_)))
                                     (let ((_tl3630836955_
                                            (##cdr _e3630636950_))
                                           (_hd3630736953_
                                            (##car _e3630636950_)))
                                       (if (gx#stx-null? _tl3630836955_)
                                           (if (gx#stx-null? _tl3630236939_)
                                               (___kont4021940220_
                                                _hd3630736953_
                                                _hd3627437247_
                                                _hd3627137239_)
                                               (___kont4022940230_))
                                           (___kont4022940230_))))
                                   (___kont4022940230_))
                               (___kont4022940230_))
                           (___kont4022940230_))))
                   (___kont4022940230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4022940230_)))))
                                       (___kont4022940230_))
                                   (___kont4022940230_))))
                           (___kont4022940230_))
                       (if (gx#stx-eq? '%#lambda _hd3626837231_)
                           (if (gx#stx-pair? _tl3626937233_)
                               (let ((_e3641436472_ (gx#stx-e _tl3626937233_)))
                                 (let ((_tl3641636477_ (##cdr _e3641436472_))
                                       (_hd3641536475_ (##car _e3641436472_)))
                                   (if (gx#stx-pair? _hd3641536475_)
                                       (let ((_e3641736480_
                                              (gx#stx-e _hd3641536475_)))
                                         (let ((_tl3641936485_
                                                (##cdr _e3641736480_))
                                               (_hd3641836483_
                                                (##car _e3641736480_)))
                                           (if (gx#stx-null? _tl3641936485_)
                                               (if (gx#stx-pair?
                                                    _tl3641636477_)
                                                   (let ((_e3642036488_
                                                          (gx#stx-e
                                                           _tl3641636477_)))
                                                     (let ((_tl3642236493_
                                                            (##cdr _e3642036488_))
                                                           (_hd3642136491_
                                                            (##car _e3642036488_)))
                                                       (if (gx#stx-null?
                                                            _tl3642236493_)
                                                           (if (gx#stx-pair?
                                                                _tl3626637225_)
                                                               (let ((_e3642336496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3626637225_)))
                         (let ((_tl3642536501_ (##cdr _e3642336496_))
                               (_hd3642436499_ (##car _e3642336496_)))
                           (if (gx#stx-pair? _hd3642436499_)
                               (let ((_e3642636504_ (gx#stx-e _hd3642436499_)))
                                 (let ((_tl3642836509_ (##cdr _e3642636504_))
                                       (_hd3642736507_ (##car _e3642636504_)))
                                   (if (gx#identifier? _hd3642736507_)
                                       (if (gx#stx-eq? '%#ref _hd3642736507_)
                                           (if (gx#stx-pair? _tl3642836509_)
                                               (let ((_e3642936512_
                                                      (gx#stx-e
                                                       _tl3642836509_)))
                                                 (let ((_tl3643136517_
                                                        (##cdr _e3642936512_))
                                                       (_hd3643036515_
                                                        (##car _e3642936512_)))
                                                   (if (gx#stx-null?
                                                        _tl3643136517_)
                                                       (if (gx#stx-null?
                                                            _tl3642536501_)
                                                           (___kont4022740228_
                                                            _hd3643036515_
                                                            _hd3642136491_
                                                            _hd3641836483_)
                                                           (___kont4022940230_))
                                                       (___kont4022940230_))))
                                               (___kont4022940230_))
                                           (___kont4022940230_))
                                       (___kont4022940230_))))
                               (___kont4022940230_))))
                       (___kont4022940230_))
                   (___kont4022940230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4022940230_))
                                               (___kont4022940230_))))
                                       (___kont4022940230_))))
                               (___kont4022940230_))
                           (___kont4022940230_)))
                   (___kont4022940230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4022940230_))))
                                           (___kont4022940230_))
                                       (___kont4022940230_))
                                   (___kont4022940230_))))
                           (___kont4022940230_))))))
                (_countf-symbol32299_
                 (lambda (_id36239_)
                   (let ((_$e36241_ (gxc#identifier-symbol _id36239_)))
                     (if (let ((_$e36244_ (eq? '##vector-length _$e36241_)))
                           (if _$e36244_
                               _$e36244_
                               (eq? 'vector-length _$e36241_)))
                         'vector-length
                         (if (eq? 'values-count _$e36241_)
                             'values-count
                             '#f)))))
                (_eqf-symbol32300_
                 (lambda (_sym36225_)
                   (let ((_$e36227_ _sym36225_))
                     (if (let ((_$e36230_ (eq? '##eq? _$e36227_)))
                           (if _$e36230_ _$e36230_ (eq? 'eq? _$e36227_)))
                         'eq?
                         (if (let ((_$e36233_ (eq? '##eqv? _$e36227_)))
                               (if _$e36233_ _$e36233_ (eq? 'eqv? _$e36227_)))
                             'eqv?
                             (if (let ((_$e36236_ (eq? '##equal? _$e36227_)))
                                   (if _$e36236_
                                       _$e36236_
                                       (eq? 'equal? _$e36227_)))
                                 'equal?
                                 (if (eq? 'gx#free-identifier=? _$e36227_)
                                     'free-identifier=?
                                     (if (eq? 'gx#stx-eq? _$e36227_)
                                         'stx-eq?
                                         '#f))))))))
                (_eqf-symbol?32301_
                 (lambda (_sym36208_)
                   (let ((_$e36210_ _sym36208_))
                     (if (let ((_$e36213_ (eq? 'eq? _$e36210_)))
                           (if _$e36213_
                               _$e36213_
                               (let ((_$e36216_ (eq? 'eqv? _$e36210_)))
                                 (if _$e36216_
                                     _$e36216_
                                     (let ((_$e36219_ (eq? 'equal? _$e36210_)))
                                       (if _$e36219_
                                           _$e36219_
                                           (let ((_$e36222_
                                                  (eq? 'free-identifier=?
                                                       _$e36210_)))
                                             (if _$e36222_
                                                 _$e36222_
                                                 (eq? 'stx-eq?
                                                      _$e36210_)))))))))
                         '#t
                         '#f))))
                (_do-assert!32302_
                 (lambda (_assert36199_ _type36200_ _K36201_)
                   (let ((_unwind-assert36203_ _env-assert32292_)
                         (_unwind-type36204_ _env-type32293_))
                     (begin
                       (set! _env-assert32292_ _assert36199_)
                       (set! _env-type32293_ _type36200_)
                       (let ((_val36206_ (_K36201_)))
                         (begin
                           (set! _env-assert32292_ _unwind-assert36203_)
                           (set! _env-type32293_ _unwind-type36204_)
                           _val36206_))))))
                (_do-bind32303_
                 (lambda (_bind36196_ _K36197_)
                   (if (pair? _bind36196_)
                       (_do-bind!32305_
                        (_fold-bind-env32304_ _bind36196_ _env-bind32294_)
                        _K36197_)
                       (_K36197_))))
                (_fold-bind-env32304_
                 (lambda (_bind36125_ _env36126_)
                   (let _lp36128_ ((_rest36130_ _bind36125_)
                                   (_env36131_ _env36126_))
                     (let* ((_rest3613236140_ _rest36130_)
                            (_else3613436148_ (lambda () _env36131_))
                            (_K3613636184_
                             (lambda (_rest36151_ _bind36152_)
                               (let* ((_bind3615336160_ _bind36152_)
                                      (_E3615536164_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3615336160_)))
                                      (_K3615636172_
                                       (lambda (_expr36167_ _id36168_)
                                         (let ((_sexpr36170_
                                                (gxc#apply-generate-runtime-repr
                                                 _expr36167_)))
                                           (_lp36128_
                                            _rest36151_
                                            (cons (cons _sexpr36170_ _id36168_)
                                                  _env36131_))))))
                                 (if (##pair? _bind3615336160_)
                                     (let ((_hd3615736175_
                                            (##car _bind3615336160_))
                                           (_tl3615836177_
                                            (##cdr _bind3615336160_)))
                                       (let* ((_id36180_ _hd3615736175_)
                                              (_expr36182_ _tl3615836177_))
                                         (_K3615636172_
                                          _expr36182_
                                          _id36180_)))
                                     (_E3615536164_))))))
                       (if (##pair? _rest3613236140_)
                           (let ((_hd3613736187_ (##car _rest3613236140_))
                                 (_tl3613836189_ (##cdr _rest3613236140_)))
                             (let* ((_bind36192_ _hd3613736187_)
                                    (_rest36194_ _tl3613836189_))
                               (_K3613636184_ _rest36194_ _bind36192_)))
                           (_else3613436148_))))))
                (_do-bind!32305_
                 (lambda (_env36118_ _K36119_)
                   (let ((_unwind36121_ _env-bind32294_))
                     (begin
                       (set! _env-bind32294_ _env36118_)
                       (let ((_val36123_ (_K36119_)))
                         (begin
                           (set! _env-bind32294_ _unwind36121_)
                           _val36123_))))))
                (_do-splice!32306_
                 (lambda (_K36112_)
                   (let ((_unwind36114_ _in-splice?32295_))
                     (begin
                       (set! _in-splice?32295_ '#t)
                       (let ((_val36116_ (_K36112_)))
                         (begin
                           (set! _in-splice?32295_ _unwind36114_)
                           _val36116_))))))
                (_optimize-e32307_
                 (lambda (_expr35309_)
                   (let* ((___stx4066740668_ _expr35309_)
                          (_g3531635489_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4066740668_))))
                     (let ((___kont4066940670_
                            (lambda (_L36084_ _L36085_ _L36086_)
                              (let ((_$e36103_ (_assert-e32310_ _L36086_)))
                                (if (eq? '#t _$e36103_)
                                    (_optimize-e32307_ _L36085_)
                                    (if (eq? '#f _$e36103_)
                                        (_optimize-e32307_ _L36084_)
                                        (let ((_K36106_
                                               (_optimize-t__0__3963039631_
                                                _L36085_
                                                _L36086_))
                                              (_E36107_
                                               (_optimize-f__3963239633_
                                                _L36084_
                                                _L36086_)))
                                          (if (equal? (gxc#apply-generate-runtime-repr
                                                       _K36106_)
                                                      (gxc#apply-generate-runtime-repr
                                                       _E36107_))
                                              _K36106_
                                              (cons '%#if
                                                    (cons _L36086_
                                                          (cons _K36106_
                                                                (cons _E36107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (___kont4067140672_
                            (lambda (_L36014_ _L36015_)
                              (let ((_$e36035_ (_lookup-block32315_ _L36015_)))
                                (if _$e36035_
                                    ((lambda (_block36038_)
                                       (if (_nonlinear-block?32317_
                                            _block36038_)
                                           _expr35309_
                                           (_optimize-e32307_
                                            (_inline-block32316_
                                             _block36038_
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g3603936042_
                                                                _g3604036044_)
                                                         (cons _g3603936042_
                                                               _g3604036044_))
                                                       '()
                                                       _L36014_))))))
                                     _$e36035_)
                                    _expr35309_))))
                           (___kont4067540676_
                            (lambda (_L35904_ _L35905_ _L35906_)
                              (let ((_body35925_ (_optimize-e32307_ _L35904_)))
                                (cons '%#let-values
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _L35905_
                                               _L35906_)
                                              (foldr2 (lambda (_g3592635930_
                                                               _g3592735932_
                                                               _g3592835934_)
                                                        (cons (cons (cons _g3592735932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                        (cons _g3592635930_ '()))
                                  '()))
                      _g3592835934_))
              '()
              _L35905_
              _L35906_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _body35925_ '()))))))
                           (___kont4067940680_
                            (lambda (_L35772_ _L35773_ _L35774_)
                              (_bind-e__0__3963839639_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3579235795_
                                                       _g3579335797_)
                                                (cons _g3579235795_
                                                      _g3579335797_))
                                              '()
                                              _L35774_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3579935802_
                                                       _g3580035804_)
                                                (cons _g3579935802_
                                                      _g3580035804_))
                                              '()
                                              _L35773_)))
                               _L35772_)))
                           (___kont4068340684_
                            (lambda (_L35629_
                                     _L35630_
                                     _L35631_
                                     _L35632_
                                     _L35633_)
                              (_do-splice!32306_
                               (lambda ()
                                 (let ((_expr35675_
                                        (_optimize-e32307_ _L35631_)))
                                   (cons '%#letrec-values
                                         (cons (cons (cons (cons _L35633_ '())
                                                           (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3567635679_
                                                        _g3567735681_)
                                                 (cons _g3567635679_
                                                       _g3567735681_))
                                               '()
                                               _L35632_))
                                     (cons _expr35675_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g3568335686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3568435688_)
                         (cons _g3568335686_ _g3568435688_))
                       '()
                       _L35630_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L35629_ '()))))))))
                           (___kont4068940690_ (lambda () _expr35309_)))
                       (let* ((___match4087640877_
                               (lambda (_e3543735501_
                                        _hd3543835504_
                                        _tl3543935506_
                                        _e3544035509_
                                        _hd3544135512_
                                        _tl3544235514_
                                        _e3544335517_
                                        _hd3544435520_
                                        _tl3544535522_
                                        _e3544635525_
                                        _hd3544735528_
                                        _tl3544835530_
                                        _e3544935533_
                                        _hd3545035536_
                                        _tl3545135538_
                                        _e3545235541_
                                        _hd3545335544_
                                        _tl3545435546_
                                        _e3545535549_
                                        _hd3545635552_
                                        _tl3545735554_
                                        _e3545835557_
                                        _hd3545935560_
                                        _tl3546035562_
                                        ___splice4068540686_
                                        _target3546135565_
                                        _tl3546335567_)
                                 (letrec ((_loop3546435570_
                                           (lambda (_hd3546235573_
                                                    _id3546835575_)
                                             (if (gx#stx-pair? _hd3546235573_)
                                                 (let ((_e3546535578_
                                                        (gx#stx-e
                                                         _hd3546235573_)))
                                                   (let ((_lp-tl3546735583_
                                                          (##cdr _e3546535578_))
                                                         (_lp-hd3546635581_
                                                          (##car _e3546535578_)))
                                                     (_loop3546435570_
                                                      _lp-tl3546735583_
                                                      (cons _lp-hd3546635581_
                                                            _id3546835575_))))
                                                 (let ((_id3546935586_
                                                        (reverse _id3546835575_)))
                                                   (if (gx#stx-pair?
                                                        _tl3546035562_)
                                                       (let ((_e3547035589_
                                                              (gx#stx-e
                                                               _tl3546035562_)))
                                                         (let ((_tl3547235594_
                                                                (##cdr _e3547035589_))
                                                               (_hd3547135592_
                                                                (##car _e3547035589_)))
                                                           (if (gx#stx-null?
                                                                _tl3547235594_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3545435546_)
                           (if (gx#stx-pair/null? _tl3544535522_)
                               (let ((___splice4068740688_
                                      (gx#syntax-split-splice
                                       _tl3544535522_
                                       '0)))
                                 (let ((_tl3547535599_
                                        (##vector-ref ___splice4068740688_ '1))
                                       (_target3547335597_
                                        (##vector-ref
                                         ___splice4068740688_
                                         '0)))
                                   (if (gx#stx-null? _tl3547535599_)
                                       (letrec ((_loop3547635602_
                                                 (lambda (_hd3547435605_
                                                          _bind3548035607_)
                                                   (if (gx#stx-pair?
                                                        _hd3547435605_)
                                                       (let ((_e3547735610_
                                                              (gx#stx-e
                                                               _hd3547435605_)))
                                                         (let ((_lp-tl3547935615_
                                                                (##cdr _e3547735610_))
                                                               (_lp-hd3547835613_
                                                                (##car _e3547735610_)))
                                                           (_loop3547635602_
                                                            _lp-tl3547935615_
                                                            (cons _lp-hd3547835613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind3548035607_))))
               (let ((_bind3548135618_ (reverse _bind3548035607_)))
                 (if (gx#stx-pair? _tl3544235514_)
                     (let ((_e3548235621_ (gx#stx-e _tl3544235514_)))
                       (let ((_tl3548435626_ (##cdr _e3548235621_))
                             (_hd3548335624_ (##car _e3548235621_)))
                         (if (gx#stx-null? _tl3548435626_)
                             (___kont4068340684_
                              _hd3548335624_
                              _bind3548135618_
                              _hd3547135592_
                              _id3546935586_
                              _hd3545035536_)
                             (___kont4068940690_))))
                     (___kont4068940690_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3547635602_
                                          _target3547335597_
                                          '()))
                                       (___kont4068940690_))))
                               (___kont4068940690_))
                           (___kont4068940690_))
                       (___kont4068940690_))))
               (___kont4068940690_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop3546435570_ _target3546135565_ '()))))
                              (___match4081040811_
                               (lambda (_e3540335696_
                                        _hd3540435699_
                                        _tl3540535701_
                                        _e3540635704_
                                        _hd3540735707_
                                        _tl3540835709_
                                        ___splice4068140682_
                                        _target3540935712_
                                        _tl3541135714_)
                                 (letrec ((_loop3541235717_
                                           (lambda (_hd3541035720_
                                                    _expr3541635722_
                                                    _id3541735724_)
                                             (if (gx#stx-pair? _hd3541035720_)
                                                 (let ((_e3541335727_
                                                        (gx#stx-e
                                                         _hd3541035720_)))
                                                   (let ((_lp-tl3541535732_
                                                          (##cdr _e3541335727_))
                                                         (_lp-hd3541435730_
                                                          (##car _e3541335727_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3541435730_)
                                                         (let ((_e3542035735_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3541435730_)))
                   (let ((_tl3542235740_ (##cdr _e3542035735_))
                         (_hd3542135738_ (##car _e3542035735_)))
                     (if (gx#stx-pair? _hd3542135738_)
                         (let ((_e3542335743_ (gx#stx-e _hd3542135738_)))
                           (let ((_tl3542535748_ (##cdr _e3542335743_))
                                 (_hd3542435746_ (##car _e3542335743_)))
                             (if (gx#stx-null? _tl3542535748_)
                                 (if (gx#stx-pair? _tl3542235740_)
                                     (let ((_e3542635751_
                                            (gx#stx-e _tl3542235740_)))
                                       (let ((_tl3542835756_
                                              (##cdr _e3542635751_))
                                             (_hd3542735754_
                                              (##car _e3542635751_)))
                                         (if (gx#stx-null? _tl3542835756_)
                                             (_loop3541235717_
                                              _lp-tl3541535732_
                                              (cons _hd3542735754_
                                                    _expr3541635722_)
                                              (cons _hd3542435746_
                                                    _id3541735724_))
                                             (___kont4068940690_))))
                                     (___kont4068940690_))
                                 (___kont4068940690_))))
                         (___kont4068940690_))))
                 (___kont4068940690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3541935761_
                                                        (reverse _id3541735724_))
                                                       (_expr3541835759_
                                                        (reverse _expr3541635722_)))
                                                   (if (gx#stx-pair?
                                                        _tl3540835709_)
                                                       (let ((_e3542935764_
                                                              (gx#stx-e
                                                               _tl3540835709_)))
                                                         (let ((_tl3543135769_
                                                                (##cdr _e3542935764_))
                                                               (_hd3543035767_
                                                                (##car _e3542935764_)))
                                                           (if (gx#stx-null?
                                                                _tl3543135769_)
                                                               (___kont4067940680_
                                                                _hd3543035767_
                                                                _expr3541835759_
                                                                _id3541935761_)
                                                               (___kont4068940690_))))
                                                       (___kont4068940690_)))))))
                                   (_loop3541235717_
                                    _target3540935712_
                                    '()
                                    '()))))
                              (___match4078640787_
                               (lambda (_e3536535812_
                                        _hd3536635815_
                                        _tl3536735817_
                                        _e3536835820_
                                        _hd3536935823_
                                        _tl3537035825_
                                        ___splice4067740678_
                                        _target3537135828_
                                        _tl3537335830_)
                                 (letrec ((_loop3537435833_
                                           (lambda (_hd3537235836_
                                                    _xid3537835838_
                                                    _id3537935840_)
                                             (if (gx#stx-pair? _hd3537235836_)
                                                 (let ((_e3537535843_
                                                        (gx#stx-e
                                                         _hd3537235836_)))
                                                   (let ((_lp-tl3537735848_
                                                          (##cdr _e3537535843_))
                                                         (_lp-hd3537635846_
                                                          (##car _e3537535843_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3537635846_)
                                                         (let ((_e3538235851_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3537635846_)))
                   (let ((_tl3538435856_ (##cdr _e3538235851_))
                         (_hd3538335854_ (##car _e3538235851_)))
                     (if (gx#stx-pair? _hd3538335854_)
                         (let ((_e3538535859_ (gx#stx-e _hd3538335854_)))
                           (let ((_tl3538735864_ (##cdr _e3538535859_))
                                 (_hd3538635862_ (##car _e3538535859_)))
                             (if (gx#stx-null? _tl3538735864_)
                                 (if (gx#stx-pair? _tl3538435856_)
                                     (let ((_e3538835867_
                                            (gx#stx-e _tl3538435856_)))
                                       (let ((_tl3539035872_
                                              (##cdr _e3538835867_))
                                             (_hd3538935870_
                                              (##car _e3538835867_)))
                                         (if (gx#stx-pair? _hd3538935870_)
                                             (let ((_e3539135875_
                                                    (gx#stx-e _hd3538935870_)))
                                               (let ((_tl3539335880_
                                                      (##cdr _e3539135875_))
                                                     (_hd3539235878_
                                                      (##car _e3539135875_)))
                                                 (if (gx#identifier?
                                                      _hd3539235878_)
                                                     (if (gx#stx-eq?
                                                          '%#ref
                                                          _hd3539235878_)
                                                         (if (gx#stx-pair?
                                                              _tl3539335880_)
                                                             (let ((_e3539435883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3539335880_)))
                       (let ((_tl3539635888_ (##cdr _e3539435883_))
                             (_hd3539535886_ (##car _e3539435883_)))
                         (if (gx#stx-null? _tl3539635888_)
                             (if (gx#stx-null? _tl3539035872_)
                                 (_loop3537435833_
                                  _lp-tl3537735848_
                                  (cons _hd3539535886_ _xid3537835838_)
                                  (cons _hd3538635862_ _id3537935840_))
                                 (___match4081040811_
                                  _e3536535812_
                                  _hd3536635815_
                                  _tl3536735817_
                                  _e3536835820_
                                  _hd3536935823_
                                  _tl3537035825_
                                  ___splice4067740678_
                                  _target3537135828_
                                  _tl3537335830_))
                             (___match4081040811_
                              _e3536535812_
                              _hd3536635815_
                              _tl3536735817_
                              _e3536835820_
                              _hd3536935823_
                              _tl3537035825_
                              ___splice4067740678_
                              _target3537135828_
                              _tl3537335830_))))
                     (___match4081040811_
                      _e3536535812_
                      _hd3536635815_
                      _tl3536735817_
                      _e3536835820_
                      _hd3536935823_
                      _tl3537035825_
                      ___splice4067740678_
                      _target3537135828_
                      _tl3537335830_))
                 (___match4081040811_
                  _e3536535812_
                  _hd3536635815_
                  _tl3536735817_
                  _e3536835820_
                  _hd3536935823_
                  _tl3537035825_
                  ___splice4067740678_
                  _target3537135828_
                  _tl3537335830_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___match4081040811_
                                                      _e3536535812_
                                                      _hd3536635815_
                                                      _tl3536735817_
                                                      _e3536835820_
                                                      _hd3536935823_
                                                      _tl3537035825_
                                                      ___splice4067740678_
                                                      _target3537135828_
                                                      _tl3537335830_))))
                                             (___match4081040811_
                                              _e3536535812_
                                              _hd3536635815_
                                              _tl3536735817_
                                              _e3536835820_
                                              _hd3536935823_
                                              _tl3537035825_
                                              ___splice4067740678_
                                              _target3537135828_
                                              _tl3537335830_))))
                                     (___match4081040811_
                                      _e3536535812_
                                      _hd3536635815_
                                      _tl3536735817_
                                      _e3536835820_
                                      _hd3536935823_
                                      _tl3537035825_
                                      ___splice4067740678_
                                      _target3537135828_
                                      _tl3537335830_))
                                 (___match4081040811_
                                  _e3536535812_
                                  _hd3536635815_
                                  _tl3536735817_
                                  _e3536835820_
                                  _hd3536935823_
                                  _tl3537035825_
                                  ___splice4067740678_
                                  _target3537135828_
                                  _tl3537335830_))))
                         (___match4081040811_
                          _e3536535812_
                          _hd3536635815_
                          _tl3536735817_
                          _e3536835820_
                          _hd3536935823_
                          _tl3537035825_
                          ___splice4067740678_
                          _target3537135828_
                          _tl3537335830_))))
                 (___match4081040811_
                  _e3536535812_
                  _hd3536635815_
                  _tl3536735817_
                  _e3536835820_
                  _hd3536935823_
                  _tl3537035825_
                  ___splice4067740678_
                  _target3537135828_
                  _tl3537335830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3538135893_
                                                        (reverse _id3537935840_))
                                                       (_xid3538035891_
                                                        (reverse _xid3537835838_)))
                                                   (if (gx#stx-pair?
                                                        _tl3537035825_)
                                                       (let ((_e3539735896_
                                                              (gx#stx-e
                                                               _tl3537035825_)))
                                                         (let ((_tl3539935901_
                                                                (##cdr _e3539735896_))
                                                               (_hd3539835899_
                                                                (##car _e3539735896_)))
                                                           (if (gx#stx-null?
                                                                _tl3539935901_)
                                                               (___kont4067540676_
                                                                _hd3539835899_
                                                                _xid3538035891_
                                                                _id3538135893_)
                                                               (___match4081040811_
                                                                _e3536535812_
                                                                _hd3536635815_
                                                                _tl3536735817_
                                                                _e3536835820_
                                                                _hd3536935823_
                                                                _tl3537035825_
                                                                ___splice4067740678_
                                                                _target3537135828_
                                                                _tl3537335830_))))
                                                       (___match4081040811_
                                                        _e3536535812_
                                                        _hd3536635815_
                                                        _tl3536735817_
                                                        _e3536835820_
                                                        _hd3536935823_
                                                        _tl3537035825_
                                                        ___splice4067740678_
                                                        _target3537135828_
                                                        _tl3537335830_)))))))
                                   (_loop3537435833_
                                    _target3537135828_
                                    '()
                                    '()))))
                              (___match4076240763_
                               (lambda (_e3533535942_
                                        _hd3533635945_
                                        _tl3533735947_
                                        _e3533835950_
                                        _hd3533935953_
                                        _tl3534035955_
                                        _e3534135958_
                                        _hd3534235961_
                                        _tl3534335963_
                                        _e3534435966_
                                        _hd3534535969_
                                        _tl3534635971_
                                        ___splice4067340674_
                                        _target3534735974_
                                        _tl3534935976_)
                                 (letrec ((_loop3535035979_
                                           (lambda (_hd3534835982_
                                                    _id3535435984_)
                                             (if (gx#stx-pair? _hd3534835982_)
                                                 (let ((_e3535135987_
                                                        (gx#stx-e
                                                         _hd3534835982_)))
                                                   (let ((_lp-tl3535335992_
                                                          (##cdr _e3535135987_))
                                                         (_lp-hd3535235990_
                                                          (##car _e3535135987_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3535235990_)
                                                         (let ((_e3535635995_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3535235990_)))
                   (let ((_tl3535836000_ (##cdr _e3535635995_))
                         (_hd3535735998_ (##car _e3535635995_)))
                     (if (gx#identifier? _hd3535735998_)
                         (if (gx#stx-eq? '%#ref _hd3535735998_)
                             (if (gx#stx-pair? _tl3535836000_)
                                 (let ((_e3535936003_
                                        (gx#stx-e _tl3535836000_)))
                                   (let ((_tl3536136008_ (##cdr _e3535936003_))
                                         (_hd3536036006_
                                          (##car _e3535936003_)))
                                     (if (gx#stx-null? _tl3536136008_)
                                         (_loop3535035979_
                                          _lp-tl3535335992_
                                          (cons _hd3536036006_ _id3535435984_))
                                         (___kont4068940690_))))
                                 (___kont4068940690_))
                             (___kont4068940690_))
                         (___kont4068940690_))))
                 (___kont4068940690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3535536011_
                                                        (reverse _id3535435984_)))
                                                   (___kont4067140672_
                                                    _id3535536011_
                                                    _hd3534535969_))))))
                                   (_loop3535035979_
                                    _target3534735974_
                                    '())))))
                         (if (gx#stx-pair? ___stx4066740668_)
                             (let ((_e3532136052_
                                    (gx#stx-e ___stx4066740668_)))
                               (let ((_tl3532336057_ (##cdr _e3532136052_))
                                     (_hd3532236055_ (##car _e3532136052_)))
                                 (if (gx#identifier? _hd3532236055_)
                                     (if (gx#stx-eq? '%#if _hd3532236055_)
                                         (if (gx#stx-pair? _tl3532336057_)
                                             (let ((_e3532436060_
                                                    (gx#stx-e _tl3532336057_)))
                                               (let ((_tl3532636065_
                                                      (##cdr _e3532436060_))
                                                     (_hd3532536063_
                                                      (##car _e3532436060_)))
                                                 (if (gx#stx-pair?
                                                      _tl3532636065_)
                                                     (let ((_e3532736068_
                                                            (gx#stx-e
                                                             _tl3532636065_)))
                                                       (let ((_tl3532936073_
                                                              (##cdr _e3532736068_))
                                                             (_hd3532836071_
                                                              (##car _e3532736068_)))
                                                         (if (gx#stx-pair?
                                                              _tl3532936073_)
                                                             (let ((_e3533036076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3532936073_)))
                       (let ((_tl3533236081_ (##cdr _e3533036076_))
                             (_hd3533136079_ (##car _e3533036076_)))
                         (if (gx#stx-null? _tl3533236081_)
                             (___kont4066940670_
                              _hd3533136079_
                              _hd3532836071_
                              _hd3532536063_)
                             (___kont4068940690_))))
                     (___kont4068940690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4068940690_))))
                                             (___kont4068940690_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3532236055_)
                                             (if (gx#stx-pair? _tl3532336057_)
                                                 (let ((_e3533835950_
                                                        (gx#stx-e
                                                         _tl3532336057_)))
                                                   (let ((_tl3534035955_
                                                          (##cdr _e3533835950_))
                                                         (_hd3533935953_
                                                          (##car _e3533835950_)))
                                                     (if (gx#stx-pair?
                                                          _hd3533935953_)
                                                         (let ((_e3534135958_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3533935953_)))
                   (let ((_tl3534335963_ (##cdr _e3534135958_))
                         (_hd3534235961_ (##car _e3534135958_)))
                     (if (gx#identifier? _hd3534235961_)
                         (if (gx#stx-eq? '%#ref _hd3534235961_)
                             (if (gx#stx-pair? _tl3534335963_)
                                 (let ((_e3534435966_
                                        (gx#stx-e _tl3534335963_)))
                                   (let ((_tl3534635971_ (##cdr _e3534435966_))
                                         (_hd3534535969_
                                          (##car _e3534435966_)))
                                     (if (gx#stx-null? _tl3534635971_)
                                         (if (gx#stx-pair/null? _tl3534035955_)
                                             (let ((___splice4067340674_
                                                    (gx#syntax-split-splice
                                                     _tl3534035955_
                                                     '0)))
                                               (let ((_tl3534935976_
                                                      (##vector-ref
                                                       ___splice4067340674_
                                                       '1))
                                                     (_target3534735974_
                                                      (##vector-ref
                                                       ___splice4067340674_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3534935976_)
                                                     (___match4076240763_
                                                      _e3532136052_
                                                      _hd3532236055_
                                                      _tl3532336057_
                                                      _e3533835950_
                                                      _hd3533935953_
                                                      _tl3534035955_
                                                      _e3534135958_
                                                      _hd3534235961_
                                                      _tl3534335963_
                                                      _e3534435966_
                                                      _hd3534535969_
                                                      _tl3534635971_
                                                      ___splice4067340674_
                                                      _target3534735974_
                                                      _tl3534935976_)
                                                     (___kont4068940690_))))
                                             (___kont4068940690_))
                                         (___kont4068940690_))))
                                 (___kont4068940690_))
                             (___kont4068940690_))
                         (___kont4068940690_))))
                 (___kont4068940690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4068940690_))
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _hd3532236055_)
                                                 (if (gx#stx-pair?
                                                      _tl3532336057_)
                                                     (let ((_e3536835820_
                                                            (gx#stx-e
                                                             _tl3532336057_)))
                                                       (let ((_tl3537035825_
                                                              (##cdr _e3536835820_))
                                                             (_hd3536935823_
                                                              (##car _e3536835820_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd3536935823_)
                                                             (let ((___splice4067740678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd3536935823_ '0)))
                       (let ((_tl3537335830_
                              (##vector-ref ___splice4067740678_ '1))
                             (_target3537135828_
                              (##vector-ref ___splice4067740678_ '0)))
                         (if (gx#stx-null? _tl3537335830_)
                             (___match4078640787_
                              _e3532136052_
                              _hd3532236055_
                              _tl3532336057_
                              _e3536835820_
                              _hd3536935823_
                              _tl3537035825_
                              ___splice4067740678_
                              _target3537135828_
                              _tl3537335830_)
                             (___kont4068940690_))))
                     (___kont4068940690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4068940690_))
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3532236055_)
                                                     (if (gx#stx-pair?
                                                          _tl3532336057_)
                                                         (let ((_e3544035509_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3532336057_)))
                   (let ((_tl3544235514_ (##cdr _e3544035509_))
                         (_hd3544135512_ (##car _e3544035509_)))
                     (if (gx#stx-pair? _hd3544135512_)
                         (let ((_e3544335517_ (gx#stx-e _hd3544135512_)))
                           (let ((_tl3544535522_ (##cdr _e3544335517_))
                                 (_hd3544435520_ (##car _e3544335517_)))
                             (if (gx#stx-pair? _hd3544435520_)
                                 (let ((_e3544635525_
                                        (gx#stx-e _hd3544435520_)))
                                   (let ((_tl3544835530_ (##cdr _e3544635525_))
                                         (_hd3544735528_
                                          (##car _e3544635525_)))
                                     (if (gx#stx-pair? _hd3544735528_)
                                         (let ((_e3544935533_
                                                (gx#stx-e _hd3544735528_)))
                                           (let ((_tl3545135538_
                                                  (##cdr _e3544935533_))
                                                 (_hd3545035536_
                                                  (##car _e3544935533_)))
                                             (if (gx#stx-null? _tl3545135538_)
                                                 (if (gx#stx-pair?
                                                      _tl3544835530_)
                                                     (let ((_e3545235541_
                                                            (gx#stx-e
                                                             _tl3544835530_)))
                                                       (let ((_tl3545435546_
                                                              (##cdr _e3545235541_))
                                                             (_hd3545335544_
                                                              (##car _e3545235541_)))
                                                         (if (gx#stx-pair?
                                                              _hd3545335544_)
                                                             (let ((_e3545535549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3545335544_)))
                       (let ((_tl3545735554_ (##cdr _e3545535549_))
                             (_hd3545635552_ (##car _e3545535549_)))
                         (if (gx#identifier? _hd3545635552_)
                             (if (gx#stx-eq? '%#lambda _hd3545635552_)
                                 (if (gx#stx-pair? _tl3545735554_)
                                     (let ((_e3545835557_
                                            (gx#stx-e _tl3545735554_)))
                                       (let ((_tl3546035562_
                                              (##cdr _e3545835557_))
                                             (_hd3545935560_
                                              (##car _e3545835557_)))
                                         (if (gx#stx-pair/null? _hd3545935560_)
                                             (let ((___splice4068540686_
                                                    (gx#syntax-split-splice
                                                     _hd3545935560_
                                                     '0)))
                                               (let ((_tl3546335567_
                                                      (##vector-ref
                                                       ___splice4068540686_
                                                       '1))
                                                     (_target3546135565_
                                                      (##vector-ref
                                                       ___splice4068540686_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3546335567_)
                                                     (___match4087640877_
                                                      _e3532136052_
                                                      _hd3532236055_
                                                      _tl3532336057_
                                                      _e3544035509_
                                                      _hd3544135512_
                                                      _tl3544235514_
                                                      _e3544335517_
                                                      _hd3544435520_
                                                      _tl3544535522_
                                                      _e3544635525_
                                                      _hd3544735528_
                                                      _tl3544835530_
                                                      _e3544935533_
                                                      _hd3545035536_
                                                      _tl3545135538_
                                                      _e3545235541_
                                                      _hd3545335544_
                                                      _tl3545435546_
                                                      _e3545535549_
                                                      _hd3545635552_
                                                      _tl3545735554_
                                                      _e3545835557_
                                                      _hd3545935560_
                                                      _tl3546035562_
                                                      ___splice4068540686_
                                                      _target3546135565_
                                                      _tl3546335567_)
                                                     (___kont4068940690_))))
                                             (___kont4068940690_))))
                                     (___kont4068940690_))
                                 (___kont4068940690_))
                             (___kont4068940690_))))
                     (___kont4068940690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4068940690_))
                                                 (___kont4068940690_))))
                                         (___kont4068940690_))))
                                 (___kont4068940690_))))
                         (___kont4068940690_))))
                 (___kont4068940690_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4068940690_)))))
                                     (___kont4068940690_))))
                             (___kont4068940690_)))))))
                (_optimize-t__3962839629_
                 (lambda (_expr35292_ _test35293_ _continue35294_)
                   (_do-assert32296_
                    (cons (cons _test35293_ '#t) '())
                    (lambda () (_continue35294_ _expr35292_)))))
                (_optimize-t__0__3963039631_
                 (lambda (_expr35300_ _test35301_)
                   (let ((_continue35303_ _optimize-e32307_))
                     (_optimize-t__3962839629_
                      _expr35300_
                      _test35301_
                      _continue35303_))))
                (_optimize-t32308_
                 (lambda _g42730_
                   (let ((_g42729_ (length _g42730_)))
                     (cond ((##fx= _g42729_ 2)
                            (apply _optimize-t__0__3963039631_ _g42730_))
                           ((##fx= _g42729_ 3)
                            (apply _optimize-t__3962839629_ _g42730_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42730_))))))
                (_optimize-f__3963239633_
                 (lambda (_expr34377_ _test34378_)
                   (_do-assert32296_
                    (if _test34378_ (cons (cons _test34378_ '#f) '()) '())
                    (lambda ()
                      (let* ((___stx4091740918_ _expr34377_)
                             (_g3438634559_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4091740918_))))
                        (let ((___kont4091940920_
                               (lambda (_L35147_ _L35148_)
                                 (let ((_$e35168_
                                        (_lookup-block32315_ _L35148_)))
                                   (if _$e35168_
                                       ((lambda (_block35171_)
                                          (if (_nonlinear-block?32317_
                                               _block35171_)
                                              _expr34377_
                                              (let* ((_inline35180_
                                                      (_inline-block32316_
                                                       _block35171_
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g3517235175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3517335177_)
                           (cons _g3517235175_ _g3517335177_))
                         '()
                         _L35147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___stx4087940880_
                                                      _inline35180_)
                                                     (_g3518335204_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4087940880_))))
                                                (let ((___kont4088140882_
                                                       (lambda (_L35248_
                                                                _L35249_
                                                                _L35250_)
                                                         (let ((_$e35272_
                                                                (_assert-e32310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L35250_)))
                   (if (eq? '#t _$e35272_)
                       (if _in-splice?32295_
                           (_optimize-f__0__3963439635_ _L35249_)
                           (_optimize-e32307_ _L35249_))
                       (if (eq? '#f _$e35272_)
                           (_optimize-f__0__3963439635_ _L35248_)
                           _expr34377_)))))
              (___kont4088340884_
               (lambda () (_optimize-f__0__3963439635_ _inline35180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4087940880_)
                                                      (let ((_e3518835216_
                                                             (gx#stx-e
                                                              ___stx4087940880_)))
                                                        (let ((_tl3519035221_
                                                               (##cdr _e3518835216_))
                                                              (_hd3518935219_
                                                               (##car _e3518835216_)))
                                                          (if (gx#identifier?
                                                               _hd3518935219_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#if
                           _hd3518935219_)
                          (if (gx#stx-pair? _tl3519035221_)
                              (let ((_e3519135224_ (gx#stx-e _tl3519035221_)))
                                (let ((_tl3519335229_ (##cdr _e3519135224_))
                                      (_hd3519235227_ (##car _e3519135224_)))
                                  (if (gx#stx-pair? _tl3519335229_)
                                      (let ((_e3519435232_
                                             (gx#stx-e _tl3519335229_)))
                                        (let ((_tl3519635237_
                                               (##cdr _e3519435232_))
                                              (_hd3519535235_
                                               (##car _e3519435232_)))
                                          (if (gx#stx-pair? _tl3519635237_)
                                              (let ((_e3519735240_
                                                     (gx#stx-e
                                                      _tl3519635237_)))
                                                (let ((_tl3519935245_
                                                       (##cdr _e3519735240_))
                                                      (_hd3519835243_
                                                       (##car _e3519735240_)))
                                                  (if (gx#stx-null?
                                                       _tl3519935245_)
                                                      (___kont4088140882_
                                                       _hd3519835243_
                                                       _hd3519535235_
                                                       _hd3519235227_)
                                                      (___kont4088340884_))))
                                              (___kont4088340884_))))
                                      (___kont4088340884_))))
                              (___kont4088340884_))
                          (___kont4088340884_))
                      (___kont4088340884_))))
              (___kont4088340884_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e35168_)
                                       _expr34377_))))
                              (___kont4092340924_
                               (lambda (_L35045_ _L35046_ _L35047_)
                                 (let ((_$e35064_ (_assert-e32310_ _L35047_)))
                                   (if (eq? '#t _$e35064_)
                                       (if _in-splice?32295_
                                           (_optimize-f__0__3963439635_
                                            _L35046_)
                                           (_optimize-e32307_ _L35046_))
                                       (if (eq? '#f _$e35064_)
                                           (_optimize-f__0__3963439635_
                                            _L35045_)
                                           (let ((_K35067_
                                                  (_optimize-t__3962839629_
                                                   _L35046_
                                                   _L35047_
                                                   _optimize-f32309_))
                                                 (_E35068_
                                                  (_optimize-f__3963239633_
                                                   _L35045_
                                                   _L35047_)))
                                             (if (equal? (gxc#apply-generate-runtime-repr
                                                          _K35067_)
                                                         (gxc#apply-generate-runtime-repr
                                                          _E35068_))
                                                 _K35067_
                                                 (cons '%#if
                                                       (cons _L35047_
                                                             (cons _K35067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _E35068_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (___kont4092540926_
                               (lambda (_L34975_ _L34976_ _L34977_)
                                 (let ((_body34996_
                                        (_optimize-f__0__3963439635_
                                         _L34975_)))
                                   (cons '%#let-values
                                         (cons (begin
                                                 (gx#syntax-check-splice-targets
                                                  _L34976_
                                                  _L34977_)
                                                 (foldr2 (lambda (_g3499735001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3499835003_
                          _g3499935005_)
                   (cons (cons (cons _g3499835003_ '())
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g3499735001_ '()))
                                     '()))
                         _g3499935005_))
                 '()
                 _L34976_
                 _L34977_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _body34996_ '()))))))
                              (___kont4092940930_
                               (lambda (_L34843_ _L34844_ _L34845_)
                                 (_bind-e__3963639637_
                                  (map cons
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3486334866_
                                                          _g3486434868_)
                                                   (cons _g3486334866_
                                                         _g3486434868_))
                                                 '()
                                                 _L34845_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3487034873_
                                                          _g3487134875_)
                                                   (cons _g3487034873_
                                                         _g3487134875_))
                                                 '()
                                                 _L34844_)))
                                  _L34843_
                                  _optimize-f32309_)))
                              (___kont4093340934_
                               (lambda (_L34699_
                                        _L34700_
                                        _L34701_
                                        _L34702_
                                        _L34703_)
                                 (_do-splice!32306_
                                  (lambda ()
                                    (let ((_expr34746_
                                           (_optimize-f__0__3963439635_
                                            _L34701_)))
                                      (cons '%#letrec-values
                                            (cons (cons (cons (cons _L34703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#lambda
                                  (cons (begin
                                          '#!void
                                          (foldr1 (lambda (_g3474734750_
                                                           _g3474834752_)
                                                    (cons _g3474734750_
                                                          _g3474834752_))
                                                  '()
                                                  _L34702_))
                                        (cons _expr34746_ '())))
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3475434757_ _g3475534759_)
                            (cons _g3475434757_ _g3475534759_))
                          '()
                          _L34700_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L34699_ '()))))))))
                              (___kont4093940940_ (lambda () _expr34377_)))
                          (let* ((___match4112641127_
                                  (lambda (_e3450734571_
                                           _hd3450834574_
                                           _tl3450934576_
                                           _e3451034579_
                                           _hd3451134582_
                                           _tl3451234584_
                                           _e3451334587_
                                           _hd3451434590_
                                           _tl3451534592_
                                           _e3451634595_
                                           _hd3451734598_
                                           _tl3451834600_
                                           _e3451934603_
                                           _hd3452034606_
                                           _tl3452134608_
                                           _e3452234611_
                                           _hd3452334614_
                                           _tl3452434616_
                                           _e3452534619_
                                           _hd3452634622_
                                           _tl3452734624_
                                           _e3452834627_
                                           _hd3452934630_
                                           _tl3453034632_
                                           ___splice4093540936_
                                           _target3453134635_
                                           _tl3453334637_)
                                    (letrec ((_loop3453434640_
                                              (lambda (_hd3453234643_
                                                       _id3453834645_)
                                                (if (gx#stx-pair?
                                                     _hd3453234643_)
                                                    (let ((_e3453534648_
                                                           (gx#stx-e
                                                            _hd3453234643_)))
                                                      (let ((_lp-tl3453734653_
                                                             (##cdr _e3453534648_))
                                                            (_lp-hd3453634651_
                                                             (##car _e3453534648_)))
                                                        (_loop3453434640_
                                                         _lp-tl3453734653_
                                                         (cons _lp-hd3453634651_
                                                               _id3453834645_))))
                                                    (let ((_id3453934656_
                                                           (reverse _id3453834645_)))
                                                      (if (gx#stx-pair?
                                                           _tl3453034632_)
                                                          (let ((_e3454034659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3453034632_)))
                    (let ((_tl3454234664_ (##cdr _e3454034659_))
                          (_hd3454134662_ (##car _e3454034659_)))
                      (if (gx#stx-null? _tl3454234664_)
                          (if (gx#stx-null? _tl3452434616_)
                              (if (gx#stx-pair/null? _tl3451534592_)
                                  (let ((___splice4093740938_
                                         (gx#syntax-split-splice
                                          _tl3451534592_
                                          '0)))
                                    (let ((_tl3454534669_
                                           (##vector-ref
                                            ___splice4093740938_
                                            '1))
                                          (_target3454334667_
                                           (##vector-ref
                                            ___splice4093740938_
                                            '0)))
                                      (if (gx#stx-null? _tl3454534669_)
                                          (letrec ((_loop3454634672_
                                                    (lambda (_hd3454434675_
                                                             _bind3455034677_)
                                                      (if (gx#stx-pair?
                                                           _hd3454434675_)
                                                          (let ((_e3454734680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3454434675_)))
                    (let ((_lp-tl3454934685_ (##cdr _e3454734680_))
                          (_lp-hd3454834683_ (##car _e3454734680_)))
                      (_loop3454634672_
                       _lp-tl3454934685_
                       (cons _lp-hd3454834683_ _bind3455034677_))))
                  (let ((_bind3455134688_ (reverse _bind3455034677_)))
                    (if (gx#stx-pair? _tl3451234584_)
                        (let ((_e3455234691_ (gx#stx-e _tl3451234584_)))
                          (let ((_tl3455434696_ (##cdr _e3455234691_))
                                (_hd3455334694_ (##car _e3455234691_)))
                            (if (gx#stx-null? _tl3455434696_)
                                (___kont4093340934_
                                 _hd3455334694_
                                 _bind3455134688_
                                 _hd3454134662_
                                 _id3453934656_
                                 _hd3452034606_)
                                (___kont4093940940_))))
                        (___kont4093940940_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3454634672_
                                             _target3454334667_
                                             '()))
                                          (___kont4093940940_))))
                                  (___kont4093940940_))
                              (___kont4093940940_))
                          (___kont4093940940_))))
                  (___kont4093940940_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3453434640_
                                       _target3453134635_
                                       '()))))
                                 (___match4106041061_
                                  (lambda (_e3447334767_
                                           _hd3447434770_
                                           _tl3447534772_
                                           _e3447634775_
                                           _hd3447734778_
                                           _tl3447834780_
                                           ___splice4093140932_
                                           _target3447934783_
                                           _tl3448134785_)
                                    (letrec ((_loop3448234788_
                                              (lambda (_hd3448034791_
                                                       _expr3448634793_
                                                       _id3448734795_)
                                                (if (gx#stx-pair?
                                                     _hd3448034791_)
                                                    (let ((_e3448334798_
                                                           (gx#stx-e
                                                            _hd3448034791_)))
                                                      (let ((_lp-tl3448534803_
                                                             (##cdr _e3448334798_))
                                                            (_lp-hd3448434801_
                                                             (##car _e3448334798_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3448434801_)
                                                            (let ((_e3449034806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3448434801_)))
                      (let ((_tl3449234811_ (##cdr _e3449034806_))
                            (_hd3449134809_ (##car _e3449034806_)))
                        (if (gx#stx-pair? _hd3449134809_)
                            (let ((_e3449334814_ (gx#stx-e _hd3449134809_)))
                              (let ((_tl3449534819_ (##cdr _e3449334814_))
                                    (_hd3449434817_ (##car _e3449334814_)))
                                (if (gx#stx-null? _tl3449534819_)
                                    (if (gx#stx-pair? _tl3449234811_)
                                        (let ((_e3449634822_
                                               (gx#stx-e _tl3449234811_)))
                                          (let ((_tl3449834827_
                                                 (##cdr _e3449634822_))
                                                (_hd3449734825_
                                                 (##car _e3449634822_)))
                                            (if (gx#stx-null? _tl3449834827_)
                                                (_loop3448234788_
                                                 _lp-tl3448534803_
                                                 (cons _hd3449734825_
                                                       _expr3448634793_)
                                                 (cons _hd3449434817_
                                                       _id3448734795_))
                                                (___kont4093940940_))))
                                        (___kont4093940940_))
                                    (___kont4093940940_))))
                            (___kont4093940940_))))
                    (___kont4093940940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3448934832_
                                                           (reverse _id3448734795_))
                                                          (_expr3448834830_
                                                           (reverse _expr3448634793_)))
                                                      (if (gx#stx-pair?
                                                           _tl3447834780_)
                                                          (let ((_e3449934835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3447834780_)))
                    (let ((_tl3450134840_ (##cdr _e3449934835_))
                          (_hd3450034838_ (##car _e3449934835_)))
                      (if (gx#stx-null? _tl3450134840_)
                          (___kont4092940930_
                           _hd3450034838_
                           _expr3448834830_
                           _id3448934832_)
                          (___kont4093940940_))))
                  (___kont4093940940_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3448234788_
                                       _target3447934783_
                                       '()
                                       '()))))
                                 (___match4103641037_
                                  (lambda (_e3443534883_
                                           _hd3443634886_
                                           _tl3443734888_
                                           _e3443834891_
                                           _hd3443934894_
                                           _tl3444034896_
                                           ___splice4092740928_
                                           _target3444134899_
                                           _tl3444334901_)
                                    (letrec ((_loop3444434904_
                                              (lambda (_hd3444234907_
                                                       _xid3444834909_
                                                       _id3444934911_)
                                                (if (gx#stx-pair?
                                                     _hd3444234907_)
                                                    (let ((_e3444534914_
                                                           (gx#stx-e
                                                            _hd3444234907_)))
                                                      (let ((_lp-tl3444734919_
                                                             (##cdr _e3444534914_))
                                                            (_lp-hd3444634917_
                                                             (##car _e3444534914_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3444634917_)
                                                            (let ((_e3445234922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3444634917_)))
                      (let ((_tl3445434927_ (##cdr _e3445234922_))
                            (_hd3445334925_ (##car _e3445234922_)))
                        (if (gx#stx-pair? _hd3445334925_)
                            (let ((_e3445534930_ (gx#stx-e _hd3445334925_)))
                              (let ((_tl3445734935_ (##cdr _e3445534930_))
                                    (_hd3445634933_ (##car _e3445534930_)))
                                (if (gx#stx-null? _tl3445734935_)
                                    (if (gx#stx-pair? _tl3445434927_)
                                        (let ((_e3445834938_
                                               (gx#stx-e _tl3445434927_)))
                                          (let ((_tl3446034943_
                                                 (##cdr _e3445834938_))
                                                (_hd3445934941_
                                                 (##car _e3445834938_)))
                                            (if (gx#stx-pair? _hd3445934941_)
                                                (let ((_e3446134946_
                                                       (gx#stx-e
                                                        _hd3445934941_)))
                                                  (let ((_tl3446334951_
                                                         (##cdr _e3446134946_))
                                                        (_hd3446234949_
                                                         (##car _e3446134946_)))
                                                    (if (gx#identifier?
                                                         _hd3446234949_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3446234949_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3446334951_)
                        (let ((_e3446434954_ (gx#stx-e _tl3446334951_)))
                          (let ((_tl3446634959_ (##cdr _e3446434954_))
                                (_hd3446534957_ (##car _e3446434954_)))
                            (if (gx#stx-null? _tl3446634959_)
                                (if (gx#stx-null? _tl3446034943_)
                                    (_loop3444434904_
                                     _lp-tl3444734919_
                                     (cons _hd3446534957_ _xid3444834909_)
                                     (cons _hd3445634933_ _id3444934911_))
                                    (___match4106041061_
                                     _e3443534883_
                                     _hd3443634886_
                                     _tl3443734888_
                                     _e3443834891_
                                     _hd3443934894_
                                     _tl3444034896_
                                     ___splice4092740928_
                                     _target3444134899_
                                     _tl3444334901_))
                                (___match4106041061_
                                 _e3443534883_
                                 _hd3443634886_
                                 _tl3443734888_
                                 _e3443834891_
                                 _hd3443934894_
                                 _tl3444034896_
                                 ___splice4092740928_
                                 _target3444134899_
                                 _tl3444334901_))))
                        (___match4106041061_
                         _e3443534883_
                         _hd3443634886_
                         _tl3443734888_
                         _e3443834891_
                         _hd3443934894_
                         _tl3444034896_
                         ___splice4092740928_
                         _target3444134899_
                         _tl3444334901_))
                    (___match4106041061_
                     _e3443534883_
                     _hd3443634886_
                     _tl3443734888_
                     _e3443834891_
                     _hd3443934894_
                     _tl3444034896_
                     ___splice4092740928_
                     _target3444134899_
                     _tl3444334901_))
                (___match4106041061_
                 _e3443534883_
                 _hd3443634886_
                 _tl3443734888_
                 _e3443834891_
                 _hd3443934894_
                 _tl3444034896_
                 ___splice4092740928_
                 _target3444134899_
                 _tl3444334901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match4106041061_
                                                 _e3443534883_
                                                 _hd3443634886_
                                                 _tl3443734888_
                                                 _e3443834891_
                                                 _hd3443934894_
                                                 _tl3444034896_
                                                 ___splice4092740928_
                                                 _target3444134899_
                                                 _tl3444334901_))))
                                        (___match4106041061_
                                         _e3443534883_
                                         _hd3443634886_
                                         _tl3443734888_
                                         _e3443834891_
                                         _hd3443934894_
                                         _tl3444034896_
                                         ___splice4092740928_
                                         _target3444134899_
                                         _tl3444334901_))
                                    (___match4106041061_
                                     _e3443534883_
                                     _hd3443634886_
                                     _tl3443734888_
                                     _e3443834891_
                                     _hd3443934894_
                                     _tl3444034896_
                                     ___splice4092740928_
                                     _target3444134899_
                                     _tl3444334901_))))
                            (___match4106041061_
                             _e3443534883_
                             _hd3443634886_
                             _tl3443734888_
                             _e3443834891_
                             _hd3443934894_
                             _tl3444034896_
                             ___splice4092740928_
                             _target3444134899_
                             _tl3444334901_))))
                    (___match4106041061_
                     _e3443534883_
                     _hd3443634886_
                     _tl3443734888_
                     _e3443834891_
                     _hd3443934894_
                     _tl3444034896_
                     ___splice4092740928_
                     _target3444134899_
                     _tl3444334901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3445134964_
                                                           (reverse _id3444934911_))
                                                          (_xid3445034962_
                                                           (reverse _xid3444834909_)))
                                                      (if (gx#stx-pair?
                                                           _tl3444034896_)
                                                          (let ((_e3446734967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3444034896_)))
                    (let ((_tl3446934972_ (##cdr _e3446734967_))
                          (_hd3446834970_ (##car _e3446734967_)))
                      (if (gx#stx-null? _tl3446934972_)
                          (___kont4092540926_
                           _hd3446834970_
                           _xid3445034962_
                           _id3445134964_)
                          (___match4106041061_
                           _e3443534883_
                           _hd3443634886_
                           _tl3443734888_
                           _e3443834891_
                           _hd3443934894_
                           _tl3444034896_
                           ___splice4092740928_
                           _target3444134899_
                           _tl3444334901_))))
                  (___match4106041061_
                   _e3443534883_
                   _hd3443634886_
                   _tl3443734888_
                   _e3443834891_
                   _hd3443934894_
                   _tl3444034896_
                   ___splice4092740928_
                   _target3444134899_
                   _tl3444334901_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3444434904_
                                       _target3444134899_
                                       '()
                                       '()))))
                                 (___match4098240983_
                                  (lambda (_e3439035075_
                                           _hd3439135078_
                                           _tl3439235080_
                                           _e3439335083_
                                           _hd3439435086_
                                           _tl3439535088_
                                           _e3439635091_
                                           _hd3439735094_
                                           _tl3439835096_
                                           _e3439935099_
                                           _hd3440035102_
                                           _tl3440135104_
                                           ___splice4092140922_
                                           _target3440235107_
                                           _tl3440435109_)
                                    (letrec ((_loop3440535112_
                                              (lambda (_hd3440335115_
                                                       _id3440935117_)
                                                (if (gx#stx-pair?
                                                     _hd3440335115_)
                                                    (let ((_e3440635120_
                                                           (gx#stx-e
                                                            _hd3440335115_)))
                                                      (let ((_lp-tl3440835125_
                                                             (##cdr _e3440635120_))
                                                            (_lp-hd3440735123_
                                                             (##car _e3440635120_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3440735123_)
                                                            (let ((_e3441135128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3440735123_)))
                      (let ((_tl3441335133_ (##cdr _e3441135128_))
                            (_hd3441235131_ (##car _e3441135128_)))
                        (if (gx#identifier? _hd3441235131_)
                            (if (gx#stx-eq? '%#ref _hd3441235131_)
                                (if (gx#stx-pair? _tl3441335133_)
                                    (let ((_e3441435136_
                                           (gx#stx-e _tl3441335133_)))
                                      (let ((_tl3441635141_
                                             (##cdr _e3441435136_))
                                            (_hd3441535139_
                                             (##car _e3441435136_)))
                                        (if (gx#stx-null? _tl3441635141_)
                                            (_loop3440535112_
                                             _lp-tl3440835125_
                                             (cons _hd3441535139_
                                                   _id3440935117_))
                                            (___kont4093940940_))))
                                    (___kont4093940940_))
                                (___kont4093940940_))
                            (___kont4093940940_))))
                    (___kont4093940940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3441035144_
                                                           (reverse _id3440935117_)))
                                                      (___kont4091940920_
                                                       _id3441035144_
                                                       _hd3440035102_))))))
                                      (_loop3440535112_
                                       _target3440235107_
                                       '())))))
                            (if (gx#stx-pair? ___stx4091740918_)
                                (let ((_e3439035075_
                                       (gx#stx-e ___stx4091740918_)))
                                  (let ((_tl3439235080_ (##cdr _e3439035075_))
                                        (_hd3439135078_ (##car _e3439035075_)))
                                    (if (gx#identifier? _hd3439135078_)
                                        (if (gx#stx-eq? '%#call _hd3439135078_)
                                            (if (gx#stx-pair? _tl3439235080_)
                                                (let ((_e3439335083_
                                                       (gx#stx-e
                                                        _tl3439235080_)))
                                                  (let ((_tl3439535088_
                                                         (##cdr _e3439335083_))
                                                        (_hd3439435086_
                                                         (##car _e3439335083_)))
                                                    (if (gx#stx-pair?
                                                         _hd3439435086_)
                                                        (let ((_e3439635091_
                                                               (gx#stx-e
                                                                _hd3439435086_)))
                                                          (let ((_tl3439835096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3439635091_))
                        (_hd3439735094_ (##car _e3439635091_)))
                    (if (gx#identifier? _hd3439735094_)
                        (if (gx#stx-eq? '%#ref _hd3439735094_)
                            (if (gx#stx-pair? _tl3439835096_)
                                (let ((_e3439935099_
                                       (gx#stx-e _tl3439835096_)))
                                  (let ((_tl3440135104_ (##cdr _e3439935099_))
                                        (_hd3440035102_ (##car _e3439935099_)))
                                    (if (gx#stx-null? _tl3440135104_)
                                        (if (gx#stx-pair/null? _tl3439535088_)
                                            (let ((___splice4092140922_
                                                   (gx#syntax-split-splice
                                                    _tl3439535088_
                                                    '0)))
                                              (let ((_tl3440435109_
                                                     (##vector-ref
                                                      ___splice4092140922_
                                                      '1))
                                                    (_target3440235107_
                                                     (##vector-ref
                                                      ___splice4092140922_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3440435109_)
                                                    (___match4098240983_
                                                     _e3439035075_
                                                     _hd3439135078_
                                                     _tl3439235080_
                                                     _e3439335083_
                                                     _hd3439435086_
                                                     _tl3439535088_
                                                     _e3439635091_
                                                     _hd3439735094_
                                                     _tl3439835096_
                                                     _e3439935099_
                                                     _hd3440035102_
                                                     _tl3440135104_
                                                     ___splice4092140922_
                                                     _target3440235107_
                                                     _tl3440435109_)
                                                    (___kont4093940940_))))
                                            (___kont4093940940_))
                                        (___kont4093940940_))))
                                (___kont4093940940_))
                            (___kont4093940940_))
                        (___kont4093940940_))))
                (___kont4093940940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4093940940_))
                                            (if (gx#stx-eq?
                                                 '%#if
                                                 _hd3439135078_)
                                                (if (gx#stx-pair?
                                                     _tl3439235080_)
                                                    (let ((_e3442335021_
                                                           (gx#stx-e
                                                            _tl3439235080_)))
                                                      (let ((_tl3442535026_
                                                             (##cdr _e3442335021_))
                                                            (_hd3442435024_
                                                             (##car _e3442335021_)))
                                                        (if (gx#stx-pair?
                                                             _tl3442535026_)
                                                            (let ((_e3442635029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3442535026_)))
                      (let ((_tl3442835034_ (##cdr _e3442635029_))
                            (_hd3442735032_ (##car _e3442635029_)))
                        (if (gx#stx-pair? _tl3442835034_)
                            (let ((_e3442935037_ (gx#stx-e _tl3442835034_)))
                              (let ((_tl3443135042_ (##cdr _e3442935037_))
                                    (_hd3443035040_ (##car _e3442935037_)))
                                (if (gx#stx-null? _tl3443135042_)
                                    (___kont4092340924_
                                     _hd3443035040_
                                     _hd3442735032_
                                     _hd3442435024_)
                                    (___kont4093940940_))))
                            (___kont4093940940_))))
                    (___kont4093940940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4093940940_))
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd3439135078_)
                                                    (if (gx#stx-pair?
                                                         _tl3439235080_)
                                                        (let ((_e3443834891_
                                                               (gx#stx-e
                                                                _tl3439235080_)))
                                                          (let ((_tl3444034896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3443834891_))
                        (_hd3443934894_ (##car _e3443834891_)))
                    (if (gx#stx-pair/null? _hd3443934894_)
                        (let ((___splice4092740928_
                               (gx#syntax-split-splice _hd3443934894_ '0)))
                          (let ((_tl3444334901_
                                 (##vector-ref ___splice4092740928_ '1))
                                (_target3444134899_
                                 (##vector-ref ___splice4092740928_ '0)))
                            (if (gx#stx-null? _tl3444334901_)
                                (___match4103641037_
                                 _e3439035075_
                                 _hd3439135078_
                                 _tl3439235080_
                                 _e3443834891_
                                 _hd3443934894_
                                 _tl3444034896_
                                 ___splice4092740928_
                                 _target3444134899_
                                 _tl3444334901_)
                                (___kont4093940940_))))
                        (___kont4093940940_))))
                (___kont4093940940_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#letrec-values
                                                         _hd3439135078_)
                                                        (if (gx#stx-pair?
                                                             _tl3439235080_)
                                                            (let ((_e3451034579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3439235080_)))
                      (let ((_tl3451234584_ (##cdr _e3451034579_))
                            (_hd3451134582_ (##car _e3451034579_)))
                        (if (gx#stx-pair? _hd3451134582_)
                            (let ((_e3451334587_ (gx#stx-e _hd3451134582_)))
                              (let ((_tl3451534592_ (##cdr _e3451334587_))
                                    (_hd3451434590_ (##car _e3451334587_)))
                                (if (gx#stx-pair? _hd3451434590_)
                                    (let ((_e3451634595_
                                           (gx#stx-e _hd3451434590_)))
                                      (let ((_tl3451834600_
                                             (##cdr _e3451634595_))
                                            (_hd3451734598_
                                             (##car _e3451634595_)))
                                        (if (gx#stx-pair? _hd3451734598_)
                                            (let ((_e3451934603_
                                                   (gx#stx-e _hd3451734598_)))
                                              (let ((_tl3452134608_
                                                     (##cdr _e3451934603_))
                                                    (_hd3452034606_
                                                     (##car _e3451934603_)))
                                                (if (gx#stx-null?
                                                     _tl3452134608_)
                                                    (if (gx#stx-pair?
                                                         _tl3451834600_)
                                                        (let ((_e3452234611_
                                                               (gx#stx-e
                                                                _tl3451834600_)))
                                                          (let ((_tl3452434616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3452234611_))
                        (_hd3452334614_ (##car _e3452234611_)))
                    (if (gx#stx-pair? _hd3452334614_)
                        (let ((_e3452534619_ (gx#stx-e _hd3452334614_)))
                          (let ((_tl3452734624_ (##cdr _e3452534619_))
                                (_hd3452634622_ (##car _e3452534619_)))
                            (if (gx#identifier? _hd3452634622_)
                                (if (gx#stx-eq? '%#lambda _hd3452634622_)
                                    (if (gx#stx-pair? _tl3452734624_)
                                        (let ((_e3452834627_
                                               (gx#stx-e _tl3452734624_)))
                                          (let ((_tl3453034632_
                                                 (##cdr _e3452834627_))
                                                (_hd3452934630_
                                                 (##car _e3452834627_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3452934630_)
                                                (let ((___splice4093540936_
                                                       (gx#syntax-split-splice
                                                        _hd3452934630_
                                                        '0)))
                                                  (let ((_tl3453334637_
                                                         (##vector-ref
                                                          ___splice4093540936_
                                                          '1))
                                                        (_target3453134635_
                                                         (##vector-ref
                                                          ___splice4093540936_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3453334637_)
                                                        (___match4112641127_
                                                         _e3439035075_
                                                         _hd3439135078_
                                                         _tl3439235080_
                                                         _e3451034579_
                                                         _hd3451134582_
                                                         _tl3451234584_
                                                         _e3451334587_
                                                         _hd3451434590_
                                                         _tl3451534592_
                                                         _e3451634595_
                                                         _hd3451734598_
                                                         _tl3451834600_
                                                         _e3451934603_
                                                         _hd3452034606_
                                                         _tl3452134608_
                                                         _e3452234611_
                                                         _hd3452334614_
                                                         _tl3452434616_
                                                         _e3452534619_
                                                         _hd3452634622_
                                                         _tl3452734624_
                                                         _e3452834627_
                                                         _hd3452934630_
                                                         _tl3453034632_
                                                         ___splice4093540936_
                                                         _target3453134635_
                                                         _tl3453334637_)
                                                        (___kont4093940940_))))
                                                (___kont4093940940_))))
                                        (___kont4093940940_))
                                    (___kont4093940940_))
                                (___kont4093940940_))))
                        (___kont4093940940_))))
                (___kont4093940940_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4093940940_))))
                                            (___kont4093940940_))))
                                    (___kont4093940940_))))
                            (___kont4093940940_))))
                    (___kont4093940940_))
                (___kont4093940940_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (___kont4093940940_))))
                                (___kont4093940940_)))))))))
                (_optimize-f__0__3963439635_
                 (lambda (_expr35284_)
                   (let ((_test35286_ '#f))
                     (_optimize-f__3963239633_ _expr35284_ _test35286_))))
                (_optimize-f32309_
                 (lambda _g42732_
                   (let ((_g42731_ (length _g42732_)))
                     (cond ((##fx= _g42731_ 1)
                            (apply _optimize-f__0__3963439635_ _g42732_))
                           ((##fx= _g42731_ 2)
                            (apply _optimize-f__3963239633_ _g42732_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42732_))))))
                (_assert-e32310_
                 (lambda (_expr33318_)
                   (let* ((_sexpr33320_
                           (gxc#apply-generate-runtime-repr _expr33318_))
                          (_$e33322_ (assoc _sexpr33320_ _env-assert32292_)))
                     (if _$e33322_
                         (cdr _$e33322_)
                         (let _assert33325_ ((_expr33327_ _expr33318_))
                           (let* ((___stx4122341224_ _expr33327_)
                                  (_g3333533514_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4122341224_))))
                             (let ((___kont4122541226_
                                    (lambda (_L34345_ _L34346_)
                                      (let ((_$e34368_
                                             (_predicate-type32297_ _L34346_)))
                                        (if _$e34368_
                                            ((lambda (_t34371_)
                                               (_assert-type32311_
                                                _L34345_
                                                _t34371_))
                                             _$e34368_)
                                            '#!void))))
                                   (___kont4122741228_
                                    (lambda (_L34038_ _L34039_ _L34040_)
                                      (let ((_$e34065_
                                             (gxc#identifier-symbol _L34040_)))
                                        (if (let ((_$e34068_
                                                   (eq? '##fx= _$e34065_)))
                                              (if _$e34068_
                                                  _$e34068_
                                                  (eq? 'fx= _$e34065_)))
                                            (let* ((___stx4112941130_ _L34039_)
                                                   (_g3407234101_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx4112941130_))))
                                              (let ((___kont4113141132_
                                                     (lambda (_L34169_
                                                              _L34170_)
                                                       (let ((_$e34195_
                                                              (_countf-symbol32299_
                                                               _L34170_)))
                                                         (if _$e34195_
                                                             ((lambda (_sym34198_)
                                                                (_assert-count32312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L34169_
                         _sym34198_
                         (gx#stx-e _L34038_)))
                      _$e34195_)
                     '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4113341134_
                                                     (lambda () '#!void)))
                                                (if (gx#stx-pair?
                                                     ___stx4112941130_)
                                                    (let ((_e3407634113_
                                                           (gx#stx-e
                                                            ___stx4112941130_)))
                                                      (let ((_tl3407834118_
                                                             (##cdr _e3407634113_))
                                                            (_hd3407734116_
                                                             (##car _e3407634113_)))
                                                        (if (gx#identifier?
                                                             _hd3407734116_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd3407734116_)
                        (if (gx#stx-pair? _tl3407834118_)
                            (let ((_e3407934121_ (gx#stx-e _tl3407834118_)))
                              (let ((_tl3408134126_ (##cdr _e3407934121_))
                                    (_hd3408034124_ (##car _e3407934121_)))
                                (if (gx#stx-pair? _hd3408034124_)
                                    (let ((_e3408234129_
                                           (gx#stx-e _hd3408034124_)))
                                      (let ((_tl3408434134_
                                             (##cdr _e3408234129_))
                                            (_hd3408334132_
                                             (##car _e3408234129_)))
                                        (if (gx#identifier? _hd3408334132_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3408334132_)
                                                (if (gx#stx-pair?
                                                     _tl3408434134_)
                                                    (let ((_e3408534137_
                                                           (gx#stx-e
                                                            _tl3408434134_)))
                                                      (let ((_tl3408734142_
                                                             (##cdr _e3408534137_))
                                                            (_hd3408634140_
                                                             (##car _e3408534137_)))
                                                        (if (gx#stx-null?
                                                             _tl3408734142_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3408134126_)
                        (let ((_e3408834145_ (gx#stx-e _tl3408134126_)))
                          (let ((_tl3409034150_ (##cdr _e3408834145_))
                                (_hd3408934148_ (##car _e3408834145_)))
                            (if (gx#stx-pair? _hd3408934148_)
                                (let ((_e3409134153_
                                       (gx#stx-e _hd3408934148_)))
                                  (let ((_tl3409334158_ (##cdr _e3409134153_))
                                        (_hd3409234156_ (##car _e3409134153_)))
                                    (if (gx#identifier? _hd3409234156_)
                                        (if (gx#stx-eq? '%#ref _hd3409234156_)
                                            (if (gx#stx-pair? _tl3409334158_)
                                                (let ((_e3409434161_
                                                       (gx#stx-e
                                                        _tl3409334158_)))
                                                  (let ((_tl3409634166_
                                                         (##cdr _e3409434161_))
                                                        (_hd3409534164_
                                                         (##car _e3409434161_)))
                                                    (if (gx#stx-null?
                                                         _tl3409634166_)
                                                        (if (gx#stx-null?
                                                             _tl3409034150_)
                                                            (___kont4113141132_
                                                             _hd3409534164_
                                                             _hd3408634140_)
                                                            (___kont4113341134_))
                                                        (___kont4113341134_))))
                                                (___kont4113341134_))
                                            (___kont4113341134_))
                                        (___kont4113341134_))))
                                (___kont4113341134_))))
                        (___kont4113341134_))
                    (___kont4113341134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4113341134_))
                                                (___kont4113341134_))
                                            (___kont4113341134_))))
                                    (___kont4113341134_))))
                            (___kont4113341134_))
                        (___kont4113341134_))
                    (___kont4113341134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4113341134_))))
                                            (if (let ((_$e34203_
                                                       (eq? '##eq? _$e34065_)))
                                                  (if _$e34203_
                                                      _$e34203_
                                                      (let ((_$e34206_
                                                             (eq? 'eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e34065_)))
                (if _$e34206_
                    _$e34206_
                    (let ((_$e34209_ (eq? '##eqv? _$e34065_)))
                      (if _$e34209_
                          _$e34209_
                          (let ((_$e34212_ (eq? 'eqv? _$e34065_)))
                            (if _$e34212_
                                _$e34212_
                                (let ((_$e34215_ (eq? '##equal? _$e34065_)))
                                  (if _$e34215_
                                      _$e34215_
                                      (let ((_$e34218_
                                             (eq? 'equal? _$e34065_)))
                                        (if _$e34218_
                                            _$e34218_
                                            (let ((_$e34221_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e34065_)))
                                              (if _$e34221_
                                                  _$e34221_
                                                  (eq? 'gx#stx-eq?
                                                       _$e34065_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                ((lambda (_sym34224_)
                                                   (let* ((___stx4119741198_
                                                           _L34039_)
                                                          (_g3422734240_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4119741198_))))
                                                     (let ((___kont4119941200_
                                                            (lambda (_L34268_)
                                                              (_assert-eqf32313_
                                                               _L34268_
                                                               (_eqf-symbol32300_
                                                                _sym34224_)
                                                               (gx#stx-e
                                                                _L34038_))))
                                                           (___kont4120141202_
                                                            (lambda ()
                                                              '#!void)))
                                                       (if (gx#stx-pair?
                                                            ___stx4119741198_)
                                                           (let ((_e3423034252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e ___stx4119741198_)))
                     (let ((_tl3423234257_ (##cdr _e3423034252_))
                           (_hd3423134255_ (##car _e3423034252_)))
                       (if (gx#identifier? _hd3423134255_)
                           (if (gx#stx-eq? '%#ref _hd3423134255_)
                               (if (gx#stx-pair? _tl3423234257_)
                                   (let ((_e3423334260_
                                          (gx#stx-e _tl3423234257_)))
                                     (let ((_tl3423534265_
                                            (##cdr _e3423334260_))
                                           (_hd3423434263_
                                            (##car _e3423334260_)))
                                       (if (gx#stx-null? _tl3423534265_)
                                           (___kont4119941200_ _hd3423434263_)
                                           (___kont4120141202_))))
                                   (___kont4120141202_))
                               (___kont4120141202_))
                           (___kont4120141202_))))
                   (___kont4120141202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e34065_)
                                                '#!void)))))
                                   (___kont4122941230_
                                    (lambda (_L33942_ _L33943_ _L33944_)
                                      (_assert33325_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L33944_ '()))
                                                   (cons _L33942_
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#quote)
                             (cons _L33943_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4123141232_
                                    (lambda (_L33834_ _L33835_ _L33836_)
                                      (let ((_$e33865_
                                             (gxc#identifier-symbol _L33836_)))
                                        (if (let ((_$e33868_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e33865_)))
                                              (if _$e33868_
                                                  _$e33868_
                                                  (eq? 'gx#stx-eq? _$e33865_)))
                                            ((lambda (_sym33871_)
                                               (_assert-eqf32313_
                                                _L33835_
                                                (_eqf-symbol32300_ _sym33871_)
                                                _L33834_))
                                             _$e33865_)
                                            '#!void))))
                                   (___kont4123341234_
                                    (lambda (_L33718_ _L33719_ _L33720_)
                                      (_assert33325_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L33720_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L33718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                             (cons _L33719_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4123541236_
                                    (lambda (_L33598_ _L33599_ _L33600_)
                                      (_assert33325_
                                       (gxc#apply-expression-subst
                                        _L33599_
                                        _L33600_
                                        _L33598_))))
                                   (___kont4123741238_ (lambda () '#!void)))
                               (if (gx#stx-pair? ___stx4122341224_)
                                   (let ((_e3333934289_
                                          (gx#stx-e ___stx4122341224_)))
                                     (let ((_tl3334134294_
                                            (##cdr _e3333934289_))
                                           (_hd3334034292_
                                            (##car _e3333934289_)))
                                       (if (gx#identifier? _hd3334034292_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd3334034292_)
                                               (if (gx#stx-pair?
                                                    _tl3334134294_)
                                                   (let ((_e3334234297_
                                                          (gx#stx-e
                                                           _tl3334134294_)))
                                                     (let ((_tl3334434302_
                                                            (##cdr _e3334234297_))
                                                           (_hd3334334300_
                                                            (##car _e3334234297_)))
                                                       (if (gx#stx-pair?
                                                            _hd3334334300_)
                                                           (let ((_e3334534305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3334334300_)))
                     (let ((_tl3334734310_ (##cdr _e3334534305_))
                           (_hd3334634308_ (##car _e3334534305_)))
                       (if (gx#identifier? _hd3334634308_)
                           (if (gx#stx-eq? '%#ref _hd3334634308_)
                               (if (gx#stx-pair? _tl3334734310_)
                                   (let ((_e3334834313_
                                          (gx#stx-e _tl3334734310_)))
                                     (let ((_tl3335034318_
                                            (##cdr _e3334834313_))
                                           (_hd3334934316_
                                            (##car _e3334834313_)))
                                       (if (gx#stx-null? _tl3335034318_)
                                           (if (gx#stx-pair? _tl3334434302_)
                                               (let ((_e3335134321_
                                                      (gx#stx-e
                                                       _tl3334434302_)))
                                                 (let ((_tl3335334326_
                                                        (##cdr _e3335134321_))
                                                       (_hd3335234324_
                                                        (##car _e3335134321_)))
                                                   (if (gx#stx-pair?
                                                        _hd3335234324_)
                                                       (let ((_e3335434329_
                                                              (gx#stx-e
                                                               _hd3335234324_)))
                                                         (let ((_tl3335634334_
                                                                (##cdr _e3335434329_))
                                                               (_hd3335534332_
                                                                (##car _e3335434329_)))
                                                           (if (gx#identifier?
                                                                _hd3335534332_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3335534332_)
                           (if (gx#stx-pair? _tl3335634334_)
                               (let ((_e3335734337_ (gx#stx-e _tl3335634334_)))
                                 (let ((_tl3335934342_ (##cdr _e3335734337_))
                                       (_hd3335834340_ (##car _e3335734337_)))
                                   (if (gx#stx-null? _tl3335934342_)
                                       (if (gx#stx-null? _tl3335334326_)
                                           (___kont4122541226_
                                            _hd3335834340_
                                            _hd3334934316_)
                                           (if (gx#stx-pair? _tl3335334326_)
                                               (let ((_e3337834014_
                                                      (gx#stx-e
                                                       _tl3335334326_)))
                                                 (let ((_tl3338034019_
                                                        (##cdr _e3337834014_))
                                                       (_hd3337934017_
                                                        (##car _e3337834014_)))
                                                   (if (gx#stx-pair?
                                                        _hd3337934017_)
                                                       (let ((_e3338134022_
                                                              (gx#stx-e
                                                               _hd3337934017_)))
                                                         (let ((_tl3338334027_
                                                                (##cdr _e3338134022_))
                                                               (_hd3338234025_
                                                                (##car _e3338134022_)))
                                                           (if (gx#identifier?
                                                                _hd3338234025_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#quote
                            _hd3338234025_)
                           (if (gx#stx-pair? _tl3338334027_)
                               (let ((_e3338434030_ (gx#stx-e _tl3338334027_)))
                                 (let ((_tl3338634035_ (##cdr _e3338434030_))
                                       (_hd3338534033_ (##car _e3338434030_)))
                                   (if (gx#stx-null? _tl3338634035_)
                                       (if (gx#stx-null? _tl3338034019_)
                                           (___kont4122741228_
                                            _hd3338534033_
                                            _hd3335234324_
                                            _hd3334934316_)
                                           (___kont4123741238_))
                                       (___kont4123741238_))))
                               (___kont4123741238_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3338234025_)
                               (if (gx#stx-pair? _tl3338334027_)
                                   (let ((_e3344433826_
                                          (gx#stx-e _tl3338334027_)))
                                     (let ((_tl3344633831_
                                            (##cdr _e3344433826_))
                                           (_hd3344533829_
                                            (##car _e3344433826_)))
                                       (if (gx#stx-null? _tl3344633831_)
                                           (if (gx#stx-null? _tl3338034019_)
                                               (___kont4123141232_
                                                _hd3344533829_
                                                _hd3335834340_
                                                _hd3334934316_)
                                               (___kont4123741238_))
                                           (___kont4123741238_))))
                                   (___kont4123741238_))
                               (___kont4123741238_)))
                       (___kont4123741238_))))
               (___kont4123741238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4123741238_)))
                                       (if (gx#stx-pair? _tl3335334326_)
                                           (let ((_e3337834014_
                                                  (gx#stx-e _tl3335334326_)))
                                             (let ((_tl3338034019_
                                                    (##cdr _e3337834014_))
                                                   (_hd3337934017_
                                                    (##car _e3337834014_)))
                                               (if (gx#stx-pair?
                                                    _hd3337934017_)
                                                   (let ((_e3338134022_
                                                          (gx#stx-e
                                                           _hd3337934017_)))
                                                     (let ((_tl3338334027_
                                                            (##cdr _e3338134022_))
                                                           (_hd3338234025_
                                                            (##car _e3338134022_)))
                                                       (if (gx#identifier?
                                                            _hd3338234025_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3338234025_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3338334027_)
                           (let ((_e3338434030_ (gx#stx-e _tl3338334027_)))
                             (let ((_tl3338634035_ (##cdr _e3338434030_))
                                   (_hd3338534033_ (##car _e3338434030_)))
                               (if (gx#stx-null? _tl3338634035_)
                                   (if (gx#stx-null? _tl3338034019_)
                                       (___kont4122741228_
                                        _hd3338534033_
                                        _hd3335234324_
                                        _hd3334934316_)
                                       (___kont4123741238_))
                                   (___kont4123741238_))))
                           (___kont4123741238_))
                       (___kont4123741238_))
                   (___kont4123741238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4123741238_))))
                                           (___kont4123741238_)))))
                               (if (gx#stx-pair? _tl3335334326_)
                                   (let ((_e3337834014_
                                          (gx#stx-e _tl3335334326_)))
                                     (let ((_tl3338034019_
                                            (##cdr _e3337834014_))
                                           (_hd3337934017_
                                            (##car _e3337834014_)))
                                       (if (gx#stx-pair? _hd3337934017_)
                                           (let ((_e3338134022_
                                                  (gx#stx-e _hd3337934017_)))
                                             (let ((_tl3338334027_
                                                    (##cdr _e3338134022_))
                                                   (_hd3338234025_
                                                    (##car _e3338134022_)))
                                               (if (gx#identifier?
                                                    _hd3338234025_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3338234025_)
                                                       (if (gx#stx-pair?
                                                            _tl3338334027_)
                                                           (let ((_e3338434030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3338334027_)))
                     (let ((_tl3338634035_ (##cdr _e3338434030_))
                           (_hd3338534033_ (##car _e3338434030_)))
                       (if (gx#stx-null? _tl3338634035_)
                           (if (gx#stx-null? _tl3338034019_)
                               (___kont4122741228_
                                _hd3338534033_
                                _hd3335234324_
                                _hd3334934316_)
                               (___kont4123741238_))
                           (___kont4123741238_))))
                   (___kont4123741238_))
               (___kont4123741238_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4123741238_))))
                                           (___kont4123741238_))))
                                   (___kont4123741238_)))
                           (if (gx#stx-pair? _tl3335334326_)
                               (let ((_e3337834014_ (gx#stx-e _tl3335334326_)))
                                 (let ((_tl3338034019_ (##cdr _e3337834014_))
                                       (_hd3337934017_ (##car _e3337834014_)))
                                   (if (gx#stx-pair? _hd3337934017_)
                                       (let ((_e3338134022_
                                              (gx#stx-e _hd3337934017_)))
                                         (let ((_tl3338334027_
                                                (##cdr _e3338134022_))
                                               (_hd3338234025_
                                                (##car _e3338134022_)))
                                           (if (gx#identifier? _hd3338234025_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3338234025_)
                                                   (if (gx#stx-pair?
                                                        _tl3338334027_)
                                                       (let ((_e3338434030_
                                                              (gx#stx-e
                                                               _tl3338334027_)))
                                                         (let ((_tl3338634035_
                                                                (##cdr _e3338434030_))
                                                               (_hd3338534033_
                                                                (##car _e3338434030_)))
                                                           (if (gx#stx-null?
                                                                _tl3338634035_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3338034019_)
                           (___kont4122741228_
                            _hd3338534033_
                            _hd3335234324_
                            _hd3334934316_)
                           (if (gx#stx-eq? '%#quote _hd3335534332_)
                               (if (gx#stx-pair? _tl3335634334_)
                                   (let ((_e3340833926_
                                          (gx#stx-e _tl3335634334_)))
                                     (let ((_tl3341033931_
                                            (##cdr _e3340833926_))
                                           (_hd3340933929_
                                            (##car _e3340833926_)))
                                       (___kont4123741238_)))
                                   (___kont4123741238_))
                               (if (gx#stx-eq? '%#quote-syntax _hd3335534332_)
                                   (if (gx#stx-pair? _tl3335634334_)
                                       (let ((_e3346833686_
                                              (gx#stx-e _tl3335634334_)))
                                         (let ((_tl3347033691_
                                                (##cdr _e3346833686_))
                                               (_hd3346933689_
                                                (##car _e3346833686_)))
                                           (___kont4123741238_)))
                                       (___kont4123741238_))
                                   (___kont4123741238_))))
                       (if (gx#stx-eq? '%#quote _hd3335534332_)
                           (if (gx#stx-pair? _tl3335634334_)
                               (let ((_e3340833926_ (gx#stx-e _tl3335634334_)))
                                 (let ((_tl3341033931_ (##cdr _e3340833926_))
                                       (_hd3340933929_ (##car _e3340833926_)))
                                   (if (gx#stx-null? _tl3341033931_)
                                       (if (gx#stx-null? _tl3338034019_)
                                           (___kont4122941230_
                                            _hd3337934017_
                                            _hd3340933929_
                                            _hd3334934316_)
                                           (___kont4123741238_))
                                       (___kont4123741238_))))
                               (___kont4123741238_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3335534332_)
                               (if (gx#stx-pair? _tl3335634334_)
                                   (let ((_e3346833686_
                                          (gx#stx-e _tl3335634334_)))
                                     (let ((_tl3347033691_
                                            (##cdr _e3346833686_))
                                           (_hd3346933689_
                                            (##car _e3346833686_)))
                                       (___kont4123741238_)))
                                   (___kont4123741238_))
                               (___kont4123741238_))))))
               (if (gx#stx-eq? '%#quote _hd3335534332_)
                   (if (gx#stx-pair? _tl3335634334_)
                       (let ((_e3340833926_ (gx#stx-e _tl3335634334_)))
                         (let ((_tl3341033931_ (##cdr _e3340833926_))
                               (_hd3340933929_ (##car _e3340833926_)))
                           (if (gx#stx-null? _tl3341033931_)
                               (if (gx#stx-null? _tl3338034019_)
                                   (___kont4122941230_
                                    _hd3337934017_
                                    _hd3340933929_
                                    _hd3334934316_)
                                   (___kont4123741238_))
                               (___kont4123741238_))))
                       (___kont4123741238_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3335534332_)
                       (if (gx#stx-pair? _tl3335634334_)
                           (let ((_e3346833686_ (gx#stx-e _tl3335634334_)))
                             (let ((_tl3347033691_ (##cdr _e3346833686_))
                                   (_hd3346933689_ (##car _e3346833686_)))
                               (___kont4123741238_)))
                           (___kont4123741238_))
                       (___kont4123741238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3335534332_)
                                                       (if (gx#stx-pair?
                                                            _tl3335634334_)
                                                           (let ((_e3340833926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3335634334_)))
                     (let ((_tl3341033931_ (##cdr _e3340833926_))
                           (_hd3340933929_ (##car _e3340833926_)))
                       (if (gx#stx-null? _tl3341033931_)
                           (if (gx#stx-null? _tl3338034019_)
                               (___kont4122941230_
                                _hd3337934017_
                                _hd3340933929_
                                _hd3334934316_)
                               (___kont4123741238_))
                           (___kont4123741238_))))
                   (___kont4123741238_))
               (if (gx#stx-eq? '%#quote-syntax _hd3335534332_)
                   (if (gx#stx-pair? _tl3335634334_)
                       (let ((_e3346833686_ (gx#stx-e _tl3335634334_)))
                         (let ((_tl3347033691_ (##cdr _e3346833686_))
                               (_hd3346933689_ (##car _e3346833686_)))
                           (if (gx#stx-null? _tl3347033691_)
                               (if (gx#stx-eq? '%#ref _hd3338234025_)
                                   (if (gx#stx-pair? _tl3338334027_)
                                       (let ((_e3347733710_
                                              (gx#stx-e _tl3338334027_)))
                                         (let ((_tl3347933715_
                                                (##cdr _e3347733710_))
                                               (_hd3347833713_
                                                (##car _e3347733710_)))
                                           (if (gx#stx-null? _tl3347933715_)
                                               (if (gx#stx-null?
                                                    _tl3338034019_)
                                                   (___kont4123341234_
                                                    _hd3347833713_
                                                    _hd3346933689_
                                                    _hd3334934316_)
                                                   (___kont4123741238_))
                                               (___kont4123741238_))))
                                       (___kont4123741238_))
                                   (___kont4123741238_))
                               (___kont4123741238_))))
                       (___kont4123741238_))
                   (___kont4123741238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3335534332_)
                                                   (if (gx#stx-pair?
                                                        _tl3335634334_)
                                                       (let ((_e3340833926_
                                                              (gx#stx-e
                                                               _tl3335634334_)))
                                                         (let ((_tl3341033931_
                                                                (##cdr _e3340833926_))
                                                               (_hd3340933929_
                                                                (##car _e3340833926_)))
                                                           (if (gx#stx-null?
                                                                _tl3341033931_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3338034019_)
                           (___kont4122941230_
                            _hd3337934017_
                            _hd3340933929_
                            _hd3334934316_)
                           (___kont4123741238_))
                       (___kont4123741238_))))
               (___kont4123741238_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3335534332_)
                                                       (if (gx#stx-pair?
                                                            _tl3335634334_)
                                                           (let ((_e3346833686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3335634334_)))
                     (let ((_tl3347033691_ (##cdr _e3346833686_))
                           (_hd3346933689_ (##car _e3346833686_)))
                       (___kont4123741238_)))
                   (___kont4123741238_))
               (___kont4123741238_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-eq? '%#quote _hd3335534332_)
                                           (if (gx#stx-pair? _tl3335634334_)
                                               (let ((_e3340833926_
                                                      (gx#stx-e
                                                       _tl3335634334_)))
                                                 (let ((_tl3341033931_
                                                        (##cdr _e3340833926_))
                                                       (_hd3340933929_
                                                        (##car _e3340833926_)))
                                                   (if (gx#stx-null?
                                                        _tl3341033931_)
                                                       (if (gx#stx-null?
                                                            _tl3338034019_)
                                                           (___kont4122941230_
                                                            _hd3337934017_
                                                            _hd3340933929_
                                                            _hd3334934316_)
                                                           (___kont4123741238_))
                                                       (___kont4123741238_))))
                                               (___kont4123741238_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3335534332_)
                                               (if (gx#stx-pair?
                                                    _tl3335634334_)
                                                   (let ((_e3346833686_
                                                          (gx#stx-e
                                                           _tl3335634334_)))
                                                     (let ((_tl3347033691_
                                                            (##cdr _e3346833686_))
                                                           (_hd3346933689_
                                                            (##car _e3346833686_)))
                                                       (___kont4123741238_)))
                                                   (___kont4123741238_))
                                               (___kont4123741238_))))))
                               (if (gx#stx-eq? '%#quote _hd3335534332_)
                                   (if (gx#stx-pair? _tl3335634334_)
                                       (let ((_e3340833926_
                                              (gx#stx-e _tl3335634334_)))
                                         (let ((_tl3341033931_
                                                (##cdr _e3340833926_))
                                               (_hd3340933929_
                                                (##car _e3340833926_)))
                                           (___kont4123741238_)))
                                       (___kont4123741238_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3335534332_)
                                       (if (gx#stx-pair? _tl3335634334_)
                                           (let ((_e3346833686_
                                                  (gx#stx-e _tl3335634334_)))
                                             (let ((_tl3347033691_
                                                    (##cdr _e3346833686_))
                                                   (_hd3346933689_
                                                    (##car _e3346833686_)))
                                               (___kont4123741238_)))
                                           (___kont4123741238_))
                                       (___kont4123741238_)))))
                       (if (gx#stx-pair? _tl3335334326_)
                           (let ((_e3337834014_ (gx#stx-e _tl3335334326_)))
                             (let ((_tl3338034019_ (##cdr _e3337834014_))
                                   (_hd3337934017_ (##car _e3337834014_)))
                               (if (gx#stx-pair? _hd3337934017_)
                                   (let ((_e3338134022_
                                          (gx#stx-e _hd3337934017_)))
                                     (let ((_tl3338334027_
                                            (##cdr _e3338134022_))
                                           (_hd3338234025_
                                            (##car _e3338134022_)))
                                       (if (gx#identifier? _hd3338234025_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3338234025_)
                                               (if (gx#stx-pair?
                                                    _tl3338334027_)
                                                   (let ((_e3338434030_
                                                          (gx#stx-e
                                                           _tl3338334027_)))
                                                     (let ((_tl3338634035_
                                                            (##cdr _e3338434030_))
                                                           (_hd3338534033_
                                                            (##car _e3338434030_)))
                                                       (if (gx#stx-null?
                                                            _tl3338634035_)
                                                           (if (gx#stx-null?
                                                                _tl3338034019_)
                                                               (___kont4122741228_
                                                                _hd3338534033_
                                                                _hd3335234324_
                                                                _hd3334934316_)
                                                               (___kont4123741238_))
                                                           (___kont4123741238_))))
                                                   (___kont4123741238_))
                                               (___kont4123741238_))
                                           (___kont4123741238_))))
                                   (___kont4123741238_))))
                           (___kont4123741238_)))))
               (if (gx#stx-pair? _tl3335334326_)
                   (let ((_e3337834014_ (gx#stx-e _tl3335334326_)))
                     (let ((_tl3338034019_ (##cdr _e3337834014_))
                           (_hd3337934017_ (##car _e3337834014_)))
                       (if (gx#stx-pair? _hd3337934017_)
                           (let ((_e3338134022_ (gx#stx-e _hd3337934017_)))
                             (let ((_tl3338334027_ (##cdr _e3338134022_))
                                   (_hd3338234025_ (##car _e3338134022_)))
                               (if (gx#identifier? _hd3338234025_)
                                   (if (gx#stx-eq? '%#quote _hd3338234025_)
                                       (if (gx#stx-pair? _tl3338334027_)
                                           (let ((_e3338434030_
                                                  (gx#stx-e _tl3338334027_)))
                                             (let ((_tl3338634035_
                                                    (##cdr _e3338434030_))
                                                   (_hd3338534033_
                                                    (##car _e3338434030_)))
                                               (if (gx#stx-null?
                                                    _tl3338634035_)
                                                   (if (gx#stx-null?
                                                        _tl3338034019_)
                                                       (___kont4122741228_
                                                        _hd3338534033_
                                                        _hd3335234324_
                                                        _hd3334934316_)
                                                       (___kont4123741238_))
                                                   (___kont4123741238_))))
                                           (___kont4123741238_))
                                       (___kont4123741238_))
                                   (___kont4123741238_))))
                           (___kont4123741238_))))
                   (___kont4123741238_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4123741238_))
                                           (___kont4123741238_))))
                                   (___kont4123741238_))
                               (if (gx#stx-eq? '%#lambda _hd3334634308_)
                                   (if (gx#stx-pair? _tl3334734310_)
                                       (let ((_e3349233550_
                                              (gx#stx-e _tl3334734310_)))
                                         (let ((_tl3349433555_
                                                (##cdr _e3349233550_))
                                               (_hd3349333553_
                                                (##car _e3349233550_)))
                                           (if (gx#stx-pair? _hd3349333553_)
                                               (let ((_e3349533558_
                                                      (gx#stx-e
                                                       _hd3349333553_)))
                                                 (let ((_tl3349733563_
                                                        (##cdr _e3349533558_))
                                                       (_hd3349633561_
                                                        (##car _e3349533558_)))
                                                   (if (gx#stx-null?
                                                        _tl3349733563_)
                                                       (if (gx#stx-pair?
                                                            _tl3349433555_)
                                                           (let ((_e3349833566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3349433555_)))
                     (let ((_tl3350033571_ (##cdr _e3349833566_))
                           (_hd3349933569_ (##car _e3349833566_)))
                       (if (gx#stx-null? _tl3350033571_)
                           (if (gx#stx-pair? _tl3334434302_)
                               (let ((_e3350133574_ (gx#stx-e _tl3334434302_)))
                                 (let ((_tl3350333579_ (##cdr _e3350133574_))
                                       (_hd3350233577_ (##car _e3350133574_)))
                                   (if (gx#stx-pair? _hd3350233577_)
                                       (let ((_e3350433582_
                                              (gx#stx-e _hd3350233577_)))
                                         (let ((_tl3350633587_
                                                (##cdr _e3350433582_))
                                               (_hd3350533585_
                                                (##car _e3350433582_)))
                                           (if (gx#identifier? _hd3350533585_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd3350533585_)
                                                   (if (gx#stx-pair?
                                                        _tl3350633587_)
                                                       (let ((_e3350733590_
                                                              (gx#stx-e
                                                               _tl3350633587_)))
                                                         (let ((_tl3350933595_
                                                                (##cdr _e3350733590_))
                                                               (_hd3350833593_
                                                                (##car _e3350733590_)))
                                                           (if (gx#stx-null?
                                                                _tl3350933595_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3350333579_)
                           (___kont4123541236_
                            _hd3350833593_
                            _hd3349933569_
                            _hd3349633561_)
                           (___kont4123741238_))
                       (___kont4123741238_))))
               (___kont4123741238_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4123741238_))
                                               (___kont4123741238_))))
                                       (___kont4123741238_))))
                               (___kont4123741238_))
                           (___kont4123741238_))))
                   (___kont4123741238_))
               (___kont4123741238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4123741238_))))
                                       (___kont4123741238_))
                                   (___kont4123741238_)))
                           (___kont4123741238_))))
                   (___kont4123741238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4123741238_))
                                               (___kont4123741238_))
                                           (___kont4123741238_))))
                                   (___kont4123741238_)))))))))
                (_assert-type32311_
                 (lambda (_id33210_ _t33211_)
                   (letrec ((_super-e33213_
                             (lambda (_t33310_)
                               (let ((_tid3331133313_
                                      (##structure-ref
                                       _t33310_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                 (if _tid3331133313_
                                     (let ((_tid33316_ _tid3331133313_))
                                       (gxc#optimizer-resolve-type _tid33316_))
                                     '#f)))))
                     (let _lp33215_ ((_rest33217_ _env-type32293_))
                       (let* ((_rest3321833226_ _rest33217_)
                              (_else3322033234_ (lambda () '#!void))
                              (_K3322233298_
                               (lambda (_rest33237_ _type-info33238_)
                                 (let* ((_type-info3323933251_
                                         _type-info33238_)
                                        (_else3324133259_
                                         (lambda () (_lp33215_ _rest33237_)))
                                        (_K3324333274_
                                         (lambda (_val33262_
                                                  _xt33263_
                                                  _xid33264_)
                                           (if (gx#free-identifier=?
                                                _id33210_
                                                _xid33264_)
                                               (if (eq? _t33211_ _xt33263_)
                                                   _val33262_
                                                   (if _val33262_
                                                       (if (if (##structure-instance-of?
                                                                _t33211_
                                                                'gxc#!struct-type::t)
                                                               (##structure-instance-of?
                                                                _xt33263_
                                                                'gxc#!struct-type::t)
                                                               '#f)
                                                           (let _subtype?33266_ ((_xt33268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          (_super-e33213_ _xt33263_)))
                     (if (not _xt33268_)
                         '#f
                         (if (eq? _xt33268_ _t33211_)
                             '#t
                             (_subtype?33266_ (_super-e33213_ _xt33268_)))))
                   '#f)
               (if (if (##structure-instance-of? _t33211_ 'gxc#!struct-type::t)
                       (##structure-instance-of?
                        _xt33263_
                        'gxc#!struct-type::t)
                       '#f)
                   (let _supertype?33270_ ((_t33272_
                                            (_super-e33213_ _t33211_)))
                     (if (not _t33272_)
                         (_lp33215_ _rest33237_)
                         (if (eq? _t33272_ _xt33263_)
                             '#f
                             (_supertype?33270_ (_super-e33213_ _t33272_)))))
                   (_lp33215_ _rest33237_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp33215_ _rest33237_)))))
                                   (if (##pair? _type-info3323933251_)
                                       (let ((_hd3324433277_
                                              (##car _type-info3323933251_))
                                             (_tl3324533279_
                                              (##cdr _type-info3323933251_)))
                                         (let ((_xid33282_ _hd3324433277_))
                                           (if (##pair? _tl3324533279_)
                                               (let ((_hd3324633284_
                                                      (##car _tl3324533279_))
                                                     (_tl3324733286_
                                                      (##cdr _tl3324533279_)))
                                                 (let ((_xt33289_
                                                        _hd3324633284_))
                                                   (if (##pair? _tl3324733286_)
                                                       (let ((_hd3324833291_
                                                              (##car _tl3324733286_))
                                                             (_tl3324933293_
                                                              (##cdr _tl3324733286_)))
                                                         (let ((_val33296_
                                                                _hd3324833291_))
                                                           (if (##null? _tl3324933293_)
                                                               (_K3324333274_
                                                                _val33296_
                                                                _xt33289_
                                                                _xid33282_)
                                                               (_else3324133259_))))
                                                       (_else3324133259_))))
                                               (_else3324133259_))))
                                       (_else3324133259_))))))
                         (if (##pair? _rest3321833226_)
                             (let ((_hd3322333301_ (##car _rest3321833226_))
                                   (_tl3322433303_ (##cdr _rest3321833226_)))
                               (let* ((_type-info33306_ _hd3322333301_)
                                      (_rest33308_ _tl3322433303_))
                                 (_K3322233298_ _rest33308_ _type-info33306_)))
                             (_else3322033234_)))))))
                (_assert-count32312_
                 (lambda (_id33109_ _sym33110_ _count33111_)
                   (let _lp33113_ ((_rest33115_ _env-type32293_))
                     (let* ((_rest3311633124_ _rest33115_)
                            (_else3311833132_ (lambda () '#!void))
                            (_K3312033198_
                             (lambda (_rest33135_ _type-info33136_)
                               (let* ((_type-info3313733151_ _type-info33136_)
                                      (_else3313933159_
                                       (lambda () (_lp33113_ _rest33135_)))
                                      (_K3314133167_
                                       (lambda (_val33162_
                                                _xcount33163_
                                                _xsym33164_
                                                _xid33165_)
                                         (if (if (eq? _sym33110_ _xsym33164_)
                                                 (gx#free-identifier=?
                                                  _id33109_
                                                  _xid33165_)
                                                 '#f)
                                             (if _val33162_
                                                 (fx= _count33111_
                                                      _xcount33163_)
                                                 (if (fx= _count33111_
                                                          _xcount33163_)
                                                     '#f
                                                     (_lp33113_ _rest33135_)))
                                             (_lp33113_ _rest33135_)))))
                                 (if (##pair? _type-info3313733151_)
                                     (let ((_hd3314233170_
                                            (##car _type-info3313733151_))
                                           (_tl3314333172_
                                            (##cdr _type-info3313733151_)))
                                       (let ((_xid33175_ _hd3314233170_))
                                         (if (##pair? _tl3314333172_)
                                             (let ((_hd3314433177_
                                                    (##car _tl3314333172_))
                                                   (_tl3314533179_
                                                    (##cdr _tl3314333172_)))
                                               (let ((_xsym33182_
                                                      _hd3314433177_))
                                                 (if (##pair? _tl3314533179_)
                                                     (let ((_hd3314633184_
                                                            (##car _tl3314533179_))
                                                           (_tl3314733186_
                                                            (##cdr _tl3314533179_)))
                                                       (let ((_xcount33189_
                                                              _hd3314633184_))
                                                         (if (##pair? _tl3314733186_)
                                                             (let ((_hd3314833191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl3314733186_))
                           (_tl3314933193_ (##cdr _tl3314733186_)))
                       (let ((_val33196_ _hd3314833191_))
                         (if (##null? _tl3314933193_)
                             (_K3314133167_
                              _val33196_
                              _xcount33189_
                              _xsym33182_
                              _xid33175_)
                             (_else3313933159_))))
                     (_else3313933159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else3313933159_))))
                                             (_else3313933159_))))
                                     (_else3313933159_))))))
                       (if (##pair? _rest3311633124_)
                           (let ((_hd3312133201_ (##car _rest3311633124_))
                                 (_tl3312233203_ (##cdr _rest3311633124_)))
                             (let* ((_type-info33206_ _hd3312133201_)
                                    (_rest33208_ _tl3312233203_))
                               (_K3312033198_ _rest33208_ _type-info33206_)))
                           (_else3311833132_))))))
                (_assert-eqf32313_
                 (lambda (_id32999_ _sym33000_ _datum33001_)
                   (letrec ((_eqf33003_
                             (lambda (_sym33104_)
                               (let ((_$e33106_ _sym33104_))
                                 (if (eq? 'eq? _$e33106_)
                                     eq?
                                     (if (eq? 'eqv? _$e33106_)
                                         eqv?
                                         (if (eq? 'equal? _$e33106_)
                                             equal?
                                             (if (eq? 'free-identifier=?
                                                      _$e33106_)
                                                 gx#free-identifier=?
                                                 (if (eq? 'stx-eq? _$e33106_)
                                                     gx#stx-eq?
                                                     (gxc#raise-compile-error
                                                      '"Unexpected eqf symbol"
                                                      _body32054_
                                                      _sym33104_))))))))))
                     (let _lp33005_ ((_rest33007_ _env-type32293_))
                       (let* ((_rest3300833016_ _rest33007_)
                              (_else3301033024_ (lambda () '#!void))
                              (_K3301233092_
                               (lambda (_rest33027_ _type-info33028_)
                                 (let* ((_type-info3302933043_
                                         _type-info33028_)
                                        (_else3303133051_
                                         (lambda () (_lp33005_ _rest33027_)))
                                        (_K3303333061_
                                         (lambda (_val33054_
                                                  _xdatum33055_
                                                  _xsym33056_
                                                  _xid33057_)
                                           (if (if (eq? _sym33000_ _xsym33056_)
                                                   (gx#free-identifier=?
                                                    _id32999_
                                                    _xid33057_)
                                                   '#f)
                                               (let ((_=?33059_
                                                      (_eqf33003_ _sym33000_)))
                                                 (if _val33054_
                                                     (_=?33059_
                                                      _datum33001_
                                                      _xdatum33055_)
                                                     (if (_=?33059_
                                                          _datum33001_
                                                          _xdatum33055_)
                                                         '#f
                                                         (_lp33005_
                                                          _rest33027_))))
                                               (_lp33005_ _rest33027_)))))
                                   (if (##pair? _type-info3302933043_)
                                       (let ((_hd3303433064_
                                              (##car _type-info3302933043_))
                                             (_tl3303533066_
                                              (##cdr _type-info3302933043_)))
                                         (let ((_xid33069_ _hd3303433064_))
                                           (if (##pair? _tl3303533066_)
                                               (let ((_hd3303633071_
                                                      (##car _tl3303533066_))
                                                     (_tl3303733073_
                                                      (##cdr _tl3303533066_)))
                                                 (let ((_xsym33076_
                                                        _hd3303633071_))
                                                   (if (##pair? _tl3303733073_)
                                                       (let ((_hd3303833078_
                                                              (##car _tl3303733073_))
                                                             (_tl3303933080_
                                                              (##cdr _tl3303733073_)))
                                                         (let ((_xdatum33083_
                                                                _hd3303833078_))
                                                           (if (##pair? _tl3303933080_)
                                                               (let ((_hd3304033085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _tl3303933080_))
                             (_tl3304133087_ (##cdr _tl3303933080_)))
                         (let ((_val33090_ _hd3304033085_))
                           (if (##null? _tl3304133087_)
                               (_K3303333061_
                                _val33090_
                                _xdatum33083_
                                _xsym33076_
                                _xid33069_)
                               (_else3303133051_))))
                       (_else3303133051_))))
               (_else3303133051_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else3303133051_))))
                                       (_else3303133051_))))))
                         (if (##pair? _rest3300833016_)
                             (let ((_hd3301333095_ (##car _rest3300833016_))
                                   (_tl3301433097_ (##cdr _rest3300833016_)))
                               (let* ((_type-info33100_ _hd3301333095_)
                                      (_rest33102_ _tl3301433097_))
                                 (_K3301233092_ _rest33102_ _type-info33100_)))
                             (_else3301033024_)))))))
                (_bind-e__3963639637_
                 (lambda (_bind32902_ _body32903_ _continue32904_)
                   (let _lp32906_ ((_rest32908_ _bind32902_)
                                   (_subst32909_ '())
                                   (_locals32910_ '())
                                   (_env32911_ _env-bind32294_))
                     (let* ((_rest3291232920_ _rest32908_)
                            (_else3291432934_
                             (lambda ()
                               (let* ((_body32928_
                                       (if (null? _subst32909_)
                                           _body32903_
                                           (gxc#apply-expression-subst*
                                            _body32903_
                                            _subst32909_)))
                                      (_body32931_
                                       (_do-bind!32305_
                                        _env32911_
                                        (lambda ()
                                          (_continue32904_ _body32928_)))))
                                 (if (null? _locals32910_)
                                     _body32931_
                                     (cons '%#let-values
                                           (cons _locals32910_
                                                 (cons _body32931_ '())))))))
                            (_K3291632975_
                             (lambda (_rest32937_ _bind32938_)
                               (let* ((_bind3293932946_ _bind32938_)
                                      (_E3294132950_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3293932946_)))
                                      (_K3294232963_
                                       (lambda (_expr32953_ _id32954_)
                                         (let* ((_sexpr32956_
                                                 (gxc#apply-generate-runtime-repr
                                                  _expr32953_))
                                                (_$e32958_
                                                 (assget _sexpr32956_
                                                         _env-bind32294_)))
                                           (if _$e32958_
                                               ((lambda (_xid32961_)
                                                  (_lp32906_
                                                   _rest32937_
                                                   (cons (cons _id32954_
                                                               _xid32961_)
                                                         _subst32909_)
                                                   _locals32910_
                                                   _env32911_))
                                                _$e32958_)
                                               (_lp32906_
                                                _rest32937_
                                                _subst32909_
                                                (cons (cons (cons _id32954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr32953_ '()))
              _locals32910_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _sexpr32956_
                                                            _id32954_)
                                                      _env32911_)))))))
                                 (if (##pair? _bind3293932946_)
                                     (let ((_hd3294332966_
                                            (##car _bind3293932946_))
                                           (_tl3294432968_
                                            (##cdr _bind3293932946_)))
                                       (let* ((_id32971_ _hd3294332966_)
                                              (_expr32973_ _tl3294432968_))
                                         (_K3294232963_
                                          _expr32973_
                                          _id32971_)))
                                     (_E3294132950_))))))
                       (if (##pair? _rest3291232920_)
                           (let ((_hd3291732978_ (##car _rest3291232920_))
                                 (_tl3291832980_ (##cdr _rest3291232920_)))
                             (let* ((_bind32983_ _hd3291732978_)
                                    (_rest32985_ _tl3291832980_))
                               (_K3291632975_ _rest32985_ _bind32983_)))
                           (_else3291432934_))))))
                (_bind-e__0__3963839639_
                 (lambda (_bind32990_ _body32991_)
                   (let ((_continue32993_ _optimize-e32307_))
                     (_bind-e__3963639637_
                      _bind32990_
                      _body32991_
                      _continue32993_))))
                (_bind-e32314_
                 (lambda _g42734_
                   (let ((_g42733_ (length _g42734_)))
                     (cond ((##fx= _g42733_ 2)
                            (apply _bind-e__0__3963839639_ _g42734_))
                           ((##fx= _g42733_ 3)
                            (apply _bind-e__3963639637_ _g42734_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42734_))))))
                (_lookup-block32315_
                 (lambda (_id32897_)
                   (find (lambda (_block32899_)
                           (gx#free-identifier=? (car _block32899_) _id32897_))
                         _blocks32057_)))
                (_inline-block32316_
                 (lambda (_block32773_ _args32774_)
                   (let* ((_kont32776_ (caddr _block32773_))
                          (_g3277832804_
                           (lambda (_g3277932801_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3277932801_)))
                          (_g3277732894_
                           (lambda (_g3277932807_)
                             (if (gx#stx-pair? _g3277932807_)
                                 (let ((_e3278232809_
                                        (gx#stx-e _g3277932807_)))
                                   (let ((_hd3278332812_ (##car _e3278232809_))
                                         (_tl3278432814_
                                          (##cdr _e3278232809_)))
                                     (if (gx#identifier? _hd3278332812_)
                                         (if (gx#stx-eq?
                                              '%#lambda
                                              _hd3278332812_)
                                             (if (gx#stx-pair? _tl3278432814_)
                                                 (let ((_e3278532817_
                                                        (gx#stx-e
                                                         _tl3278432814_)))
                                                   (let ((_hd3278632820_
                                                          (##car _e3278532817_))
                                                         (_tl3278732822_
                                                          (##cdr _e3278532817_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd3278632820_)
                                                         (let ((_g42735_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3278632820_
                         '0)))
                   (begin
                     (let ((_g42736_
                            (if (##values? _g42735_)
                                (##vector-length _g42735_)
                                1)))
                       (if (not (##fx= _g42736_ 2))
                           (error "Context expects 2 values" _g42736_)))
                     (let ((_target3278832825_ (##vector-ref _g42735_ 0))
                           (_tl3279032827_ (##vector-ref _g42735_ 1)))
                       (if (gx#stx-null? _tl3279032827_)
                           (letrec ((_loop3279132830_
                                     (lambda (_hd3278932833_ _id3279532835_)
                                       (if (gx#stx-pair? _hd3278932833_)
                                           (let ((_e3279232838_
                                                  (gx#stx-e _hd3278932833_)))
                                             (let ((_lp-hd3279332841_
                                                    (##car _e3279232838_))
                                                   (_lp-tl3279432843_
                                                    (##cdr _e3279232838_)))
                                               (_loop3279132830_
                                                _lp-tl3279432843_
                                                (cons _lp-hd3279332841_
                                                      _id3279532835_))))
                                           (let ((_id3279632846_
                                                  (reverse _id3279532835_)))
                                             (if (gx#stx-pair? _tl3278732822_)
                                                 (let ((_e3279732849_
                                                        (gx#stx-e
                                                         _tl3278732822_)))
                                                   (let ((_hd3279832852_
                                                          (##car _e3279732849_))
                                                         (_tl3279932854_
                                                          (##cdr _e3279732849_)))
                                                     (if (gx#stx-null?
                                                          _tl3279932854_)
                                                         ((lambda (_L32857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L32858_)
                    (if (null? (begin
                                 '#!void
                                 (foldr1 (lambda (_g3287732880_ _g3287832882_)
                                           (cons _g3287732880_ _g3287832882_))
                                         '()
                                         _L32858_)))
                        _L32857_
                        (let ((_subst32892_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3288432887_
                                                       _g3288532889_)
                                                (cons _g3288432887_
                                                      _g3288532889_))
                                              '()
                                              _L32858_))
                                    _args32774_)))
                          (gxc#apply-expression-subst*
                           _L32857_
                           _subst32892_))))
                  _hd3279832852_
                  _id3279632846_)
                 (_g3277832804_ _g3277932807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3277832804_
                                                  _g3277932807_)))))))
                             (_loop3279132830_ _target3278832825_ '()))
                           (_g3277832804_ _g3277932807_)))))
                 (_g3277832804_ _g3277932807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3277832804_ _g3277932807_))
                                             (_g3277832804_ _g3277932807_))
                                         (_g3277832804_ _g3277932807_))))
                                 (_g3277832804_ _g3277932807_)))))
                     (_g3277732894_ _kont32776_))))
                (_nonlinear-block?32317_
                 (lambda (_block32322_)
                   (letrec ((_nonlinear-expr?32324_
                             (lambda (_expr32432_)
                               (let* ((___stx4169341694_ _expr32432_)
                                      (_g3243832504_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4169341694_))))
                                 (let ((___kont4169541696_ (lambda () '#t))
                                       (___kont4169741698_
                                        (lambda (_L32703_)
                                          (let* ((___stx4167541676_ _L32703_)
                                                 (_g3272132730_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx4167541676_))))
                                            (let ((___kont4167741678_
                                                   (lambda () '#f))
                                                  (___kont4167941680_
                                                   (lambda () '#t)))
                                              (if (gx#stx-pair?
                                                   ___stx4167541676_)
                                                  (let ((_e3272332742_
                                                         (gx#stx-e
                                                          ___stx4167541676_)))
                                                    (let ((_tl3272532747_
                                                           (##cdr _e3272332742_))
                                                          (_hd3272432745_
                                                           (##car _e3272332742_)))
                                                      (if (gx#identifier?
                                                           _hd3272432745_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd3272432745_)
                                                              (___kont4167741678_)
                                                              (___kont4167941680_))
                                                          (___kont4167941680_))))
                                                  (___kont4167941680_))))))
                                       (___kont4170141702_
                                        (lambda (_L32601_)
                                          (_nonlinear-expr?32324_ _L32601_)))
                                       (___kont4170341704_
                                        (lambda (_L32548_ _L32549_ _L32550_)
                                          (let ((_$e32569_
                                                 (_nonlinear-expr?32324_
                                                  _L32549_)))
                                            (if _$e32569_
                                                _$e32569_
                                                (_nonlinear-expr?32324_
                                                 _L32548_)))))
                                       (___kont4170541706_ (lambda () '#f)))
                                   (let* ((___match4175641757_
                                           (lambda (_e3247632577_
                                                    _hd3247732580_
                                                    _tl3247832582_
                                                    _e3247932585_
                                                    _hd3248032588_
                                                    _tl3248132590_)
                                             (if (gx#stx-pair? _tl3248132590_)
                                                 (let ((_e3248232593_
                                                        (gx#stx-e
                                                         _tl3248132590_)))
                                                   (let ((_tl3248432598_
                                                          (##cdr _e3248232593_))
                                                         (_hd3248332596_
                                                          (##car _e3248232593_)))
                                                     (if (gx#stx-null?
                                                          _tl3248432598_)
                                                         (___kont4170141702_
                                                          _hd3248332596_)
                                                         (___kont4170541706_))))
                                                 (___kont4170541706_))))
                                          (___match4174041741_
                                           (lambda (_e3244432619_
                                                    _hd3244532622_
                                                    _tl3244632624_
                                                    _e3244732627_
                                                    _hd3244832630_
                                                    _tl3244932632_
                                                    ___splice4169941700_
                                                    _target3245032635_
                                                    _tl3245232637_)
                                             (letrec ((_loop3245332640_
                                                       (lambda (_hd3245132643_)
                                                         (if (gx#stx-pair?
                                                              _hd3245132643_)
                                                             (let ((_e3245432646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3245132643_)))
                       (let ((_lp-tl3245632651_ (##cdr _e3245432646_))
                             (_lp-hd3245532649_ (##car _e3245432646_)))
                         (if (gx#stx-pair? _lp-hd3245532649_)
                             (let ((_e3245732654_
                                    (gx#stx-e _lp-hd3245532649_)))
                               (let ((_tl3245932659_ (##cdr _e3245732654_))
                                     (_hd3245832657_ (##car _e3245732654_)))
                                 (if (gx#stx-pair? _hd3245832657_)
                                     (let ((_e3246032662_
                                            (gx#stx-e _hd3245832657_)))
                                       (let ((_tl3246232667_
                                              (##cdr _e3246032662_))
                                             (_hd3246132665_
                                              (##car _e3246032662_)))
                                         (if (gx#stx-null? _tl3246232667_)
                                             (if (gx#stx-pair? _tl3245932659_)
                                                 (let ((_e3246332670_
                                                        (gx#stx-e
                                                         _tl3245932659_)))
                                                   (let ((_tl3246532675_
                                                          (##cdr _e3246332670_))
                                                         (_hd3246432673_
                                                          (##car _e3246332670_)))
                                                     (if (gx#stx-pair?
                                                          _hd3246432673_)
                                                         (let ((_e3246632678_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3246432673_)))
                   (let ((_tl3246832683_ (##cdr _e3246632678_))
                         (_hd3246732681_ (##car _e3246632678_)))
                     (if (gx#identifier? _hd3246732681_)
                         (if (gx#stx-eq? '%#ref _hd3246732681_)
                             (if (gx#stx-pair? _tl3246832683_)
                                 (let ((_e3246932686_
                                        (gx#stx-e _tl3246832683_)))
                                   (let ((_tl3247132691_ (##cdr _e3246932686_))
                                         (_hd3247032689_
                                          (##car _e3246932686_)))
                                     (if (gx#stx-null? _tl3247132691_)
                                         (if (gx#stx-null? _tl3246532675_)
                                             (_loop3245332640_
                                              _lp-tl3245632651_)
                                             (___match4175641757_
                                              _e3244432619_
                                              _hd3244532622_
                                              _tl3244632624_
                                              _e3244732627_
                                              _hd3244832630_
                                              _tl3244932632_))
                                         (___match4175641757_
                                          _e3244432619_
                                          _hd3244532622_
                                          _tl3244632624_
                                          _e3244732627_
                                          _hd3244832630_
                                          _tl3244932632_))))
                                 (___match4175641757_
                                  _e3244432619_
                                  _hd3244532622_
                                  _tl3244632624_
                                  _e3244732627_
                                  _hd3244832630_
                                  _tl3244932632_))
                             (___match4175641757_
                              _e3244432619_
                              _hd3244532622_
                              _tl3244632624_
                              _e3244732627_
                              _hd3244832630_
                              _tl3244932632_))
                         (___match4175641757_
                          _e3244432619_
                          _hd3244532622_
                          _tl3244632624_
                          _e3244732627_
                          _hd3244832630_
                          _tl3244932632_))))
                 (___match4175641757_
                  _e3244432619_
                  _hd3244532622_
                  _tl3244632624_
                  _e3244732627_
                  _hd3244832630_
                  _tl3244932632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___match4175641757_
                                                  _e3244432619_
                                                  _hd3244532622_
                                                  _tl3244632624_
                                                  _e3244732627_
                                                  _hd3244832630_
                                                  _tl3244932632_))
                                             (___match4175641757_
                                              _e3244432619_
                                              _hd3244532622_
                                              _tl3244632624_
                                              _e3244732627_
                                              _hd3244832630_
                                              _tl3244932632_))))
                                     (___match4175641757_
                                      _e3244432619_
                                      _hd3244532622_
                                      _tl3244632624_
                                      _e3244732627_
                                      _hd3244832630_
                                      _tl3244932632_))))
                             (___match4175641757_
                              _e3244432619_
                              _hd3244532622_
                              _tl3244632624_
                              _e3244732627_
                              _hd3244832630_
                              _tl3244932632_))))
                     (let ()
                       (if (gx#stx-pair? _tl3244932632_)
                           (let ((_e3247232695_ (gx#stx-e _tl3244932632_)))
                             (let ((_tl3247432700_ (##cdr _e3247232695_))
                                   (_hd3247332698_ (##car _e3247232695_)))
                               (if (gx#stx-null? _tl3247432700_)
                                   (___kont4169741698_ _hd3247332698_)
                                   (___kont4170541706_))))
                           (___kont4170541706_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop3245332640_
                                                _target3245032635_)))))
                                     (if (gx#stx-pair? ___stx4169341694_)
                                         (let ((_e3244032760_
                                                (gx#stx-e ___stx4169341694_)))
                                           (let ((_tl3244232765_
                                                  (##cdr _e3244032760_))
                                                 (_hd3244132763_
                                                  (##car _e3244032760_)))
                                             (if (gx#identifier?
                                                  _hd3244132763_)
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3244132763_)
                                                     (___kont4169541696_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _hd3244132763_)
                                                         (if (gx#stx-pair?
                                                              _tl3244232765_)
                                                             (let ((_e3244732627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3244232765_)))
                       (let ((_tl3244932632_ (##cdr _e3244732627_))
                             (_hd3244832630_ (##car _e3244732627_)))
                         (if (gx#stx-pair/null? _hd3244832630_)
                             (let ((___splice4169941700_
                                    (gx#syntax-split-splice
                                     _hd3244832630_
                                     '0)))
                               (let ((_tl3245232637_
                                      (##vector-ref ___splice4169941700_ '1))
                                     (_target3245032635_
                                      (##vector-ref ___splice4169941700_ '0)))
                                 (if (gx#stx-null? _tl3245232637_)
                                     (___match4174041741_
                                      _e3244032760_
                                      _hd3244132763_
                                      _tl3244232765_
                                      _e3244732627_
                                      _hd3244832630_
                                      _tl3244932632_
                                      ___splice4169941700_
                                      _target3245032635_
                                      _tl3245232637_)
                                     (if (gx#stx-pair? _tl3244932632_)
                                         (let ((_e3248232593_
                                                (gx#stx-e _tl3244932632_)))
                                           (let ((_tl3248432598_
                                                  (##cdr _e3248232593_))
                                                 (_hd3248332596_
                                                  (##car _e3248232593_)))
                                             (if (gx#stx-null? _tl3248432598_)
                                                 (___kont4170141702_
                                                  _hd3248332596_)
                                                 (___kont4170541706_))))
                                         (___kont4170541706_)))))
                             (if (gx#stx-pair? _tl3244932632_)
                                 (let ((_e3248232593_
                                        (gx#stx-e _tl3244932632_)))
                                   (let ((_tl3248432598_ (##cdr _e3248232593_))
                                         (_hd3248332596_
                                          (##car _e3248232593_)))
                                     (if (gx#stx-null? _tl3248432598_)
                                         (___kont4170141702_ _hd3248332596_)
                                         (___kont4170541706_))))
                                 (___kont4170541706_)))))
                     (___kont4170541706_))
                 (if (gx#stx-eq? '%#if _hd3244132763_)
                     (if (gx#stx-pair? _tl3244232765_)
                         (let ((_e3249132524_ (gx#stx-e _tl3244232765_)))
                           (let ((_tl3249332529_ (##cdr _e3249132524_))
                                 (_hd3249232527_ (##car _e3249132524_)))
                             (if (gx#stx-pair? _tl3249332529_)
                                 (let ((_e3249432532_
                                        (gx#stx-e _tl3249332529_)))
                                   (let ((_tl3249632537_ (##cdr _e3249432532_))
                                         (_hd3249532535_
                                          (##car _e3249432532_)))
                                     (if (gx#stx-pair? _tl3249632537_)
                                         (let ((_e3249732540_
                                                (gx#stx-e _tl3249632537_)))
                                           (let ((_tl3249932545_
                                                  (##cdr _e3249732540_))
                                                 (_hd3249832543_
                                                  (##car _e3249732540_)))
                                             (if (gx#stx-null? _tl3249932545_)
                                                 (___kont4170341704_
                                                  _hd3249832543_
                                                  _hd3249532535_
                                                  _hd3249232527_)
                                                 (___kont4170541706_))))
                                         (___kont4170541706_))))
                                 (___kont4170541706_))))
                         (___kont4170541706_))
                     (___kont4170541706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4170541706_))))
                                         (___kont4170541706_))))))))
                     (let* ((_kont32326_ (caddr _block32322_))
                            (_g3232832354_
                             (lambda (_g3232932351_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3232932351_)))
                            (_g3232732429_
                             (lambda (_g3232932357_)
                               (if (gx#stx-pair? _g3232932357_)
                                   (let ((_e3233232359_
                                          (gx#stx-e _g3232932357_)))
                                     (let ((_hd3233332362_
                                            (##car _e3233232359_))
                                           (_tl3233432364_
                                            (##cdr _e3233232359_)))
                                       (if (gx#identifier? _hd3233332362_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd3233332362_)
                                               (if (gx#stx-pair?
                                                    _tl3233432364_)
                                                   (let ((_e3233532367_
                                                          (gx#stx-e
                                                           _tl3233432364_)))
                                                     (let ((_hd3233632370_
                                                            (##car _e3233532367_))
                                                           (_tl3233732372_
                                                            (##cdr _e3233532367_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd3233632370_)
                                                           (let ((_g42737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd3233632370_ '0)))
                     (begin
                       (let ((_g42738_
                              (if (##values? _g42737_)
                                  (##vector-length _g42737_)
                                  1)))
                         (if (not (##fx= _g42738_ 2))
                             (error "Context expects 2 values" _g42738_)))
                       (let ((_target3233832375_ (##vector-ref _g42737_ 0))
                             (_tl3234032377_ (##vector-ref _g42737_ 1)))
                         (if (gx#stx-null? _tl3234032377_)
                             (letrec ((_loop3234132380_
                                       (lambda (_hd3233932383_ _id3234532385_)
                                         (if (gx#stx-pair? _hd3233932383_)
                                             (let ((_e3234232388_
                                                    (gx#stx-e _hd3233932383_)))
                                               (let ((_lp-hd3234332391_
                                                      (##car _e3234232388_))
                                                     (_lp-tl3234432393_
                                                      (##cdr _e3234232388_)))
                                                 (_loop3234132380_
                                                  _lp-tl3234432393_
                                                  (cons _lp-hd3234332391_
                                                        _id3234532385_))))
                                             (let ((_id3234632396_
                                                    (reverse _id3234532385_)))
                                               (if (gx#stx-pair?
                                                    _tl3233732372_)
                                                   (let ((_e3234732399_
                                                          (gx#stx-e
                                                           _tl3233732372_)))
                                                     (let ((_hd3234832402_
                                                            (##car _e3234732399_))
                                                           (_tl3234932404_
                                                            (##cdr _e3234732399_)))
                                                       (if (gx#stx-null?
                                                            _tl3234932404_)
                                                           ((lambda (_L32407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L32408_)
                      (_nonlinear-expr?32324_ _L32407_))
                    _hd3234832402_
                    _id3234632396_)
                   (_g3232832354_ _g3232932357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3232832354_
                                                    _g3232932357_)))))))
                               (_loop3234132380_ _target3233832375_ '()))
                             (_g3232832354_ _g3232932357_)))))
                   (_g3232832354_ _g3232932357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3232832354_
                                                    _g3232932357_))
                                               (_g3232832354_ _g3232932357_))
                                           (_g3232832354_ _g3232932357_))))
                                   (_g3232832354_ _g3232932357_)))))
                       (_g3232732429_ _kont32326_))))))
        (_do-assert32296_
         _assert32055_
         (lambda ()
           (_do-bind32303_
            _bind32056_
            (lambda ()
              (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                  (_do-splice!32306_
                   (lambda () (_optimize-e32307_ _body32054_)))
                  (_optimize-e32307_ _body32054_)))))))))
  (define gxc#optimize-match-prune-blocks
    (lambda (_blocks31966_ _konts31967_)
      (letrec* ((_rtab31969_ (make-hash-table-eq)))
        (begin
          (for-each
           (lambda (_block31971_)
             (gxc#apply-collect-runtime-refs (caddr _block31971_) _rtab31969_))
           _konts31967_)
          (let _lp31973_ ((_rest31975_ _blocks31966_) (_r31976_ '()))
            (let* ((_rest3197731985_ _rest31975_)
                   (_else3197931993_ (lambda () (reverse _r31976_)))
                   (_K3198132042_
                    (lambda (_rest31996_ _block31997_)
                      (let* ((_block3199832009_ _block31997_)
                             (_E3200032013_
                              (lambda ()
                                (error '"No clause matching"
                                       _block3199832009_)))
                             (_K3200132020_
                              (lambda (_kont32016_ _type32017_ _name32018_)
                                (if (table-ref
                                     _rtab31969_
                                     (gxc#identifier-symbol _name32018_)
                                     '#f)
                                    (begin
                                      (gxc#apply-collect-runtime-refs
                                       _kont32016_
                                       _rtab31969_)
                                      (_lp31973_
                                       _rest31996_
                                       (cons _block31997_ _r31976_)))
                                    (_lp31973_ _rest31996_ _r31976_)))))
                        (if (##pair? _block3199832009_)
                            (let ((_hd3200232023_ (##car _block3199832009_))
                                  (_tl3200332025_ (##cdr _block3199832009_)))
                              (let ((_name32028_ _hd3200232023_))
                                (if (##pair? _tl3200332025_)
                                    (let ((_hd3200432030_
                                           (##car _tl3200332025_))
                                          (_tl3200532032_
                                           (##cdr _tl3200332025_)))
                                      (let ((_type32035_ _hd3200432030_))
                                        (if (##pair? _tl3200532032_)
                                            (let* ((_hd3200632037_
                                                    (##car _tl3200532032_))
                                                   (_kont32040_
                                                    _hd3200632037_))
                                              (_K3200132020_
                                               _kont32040_
                                               _type32035_
                                               _name32028_))
                                            (_E3200032013_))))
                                    (_E3200032013_))))
                            (_E3200032013_))))))
              (if (##pair? _rest3197731985_)
                  (let ((_hd3198232045_ (##car _rest3197731985_))
                        (_tl3198332047_ (##cdr _rest3197731985_)))
                    (let* ((_block32050_ _hd3198232045_)
                           (_rest32052_ _tl3198332047_))
                      (_K3198132042_ _rest32052_ _block32050_)))
                  (_else3197931993_))))))))
  (define gxc#optimize-match-fuse-restart-blocks
    (lambda (_blocks31890_ _konts31891_)
      (let* ((_blocks3189231908_ _blocks31890_)
             (_else3189431916_ (lambda () _blocks31890_))
             (_K3189631934_
              (lambda (_rest31919_ _kont31920_ _name31921_)
                (letrec* ((_rtab31923_ (make-hash-table-eq)))
                  (begin
                    (for-each
                     (lambda (_block31925_)
                       (gxc#apply-collect-runtime-refs
                        (caddr _block31925_)
                        _rtab31923_))
                     _konts31891_)
                    (if (fx= (table-ref
                              _rtab31923_
                              (gxc#identifier-symbol _name31921_))
                             '1)
                        (let* ((_rblock31929_
                                (find (lambda (_block31927_)
                                        (gxc#apply-find-var-refs
                                         (caddr _block31927_)
                                         (cons _name31921_ '())))
                                      _konts31891_))
                               (_assert31931_
                                (gxc#optimize-match-assert-restart
                                 _rblock31929_
                                 _name31921_)))
                          (cons (cons _name31921_
                                      (cons 'restart:
                                            (cons _kont31920_
                                                  (cons _assert31931_ '()))))
                                _rest31919_))
                        _blocks31890_))))))
        (if (##pair? _blocks3189231908_)
            (let ((_hd3189731937_ (##car _blocks3189231908_))
                  (_tl3189831939_ (##cdr _blocks3189231908_)))
              (if (##pair? _hd3189731937_)
                  (let ((_hd3189931942_ (##car _hd3189731937_))
                        (_tl3190031944_ (##cdr _hd3189731937_)))
                    (let ((_name31947_ _hd3189931942_))
                      (if (##pair? _tl3190031944_)
                          (let ((_hd3190131949_ (##car _tl3190031944_))
                                (_tl3190231951_ (##cdr _tl3190031944_)))
                            (if (##eq? _hd3190131949_ 'restart:)
                                (if (##pair? _tl3190231951_)
                                    (let ((_hd3190331954_
                                           (##car _tl3190231951_))
                                          (_tl3190431956_
                                           (##cdr _tl3190231951_)))
                                      (let ((_kont31959_ _hd3190331954_))
                                        (if (##pair? _tl3190431956_)
                                            (let ((_tl3190631961_
                                                   (##cdr _tl3190431956_)))
                                              (if (##null? _tl3190631961_)
                                                  (let ((_rest31964_
                                                         _tl3189831939_))
                                                    (_K3189631934_
                                                     _rest31964_
                                                     _kont31959_
                                                     _name31947_))
                                                  (_else3189431916_)))
                                            (_else3189431916_))))
                                    (_else3189431916_))
                                (_else3189431916_)))
                          (_else3189431916_))))
                  (_else3189431916_)))
            (_else3189431916_)))))
  (define gxc#optimize-match-assert-restart
    (lambda (_block31286_ _name31287_)
      (letrec ((_assert-restart31289_
                (lambda (_expr31445_ _assert31446_)
                  (let* ((___stx4179741798_ _expr31445_)
                         (_g3145231549_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4179741798_))))
                    (let ((___kont4179941800_
                           (lambda (_L31865_ _L31866_ _L31867_)
                             (let ((_$e31884_
                                    (_assert-restart31289_
                                     _L31866_
                                     (cons (cons _L31867_ '#t)
                                           _assert31446_))))
                               (if _$e31884_
                                   _$e31884_
                                   (_assert-restart31289_
                                    _L31865_
                                    (cons (cons _L31867_ '#f)
                                          _assert31446_))))))
                          (___kont4180141802_
                           (lambda (_L31813_)
                             (if (gx#free-identifier=? _L31813_ _name31287_)
                                 _assert31446_
                                 '#f)))
                          (___kont4180341804_
                           (lambda (_L31763_)
                             (_assert-restart31289_ _L31763_ _assert31446_)))
                          (___kont4180541806_
                           (lambda (_L31689_
                                    _L31690_
                                    _L31691_
                                    _L31692_
                                    _L31693_)
                             (_assert-restart31289_ _L31691_ _assert31446_)))
                          (___kont4181141812_ (lambda () '#f)))
                      (let ((___match4196641967_
                             (lambda (_e3149731561_
                                      _hd3149831564_
                                      _tl3149931566_
                                      _e3150031569_
                                      _hd3150131572_
                                      _tl3150231574_
                                      _e3150331577_
                                      _hd3150431580_
                                      _tl3150531582_
                                      _e3150631585_
                                      _hd3150731588_
                                      _tl3150831590_
                                      _e3150931593_
                                      _hd3151031596_
                                      _tl3151131598_
                                      _e3151231601_
                                      _hd3151331604_
                                      _tl3151431606_
                                      _e3151531609_
                                      _hd3151631612_
                                      _tl3151731614_
                                      _e3151831617_
                                      _hd3151931620_
                                      _tl3152031622_
                                      ___splice4180741808_
                                      _target3152131625_
                                      _tl3152331627_)
                               (letrec ((_loop3152431630_
                                         (lambda (_hd3152231633_
                                                  _id3152831635_)
                                           (if (gx#stx-pair? _hd3152231633_)
                                               (let ((_e3152531638_
                                                      (gx#stx-e
                                                       _hd3152231633_)))
                                                 (let ((_lp-tl3152731643_
                                                        (##cdr _e3152531638_))
                                                       (_lp-hd3152631641_
                                                        (##car _e3152531638_)))
                                                   (_loop3152431630_
                                                    _lp-tl3152731643_
                                                    (cons _lp-hd3152631641_
                                                          _id3152831635_))))
                                               (let ((_id3152931646_
                                                      (reverse _id3152831635_)))
                                                 (if (gx#stx-pair?
                                                      _tl3152031622_)
                                                     (let ((_e3153031649_
                                                            (gx#stx-e
                                                             _tl3152031622_)))
                                                       (let ((_tl3153231654_
                                                              (##cdr _e3153031649_))
                                                             (_hd3153131652_
                                                              (##car _e3153031649_)))
                                                         (if (gx#stx-null?
                                                              _tl3153231654_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl3151431606_)
                         (if (gx#stx-pair/null? _tl3150531582_)
                             (let ((___splice4180941810_
                                    (gx#syntax-split-splice
                                     _tl3150531582_
                                     '0)))
                               (let ((_tl3153531659_
                                      (##vector-ref ___splice4180941810_ '1))
                                     (_target3153331657_
                                      (##vector-ref ___splice4180941810_ '0)))
                                 (if (gx#stx-null? _tl3153531659_)
                                     (letrec ((_loop3153631662_
                                               (lambda (_hd3153431665_
                                                        _bind3154031667_)
                                                 (if (gx#stx-pair?
                                                      _hd3153431665_)
                                                     (let ((_e3153731670_
                                                            (gx#stx-e
                                                             _hd3153431665_)))
                                                       (let ((_lp-tl3153931675_
                                                              (##cdr _e3153731670_))
                                                             (_lp-hd3153831673_
                                                              (##car _e3153731670_)))
                                                         (_loop3153631662_
                                                          _lp-tl3153931675_
                                                          (cons _lp-hd3153831673_
                                                                _bind3154031667_))))
                                                     (let ((_bind3154131678_
                                                            (reverse _bind3154031667_)))
                                                       (if (gx#stx-pair?
                                                            _tl3150231574_)
                                                           (let ((_e3154231681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3150231574_)))
                     (let ((_tl3154431686_ (##cdr _e3154231681_))
                           (_hd3154331684_ (##car _e3154231681_)))
                       (if (gx#stx-null? _tl3154431686_)
                           (___kont4180541806_
                            _hd3154331684_
                            _bind3154131678_
                            _hd3153131652_
                            _id3152931646_
                            _hd3151031596_)
                           (___kont4181141812_))))
                   (___kont4181141812_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3153631662_
                                        _target3153331657_
                                        '()))
                                     (___kont4181141812_))))
                             (___kont4181141812_))
                         (___kont4181141812_))
                     (___kont4181141812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4181141812_)))))))
                                 (_loop3152431630_ _target3152131625_ '())))))
                        (if (gx#stx-pair? ___stx4179741798_)
                            (let ((_e3145731833_ (gx#stx-e ___stx4179741798_)))
                              (let ((_tl3145931838_ (##cdr _e3145731833_))
                                    (_hd3145831836_ (##car _e3145731833_)))
                                (if (gx#identifier? _hd3145831836_)
                                    (if (gx#stx-eq? '%#if _hd3145831836_)
                                        (if (gx#stx-pair? _tl3145931838_)
                                            (let ((_e3146031841_
                                                   (gx#stx-e _tl3145931838_)))
                                              (let ((_tl3146231846_
                                                     (##cdr _e3146031841_))
                                                    (_hd3146131844_
                                                     (##car _e3146031841_)))
                                                (if (gx#stx-pair?
                                                     _tl3146231846_)
                                                    (let ((_e3146331849_
                                                           (gx#stx-e
                                                            _tl3146231846_)))
                                                      (let ((_tl3146531854_
                                                             (##cdr _e3146331849_))
                                                            (_hd3146431852_
                                                             (##car _e3146331849_)))
                                                        (if (gx#stx-pair?
                                                             _tl3146531854_)
                                                            (let ((_e3146631857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3146531854_)))
                      (let ((_tl3146831862_ (##cdr _e3146631857_))
                            (_hd3146731860_ (##car _e3146631857_)))
                        (if (gx#stx-null? _tl3146831862_)
                            (___kont4179941800_
                             _hd3146731860_
                             _hd3146431852_
                             _hd3146131844_)
                            (___kont4181141812_))))
                    (___kont4181141812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4181141812_))))
                                            (___kont4181141812_))
                                        (if (gx#stx-eq? '%#call _hd3145831836_)
                                            (if (gx#stx-pair? _tl3145931838_)
                                                (let ((_e3147331789_
                                                       (gx#stx-e
                                                        _tl3145931838_)))
                                                  (let ((_tl3147531794_
                                                         (##cdr _e3147331789_))
                                                        (_hd3147431792_
                                                         (##car _e3147331789_)))
                                                    (if (gx#stx-pair?
                                                         _hd3147431792_)
                                                        (let ((_e3147631797_
                                                               (gx#stx-e
                                                                _hd3147431792_)))
                                                          (let ((_tl3147831802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3147631797_))
                        (_hd3147731800_ (##car _e3147631797_)))
                    (if (gx#identifier? _hd3147731800_)
                        (if (gx#stx-eq? '%#ref _hd3147731800_)
                            (if (gx#stx-pair? _tl3147831802_)
                                (let ((_e3147931805_
                                       (gx#stx-e _tl3147831802_)))
                                  (let ((_tl3148131810_ (##cdr _e3147931805_))
                                        (_hd3148031808_ (##car _e3147931805_)))
                                    (if (gx#stx-null? _tl3148131810_)
                                        (___kont4180141802_ _hd3148031808_)
                                        (___kont4181141812_))))
                                (___kont4181141812_))
                            (___kont4181141812_))
                        (___kont4181141812_))))
                (___kont4181141812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4181141812_))
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3145831836_)
                                                (if (gx#stx-pair?
                                                     _tl3145931838_)
                                                    (let ((_e3148631747_
                                                           (gx#stx-e
                                                            _tl3145931838_)))
                                                      (let ((_tl3148831752_
                                                             (##cdr _e3148631747_))
                                                            (_hd3148731750_
                                                             (##car _e3148631747_)))
                                                        (if (gx#stx-pair?
                                                             _tl3148831752_)
                                                            (let ((_e3148931755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3148831752_)))
                      (let ((_tl3149131760_ (##cdr _e3148931755_))
                            (_hd3149031758_ (##car _e3148931755_)))
                        (if (gx#stx-null? _tl3149131760_)
                            (___kont4180341804_ _hd3149031758_)
                            (___kont4181141812_))))
                    (___kont4181141812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4181141812_))
                                                (if (gx#stx-eq?
                                                     '%#letrec-values
                                                     _hd3145831836_)
                                                    (if (gx#stx-pair?
                                                         _tl3145931838_)
                                                        (let ((_e3150031569_
                                                               (gx#stx-e
                                                                _tl3145931838_)))
                                                          (let ((_tl3150231574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3150031569_))
                        (_hd3150131572_ (##car _e3150031569_)))
                    (if (gx#stx-pair? _hd3150131572_)
                        (let ((_e3150331577_ (gx#stx-e _hd3150131572_)))
                          (let ((_tl3150531582_ (##cdr _e3150331577_))
                                (_hd3150431580_ (##car _e3150331577_)))
                            (if (gx#stx-pair? _hd3150431580_)
                                (let ((_e3150631585_
                                       (gx#stx-e _hd3150431580_)))
                                  (let ((_tl3150831590_ (##cdr _e3150631585_))
                                        (_hd3150731588_ (##car _e3150631585_)))
                                    (if (gx#stx-pair? _hd3150731588_)
                                        (let ((_e3150931593_
                                               (gx#stx-e _hd3150731588_)))
                                          (let ((_tl3151131598_
                                                 (##cdr _e3150931593_))
                                                (_hd3151031596_
                                                 (##car _e3150931593_)))
                                            (if (gx#stx-null? _tl3151131598_)
                                                (if (gx#stx-pair?
                                                     _tl3150831590_)
                                                    (let ((_e3151231601_
                                                           (gx#stx-e
                                                            _tl3150831590_)))
                                                      (let ((_tl3151431606_
                                                             (##cdr _e3151231601_))
                                                            (_hd3151331604_
                                                             (##car _e3151231601_)))
                                                        (if (gx#stx-pair?
                                                             _hd3151331604_)
                                                            (let ((_e3151531609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3151331604_)))
                      (let ((_tl3151731614_ (##cdr _e3151531609_))
                            (_hd3151631612_ (##car _e3151531609_)))
                        (if (gx#identifier? _hd3151631612_)
                            (if (gx#stx-eq? '%#lambda _hd3151631612_)
                                (if (gx#stx-pair? _tl3151731614_)
                                    (let ((_e3151831617_
                                           (gx#stx-e _tl3151731614_)))
                                      (let ((_tl3152031622_
                                             (##cdr _e3151831617_))
                                            (_hd3151931620_
                                             (##car _e3151831617_)))
                                        (if (gx#stx-pair/null? _hd3151931620_)
                                            (let ((___splice4180741808_
                                                   (gx#syntax-split-splice
                                                    _hd3151931620_
                                                    '0)))
                                              (let ((_tl3152331627_
                                                     (##vector-ref
                                                      ___splice4180741808_
                                                      '1))
                                                    (_target3152131625_
                                                     (##vector-ref
                                                      ___splice4180741808_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3152331627_)
                                                    (___match4196641967_
                                                     _e3145731833_
                                                     _hd3145831836_
                                                     _tl3145931838_
                                                     _e3150031569_
                                                     _hd3150131572_
                                                     _tl3150231574_
                                                     _e3150331577_
                                                     _hd3150431580_
                                                     _tl3150531582_
                                                     _e3150631585_
                                                     _hd3150731588_
                                                     _tl3150831590_
                                                     _e3150931593_
                                                     _hd3151031596_
                                                     _tl3151131598_
                                                     _e3151231601_
                                                     _hd3151331604_
                                                     _tl3151431606_
                                                     _e3151531609_
                                                     _hd3151631612_
                                                     _tl3151731614_
                                                     _e3151831617_
                                                     _hd3151931620_
                                                     _tl3152031622_
                                                     ___splice4180741808_
                                                     _target3152131625_
                                                     _tl3152331627_)
                                                    (___kont4181141812_))))
                                            (___kont4181141812_))))
                                    (___kont4181141812_))
                                (___kont4181141812_))
                            (___kont4181141812_))))
                    (___kont4181141812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4181141812_))
                                                (___kont4181141812_))))
                                        (___kont4181141812_))))
                                (___kont4181141812_))))
                        (___kont4181141812_))))
                (___kont4181141812_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4181141812_)))))
                                    (___kont4181141812_))))
                            (___kont4181141812_))))))))
        (let* ((_block3129031303_ _block31286_)
               (_E3129231307_
                (lambda () (error '"No clause matching" _block3129031303_)))
               (_K3129331420_
                (lambda (_maybe-bind31310_ _assert31311_ _kont31312_)
                  (let* ((_g3131431340_
                          (lambda (_g3131531337_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3131531337_)))
                         (_g3131331417_
                          (lambda (_g3131531343_)
                            (if (gx#stx-pair? _g3131531343_)
                                (let ((_e3131831345_ (gx#stx-e _g3131531343_)))
                                  (let ((_hd3131931348_ (##car _e3131831345_))
                                        (_tl3132031350_ (##cdr _e3131831345_)))
                                    (if (gx#identifier? _hd3131931348_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3131931348_)
                                            (if (gx#stx-pair? _tl3132031350_)
                                                (let ((_e3132131353_
                                                       (gx#stx-e
                                                        _tl3132031350_)))
                                                  (let ((_hd3132231356_
                                                         (##car _e3132131353_))
                                                        (_tl3132331358_
                                                         (##cdr _e3132131353_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3132231356_)
                                                        (let ((_g42739_
                                                               (gx#syntax-split-splice
                                                                _hd3132231356_
                                                                '0)))
                                                          (begin
                                                            (let ((_g42740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g42739_)
                               (##vector-length _g42739_)
                               1)))
                      (if (not (##fx= _g42740_ 2))
                          (error "Context expects 2 values" _g42740_)))
                    (let ((_target3132431361_ (##vector-ref _g42739_ 0))
                          (_tl3132631363_ (##vector-ref _g42739_ 1)))
                      (if (gx#stx-null? _tl3132631363_)
                          (letrec ((_loop3132731366_
                                    (lambda (_hd3132531369_ _id3133131371_)
                                      (if (gx#stx-pair? _hd3132531369_)
                                          (let ((_e3132831374_
                                                 (gx#stx-e _hd3132531369_)))
                                            (let ((_lp-hd3132931377_
                                                   (##car _e3132831374_))
                                                  (_lp-tl3133031379_
                                                   (##cdr _e3132831374_)))
                                              (_loop3132731366_
                                               _lp-tl3133031379_
                                               (cons _lp-hd3132931377_
                                                     _id3133131371_))))
                                          (let ((_id3133231382_
                                                 (reverse _id3133131371_)))
                                            (if (gx#stx-pair? _tl3132331358_)
                                                (let ((_e3133331385_
                                                       (gx#stx-e
                                                        _tl3132331358_)))
                                                  (let ((_hd3133431388_
                                                         (##car _e3133331385_))
                                                        (_tl3133531390_
                                                         (##cdr _e3133331385_)))
                                                    (if (gx#stx-null?
                                                         _tl3133531390_)
                                                        ((lambda (_L31393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L31394_)
                   (_assert-restart31289_ _L31393_ _assert31311_))
                 _hd3133431388_
                 _id3133231382_)
                (_g3131431340_ _g3131531343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3131431340_
                                                 _g3131531343_)))))))
                            (_loop3132731366_ _target3132431361_ '()))
                          (_g3131431340_ _g3131531343_)))))
                (_g3131431340_ _g3131531343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3131431340_ _g3131531343_))
                                            (_g3131431340_ _g3131531343_))
                                        (_g3131431340_ _g3131531343_))))
                                (_g3131431340_ _g3131531343_)))))
                    (_g3131331417_ _kont31312_)))))
          (if (##pair? _block3129031303_)
              (let ((_tl3129531423_ (##cdr _block3129031303_)))
                (if (##pair? _tl3129531423_)
                    (let ((_tl3129731426_ (##cdr _tl3129531423_)))
                      (if (##pair? _tl3129731426_)
                          (let ((_hd3129831429_ (##car _tl3129731426_))
                                (_tl3129931431_ (##cdr _tl3129731426_)))
                            (let ((_kont31434_ _hd3129831429_))
                              (if (##pair? _tl3129931431_)
                                  (let ((_hd3130031436_ (##car _tl3129931431_))
                                        (_tl3130131438_
                                         (##cdr _tl3129931431_)))
                                    (let* ((_assert31441_ _hd3130031436_)
                                           (_maybe-bind31443_ _tl3130131438_))
                                      (_K3129331420_
                                       _maybe-bind31443_
                                       _assert31441_
                                       _kont31434_)))
                                  (_E3129231307_))))
                          (_E3129231307_)))
                    (_E3129231307_)))
              (_E3129231307_))))))
  (define gxc#optimize-syntax-case
    (lambda (_stx30917_)
      (let* ((_g3091930949_
              (lambda (_g3092030946_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3092030946_)))
             (_g3091831283_
              (lambda (_g3092030952_)
                (if (gx#stx-pair? _g3092030952_)
                    (let ((_e3092430954_ (gx#stx-e _g3092030952_)))
                      (let ((_hd3092530957_ (##car _e3092430954_))
                            (_tl3092630959_ (##cdr _e3092430954_)))
                        (if (gx#identifier? _hd3092530957_)
                            (if (gx#stx-eq? '%#let-values _hd3092530957_)
                                (if (gx#stx-pair? _tl3092630959_)
                                    (let ((_e3092730962_
                                           (gx#stx-e _tl3092630959_)))
                                      (let ((_hd3092830965_
                                             (##car _e3092730962_))
                                            (_tl3092930967_
                                             (##cdr _e3092730962_)))
                                        (if (gx#stx-pair? _hd3092830965_)
                                            (let ((_e3093030970_
                                                   (gx#stx-e _hd3092830965_)))
                                              (let ((_hd3093130973_
                                                     (##car _e3093030970_))
                                                    (_tl3093230975_
                                                     (##cdr _e3093030970_)))
                                                (if (gx#stx-pair?
                                                     _hd3093130973_)
                                                    (let ((_e3093330978_
                                                           (gx#stx-e
                                                            _hd3093130973_)))
                                                      (let ((_hd3093430981_
                                                             (##car _e3093330978_))
                                                            (_tl3093530983_
                                                             (##cdr _e3093330978_)))
                                                        (if (gx#stx-pair?
                                                             _hd3093430981_)
                                                            (let ((_e3093630986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3093430981_)))
                      (let ((_hd3093730989_ (##car _e3093630986_))
                            (_tl3093830991_ (##cdr _e3093630986_)))
                        (if (gx#stx-null? _tl3093830991_)
                            (if (gx#stx-pair? _tl3093530983_)
                                (let ((_e3093930994_
                                       (gx#stx-e _tl3093530983_)))
                                  (let ((_hd3094030997_ (##car _e3093930994_))
                                        (_tl3094130999_ (##cdr _e3093930994_)))
                                    (if (gx#stx-null? _tl3094130999_)
                                        (if (gx#stx-null? _tl3093230975_)
                                            (if (gx#stx-pair? _tl3092930967_)
                                                (let ((_e3094231002_
                                                       (gx#stx-e
                                                        _tl3092930967_)))
                                                  (let ((_hd3094331005_
                                                         (##car _e3094231002_))
                                                        (_tl3094431007_
                                                         (##cdr _e3094231002_)))
                                                    (if (gx#stx-null?
                                                         _tl3094431007_)
                                                        ((lambda (_L31010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L31011_
                          _L31012_)
                   (let _lp31036_ ((_body31038_ _L31010_) (_clauses31039_ '()))
                     (let* ((___stx4196941970_ _body31038_)
                            (_g3104231089_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4196941970_))))
                       (let ((___kont4197141972_
                              (lambda (_L31255_ _L31256_ _L31257_)
                                (_lp31036_
                                 _L31255_
                                 (cons (cons _L31257_ (gxc#compile-e _L31256_))
                                       _clauses31039_))))
                             (___kont4197341974_
                              (lambda (_L31134_ _L31135_)
                                (let ((_$e31156_ (length _clauses31039_)))
                                  (if (eq? '0 _$e31156_)
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _L31012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L31011_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gxc#compile-e
                                                          _body31038_)
                                                         '())))
                                       _stx30917_)
                                      (if (eq? '1 _$e31156_)
                                          (let* ((_clauses3115831167_
                                                  _clauses31039_)
                                                 (_E3116031171_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _clauses3115831167_)))
                                                 (_K3116131177_
                                                  (lambda (_clause-lambda31174_
                                                           _clause31175_)
                                                    (gxc#xform-wrap-source
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _L31012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _L31011_ '()))
                               '())
                         (cons (cons '%#let-values
                                     (cons (cons (cons (cons _clause31175_ '())
                                                       (cons _clause-lambda31174_
                                                             '()))
                                                 '())
                                           (cons (gxc#compile-e _body31038_)
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx30917_))))
                                            (if (##pair? _clauses3115831167_)
                                                (let ((_hd3116231180_
                                                       (##car _clauses3115831167_))
                                                      (_tl3116331182_
                                                       (##cdr _clauses3115831167_)))
                                                  (if (##pair? _hd3116231180_)
                                                      (let ((_hd3116431185_
                                                             (##car _hd3116231180_))
                                                            (_tl3116531187_
                                                             (##cdr _hd3116231180_)))
                                                        (let* ((_clause31190_
                                                                _hd3116431185_)
                                                               (_clause-lambda31192_
                                                                _tl3116531187_))
                                                          (if (##null? _tl3116331182_)
                                                              (_K3116131177_
                                                               _clause-lambda31192_
                                                               _clause31190_)
                                                              (_E3116031171_))))
                                                      (_E3116031171_)))
                                                (_E3116031171_)))
                                          (gxc#optimize-syntax-case-body
                                           _stx30917_
                                           (gxc#compile-e _L31134_)
                                           (cons _L31012_ _L31011_)
                                           _clauses31039_)))))))
                         (if (gx#stx-pair? ___stx4196941970_)
                             (let ((_e3104731199_
                                    (gx#stx-e ___stx4196941970_)))
                               (let ((_tl3104931204_ (##cdr _e3104731199_))
                                     (_hd3104831202_ (##car _e3104731199_)))
                                 (if (gx#identifier? _hd3104831202_)
                                     (if (gx#stx-eq?
                                          '%#let-values
                                          _hd3104831202_)
                                         (if (gx#stx-pair? _tl3104931204_)
                                             (let ((_e3105031207_
                                                    (gx#stx-e _tl3104931204_)))
                                               (let ((_tl3105231212_
                                                      (##cdr _e3105031207_))
                                                     (_hd3105131210_
                                                      (##car _e3105031207_)))
                                                 (if (gx#stx-pair?
                                                      _hd3105131210_)
                                                     (let ((_e3105331215_
                                                            (gx#stx-e
                                                             _hd3105131210_)))
                                                       (let ((_tl3105531220_
                                                              (##cdr _e3105331215_))
                                                             (_hd3105431218_
                                                              (##car _e3105331215_)))
                                                         (if (gx#stx-pair?
                                                              _hd3105431218_)
                                                             (let ((_e3105631223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3105431218_)))
                       (let ((_tl3105831228_ (##cdr _e3105631223_))
                             (_hd3105731226_ (##car _e3105631223_)))
                         (if (gx#stx-pair? _hd3105731226_)
                             (let ((_e3105931231_ (gx#stx-e _hd3105731226_)))
                               (let ((_tl3106131236_ (##cdr _e3105931231_))
                                     (_hd3106031234_ (##car _e3105931231_)))
                                 (if (gx#stx-null? _tl3106131236_)
                                     (if (gx#stx-pair? _tl3105831228_)
                                         (let ((_e3106231239_
                                                (gx#stx-e _tl3105831228_)))
                                           (let ((_tl3106431244_
                                                  (##cdr _e3106231239_))
                                                 (_hd3106331242_
                                                  (##car _e3106231239_)))
                                             (if (gx#stx-null? _tl3106431244_)
                                                 (if (gx#stx-null?
                                                      _tl3105531220_)
                                                     (if (gx#stx-pair?
                                                          _tl3105231212_)
                                                         (let ((_e3106531247_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3105231212_)))
                   (let ((_tl3106731252_ (##cdr _e3106531247_))
                         (_hd3106631250_ (##car _e3106531247_)))
                     (if (gx#stx-null? _tl3106731252_)
                         (___kont4197141972_
                          _hd3106631250_
                          _hd3106331242_
                          _hd3106031234_)
                         (_g3104231089_))))
                 (_g3104231089_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3104231089_))
                                                 (_g3104231089_))))
                                         (_g3104231089_))
                                     (_g3104231089_))))
                             (_g3104231089_))))
                     (_g3104231089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3104231089_))))
                                             (_g3104231089_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3104831202_)
                                             (if (gx#stx-pair? _tl3104931204_)
                                                 (let ((_e3107331102_
                                                        (gx#stx-e
                                                         _tl3104931204_)))
                                                   (let ((_tl3107531107_
                                                          (##cdr _e3107331102_))
                                                         (_hd3107431105_
                                                          (##car _e3107331102_)))
                                                     (if (gx#stx-pair?
                                                          _hd3107431105_)
                                                         (let ((_e3107631110_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3107431105_)))
                   (let ((_tl3107831115_ (##cdr _e3107631110_))
                         (_hd3107731113_ (##car _e3107631110_)))
                     (if (gx#identifier? _hd3107731113_)
                         (if (gx#stx-eq? '%#ref _hd3107731113_)
                             (if (gx#stx-pair? _tl3107831115_)
                                 (let ((_e3107931118_
                                        (gx#stx-e _tl3107831115_)))
                                   (let ((_tl3108131123_ (##cdr _e3107931118_))
                                         (_hd3108031121_
                                          (##car _e3107931118_)))
                                     (if (gx#stx-null? _tl3108131123_)
                                         (if (gx#stx-pair? _tl3107531107_)
                                             (let ((_e3108231126_
                                                    (gx#stx-e _tl3107531107_)))
                                               (let ((_tl3108431131_
                                                      (##cdr _e3108231126_))
                                                     (_hd3108331129_
                                                      (##car _e3108231126_)))
                                                 (if (gx#stx-null?
                                                      _tl3108431131_)
                                                     (___kont4197341974_
                                                      _hd3108331129_
                                                      _hd3108031121_)
                                                     (_g3104231089_))))
                                             (_g3104231089_))
                                         (_g3104231089_))))
                                 (_g3104231089_))
                             (_g3104231089_))
                         (_g3104231089_))))
                 (_g3104231089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3104231089_))
                                             (_g3104231089_)))
                                     (_g3104231089_))))
                             (_g3104231089_))))))
                 _hd3094331005_
                 _hd3094030997_
                 _hd3093730989_)
                (_g3091930949_ _g3092030952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3091930949_ _g3092030952_))
                                            (_g3091930949_ _g3092030952_))
                                        (_g3091930949_ _g3092030952_))))
                                (_g3091930949_ _g3092030952_))
                            (_g3091930949_ _g3092030952_))))
                    (_g3091930949_ _g3092030952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3091930949_
                                                     _g3092030952_))))
                                            (_g3091930949_ _g3092030952_))))
                                    (_g3091930949_ _g3092030952_))
                                (_g3091930949_ _g3092030952_))
                            (_g3091930949_ _g3092030952_))))
                    (_g3091930949_ _g3092030952_)))))
        (_g3091831283_ _stx30917_))))
  (define gxc#optimize-syntax-case-body
    (lambda (_stx30845_ _expr30846_ _negation30847_ _clauses30848_)
      (letrec ((_normalize30850_
                (lambda (_clauses30877_)
                  (let* ((_clauses3087830887_ _clauses30877_)
                         (_E3088030891_
                          (lambda ()
                            (error '"No clause matching" _clauses3087830887_)))
                         (_K3088130898_
                          (lambda (_rest30894_ _kont30895_ _id30896_)
                            (cons (cons '#f _kont30895_) _rest30894_))))
                    (if (##pair? _clauses3087830887_)
                        (let ((_hd3088230901_ (##car _clauses3087830887_))
                              (_tl3088330903_ (##cdr _clauses3087830887_)))
                          (if (##pair? _hd3088230901_)
                              (let ((_hd3088430906_ (##car _hd3088230901_))
                                    (_tl3088530908_ (##cdr _hd3088230901_)))
                                (let* ((_id30911_ _hd3088430906_)
                                       (_kont30913_ _tl3088530908_)
                                       (_rest30915_ _tl3088330903_))
                                  (_K3088130898_
                                   _rest30915_
                                   _kont30913_
                                   _id30911_)))
                              (_E3088030891_)))
                        (_E3088030891_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_id30853_ (make-symbol (gensym '__stx)))
                  (_id30855_ (gx#core-quote-syntax__0 _id30853_))
                  (_g42741_ (gx#core-bind-runtime!__0 _id30855_))
                  (_g42742_
                   (gxc#optimize-syntax-case-clauses
                    _clauses30848_
                    (car _negation30847_))))
             (begin
               (let ((_g42743_
                      (if (##values? _g42742_) (##vector-length _g42742_) 1)))
                 (if (not (##fx= _g42743_ 2))
                     (error "Context expects 2 values" _g42743_)))
               (let ((_clauses30858_ (##vector-ref _g42742_ 0))
                     (_konts30859_ (##vector-ref _g42742_ 1)))
                 (let* ((_clauses30868_
                         (map (lambda (_g3086030863_ _g3086130865_)
                                (gxc#optimize-syntax-case-closure
                                 _g3086030863_
                                 _g3086130865_
                                 _id30855_))
                              _clauses30858_
                              (foldr1 cons
                                      (cons (car _negation30847_) '())
                                      (map car (cdr _clauses30858_)))))
                        (_clauses30870_ (_normalize30850_ _clauses30868_))
                        (_negation30872_
                         (gxc#optimize-syntax-case-closure
                          _negation30847_
                          '#f
                          _id30855_))
                        (_body30874_
                         (gxc#optimize-match-body
                          _stx30845_
                          _negation30872_
                          _clauses30870_
                          _konts30859_)))
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _id30855_ '())
                                            (cons _expr30846_ '()))
                                      '())
                                (cons _body30874_ '())))
                    _stx30845_))))))
         gx#current-expander-context
         (let ((__obj42715 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj42715) __obj42715))))))
  (define gxc#optimize-syntax-case-clauses
    (lambda (_clauses29603_ _negation-id29604_)
      (letrec ((_xform-e29606_
                (lambda (_expr29990_
                         _kont-id29991_
                         _kont-box29992_
                         _negation-id29993_)
                  (let* ((___stx4217142172_ _expr29990_)
                         (_g2999930132_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4217142172_))))
                    (let ((___kont4217342174_
                           (lambda (_L30821_ _L30822_ _L30823_)
                             (let ((_K30840_
                                    (_xform-e29606_
                                     _L30822_
                                     _kont-id29991_
                                     _kont-box29992_
                                     _negation-id29993_)))
                               (cons '%#if
                                     (cons _L30823_
                                           (cons _K30840_
                                                 (cons _L30821_ '())))))))
                          (___kont4217542176_
                           (lambda (_L30737_
                                    _L30738_
                                    _L30739_
                                    _L30740_
                                    _L30741_)
                             (let* ((_id30776_
                                     (make-symbol (gensym '__splice)))
                                    (_id30778_
                                     (gx#core-quote-syntax__0 _id30776_))
                                    (_g42744_
                                     (gx#core-bind-runtime!__0 _id30778_))
                                    (_body30781_
                                     (_xform-e29606_
                                      _L30737_
                                      _kont-id29991_
                                      _kont-box29992_
                                      _negation-id29993_)))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _id30778_ '())
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#call)
                           (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                       (cons _L30739_ '()))
                                 _L30738_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons '%#let-values
                                                       (cons (cons (cons (cons _L30741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons '%#call
                                             (cons '(%#ref ##vector-ref)
                                                   (cons (cons '%#ref
                                                               (cons _id30778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '(%#quote 0) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (cons _L30740_ '())
                                       (cons (cons '%#call
                                                   (cons '(%#ref ##vector-ref)
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _id30778_ '()))
                       (cons '(%#quote 1) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))
                     (cons _body30781_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                          (___kont4217742178_
                           (lambda (_L30619_ _L30620_)
                             (let ((_body30634_
                                    (_xform-e29606_
                                     _L30619_
                                     _kont-id29991_
                                     _kont-box29992_
                                     _negation-id29993_)))
                               (cons '%#let-values
                                     (cons _L30620_ (cons _body30634_ '()))))))
                          (___kont4217942180_
                           (lambda (_L30563_ _L30564_ _L30565_)
                             (let ((_lambda-expr30588_
                                    (_xform-loop-e29607_
                                     _L30564_
                                     _kont-id29991_
                                     _kont-box29992_
                                     _negation-id29993_)))
                               (cons '%#letrec-values
                                     (cons (cons (cons (cons _L30565_ '())
                                                       (cons _lambda-expr30588_
                                                             '()))
                                                 '())
                                           (cons _L30563_ '()))))))
                          (___kont4218142182_
                           (lambda (_L30225_ _L30226_ _L30227_)
                             (let* ((___stx4207342074_ _L30226_)
                                    (_g3025630299_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4207342074_))))
                               (let ((___kont4207542076_
                                      (lambda (_L30415_
                                               _L30416_
                                               _L30417_
                                               _L30418_)
                                        (let ((_kont30459_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3045130454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3045230456_)
                               (cons _g3045130454_ _g3045230456_))
                             '()
                             _L30227_))
                   (cons _L30417_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box29992_
                                             _kont30459_)
                                            (let* ((_kont-args30470_
                                                    (map (lambda (_id30461_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id30461_ '())))
                 (begin
                   '#!void
                   (foldr1 (lambda (_g3046230465_ _g3046330467_)
                             (cons _g3046230465_ _g3046330467_))
                           '()
                           _L30227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_body30472_
                                                    (cons '%#if
                                                          (cons _L30418_
                                                                (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#ref
                                                (cons _kont-id29991_ '()))
                                          _kont-args30470_))
                              (cons (cons (gx#datum->syntax__0 '#f '%#call)
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L30416_ '()))
                                                (cons (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)
                                                            (cons _L30415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g3047430477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3047530479_)
                             (cons _g3047430477_ _g3047530479_))
                           '()
                           _L30227_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _body30472_
                                                  (cons '%#let-values
                                                        (cons (map (lambda (_id30482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _arg30483_)
                             (cons (cons _id30482_ '()) (cons _arg30483_ '())))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3048430487_ _g3048530489_)
                                       (cons _g3048430487_ _g3048530489_))
                                     '()
                                     _L30227_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3049130494_ _g3049230496_)
                                       (cons _g3049130494_ _g3049230496_))
                                     '()
                                     _L30225_)))
                      (cons _body30472_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont4207742078_
                                      (lambda ()
                                        (let ((_kont30313_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3030530308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3030630310_)
                               (cons _g3030530308_ _g3030630310_))
                             '()
                             _L30227_))
                   (cons _L30226_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box29992_
                                             _kont30313_)
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kont-id29991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3031430317_ _g3031530319_)
                            (cons _g3031430317_ _g3031530319_))
                          '()
                          _L30225_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((___match4216842169_
                                        (lambda (_e3026230327_
                                                 _hd3026330330_
                                                 _tl3026430332_
                                                 _e3026530335_
                                                 _hd3026630338_
                                                 _tl3026730340_
                                                 _e3026830343_
                                                 _hd3026930346_
                                                 _tl3027030348_
                                                 _e3027130351_
                                                 _hd3027230354_
                                                 _tl3027330356_
                                                 _e3027430359_
                                                 _hd3027530362_
                                                 _tl3027630364_
                                                 _e3027730367_
                                                 _hd3027830370_
                                                 _tl3027930372_
                                                 _e3028030375_
                                                 _hd3028130378_
                                                 _tl3028230380_
                                                 _e3028330383_
                                                 _hd3028430386_
                                                 _tl3028530388_
                                                 _e3028630391_
                                                 _hd3028730394_
                                                 _tl3028830396_
                                                 _e3028930399_
                                                 _hd3029030402_
                                                 _tl3029130404_
                                                 _e3029230407_
                                                 _hd3029330410_
                                                 _tl3029430412_)
                                          (let ((_L30415_ _hd3029330410_)
                                                (_L30416_ _hd3028430386_)
                                                (_L30417_ _hd3026930346_)
                                                (_L30418_ _hd3026630338_))
                                            (if (gx#free-identifier=?
                                                 _L30416_
                                                 _negation-id29993_)
                                                (___kont4207542076_
                                                 _L30415_
                                                 _L30416_
                                                 _L30417_
                                                 _L30418_)
                                                (___kont4207742078_))))))
                                   (if (gx#stx-pair? ___stx4207342074_)
                                       (let ((_e3026230327_
                                              (gx#stx-e ___stx4207342074_)))
                                         (let ((_tl3026430332_
                                                (##cdr _e3026230327_))
                                               (_hd3026330330_
                                                (##car _e3026230327_)))
                                           (if (gx#identifier? _hd3026330330_)
                                               (if (gx#stx-eq?
                                                    '%#if
                                                    _hd3026330330_)
                                                   (if (gx#stx-pair?
                                                        _tl3026430332_)
                                                       (let ((_e3026530335_
                                                              (gx#stx-e
                                                               _tl3026430332_)))
                                                         (let ((_tl3026730340_
                                                                (##cdr _e3026530335_))
                                                               (_hd3026630338_
                                                                (##car _e3026530335_)))
                                                           (if (gx#stx-pair?
                                                                _tl3026730340_)
                                                               (let ((_e3026830343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3026730340_)))
                         (let ((_tl3027030348_ (##cdr _e3026830343_))
                               (_hd3026930346_ (##car _e3026830343_)))
                           (if (gx#stx-pair? _tl3027030348_)
                               (let ((_e3027130351_ (gx#stx-e _tl3027030348_)))
                                 (let ((_tl3027330356_ (##cdr _e3027130351_))
                                       (_hd3027230354_ (##car _e3027130351_)))
                                   (if (gx#stx-pair? _hd3027230354_)
                                       (let ((_e3027430359_
                                              (gx#stx-e _hd3027230354_)))
                                         (let ((_tl3027630364_
                                                (##cdr _e3027430359_))
                                               (_hd3027530362_
                                                (##car _e3027430359_)))
                                           (if (gx#identifier? _hd3027530362_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd3027530362_)
                                                   (if (gx#stx-pair?
                                                        _tl3027630364_)
                                                       (let ((_e3027730367_
                                                              (gx#stx-e
                                                               _tl3027630364_)))
                                                         (let ((_tl3027930372_
                                                                (##cdr _e3027730367_))
                                                               (_hd3027830370_
                                                                (##car _e3027730367_)))
                                                           (if (gx#stx-pair?
                                                                _hd3027830370_)
                                                               (let ((_e3028030375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd3027830370_)))
                         (let ((_tl3028230380_ (##cdr _e3028030375_))
                               (_hd3028130378_ (##car _e3028030375_)))
                           (if (gx#identifier? _hd3028130378_)
                               (if (gx#stx-eq? '%#ref _hd3028130378_)
                                   (if (gx#stx-pair? _tl3028230380_)
                                       (let ((_e3028330383_
                                              (gx#stx-e _tl3028230380_)))
                                         (let ((_tl3028530388_
                                                (##cdr _e3028330383_))
                                               (_hd3028430386_
                                                (##car _e3028330383_)))
                                           (if (gx#stx-null? _tl3028530388_)
                                               (if (gx#stx-pair?
                                                    _tl3027930372_)
                                                   (let ((_e3028630391_
                                                          (gx#stx-e
                                                           _tl3027930372_)))
                                                     (let ((_tl3028830396_
                                                            (##cdr _e3028630391_))
                                                           (_hd3028730394_
                                                            (##car _e3028630391_)))
                                                       (if (gx#stx-pair?
                                                            _hd3028730394_)
                                                           (let ((_e3028930399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3028730394_)))
                     (let ((_tl3029130404_ (##cdr _e3028930399_))
                           (_hd3029030402_ (##car _e3028930399_)))
                       (if (gx#identifier? _hd3029030402_)
                           (if (gx#stx-eq? '%#ref _hd3029030402_)
                               (if (gx#stx-pair? _tl3029130404_)
                                   (let ((_e3029230407_
                                          (gx#stx-e _tl3029130404_)))
                                     (let ((_tl3029430412_
                                            (##cdr _e3029230407_))
                                           (_hd3029330410_
                                            (##car _e3029230407_)))
                                       (if (gx#stx-null? _tl3029430412_)
                                           (if (gx#stx-null? _tl3028830396_)
                                               (if (gx#stx-null?
                                                    _tl3027330356_)
                                                   (___match4216842169_
                                                    _e3026230327_
                                                    _hd3026330330_
                                                    _tl3026430332_
                                                    _e3026530335_
                                                    _hd3026630338_
                                                    _tl3026730340_
                                                    _e3026830343_
                                                    _hd3026930346_
                                                    _tl3027030348_
                                                    _e3027130351_
                                                    _hd3027230354_
                                                    _tl3027330356_
                                                    _e3027430359_
                                                    _hd3027530362_
                                                    _tl3027630364_
                                                    _e3027730367_
                                                    _hd3027830370_
                                                    _tl3027930372_
                                                    _e3028030375_
                                                    _hd3028130378_
                                                    _tl3028230380_
                                                    _e3028330383_
                                                    _hd3028430386_
                                                    _tl3028530388_
                                                    _e3028630391_
                                                    _hd3028730394_
                                                    _tl3028830396_
                                                    _e3028930399_
                                                    _hd3029030402_
                                                    _tl3029130404_
                                                    _e3029230407_
                                                    _hd3029330410_
                                                    _tl3029430412_)
                                                   (___kont4207742078_))
                                               (___kont4207742078_))
                                           (___kont4207742078_))))
                                   (___kont4207742078_))
                               (___kont4207742078_))
                           (___kont4207742078_))))
                   (___kont4207742078_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4207742078_))
                                               (___kont4207742078_))))
                                       (___kont4207742078_))
                                   (___kont4207742078_))
                               (___kont4207742078_))))
                       (___kont4207742078_))))
               (___kont4207742078_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4207742078_))
                                               (___kont4207742078_))))
                                       (___kont4207742078_))))
                               (___kont4207742078_))))
                       (___kont4207742078_))))
               (___kont4207742078_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4207742078_))
                                               (___kont4207742078_))))
                                       (___kont4207742078_))))))))
                      (let* ((___match4242842429_
                              (lambda (_e3009530137_
                                       _hd3009630140_
                                       _tl3009730142_
                                       _e3009830145_
                                       _hd3009930148_
                                       _tl3010030150_
                                       _e3010130153_
                                       _hd3010230156_
                                       _tl3010330158_
                                       _e3010430161_
                                       _hd3010530164_
                                       _tl3010630166_
                                       ___splice4218342184_
                                       _target3010730169_
                                       _tl3010930171_)
                                (letrec ((_loop3011030174_
                                          (lambda (_hd3010830177_
                                                   _id3011430179_)
                                            (if (gx#stx-pair? _hd3010830177_)
                                                (let ((_e3011130182_
                                                       (gx#stx-e
                                                        _hd3010830177_)))
                                                  (let ((_lp-tl3011330187_
                                                         (##cdr _e3011130182_))
                                                        (_lp-hd3011230185_
                                                         (##car _e3011130182_)))
                                                    (_loop3011030174_
                                                     _lp-tl3011330187_
                                                     (cons _lp-hd3011230185_
                                                           _id3011430179_))))
                                                (let ((_id3011530190_
                                                       (reverse _id3011430179_)))
                                                  (if (gx#stx-pair?
                                                       _tl3010630166_)
                                                      (let ((_e3011630193_
                                                             (gx#stx-e
                                                              _tl3010630166_)))
                                                        (let ((_tl3011830198_
                                                               (##cdr _e3011630193_))
                                                              (_hd3011730196_
                                                               (##car _e3011630193_)))
                                                          (if (gx#stx-null?
                                                               _tl3011830198_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3010030150_)
                          (let ((___splice4218542186_
                                 (gx#syntax-split-splice _tl3010030150_ '0)))
                            (let ((_tl3012130203_
                                   (##vector-ref ___splice4218542186_ '1))
                                  (_target3011930201_
                                   (##vector-ref ___splice4218542186_ '0)))
                              (if (gx#stx-null? _tl3012130203_)
                                  (letrec ((_loop3012230206_
                                            (lambda (_hd3012030209_
                                                     _arg3012630211_)
                                              (if (gx#stx-pair? _hd3012030209_)
                                                  (let ((_e3012330214_
                                                         (gx#stx-e
                                                          _hd3012030209_)))
                                                    (let ((_lp-tl3012530219_
                                                           (##cdr _e3012330214_))
                                                          (_lp-hd3012430217_
                                                           (##car _e3012330214_)))
                                                      (_loop3012230206_
                                                       _lp-tl3012530219_
                                                       (cons _lp-hd3012430217_
                                                             _arg3012630211_))))
                                                  (let ((_arg3012730222_
                                                         (reverse _arg3012630211_)))
                                                    (___kont4218142182_
                                                     _arg3012730222_
                                                     _hd3011730196_
                                                     _id3011530190_))))))
                                    (_loop3012230206_ _target3011930201_ '()))
                                  (_g2999930132_))))
                          (_g2999930132_))
                      (_g2999930132_))))
              (_g2999930132_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop3011030174_ _target3010730169_ '()))))
                             (___match4231042311_
                              (lambda (_e3002130641_
                                       _hd3002230644_
                                       _tl3002330646_
                                       _e3002430649_
                                       _hd3002530652_
                                       _tl3002630654_
                                       _e3002730657_
                                       _hd3002830660_
                                       _tl3002930662_
                                       _e3003030665_
                                       _hd3003130668_
                                       _tl3003230670_
                                       _e3003330673_
                                       _hd3003430676_
                                       _tl3003530678_
                                       _e3003630681_
                                       _hd3003730684_
                                       _tl3003830686_
                                       _e3003930689_
                                       _hd3004030692_
                                       _tl3004130694_
                                       _e3004230697_
                                       _hd3004330700_
                                       _tl3004430702_
                                       _e3004530705_
                                       _hd3004630708_
                                       _tl3004730710_
                                       _e3004830713_
                                       _hd3004930716_
                                       _tl3005030718_
                                       _e3005130721_
                                       _hd3005230724_
                                       _tl3005330726_
                                       _e3005430729_
                                       _hd3005530732_
                                       _tl3005630734_)
                                (let ((_L30737_ _hd3005530732_)
                                      (_L30738_ _tl3004730710_)
                                      (_L30739_ _hd3005230724_)
                                      (_L30740_ _hd3003730684_)
                                      (_L30741_ _hd3003430676_))
                                  (if (gxc#runtime-identifier=?
                                       _L30739_
                                       'gx#syntax-split-splice)
                                      (___kont4217542176_
                                       _L30737_
                                       _L30738_
                                       _L30739_
                                       _L30740_
                                       _L30741_)
                                      (___kont4217742178_
                                       _hd3005530732_
                                       _hd3002530652_))))))
                        (if (gx#stx-pair? ___stx4217142172_)
                            (let ((_e3000430789_ (gx#stx-e ___stx4217142172_)))
                              (let ((_tl3000630794_ (##cdr _e3000430789_))
                                    (_hd3000530792_ (##car _e3000430789_)))
                                (if (gx#identifier? _hd3000530792_)
                                    (if (gx#stx-eq? '%#if _hd3000530792_)
                                        (if (gx#stx-pair? _tl3000630794_)
                                            (let ((_e3000730797_
                                                   (gx#stx-e _tl3000630794_)))
                                              (let ((_tl3000930802_
                                                     (##cdr _e3000730797_))
                                                    (_hd3000830800_
                                                     (##car _e3000730797_)))
                                                (if (gx#stx-pair?
                                                     _tl3000930802_)
                                                    (let ((_e3001030805_
                                                           (gx#stx-e
                                                            _tl3000930802_)))
                                                      (let ((_tl3001230810_
                                                             (##cdr _e3001030805_))
                                                            (_hd3001130808_
                                                             (##car _e3001030805_)))
                                                        (if (gx#stx-pair?
                                                             _tl3001230810_)
                                                            (let ((_e3001330813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3001230810_)))
                      (let ((_tl3001530818_ (##cdr _e3001330813_))
                            (_hd3001430816_ (##car _e3001330813_)))
                        (if (gx#stx-null? _tl3001530818_)
                            (___kont4217342174_
                             _hd3001430816_
                             _hd3001130808_
                             _hd3000830800_)
                            (_g2999930132_))))
                    (_g2999930132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2999930132_))))
                                            (_g2999930132_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3000530792_)
                                            (if (gx#stx-pair? _tl3000630794_)
                                                (let ((_e3002430649_
                                                       (gx#stx-e
                                                        _tl3000630794_)))
                                                  (let ((_tl3002630654_
                                                         (##cdr _e3002430649_))
                                                        (_hd3002530652_
                                                         (##car _e3002430649_)))
                                                    (if (gx#stx-pair?
                                                         _hd3002530652_)
                                                        (let ((_e3002730657_
                                                               (gx#stx-e
                                                                _hd3002530652_)))
                                                          (let ((_tl3002930662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3002730657_))
                        (_hd3002830660_ (##car _e3002730657_)))
                    (if (gx#stx-pair? _hd3002830660_)
                        (let ((_e3003030665_ (gx#stx-e _hd3002830660_)))
                          (let ((_tl3003230670_ (##cdr _e3003030665_))
                                (_hd3003130668_ (##car _e3003030665_)))
                            (if (gx#stx-pair? _hd3003130668_)
                                (let ((_e3003330673_
                                       (gx#stx-e _hd3003130668_)))
                                  (let ((_tl3003530678_ (##cdr _e3003330673_))
                                        (_hd3003430676_ (##car _e3003330673_)))
                                    (if (gx#stx-pair? _tl3003530678_)
                                        (let ((_e3003630681_
                                               (gx#stx-e _tl3003530678_)))
                                          (let ((_tl3003830686_
                                                 (##cdr _e3003630681_))
                                                (_hd3003730684_
                                                 (##car _e3003630681_)))
                                            (if (gx#stx-null? _tl3003830686_)
                                                (if (gx#stx-pair?
                                                     _tl3003230670_)
                                                    (let ((_e3003930689_
                                                           (gx#stx-e
                                                            _tl3003230670_)))
                                                      (let ((_tl3004130694_
                                                             (##cdr _e3003930689_))
                                                            (_hd3004030692_
                                                             (##car _e3003930689_)))
                                                        (if (gx#stx-pair?
                                                             _hd3004030692_)
                                                            (let ((_e3004230697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3004030692_)))
                      (let ((_tl3004430702_ (##cdr _e3004230697_))
                            (_hd3004330700_ (##car _e3004230697_)))
                        (if (gx#identifier? _hd3004330700_)
                            (if (gx#stx-eq? '%#call _hd3004330700_)
                                (if (gx#stx-pair? _tl3004430702_)
                                    (let ((_e3004530705_
                                           (gx#stx-e _tl3004430702_)))
                                      (let ((_tl3004730710_
                                             (##cdr _e3004530705_))
                                            (_hd3004630708_
                                             (##car _e3004530705_)))
                                        (if (gx#stx-pair? _hd3004630708_)
                                            (let ((_e3004830713_
                                                   (gx#stx-e _hd3004630708_)))
                                              (let ((_tl3005030718_
                                                     (##cdr _e3004830713_))
                                                    (_hd3004930716_
                                                     (##car _e3004830713_)))
                                                (if (gx#identifier?
                                                     _hd3004930716_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3004930716_)
                                                        (if (gx#stx-pair?
                                                             _tl3005030718_)
                                                            (let ((_e3005130721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3005030718_)))
                      (let ((_tl3005330726_ (##cdr _e3005130721_))
                            (_hd3005230724_ (##car _e3005130721_)))
                        (if (gx#stx-null? _tl3005330726_)
                            (if (gx#stx-null? _tl3004130694_)
                                (if (gx#stx-null? _tl3002930662_)
                                    (if (gx#stx-pair? _tl3002630654_)
                                        (let ((_e3005430729_
                                               (gx#stx-e _tl3002630654_)))
                                          (let ((_tl3005630734_
                                                 (##cdr _e3005430729_))
                                                (_hd3005530732_
                                                 (##car _e3005430729_)))
                                            (if (gx#stx-null? _tl3005630734_)
                                                (___match4231042311_
                                                 _e3000430789_
                                                 _hd3000530792_
                                                 _tl3000630794_
                                                 _e3002430649_
                                                 _hd3002530652_
                                                 _tl3002630654_
                                                 _e3002730657_
                                                 _hd3002830660_
                                                 _tl3002930662_
                                                 _e3003030665_
                                                 _hd3003130668_
                                                 _tl3003230670_
                                                 _e3003330673_
                                                 _hd3003430676_
                                                 _tl3003530678_
                                                 _e3003630681_
                                                 _hd3003730684_
                                                 _tl3003830686_
                                                 _e3003930689_
                                                 _hd3004030692_
                                                 _tl3004130694_
                                                 _e3004230697_
                                                 _hd3004330700_
                                                 _tl3004430702_
                                                 _e3004530705_
                                                 _hd3004630708_
                                                 _tl3004730710_
                                                 _e3004830713_
                                                 _hd3004930716_
                                                 _tl3005030718_
                                                 _e3005130721_
                                                 _hd3005230724_
                                                 _tl3005330726_
                                                 _e3005430729_
                                                 _hd3005530732_
                                                 _tl3005630734_)
                                                (_g2999930132_))))
                                        (_g2999930132_))
                                    (if (gx#stx-pair? _tl3002630654_)
                                        (let ((_e3006530611_
                                               (gx#stx-e _tl3002630654_)))
                                          (let ((_tl3006730616_
                                                 (##cdr _e3006530611_))
                                                (_hd3006630614_
                                                 (##car _e3006530611_)))
                                            (if (gx#stx-null? _tl3006730616_)
                                                (___kont4217742178_
                                                 _hd3006630614_
                                                 _hd3002530652_)
                                                (_g2999930132_))))
                                        (_g2999930132_)))
                                (if (gx#stx-pair? _tl3002630654_)
                                    (let ((_e3006530611_
                                           (gx#stx-e _tl3002630654_)))
                                      (let ((_tl3006730616_
                                             (##cdr _e3006530611_))
                                            (_hd3006630614_
                                             (##car _e3006530611_)))
                                        (if (gx#stx-null? _tl3006730616_)
                                            (___kont4217742178_
                                             _hd3006630614_
                                             _hd3002530652_)
                                            (_g2999930132_))))
                                    (_g2999930132_)))
                            (if (gx#stx-pair? _tl3002630654_)
                                (let ((_e3006530611_
                                       (gx#stx-e _tl3002630654_)))
                                  (let ((_tl3006730616_ (##cdr _e3006530611_))
                                        (_hd3006630614_ (##car _e3006530611_)))
                                    (if (gx#stx-null? _tl3006730616_)
                                        (___kont4217742178_
                                         _hd3006630614_
                                         _hd3002530652_)
                                        (_g2999930132_))))
                                (_g2999930132_)))))
                    (if (gx#stx-pair? _tl3002630654_)
                        (let ((_e3006530611_ (gx#stx-e _tl3002630654_)))
                          (let ((_tl3006730616_ (##cdr _e3006530611_))
                                (_hd3006630614_ (##car _e3006530611_)))
                            (if (gx#stx-null? _tl3006730616_)
                                (___kont4217742178_
                                 _hd3006630614_
                                 _hd3002530652_)
                                (_g2999930132_))))
                        (_g2999930132_)))
                (if (gx#stx-pair? _tl3002630654_)
                    (let ((_e3006530611_ (gx#stx-e _tl3002630654_)))
                      (let ((_tl3006730616_ (##cdr _e3006530611_))
                            (_hd3006630614_ (##car _e3006530611_)))
                        (if (gx#stx-null? _tl3006730616_)
                            (___kont4217742178_ _hd3006630614_ _hd3002530652_)
                            (_g2999930132_))))
                    (_g2999930132_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3002630654_)
                                                        (let ((_e3006530611_
                                                               (gx#stx-e
                                                                _tl3002630654_)))
                                                          (let ((_tl3006730616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3006530611_))
                        (_hd3006630614_ (##car _e3006530611_)))
                    (if (gx#stx-null? _tl3006730616_)
                        (___kont4217742178_ _hd3006630614_ _hd3002530652_)
                        (_g2999930132_))))
                (_g2999930132_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3002630654_)
                                                (let ((_e3006530611_
                                                       (gx#stx-e
                                                        _tl3002630654_)))
                                                  (let ((_tl3006730616_
                                                         (##cdr _e3006530611_))
                                                        (_hd3006630614_
                                                         (##car _e3006530611_)))
                                                    (if (gx#stx-null?
                                                         _tl3006730616_)
                                                        (___kont4217742178_
                                                         _hd3006630614_
                                                         _hd3002530652_)
                                                        (_g2999930132_))))
                                                (_g2999930132_)))))
                                    (if (gx#stx-pair? _tl3002630654_)
                                        (let ((_e3006530611_
                                               (gx#stx-e _tl3002630654_)))
                                          (let ((_tl3006730616_
                                                 (##cdr _e3006530611_))
                                                (_hd3006630614_
                                                 (##car _e3006530611_)))
                                            (if (gx#stx-null? _tl3006730616_)
                                                (___kont4217742178_
                                                 _hd3006630614_
                                                 _hd3002530652_)
                                                (_g2999930132_))))
                                        (_g2999930132_)))
                                (if (gx#stx-pair? _tl3002630654_)
                                    (let ((_e3006530611_
                                           (gx#stx-e _tl3002630654_)))
                                      (let ((_tl3006730616_
                                             (##cdr _e3006530611_))
                                            (_hd3006630614_
                                             (##car _e3006530611_)))
                                        (if (gx#stx-null? _tl3006730616_)
                                            (___kont4217742178_
                                             _hd3006630614_
                                             _hd3002530652_)
                                            (_g2999930132_))))
                                    (_g2999930132_)))
                            (if (gx#stx-pair? _tl3002630654_)
                                (let ((_e3006530611_
                                       (gx#stx-e _tl3002630654_)))
                                  (let ((_tl3006730616_ (##cdr _e3006530611_))
                                        (_hd3006630614_ (##car _e3006530611_)))
                                    (if (gx#stx-null? _tl3006730616_)
                                        (___kont4217742178_
                                         _hd3006630614_
                                         _hd3002530652_)
                                        (_g2999930132_))))
                                (_g2999930132_)))))
                    (if (gx#stx-pair? _tl3002630654_)
                        (let ((_e3006530611_ (gx#stx-e _tl3002630654_)))
                          (let ((_tl3006730616_ (##cdr _e3006530611_))
                                (_hd3006630614_ (##car _e3006530611_)))
                            (if (gx#stx-null? _tl3006730616_)
                                (___kont4217742178_
                                 _hd3006630614_
                                 _hd3002530652_)
                                (_g2999930132_))))
                        (_g2999930132_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3002630654_)
                                                        (let ((_e3006530611_
                                                               (gx#stx-e
                                                                _tl3002630654_)))
                                                          (let ((_tl3006730616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3006530611_))
                        (_hd3006630614_ (##car _e3006530611_)))
                    (if (gx#stx-null? _tl3006730616_)
                        (___kont4217742178_ _hd3006630614_ _hd3002530652_)
                        (_g2999930132_))))
                (_g2999930132_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _tl3002630654_)
                                                    (let ((_e3006530611_
                                                           (gx#stx-e
                                                            _tl3002630654_)))
                                                      (let ((_tl3006730616_
                                                             (##cdr _e3006530611_))
                                                            (_hd3006630614_
                                                             (##car _e3006530611_)))
                                                        (if (gx#stx-null?
                                                             _tl3006730616_)
                                                            (___kont4217742178_
                                                             _hd3006630614_
                                                             _hd3002530652_)
                                                            (_g2999930132_))))
                                                    (_g2999930132_)))))
                                        (if (gx#stx-pair? _tl3002630654_)
                                            (let ((_e3006530611_
                                                   (gx#stx-e _tl3002630654_)))
                                              (let ((_tl3006730616_
                                                     (##cdr _e3006530611_))
                                                    (_hd3006630614_
                                                     (##car _e3006530611_)))
                                                (if (gx#stx-null?
                                                     _tl3006730616_)
                                                    (___kont4217742178_
                                                     _hd3006630614_
                                                     _hd3002530652_)
                                                    (_g2999930132_))))
                                            (_g2999930132_)))))
                                (if (gx#stx-pair? _tl3002630654_)
                                    (let ((_e3006530611_
                                           (gx#stx-e _tl3002630654_)))
                                      (let ((_tl3006730616_
                                             (##cdr _e3006530611_))
                                            (_hd3006630614_
                                             (##car _e3006530611_)))
                                        (if (gx#stx-null? _tl3006730616_)
                                            (___kont4217742178_
                                             _hd3006630614_
                                             _hd3002530652_)
                                            (_g2999930132_))))
                                    (_g2999930132_)))))
                        (if (gx#stx-pair? _tl3002630654_)
                            (let ((_e3006530611_ (gx#stx-e _tl3002630654_)))
                              (let ((_tl3006730616_ (##cdr _e3006530611_))
                                    (_hd3006630614_ (##car _e3006530611_)))
                                (if (gx#stx-null? _tl3006730616_)
                                    (___kont4217742178_
                                     _hd3006630614_
                                     _hd3002530652_)
                                    (_g2999930132_))))
                            (_g2999930132_)))))
                (if (gx#stx-pair? _tl3002630654_)
                    (let ((_e3006530611_ (gx#stx-e _tl3002630654_)))
                      (let ((_tl3006730616_ (##cdr _e3006530611_))
                            (_hd3006630614_ (##car _e3006530611_)))
                        (if (gx#stx-null? _tl3006730616_)
                            (___kont4217742178_ _hd3006630614_ _hd3002530652_)
                            (_g2999930132_))))
                    (_g2999930132_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2999930132_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3000530792_)
                                                (if (gx#stx-pair?
                                                     _tl3000630794_)
                                                    (let ((_e3007430515_
                                                           (gx#stx-e
                                                            _tl3000630794_)))
                                                      (let ((_tl3007630520_
                                                             (##cdr _e3007430515_))
                                                            (_hd3007530518_
                                                             (##car _e3007430515_)))
                                                        (if (gx#stx-pair?
                                                             _hd3007530518_)
                                                            (let ((_e3007730523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3007530518_)))
                      (let ((_tl3007930528_ (##cdr _e3007730523_))
                            (_hd3007830526_ (##car _e3007730523_)))
                        (if (gx#stx-pair? _hd3007830526_)
                            (let ((_e3008030531_ (gx#stx-e _hd3007830526_)))
                              (let ((_tl3008230536_ (##cdr _e3008030531_))
                                    (_hd3008130534_ (##car _e3008030531_)))
                                (if (gx#stx-pair? _hd3008130534_)
                                    (let ((_e3008330539_
                                           (gx#stx-e _hd3008130534_)))
                                      (let ((_tl3008530544_
                                             (##cdr _e3008330539_))
                                            (_hd3008430542_
                                             (##car _e3008330539_)))
                                        (if (gx#stx-null? _tl3008530544_)
                                            (if (gx#stx-pair? _tl3008230536_)
                                                (let ((_e3008630547_
                                                       (gx#stx-e
                                                        _tl3008230536_)))
                                                  (let ((_tl3008830552_
                                                         (##cdr _e3008630547_))
                                                        (_hd3008730550_
                                                         (##car _e3008630547_)))
                                                    (if (gx#stx-null?
                                                         _tl3008830552_)
                                                        (if (gx#stx-null?
                                                             _tl3007930528_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3007630520_)
                        (let ((_e3008930555_ (gx#stx-e _tl3007630520_)))
                          (let ((_tl3009130560_ (##cdr _e3008930555_))
                                (_hd3009030558_ (##car _e3008930555_)))
                            (if (gx#stx-null? _tl3009130560_)
                                (___kont4217942180_
                                 _hd3009030558_
                                 _hd3008730550_
                                 _hd3008430542_)
                                (_g2999930132_))))
                        (_g2999930132_))
                    (_g2999930132_))
                (_g2999930132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2999930132_))
                                            (_g2999930132_))))
                                    (_g2999930132_))))
                            (_g2999930132_))))
                    (_g2999930132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2999930132_))
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd3000530792_)
                                                    (if (gx#stx-pair?
                                                         _tl3000630794_)
                                                        (let ((_e3009830145_
                                                               (gx#stx-e
                                                                _tl3000630794_)))
                                                          (let ((_tl3010030150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3009830145_))
                        (_hd3009930148_ (##car _e3009830145_)))
                    (if (gx#stx-pair? _hd3009930148_)
                        (let ((_e3010130153_ (gx#stx-e _hd3009930148_)))
                          (let ((_tl3010330158_ (##cdr _e3010130153_))
                                (_hd3010230156_ (##car _e3010130153_)))
                            (if (gx#identifier? _hd3010230156_)
                                (if (gx#stx-eq? '%#lambda _hd3010230156_)
                                    (if (gx#stx-pair? _tl3010330158_)
                                        (let ((_e3010430161_
                                               (gx#stx-e _tl3010330158_)))
                                          (let ((_tl3010630166_
                                                 (##cdr _e3010430161_))
                                                (_hd3010530164_
                                                 (##car _e3010430161_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3010530164_)
                                                (let ((___splice4218342184_
                                                       (gx#syntax-split-splice
                                                        _hd3010530164_
                                                        '0)))
                                                  (let ((_tl3010930171_
                                                         (##vector-ref
                                                          ___splice4218342184_
                                                          '1))
                                                        (_target3010730169_
                                                         (##vector-ref
                                                          ___splice4218342184_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3010930171_)
                                                        (___match4242842429_
                                                         _e3000430789_
                                                         _hd3000530792_
                                                         _tl3000630794_
                                                         _e3009830145_
                                                         _hd3009930148_
                                                         _tl3010030150_
                                                         _e3010130153_
                                                         _hd3010230156_
                                                         _tl3010330158_
                                                         _e3010430161_
                                                         _hd3010530164_
                                                         _tl3010630166_
                                                         ___splice4218342184_
                                                         _target3010730169_
                                                         _tl3010930171_)
                                                        (_g2999930132_))))
                                                (_g2999930132_))))
                                        (_g2999930132_))
                                    (_g2999930132_))
                                (_g2999930132_))))
                        (_g2999930132_))))
                (_g2999930132_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2999930132_)))))
                                    (_g2999930132_))))
                            (_g2999930132_)))))))
               (_xform-loop-e29607_
                (lambda (_expr29816_
                         _kont-id29817_
                         _kont-box29818_
                         _negation-id29819_)
                  (let* ((_g2982129861_
                          (lambda (_g2982229858_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2982229858_)))
                         (_g2982029987_
                          (lambda (_g2982229864_)
                            (if (gx#stx-pair? _g2982229864_)
                                (let ((_e2982729866_ (gx#stx-e _g2982229864_)))
                                  (let ((_hd2982829869_ (##car _e2982729866_))
                                        (_tl2982929871_ (##cdr _e2982729866_)))
                                    (if (gx#identifier? _hd2982829869_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2982829869_)
                                            (if (gx#stx-pair? _tl2982929871_)
                                                (let ((_e2983029874_
                                                       (gx#stx-e
                                                        _tl2982929871_)))
                                                  (let ((_hd2983129877_
                                                         (##car _e2983029874_))
                                                        (_tl2983229879_
                                                         (##cdr _e2983029874_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd2983129877_)
                                                        (let ((_g42745_
                                                               (gx#syntax-split-splice
                                                                _hd2983129877_
                                                                '0)))
                                                          (begin
                                                            (let ((_g42746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g42745_)
                               (##vector-length _g42745_)
                               1)))
                      (if (not (##fx= _g42746_ 2))
                          (error "Context expects 2 values" _g42746_)))
                    (let ((_target2983329882_ (##vector-ref _g42745_ 0))
                          (_tl2983529884_ (##vector-ref _g42745_ 1)))
                      (if (gx#stx-null? _tl2983529884_)
                          (letrec ((_loop2983629887_
                                    (lambda (_hd2983429890_ _id2984029892_)
                                      (if (gx#stx-pair? _hd2983429890_)
                                          (let ((_e2983729895_
                                                 (gx#stx-e _hd2983429890_)))
                                            (let ((_lp-hd2983829898_
                                                   (##car _e2983729895_))
                                                  (_lp-tl2983929900_
                                                   (##cdr _e2983729895_)))
                                              (_loop2983629887_
                                               _lp-tl2983929900_
                                               (cons _lp-hd2983829898_
                                                     _id2984029892_))))
                                          (let ((_id2984129903_
                                                 (reverse _id2984029892_)))
                                            (if (gx#stx-pair? _tl2983229879_)
                                                (let ((_e2984229906_
                                                       (gx#stx-e
                                                        _tl2983229879_)))
                                                  (let ((_hd2984329909_
                                                         (##car _e2984229906_))
                                                        (_tl2984429911_
                                                         (##cdr _e2984229906_)))
                                                    (if (gx#stx-pair?
                                                         _hd2984329909_)
                                                        (let ((_e2984529914_
                                                               (gx#stx-e
                                                                _hd2984329909_)))
                                                          (let ((_hd2984629917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2984529914_))
                        (_tl2984729919_ (##cdr _e2984529914_)))
                    (if (gx#identifier? _hd2984629917_)
                        (if (gx#stx-eq? '%#if _hd2984629917_)
                            (if (gx#stx-pair? _tl2984729919_)
                                (let ((_e2984829922_
                                       (gx#stx-e _tl2984729919_)))
                                  (let ((_hd2984929925_ (##car _e2984829922_))
                                        (_tl2985029927_ (##cdr _e2984829922_)))
                                    (if (gx#stx-pair? _tl2985029927_)
                                        (let ((_e2985129930_
                                               (gx#stx-e _tl2985029927_)))
                                          (let ((_hd2985229933_
                                                 (##car _e2985129930_))
                                                (_tl2985329935_
                                                 (##cdr _e2985129930_)))
                                            (if (gx#stx-pair? _tl2985329935_)
                                                (let ((_e2985429938_
                                                       (gx#stx-e
                                                        _tl2985329935_)))
                                                  (let ((_hd2985529941_
                                                         (##car _e2985429938_))
                                                        (_tl2985629943_
                                                         (##cdr _e2985429938_)))
                                                    (if (gx#stx-null?
                                                         _tl2985629943_)
                                                        (if (gx#stx-null?
                                                             _tl2984429911_)
                                                            ((lambda (_L29946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L29947_
                              _L29948_
                              _L29949_)
                       (let ((_E29978_
                              (_xform-e29606_
                               _L29946_
                               _kont-id29817_
                               _kont-box29818_
                               _negation-id29819_)))
                         (cons '%#lambda
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g2997929982_
                                                        _g2998029984_)
                                                 (cons _g2997929982_
                                                       _g2998029984_))
                                               '()
                                               _L29949_))
                                     (cons (cons '%#if
                                                 (cons _L29948_
                                                       (cons _L29947_
                                                             (cons _E29978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _hd2985529941_
                     _hd2985229933_
                     _hd2984929925_
                     _id2984129903_)
                    (_g2982129861_ _g2982229864_))
                (_g2982129861_ _g2982229864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2982129861_
                                                 _g2982229864_))))
                                        (_g2982129861_ _g2982229864_))))
                                (_g2982129861_ _g2982229864_))
                            (_g2982129861_ _g2982229864_))
                        (_g2982129861_ _g2982229864_))))
                (_g2982129861_ _g2982229864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2982129861_
                                                 _g2982229864_)))))))
                            (_loop2983629887_ _target2983329882_ '()))
                          (_g2982129861_ _g2982229864_)))))
                (_g2982129861_ _g2982229864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2982129861_ _g2982229864_))
                                            (_g2982129861_ _g2982229864_))
                                        (_g2982129861_ _g2982229864_))))
                                (_g2982129861_ _g2982229864_)))))
                    (_g2982029987_ _expr29816_))))
               (_clause-e29608_
                (lambda (_clause-lambda29686_ _kont-id29687_ _rest29688_)
                  (letrec* ((_kont-box29690_ (box '#f)))
                    (let* ((_negation-id29730_
                            (let* ((_rest2969129701_ _rest29688_)
                                   (_else2969329709_
                                    (lambda () _negation-id29604_))
                                   (_K2969529715_
                                    (lambda (_clause29712_ _clause-id29713_)
                                      _clause-id29713_)))
                              (if (##pair? _rest2969129701_)
                                  (let ((_hd2969629718_
                                         (##car _rest2969129701_)))
                                    (if (##pair? _hd2969629718_)
                                        (let ((_hd2969829721_
                                               (##car _hd2969629718_))
                                              (_tl2969929723_
                                               (##cdr _hd2969629718_)))
                                          (let* ((_clause-id29726_
                                                  _hd2969829721_)
                                                 (_clause29728_
                                                  _tl2969929723_))
                                            (_K2969529715_
                                             _clause29728_
                                             _clause-id29726_)))
                                        (_else2969329709_)))
                                  (_else2969329709_))))
                           (_g2973229752_
                            (lambda (_g2973329749_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2973329749_)))
                           (_g2973129813_
                            (lambda (_g2973329755_)
                              (if (gx#stx-pair? _g2973329755_)
                                  (let ((_e2973629757_
                                         (gx#stx-e _g2973329755_)))
                                    (let ((_hd2973729760_
                                           (##car _e2973629757_))
                                          (_tl2973829762_
                                           (##cdr _e2973629757_)))
                                      (if (gx#identifier? _hd2973729760_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd2973729760_)
                                              (if (gx#stx-pair? _tl2973829762_)
                                                  (let ((_e2973929765_
                                                         (gx#stx-e
                                                          _tl2973829762_)))
                                                    (let ((_hd2974029768_
                                                           (##car _e2973929765_))
                                                          (_tl2974129770_
                                                           (##cdr _e2973929765_)))
                                                      (if (gx#stx-pair?
                                                           _hd2974029768_)
                                                          (let ((_e2974229773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2974029768_)))
                    (let ((_hd2974329776_ (##car _e2974229773_))
                          (_tl2974429778_ (##cdr _e2974229773_)))
                      (if (gx#stx-null? _tl2974429778_)
                          (if (gx#stx-pair? _tl2974129770_)
                              (let ((_e2974529781_ (gx#stx-e _tl2974129770_)))
                                (let ((_hd2974629784_ (##car _e2974529781_))
                                      (_tl2974729786_ (##cdr _e2974529781_)))
                                  (if (gx#stx-null? _tl2974729786_)
                                      ((lambda (_L29789_ _L29790_)
                                         (let ((_body29811_
                                                (_xform-e29606_
                                                 _L29789_
                                                 _kont-id29687_
                                                 _kont-box29690_
                                                 _negation-id29730_)))
                                           (values (cons '%#lambda
                                                         (cons (cons _L29790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _body29811_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (unbox _kont-box29690_))))
                                       _hd2974629784_
                                       _hd2974329776_)
                                      (_g2973229752_ _g2973329755_))))
                              (_g2973229752_ _g2973329755_))
                          (_g2973229752_ _g2973329755_))))
                  (_g2973229752_ _g2973329755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2973229752_
                                                   _g2973329755_))
                                              (_g2973229752_ _g2973329755_))
                                          (_g2973229752_ _g2973329755_))))
                                  (_g2973229752_ _g2973329755_)))))
                      (_g2973129813_ _clause-lambda29686_))))))
        (let _lp29610_ ((_rest29612_ _clauses29603_)
                        (_clauses29613_ '())
                        (_konts29614_ '()))
          (let* ((_rest2961529623_ _rest29612_)
                 (_else2961729631_
                  (lambda ()
                    (values (reverse _clauses29613_) (reverse _konts29614_))))
                 (_K2961929674_
                  (lambda (_rest29634_ _clause29635_)
                    (let* ((_clause2963629643_ _clause29635_)
                           (_E2963829647_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause2963629643_)))
                           (_K2963929662_
                            (lambda (_clause-lambda29650_ _clause-id29651_)
                              (let* ((_id29653_ (make-symbol (gensym '__kont)))
                                     (_id29655_
                                      (gx#core-quote-syntax__0 _id29653_))
                                     (_g42747_
                                      (gx#core-bind-runtime!__0 _id29655_))
                                     (_g42748_
                                      (_clause-e29608_
                                       _clause-lambda29650_
                                       _id29655_
                                       _rest29634_)))
                                (begin
                                  (let ((_g42749_
                                         (if (##values? _g42748_)
                                             (##vector-length _g42748_)
                                             1)))
                                    (if (not (##fx= _g42749_ 2))
                                        (error "Context expects 2 values"
                                               _g42749_)))
                                  (let ((_clause-lambda29658_
                                         (##vector-ref _g42748_ 0))
                                        (_kont29659_
                                         (##vector-ref _g42748_ 1)))
                                    (let ()
                                      (_lp29610_
                                       _rest29634_
                                       (cons (cons _clause-id29651_
                                                   _clause-lambda29658_)
                                             _clauses29613_)
                                       (cons (cons _id29655_ _kont29659_)
                                             _konts29614_)))))))))
                      (if (##pair? _clause2963629643_)
                          (let ((_hd2964029665_ (##car _clause2963629643_))
                                (_tl2964129667_ (##cdr _clause2963629643_)))
                            (let* ((_clause-id29670_ _hd2964029665_)
                                   (_clause-lambda29672_ _tl2964129667_))
                              (_K2963929662_
                               _clause-lambda29672_
                               _clause-id29670_)))
                          (_E2963829647_))))))
            (if (##pair? _rest2961529623_)
                (let ((_hd2962029677_ (##car _rest2961529623_))
                      (_tl2962129679_ (##cdr _rest2961529623_)))
                  (let* ((_clause29682_ _hd2962029677_)
                         (_rest29684_ _tl2962129679_))
                    (_K2961929674_ _rest29684_ _clause29682_)))
                (_else2961729631_)))))))
  (define gxc#optimize-syntax-case-closure
    (lambda (_clause28947_ _negation28948_ _target28949_)
      (letrec ((_closure-e28951_
                (lambda (_expr29068_)
                  (let* ((___stx4243142432_ _expr29068_)
                         (_g2907529190_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4243142432_))))
                    (let ((___kont4243342434_
                           (lambda (_L29581_ _L29582_ _L29583_)
                             (cons '%#if
                                   (cons _L29583_
                                         (cons (_closure-e28951_ _L29582_)
                                               (cons (_closure-e28951_
                                                      _L29581_)
                                                     '()))))))
                          (___kont4243542436_
                           (lambda (_L29529_ _L29530_)
                             (cons '%#let-values
                                   (cons _L29530_
                                         (cons (_closure-e28951_ _L29529_)
                                               '())))))
                          (___kont4243742438_
                           (lambda (_L29475_ _L29476_ _L29477_)
                             (cons '%#letrec-values
                                   (cons (cons (cons (cons _L29477_ '())
                                                     (cons (_closure-e28951_
                                                            _L29476_)
                                                           '()))
                                               '())
                                         (cons _L29475_ '())))))
                          (___kont4243942440_
                           (lambda (_L29388_ _L29389_)
                             (cons '%#lambda
                                   (cons (begin
                                           '#!void
                                           (foldr1 (lambda (_g2940629409_
                                                            _g2940729411_)
                                                     (cons _g2940629409_
                                                           _g2940729411_))
                                                   '()
                                                   _L29389_))
                                         (cons (_closure-e28951_ _L29388_)
                                               '())))))
                          (___kont4244342444_
                           (lambda (_L29318_)
                             (cons '%#call
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _L29318_ '()))
                                         '()))))
                          (___kont4244542446_
                           (lambda (_L29251_ _L29252_) _expr29068_)))
                      (let* ((___match4266442665_
                              (lambda (_e2916529195_
                                       _hd2916629198_
                                       _tl2916729200_
                                       _e2916829203_
                                       _hd2916929206_
                                       _tl2917029208_
                                       _e2917129211_
                                       _hd2917229214_
                                       _tl2917329216_
                                       _e2917429219_
                                       _hd2917529222_
                                       _tl2917629224_
                                       ___splice4244742448_
                                       _target2917729227_
                                       _tl2917929229_)
                                (letrec ((_loop2918029232_
                                          (lambda (_hd2917829235_
                                                   _arg2918429237_)
                                            (if (gx#stx-pair? _hd2917829235_)
                                                (let ((_e2918129240_
                                                       (gx#stx-e
                                                        _hd2917829235_)))
                                                  (let ((_lp-tl2918329245_
                                                         (##cdr _e2918129240_))
                                                        (_lp-hd2918229243_
                                                         (##car _e2918129240_)))
                                                    (_loop2918029232_
                                                     _lp-tl2918329245_
                                                     (cons _lp-hd2918229243_
                                                           _arg2918429237_))))
                                                (let ((_arg2918529248_
                                                       (reverse _arg2918429237_)))
                                                  (___kont4244542446_
                                                   _arg2918529248_
                                                   _hd2917529222_))))))
                                  (_loop2918029232_ _target2917729227_ '()))))
                             (___match4262242623_
                              (lambda (_e2914829278_
                                       _hd2914929281_
                                       _tl2915029283_
                                       _e2915129286_
                                       _hd2915229289_
                                       _tl2915329291_
                                       _e2915429294_
                                       _hd2915529297_
                                       _tl2915629299_
                                       _e2915729302_
                                       _hd2915829305_
                                       _tl2915929307_
                                       _e2916029310_
                                       _hd2916129313_
                                       _tl2916229315_)
                                (let ((_L29318_ _hd2915829305_))
                                  (if (gx#free-identifier=?
                                       _L29318_
                                       _negation28948_)
                                      (___kont4244342444_ _L29318_)
                                      (if (gx#stx-pair/null? _tl2915329291_)
                                          (let ((___splice4244742448_
                                                 (gx#syntax-split-splice
                                                  _tl2915329291_
                                                  '0)))
                                            (let ((_tl2917929229_
                                                   (##vector-ref
                                                    ___splice4244742448_
                                                    '1))
                                                  (_target2917729227_
                                                   (##vector-ref
                                                    ___splice4244742448_
                                                    '0)))
                                              (if (gx#stx-null? _tl2917929229_)
                                                  (___match4266442665_
                                                   _e2914829278_
                                                   _hd2914929281_
                                                   _tl2915029283_
                                                   _e2915129286_
                                                   _hd2915229289_
                                                   _tl2915329291_
                                                   _e2915429294_
                                                   _hd2915529297_
                                                   _tl2915629299_
                                                   _e2915729302_
                                                   _hd2915829305_
                                                   _tl2915929307_
                                                   ___splice4244742448_
                                                   _target2917729227_
                                                   _tl2917929229_)
                                                  (_g2907529190_))))
                                          (_g2907529190_))))))
                             (___match4258042581_
                              (lambda (_e2912929340_
                                       _hd2913029343_
                                       _tl2913129345_
                                       _e2913229348_
                                       _hd2913329351_
                                       _tl2913429353_
                                       ___splice4244142442_
                                       _target2913529356_
                                       _tl2913729358_)
                                (letrec ((_loop2913829361_
                                          (lambda (_hd2913629364_
                                                   _id2914229366_)
                                            (if (gx#stx-pair? _hd2913629364_)
                                                (let ((_e2913929369_
                                                       (gx#stx-e
                                                        _hd2913629364_)))
                                                  (let ((_lp-tl2914129374_
                                                         (##cdr _e2913929369_))
                                                        (_lp-hd2914029372_
                                                         (##car _e2913929369_)))
                                                    (_loop2913829361_
                                                     _lp-tl2914129374_
                                                     (cons _lp-hd2914029372_
                                                           _id2914229366_))))
                                                (let ((_id2914329377_
                                                       (reverse _id2914229366_)))
                                                  (if (gx#stx-pair?
                                                       _tl2913429353_)
                                                      (let ((_e2914429380_
                                                             (gx#stx-e
                                                              _tl2913429353_)))
                                                        (let ((_tl2914629385_
                                                               (##cdr _e2914429380_))
                                                              (_hd2914529383_
                                                               (##car _e2914429380_)))
                                                          (if (gx#stx-null?
                                                               _tl2914629385_)
                                                              (___kont4243942440_
                                                               _hd2914529383_
                                                               _id2914329377_)
                                                              (_g2907529190_))))
                                                      (_g2907529190_)))))))
                                  (_loop2913829361_ _target2913529356_ '())))))
                        (if (gx#stx-pair? ___stx4243142432_)
                            (let ((_e2908029549_ (gx#stx-e ___stx4243142432_)))
                              (let ((_tl2908229554_ (##cdr _e2908029549_))
                                    (_hd2908129552_ (##car _e2908029549_)))
                                (if (gx#identifier? _hd2908129552_)
                                    (if (gx#stx-eq? '%#if _hd2908129552_)
                                        (if (gx#stx-pair? _tl2908229554_)
                                            (let ((_e2908329557_
                                                   (gx#stx-e _tl2908229554_)))
                                              (let ((_tl2908529562_
                                                     (##cdr _e2908329557_))
                                                    (_hd2908429560_
                                                     (##car _e2908329557_)))
                                                (if (gx#stx-pair?
                                                     _tl2908529562_)
                                                    (let ((_e2908629565_
                                                           (gx#stx-e
                                                            _tl2908529562_)))
                                                      (let ((_tl2908829570_
                                                             (##cdr _e2908629565_))
                                                            (_hd2908729568_
                                                             (##car _e2908629565_)))
                                                        (if (gx#stx-pair?
                                                             _tl2908829570_)
                                                            (let ((_e2908929573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2908829570_)))
                      (let ((_tl2909129578_ (##cdr _e2908929573_))
                            (_hd2909029576_ (##car _e2908929573_)))
                        (if (gx#stx-null? _tl2909129578_)
                            (___kont4243342434_
                             _hd2909029576_
                             _hd2908729568_
                             _hd2908429560_)
                            (_g2907529190_))))
                    (_g2907529190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2907529190_))))
                                            (_g2907529190_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd2908129552_)
                                            (if (gx#stx-pair? _tl2908229554_)
                                                (let ((_e2909729513_
                                                       (gx#stx-e
                                                        _tl2908229554_)))
                                                  (let ((_tl2909929518_
                                                         (##cdr _e2909729513_))
                                                        (_hd2909829516_
                                                         (##car _e2909729513_)))
                                                    (if (gx#stx-pair?
                                                         _tl2909929518_)
                                                        (let ((_e2910029521_
                                                               (gx#stx-e
                                                                _tl2909929518_)))
                                                          (let ((_tl2910229526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2910029521_))
                        (_hd2910129524_ (##car _e2910029521_)))
                    (if (gx#stx-null? _tl2910229526_)
                        (___kont4243542436_ _hd2910129524_ _hd2909829516_)
                        (_g2907529190_))))
                (_g2907529190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2907529190_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd2908129552_)
                                                (if (gx#stx-pair?
                                                     _tl2908229554_)
                                                    (let ((_e2910929427_
                                                           (gx#stx-e
                                                            _tl2908229554_)))
                                                      (let ((_tl2911129432_
                                                             (##cdr _e2910929427_))
                                                            (_hd2911029430_
                                                             (##car _e2910929427_)))
                                                        (if (gx#stx-pair?
                                                             _hd2911029430_)
                                                            (let ((_e2911229435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2911029430_)))
                      (let ((_tl2911429440_ (##cdr _e2911229435_))
                            (_hd2911329438_ (##car _e2911229435_)))
                        (if (gx#stx-pair? _hd2911329438_)
                            (let ((_e2911529443_ (gx#stx-e _hd2911329438_)))
                              (let ((_tl2911729448_ (##cdr _e2911529443_))
                                    (_hd2911629446_ (##car _e2911529443_)))
                                (if (gx#stx-pair? _hd2911629446_)
                                    (let ((_e2911829451_
                                           (gx#stx-e _hd2911629446_)))
                                      (let ((_tl2912029456_
                                             (##cdr _e2911829451_))
                                            (_hd2911929454_
                                             (##car _e2911829451_)))
                                        (if (gx#stx-null? _tl2912029456_)
                                            (if (gx#stx-pair? _tl2911729448_)
                                                (let ((_e2912129459_
                                                       (gx#stx-e
                                                        _tl2911729448_)))
                                                  (let ((_tl2912329464_
                                                         (##cdr _e2912129459_))
                                                        (_hd2912229462_
                                                         (##car _e2912129459_)))
                                                    (if (gx#stx-null?
                                                         _tl2912329464_)
                                                        (if (gx#stx-null?
                                                             _tl2911429440_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2911129432_)
                        (let ((_e2912429467_ (gx#stx-e _tl2911129432_)))
                          (let ((_tl2912629472_ (##cdr _e2912429467_))
                                (_hd2912529470_ (##car _e2912429467_)))
                            (if (gx#stx-null? _tl2912629472_)
                                (___kont4243742438_
                                 _hd2912529470_
                                 _hd2912229462_
                                 _hd2911929454_)
                                (_g2907529190_))))
                        (_g2907529190_))
                    (_g2907529190_))
                (_g2907529190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2907529190_))
                                            (_g2907529190_))))
                                    (_g2907529190_))))
                            (_g2907529190_))))
                    (_g2907529190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2907529190_))
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd2908129552_)
                                                    (if (gx#stx-pair?
                                                         _tl2908229554_)
                                                        (let ((_e2913229348_
                                                               (gx#stx-e
                                                                _tl2908229554_)))
                                                          (let ((_tl2913429353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2913229348_))
                        (_hd2913329351_ (##car _e2913229348_)))
                    (if (gx#stx-pair/null? _hd2913329351_)
                        (let ((___splice4244142442_
                               (gx#syntax-split-splice _hd2913329351_ '0)))
                          (let ((_tl2913729358_
                                 (##vector-ref ___splice4244142442_ '1))
                                (_target2913529356_
                                 (##vector-ref ___splice4244142442_ '0)))
                            (if (gx#stx-null? _tl2913729358_)
                                (___match4258042581_
                                 _e2908029549_
                                 _hd2908129552_
                                 _tl2908229554_
                                 _e2913229348_
                                 _hd2913329351_
                                 _tl2913429353_
                                 ___splice4244142442_
                                 _target2913529356_
                                 _tl2913729358_)
                                (_g2907529190_))))
                        (_g2907529190_))))
                (_g2907529190_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2908129552_)
                                                        (if (gx#stx-pair?
                                                             _tl2908229554_)
                                                            (let ((_e2915129286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2908229554_)))
                      (let ((_tl2915329291_ (##cdr _e2915129286_))
                            (_hd2915229289_ (##car _e2915129286_)))
                        (if (gx#stx-pair? _hd2915229289_)
                            (let ((_e2915429294_ (gx#stx-e _hd2915229289_)))
                              (let ((_tl2915629299_ (##cdr _e2915429294_))
                                    (_hd2915529297_ (##car _e2915429294_)))
                                (if (gx#identifier? _hd2915529297_)
                                    (if (gx#stx-eq? '%#ref _hd2915529297_)
                                        (if (gx#stx-pair? _tl2915629299_)
                                            (let ((_e2915729302_
                                                   (gx#stx-e _tl2915629299_)))
                                              (let ((_tl2915929307_
                                                     (##cdr _e2915729302_))
                                                    (_hd2915829305_
                                                     (##car _e2915729302_)))
                                                (if (gx#stx-null?
                                                     _tl2915929307_)
                                                    (if (gx#stx-pair?
                                                         _tl2915329291_)
                                                        (let ((_e2916029310_
                                                               (gx#stx-e
                                                                _tl2915329291_)))
                                                          (let ((_tl2916229315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2916029310_))
                        (_hd2916129313_ (##car _e2916029310_)))
                    (if (gx#stx-null? _tl2916229315_)
                        (___match4262242623_
                         _e2908029549_
                         _hd2908129552_
                         _tl2908229554_
                         _e2915129286_
                         _hd2915229289_
                         _tl2915329291_
                         _e2915429294_
                         _hd2915529297_
                         _tl2915629299_
                         _e2915729302_
                         _hd2915829305_
                         _tl2915929307_
                         _e2916029310_
                         _hd2916129313_
                         _tl2916229315_)
                        (if (gx#stx-pair/null? _tl2915329291_)
                            (let ((___splice4244742448_
                                   (gx#syntax-split-splice _tl2915329291_ '0)))
                              (let ((_tl2917929229_
                                     (##vector-ref ___splice4244742448_ '1))
                                    (_target2917729227_
                                     (##vector-ref ___splice4244742448_ '0)))
                                (if (gx#stx-null? _tl2917929229_)
                                    (___match4266442665_
                                     _e2908029549_
                                     _hd2908129552_
                                     _tl2908229554_
                                     _e2915129286_
                                     _hd2915229289_
                                     _tl2915329291_
                                     _e2915429294_
                                     _hd2915529297_
                                     _tl2915629299_
                                     _e2915729302_
                                     _hd2915829305_
                                     _tl2915929307_
                                     ___splice4244742448_
                                     _target2917729227_
                                     _tl2917929229_)
                                    (_g2907529190_))))
                            (_g2907529190_)))))
                (if (gx#stx-pair/null? _tl2915329291_)
                    (let ((___splice4244742448_
                           (gx#syntax-split-splice _tl2915329291_ '0)))
                      (let ((_tl2917929229_
                             (##vector-ref ___splice4244742448_ '1))
                            (_target2917729227_
                             (##vector-ref ___splice4244742448_ '0)))
                        (if (gx#stx-null? _tl2917929229_)
                            (___match4266442665_
                             _e2908029549_
                             _hd2908129552_
                             _tl2908229554_
                             _e2915129286_
                             _hd2915229289_
                             _tl2915329291_
                             _e2915429294_
                             _hd2915529297_
                             _tl2915629299_
                             _e2915729302_
                             _hd2915829305_
                             _tl2915929307_
                             ___splice4244742448_
                             _target2917729227_
                             _tl2917929229_)
                            (_g2907529190_))))
                    (_g2907529190_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2907529190_))))
                                            (_g2907529190_))
                                        (_g2907529190_))
                                    (_g2907529190_))))
                            (_g2907529190_))))
                    (_g2907529190_))
                (_g2907529190_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g2907529190_))))
                            (_g2907529190_))))))))
        (let* ((_clause2895228959_ _clause28947_)
               (_E2895428963_
                (lambda () (error '"No clause matching" _clause2895228959_)))
               (_K2895529056_
                (lambda (_kont28966_ _id28967_)
                  (let* ((_g2896928989_
                          (lambda (_g2897028986_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2897028986_)))
                         (_g2896829053_
                          (lambda (_g2897028992_)
                            (if (gx#stx-pair? _g2897028992_)
                                (let ((_e2897328994_ (gx#stx-e _g2897028992_)))
                                  (let ((_hd2897428997_ (##car _e2897328994_))
                                        (_tl2897528999_ (##cdr _e2897328994_)))
                                    (if (gx#identifier? _hd2897428997_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2897428997_)
                                            (if (gx#stx-pair? _tl2897528999_)
                                                (let ((_e2897629002_
                                                       (gx#stx-e
                                                        _tl2897528999_)))
                                                  (let ((_hd2897729005_
                                                         (##car _e2897629002_))
                                                        (_tl2897829007_
                                                         (##cdr _e2897629002_)))
                                                    (if (gx#stx-pair?
                                                         _hd2897729005_)
                                                        (let ((_e2897929010_
                                                               (gx#stx-e
                                                                _hd2897729005_)))
                                                          (let ((_hd2898029013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2897929010_))
                        (_tl2898129015_ (##cdr _e2897929010_)))
                    (if (gx#stx-null? _tl2898129015_)
                        (if (gx#stx-pair? _tl2897829007_)
                            (let ((_e2898229018_ (gx#stx-e _tl2897829007_)))
                              (let ((_hd2898329021_ (##car _e2898229018_))
                                    (_tl2898429023_ (##cdr _e2898229018_)))
                                (if (gx#stx-null? _tl2898429023_)
                                    ((lambda (_L29026_ _L29027_)
                                       (let* ((_body29048_
                                               (gxc#apply-expression-subst
                                                _L29026_
                                                _L29027_
                                                _target28949_))
                                              (_body29050_
                                               (if _negation28948_
                                                   (_closure-e28951_
                                                    _body29048_)
                                                   _body29048_)))
                                         (cons _id28967_
                                               (cons '%#lambda
                                                     (cons '()
                                                           (cons _body29050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2898329021_
                                     _hd2898029013_)
                                    (_g2896928989_ _g2897028992_))))
                            (_g2896928989_ _g2897028992_))
                        (_g2896928989_ _g2897028992_))))
                (_g2896928989_ _g2897028992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2896928989_ _g2897028992_))
                                            (_g2896928989_ _g2897028992_))
                                        (_g2896928989_ _g2897028992_))))
                                (_g2896928989_ _g2897028992_)))))
                    (_g2896829053_ _kont28966_)))))
          (if (##pair? _clause2895228959_)
              (let ((_hd2895629059_ (##car _clause2895228959_))
                    (_tl2895729061_ (##cdr _clause2895228959_)))
                (let* ((_id29064_ _hd2895629059_) (_kont29066_ _tl2895729061_))
                  (_K2895529056_ _kont29066_ _id29064_)))
              (_E2895428963_))))))
  (define gxc#push-match-vars-let-values%
    (lambda (_stx28733_ _vars28734_ _K28735_)
      (let* ((_g2873728754_
              (lambda (_g2873828751_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2873828751_)))
             (_g2873628944_
              (lambda (_g2873828757_)
                (if (gx#stx-pair? _g2873828757_)
                    (let ((_e2874128759_ (gx#stx-e _g2873828757_)))
                      (let ((_hd2874228762_ (##car _e2874128759_))
                            (_tl2874328764_ (##cdr _e2874128759_)))
                        (if (gx#stx-pair? _tl2874328764_)
                            (let ((_e2874428767_ (gx#stx-e _tl2874328764_)))
                              (let ((_hd2874528770_ (##car _e2874428767_))
                                    (_tl2874628772_ (##cdr _e2874428767_)))
                                (if (gx#stx-pair? _tl2874628772_)
                                    (let ((_e2874728775_
                                           (gx#stx-e _tl2874628772_)))
                                      (let ((_hd2874828778_
                                             (##car _e2874728775_))
                                            (_tl2874928780_
                                             (##cdr _e2874728775_)))
                                        (if (gx#stx-null? _tl2874928780_)
                                            ((lambda (_L28783_ _L28784_)
                                               (let _lp28799_ ((_rest28801_
                                                                _L28784_)
                                                               (_rebind28802_
                                                                '())
                                                               (_vars28803_
                                                                _vars28734_))
                                                 (let* ((_rest2880428812_
                                                         _rest28801_)
                                                        (_else2880628820_
                                                         (lambda ()
                                                           (if (null? _rebind28802_)
                                                               (gxc#compile-e
                                                                _L28783_
                                                                _vars28803_
                                                                _K28735_)
                                                               (gxc#xform-wrap-source
                                                                (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (reverse _rebind28802_)
                                    (cons (gxc#compile-e
                                           _L28783_
                                           _vars28803_
                                           _K28735_)
                                          '())))
                        _stx28733_))))
                (_K2880828932_
                 (lambda (_rest28823_ _bind28824_)
                   (let* ((___stx4266742668_ _bind28824_)
                          (_g2882728850_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4266742668_))))
                     (let ((___kont4266942670_
                            (lambda (_L28902_ _L28903_)
                              (_lp28799_
                               _rest28823_
                               _rebind28802_
                               (cons _bind28824_ _vars28803_))))
                           (___kont4267142672_
                            (lambda ()
                              (_lp28799_
                               _rest28823_
                               (cons _bind28824_ _rebind28802_)
                               _vars28803_))))
                       (if (gx#stx-pair? ___stx4266742668_)
                           (let ((_e2883128862_ (gx#stx-e ___stx4266742668_)))
                             (let ((_tl2883328867_ (##cdr _e2883128862_))
                                   (_hd2883228865_ (##car _e2883128862_)))
                               (if (gx#stx-pair? _hd2883228865_)
                                   (let ((_e2883428870_
                                          (gx#stx-e _hd2883228865_)))
                                     (let ((_tl2883628875_
                                            (##cdr _e2883428870_))
                                           (_hd2883528873_
                                            (##car _e2883428870_)))
                                       (if (gx#stx-null? _tl2883628875_)
                                           (if (gx#stx-pair? _tl2883328867_)
                                               (let ((_e2883728878_
                                                      (gx#stx-e
                                                       _tl2883328867_)))
                                                 (let ((_tl2883928883_
                                                        (##cdr _e2883728878_))
                                                       (_hd2883828881_
                                                        (##car _e2883728878_)))
                                                   (if (gx#stx-pair?
                                                        _hd2883828881_)
                                                       (let ((_e2884028886_
                                                              (gx#stx-e
                                                               _hd2883828881_)))
                                                         (let ((_tl2884228891_
                                                                (##cdr _e2884028886_))
                                                               (_hd2884128889_
                                                                (##car _e2884028886_)))
                                                           (if (gx#identifier?
                                                                _hd2884128889_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd2884128889_)
                           (if (gx#stx-pair? _tl2884228891_)
                               (let ((_e2884328894_ (gx#stx-e _tl2884228891_)))
                                 (let ((_tl2884528899_ (##cdr _e2884328894_))
                                       (_hd2884428897_ (##car _e2884328894_)))
                                   (if (gx#stx-null? _tl2884528899_)
                                       (if (gx#stx-null? _tl2883928883_)
                                           (___kont4266942670_
                                            _hd2884428897_
                                            _hd2883528873_)
                                           (___kont4267142672_))
                                       (___kont4267142672_))))
                               (___kont4267142672_))
                           (___kont4267142672_))
                       (___kont4267142672_))))
               (___kont4267142672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4267142672_))
                                           (___kont4267142672_))))
                                   (___kont4267142672_))))
                           (___kont4267142672_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _rest2880428812_)
                                                       (let ((_hd2880928935_
                                                              (##car _rest2880428812_))
                                                             (_tl2881028937_
                                                              (##cdr _rest2880428812_)))
                                                         (let* ((_bind28940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2880928935_)
                        (_rest28942_ _tl2881028937_))
                   (_K2880828932_ _rest28942_ _bind28940_)))
               (_else2880628820_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd2874828778_
                                             _hd2874528770_)
                                            (_g2873728754_ _g2873828757_))))
                                    (_g2873728754_ _g2873828757_))))
                            (_g2873728754_ _g2873828757_))))
                    (_g2873728754_ _g2873828757_)))))
        (_g2873628944_ _stx28733_))))
  (define gxc#push-match-vars-if%
    (lambda (_stx28648_ _vars28649_ _K28650_)
      (let* ((_g2865228673_
              (lambda (_g2865328670_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2865328670_)))
             (_g2865128730_
              (lambda (_g2865328676_)
                (if (gx#stx-pair? _g2865328676_)
                    (let ((_e2865728678_ (gx#stx-e _g2865328676_)))
                      (let ((_hd2865828681_ (##car _e2865728678_))
                            (_tl2865928683_ (##cdr _e2865728678_)))
                        (if (gx#stx-pair? _tl2865928683_)
                            (let ((_e2866028686_ (gx#stx-e _tl2865928683_)))
                              (let ((_hd2866128689_ (##car _e2866028686_))
                                    (_tl2866228691_ (##cdr _e2866028686_)))
                                (if (gx#stx-pair? _tl2866228691_)
                                    (let ((_e2866328694_
                                           (gx#stx-e _tl2866228691_)))
                                      (let ((_hd2866428697_
                                             (##car _e2866328694_))
                                            (_tl2866528699_
                                             (##cdr _e2866328694_)))
                                        (if (gx#stx-pair? _tl2866528699_)
                                            (let ((_e2866628702_
                                                   (gx#stx-e _tl2866528699_)))
                                              (let ((_hd2866728705_
                                                     (##car _e2866628702_))
                                                    (_tl2866828707_
                                                     (##cdr _e2866628702_)))
                                                (if (gx#stx-null?
                                                     _tl2866828707_)
                                                    ((lambda (_L28710_
                                                              _L28711_
                                                              _L28712_)
                                                       (if (gxc#apply-find-var-refs
                                                            _L28712_
                                                            (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _vars28649_))
                   (gxc#push-match-vars-stop _stx28648_ _vars28649_ _K28650_)
                   (gxc#xform-wrap-source
                    (cons '%#if
                          (cons _L28712_
                                (cons (gxc#compile-e
                                       _L28711_
                                       _vars28649_
                                       _K28650_)
                                      (cons (gxc#compile-e
                                             _L28710_
                                             _vars28649_
                                             _K28650_)
                                            '()))))
                    _stx28648_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd2866728705_
                                                     _hd2866428697_
                                                     _hd2866128689_)
                                                    (_g2865228673_
                                                     _g2865328676_))))
                                            (_g2865228673_ _g2865328676_))))
                                    (_g2865228673_ _g2865328676_))))
                            (_g2865228673_ _g2865328676_))))
                    (_g2865228673_ _g2865328676_)))))
        (_g2865128730_ _stx28648_))))
  (define gxc#push-match-vars-call%
    (lambda (_stx28568_ _vars28569_ _K28570_)
      (let* ((_g2857228591_
              (lambda (_g2857328588_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2857328588_)))
             (_g2857128645_
              (lambda (_g2857328594_)
                (if (gx#stx-pair? _g2857328594_)
                    (let ((_e2857528596_ (gx#stx-e _g2857328594_)))
                      (let ((_hd2857628599_ (##car _e2857528596_))
                            (_tl2857728601_ (##cdr _e2857528596_)))
                        (if (gx#stx-pair? _tl2857728601_)
                            (let ((_e2857828604_ (gx#stx-e _tl2857728601_)))
                              (let ((_hd2857928607_ (##car _e2857828604_))
                                    (_tl2858028609_ (##cdr _e2857828604_)))
                                (if (gx#stx-pair? _hd2857928607_)
                                    (let ((_e2858128612_
                                           (gx#stx-e _hd2857928607_)))
                                      (let ((_hd2858228615_
                                             (##car _e2858128612_))
                                            (_tl2858328617_
                                             (##cdr _e2858128612_)))
                                        (if (gx#identifier? _hd2858228615_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2858228615_)
                                                (if (gx#stx-pair?
                                                     _tl2858328617_)
                                                    (let ((_e2858428620_
                                                           (gx#stx-e
                                                            _tl2858328617_)))
                                                      (let ((_hd2858528623_
                                                             (##car _e2858428620_))
                                                            (_tl2858628625_
                                                             (##cdr _e2858428620_)))
                                                        (if (gx#stx-null?
                                                             _tl2858628625_)
                                                            ((lambda (_L28628_)
                                                               (if (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L28628_
                                _K28570_)
                               (pair? _vars28569_)
                               '#f)
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (reverse _vars28569_)
                                        (cons _stx28568_ '())))
                            _stx28568_)
                           _stx28568_))
                     _hd2858528623_)
                    (_g2857228591_ _g2857328594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2857228591_
                                                     _g2857328594_))
                                                (_g2857228591_ _g2857328594_))
                                            (_g2857228591_ _g2857328594_))))
                                    (_g2857228591_ _g2857328594_))))
                            (_g2857228591_ _g2857328594_))))
                    (_g2857228591_ _g2857328594_)))))
        (_g2857128645_ _stx28568_))))
  (define gxc#push-match-vars-stop
    (lambda (_stx28564_ _vars28565_ _K28566_)
      (if (null? _vars28565_)
          _stx28564_
          (gxc#xform-wrap-source
           (cons '%#let-values
                 (cons (reverse _vars28565_) (cons _stx28564_ '())))
           _stx28564_)))))
