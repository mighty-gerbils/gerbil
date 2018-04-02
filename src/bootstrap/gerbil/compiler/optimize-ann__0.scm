(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 200))
  (define gxc#&optmize-annotated
    (##make-promise
     (lambda ()
       (let ((_tbl39693_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl39693_ (force gxc#&basic-xform))
           (table-set! _tbl39693_ '%#begin-annotation gxc#optimize-annotation%)
           _tbl39693_)))))
  (define gxc#apply-optimize-annotated
    (lambda (_stx39686_ . _args39688_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39686_ _args39688_))
       gxc#current-compile-methods
       (force gxc#&optmize-annotated))))
  (define gxc#&generate-runtime-repr
    (##make-promise
     (lambda ()
       (let ((_tbl39683_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl39683_ (force gxc#&generate-runtime))
           (table-set! _tbl39683_ '%#quote-syntax identity)
           _tbl39683_)))))
  (define gxc#apply-generate-runtime-repr
    (lambda (_stx39676_ . _args39678_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39676_ _args39678_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-repr))))
  (define gxc#&push-match-vars
    (##make-promise
     (lambda ()
       (let ((_tbl39673_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl39673_ '%#lambda gxc#xform-lambda%)
           (table-set!
            _tbl39673_
            '%#let-values
            gxc#push-match-vars-let-values%)
           (table-set! _tbl39673_ '%#letrec-values gxc#push-match-vars-stop)
           (table-set! _tbl39673_ '%#if gxc#push-match-vars-if%)
           (table-set! _tbl39673_ '%#call gxc#push-match-vars-call%)
           _tbl39673_)))))
  (define gxc#apply-push-match-vars
    (lambda (_stx39666_ . _args39668_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39666_ _args39668_))
       gxc#current-compile-methods
       (force gxc#&push-match-vars))))
  (define gxc#current-annotation-optimizer (make-parameter '()))
  (define gxc#optimize-annotation%
    (lambda (_stx39584_)
      (let* ((___stx3970939710_ _stx39584_)
             (_g3958739604_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx3970939710_))))
        (let ((___kont3971139712_
               (lambda (_L39640_ _L39641_)
                 (let ((_ann39657_ (gx#stx-e _L39641_)))
                   (call-with-parameters
                    (lambda ()
                      (let ((_$e39660_ _ann39657_))
                        (if (eq? '@match _$e39660_)
                            (begin
                              (gxc#verbose '"Optimizing match expansion")
                              (gxc#optimize-match _L39640_))
                            (if (eq? '@syntax-case _$e39660_)
                                (begin
                                  (gxc#verbose
                                   '"Optimizing syntax-case expansion")
                                  (gxc#optimize-syntax-case _L39640_))
                                (gxc#compile-e _L39640_)))))
                    gxc#current-annotation-optimizer
                    (cons _ann39657_ (gxc#current-annotation-optimizer))))))
              (___kont3971339714_
               (lambda () (gxc#xform-begin-annotation% _stx39584_))))
          (let ((___match3973439735_
                 (lambda (_e3959139616_
                          _hd3959239619_
                          _tl3959339621_
                          _e3959439624_
                          _hd3959539627_
                          _tl3959639629_
                          _e3959739632_
                          _hd3959839635_
                          _tl3959939637_)
                   (let ((_L39640_ _hd3959839635_) (_L39641_ _hd3959539627_))
                     (if (gx#identifier? _L39641_)
                         (___kont3971139712_ _L39640_ _L39641_)
                         (___kont3971339714_))))))
            (if (gx#stx-pair? ___stx3970939710_)
                (let ((_e3959139616_ (gx#stx-e ___stx3970939710_)))
                  (let ((_tl3959339621_ (##cdr _e3959139616_))
                        (_hd3959239619_ (##car _e3959139616_)))
                    (if (gx#stx-pair? _tl3959339621_)
                        (let ((_e3959439624_ (gx#stx-e _tl3959339621_)))
                          (let ((_tl3959639629_ (##cdr _e3959439624_))
                                (_hd3959539627_ (##car _e3959439624_)))
                            (if (gx#stx-pair? _tl3959639629_)
                                (let ((_e3959739632_
                                       (gx#stx-e _tl3959639629_)))
                                  (let ((_tl3959939637_ (##cdr _e3959739632_))
                                        (_hd3959839635_ (##car _e3959739632_)))
                                    (if (gx#stx-null? _tl3959939637_)
                                        (___match3973439735_
                                         _e3959139616_
                                         _hd3959239619_
                                         _tl3959339621_
                                         _e3959439624_
                                         _hd3959539627_
                                         _tl3959639629_
                                         _e3959739632_
                                         _hd3959839635_
                                         _tl3959939637_)
                                        (___kont3971339714_))))
                                (___kont3971339714_))))
                        (___kont3971339714_))))
                (___kont3971339714_)))))))
  (define gxc#optimize-match
    (lambda (_stx38883_)
      (let* ((_g3888538915_
              (lambda (_g3888638912_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3888638912_)))
             (_g3888439581_
              (lambda (_g3888638918_)
                (if (gx#stx-pair? _g3888638918_)
                    (let ((_e3889038920_ (gx#stx-e _g3888638918_)))
                      (let ((_hd3889138923_ (##car _e3889038920_))
                            (_tl3889238925_ (##cdr _e3889038920_)))
                        (if (gx#identifier? _hd3889138923_)
                            (if (gx#stx-eq? '%#let-values _hd3889138923_)
                                (if (gx#stx-pair? _tl3889238925_)
                                    (let ((_e3889338928_
                                           (gx#stx-e _tl3889238925_)))
                                      (let ((_hd3889438931_
                                             (##car _e3889338928_))
                                            (_tl3889538933_
                                             (##cdr _e3889338928_)))
                                        (if (gx#stx-pair? _hd3889438931_)
                                            (let ((_e3889638936_
                                                   (gx#stx-e _hd3889438931_)))
                                              (let ((_hd3889738939_
                                                     (##car _e3889638936_))
                                                    (_tl3889838941_
                                                     (##cdr _e3889638936_)))
                                                (if (gx#stx-pair?
                                                     _hd3889738939_)
                                                    (let ((_e3889938944_
                                                           (gx#stx-e
                                                            _hd3889738939_)))
                                                      (let ((_hd3890038947_
                                                             (##car _e3889938944_))
                                                            (_tl3890138949_
                                                             (##cdr _e3889938944_)))
                                                        (if (gx#stx-pair?
                                                             _hd3890038947_)
                                                            (let ((_e3890238952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3890038947_)))
                      (let ((_hd3890338955_ (##car _e3890238952_))
                            (_tl3890438957_ (##cdr _e3890238952_)))
                        (if (gx#stx-null? _tl3890438957_)
                            (if (gx#stx-pair? _tl3890138949_)
                                (let ((_e3890538960_
                                       (gx#stx-e _tl3890138949_)))
                                  (let ((_hd3890638963_ (##car _e3890538960_))
                                        (_tl3890738965_ (##cdr _e3890538960_)))
                                    (if (gx#stx-null? _tl3890738965_)
                                        (if (gx#stx-null? _tl3889838941_)
                                            (if (gx#stx-pair? _tl3889538933_)
                                                (let ((_e3890838968_
                                                       (gx#stx-e
                                                        _tl3889538933_)))
                                                  (let ((_hd3890938971_
                                                         (##car _e3890838968_))
                                                        (_tl3891038973_
                                                         (##cdr _e3890838968_)))
                                                    (if (gx#stx-null?
                                                         _tl3891038973_)
                                                        ((lambda (_L38976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L38977_
                          _L38978_)
                   (let _lp39002_ ((_body39004_ _L38976_)
                                   (_negation39005_ (cons _L38978_ _L38977_))
                                   (_clauses39006_ '())
                                   (_konts39007_ '()))
                     (let* ((___stx3991739918_ _body39004_)
                            (_g3901039050_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx3991739918_))))
                       (let ((___kont3991939920_
                              (lambda (_L39380_)
                                (let* ((___stx3985339854_ _L39380_)
                                       (_g3939439424_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx3985339854_))))
                                  (let ((___kont3985539856_
                                         (lambda (_L39520_ _L39521_ _L39522_)
                                           (if (null? _clauses39006_)
                                               (let* ((_negation3954639553_
                                                       _negation39005_)
                                                      (_E3954839557_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _negation3954639553_)))
                                                      (_K3954939563_
                                                       (lambda (_negate39560_
                                                                _E39561_)
                                                         (gxc#xform-wrap-source
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _E39561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _negate39560_ '()))
                                    '())
                              (cons (cons '%#let-values
                                          (cons (cons (cons (cons _L39522_ '())
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L39521_)
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L39520_ '())))
                                    '())))
                  _stx38883_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _negation3954639553_)
                                                     (let ((_hd3955039566_
                                                            (##car _negation3954639553_))
                                                           (_tl3955139568_
                                                            (##cdr _negation3954639553_)))
                                                       (let* ((_E39571_
                                                               _hd3955039566_)
                                                              (_negate39573_
                                                               _tl3955139568_))
                                                         (_K3954939563_
                                                          _negate39573_
                                                          _E39571_)))
                                                     (_E3954839557_)))
                                               (gxc#optimize-match-body
                                                _stx38883_
                                                _negation39005_
                                                (cons (cons '#f
                                                            (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#lambda)
                          (cons '() (cons _L39520_ '()))))
              _clauses39006_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _L39522_
                                                            (gxc#compile-e
                                                             _L39521_))
                                                      _konts39007_)))))
                                        (___kont3985739858_
                                         (lambda ()
                                           (let* ((_negation3943039437_
                                                   _negation39005_)
                                                  (_E3943239441_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _negation3943039437_)))
                                                  (_K3943339447_
                                                   (lambda (_negate39444_
                                                            _E39445_)
                                                     (gxc#xform-wrap-source
                                                      (cons '%#let-values
                                                            (cons (cons (cons (cons _E39445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                            '())
                                      (cons _negate39444_ '()))
                                '())
                          (cons _L39380_ '())))
              _stx38883_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _negation3943039437_)
                                                 (let ((_hd3943439450_
                                                        (##car _negation3943039437_))
                                                       (_tl3943539452_
                                                        (##cdr _negation3943039437_)))
                                                   (let* ((_E39455_
                                                           _hd3943439450_)
                                                          (_negate39457_
                                                           _tl3943539452_))
                                                     (_K3943339447_
                                                      _negate39457_
                                                      _E39455_)))
                                                 (_E3943239441_))))))
                                    (let ((_g3939339459_
                                           (lambda ()
                                             (if (null? _clauses39006_)
                                                 (___kont3985739858_)
                                                 (_g3939439424_)))))
                                      (if (gx#stx-pair? ___stx3985339854_)
                                          (let ((_e3939939464_
                                                 (gx#stx-e ___stx3985339854_)))
                                            (let ((_tl3940139469_
                                                   (##cdr _e3939939464_))
                                                  (_hd3940039467_
                                                   (##car _e3939939464_)))
                                              (if (gx#identifier?
                                                   _hd3940039467_)
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd3940039467_)
                                                      (if (gx#stx-pair?
                                                           _tl3940139469_)
                                                          (let ((_e3940239472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3940139469_)))
                    (let ((_tl3940439477_ (##cdr _e3940239472_))
                          (_hd3940339475_ (##car _e3940239472_)))
                      (if (gx#stx-pair? _hd3940339475_)
                          (let ((_e3940539480_ (gx#stx-e _hd3940339475_)))
                            (let ((_tl3940739485_ (##cdr _e3940539480_))
                                  (_hd3940639483_ (##car _e3940539480_)))
                              (if (gx#stx-pair? _hd3940639483_)
                                  (let ((_e3940839488_
                                         (gx#stx-e _hd3940639483_)))
                                    (let ((_tl3941039493_
                                           (##cdr _e3940839488_))
                                          (_hd3940939491_
                                           (##car _e3940839488_)))
                                      (if (gx#stx-pair? _hd3940939491_)
                                          (let ((_e3941139496_
                                                 (gx#stx-e _hd3940939491_)))
                                            (let ((_tl3941339501_
                                                   (##cdr _e3941139496_))
                                                  (_hd3941239499_
                                                   (##car _e3941139496_)))
                                              (if (gx#stx-null? _tl3941339501_)
                                                  (if (gx#stx-pair?
                                                       _tl3941039493_)
                                                      (let ((_e3941439504_
                                                             (gx#stx-e
                                                              _tl3941039493_)))
                                                        (let ((_tl3941639509_
                                                               (##cdr _e3941439504_))
                                                              (_hd3941539507_
                                                               (##car _e3941439504_)))
                                                          (if (gx#stx-null?
                                                               _tl3941639509_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3940739485_)
                          (if (gx#stx-pair? _tl3940439477_)
                              (let ((_e3941739512_ (gx#stx-e _tl3940439477_)))
                                (let ((_tl3941939517_ (##cdr _e3941739512_))
                                      (_hd3941839515_ (##car _e3941739512_)))
                                  (if (gx#stx-null? _tl3941939517_)
                                      (___kont3985539856_
                                       _hd3941839515_
                                       _hd3941539507_
                                       _hd3941239499_)
                                      (_g3939339459_))))
                              (_g3939339459_))
                          (_g3939339459_))
                      (_g3939339459_))))
              (_g3939339459_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3939339459_))))
                                          (_g3939339459_))))
                                  (_g3939339459_))))
                          (_g3939339459_))))
                  (_g3939339459_))
              (_g3939339459_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3939339459_))))
                                          (_g3939339459_)))))))
                             (___kont3992139922_
                              (lambda (_L39111_ _L39112_ _L39113_)
                                (let* ((___stx3973739738_ _L39112_)
                                       (_g3914039189_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx3973739738_))))
                                  (let ((___kont3973939740_
                                         (lambda (_L39317_ _L39318_ _L39319_)
                                           (_lp39002_
                                            _L39111_
                                            _negation39005_
                                            (cons (cons _L39113_
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#lambda)
                                                              (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L39317_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _clauses39006_)
                                            (cons (cons _L39319_
                                                        (gxc#compile-e
                                                         _L39318_))
                                                  _konts39007_))))
                                        (___kont3974139742_
                                         (lambda (_L39218_)
                                           (_lp39002_
                                            _L39111_
                                            (cons _L39113_
                                                  (gxc#compile-e _L39218_))
                                            _clauses39006_
                                            _konts39007_))))
                                    (if (gx#stx-pair? ___stx3973739738_)
                                        (let ((_e3914539237_
                                               (gx#stx-e ___stx3973739738_)))
                                          (let ((_tl3914739242_
                                                 (##cdr _e3914539237_))
                                                (_hd3914639240_
                                                 (##car _e3914539237_)))
                                            (if (gx#identifier? _hd3914639240_)
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd3914639240_)
                                                    (if (gx#stx-pair?
                                                         _tl3914739242_)
                                                        (let ((_e3914839245_
                                                               (gx#stx-e
                                                                _tl3914739242_)))
                                                          (let ((_tl3915039250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3914839245_))
                        (_hd3914939248_ (##car _e3914839245_)))
                    (if (gx#stx-null? _hd3914939248_)
                        (if (gx#stx-pair? _tl3915039250_)
                            (let ((_e3915139253_ (gx#stx-e _tl3915039250_)))
                              (let ((_tl3915339258_ (##cdr _e3915139253_))
                                    (_hd3915239256_ (##car _e3915139253_)))
                                (if (gx#stx-pair? _hd3915239256_)
                                    (let ((_e3915439261_
                                           (gx#stx-e _hd3915239256_)))
                                      (let ((_tl3915639266_
                                             (##cdr _e3915439261_))
                                            (_hd3915539264_
                                             (##car _e3915439261_)))
                                        (if (gx#identifier? _hd3915539264_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3915539264_)
                                                (if (gx#stx-pair?
                                                     _tl3915639266_)
                                                    (let ((_e3915739269_
                                                           (gx#stx-e
                                                            _tl3915639266_)))
                                                      (let ((_tl3915939274_
                                                             (##cdr _e3915739269_))
                                                            (_hd3915839272_
                                                             (##car _e3915739269_)))
                                                        (if (gx#stx-pair?
                                                             _hd3915839272_)
                                                            (let ((_e3916039277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3915839272_)))
                      (let ((_tl3916239282_ (##cdr _e3916039277_))
                            (_hd3916139280_ (##car _e3916039277_)))
                        (if (gx#stx-pair? _hd3916139280_)
                            (let ((_e3916339285_ (gx#stx-e _hd3916139280_)))
                              (let ((_tl3916539290_ (##cdr _e3916339285_))
                                    (_hd3916439288_ (##car _e3916339285_)))
                                (if (gx#stx-pair? _hd3916439288_)
                                    (let ((_e3916639293_
                                           (gx#stx-e _hd3916439288_)))
                                      (let ((_tl3916839298_
                                             (##cdr _e3916639293_))
                                            (_hd3916739296_
                                             (##car _e3916639293_)))
                                        (if (gx#stx-null? _tl3916839298_)
                                            (if (gx#stx-pair? _tl3916539290_)
                                                (let ((_e3916939301_
                                                       (gx#stx-e
                                                        _tl3916539290_)))
                                                  (let ((_tl3917139306_
                                                         (##cdr _e3916939301_))
                                                        (_hd3917039304_
                                                         (##car _e3916939301_)))
                                                    (if (gx#stx-null?
                                                         _tl3917139306_)
                                                        (if (gx#stx-null?
                                                             _tl3916239282_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3915939274_)
                        (let ((_e3917239309_ (gx#stx-e _tl3915939274_)))
                          (let ((_tl3917439314_ (##cdr _e3917239309_))
                                (_hd3917339312_ (##car _e3917239309_)))
                            (if (gx#stx-null? _tl3917439314_)
                                (if (gx#stx-null? _tl3915339258_)
                                    (___kont3973939740_
                                     _hd3917339312_
                                     _hd3917039304_
                                     _hd3916739296_)
                                    (_g3914039189_))
                                (_g3914039189_))))
                        (_g3914039189_))
                    (_g3914039189_))
                (_g3914039189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3914039189_))
                                            (_g3914039189_))))
                                    (_g3914039189_))))
                            (_g3914039189_))))
                    (_g3914039189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3914039189_))
                                                (_g3914039189_))
                                            (_g3914039189_))))
                                    (_g3914039189_))))
                            (_g3914039189_))
                        (_g3914039189_))))
                (_g3914039189_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#begin-annotation
                                                         _hd3914639240_)
                                                        (if (gx#stx-pair?
                                                             _tl3914739242_)
                                                            (let ((_e3917939202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3914739242_)))
                      (let ((_tl3918139207_ (##cdr _e3917939202_))
                            (_hd3918039205_ (##car _e3917939202_)))
                        (if (gx#identifier? _hd3918039205_)
                            (if (gx#stx-eq? '@match-else _hd3918039205_)
                                (if (gx#stx-pair? _tl3918139207_)
                                    (let ((_e3918239210_
                                           (gx#stx-e _tl3918139207_)))
                                      (let ((_tl3918439215_
                                             (##cdr _e3918239210_))
                                            (_hd3918339213_
                                             (##car _e3918239210_)))
                                        (if (gx#stx-null? _tl3918439215_)
                                            (___kont3974139742_ _hd3918339213_)
                                            (_g3914039189_))))
                                    (_g3914039189_))
                                (_g3914039189_))
                            (_g3914039189_))))
                    (_g3914039189_))
                (_g3914039189_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3914039189_))))
                                        (_g3914039189_)))))))
                         (if (gx#stx-pair? ___stx3991739918_)
                             (let ((_e3901339356_
                                    (gx#stx-e ___stx3991739918_)))
                               (let ((_tl3901539361_ (##cdr _e3901339356_))
                                     (_hd3901439359_ (##car _e3901339356_)))
                                 (if (gx#identifier? _hd3901439359_)
                                     (if (gx#stx-eq?
                                          '%#begin-annotation
                                          _hd3901439359_)
                                         (if (gx#stx-pair? _tl3901539361_)
                                             (let ((_e3901639364_
                                                    (gx#stx-e _tl3901539361_)))
                                               (let ((_tl3901839369_
                                                      (##cdr _e3901639364_))
                                                     (_hd3901739367_
                                                      (##car _e3901639364_)))
                                                 (if (gx#identifier?
                                                      _hd3901739367_)
                                                     (if (gx#stx-eq?
                                                          '@match-body
                                                          _hd3901739367_)
                                                         (if (gx#stx-pair?
                                                              _tl3901839369_)
                                                             (let ((_e3901939372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3901839369_)))
                       (let ((_tl3902139377_ (##cdr _e3901939372_))
                             (_hd3902039375_ (##car _e3901939372_)))
                         (if (gx#stx-null? _tl3902139377_)
                             (___kont3991939920_ _hd3902039375_)
                             (_g3901039050_))))
                     (_g3901039050_))
                 (_g3901039050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3901039050_))))
                                             (_g3901039050_))
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd3901439359_)
                                             (if (gx#stx-pair? _tl3901539361_)
                                                 (let ((_e3902839063_
                                                        (gx#stx-e
                                                         _tl3901539361_)))
                                                   (let ((_tl3903039068_
                                                          (##cdr _e3902839063_))
                                                         (_hd3902939066_
                                                          (##car _e3902839063_)))
                                                     (if (gx#stx-pair?
                                                          _hd3902939066_)
                                                         (let ((_e3903139071_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3902939066_)))
                   (let ((_tl3903339076_ (##cdr _e3903139071_))
                         (_hd3903239074_ (##car _e3903139071_)))
                     (if (gx#stx-pair? _hd3903239074_)
                         (let ((_e3903439079_ (gx#stx-e _hd3903239074_)))
                           (let ((_tl3903639084_ (##cdr _e3903439079_))
                                 (_hd3903539082_ (##car _e3903439079_)))
                             (if (gx#stx-pair? _hd3903539082_)
                                 (let ((_e3903739087_
                                        (gx#stx-e _hd3903539082_)))
                                   (let ((_tl3903939092_ (##cdr _e3903739087_))
                                         (_hd3903839090_
                                          (##car _e3903739087_)))
                                     (if (gx#stx-null? _tl3903939092_)
                                         (if (gx#stx-pair? _tl3903639084_)
                                             (let ((_e3904039095_
                                                    (gx#stx-e _tl3903639084_)))
                                               (let ((_tl3904239100_
                                                      (##cdr _e3904039095_))
                                                     (_hd3904139098_
                                                      (##car _e3904039095_)))
                                                 (if (gx#stx-null?
                                                      _tl3904239100_)
                                                     (if (gx#stx-null?
                                                          _tl3903339076_)
                                                         (if (gx#stx-pair?
                                                              _tl3903039068_)
                                                             (let ((_e3904339103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3903039068_)))
                       (let ((_tl3904539108_ (##cdr _e3904339103_))
                             (_hd3904439106_ (##car _e3904339103_)))
                         (if (gx#stx-null? _tl3904539108_)
                             (___kont3992139922_
                              _hd3904439106_
                              _hd3904139098_
                              _hd3903839090_)
                             (_g3901039050_))))
                     (_g3901039050_))
                 (_g3901039050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3901039050_))))
                                             (_g3901039050_))
                                         (_g3901039050_))))
                                 (_g3901039050_))))
                         (_g3901039050_))))
                 (_g3901039050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3901039050_))
                                             (_g3901039050_)))
                                     (_g3901039050_))))
                             (_g3901039050_))))))
                 _hd3890938971_
                 _hd3890638963_
                 _hd3890338955_)
                (_g3888538915_ _g3888638918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3888538915_ _g3888638918_))
                                            (_g3888538915_ _g3888638918_))
                                        (_g3888538915_ _g3888638918_))))
                                (_g3888538915_ _g3888638918_))
                            (_g3888538915_ _g3888638918_))))
                    (_g3888538915_ _g3888638918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3888538915_
                                                     _g3888638918_))))
                                            (_g3888538915_ _g3888638918_))))
                                    (_g3888538915_ _g3888638918_))
                                (_g3888538915_ _g3888638918_))
                            (_g3888538915_ _g3888638918_))))
                    (_g3888538915_ _g3888638918_)))))
        (_g3888439581_ _stx38883_))))
  (define gxc#optimize-match-body
    (lambda (_stx38589_ _negation38590_ _clauses38591_ _konts38592_)
      (letrec ((_push-variables38594_
                (lambda (_clause38841_ _kont38842_)
                  (let ((_clause3884338853_ _clause38841_)
                        (_kont3884438855_ _kont38842_))
                    (let* ((_E3884638859_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause3884338853_
                                     _kont3884438855_)))
                           (_K3884738866_
                            (lambda (_clause-lambda38862_
                                     _clause-name38863_
                                     _K38864_)
                              (cons _clause-name38863_
                                    (gxc#apply-push-match-vars
                                     _clause-lambda38862_
                                     '()
                                     _K38864_)))))
                      (if (##pair? _clause3884338853_)
                          (let ((_hd3885038869_ (##car _clause3884338853_))
                                (_tl3885138871_ (##cdr _clause3884338853_)))
                            (let* ((_clause-name38874_ _hd3885038869_)
                                   (_clause-lambda38876_ _tl3885138871_))
                              (if (##pair? _kont3884438855_)
                                  (let* ((_hd3884838878_
                                          (##car _kont3884438855_))
                                         (_K38881_ _hd3884838878_))
                                    (_K3884738866_
                                     _clause-lambda38876_
                                     _clause-name38874_
                                     _K38881_))
                                  (_E3884638859_))))
                          (_E3884638859_))))))
               (_start-match38595_
                (lambda (_kont38775_)
                  (let* ((_g3877738793_
                          (lambda (_g3877838790_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3877838790_)))
                         (_g3877638838_
                          (lambda (_g3877838796_)
                            (if (gx#stx-pair? _g3877838796_)
                                (let ((_e3878038798_ (gx#stx-e _g3877838796_)))
                                  (let ((_hd3878138801_ (##car _e3878038798_))
                                        (_tl3878238803_ (##cdr _e3878038798_)))
                                    (if (gx#identifier? _hd3878138801_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3878138801_)
                                            (if (gx#stx-pair? _tl3878238803_)
                                                (let ((_e3878338806_
                                                       (gx#stx-e
                                                        _tl3878238803_)))
                                                  (let ((_hd3878438809_
                                                         (##car _e3878338806_))
                                                        (_tl3878538811_
                                                         (##cdr _e3878338806_)))
                                                    (if (gx#stx-null?
                                                         _hd3878438809_)
                                                        (if (gx#stx-pair?
                                                             _tl3878538811_)
                                                            (let ((_e3878638814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3878538811_)))
                      (let ((_hd3878738817_ (##car _e3878638814_))
                            (_tl3878838819_ (##cdr _e3878638814_)))
                        (if (gx#stx-null? _tl3878838819_)
                            ((lambda (_L38822_) _L38822_) _hd3878738817_)
                            (_g3877738793_ _g3877838796_))))
                    (_g3877738793_ _g3877838796_))
                (_g3877738793_ _g3877838796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3877738793_ _g3877838796_))
                                            (_g3877738793_ _g3877838796_))
                                        (_g3877738793_ _g3877838796_))))
                                (_g3877738793_ _g3877838796_)))))
                    (_g3877638838_ _kont38775_))))
               (_match-body38596_
                (lambda (_blocks38672_)
                  (let* ((_blocks3867338682_ _blocks38672_)
                         (_E3867538686_
                          (lambda ()
                            (error '"No clause matching" _blocks3867338682_)))
                         (_K3867638758_
                          (lambda (_rest38689_ _start38690_)
                            (let _lp38692_ ((_rest38694_ _rest38689_)
                                            (_body38695_
                                             (_start-match38595_
                                              _start38690_)))
                              (let* ((_rest3869638704_ _rest38694_)
                                     (_else3869838712_ (lambda () _body38695_))
                                     (_K3870038746_
                                      (lambda (_rest38715_ _block38716_)
                                        (let* ((_block3871738724_ _block38716_)
                                               (_E3871938728_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _block3871738724_)))
                                               (_K3872038734_
                                                (lambda (_kont38731_ _K38732_)
                                                  (_lp38692_
                                                   _rest38715_
                                                   (cons '%#let-values
                                                         (cons (cons (cons (cons _K38732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons _kont38731_ '()))
                             '())
                       (cons _body38695_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _block3871738724_)
                                              (let ((_hd3872138737_
                                                     (##car _block3871738724_))
                                                    (_tl3872238739_
                                                     (##cdr _block3871738724_)))
                                                (let* ((_K38742_
                                                        _hd3872138737_)
                                                       (_kont38744_
                                                        _tl3872238739_))
                                                  (_K3872038734_
                                                   _kont38744_
                                                   _K38742_)))
                                              (_E3871938728_))))))
                                (if (##pair? _rest3869638704_)
                                    (let ((_hd3870138749_
                                           (##car _rest3869638704_))
                                          (_tl3870238751_
                                           (##cdr _rest3869638704_)))
                                      (let* ((_block38754_ _hd3870138749_)
                                             (_rest38756_ _tl3870238751_))
                                        (_K3870038746_
                                         _rest38756_
                                         _block38754_)))
                                    (_else3869838712_)))))))
                    (if (##pair? _blocks3867338682_)
                        (let ((_hd3867738761_ (##car _blocks3867338682_))
                              (_tl3867838763_ (##cdr _blocks3867338682_)))
                          (if (##pair? _hd3867738761_)
                              (let ((_hd3867938766_ (##car _hd3867738761_))
                                    (_tl3868038768_ (##cdr _hd3867738761_)))
                                (if (##eq? _hd3867938766_ '#f)
                                    (let* ((_start38771_ _tl3868038768_)
                                           (_rest38773_ _tl3867838763_))
                                      (_K3867638758_ _rest38773_ _start38771_))
                                    (_E3867538686_)))
                              (_E3867538686_)))
                        (_E3867538686_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_clauses38599_
                   (map _push-variables38594_ _clauses38591_ _konts38592_))
                  (_blocks38601_
                   (gxc#optimize-match-basic-blocks _clauses38599_))
                  (_blocks38603_
                   (gxc#optimize-match-fold-basic-blocks _blocks38601_))
                  (_body38605_ (_match-body38596_ _blocks38603_))
                  (_bind38639_
                   (map (lambda (_e3860638608_)
                          (let* ((_g3861038617_ _e3860638608_)
                                 (_E3861238621_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g3861038617_)))
                                 (_K3861338627_
                                  (lambda (_kont38624_ _K38625_)
                                    (cons (cons _K38625_ '())
                                          (cons _kont38624_ '())))))
                            (if (##pair? _g3861038617_)
                                (let ((_hd3861438630_ (##car _g3861038617_))
                                      (_tl3861538632_ (##cdr _g3861038617_)))
                                  (let* ((_K38635_ _hd3861438630_)
                                         (_kont38637_ _tl3861538632_))
                                    (_K3861338627_ _kont38637_ _K38635_)))
                                (_E3861238621_))))
                        _konts38592_))
                  (_negate38669_
                   (let* ((_negation3864038647_ _negation38590_)
                          (_E3864238651_
                           (lambda ()
                             (error '"No clause matching"
                                    _negation3864038647_)))
                          (_K3864338657_
                           (lambda (_kont38654_ _K38655_)
                             (cons (cons _K38655_ '())
                                   (cons _kont38654_ '())))))
                     (if (##pair? _negation3864038647_)
                         (let ((_hd3864438660_ (##car _negation3864038647_))
                               (_tl3864538662_ (##cdr _negation3864038647_)))
                           (let* ((_K38665_ _hd3864438660_)
                                  (_kont38667_ _tl3864538662_))
                             (_K3864338657_ _kont38667_ _K38665_)))
                         (_E3864238651_)))))
             (gxc#xform-wrap-source
              (cons '%#let-values
                    (cons (cons _negate38669_ '())
                          (cons (cons '%#let-values
                                      (cons _bind38639_
                                            (cons _body38605_ '())))
                                '())))
              _stx38589_)))
         gx#current-expander-context
         (let ((__obj42782 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj42782) __obj42782))))))
  (define gxc#optimize-match-basic-blocks
    (lambda (_clauses38549_)
      (let _lp38551_ ((_rest38553_ _clauses38549_) (_blocks38554_ '()))
        (let* ((_rest3855538563_ _rest38553_)
               (_else3855738571_ (lambda () (reverse _blocks38554_)))
               (_K3855938577_
                (lambda (_rest38574_ _clause38575_)
                  (_lp38551_
                   _rest38574_
                   (gxc#optimize-match-lift-basic-blocks
                    _clause38575_
                    _blocks38554_)))))
          (if (##pair? _rest3855538563_)
              (let ((_hd3856038580_ (##car _rest3855538563_))
                    (_tl3856138582_ (##cdr _rest3855538563_)))
                (let* ((_clause38585_ _hd3856038580_)
                       (_rest38587_ _tl3856138582_))
                  (_K3855938577_ _rest38587_ _clause38585_)))
              (_else3855738571_))))))
  (define gxc#optimize-match-lift-basic-blocks
    (lambda (_clause37893_ _blocks37894_)
      (letrec ((_bind->args37896_
                (lambda (_bind38544_)
                  (foldl1 (lambda (_b38546_ _r38547_)
                            (cons (cons '%#ref (cons (car _b38546_) '()))
                                  _r38547_))
                          '()
                          _bind38544_)))
               (_create-block37897_
                (lambda (_body38493_ _let-bind38494_ _bind38495_ _assert38496_)
                  (let* ((_id38498_ (make-symbol (gensym '__match)))
                         (_id38500_ (gx#core-quote-syntax__0 _id38498_))
                         (_g42785_ (gx#core-bind-runtime!__0 _id38500_))
                         (_block38503_
                          (cons _id38500_
                                (cons _body38493_
                                      (cons _bind38495_
                                            (cons _assert38496_ '())))))
                         (_continue38505_
                          (cons '%#call
                                (cons (cons '%#ref (cons _id38500_ '()))
                                      (_bind->args37896_ _bind38495_))))
                         (_continue38541_
                          (if (null? _let-bind38494_)
                              _continue38505_
                              (let ((_locals38539_
                                     (map (lambda (_e3850638508_)
                                            (let* ((_g3851038517_
                                                    _e3850638508_)
                                                   (_E3851238521_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g3851038517_)))
                                                   (_K3851338527_
                                                    (lambda (_expr38524_
                                                             _id38525_)
                                                      (cons (cons _id38525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr38524_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g3851038517_)
                                                  (let ((_hd3851438530_
                                                         (##car _g3851038517_))
                                                        (_tl3851538532_
                                                         (##cdr _g3851038517_)))
                                                    (let* ((_id38535_
                                                            _hd3851438530_)
                                                           (_expr38537_
                                                            _tl3851538532_))
                                                      (_K3851338527_
                                                       _expr38537_
                                                       _id38535_)))
                                                  (_E3851238521_))))
                                          _let-bind38494_)))
                                (cons '%#let-values
                                      (cons _locals38539_
                                            (cons _continue38505_ '())))))))
                    (values _continue38541_ _block38503_))))
               (_basic-block37898_
                (lambda (_body38079_ _bind38080_ _assert38081_)
                  (let* ((___stx4002540026_ _body38079_)
                         (_g3808638170_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4002540026_))))
                    (let ((___kont4002740028_
                           (lambda (_L38429_ _L38430_ _L38431_)
                             (let ((_g42786_
                                    (_create-block37897_
                                     _L38430_
                                     '()
                                     _bind38080_
                                     (cons (cons _L38431_ '#t)
                                           _assert38081_))))
                               (begin
                                 (let ((_g42787_
                                        (if (##values? _g42786_)
                                            (##vector-length _g42786_)
                                            1)))
                                   (if (not (##fx= _g42787_ 2))
                                       (error "Context expects 2 values"
                                              _g42787_)))
                                 (let ((_k-continue38449_
                                        (##vector-ref _g42786_ 0))
                                       (_k-block38450_
                                        (##vector-ref _g42786_ 1)))
                                   (let* ((___stx4000740008_ _L38429_)
                                          (_g3845338462_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx4000740008_))))
                                     (let ((___kont4000940010_
                                            (lambda ()
                                              (values (cons '%#if
                                                            (cons _L38431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _k-continue38449_ (cons _L38429_ '()))))
              (cons _k-block38450_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4001140012_
                                            (lambda ()
                                              (let ((_g42788_
                                                     (_create-block37897_
                                                      _L38429_
                                                      '()
                                                      _bind38080_
                                                      (cons (cons _L38431_ '#f)
                                                            _assert38081_))))
                                                (begin
                                                  (let ((_g42789_
                                                         (if (##values?
                                                              _g42788_)
                                                             (##vector-length
                                                              _g42788_)
                                                             1)))
                                                    (if (not (##fx= _g42789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g42789_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_e-continue38469_
                                                         (##vector-ref
                                                          _g42788_
                                                          0))
                                                        (_e-block38470_
                                                         (##vector-ref
                                                          _g42788_
                                                          1)))
                                                    (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L38431_
                                (cons _k-continue38449_
                                      (cons _e-continue38469_ '()))))
                    (cons _k-block38450_ (cons _e-block38470_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? ___stx4000740008_)
                                           (let ((_e3845538477_
                                                  (gx#stx-e
                                                   ___stx4000740008_)))
                                             (let ((_tl3845738482_
                                                    (##cdr _e3845538477_))
                                                   (_hd3845638480_
                                                    (##car _e3845538477_)))
                                               (if (gx#identifier?
                                                    _hd3845638480_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _hd3845638480_)
                                                       (___kont4000940010_)
                                                       (___kont4001140012_))
                                                   (___kont4001140012_))))
                                           (___kont4001140012_)))))))))
                          (___kont4002940030_
                           (lambda () (values _body38079_ '())))
                          (___kont4003340034_
                           (lambda (_L38258_ _L38259_ _L38260_)
                             (let* ((_let-bind38295_
                                     (map cons
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3828038283_
                                                             _g3828138285_)
                                                      (cons _g3828038283_
                                                            _g3828138285_))
                                                    '()
                                                    _L38260_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3828738290_
                                                             _g3828838292_)
                                                      (cons _g3828738290_
                                                            _g3828838292_))
                                                    '()
                                                    _L38259_))))
                                    (_g42790_
                                     (_create-block37897_
                                      _L38258_
                                      _let-bind38295_
                                      (foldl1 cons _bind38080_ _let-bind38295_)
                                      _assert38081_)))
                               (begin
                                 (let ((_g42791_
                                        (if (##values? _g42790_)
                                            (##vector-length _g42790_)
                                            1)))
                                   (if (not (##fx= _g42791_ 2))
                                       (error "Context expects 2 values"
                                              _g42791_)))
                                 (let ((_continue38297_
                                        (##vector-ref _g42790_ 0))
                                       (_block38298_
                                        (##vector-ref _g42790_ 1)))
                                   (let ()
                                     (values _continue38297_
                                             (cons _block38298_ '()))))))))
                          (___kont4003740038_
                           (lambda () (values _body38079_ '()))))
                      (let* ((___match4011640117_
                              (lambda (_e3813738182_
                                       _hd3813838185_
                                       _tl3813938187_
                                       _e3814038190_
                                       _hd3814138193_
                                       _tl3814238195_
                                       ___splice4003540036_
                                       _target3814338198_
                                       _tl3814538200_)
                                (letrec ((_loop3814638203_
                                          (lambda (_hd3814438206_
                                                   _expr3815038208_
                                                   _id3815138210_)
                                            (if (gx#stx-pair? _hd3814438206_)
                                                (let ((_e3814738213_
                                                       (gx#stx-e
                                                        _hd3814438206_)))
                                                  (let ((_lp-tl3814938218_
                                                         (##cdr _e3814738213_))
                                                        (_lp-hd3814838216_
                                                         (##car _e3814738213_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3814838216_)
                                                        (let ((_e3815438221_
                                                               (gx#stx-e
                                                                _lp-hd3814838216_)))
                                                          (let ((_tl3815638226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3815438221_))
                        (_hd3815538224_ (##car _e3815438221_)))
                    (if (gx#stx-pair? _hd3815538224_)
                        (let ((_e3815738229_ (gx#stx-e _hd3815538224_)))
                          (let ((_tl3815938234_ (##cdr _e3815738229_))
                                (_hd3815838232_ (##car _e3815738229_)))
                            (if (gx#stx-null? _tl3815938234_)
                                (if (gx#stx-pair? _tl3815638226_)
                                    (let ((_e3816038237_
                                           (gx#stx-e _tl3815638226_)))
                                      (let ((_tl3816238242_
                                             (##cdr _e3816038237_))
                                            (_hd3816138240_
                                             (##car _e3816038237_)))
                                        (if (gx#stx-null? _tl3816238242_)
                                            (_loop3814638203_
                                             _lp-tl3814938218_
                                             (cons _hd3816138240_
                                                   _expr3815038208_)
                                             (cons _hd3815838232_
                                                   _id3815138210_))
                                            (___kont4003740038_))))
                                    (___kont4003740038_))
                                (___kont4003740038_))))
                        (___kont4003740038_))))
                (___kont4003740038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_id3815338247_
                                                       (reverse _id3815138210_))
                                                      (_expr3815238245_
                                                       (reverse _expr3815038208_)))
                                                  (if (gx#stx-pair?
                                                       _tl3814238195_)
                                                      (let ((_e3816338250_
                                                             (gx#stx-e
                                                              _tl3814238195_)))
                                                        (let ((_tl3816538255_
                                                               (##cdr _e3816338250_))
                                                              (_hd3816438253_
                                                               (##car _e3816338250_)))
                                                          (if (gx#stx-null?
                                                               _tl3816538255_)
                                                              (___kont4003340034_
                                                               _hd3816438253_
                                                               _expr3815238245_
                                                               _id3815338247_)
                                                              (___kont4003740038_))))
                                                      (___kont4003740038_)))))))
                                  (_loop3814638203_
                                   _target3814338198_
                                   '()
                                   '()))))
                             (___match4009240093_
                              (lambda (_e3810338306_
                                       _hd3810438309_
                                       _tl3810538311_
                                       _e3810638314_
                                       _hd3810738317_
                                       _tl3810838319_
                                       ___splice4003140032_
                                       _target3810938322_
                                       _tl3811138324_)
                                (letrec ((_loop3811238327_
                                          (lambda (_hd3811038330_)
                                            (if (gx#stx-pair? _hd3811038330_)
                                                (let ((_e3811338333_
                                                       (gx#stx-e
                                                        _hd3811038330_)))
                                                  (let ((_lp-tl3811538338_
                                                         (##cdr _e3811338333_))
                                                        (_lp-hd3811438336_
                                                         (##car _e3811338333_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3811438336_)
                                                        (let ((_e3811638341_
                                                               (gx#stx-e
                                                                _lp-hd3811438336_)))
                                                          (let ((_tl3811838346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3811638341_))
                        (_hd3811738344_ (##car _e3811638341_)))
                    (if (gx#stx-pair? _hd3811738344_)
                        (let ((_e3811938349_ (gx#stx-e _hd3811738344_)))
                          (let ((_tl3812138354_ (##cdr _e3811938349_))
                                (_hd3812038352_ (##car _e3811938349_)))
                            (if (gx#stx-null? _tl3812138354_)
                                (if (gx#stx-pair? _tl3811838346_)
                                    (let ((_e3812238357_
                                           (gx#stx-e _tl3811838346_)))
                                      (let ((_tl3812438362_
                                             (##cdr _e3812238357_))
                                            (_hd3812338360_
                                             (##car _e3812238357_)))
                                        (if (gx#stx-pair? _hd3812338360_)
                                            (let ((_e3812538365_
                                                   (gx#stx-e _hd3812338360_)))
                                              (let ((_tl3812738370_
                                                     (##cdr _e3812538365_))
                                                    (_hd3812638368_
                                                     (##car _e3812538365_)))
                                                (if (gx#identifier?
                                                     _hd3812638368_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3812638368_)
                                                        (if (gx#stx-pair?
                                                             _tl3812738370_)
                                                            (let ((_e3812838373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3812738370_)))
                      (let ((_tl3813038378_ (##cdr _e3812838373_))
                            (_hd3812938376_ (##car _e3812838373_)))
                        (if (gx#stx-null? _tl3813038378_)
                            (if (gx#stx-null? _tl3812438362_)
                                (_loop3811238327_ _lp-tl3811538338_)
                                (___match4011640117_
                                 _e3810338306_
                                 _hd3810438309_
                                 _tl3810538311_
                                 _e3810638314_
                                 _hd3810738317_
                                 _tl3810838319_
                                 ___splice4003140032_
                                 _target3810938322_
                                 _tl3811138324_))
                            (___match4011640117_
                             _e3810338306_
                             _hd3810438309_
                             _tl3810538311_
                             _e3810638314_
                             _hd3810738317_
                             _tl3810838319_
                             ___splice4003140032_
                             _target3810938322_
                             _tl3811138324_))))
                    (___match4011640117_
                     _e3810338306_
                     _hd3810438309_
                     _tl3810538311_
                     _e3810638314_
                     _hd3810738317_
                     _tl3810838319_
                     ___splice4003140032_
                     _target3810938322_
                     _tl3811138324_))
                (___match4011640117_
                 _e3810338306_
                 _hd3810438309_
                 _tl3810538311_
                 _e3810638314_
                 _hd3810738317_
                 _tl3810838319_
                 ___splice4003140032_
                 _target3810938322_
                 _tl3811138324_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4011640117_
                                                     _e3810338306_
                                                     _hd3810438309_
                                                     _tl3810538311_
                                                     _e3810638314_
                                                     _hd3810738317_
                                                     _tl3810838319_
                                                     ___splice4003140032_
                                                     _target3810938322_
                                                     _tl3811138324_))))
                                            (___match4011640117_
                                             _e3810338306_
                                             _hd3810438309_
                                             _tl3810538311_
                                             _e3810638314_
                                             _hd3810738317_
                                             _tl3810838319_
                                             ___splice4003140032_
                                             _target3810938322_
                                             _tl3811138324_))))
                                    (___match4011640117_
                                     _e3810338306_
                                     _hd3810438309_
                                     _tl3810538311_
                                     _e3810638314_
                                     _hd3810738317_
                                     _tl3810838319_
                                     ___splice4003140032_
                                     _target3810938322_
                                     _tl3811138324_))
                                (___match4011640117_
                                 _e3810338306_
                                 _hd3810438309_
                                 _tl3810538311_
                                 _e3810638314_
                                 _hd3810738317_
                                 _tl3810838319_
                                 ___splice4003140032_
                                 _target3810938322_
                                 _tl3811138324_))))
                        (___match4011640117_
                         _e3810338306_
                         _hd3810438309_
                         _tl3810538311_
                         _e3810638314_
                         _hd3810738317_
                         _tl3810838319_
                         ___splice4003140032_
                         _target3810938322_
                         _tl3811138324_))))
                (___match4011640117_
                 _e3810338306_
                 _hd3810438309_
                 _tl3810538311_
                 _e3810638314_
                 _hd3810738317_
                 _tl3810838319_
                 ___splice4003140032_
                 _target3810938322_
                 _tl3811138324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (if (gx#stx-pair?
                                                       _tl3810838319_)
                                                      (let ((_e3813138382_
                                                             (gx#stx-e
                                                              _tl3810838319_)))
                                                        (let ((_tl3813338387_
                                                               (##cdr _e3813138382_))
                                                              (_hd3813238385_
                                                               (##car _e3813138382_)))
                                                          (if (gx#stx-null?
                                                               _tl3813338387_)
                                                              (___kont4002940030_)
                                                              (___match4011640117_
                                                               _e3810338306_
                                                               _hd3810438309_
                                                               _tl3810538311_
                                                               _e3810638314_
                                                               _hd3810738317_
                                                               _tl3810838319_
                                                               ___splice4003140032_
                                                               _target3810938322_
                                                               _tl3811138324_))))
                                                      (___match4011640117_
                                                       _e3810338306_
                                                       _hd3810438309_
                                                       _tl3810538311_
                                                       _e3810638314_
                                                       _hd3810738317_
                                                       _tl3810838319_
                                                       ___splice4003140032_
                                                       _target3810938322_
                                                       _tl3811138324_)))))))
                                  (_loop3811238327_ _target3810938322_)))))
                        (if (gx#stx-pair? ___stx4002540026_)
                            (let ((_e3809138397_ (gx#stx-e ___stx4002540026_)))
                              (let ((_tl3809338402_ (##cdr _e3809138397_))
                                    (_hd3809238400_ (##car _e3809138397_)))
                                (if (gx#identifier? _hd3809238400_)
                                    (if (gx#stx-eq? '%#if _hd3809238400_)
                                        (if (gx#stx-pair? _tl3809338402_)
                                            (let ((_e3809438405_
                                                   (gx#stx-e _tl3809338402_)))
                                              (let ((_tl3809638410_
                                                     (##cdr _e3809438405_))
                                                    (_hd3809538408_
                                                     (##car _e3809438405_)))
                                                (if (gx#stx-pair?
                                                     _tl3809638410_)
                                                    (let ((_e3809738413_
                                                           (gx#stx-e
                                                            _tl3809638410_)))
                                                      (let ((_tl3809938418_
                                                             (##cdr _e3809738413_))
                                                            (_hd3809838416_
                                                             (##car _e3809738413_)))
                                                        (if (gx#stx-pair?
                                                             _tl3809938418_)
                                                            (let ((_e3810038421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3809938418_)))
                      (let ((_tl3810238426_ (##cdr _e3810038421_))
                            (_hd3810138424_ (##car _e3810038421_)))
                        (if (gx#stx-null? _tl3810238426_)
                            (___kont4002740028_
                             _hd3810138424_
                             _hd3809838416_
                             _hd3809538408_)
                            (___kont4003740038_))))
                    (___kont4003740038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4003740038_))))
                                            (___kont4003740038_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3809238400_)
                                            (if (gx#stx-pair? _tl3809338402_)
                                                (let ((_e3810638314_
                                                       (gx#stx-e
                                                        _tl3809338402_)))
                                                  (let ((_tl3810838319_
                                                         (##cdr _e3810638314_))
                                                        (_hd3810738317_
                                                         (##car _e3810638314_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3810738317_)
                                                        (let ((___splice4003140032_
                                                               (gx#syntax-split-splice
                                                                _hd3810738317_
                                                                '0)))
                                                          (let ((_tl3811138324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice4003140032_ '1))
                        (_target3810938322_
                         (##vector-ref ___splice4003140032_ '0)))
                    (if (gx#stx-null? _tl3811138324_)
                        (___match4009240093_
                         _e3809138397_
                         _hd3809238400_
                         _tl3809338402_
                         _e3810638314_
                         _hd3810738317_
                         _tl3810838319_
                         ___splice4003140032_
                         _target3810938322_
                         _tl3811138324_)
                        (___kont4003740038_))))
                (___kont4003740038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4003740038_))
                                            (___kont4003740038_)))
                                    (___kont4003740038_))))
                            (___kont4003740038_)))))))
               (_fold-blocks37899_
                (lambda (_rest37998_ _blocks37999_)
                  (let* ((_rest3800038017_ _rest37998_)
                         (_E3800338021_
                          (lambda ()
                            (error '"No clause matching" _rest3800038017_))))
                    (let ((_K3800538041_
                           (lambda (_rest38032_
                                    _assert38033_
                                    _bind38034_
                                    _body38035_
                                    _name38036_)
                             (let ((_g42792_
                                    (_basic-block37898_
                                     _body38035_
                                     _bind38034_
                                     _assert38033_)))
                               (begin
                                 (let ((_g42793_
                                        (if (##values? _g42792_)
                                            (##vector-length _g42792_)
                                            1)))
                                   (if (not (##fx= _g42793_ 2))
                                       (error "Context expects 2 values"
                                              _g42793_)))
                                 (let ((_body38038_ (##vector-ref _g42792_ 0))
                                       (_body-blocks38039_
                                        (##vector-ref _g42792_ 1)))
                                   (_fold-blocks37899_
                                    (foldl1 cons
                                            _rest38032_
                                            _body-blocks38039_)
                                    (cons (cons _name38036_
                                                (cons 'continue:
                                                      (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (reverse (map car _bind38034_))
                                (cons _body38038_ '())))
                    (cons _assert38033_ (cons _bind38034_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _blocks37999_)))))))
                          (_K3800438026_ (lambda () _blocks37999_)))
                      (let ((_try-match3800238029_
                             (lambda ()
                               (if (##null? _rest3800038017_)
                                   (_K3800438026_)
                                   (_E3800338021_)))))
                        (if (##pair? _rest3800038017_)
                            (let ((_tl3800738046_ (##cdr _rest3800038017_))
                                  (_hd3800638044_ (##car _rest3800038017_)))
                              (if (##pair? _hd3800638044_)
                                  (let ((_tl3800938051_ (##cdr _hd3800638044_))
                                        (_hd3800838049_
                                         (##car _hd3800638044_)))
                                    (if (##pair? _tl3800938051_)
                                        (let ((_tl3801138058_
                                               (##cdr _tl3800938051_))
                                              (_hd3801038056_
                                               (##car _tl3800938051_)))
                                          (if (##pair? _tl3801138058_)
                                              (let ((_tl3801338065_
                                                     (##cdr _tl3801138058_))
                                                    (_hd3801238063_
                                                     (##car _tl3801138058_)))
                                                (if (##pair? _tl3801338065_)
                                                    (let ((_tl3801538072_
                                                           (##cdr _tl3801338065_))
                                                          (_hd3801438070_
                                                           (##car _tl3801338065_)))
                                                      (if (##null? _tl3801538072_)
                                                          (let ((_name38054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3800838049_)
                        (_body38061_ _hd3801038056_)
                        (_bind38068_ _hd3801238063_)
                        (_assert38075_ _hd3801438070_)
                        (_rest38077_ _tl3800738046_))
                    (_K3800538041_
                     _rest38077_
                     _assert38075_
                     _bind38068_
                     _body38061_
                     _name38054_))
                  (_E3800338021_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3800338021_)))
                                              (_E3800338021_)))
                                        (_E3800338021_)))
                                  (_E3800338021_)))
                            (_try-match3800238029_))))))))
        (let* ((_clause3790037907_ _clause37893_)
               (_E3790237911_
                (lambda () (error '"No clause matching" _clause3790037907_)))
               (_K3790337986_
                (lambda (_body37914_ _name37915_)
                  (let* ((_g3791737933_
                          (lambda (_g3791837930_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3791837930_)))
                         (_g3791637983_
                          (lambda (_g3791837936_)
                            (if (gx#stx-pair? _g3791837936_)
                                (let ((_e3792037938_ (gx#stx-e _g3791837936_)))
                                  (let ((_hd3792137941_ (##car _e3792037938_))
                                        (_tl3792237943_ (##cdr _e3792037938_)))
                                    (if (gx#identifier? _hd3792137941_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3792137941_)
                                            (if (gx#stx-pair? _tl3792237943_)
                                                (let ((_e3792337946_
                                                       (gx#stx-e
                                                        _tl3792237943_)))
                                                  (let ((_hd3792437949_
                                                         (##car _e3792337946_))
                                                        (_tl3792537951_
                                                         (##cdr _e3792337946_)))
                                                    (if (gx#stx-null?
                                                         _hd3792437949_)
                                                        (if (gx#stx-pair?
                                                             _tl3792537951_)
                                                            (let ((_e3792637954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3792537951_)))
                      (let ((_hd3792737957_ (##car _e3792637954_))
                            (_tl3792837959_ (##cdr _e3792637954_)))
                        (if (gx#stx-null? _tl3792837959_)
                            ((lambda (_L37962_)
                               (let ((_g42794_
                                      (_basic-block37898_ _L37962_ '() '())))
                                 (begin
                                   (let ((_g42795_
                                          (if (##values? _g42794_)
                                              (##vector-length _g42794_)
                                              1)))
                                     (if (not (##fx= _g42795_ 2))
                                         (error "Context expects 2 values"
                                                _g42795_)))
                                   (let ((_body37980_
                                          (##vector-ref _g42794_ 0))
                                         (_body-blocks37981_
                                          (##vector-ref _g42794_ 1)))
                                     (_fold-blocks37899_
                                      _body-blocks37981_
                                      (cons (cons _name37915_
                                                  (cons 'restart:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '() (cons _body37980_ '())))
                      (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks37894_))))))
                             _hd3792737957_)
                            (_g3791737933_ _g3791837936_))))
                    (_g3791737933_ _g3791837936_))
                (_g3791737933_ _g3791837936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3791737933_ _g3791837936_))
                                            (_g3791737933_ _g3791837936_))
                                        (_g3791737933_ _g3791837936_))))
                                (_g3791737933_ _g3791837936_)))))
                    (_g3791637983_ _body37914_)))))
          (if (##pair? _clause3790037907_)
              (let ((_hd3790437989_ (##car _clause3790037907_))
                    (_tl3790537991_ (##cdr _clause3790037907_)))
                (let* ((_name37994_ _hd3790437989_)
                       (_body37996_ _tl3790537991_))
                  (_K3790337986_ _body37996_ _name37994_)))
              (_E3790237911_))))))
  (define gxc#optimize-match-fold-basic-blocks
    (lambda (_blocks37499_)
      (let _lp37501_ ((_rest37503_ _blocks37499_) (_blocks37504_ '()))
        (let* ((_rest3750537513_ _rest37503_)
               (_else3750737562_
                (lambda ()
                  (foldl1 (lambda (_block37521_ _r37522_)
                            (let* ((_block3752337534_ _block37521_)
                                   (_E3752537538_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _block3752337534_)))
                                   (_K3752637544_
                                    (lambda (_kont37541_ _name37542_)
                                      (cons (cons _name37542_ _kont37541_)
                                            _r37522_))))
                              (if (##pair? _block3752337534_)
                                  (let ((_hd3752737547_
                                         (##car _block3752337534_))
                                        (_tl3752837549_
                                         (##cdr _block3752337534_)))
                                    (let ((_name37552_ _hd3752737547_))
                                      (if (##pair? _tl3752837549_)
                                          (let ((_tl3753037554_
                                                 (##cdr _tl3752837549_)))
                                            (if (##pair? _tl3753037554_)
                                                (let* ((_hd3753137557_
                                                        (##car _tl3753037554_))
                                                       (_kont37560_
                                                        _hd3753137557_))
                                                  (_K3752637544_
                                                   _kont37560_
                                                   _name37552_))
                                                (_E3752537538_)))
                                          (_E3752537538_))))
                                  (_E3752537538_))))
                          '()
                          _blocks37504_)))
               (_K3750937881_
                (lambda (_rest37565_ _block37566_)
                  (let* ((_block3756737592_ _block37566_)
                         (_E3757037596_
                          (lambda ()
                            (error '"No clause matching" _block3756737592_))))
                    (let ((_K3758237852_
                           (lambda (_assert37774_ _kont37775_ _name37776_)
                             (let* ((_g3777837794_
                                     (lambda (_g3777937791_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3777937791_)))
                                    (_g3777737849_
                                     (lambda (_g3777937797_)
                                       (if (gx#stx-pair? _g3777937797_)
                                           (let ((_e3778137799_
                                                  (gx#stx-e _g3777937797_)))
                                             (let ((_hd3778237802_
                                                    (##car _e3778137799_))
                                                   (_tl3778337804_
                                                    (##cdr _e3778137799_)))
                                               (if (gx#identifier?
                                                    _hd3778237802_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3778237802_)
                                                       (if (gx#stx-pair?
                                                            _tl3778337804_)
                                                           (let ((_e3778437807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3778337804_)))
                     (let ((_hd3778537810_ (##car _e3778437807_))
                           (_tl3778637812_ (##cdr _e3778437807_)))
                       (if (gx#stx-null? _hd3778537810_)
                           (if (gx#stx-pair? _tl3778637812_)
                               (let ((_e3778737815_ (gx#stx-e _tl3778637812_)))
                                 (let ((_hd3778837818_ (##car _e3778737815_))
                                       (_tl3778937820_ (##cdr _e3778737815_)))
                                   (if (gx#stx-null? _tl3778937820_)
                                       ((lambda (_L37823_)
                                          (let* ((_body37838_
                                                  (gxc#optimize-match-block
                                                   _L37823_
                                                   _assert37774_
                                                   '()
                                                   _rest37565_))
                                                 (_block37840_
                                                  (cons _name37776_
                                                        (cons 'restart:
                                                              (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '() (cons _body37838_ '())))
                            (cons _assert37774_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_blocks37842_
                                                  (cons _block37840_
                                                        _blocks37504_))
                                                 (_rest37844_
                                                  (gxc#optimize-match-prune-blocks
                                                   _rest37565_
                                                   _blocks37842_))
                                                 (_rest37846_
                                                  (gxc#optimize-match-fuse-restart-blocks
                                                   _rest37844_
                                                   _blocks37842_)))
                                            (_lp37501_
                                             _rest37846_
                                             _blocks37842_)))
                                        _hd3778837818_)
                                       (_g3777837794_ _g3777937797_))))
                               (_g3777837794_ _g3777937797_))
                           (_g3777837794_ _g3777937797_))))
                   (_g3777837794_ _g3777937797_))
               (_g3777837794_ _g3777937797_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3777837794_
                                                    _g3777937797_))))
                                           (_g3777837794_ _g3777937797_)))))
                               (_g3777737849_ _kont37775_))))
                          (_K3757137735_
                           (lambda (_bind37600_
                                    _assert37601_
                                    _kont37602_
                                    _name37603_)
                             (let* ((_g3760537631_
                                     (lambda (_g3760637628_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3760637628_)))
                                    (_g3760437732_
                                     (lambda (_g3760637634_)
                                       (if (gx#stx-pair? _g3760637634_)
                                           (let ((_e3760937636_
                                                  (gx#stx-e _g3760637634_)))
                                             (let ((_hd3761037639_
                                                    (##car _e3760937636_))
                                                   (_tl3761137641_
                                                    (##cdr _e3760937636_)))
                                               (if (gx#identifier?
                                                    _hd3761037639_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3761037639_)
                                                       (if (gx#stx-pair?
                                                            _tl3761137641_)
                                                           (let ((_e3761237644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3761137641_)))
                     (let ((_hd3761337647_ (##car _e3761237644_))
                           (_tl3761437649_ (##cdr _e3761237644_)))
                       (if (gx#stx-pair/null? _hd3761337647_)
                           (let ((_g42796_
                                  (gx#syntax-split-splice _hd3761337647_ '0)))
                             (begin
                               (let ((_g42797_
                                      (if (##values? _g42796_)
                                          (##vector-length _g42796_)
                                          1)))
                                 (if (not (##fx= _g42797_ 2))
                                     (error "Context expects 2 values"
                                            _g42797_)))
                               (let ((_target3761537652_
                                      (##vector-ref _g42796_ 0))
                                     (_tl3761737654_
                                      (##vector-ref _g42796_ 1)))
                                 (if (gx#stx-null? _tl3761737654_)
                                     (letrec ((_loop3761837657_
                                               (lambda (_hd3761637660_
                                                        _id3762237662_)
                                                 (if (gx#stx-pair?
                                                      _hd3761637660_)
                                                     (let ((_e3761937665_
                                                            (gx#stx-e
                                                             _hd3761637660_)))
                                                       (let ((_lp-hd3762037668_
                                                              (##car _e3761937665_))
                                                             (_lp-tl3762137670_
                                                              (##cdr _e3761937665_)))
                                                         (_loop3761837657_
                                                          _lp-tl3762137670_
                                                          (cons _lp-hd3762037668_
                                                                _id3762237662_))))
                                                     (let ((_id3762337673_
                                                            (reverse _id3762237662_)))
                                                       (if (gx#stx-pair?
                                                            _tl3761437649_)
                                                           (let ((_e3762437676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3761437649_)))
                     (let ((_hd3762537679_ (##car _e3762437676_))
                           (_tl3762637681_ (##cdr _e3762437676_)))
                       (if (gx#stx-null? _tl3762637681_)
                           ((lambda (_L37684_ _L37685_)
                              (let* ((_body37714_
                                      (gxc#optimize-match-block
                                       _L37684_
                                       _assert37601_
                                       _bind37600_
                                       _rest37565_))
                                     (_block37723_
                                      (cons _name37603_
                                            (cons 'continue:
                                                  (cons (cons '%#lambda
                                                              (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g3771537718_ _g3771637720_)
                                        (cons _g3771537718_ _g3771637720_))
                                      '()
                                      _L37685_))
                            (cons _body37714_ '())))
                (cons _assert37601_ (cons _bind37600_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_blocks37725_
                                      (cons _block37723_ _blocks37504_))
                                     (_rest37727_
                                      (gxc#optimize-match-prune-blocks
                                       _rest37565_
                                       _blocks37725_))
                                     (_rest37729_
                                      (gxc#optimize-match-fuse-restart-blocks
                                       _rest37727_
                                       _blocks37725_)))
                                (_lp37501_ _rest37729_ _blocks37725_)))
                            _hd3762537679_
                            _id3762337673_)
                           (_g3760537631_ _g3760637634_))))
                   (_g3760537631_ _g3760637634_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3761837657_
                                        _target3761537652_
                                        '()))
                                     (_g3760537631_ _g3760637634_)))))
                           (_g3760537631_ _g3760637634_))))
                   (_g3760537631_ _g3760637634_))
               (_g3760537631_ _g3760637634_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3760537631_
                                                    _g3760637634_))))
                                           (_g3760537631_ _g3760637634_)))))
                               (_g3760437732_ _kont37602_)))))
                      (if (##pair? _block3756737592_)
                          (let ((_tl3758437857_ (##cdr _block3756737592_))
                                (_hd3758337855_ (##car _block3756737592_)))
                            (if (##pair? _tl3758437857_)
                                (let ((_tl3758637864_ (##cdr _tl3758437857_))
                                      (_hd3758537862_ (##car _tl3758437857_)))
                                  (if (##eq? _hd3758537862_ 'restart:)
                                      (if (##pair? _tl3758637864_)
                                          (let ((_tl3758837869_
                                                 (##cdr _tl3758637864_))
                                                (_hd3758737867_
                                                 (##car _tl3758637864_)))
                                            (if (##pair? _tl3758837869_)
                                                (let ((_tl3759037876_
                                                       (##cdr _tl3758837869_))
                                                      (_hd3758937874_
                                                       (##car _tl3758837869_)))
                                                  (if (##null? _tl3759037876_)
                                                      (let ((_name37860_
                                                             _hd3758337855_)
                                                            (_kont37872_
                                                             _hd3758737867_)
                                                            (_assert37879_
                                                             _hd3758937874_))
                                                        (_K3758237852_
                                                         _assert37879_
                                                         _kont37872_
                                                         _name37860_))
                                                      (_E3757037596_)))
                                                (_E3757037596_)))
                                          (_E3757037596_))
                                      (if (##eq? _hd3758537862_ 'continue:)
                                          (if (##pair? _tl3758637864_)
                                              (let ((_tl3757737752_
                                                     (##cdr _tl3758637864_))
                                                    (_hd3757637750_
                                                     (##car _tl3758637864_)))
                                                (if (##pair? _tl3757737752_)
                                                    (let ((_tl3757937759_
                                                           (##cdr _tl3757737752_))
                                                          (_hd3757837757_
                                                           (##car _tl3757737752_)))
                                                      (if (##pair? _tl3757937759_)
                                                          (let ((_tl3758137766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _tl3757937759_))
                        (_hd3758037764_ (##car _tl3757937759_)))
                    (if (##null? _tl3758137766_)
                        (let ((_name37743_ _hd3758337855_)
                              (_kont37755_ _hd3757637750_)
                              (_assert37762_ _hd3757837757_)
                              (_bind37769_ _hd3758037764_))
                          (_K3757137735_
                           _bind37769_
                           _assert37762_
                           _kont37755_
                           _name37743_))
                        (_E3757037596_)))
                  (_E3757037596_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3757037596_)))
                                              (_E3757037596_))
                                          (_E3757037596_))))
                                (_E3757037596_)))
                          (_E3757037596_)))))))
          (if (##pair? _rest3750537513_)
              (let ((_hd3751037884_ (##car _rest3750537513_))
                    (_tl3751137886_ (##cdr _rest3750537513_)))
                (let* ((_block37889_ _hd3751037884_)
                       (_rest37891_ _tl3751137886_))
                  (_K3750937881_ _rest37891_ _block37889_)))
              (_else3750737562_))))))
  (define gxc#optimize-match-block
    (lambda (_body32122_ _assert32123_ _bind32124_ _blocks32125_)
      (letrec* ((_env-assert32360_ '())
                (_env-type32361_ '())
                (_env-bind32362_ '())
                (_in-splice?32363_ '#f)
                (_do-assert32364_
                 (lambda (_assert37422_ _K37423_)
                   (if (pair? _assert37422_)
                       (let _lp37425_ ((_rest37427_ _assert37422_)
                                       (_env-assert37428_ _env-assert32360_)
                                       (_env-type37429_ _env-type32361_))
                         (let* ((_rest3743037438_ _rest37427_)
                                (_else3743237446_
                                 (lambda ()
                                   (_do-assert!32370_
                                    _env-assert37428_
                                    _env-type37429_
                                    _K37423_)))
                                (_K3743437487_
                                 (lambda (_rest37449_ _assert37450_)
                                   (let* ((_assert3745137458_ _assert37450_)
                                          (_E3745337462_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _assert3745137458_)))
                                          (_K3745437475_
                                           (lambda (_val37465_ _expr37466_)
                                             (let* ((_sexpr37468_
                                                     (gxc#apply-generate-runtime-repr
                                                      _expr37466_))
                                                    (_env-assert37470_
                                                     (cons (cons _sexpr37468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _val37465_)
                   _env-assert37428_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_env-type37472_
                                                     (_fold-assert-type32366_
                                                      _expr37466_
                                                      _val37465_
                                                      _env-type37429_)))
                                               (_lp37425_
                                                _rest37449_
                                                _env-assert37470_
                                                _env-type37472_)))))
                                     (if (##pair? _assert3745137458_)
                                         (let ((_hd3745537478_
                                                (##car _assert3745137458_))
                                               (_tl3745637480_
                                                (##cdr _assert3745137458_)))
                                           (let* ((_expr37483_ _hd3745537478_)
                                                  (_val37485_ _tl3745637480_))
                                             (_K3745437475_
                                              _val37485_
                                              _expr37483_)))
                                         (_E3745337462_))))))
                           (if (##pair? _rest3743037438_)
                               (let ((_hd3743537490_ (##car _rest3743037438_))
                                     (_tl3743637492_ (##cdr _rest3743037438_)))
                                 (let* ((_assert37495_ _hd3743537490_)
                                        (_rest37497_ _tl3743637492_))
                                   (_K3743437487_ _rest37497_ _assert37495_)))
                               (_else3743237446_))))
                       (_K37423_))))
                (_predicate-type32365_
                 (lambda (_id37367_)
                   (let* ((_sym37369_ (gxc#identifier-symbol _id37367_))
                          (_$e37371_ _sym37369_))
                     (let ((_default3737337404_
                            (lambda ()
                              (let* ((_g3737637383_
                                      (gxc#optimizer-resolve-type _sym37369_))
                                     (_else3737837391_ (lambda () '#f))
                                     (_K3738037396_
                                      (lambda (_struct-t37394_)
                                        (gxc#optimizer-resolve-type
                                         _struct-t37394_))))
                                (if (##structure-instance-of?
                                     _g3737637383_
                                     'gxc#!struct-pred::t)
                                    (let* ((_e3738137399_
                                            (##vector-ref _g3737637383_ '1))
                                           (_struct-t37402_ _e3738137399_))
                                      (gxc#optimizer-resolve-type
                                       _struct-t37402_))
                                    (_else3737837391_)))))
                           (_table3737437406_
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
                       (if (symbol? _$e37371_)
                           (let* ((_h37409_ (##symbol-hash _$e37371_))
                                  (_ix37412_ (##fxmodulo _h37409_ '63))
                                  (_q37415_
                                   (##vector-ref _table3737437406_ _ix37412_)))
                             (if _q37415_
                                 (if (eq? (##car _q37415_) _$e37371_)
                                     (let ((_x37419_ (##cdr _q37415_)))
                                       (if (##fx< _x37419_ '5)
                                           (if (##fx< _x37419_ '2)
                                               (if (##fx= _x37419_ '0)
                                                   'pair
                                                   'null)
                                               (if (##fx= _x37419_ '2)
                                                   'vector
                                                   (if (##fx= _x37419_ '3)
                                                       'box
                                                       'identifier)))
                                           (if (##fx< _x37419_ '7)
                                               (if (##fx= _x37419_ '5)
                                                   'stx-pair
                                                   'stx-null)
                                               (if (##fx= _x37419_ '7)
                                                   'stx-vector
                                                   (if (##fx= _x37419_ '8)
                                                       'stx-box
                                                       'stx-datum)))))
                                     (_default3737337404_))
                                 (_default3737337404_)))
                           (_default3737337404_))))))
                (_fold-assert-type32366_
                 (lambda (_expr36315_ _val36316_ _env36317_)
                   (let* ((___stx4028340284_ _expr36315_)
                          (_g3632536504_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4028340284_))))
                     (let ((___kont4028540286_
                            (lambda (_L37336_ _L37337_)
                              (let ((_$e37359_
                                     (_predicate-type32365_ _L37337_)))
                                (if _$e37359_
                                    ((lambda (_t37362_)
                                       (cons (cons _L37336_
                                                   (cons _t37362_
                                                         (cons _val36316_
                                                               '())))
                                             _env36317_))
                                     _$e37359_)
                                    _env36317_))))
                           (___kont4028740288_
                            (lambda (_L37026_ _L37027_ _L37028_)
                              (let ((_$e37053_
                                     (gxc#identifier-symbol _L37028_)))
                                (if (let ((_$e37056_ (eq? '##fx= _$e37053_)))
                                      (if _$e37056_
                                          _$e37056_
                                          (eq? 'fx= _$e37053_)))
                                    (let* ((___stx4018940190_ _L37027_)
                                           (_g3706037089_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               ___stx4018940190_))))
                                      (let ((___kont4019140192_
                                             (lambda (_L37157_ _L37158_)
                                               (let ((_$e37183_
                                                      (_countf-symbol32367_
                                                       _L37158_)))
                                                 (if _$e37183_
                                                     ((lambda (_sym37186_)
                                                        (cons (cons _L37157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym37186_
                                  (cons (gx#stx-e _L37026_)
                                        (cons _val36316_ '()))))
                      _env36317_))
              _$e37183_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _env36317_))))
                                            (___kont4019340194_
                                             (lambda () _env36317_)))
                                        (if (gx#stx-pair? ___stx4018940190_)
                                            (let ((_e3706437101_
                                                   (gx#stx-e
                                                    ___stx4018940190_)))
                                              (let ((_tl3706637106_
                                                     (##cdr _e3706437101_))
                                                    (_hd3706537104_
                                                     (##car _e3706437101_)))
                                                (if (gx#identifier?
                                                     _hd3706537104_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3706537104_)
                                                        (if (gx#stx-pair?
                                                             _tl3706637106_)
                                                            (let ((_e3706737109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3706637106_)))
                      (let ((_tl3706937114_ (##cdr _e3706737109_))
                            (_hd3706837112_ (##car _e3706737109_)))
                        (if (gx#stx-pair? _hd3706837112_)
                            (let ((_e3707037117_ (gx#stx-e _hd3706837112_)))
                              (let ((_tl3707237122_ (##cdr _e3707037117_))
                                    (_hd3707137120_ (##car _e3707037117_)))
                                (if (gx#identifier? _hd3707137120_)
                                    (if (gx#stx-eq? '%#ref _hd3707137120_)
                                        (if (gx#stx-pair? _tl3707237122_)
                                            (let ((_e3707337125_
                                                   (gx#stx-e _tl3707237122_)))
                                              (let ((_tl3707537130_
                                                     (##cdr _e3707337125_))
                                                    (_hd3707437128_
                                                     (##car _e3707337125_)))
                                                (if (gx#stx-null?
                                                     _tl3707537130_)
                                                    (if (gx#stx-pair?
                                                         _tl3706937114_)
                                                        (let ((_e3707637133_
                                                               (gx#stx-e
                                                                _tl3706937114_)))
                                                          (let ((_tl3707837138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3707637133_))
                        (_hd3707737136_ (##car _e3707637133_)))
                    (if (gx#stx-pair? _hd3707737136_)
                        (let ((_e3707937141_ (gx#stx-e _hd3707737136_)))
                          (let ((_tl3708137146_ (##cdr _e3707937141_))
                                (_hd3708037144_ (##car _e3707937141_)))
                            (if (gx#identifier? _hd3708037144_)
                                (if (gx#stx-eq? '%#ref _hd3708037144_)
                                    (if (gx#stx-pair? _tl3708137146_)
                                        (let ((_e3708237149_
                                               (gx#stx-e _tl3708137146_)))
                                          (let ((_tl3708437154_
                                                 (##cdr _e3708237149_))
                                                (_hd3708337152_
                                                 (##car _e3708237149_)))
                                            (if (gx#stx-null? _tl3708437154_)
                                                (if (gx#stx-null?
                                                     _tl3707837138_)
                                                    (___kont4019140192_
                                                     _hd3708337152_
                                                     _hd3707437128_)
                                                    (___kont4019340194_))
                                                (___kont4019340194_))))
                                        (___kont4019340194_))
                                    (___kont4019340194_))
                                (___kont4019340194_))))
                        (___kont4019340194_))))
                (___kont4019340194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4019340194_))))
                                            (___kont4019340194_))
                                        (___kont4019340194_))
                                    (___kont4019340194_))))
                            (___kont4019340194_))))
                    (___kont4019340194_))
                (___kont4019340194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4019340194_))))
                                            (___kont4019340194_))))
                                    (if (let ((_$e37191_
                                               (eq? '##eq? _$e37053_)))
                                          (if _$e37191_
                                              _$e37191_
                                              (let ((_$e37194_
                                                     (eq? 'eq? _$e37053_)))
                                                (if _$e37194_
                                                    _$e37194_
                                                    (let ((_$e37197_
                                                           (eq? '##eqv?
                                                                _$e37053_)))
                                                      (if _$e37197_
                                                          _$e37197_
                                                          (let ((_$e37200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (eq? 'eqv? _$e37053_)))
                    (if _$e37200_
                        _$e37200_
                        (let ((_$e37203_ (eq? '##equal? _$e37053_)))
                          (if _$e37203_
                              _$e37203_
                              (let ((_$e37206_ (eq? 'equal? _$e37053_)))
                                (if _$e37206_
                                    _$e37206_
                                    (let ((_$e37209_
                                           (eq? 'gx#free-identifier=?
                                                _$e37053_)))
                                      (if _$e37209_
                                          _$e37209_
                                          (eq? 'gx#stx-eq?
                                               _$e37053_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        ((lambda (_sym37212_)
                                           (let* ((_sym37214_
                                                   (_eqf-symbol32368_
                                                    _sym37212_))
                                                  (___stx4025740258_ _L37027_)
                                                  (_g3721737230_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4025740258_))))
                                             (let ((___kont4025940260_
                                                    (lambda (_L37258_)
                                                      (cons (cons _L37258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _sym37214_
                                (cons (gx#stx-e _L37026_)
                                      (cons _val36316_ '()))))
                    _env36317_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4026140262_
                                                    (lambda () _env36317_)))
                                               (if (gx#stx-pair?
                                                    ___stx4025740258_)
                                                   (let ((_e3722037242_
                                                          (gx#stx-e
                                                           ___stx4025740258_)))
                                                     (let ((_tl3722237247_
                                                            (##cdr _e3722037242_))
                                                           (_hd3722137245_
                                                            (##car _e3722037242_)))
                                                       (if (gx#identifier?
                                                            _hd3722137245_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3722137245_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3722237247_)
                           (let ((_e3722337250_ (gx#stx-e _tl3722237247_)))
                             (let ((_tl3722537255_ (##cdr _e3722337250_))
                                   (_hd3722437253_ (##car _e3722337250_)))
                               (if (gx#stx-null? _tl3722537255_)
                                   (___kont4025940260_ _hd3722437253_)
                                   (___kont4026140262_))))
                           (___kont4026140262_))
                       (___kont4026140262_))
                   (___kont4026140262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4026140262_)))))
                                         _$e37053_)
                                        _env36317_)))))
                           (___kont4028940290_
                            (lambda (_L36930_ _L36931_ _L36932_)
                              (_fold-assert-type32366_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L36932_ '()))
                                           (cons _L36930_
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote)
                                                             (cons _L36931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36316_
                               _env36317_)))
                           (___kont4029140292_
                            (lambda (_L36820_ _L36821_ _L36822_)
                              (let ((_$e36851_
                                     (gxc#identifier-symbol _L36822_)))
                                (if (let ((_$e36854_
                                           (eq? 'gx#free-identifier=?
                                                _$e36851_)))
                                      (if _$e36854_
                                          _$e36854_
                                          (eq? 'gx#stx-eq? _$e36851_)))
                                    ((lambda (_sym36857_)
                                       (let ((_sym36859_
                                              (_eqf-symbol32368_ _sym36857_)))
                                         (cons (cons _L36821_
                                                     (cons _sym36859_
                                                           (cons _L36820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _val36316_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env36317_)))
                                     _$e36851_)
                                    _env36317_))))
                           (___kont4029340294_
                            (lambda (_L36704_ _L36705_ _L36706_)
                              (_fold-assert-type32366_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L36706_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#ref)
                                                       (cons _L36704_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote-syntax)
                                                             (cons _L36705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36316_
                               _env36317_)))
                           (___kont4029540296_
                            (lambda (_L36588_ _L36589_ _L36590_)
                              (_fold-assert-type32366_
                               (gxc#apply-expression-subst
                                _L36589_
                                _L36590_
                                _L36588_)
                               _val36316_
                               _env36317_)))
                           (___kont4029740298_ (lambda () _env36317_)))
                       (if (gx#stx-pair? ___stx4028340284_)
                           (let ((_e3632937280_ (gx#stx-e ___stx4028340284_)))
                             (let ((_tl3633137285_ (##cdr _e3632937280_))
                                   (_hd3633037283_ (##car _e3632937280_)))
                               (if (gx#identifier? _hd3633037283_)
                                   (if (gx#stx-eq? '%#call _hd3633037283_)
                                       (if (gx#stx-pair? _tl3633137285_)
                                           (let ((_e3633237288_
                                                  (gx#stx-e _tl3633137285_)))
                                             (let ((_tl3633437293_
                                                    (##cdr _e3633237288_))
                                                   (_hd3633337291_
                                                    (##car _e3633237288_)))
                                               (if (gx#stx-pair?
                                                    _hd3633337291_)
                                                   (let ((_e3633537296_
                                                          (gx#stx-e
                                                           _hd3633337291_)))
                                                     (let ((_tl3633737301_
                                                            (##cdr _e3633537296_))
                                                           (_hd3633637299_
                                                            (##car _e3633537296_)))
                                                       (if (gx#identifier?
                                                            _hd3633637299_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3633637299_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3633737301_)
                           (let ((_e3633837304_ (gx#stx-e _tl3633737301_)))
                             (let ((_tl3634037309_ (##cdr _e3633837304_))
                                   (_hd3633937307_ (##car _e3633837304_)))
                               (if (gx#stx-null? _tl3634037309_)
                                   (if (gx#stx-pair? _tl3633437293_)
                                       (let ((_e3634137312_
                                              (gx#stx-e _tl3633437293_)))
                                         (let ((_tl3634337317_
                                                (##cdr _e3634137312_))
                                               (_hd3634237315_
                                                (##car _e3634137312_)))
                                           (if (gx#stx-pair? _hd3634237315_)
                                               (let ((_e3634437320_
                                                      (gx#stx-e
                                                       _hd3634237315_)))
                                                 (let ((_tl3634637325_
                                                        (##cdr _e3634437320_))
                                                       (_hd3634537323_
                                                        (##car _e3634437320_)))
                                                   (if (gx#identifier?
                                                        _hd3634537323_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd3634537323_)
                                                           (if (gx#stx-pair?
                                                                _tl3634637325_)
                                                               (let ((_e3634737328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3634637325_)))
                         (let ((_tl3634937333_ (##cdr _e3634737328_))
                               (_hd3634837331_ (##car _e3634737328_)))
                           (if (gx#stx-null? _tl3634937333_)
                               (if (gx#stx-null? _tl3634337317_)
                                   (___kont4028540286_
                                    _hd3634837331_
                                    _hd3633937307_)
                                   (if (gx#stx-pair? _tl3634337317_)
                                       (let ((_e3636837002_
                                              (gx#stx-e _tl3634337317_)))
                                         (let ((_tl3637037007_
                                                (##cdr _e3636837002_))
                                               (_hd3636937005_
                                                (##car _e3636837002_)))
                                           (if (gx#stx-pair? _hd3636937005_)
                                               (let ((_e3637137010_
                                                      (gx#stx-e
                                                       _hd3636937005_)))
                                                 (let ((_tl3637337015_
                                                        (##cdr _e3637137010_))
                                                       (_hd3637237013_
                                                        (##car _e3637137010_)))
                                                   (if (gx#identifier?
                                                        _hd3637237013_)
                                                       (if (gx#stx-eq?
                                                            '%#quote
                                                            _hd3637237013_)
                                                           (if (gx#stx-pair?
                                                                _tl3637337015_)
                                                               (let ((_e3637437018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3637337015_)))
                         (let ((_tl3637637023_ (##cdr _e3637437018_))
                               (_hd3637537021_ (##car _e3637437018_)))
                           (if (gx#stx-null? _tl3637637023_)
                               (if (gx#stx-null? _tl3637037007_)
                                   (___kont4028740288_
                                    _hd3637537021_
                                    _hd3634237315_
                                    _hd3633937307_)
                                   (___kont4029740298_))
                               (___kont4029740298_))))
                       (___kont4029740298_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3637237013_)
                       (if (gx#stx-pair? _tl3637337015_)
                           (let ((_e3643436812_ (gx#stx-e _tl3637337015_)))
                             (let ((_tl3643636817_ (##cdr _e3643436812_))
                                   (_hd3643536815_ (##car _e3643436812_)))
                               (if (gx#stx-null? _tl3643636817_)
                                   (if (gx#stx-null? _tl3637037007_)
                                       (___kont4029140292_
                                        _hd3643536815_
                                        _hd3634837331_
                                        _hd3633937307_)
                                       (___kont4029740298_))
                                   (___kont4029740298_))))
                           (___kont4029740298_))
                       (___kont4029740298_)))
               (___kont4029740298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4029740298_))))
                                       (___kont4029740298_)))
                               (if (gx#stx-pair? _tl3634337317_)
                                   (let ((_e3636837002_
                                          (gx#stx-e _tl3634337317_)))
                                     (let ((_tl3637037007_
                                            (##cdr _e3636837002_))
                                           (_hd3636937005_
                                            (##car _e3636837002_)))
                                       (if (gx#stx-pair? _hd3636937005_)
                                           (let ((_e3637137010_
                                                  (gx#stx-e _hd3636937005_)))
                                             (let ((_tl3637337015_
                                                    (##cdr _e3637137010_))
                                                   (_hd3637237013_
                                                    (##car _e3637137010_)))
                                               (if (gx#identifier?
                                                    _hd3637237013_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3637237013_)
                                                       (if (gx#stx-pair?
                                                            _tl3637337015_)
                                                           (let ((_e3637437018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3637337015_)))
                     (let ((_tl3637637023_ (##cdr _e3637437018_))
                           (_hd3637537021_ (##car _e3637437018_)))
                       (if (gx#stx-null? _tl3637637023_)
                           (if (gx#stx-null? _tl3637037007_)
                               (___kont4028740288_
                                _hd3637537021_
                                _hd3634237315_
                                _hd3633937307_)
                               (___kont4029740298_))
                           (___kont4029740298_))))
                   (___kont4029740298_))
               (___kont4029740298_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4029740298_))))
                                           (___kont4029740298_))))
                                   (___kont4029740298_)))))
                       (if (gx#stx-pair? _tl3634337317_)
                           (let ((_e3636837002_ (gx#stx-e _tl3634337317_)))
                             (let ((_tl3637037007_ (##cdr _e3636837002_))
                                   (_hd3636937005_ (##car _e3636837002_)))
                               (if (gx#stx-pair? _hd3636937005_)
                                   (let ((_e3637137010_
                                          (gx#stx-e _hd3636937005_)))
                                     (let ((_tl3637337015_
                                            (##cdr _e3637137010_))
                                           (_hd3637237013_
                                            (##car _e3637137010_)))
                                       (if (gx#identifier? _hd3637237013_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3637237013_)
                                               (if (gx#stx-pair?
                                                    _tl3637337015_)
                                                   (let ((_e3637437018_
                                                          (gx#stx-e
                                                           _tl3637337015_)))
                                                     (let ((_tl3637637023_
                                                            (##cdr _e3637437018_))
                                                           (_hd3637537021_
                                                            (##car _e3637437018_)))
                                                       (if (gx#stx-null?
                                                            _tl3637637023_)
                                                           (if (gx#stx-null?
                                                                _tl3637037007_)
                                                               (___kont4028740288_
                                                                _hd3637537021_
                                                                _hd3634237315_
                                                                _hd3633937307_)
                                                               (___kont4029740298_))
                                                           (___kont4029740298_))))
                                                   (___kont4029740298_))
                                               (___kont4029740298_))
                                           (___kont4029740298_))))
                                   (___kont4029740298_))))
                           (___kont4029740298_)))
                   (if (gx#stx-pair? _tl3634337317_)
                       (let ((_e3636837002_ (gx#stx-e _tl3634337317_)))
                         (let ((_tl3637037007_ (##cdr _e3636837002_))
                               (_hd3636937005_ (##car _e3636837002_)))
                           (if (gx#stx-pair? _hd3636937005_)
                               (let ((_e3637137010_ (gx#stx-e _hd3636937005_)))
                                 (let ((_tl3637337015_ (##cdr _e3637137010_))
                                       (_hd3637237013_ (##car _e3637137010_)))
                                   (if (gx#identifier? _hd3637237013_)
                                       (if (gx#stx-eq? '%#quote _hd3637237013_)
                                           (if (gx#stx-pair? _tl3637337015_)
                                               (let ((_e3637437018_
                                                      (gx#stx-e
                                                       _tl3637337015_)))
                                                 (let ((_tl3637637023_
                                                        (##cdr _e3637437018_))
                                                       (_hd3637537021_
                                                        (##car _e3637437018_)))
                                                   (if (gx#stx-null?
                                                        _tl3637637023_)
                                                       (if (gx#stx-null?
                                                            _tl3637037007_)
                                                           (___kont4028740288_
                                                            _hd3637537021_
                                                            _hd3634237315_
                                                            _hd3633937307_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3634537323_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3634637325_)
                           (let ((_e3639836914_ (gx#stx-e _tl3634637325_)))
                             (let ((_tl3640036919_ (##cdr _e3639836914_))
                                   (_hd3639936917_ (##car _e3639836914_)))
                               (___kont4029740298_)))
                           (___kont4029740298_))
                       (if (gx#stx-eq? '%#quote-syntax _hd3634537323_)
                           (if (gx#stx-pair? _tl3634637325_)
                               (let ((_e3645836672_ (gx#stx-e _tl3634637325_)))
                                 (let ((_tl3646036677_ (##cdr _e3645836672_))
                                       (_hd3645936675_ (##car _e3645836672_)))
                                   (___kont4029740298_)))
                               (___kont4029740298_))
                           (___kont4029740298_))))
               (if (gx#stx-eq? '%#quote _hd3634537323_)
                   (if (gx#stx-pair? _tl3634637325_)
                       (let ((_e3639836914_ (gx#stx-e _tl3634637325_)))
                         (let ((_tl3640036919_ (##cdr _e3639836914_))
                               (_hd3639936917_ (##car _e3639836914_)))
                           (if (gx#stx-null? _tl3640036919_)
                               (if (gx#stx-null? _tl3637037007_)
                                   (___kont4028940290_
                                    _hd3636937005_
                                    _hd3639936917_
                                    _hd3633937307_)
                                   (___kont4029740298_))
                               (___kont4029740298_))))
                       (___kont4029740298_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3634537323_)
                       (if (gx#stx-pair? _tl3634637325_)
                           (let ((_e3645836672_ (gx#stx-e _tl3634637325_)))
                             (let ((_tl3646036677_ (##cdr _e3645836672_))
                                   (_hd3645936675_ (##car _e3645836672_)))
                               (___kont4029740298_)))
                           (___kont4029740298_))
                       (___kont4029740298_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3634537323_)
                                                   (if (gx#stx-pair?
                                                        _tl3634637325_)
                                                       (let ((_e3639836914_
                                                              (gx#stx-e
                                                               _tl3634637325_)))
                                                         (let ((_tl3640036919_
                                                                (##cdr _e3639836914_))
                                                               (_hd3639936917_
                                                                (##car _e3639836914_)))
                                                           (if (gx#stx-null?
                                                                _tl3640036919_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3637037007_)
                           (___kont4028940290_
                            _hd3636937005_
                            _hd3639936917_
                            _hd3633937307_)
                           (___kont4029740298_))
                       (___kont4029740298_))))
               (___kont4029740298_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3634537323_)
                                                       (if (gx#stx-pair?
                                                            _tl3634637325_)
                                                           (let ((_e3645836672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3634637325_)))
                     (let ((_tl3646036677_ (##cdr _e3645836672_))
                           (_hd3645936675_ (##car _e3645836672_)))
                       (___kont4029740298_)))
                   (___kont4029740298_))
               (___kont4029740298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3634537323_)
                                               (if (gx#stx-pair?
                                                    _tl3634637325_)
                                                   (let ((_e3639836914_
                                                          (gx#stx-e
                                                           _tl3634637325_)))
                                                     (let ((_tl3640036919_
                                                            (##cdr _e3639836914_))
                                                           (_hd3639936917_
                                                            (##car _e3639836914_)))
                                                       (if (gx#stx-null?
                                                            _tl3640036919_)
                                                           (if (gx#stx-null?
                                                                _tl3637037007_)
                                                               (___kont4028940290_
                                                                _hd3636937005_
                                                                _hd3639936917_
                                                                _hd3633937307_)
                                                               (___kont4029740298_))
                                                           (___kont4029740298_))))
                                                   (___kont4029740298_))
                                               (if (gx#stx-eq?
                                                    '%#quote-syntax
                                                    _hd3634537323_)
                                                   (if (gx#stx-pair?
                                                        _tl3634637325_)
                                                       (let ((_e3645836672_
                                                              (gx#stx-e
                                                               _tl3634637325_)))
                                                         (let ((_tl3646036677_
                                                                (##cdr _e3645836672_))
                                                               (_hd3645936675_
                                                                (##car _e3645836672_)))
                                                           (if (gx#stx-null?
                                                                _tl3646036677_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3637237013_)
                           (if (gx#stx-pair? _tl3637337015_)
                               (let ((_e3646736696_ (gx#stx-e _tl3637337015_)))
                                 (let ((_tl3646936701_ (##cdr _e3646736696_))
                                       (_hd3646836699_ (##car _e3646736696_)))
                                   (if (gx#stx-null? _tl3646936701_)
                                       (if (gx#stx-null? _tl3637037007_)
                                           (___kont4029340294_
                                            _hd3646836699_
                                            _hd3645936675_
                                            _hd3633937307_)
                                           (___kont4029740298_))
                                       (___kont4029740298_))))
                               (___kont4029740298_))
                           (___kont4029740298_))
                       (___kont4029740298_))))
               (___kont4029740298_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4029740298_))))
                                       (if (gx#stx-eq? '%#quote _hd3634537323_)
                                           (if (gx#stx-pair? _tl3634637325_)
                                               (let ((_e3639836914_
                                                      (gx#stx-e
                                                       _tl3634637325_)))
                                                 (let ((_tl3640036919_
                                                        (##cdr _e3639836914_))
                                                       (_hd3639936917_
                                                        (##car _e3639836914_)))
                                                   (if (gx#stx-null?
                                                        _tl3640036919_)
                                                       (if (gx#stx-null?
                                                            _tl3637037007_)
                                                           (___kont4028940290_
                                                            _hd3636937005_
                                                            _hd3639936917_
                                                            _hd3633937307_)
                                                           (___kont4029740298_))
                                                       (___kont4029740298_))))
                                               (___kont4029740298_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3634537323_)
                                               (if (gx#stx-pair?
                                                    _tl3634637325_)
                                                   (let ((_e3645836672_
                                                          (gx#stx-e
                                                           _tl3634637325_)))
                                                     (let ((_tl3646036677_
                                                            (##cdr _e3645836672_))
                                                           (_hd3645936675_
                                                            (##car _e3645836672_)))
                                                       (___kont4029740298_)))
                                                   (___kont4029740298_))
                                               (___kont4029740298_))))))
                               (if (gx#stx-eq? '%#quote _hd3634537323_)
                                   (if (gx#stx-pair? _tl3634637325_)
                                       (let ((_e3639836914_
                                              (gx#stx-e _tl3634637325_)))
                                         (let ((_tl3640036919_
                                                (##cdr _e3639836914_))
                                               (_hd3639936917_
                                                (##car _e3639836914_)))
                                           (if (gx#stx-null? _tl3640036919_)
                                               (if (gx#stx-null?
                                                    _tl3637037007_)
                                                   (___kont4028940290_
                                                    _hd3636937005_
                                                    _hd3639936917_
                                                    _hd3633937307_)
                                                   (___kont4029740298_))
                                               (___kont4029740298_))))
                                       (___kont4029740298_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3634537323_)
                                       (if (gx#stx-pair? _tl3634637325_)
                                           (let ((_e3645836672_
                                                  (gx#stx-e _tl3634637325_)))
                                             (let ((_tl3646036677_
                                                    (##cdr _e3645836672_))
                                                   (_hd3645936675_
                                                    (##car _e3645836672_)))
                                               (___kont4029740298_)))
                                           (___kont4029740298_))
                                       (___kont4029740298_))))))
                       (if (gx#stx-eq? '%#quote _hd3634537323_)
                           (if (gx#stx-pair? _tl3634637325_)
                               (let ((_e3639836914_ (gx#stx-e _tl3634637325_)))
                                 (let ((_tl3640036919_ (##cdr _e3639836914_))
                                       (_hd3639936917_ (##car _e3639836914_)))
                                   (___kont4029740298_)))
                               (___kont4029740298_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3634537323_)
                               (if (gx#stx-pair? _tl3634637325_)
                                   (let ((_e3645836672_
                                          (gx#stx-e _tl3634637325_)))
                                     (let ((_tl3646036677_
                                            (##cdr _e3645836672_))
                                           (_hd3645936675_
                                            (##car _e3645836672_)))
                                       (___kont4029740298_)))
                                   (___kont4029740298_))
                               (___kont4029740298_)))))
               (if (gx#stx-pair? _tl3634337317_)
                   (let ((_e3636837002_ (gx#stx-e _tl3634337317_)))
                     (let ((_tl3637037007_ (##cdr _e3636837002_))
                           (_hd3636937005_ (##car _e3636837002_)))
                       (if (gx#stx-pair? _hd3636937005_)
                           (let ((_e3637137010_ (gx#stx-e _hd3636937005_)))
                             (let ((_tl3637337015_ (##cdr _e3637137010_))
                                   (_hd3637237013_ (##car _e3637137010_)))
                               (if (gx#identifier? _hd3637237013_)
                                   (if (gx#stx-eq? '%#quote _hd3637237013_)
                                       (if (gx#stx-pair? _tl3637337015_)
                                           (let ((_e3637437018_
                                                  (gx#stx-e _tl3637337015_)))
                                             (let ((_tl3637637023_
                                                    (##cdr _e3637437018_))
                                                   (_hd3637537021_
                                                    (##car _e3637437018_)))
                                               (if (gx#stx-null?
                                                    _tl3637637023_)
                                                   (if (gx#stx-null?
                                                        _tl3637037007_)
                                                       (___kont4028740288_
                                                        _hd3637537021_
                                                        _hd3634237315_
                                                        _hd3633937307_)
                                                       (___kont4029740298_))
                                                   (___kont4029740298_))))
                                           (___kont4029740298_))
                                       (___kont4029740298_))
                                   (___kont4029740298_))))
                           (___kont4029740298_))))
                   (___kont4029740298_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl3634337317_)
                                                   (let ((_e3636837002_
                                                          (gx#stx-e
                                                           _tl3634337317_)))
                                                     (let ((_tl3637037007_
                                                            (##cdr _e3636837002_))
                                                           (_hd3636937005_
                                                            (##car _e3636837002_)))
                                                       (if (gx#stx-pair?
                                                            _hd3636937005_)
                                                           (let ((_e3637137010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3636937005_)))
                     (let ((_tl3637337015_ (##cdr _e3637137010_))
                           (_hd3637237013_ (##car _e3637137010_)))
                       (if (gx#identifier? _hd3637237013_)
                           (if (gx#stx-eq? '%#quote _hd3637237013_)
                               (if (gx#stx-pair? _tl3637337015_)
                                   (let ((_e3637437018_
                                          (gx#stx-e _tl3637337015_)))
                                     (let ((_tl3637637023_
                                            (##cdr _e3637437018_))
                                           (_hd3637537021_
                                            (##car _e3637437018_)))
                                       (if (gx#stx-null? _tl3637637023_)
                                           (if (gx#stx-null? _tl3637037007_)
                                               (___kont4028740288_
                                                _hd3637537021_
                                                _hd3634237315_
                                                _hd3633937307_)
                                               (___kont4029740298_))
                                           (___kont4029740298_))))
                                   (___kont4029740298_))
                               (___kont4029740298_))
                           (___kont4029740298_))))
                   (___kont4029740298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4029740298_)))))
                                       (___kont4029740298_))
                                   (___kont4029740298_))))
                           (___kont4029740298_))
                       (if (gx#stx-eq? '%#lambda _hd3633637299_)
                           (if (gx#stx-pair? _tl3633737301_)
                               (let ((_e3648236540_ (gx#stx-e _tl3633737301_)))
                                 (let ((_tl3648436545_ (##cdr _e3648236540_))
                                       (_hd3648336543_ (##car _e3648236540_)))
                                   (if (gx#stx-pair? _hd3648336543_)
                                       (let ((_e3648536548_
                                              (gx#stx-e _hd3648336543_)))
                                         (let ((_tl3648736553_
                                                (##cdr _e3648536548_))
                                               (_hd3648636551_
                                                (##car _e3648536548_)))
                                           (if (gx#stx-null? _tl3648736553_)
                                               (if (gx#stx-pair?
                                                    _tl3648436545_)
                                                   (let ((_e3648836556_
                                                          (gx#stx-e
                                                           _tl3648436545_)))
                                                     (let ((_tl3649036561_
                                                            (##cdr _e3648836556_))
                                                           (_hd3648936559_
                                                            (##car _e3648836556_)))
                                                       (if (gx#stx-null?
                                                            _tl3649036561_)
                                                           (if (gx#stx-pair?
                                                                _tl3633437293_)
                                                               (let ((_e3649136564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3633437293_)))
                         (let ((_tl3649336569_ (##cdr _e3649136564_))
                               (_hd3649236567_ (##car _e3649136564_)))
                           (if (gx#stx-pair? _hd3649236567_)
                               (let ((_e3649436572_ (gx#stx-e _hd3649236567_)))
                                 (let ((_tl3649636577_ (##cdr _e3649436572_))
                                       (_hd3649536575_ (##car _e3649436572_)))
                                   (if (gx#identifier? _hd3649536575_)
                                       (if (gx#stx-eq? '%#ref _hd3649536575_)
                                           (if (gx#stx-pair? _tl3649636577_)
                                               (let ((_e3649736580_
                                                      (gx#stx-e
                                                       _tl3649636577_)))
                                                 (let ((_tl3649936585_
                                                        (##cdr _e3649736580_))
                                                       (_hd3649836583_
                                                        (##car _e3649736580_)))
                                                   (if (gx#stx-null?
                                                        _tl3649936585_)
                                                       (if (gx#stx-null?
                                                            _tl3649336569_)
                                                           (___kont4029540296_
                                                            _hd3649836583_
                                                            _hd3648936559_
                                                            _hd3648636551_)
                                                           (___kont4029740298_))
                                                       (___kont4029740298_))))
                                               (___kont4029740298_))
                                           (___kont4029740298_))
                                       (___kont4029740298_))))
                               (___kont4029740298_))))
                       (___kont4029740298_))
                   (___kont4029740298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4029740298_))
                                               (___kont4029740298_))))
                                       (___kont4029740298_))))
                               (___kont4029740298_))
                           (___kont4029740298_)))
                   (___kont4029740298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4029740298_))))
                                           (___kont4029740298_))
                                       (___kont4029740298_))
                                   (___kont4029740298_))))
                           (___kont4029740298_))))))
                (_countf-symbol32367_
                 (lambda (_id36307_)
                   (let ((_$e36309_ (gxc#identifier-symbol _id36307_)))
                     (if (let ((_$e36312_ (eq? '##vector-length _$e36309_)))
                           (if _$e36312_
                               _$e36312_
                               (eq? 'vector-length _$e36309_)))
                         'vector-length
                         (if (eq? 'values-count _$e36309_)
                             'values-count
                             '#f)))))
                (_eqf-symbol32368_
                 (lambda (_sym36293_)
                   (let ((_$e36295_ _sym36293_))
                     (if (let ((_$e36298_ (eq? '##eq? _$e36295_)))
                           (if _$e36298_ _$e36298_ (eq? 'eq? _$e36295_)))
                         'eq?
                         (if (let ((_$e36301_ (eq? '##eqv? _$e36295_)))
                               (if _$e36301_ _$e36301_ (eq? 'eqv? _$e36295_)))
                             'eqv?
                             (if (let ((_$e36304_ (eq? '##equal? _$e36295_)))
                                   (if _$e36304_
                                       _$e36304_
                                       (eq? 'equal? _$e36295_)))
                                 'equal?
                                 (if (eq? 'gx#free-identifier=? _$e36295_)
                                     'free-identifier=?
                                     (if (eq? 'gx#stx-eq? _$e36295_)
                                         'stx-eq?
                                         '#f))))))))
                (_eqf-symbol?32369_
                 (lambda (_sym36276_)
                   (let ((_$e36278_ _sym36276_))
                     (if (let ((_$e36281_ (eq? 'eq? _$e36278_)))
                           (if _$e36281_
                               _$e36281_
                               (let ((_$e36284_ (eq? 'eqv? _$e36278_)))
                                 (if _$e36284_
                                     _$e36284_
                                     (let ((_$e36287_ (eq? 'equal? _$e36278_)))
                                       (if _$e36287_
                                           _$e36287_
                                           (let ((_$e36290_
                                                  (eq? 'free-identifier=?
                                                       _$e36278_)))
                                             (if _$e36290_
                                                 _$e36290_
                                                 (eq? 'stx-eq?
                                                      _$e36278_)))))))))
                         '#t
                         '#f))))
                (_do-assert!32370_
                 (lambda (_assert36267_ _type36268_ _K36269_)
                   (let ((_unwind-assert36271_ _env-assert32360_)
                         (_unwind-type36272_ _env-type32361_))
                     (begin
                       (set! _env-assert32360_ _assert36267_)
                       (set! _env-type32361_ _type36268_)
                       (let ((_val36274_ (_K36269_)))
                         (begin
                           (set! _env-assert32360_ _unwind-assert36271_)
                           (set! _env-type32361_ _unwind-type36272_)
                           _val36274_))))))
                (_do-bind32371_
                 (lambda (_bind36264_ _K36265_)
                   (if (pair? _bind36264_)
                       (_do-bind!32373_
                        (_fold-bind-env32372_ _bind36264_ _env-bind32362_)
                        _K36265_)
                       (_K36265_))))
                (_fold-bind-env32372_
                 (lambda (_bind36193_ _env36194_)
                   (let _lp36196_ ((_rest36198_ _bind36193_)
                                   (_env36199_ _env36194_))
                     (let* ((_rest3620036208_ _rest36198_)
                            (_else3620236216_ (lambda () _env36199_))
                            (_K3620436252_
                             (lambda (_rest36219_ _bind36220_)
                               (let* ((_bind3622136228_ _bind36220_)
                                      (_E3622336232_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3622136228_)))
                                      (_K3622436240_
                                       (lambda (_expr36235_ _id36236_)
                                         (let ((_sexpr36238_
                                                (gxc#apply-generate-runtime-repr
                                                 _expr36235_)))
                                           (_lp36196_
                                            _rest36219_
                                            (cons (cons _sexpr36238_ _id36236_)
                                                  _env36199_))))))
                                 (if (##pair? _bind3622136228_)
                                     (let ((_hd3622536243_
                                            (##car _bind3622136228_))
                                           (_tl3622636245_
                                            (##cdr _bind3622136228_)))
                                       (let* ((_id36248_ _hd3622536243_)
                                              (_expr36250_ _tl3622636245_))
                                         (_K3622436240_
                                          _expr36250_
                                          _id36248_)))
                                     (_E3622336232_))))))
                       (if (##pair? _rest3620036208_)
                           (let ((_hd3620536255_ (##car _rest3620036208_))
                                 (_tl3620636257_ (##cdr _rest3620036208_)))
                             (let* ((_bind36260_ _hd3620536255_)
                                    (_rest36262_ _tl3620636257_))
                               (_K3620436252_ _rest36262_ _bind36260_)))
                           (_else3620236216_))))))
                (_do-bind!32373_
                 (lambda (_env36186_ _K36187_)
                   (let ((_unwind36189_ _env-bind32362_))
                     (begin
                       (set! _env-bind32362_ _env36186_)
                       (let ((_val36191_ (_K36187_)))
                         (begin
                           (set! _env-bind32362_ _unwind36189_)
                           _val36191_))))))
                (_do-splice!32374_
                 (lambda (_K36180_)
                   (let ((_unwind36182_ _in-splice?32363_))
                     (begin
                       (set! _in-splice?32363_ '#t)
                       (let ((_val36184_ (_K36180_)))
                         (begin
                           (set! _in-splice?32363_ _unwind36182_)
                           _val36184_))))))
                (_optimize-e32375_
                 (lambda (_expr35377_)
                   (let* ((___stx4073540736_ _expr35377_)
                          (_g3538435557_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4073540736_))))
                     (let ((___kont4073740738_
                            (lambda (_L36152_ _L36153_ _L36154_)
                              (let ((_$e36171_ (_assert-e32378_ _L36154_)))
                                (if (eq? '#t _$e36171_)
                                    (_optimize-e32375_ _L36153_)
                                    (if (eq? '#f _$e36171_)
                                        (_optimize-e32375_ _L36152_)
                                        (let ((_K36174_
                                               (_optimize-t__0__3969839699_
                                                _L36153_
                                                _L36154_))
                                              (_E36175_
                                               (_optimize-f__3970039701_
                                                _L36152_
                                                _L36154_)))
                                          (if (equal? (gxc#apply-generate-runtime-repr
                                                       _K36174_)
                                                      (gxc#apply-generate-runtime-repr
                                                       _E36175_))
                                              _K36174_
                                              (cons '%#if
                                                    (cons _L36154_
                                                          (cons _K36174_
                                                                (cons _E36175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (___kont4073940740_
                            (lambda (_L36082_ _L36083_)
                              (let ((_$e36103_ (_lookup-block32383_ _L36083_)))
                                (if _$e36103_
                                    ((lambda (_block36106_)
                                       (if (_nonlinear-block?32385_
                                            _block36106_)
                                           _expr35377_
                                           (_optimize-e32375_
                                            (_inline-block32384_
                                             _block36106_
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g3610736110_
                                                                _g3610836112_)
                                                         (cons _g3610736110_
                                                               _g3610836112_))
                                                       '()
                                                       _L36082_))))))
                                     _$e36103_)
                                    _expr35377_))))
                           (___kont4074340744_
                            (lambda (_L35972_ _L35973_ _L35974_)
                              (let ((_body35993_ (_optimize-e32375_ _L35972_)))
                                (cons '%#let-values
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _L35973_
                                               _L35974_)
                                              (foldr2 (lambda (_g3599435998_
                                                               _g3599536000_
                                                               _g3599636002_)
                                                        (cons (cons (cons _g3599536000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                        (cons _g3599435998_ '()))
                                  '()))
                      _g3599636002_))
              '()
              _L35973_
              _L35974_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _body35993_ '()))))))
                           (___kont4074740748_
                            (lambda (_L35840_ _L35841_ _L35842_)
                              (_bind-e__0__3970639707_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3586035863_
                                                       _g3586135865_)
                                                (cons _g3586035863_
                                                      _g3586135865_))
                                              '()
                                              _L35842_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3586735870_
                                                       _g3586835872_)
                                                (cons _g3586735870_
                                                      _g3586835872_))
                                              '()
                                              _L35841_)))
                               _L35840_)))
                           (___kont4075140752_
                            (lambda (_L35697_
                                     _L35698_
                                     _L35699_
                                     _L35700_
                                     _L35701_)
                              (_do-splice!32374_
                               (lambda ()
                                 (let ((_expr35743_
                                        (_optimize-e32375_ _L35699_)))
                                   (cons '%#letrec-values
                                         (cons (cons (cons (cons _L35701_ '())
                                                           (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3574435747_
                                                        _g3574535749_)
                                                 (cons _g3574435747_
                                                       _g3574535749_))
                                               '()
                                               _L35700_))
                                     (cons _expr35743_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g3575135754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3575235756_)
                         (cons _g3575135754_ _g3575235756_))
                       '()
                       _L35698_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L35697_ '()))))))))
                           (___kont4075740758_ (lambda () _expr35377_)))
                       (let* ((___match4094440945_
                               (lambda (_e3550535569_
                                        _hd3550635572_
                                        _tl3550735574_
                                        _e3550835577_
                                        _hd3550935580_
                                        _tl3551035582_
                                        _e3551135585_
                                        _hd3551235588_
                                        _tl3551335590_
                                        _e3551435593_
                                        _hd3551535596_
                                        _tl3551635598_
                                        _e3551735601_
                                        _hd3551835604_
                                        _tl3551935606_
                                        _e3552035609_
                                        _hd3552135612_
                                        _tl3552235614_
                                        _e3552335617_
                                        _hd3552435620_
                                        _tl3552535622_
                                        _e3552635625_
                                        _hd3552735628_
                                        _tl3552835630_
                                        ___splice4075340754_
                                        _target3552935633_
                                        _tl3553135635_)
                                 (letrec ((_loop3553235638_
                                           (lambda (_hd3553035641_
                                                    _id3553635643_)
                                             (if (gx#stx-pair? _hd3553035641_)
                                                 (let ((_e3553335646_
                                                        (gx#stx-e
                                                         _hd3553035641_)))
                                                   (let ((_lp-tl3553535651_
                                                          (##cdr _e3553335646_))
                                                         (_lp-hd3553435649_
                                                          (##car _e3553335646_)))
                                                     (_loop3553235638_
                                                      _lp-tl3553535651_
                                                      (cons _lp-hd3553435649_
                                                            _id3553635643_))))
                                                 (let ((_id3553735654_
                                                        (reverse _id3553635643_)))
                                                   (if (gx#stx-pair?
                                                        _tl3552835630_)
                                                       (let ((_e3553835657_
                                                              (gx#stx-e
                                                               _tl3552835630_)))
                                                         (let ((_tl3554035662_
                                                                (##cdr _e3553835657_))
                                                               (_hd3553935660_
                                                                (##car _e3553835657_)))
                                                           (if (gx#stx-null?
                                                                _tl3554035662_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3552235614_)
                           (if (gx#stx-pair/null? _tl3551335590_)
                               (let ((___splice4075540756_
                                      (gx#syntax-split-splice
                                       _tl3551335590_
                                       '0)))
                                 (let ((_tl3554335667_
                                        (##vector-ref ___splice4075540756_ '1))
                                       (_target3554135665_
                                        (##vector-ref
                                         ___splice4075540756_
                                         '0)))
                                   (if (gx#stx-null? _tl3554335667_)
                                       (letrec ((_loop3554435670_
                                                 (lambda (_hd3554235673_
                                                          _bind3554835675_)
                                                   (if (gx#stx-pair?
                                                        _hd3554235673_)
                                                       (let ((_e3554535678_
                                                              (gx#stx-e
                                                               _hd3554235673_)))
                                                         (let ((_lp-tl3554735683_
                                                                (##cdr _e3554535678_))
                                                               (_lp-hd3554635681_
                                                                (##car _e3554535678_)))
                                                           (_loop3554435670_
                                                            _lp-tl3554735683_
                                                            (cons _lp-hd3554635681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind3554835675_))))
               (let ((_bind3554935686_ (reverse _bind3554835675_)))
                 (if (gx#stx-pair? _tl3551035582_)
                     (let ((_e3555035689_ (gx#stx-e _tl3551035582_)))
                       (let ((_tl3555235694_ (##cdr _e3555035689_))
                             (_hd3555135692_ (##car _e3555035689_)))
                         (if (gx#stx-null? _tl3555235694_)
                             (___kont4075140752_
                              _hd3555135692_
                              _bind3554935686_
                              _hd3553935660_
                              _id3553735654_
                              _hd3551835604_)
                             (___kont4075740758_))))
                     (___kont4075740758_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3554435670_
                                          _target3554135665_
                                          '()))
                                       (___kont4075740758_))))
                               (___kont4075740758_))
                           (___kont4075740758_))
                       (___kont4075740758_))))
               (___kont4075740758_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop3553235638_ _target3552935633_ '()))))
                              (___match4087840879_
                               (lambda (_e3547135764_
                                        _hd3547235767_
                                        _tl3547335769_
                                        _e3547435772_
                                        _hd3547535775_
                                        _tl3547635777_
                                        ___splice4074940750_
                                        _target3547735780_
                                        _tl3547935782_)
                                 (letrec ((_loop3548035785_
                                           (lambda (_hd3547835788_
                                                    _expr3548435790_
                                                    _id3548535792_)
                                             (if (gx#stx-pair? _hd3547835788_)
                                                 (let ((_e3548135795_
                                                        (gx#stx-e
                                                         _hd3547835788_)))
                                                   (let ((_lp-tl3548335800_
                                                          (##cdr _e3548135795_))
                                                         (_lp-hd3548235798_
                                                          (##car _e3548135795_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3548235798_)
                                                         (let ((_e3548835803_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3548235798_)))
                   (let ((_tl3549035808_ (##cdr _e3548835803_))
                         (_hd3548935806_ (##car _e3548835803_)))
                     (if (gx#stx-pair? _hd3548935806_)
                         (let ((_e3549135811_ (gx#stx-e _hd3548935806_)))
                           (let ((_tl3549335816_ (##cdr _e3549135811_))
                                 (_hd3549235814_ (##car _e3549135811_)))
                             (if (gx#stx-null? _tl3549335816_)
                                 (if (gx#stx-pair? _tl3549035808_)
                                     (let ((_e3549435819_
                                            (gx#stx-e _tl3549035808_)))
                                       (let ((_tl3549635824_
                                              (##cdr _e3549435819_))
                                             (_hd3549535822_
                                              (##car _e3549435819_)))
                                         (if (gx#stx-null? _tl3549635824_)
                                             (_loop3548035785_
                                              _lp-tl3548335800_
                                              (cons _hd3549535822_
                                                    _expr3548435790_)
                                              (cons _hd3549235814_
                                                    _id3548535792_))
                                             (___kont4075740758_))))
                                     (___kont4075740758_))
                                 (___kont4075740758_))))
                         (___kont4075740758_))))
                 (___kont4075740758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3548735829_
                                                        (reverse _id3548535792_))
                                                       (_expr3548635827_
                                                        (reverse _expr3548435790_)))
                                                   (if (gx#stx-pair?
                                                        _tl3547635777_)
                                                       (let ((_e3549735832_
                                                              (gx#stx-e
                                                               _tl3547635777_)))
                                                         (let ((_tl3549935837_
                                                                (##cdr _e3549735832_))
                                                               (_hd3549835835_
                                                                (##car _e3549735832_)))
                                                           (if (gx#stx-null?
                                                                _tl3549935837_)
                                                               (___kont4074740748_
                                                                _hd3549835835_
                                                                _expr3548635827_
                                                                _id3548735829_)
                                                               (___kont4075740758_))))
                                                       (___kont4075740758_)))))))
                                   (_loop3548035785_
                                    _target3547735780_
                                    '()
                                    '()))))
                              (___match4085440855_
                               (lambda (_e3543335880_
                                        _hd3543435883_
                                        _tl3543535885_
                                        _e3543635888_
                                        _hd3543735891_
                                        _tl3543835893_
                                        ___splice4074540746_
                                        _target3543935896_
                                        _tl3544135898_)
                                 (letrec ((_loop3544235901_
                                           (lambda (_hd3544035904_
                                                    _xid3544635906_
                                                    _id3544735908_)
                                             (if (gx#stx-pair? _hd3544035904_)
                                                 (let ((_e3544335911_
                                                        (gx#stx-e
                                                         _hd3544035904_)))
                                                   (let ((_lp-tl3544535916_
                                                          (##cdr _e3544335911_))
                                                         (_lp-hd3544435914_
                                                          (##car _e3544335911_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3544435914_)
                                                         (let ((_e3545035919_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3544435914_)))
                   (let ((_tl3545235924_ (##cdr _e3545035919_))
                         (_hd3545135922_ (##car _e3545035919_)))
                     (if (gx#stx-pair? _hd3545135922_)
                         (let ((_e3545335927_ (gx#stx-e _hd3545135922_)))
                           (let ((_tl3545535932_ (##cdr _e3545335927_))
                                 (_hd3545435930_ (##car _e3545335927_)))
                             (if (gx#stx-null? _tl3545535932_)
                                 (if (gx#stx-pair? _tl3545235924_)
                                     (let ((_e3545635935_
                                            (gx#stx-e _tl3545235924_)))
                                       (let ((_tl3545835940_
                                              (##cdr _e3545635935_))
                                             (_hd3545735938_
                                              (##car _e3545635935_)))
                                         (if (gx#stx-pair? _hd3545735938_)
                                             (let ((_e3545935943_
                                                    (gx#stx-e _hd3545735938_)))
                                               (let ((_tl3546135948_
                                                      (##cdr _e3545935943_))
                                                     (_hd3546035946_
                                                      (##car _e3545935943_)))
                                                 (if (gx#identifier?
                                                      _hd3546035946_)
                                                     (if (gx#stx-eq?
                                                          '%#ref
                                                          _hd3546035946_)
                                                         (if (gx#stx-pair?
                                                              _tl3546135948_)
                                                             (let ((_e3546235951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3546135948_)))
                       (let ((_tl3546435956_ (##cdr _e3546235951_))
                             (_hd3546335954_ (##car _e3546235951_)))
                         (if (gx#stx-null? _tl3546435956_)
                             (if (gx#stx-null? _tl3545835940_)
                                 (_loop3544235901_
                                  _lp-tl3544535916_
                                  (cons _hd3546335954_ _xid3544635906_)
                                  (cons _hd3545435930_ _id3544735908_))
                                 (___match4087840879_
                                  _e3543335880_
                                  _hd3543435883_
                                  _tl3543535885_
                                  _e3543635888_
                                  _hd3543735891_
                                  _tl3543835893_
                                  ___splice4074540746_
                                  _target3543935896_
                                  _tl3544135898_))
                             (___match4087840879_
                              _e3543335880_
                              _hd3543435883_
                              _tl3543535885_
                              _e3543635888_
                              _hd3543735891_
                              _tl3543835893_
                              ___splice4074540746_
                              _target3543935896_
                              _tl3544135898_))))
                     (___match4087840879_
                      _e3543335880_
                      _hd3543435883_
                      _tl3543535885_
                      _e3543635888_
                      _hd3543735891_
                      _tl3543835893_
                      ___splice4074540746_
                      _target3543935896_
                      _tl3544135898_))
                 (___match4087840879_
                  _e3543335880_
                  _hd3543435883_
                  _tl3543535885_
                  _e3543635888_
                  _hd3543735891_
                  _tl3543835893_
                  ___splice4074540746_
                  _target3543935896_
                  _tl3544135898_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___match4087840879_
                                                      _e3543335880_
                                                      _hd3543435883_
                                                      _tl3543535885_
                                                      _e3543635888_
                                                      _hd3543735891_
                                                      _tl3543835893_
                                                      ___splice4074540746_
                                                      _target3543935896_
                                                      _tl3544135898_))))
                                             (___match4087840879_
                                              _e3543335880_
                                              _hd3543435883_
                                              _tl3543535885_
                                              _e3543635888_
                                              _hd3543735891_
                                              _tl3543835893_
                                              ___splice4074540746_
                                              _target3543935896_
                                              _tl3544135898_))))
                                     (___match4087840879_
                                      _e3543335880_
                                      _hd3543435883_
                                      _tl3543535885_
                                      _e3543635888_
                                      _hd3543735891_
                                      _tl3543835893_
                                      ___splice4074540746_
                                      _target3543935896_
                                      _tl3544135898_))
                                 (___match4087840879_
                                  _e3543335880_
                                  _hd3543435883_
                                  _tl3543535885_
                                  _e3543635888_
                                  _hd3543735891_
                                  _tl3543835893_
                                  ___splice4074540746_
                                  _target3543935896_
                                  _tl3544135898_))))
                         (___match4087840879_
                          _e3543335880_
                          _hd3543435883_
                          _tl3543535885_
                          _e3543635888_
                          _hd3543735891_
                          _tl3543835893_
                          ___splice4074540746_
                          _target3543935896_
                          _tl3544135898_))))
                 (___match4087840879_
                  _e3543335880_
                  _hd3543435883_
                  _tl3543535885_
                  _e3543635888_
                  _hd3543735891_
                  _tl3543835893_
                  ___splice4074540746_
                  _target3543935896_
                  _tl3544135898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3544935961_
                                                        (reverse _id3544735908_))
                                                       (_xid3544835959_
                                                        (reverse _xid3544635906_)))
                                                   (if (gx#stx-pair?
                                                        _tl3543835893_)
                                                       (let ((_e3546535964_
                                                              (gx#stx-e
                                                               _tl3543835893_)))
                                                         (let ((_tl3546735969_
                                                                (##cdr _e3546535964_))
                                                               (_hd3546635967_
                                                                (##car _e3546535964_)))
                                                           (if (gx#stx-null?
                                                                _tl3546735969_)
                                                               (___kont4074340744_
                                                                _hd3546635967_
                                                                _xid3544835959_
                                                                _id3544935961_)
                                                               (___match4087840879_
                                                                _e3543335880_
                                                                _hd3543435883_
                                                                _tl3543535885_
                                                                _e3543635888_
                                                                _hd3543735891_
                                                                _tl3543835893_
                                                                ___splice4074540746_
                                                                _target3543935896_
                                                                _tl3544135898_))))
                                                       (___match4087840879_
                                                        _e3543335880_
                                                        _hd3543435883_
                                                        _tl3543535885_
                                                        _e3543635888_
                                                        _hd3543735891_
                                                        _tl3543835893_
                                                        ___splice4074540746_
                                                        _target3543935896_
                                                        _tl3544135898_)))))))
                                   (_loop3544235901_
                                    _target3543935896_
                                    '()
                                    '()))))
                              (___match4083040831_
                               (lambda (_e3540336010_
                                        _hd3540436013_
                                        _tl3540536015_
                                        _e3540636018_
                                        _hd3540736021_
                                        _tl3540836023_
                                        _e3540936026_
                                        _hd3541036029_
                                        _tl3541136031_
                                        _e3541236034_
                                        _hd3541336037_
                                        _tl3541436039_
                                        ___splice4074140742_
                                        _target3541536042_
                                        _tl3541736044_)
                                 (letrec ((_loop3541836047_
                                           (lambda (_hd3541636050_
                                                    _id3542236052_)
                                             (if (gx#stx-pair? _hd3541636050_)
                                                 (let ((_e3541936055_
                                                        (gx#stx-e
                                                         _hd3541636050_)))
                                                   (let ((_lp-tl3542136060_
                                                          (##cdr _e3541936055_))
                                                         (_lp-hd3542036058_
                                                          (##car _e3541936055_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3542036058_)
                                                         (let ((_e3542436063_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3542036058_)))
                   (let ((_tl3542636068_ (##cdr _e3542436063_))
                         (_hd3542536066_ (##car _e3542436063_)))
                     (if (gx#identifier? _hd3542536066_)
                         (if (gx#stx-eq? '%#ref _hd3542536066_)
                             (if (gx#stx-pair? _tl3542636068_)
                                 (let ((_e3542736071_
                                        (gx#stx-e _tl3542636068_)))
                                   (let ((_tl3542936076_ (##cdr _e3542736071_))
                                         (_hd3542836074_
                                          (##car _e3542736071_)))
                                     (if (gx#stx-null? _tl3542936076_)
                                         (_loop3541836047_
                                          _lp-tl3542136060_
                                          (cons _hd3542836074_ _id3542236052_))
                                         (___kont4075740758_))))
                                 (___kont4075740758_))
                             (___kont4075740758_))
                         (___kont4075740758_))))
                 (___kont4075740758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3542336079_
                                                        (reverse _id3542236052_)))
                                                   (___kont4073940740_
                                                    _id3542336079_
                                                    _hd3541336037_))))))
                                   (_loop3541836047_
                                    _target3541536042_
                                    '())))))
                         (if (gx#stx-pair? ___stx4073540736_)
                             (let ((_e3538936120_
                                    (gx#stx-e ___stx4073540736_)))
                               (let ((_tl3539136125_ (##cdr _e3538936120_))
                                     (_hd3539036123_ (##car _e3538936120_)))
                                 (if (gx#identifier? _hd3539036123_)
                                     (if (gx#stx-eq? '%#if _hd3539036123_)
                                         (if (gx#stx-pair? _tl3539136125_)
                                             (let ((_e3539236128_
                                                    (gx#stx-e _tl3539136125_)))
                                               (let ((_tl3539436133_
                                                      (##cdr _e3539236128_))
                                                     (_hd3539336131_
                                                      (##car _e3539236128_)))
                                                 (if (gx#stx-pair?
                                                      _tl3539436133_)
                                                     (let ((_e3539536136_
                                                            (gx#stx-e
                                                             _tl3539436133_)))
                                                       (let ((_tl3539736141_
                                                              (##cdr _e3539536136_))
                                                             (_hd3539636139_
                                                              (##car _e3539536136_)))
                                                         (if (gx#stx-pair?
                                                              _tl3539736141_)
                                                             (let ((_e3539836144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3539736141_)))
                       (let ((_tl3540036149_ (##cdr _e3539836144_))
                             (_hd3539936147_ (##car _e3539836144_)))
                         (if (gx#stx-null? _tl3540036149_)
                             (___kont4073740738_
                              _hd3539936147_
                              _hd3539636139_
                              _hd3539336131_)
                             (___kont4075740758_))))
                     (___kont4075740758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4075740758_))))
                                             (___kont4075740758_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3539036123_)
                                             (if (gx#stx-pair? _tl3539136125_)
                                                 (let ((_e3540636018_
                                                        (gx#stx-e
                                                         _tl3539136125_)))
                                                   (let ((_tl3540836023_
                                                          (##cdr _e3540636018_))
                                                         (_hd3540736021_
                                                          (##car _e3540636018_)))
                                                     (if (gx#stx-pair?
                                                          _hd3540736021_)
                                                         (let ((_e3540936026_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3540736021_)))
                   (let ((_tl3541136031_ (##cdr _e3540936026_))
                         (_hd3541036029_ (##car _e3540936026_)))
                     (if (gx#identifier? _hd3541036029_)
                         (if (gx#stx-eq? '%#ref _hd3541036029_)
                             (if (gx#stx-pair? _tl3541136031_)
                                 (let ((_e3541236034_
                                        (gx#stx-e _tl3541136031_)))
                                   (let ((_tl3541436039_ (##cdr _e3541236034_))
                                         (_hd3541336037_
                                          (##car _e3541236034_)))
                                     (if (gx#stx-null? _tl3541436039_)
                                         (if (gx#stx-pair/null? _tl3540836023_)
                                             (let ((___splice4074140742_
                                                    (gx#syntax-split-splice
                                                     _tl3540836023_
                                                     '0)))
                                               (let ((_tl3541736044_
                                                      (##vector-ref
                                                       ___splice4074140742_
                                                       '1))
                                                     (_target3541536042_
                                                      (##vector-ref
                                                       ___splice4074140742_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3541736044_)
                                                     (___match4083040831_
                                                      _e3538936120_
                                                      _hd3539036123_
                                                      _tl3539136125_
                                                      _e3540636018_
                                                      _hd3540736021_
                                                      _tl3540836023_
                                                      _e3540936026_
                                                      _hd3541036029_
                                                      _tl3541136031_
                                                      _e3541236034_
                                                      _hd3541336037_
                                                      _tl3541436039_
                                                      ___splice4074140742_
                                                      _target3541536042_
                                                      _tl3541736044_)
                                                     (___kont4075740758_))))
                                             (___kont4075740758_))
                                         (___kont4075740758_))))
                                 (___kont4075740758_))
                             (___kont4075740758_))
                         (___kont4075740758_))))
                 (___kont4075740758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4075740758_))
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _hd3539036123_)
                                                 (if (gx#stx-pair?
                                                      _tl3539136125_)
                                                     (let ((_e3543635888_
                                                            (gx#stx-e
                                                             _tl3539136125_)))
                                                       (let ((_tl3543835893_
                                                              (##cdr _e3543635888_))
                                                             (_hd3543735891_
                                                              (##car _e3543635888_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd3543735891_)
                                                             (let ((___splice4074540746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd3543735891_ '0)))
                       (let ((_tl3544135898_
                              (##vector-ref ___splice4074540746_ '1))
                             (_target3543935896_
                              (##vector-ref ___splice4074540746_ '0)))
                         (if (gx#stx-null? _tl3544135898_)
                             (___match4085440855_
                              _e3538936120_
                              _hd3539036123_
                              _tl3539136125_
                              _e3543635888_
                              _hd3543735891_
                              _tl3543835893_
                              ___splice4074540746_
                              _target3543935896_
                              _tl3544135898_)
                             (___kont4075740758_))))
                     (___kont4075740758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4075740758_))
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3539036123_)
                                                     (if (gx#stx-pair?
                                                          _tl3539136125_)
                                                         (let ((_e3550835577_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3539136125_)))
                   (let ((_tl3551035582_ (##cdr _e3550835577_))
                         (_hd3550935580_ (##car _e3550835577_)))
                     (if (gx#stx-pair? _hd3550935580_)
                         (let ((_e3551135585_ (gx#stx-e _hd3550935580_)))
                           (let ((_tl3551335590_ (##cdr _e3551135585_))
                                 (_hd3551235588_ (##car _e3551135585_)))
                             (if (gx#stx-pair? _hd3551235588_)
                                 (let ((_e3551435593_
                                        (gx#stx-e _hd3551235588_)))
                                   (let ((_tl3551635598_ (##cdr _e3551435593_))
                                         (_hd3551535596_
                                          (##car _e3551435593_)))
                                     (if (gx#stx-pair? _hd3551535596_)
                                         (let ((_e3551735601_
                                                (gx#stx-e _hd3551535596_)))
                                           (let ((_tl3551935606_
                                                  (##cdr _e3551735601_))
                                                 (_hd3551835604_
                                                  (##car _e3551735601_)))
                                             (if (gx#stx-null? _tl3551935606_)
                                                 (if (gx#stx-pair?
                                                      _tl3551635598_)
                                                     (let ((_e3552035609_
                                                            (gx#stx-e
                                                             _tl3551635598_)))
                                                       (let ((_tl3552235614_
                                                              (##cdr _e3552035609_))
                                                             (_hd3552135612_
                                                              (##car _e3552035609_)))
                                                         (if (gx#stx-pair?
                                                              _hd3552135612_)
                                                             (let ((_e3552335617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3552135612_)))
                       (let ((_tl3552535622_ (##cdr _e3552335617_))
                             (_hd3552435620_ (##car _e3552335617_)))
                         (if (gx#identifier? _hd3552435620_)
                             (if (gx#stx-eq? '%#lambda _hd3552435620_)
                                 (if (gx#stx-pair? _tl3552535622_)
                                     (let ((_e3552635625_
                                            (gx#stx-e _tl3552535622_)))
                                       (let ((_tl3552835630_
                                              (##cdr _e3552635625_))
                                             (_hd3552735628_
                                              (##car _e3552635625_)))
                                         (if (gx#stx-pair/null? _hd3552735628_)
                                             (let ((___splice4075340754_
                                                    (gx#syntax-split-splice
                                                     _hd3552735628_
                                                     '0)))
                                               (let ((_tl3553135635_
                                                      (##vector-ref
                                                       ___splice4075340754_
                                                       '1))
                                                     (_target3552935633_
                                                      (##vector-ref
                                                       ___splice4075340754_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3553135635_)
                                                     (___match4094440945_
                                                      _e3538936120_
                                                      _hd3539036123_
                                                      _tl3539136125_
                                                      _e3550835577_
                                                      _hd3550935580_
                                                      _tl3551035582_
                                                      _e3551135585_
                                                      _hd3551235588_
                                                      _tl3551335590_
                                                      _e3551435593_
                                                      _hd3551535596_
                                                      _tl3551635598_
                                                      _e3551735601_
                                                      _hd3551835604_
                                                      _tl3551935606_
                                                      _e3552035609_
                                                      _hd3552135612_
                                                      _tl3552235614_
                                                      _e3552335617_
                                                      _hd3552435620_
                                                      _tl3552535622_
                                                      _e3552635625_
                                                      _hd3552735628_
                                                      _tl3552835630_
                                                      ___splice4075340754_
                                                      _target3552935633_
                                                      _tl3553135635_)
                                                     (___kont4075740758_))))
                                             (___kont4075740758_))))
                                     (___kont4075740758_))
                                 (___kont4075740758_))
                             (___kont4075740758_))))
                     (___kont4075740758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4075740758_))
                                                 (___kont4075740758_))))
                                         (___kont4075740758_))))
                                 (___kont4075740758_))))
                         (___kont4075740758_))))
                 (___kont4075740758_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4075740758_)))))
                                     (___kont4075740758_))))
                             (___kont4075740758_)))))))
                (_optimize-t__3969639697_
                 (lambda (_expr35360_ _test35361_ _continue35362_)
                   (_do-assert32364_
                    (cons (cons _test35361_ '#t) '())
                    (lambda () (_continue35362_ _expr35360_)))))
                (_optimize-t__0__3969839699_
                 (lambda (_expr35368_ _test35369_)
                   (let ((_continue35371_ _optimize-e32375_))
                     (_optimize-t__3969639697_
                      _expr35368_
                      _test35369_
                      _continue35371_))))
                (_optimize-t32376_
                 (lambda _g42799_
                   (let ((_g42798_ (length _g42799_)))
                     (cond ((##fx= _g42798_ 2)
                            (apply _optimize-t__0__3969839699_ _g42799_))
                           ((##fx= _g42798_ 3)
                            (apply _optimize-t__3969639697_ _g42799_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42799_))))))
                (_optimize-f__3970039701_
                 (lambda (_expr34445_ _test34446_)
                   (_do-assert32364_
                    (if _test34446_ (cons (cons _test34446_ '#f) '()) '())
                    (lambda ()
                      (let* ((___stx4098540986_ _expr34445_)
                             (_g3445434627_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4098540986_))))
                        (let ((___kont4098740988_
                               (lambda (_L35215_ _L35216_)
                                 (let ((_$e35236_
                                        (_lookup-block32383_ _L35216_)))
                                   (if _$e35236_
                                       ((lambda (_block35239_)
                                          (if (_nonlinear-block?32385_
                                               _block35239_)
                                              _expr34445_
                                              (let* ((_inline35248_
                                                      (_inline-block32384_
                                                       _block35239_
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g3524035243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3524135245_)
                           (cons _g3524035243_ _g3524135245_))
                         '()
                         _L35215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___stx4094740948_
                                                      _inline35248_)
                                                     (_g3525135272_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4094740948_))))
                                                (let ((___kont4094940950_
                                                       (lambda (_L35316_
                                                                _L35317_
                                                                _L35318_)
                                                         (let ((_$e35340_
                                                                (_assert-e32378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L35318_)))
                   (if (eq? '#t _$e35340_)
                       (if _in-splice?32363_
                           (_optimize-f__0__3970239703_ _L35317_)
                           (_optimize-e32375_ _L35317_))
                       (if (eq? '#f _$e35340_)
                           (_optimize-f__0__3970239703_ _L35316_)
                           _expr34445_)))))
              (___kont4095140952_
               (lambda () (_optimize-f__0__3970239703_ _inline35248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4094740948_)
                                                      (let ((_e3525635284_
                                                             (gx#stx-e
                                                              ___stx4094740948_)))
                                                        (let ((_tl3525835289_
                                                               (##cdr _e3525635284_))
                                                              (_hd3525735287_
                                                               (##car _e3525635284_)))
                                                          (if (gx#identifier?
                                                               _hd3525735287_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#if
                           _hd3525735287_)
                          (if (gx#stx-pair? _tl3525835289_)
                              (let ((_e3525935292_ (gx#stx-e _tl3525835289_)))
                                (let ((_tl3526135297_ (##cdr _e3525935292_))
                                      (_hd3526035295_ (##car _e3525935292_)))
                                  (if (gx#stx-pair? _tl3526135297_)
                                      (let ((_e3526235300_
                                             (gx#stx-e _tl3526135297_)))
                                        (let ((_tl3526435305_
                                               (##cdr _e3526235300_))
                                              (_hd3526335303_
                                               (##car _e3526235300_)))
                                          (if (gx#stx-pair? _tl3526435305_)
                                              (let ((_e3526535308_
                                                     (gx#stx-e
                                                      _tl3526435305_)))
                                                (let ((_tl3526735313_
                                                       (##cdr _e3526535308_))
                                                      (_hd3526635311_
                                                       (##car _e3526535308_)))
                                                  (if (gx#stx-null?
                                                       _tl3526735313_)
                                                      (___kont4094940950_
                                                       _hd3526635311_
                                                       _hd3526335303_
                                                       _hd3526035295_)
                                                      (___kont4095140952_))))
                                              (___kont4095140952_))))
                                      (___kont4095140952_))))
                              (___kont4095140952_))
                          (___kont4095140952_))
                      (___kont4095140952_))))
              (___kont4095140952_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e35236_)
                                       _expr34445_))))
                              (___kont4099140992_
                               (lambda (_L35113_ _L35114_ _L35115_)
                                 (let ((_$e35132_ (_assert-e32378_ _L35115_)))
                                   (if (eq? '#t _$e35132_)
                                       (if _in-splice?32363_
                                           (_optimize-f__0__3970239703_
                                            _L35114_)
                                           (_optimize-e32375_ _L35114_))
                                       (if (eq? '#f _$e35132_)
                                           (_optimize-f__0__3970239703_
                                            _L35113_)
                                           (let ((_K35135_
                                                  (_optimize-t__3969639697_
                                                   _L35114_
                                                   _L35115_
                                                   _optimize-f32377_))
                                                 (_E35136_
                                                  (_optimize-f__3970039701_
                                                   _L35113_
                                                   _L35115_)))
                                             (if (equal? (gxc#apply-generate-runtime-repr
                                                          _K35135_)
                                                         (gxc#apply-generate-runtime-repr
                                                          _E35136_))
                                                 _K35135_
                                                 (cons '%#if
                                                       (cons _L35115_
                                                             (cons _K35135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _E35136_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (___kont4099340994_
                               (lambda (_L35043_ _L35044_ _L35045_)
                                 (let ((_body35064_
                                        (_optimize-f__0__3970239703_
                                         _L35043_)))
                                   (cons '%#let-values
                                         (cons (begin
                                                 (gx#syntax-check-splice-targets
                                                  _L35044_
                                                  _L35045_)
                                                 (foldr2 (lambda (_g3506535069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3506635071_
                          _g3506735073_)
                   (cons (cons (cons _g3506635071_ '())
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g3506535069_ '()))
                                     '()))
                         _g3506735073_))
                 '()
                 _L35044_
                 _L35045_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _body35064_ '()))))))
                              (___kont4099740998_
                               (lambda (_L34911_ _L34912_ _L34913_)
                                 (_bind-e__3970439705_
                                  (map cons
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3493134934_
                                                          _g3493234936_)
                                                   (cons _g3493134934_
                                                         _g3493234936_))
                                                 '()
                                                 _L34913_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3493834941_
                                                          _g3493934943_)
                                                   (cons _g3493834941_
                                                         _g3493934943_))
                                                 '()
                                                 _L34912_)))
                                  _L34911_
                                  _optimize-f32377_)))
                              (___kont4100141002_
                               (lambda (_L34767_
                                        _L34768_
                                        _L34769_
                                        _L34770_
                                        _L34771_)
                                 (_do-splice!32374_
                                  (lambda ()
                                    (let ((_expr34814_
                                           (_optimize-f__0__3970239703_
                                            _L34769_)))
                                      (cons '%#letrec-values
                                            (cons (cons (cons (cons _L34771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#lambda
                                  (cons (begin
                                          '#!void
                                          (foldr1 (lambda (_g3481534818_
                                                           _g3481634820_)
                                                    (cons _g3481534818_
                                                          _g3481634820_))
                                                  '()
                                                  _L34770_))
                                        (cons _expr34814_ '())))
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3482234825_ _g3482334827_)
                            (cons _g3482234825_ _g3482334827_))
                          '()
                          _L34768_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L34767_ '()))))))))
                              (___kont4100741008_ (lambda () _expr34445_)))
                          (let* ((___match4119441195_
                                  (lambda (_e3457534639_
                                           _hd3457634642_
                                           _tl3457734644_
                                           _e3457834647_
                                           _hd3457934650_
                                           _tl3458034652_
                                           _e3458134655_
                                           _hd3458234658_
                                           _tl3458334660_
                                           _e3458434663_
                                           _hd3458534666_
                                           _tl3458634668_
                                           _e3458734671_
                                           _hd3458834674_
                                           _tl3458934676_
                                           _e3459034679_
                                           _hd3459134682_
                                           _tl3459234684_
                                           _e3459334687_
                                           _hd3459434690_
                                           _tl3459534692_
                                           _e3459634695_
                                           _hd3459734698_
                                           _tl3459834700_
                                           ___splice4100341004_
                                           _target3459934703_
                                           _tl3460134705_)
                                    (letrec ((_loop3460234708_
                                              (lambda (_hd3460034711_
                                                       _id3460634713_)
                                                (if (gx#stx-pair?
                                                     _hd3460034711_)
                                                    (let ((_e3460334716_
                                                           (gx#stx-e
                                                            _hd3460034711_)))
                                                      (let ((_lp-tl3460534721_
                                                             (##cdr _e3460334716_))
                                                            (_lp-hd3460434719_
                                                             (##car _e3460334716_)))
                                                        (_loop3460234708_
                                                         _lp-tl3460534721_
                                                         (cons _lp-hd3460434719_
                                                               _id3460634713_))))
                                                    (let ((_id3460734724_
                                                           (reverse _id3460634713_)))
                                                      (if (gx#stx-pair?
                                                           _tl3459834700_)
                                                          (let ((_e3460834727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3459834700_)))
                    (let ((_tl3461034732_ (##cdr _e3460834727_))
                          (_hd3460934730_ (##car _e3460834727_)))
                      (if (gx#stx-null? _tl3461034732_)
                          (if (gx#stx-null? _tl3459234684_)
                              (if (gx#stx-pair/null? _tl3458334660_)
                                  (let ((___splice4100541006_
                                         (gx#syntax-split-splice
                                          _tl3458334660_
                                          '0)))
                                    (let ((_tl3461334737_
                                           (##vector-ref
                                            ___splice4100541006_
                                            '1))
                                          (_target3461134735_
                                           (##vector-ref
                                            ___splice4100541006_
                                            '0)))
                                      (if (gx#stx-null? _tl3461334737_)
                                          (letrec ((_loop3461434740_
                                                    (lambda (_hd3461234743_
                                                             _bind3461834745_)
                                                      (if (gx#stx-pair?
                                                           _hd3461234743_)
                                                          (let ((_e3461534748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3461234743_)))
                    (let ((_lp-tl3461734753_ (##cdr _e3461534748_))
                          (_lp-hd3461634751_ (##car _e3461534748_)))
                      (_loop3461434740_
                       _lp-tl3461734753_
                       (cons _lp-hd3461634751_ _bind3461834745_))))
                  (let ((_bind3461934756_ (reverse _bind3461834745_)))
                    (if (gx#stx-pair? _tl3458034652_)
                        (let ((_e3462034759_ (gx#stx-e _tl3458034652_)))
                          (let ((_tl3462234764_ (##cdr _e3462034759_))
                                (_hd3462134762_ (##car _e3462034759_)))
                            (if (gx#stx-null? _tl3462234764_)
                                (___kont4100141002_
                                 _hd3462134762_
                                 _bind3461934756_
                                 _hd3460934730_
                                 _id3460734724_
                                 _hd3458834674_)
                                (___kont4100741008_))))
                        (___kont4100741008_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3461434740_
                                             _target3461134735_
                                             '()))
                                          (___kont4100741008_))))
                                  (___kont4100741008_))
                              (___kont4100741008_))
                          (___kont4100741008_))))
                  (___kont4100741008_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3460234708_
                                       _target3459934703_
                                       '()))))
                                 (___match4112841129_
                                  (lambda (_e3454134835_
                                           _hd3454234838_
                                           _tl3454334840_
                                           _e3454434843_
                                           _hd3454534846_
                                           _tl3454634848_
                                           ___splice4099941000_
                                           _target3454734851_
                                           _tl3454934853_)
                                    (letrec ((_loop3455034856_
                                              (lambda (_hd3454834859_
                                                       _expr3455434861_
                                                       _id3455534863_)
                                                (if (gx#stx-pair?
                                                     _hd3454834859_)
                                                    (let ((_e3455134866_
                                                           (gx#stx-e
                                                            _hd3454834859_)))
                                                      (let ((_lp-tl3455334871_
                                                             (##cdr _e3455134866_))
                                                            (_lp-hd3455234869_
                                                             (##car _e3455134866_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3455234869_)
                                                            (let ((_e3455834874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3455234869_)))
                      (let ((_tl3456034879_ (##cdr _e3455834874_))
                            (_hd3455934877_ (##car _e3455834874_)))
                        (if (gx#stx-pair? _hd3455934877_)
                            (let ((_e3456134882_ (gx#stx-e _hd3455934877_)))
                              (let ((_tl3456334887_ (##cdr _e3456134882_))
                                    (_hd3456234885_ (##car _e3456134882_)))
                                (if (gx#stx-null? _tl3456334887_)
                                    (if (gx#stx-pair? _tl3456034879_)
                                        (let ((_e3456434890_
                                               (gx#stx-e _tl3456034879_)))
                                          (let ((_tl3456634895_
                                                 (##cdr _e3456434890_))
                                                (_hd3456534893_
                                                 (##car _e3456434890_)))
                                            (if (gx#stx-null? _tl3456634895_)
                                                (_loop3455034856_
                                                 _lp-tl3455334871_
                                                 (cons _hd3456534893_
                                                       _expr3455434861_)
                                                 (cons _hd3456234885_
                                                       _id3455534863_))
                                                (___kont4100741008_))))
                                        (___kont4100741008_))
                                    (___kont4100741008_))))
                            (___kont4100741008_))))
                    (___kont4100741008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3455734900_
                                                           (reverse _id3455534863_))
                                                          (_expr3455634898_
                                                           (reverse _expr3455434861_)))
                                                      (if (gx#stx-pair?
                                                           _tl3454634848_)
                                                          (let ((_e3456734903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3454634848_)))
                    (let ((_tl3456934908_ (##cdr _e3456734903_))
                          (_hd3456834906_ (##car _e3456734903_)))
                      (if (gx#stx-null? _tl3456934908_)
                          (___kont4099740998_
                           _hd3456834906_
                           _expr3455634898_
                           _id3455734900_)
                          (___kont4100741008_))))
                  (___kont4100741008_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3455034856_
                                       _target3454734851_
                                       '()
                                       '()))))
                                 (___match4110441105_
                                  (lambda (_e3450334951_
                                           _hd3450434954_
                                           _tl3450534956_
                                           _e3450634959_
                                           _hd3450734962_
                                           _tl3450834964_
                                           ___splice4099540996_
                                           _target3450934967_
                                           _tl3451134969_)
                                    (letrec ((_loop3451234972_
                                              (lambda (_hd3451034975_
                                                       _xid3451634977_
                                                       _id3451734979_)
                                                (if (gx#stx-pair?
                                                     _hd3451034975_)
                                                    (let ((_e3451334982_
                                                           (gx#stx-e
                                                            _hd3451034975_)))
                                                      (let ((_lp-tl3451534987_
                                                             (##cdr _e3451334982_))
                                                            (_lp-hd3451434985_
                                                             (##car _e3451334982_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3451434985_)
                                                            (let ((_e3452034990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3451434985_)))
                      (let ((_tl3452234995_ (##cdr _e3452034990_))
                            (_hd3452134993_ (##car _e3452034990_)))
                        (if (gx#stx-pair? _hd3452134993_)
                            (let ((_e3452334998_ (gx#stx-e _hd3452134993_)))
                              (let ((_tl3452535003_ (##cdr _e3452334998_))
                                    (_hd3452435001_ (##car _e3452334998_)))
                                (if (gx#stx-null? _tl3452535003_)
                                    (if (gx#stx-pair? _tl3452234995_)
                                        (let ((_e3452635006_
                                               (gx#stx-e _tl3452234995_)))
                                          (let ((_tl3452835011_
                                                 (##cdr _e3452635006_))
                                                (_hd3452735009_
                                                 (##car _e3452635006_)))
                                            (if (gx#stx-pair? _hd3452735009_)
                                                (let ((_e3452935014_
                                                       (gx#stx-e
                                                        _hd3452735009_)))
                                                  (let ((_tl3453135019_
                                                         (##cdr _e3452935014_))
                                                        (_hd3453035017_
                                                         (##car _e3452935014_)))
                                                    (if (gx#identifier?
                                                         _hd3453035017_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3453035017_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3453135019_)
                        (let ((_e3453235022_ (gx#stx-e _tl3453135019_)))
                          (let ((_tl3453435027_ (##cdr _e3453235022_))
                                (_hd3453335025_ (##car _e3453235022_)))
                            (if (gx#stx-null? _tl3453435027_)
                                (if (gx#stx-null? _tl3452835011_)
                                    (_loop3451234972_
                                     _lp-tl3451534987_
                                     (cons _hd3453335025_ _xid3451634977_)
                                     (cons _hd3452435001_ _id3451734979_))
                                    (___match4112841129_
                                     _e3450334951_
                                     _hd3450434954_
                                     _tl3450534956_
                                     _e3450634959_
                                     _hd3450734962_
                                     _tl3450834964_
                                     ___splice4099540996_
                                     _target3450934967_
                                     _tl3451134969_))
                                (___match4112841129_
                                 _e3450334951_
                                 _hd3450434954_
                                 _tl3450534956_
                                 _e3450634959_
                                 _hd3450734962_
                                 _tl3450834964_
                                 ___splice4099540996_
                                 _target3450934967_
                                 _tl3451134969_))))
                        (___match4112841129_
                         _e3450334951_
                         _hd3450434954_
                         _tl3450534956_
                         _e3450634959_
                         _hd3450734962_
                         _tl3450834964_
                         ___splice4099540996_
                         _target3450934967_
                         _tl3451134969_))
                    (___match4112841129_
                     _e3450334951_
                     _hd3450434954_
                     _tl3450534956_
                     _e3450634959_
                     _hd3450734962_
                     _tl3450834964_
                     ___splice4099540996_
                     _target3450934967_
                     _tl3451134969_))
                (___match4112841129_
                 _e3450334951_
                 _hd3450434954_
                 _tl3450534956_
                 _e3450634959_
                 _hd3450734962_
                 _tl3450834964_
                 ___splice4099540996_
                 _target3450934967_
                 _tl3451134969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match4112841129_
                                                 _e3450334951_
                                                 _hd3450434954_
                                                 _tl3450534956_
                                                 _e3450634959_
                                                 _hd3450734962_
                                                 _tl3450834964_
                                                 ___splice4099540996_
                                                 _target3450934967_
                                                 _tl3451134969_))))
                                        (___match4112841129_
                                         _e3450334951_
                                         _hd3450434954_
                                         _tl3450534956_
                                         _e3450634959_
                                         _hd3450734962_
                                         _tl3450834964_
                                         ___splice4099540996_
                                         _target3450934967_
                                         _tl3451134969_))
                                    (___match4112841129_
                                     _e3450334951_
                                     _hd3450434954_
                                     _tl3450534956_
                                     _e3450634959_
                                     _hd3450734962_
                                     _tl3450834964_
                                     ___splice4099540996_
                                     _target3450934967_
                                     _tl3451134969_))))
                            (___match4112841129_
                             _e3450334951_
                             _hd3450434954_
                             _tl3450534956_
                             _e3450634959_
                             _hd3450734962_
                             _tl3450834964_
                             ___splice4099540996_
                             _target3450934967_
                             _tl3451134969_))))
                    (___match4112841129_
                     _e3450334951_
                     _hd3450434954_
                     _tl3450534956_
                     _e3450634959_
                     _hd3450734962_
                     _tl3450834964_
                     ___splice4099540996_
                     _target3450934967_
                     _tl3451134969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3451935032_
                                                           (reverse _id3451734979_))
                                                          (_xid3451835030_
                                                           (reverse _xid3451634977_)))
                                                      (if (gx#stx-pair?
                                                           _tl3450834964_)
                                                          (let ((_e3453535035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3450834964_)))
                    (let ((_tl3453735040_ (##cdr _e3453535035_))
                          (_hd3453635038_ (##car _e3453535035_)))
                      (if (gx#stx-null? _tl3453735040_)
                          (___kont4099340994_
                           _hd3453635038_
                           _xid3451835030_
                           _id3451935032_)
                          (___match4112841129_
                           _e3450334951_
                           _hd3450434954_
                           _tl3450534956_
                           _e3450634959_
                           _hd3450734962_
                           _tl3450834964_
                           ___splice4099540996_
                           _target3450934967_
                           _tl3451134969_))))
                  (___match4112841129_
                   _e3450334951_
                   _hd3450434954_
                   _tl3450534956_
                   _e3450634959_
                   _hd3450734962_
                   _tl3450834964_
                   ___splice4099540996_
                   _target3450934967_
                   _tl3451134969_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3451234972_
                                       _target3450934967_
                                       '()
                                       '()))))
                                 (___match4105041051_
                                  (lambda (_e3445835143_
                                           _hd3445935146_
                                           _tl3446035148_
                                           _e3446135151_
                                           _hd3446235154_
                                           _tl3446335156_
                                           _e3446435159_
                                           _hd3446535162_
                                           _tl3446635164_
                                           _e3446735167_
                                           _hd3446835170_
                                           _tl3446935172_
                                           ___splice4098940990_
                                           _target3447035175_
                                           _tl3447235177_)
                                    (letrec ((_loop3447335180_
                                              (lambda (_hd3447135183_
                                                       _id3447735185_)
                                                (if (gx#stx-pair?
                                                     _hd3447135183_)
                                                    (let ((_e3447435188_
                                                           (gx#stx-e
                                                            _hd3447135183_)))
                                                      (let ((_lp-tl3447635193_
                                                             (##cdr _e3447435188_))
                                                            (_lp-hd3447535191_
                                                             (##car _e3447435188_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3447535191_)
                                                            (let ((_e3447935196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3447535191_)))
                      (let ((_tl3448135201_ (##cdr _e3447935196_))
                            (_hd3448035199_ (##car _e3447935196_)))
                        (if (gx#identifier? _hd3448035199_)
                            (if (gx#stx-eq? '%#ref _hd3448035199_)
                                (if (gx#stx-pair? _tl3448135201_)
                                    (let ((_e3448235204_
                                           (gx#stx-e _tl3448135201_)))
                                      (let ((_tl3448435209_
                                             (##cdr _e3448235204_))
                                            (_hd3448335207_
                                             (##car _e3448235204_)))
                                        (if (gx#stx-null? _tl3448435209_)
                                            (_loop3447335180_
                                             _lp-tl3447635193_
                                             (cons _hd3448335207_
                                                   _id3447735185_))
                                            (___kont4100741008_))))
                                    (___kont4100741008_))
                                (___kont4100741008_))
                            (___kont4100741008_))))
                    (___kont4100741008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3447835212_
                                                           (reverse _id3447735185_)))
                                                      (___kont4098740988_
                                                       _id3447835212_
                                                       _hd3446835170_))))))
                                      (_loop3447335180_
                                       _target3447035175_
                                       '())))))
                            (if (gx#stx-pair? ___stx4098540986_)
                                (let ((_e3445835143_
                                       (gx#stx-e ___stx4098540986_)))
                                  (let ((_tl3446035148_ (##cdr _e3445835143_))
                                        (_hd3445935146_ (##car _e3445835143_)))
                                    (if (gx#identifier? _hd3445935146_)
                                        (if (gx#stx-eq? '%#call _hd3445935146_)
                                            (if (gx#stx-pair? _tl3446035148_)
                                                (let ((_e3446135151_
                                                       (gx#stx-e
                                                        _tl3446035148_)))
                                                  (let ((_tl3446335156_
                                                         (##cdr _e3446135151_))
                                                        (_hd3446235154_
                                                         (##car _e3446135151_)))
                                                    (if (gx#stx-pair?
                                                         _hd3446235154_)
                                                        (let ((_e3446435159_
                                                               (gx#stx-e
                                                                _hd3446235154_)))
                                                          (let ((_tl3446635164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3446435159_))
                        (_hd3446535162_ (##car _e3446435159_)))
                    (if (gx#identifier? _hd3446535162_)
                        (if (gx#stx-eq? '%#ref _hd3446535162_)
                            (if (gx#stx-pair? _tl3446635164_)
                                (let ((_e3446735167_
                                       (gx#stx-e _tl3446635164_)))
                                  (let ((_tl3446935172_ (##cdr _e3446735167_))
                                        (_hd3446835170_ (##car _e3446735167_)))
                                    (if (gx#stx-null? _tl3446935172_)
                                        (if (gx#stx-pair/null? _tl3446335156_)
                                            (let ((___splice4098940990_
                                                   (gx#syntax-split-splice
                                                    _tl3446335156_
                                                    '0)))
                                              (let ((_tl3447235177_
                                                     (##vector-ref
                                                      ___splice4098940990_
                                                      '1))
                                                    (_target3447035175_
                                                     (##vector-ref
                                                      ___splice4098940990_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3447235177_)
                                                    (___match4105041051_
                                                     _e3445835143_
                                                     _hd3445935146_
                                                     _tl3446035148_
                                                     _e3446135151_
                                                     _hd3446235154_
                                                     _tl3446335156_
                                                     _e3446435159_
                                                     _hd3446535162_
                                                     _tl3446635164_
                                                     _e3446735167_
                                                     _hd3446835170_
                                                     _tl3446935172_
                                                     ___splice4098940990_
                                                     _target3447035175_
                                                     _tl3447235177_)
                                                    (___kont4100741008_))))
                                            (___kont4100741008_))
                                        (___kont4100741008_))))
                                (___kont4100741008_))
                            (___kont4100741008_))
                        (___kont4100741008_))))
                (___kont4100741008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4100741008_))
                                            (if (gx#stx-eq?
                                                 '%#if
                                                 _hd3445935146_)
                                                (if (gx#stx-pair?
                                                     _tl3446035148_)
                                                    (let ((_e3449135089_
                                                           (gx#stx-e
                                                            _tl3446035148_)))
                                                      (let ((_tl3449335094_
                                                             (##cdr _e3449135089_))
                                                            (_hd3449235092_
                                                             (##car _e3449135089_)))
                                                        (if (gx#stx-pair?
                                                             _tl3449335094_)
                                                            (let ((_e3449435097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3449335094_)))
                      (let ((_tl3449635102_ (##cdr _e3449435097_))
                            (_hd3449535100_ (##car _e3449435097_)))
                        (if (gx#stx-pair? _tl3449635102_)
                            (let ((_e3449735105_ (gx#stx-e _tl3449635102_)))
                              (let ((_tl3449935110_ (##cdr _e3449735105_))
                                    (_hd3449835108_ (##car _e3449735105_)))
                                (if (gx#stx-null? _tl3449935110_)
                                    (___kont4099140992_
                                     _hd3449835108_
                                     _hd3449535100_
                                     _hd3449235092_)
                                    (___kont4100741008_))))
                            (___kont4100741008_))))
                    (___kont4100741008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4100741008_))
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd3445935146_)
                                                    (if (gx#stx-pair?
                                                         _tl3446035148_)
                                                        (let ((_e3450634959_
                                                               (gx#stx-e
                                                                _tl3446035148_)))
                                                          (let ((_tl3450834964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3450634959_))
                        (_hd3450734962_ (##car _e3450634959_)))
                    (if (gx#stx-pair/null? _hd3450734962_)
                        (let ((___splice4099540996_
                               (gx#syntax-split-splice _hd3450734962_ '0)))
                          (let ((_tl3451134969_
                                 (##vector-ref ___splice4099540996_ '1))
                                (_target3450934967_
                                 (##vector-ref ___splice4099540996_ '0)))
                            (if (gx#stx-null? _tl3451134969_)
                                (___match4110441105_
                                 _e3445835143_
                                 _hd3445935146_
                                 _tl3446035148_
                                 _e3450634959_
                                 _hd3450734962_
                                 _tl3450834964_
                                 ___splice4099540996_
                                 _target3450934967_
                                 _tl3451134969_)
                                (___kont4100741008_))))
                        (___kont4100741008_))))
                (___kont4100741008_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#letrec-values
                                                         _hd3445935146_)
                                                        (if (gx#stx-pair?
                                                             _tl3446035148_)
                                                            (let ((_e3457834647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3446035148_)))
                      (let ((_tl3458034652_ (##cdr _e3457834647_))
                            (_hd3457934650_ (##car _e3457834647_)))
                        (if (gx#stx-pair? _hd3457934650_)
                            (let ((_e3458134655_ (gx#stx-e _hd3457934650_)))
                              (let ((_tl3458334660_ (##cdr _e3458134655_))
                                    (_hd3458234658_ (##car _e3458134655_)))
                                (if (gx#stx-pair? _hd3458234658_)
                                    (let ((_e3458434663_
                                           (gx#stx-e _hd3458234658_)))
                                      (let ((_tl3458634668_
                                             (##cdr _e3458434663_))
                                            (_hd3458534666_
                                             (##car _e3458434663_)))
                                        (if (gx#stx-pair? _hd3458534666_)
                                            (let ((_e3458734671_
                                                   (gx#stx-e _hd3458534666_)))
                                              (let ((_tl3458934676_
                                                     (##cdr _e3458734671_))
                                                    (_hd3458834674_
                                                     (##car _e3458734671_)))
                                                (if (gx#stx-null?
                                                     _tl3458934676_)
                                                    (if (gx#stx-pair?
                                                         _tl3458634668_)
                                                        (let ((_e3459034679_
                                                               (gx#stx-e
                                                                _tl3458634668_)))
                                                          (let ((_tl3459234684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3459034679_))
                        (_hd3459134682_ (##car _e3459034679_)))
                    (if (gx#stx-pair? _hd3459134682_)
                        (let ((_e3459334687_ (gx#stx-e _hd3459134682_)))
                          (let ((_tl3459534692_ (##cdr _e3459334687_))
                                (_hd3459434690_ (##car _e3459334687_)))
                            (if (gx#identifier? _hd3459434690_)
                                (if (gx#stx-eq? '%#lambda _hd3459434690_)
                                    (if (gx#stx-pair? _tl3459534692_)
                                        (let ((_e3459634695_
                                               (gx#stx-e _tl3459534692_)))
                                          (let ((_tl3459834700_
                                                 (##cdr _e3459634695_))
                                                (_hd3459734698_
                                                 (##car _e3459634695_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3459734698_)
                                                (let ((___splice4100341004_
                                                       (gx#syntax-split-splice
                                                        _hd3459734698_
                                                        '0)))
                                                  (let ((_tl3460134705_
                                                         (##vector-ref
                                                          ___splice4100341004_
                                                          '1))
                                                        (_target3459934703_
                                                         (##vector-ref
                                                          ___splice4100341004_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3460134705_)
                                                        (___match4119441195_
                                                         _e3445835143_
                                                         _hd3445935146_
                                                         _tl3446035148_
                                                         _e3457834647_
                                                         _hd3457934650_
                                                         _tl3458034652_
                                                         _e3458134655_
                                                         _hd3458234658_
                                                         _tl3458334660_
                                                         _e3458434663_
                                                         _hd3458534666_
                                                         _tl3458634668_
                                                         _e3458734671_
                                                         _hd3458834674_
                                                         _tl3458934676_
                                                         _e3459034679_
                                                         _hd3459134682_
                                                         _tl3459234684_
                                                         _e3459334687_
                                                         _hd3459434690_
                                                         _tl3459534692_
                                                         _e3459634695_
                                                         _hd3459734698_
                                                         _tl3459834700_
                                                         ___splice4100341004_
                                                         _target3459934703_
                                                         _tl3460134705_)
                                                        (___kont4100741008_))))
                                                (___kont4100741008_))))
                                        (___kont4100741008_))
                                    (___kont4100741008_))
                                (___kont4100741008_))))
                        (___kont4100741008_))))
                (___kont4100741008_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4100741008_))))
                                            (___kont4100741008_))))
                                    (___kont4100741008_))))
                            (___kont4100741008_))))
                    (___kont4100741008_))
                (___kont4100741008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (___kont4100741008_))))
                                (___kont4100741008_)))))))))
                (_optimize-f__0__3970239703_
                 (lambda (_expr35352_)
                   (let ((_test35354_ '#f))
                     (_optimize-f__3970039701_ _expr35352_ _test35354_))))
                (_optimize-f32377_
                 (lambda _g42801_
                   (let ((_g42800_ (length _g42801_)))
                     (cond ((##fx= _g42800_ 1)
                            (apply _optimize-f__0__3970239703_ _g42801_))
                           ((##fx= _g42800_ 2)
                            (apply _optimize-f__3970039701_ _g42801_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42801_))))))
                (_assert-e32378_
                 (lambda (_expr33386_)
                   (let* ((_sexpr33388_
                           (gxc#apply-generate-runtime-repr _expr33386_))
                          (_$e33390_ (assoc _sexpr33388_ _env-assert32360_)))
                     (if _$e33390_
                         (cdr _$e33390_)
                         (let _assert33393_ ((_expr33395_ _expr33386_))
                           (let* ((___stx4129141292_ _expr33395_)
                                  (_g3340333582_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4129141292_))))
                             (let ((___kont4129341294_
                                    (lambda (_L34413_ _L34414_)
                                      (let ((_$e34436_
                                             (_predicate-type32365_ _L34414_)))
                                        (if _$e34436_
                                            ((lambda (_t34439_)
                                               (_assert-type32379_
                                                _L34413_
                                                _t34439_))
                                             _$e34436_)
                                            '#!void))))
                                   (___kont4129541296_
                                    (lambda (_L34106_ _L34107_ _L34108_)
                                      (let ((_$e34133_
                                             (gxc#identifier-symbol _L34108_)))
                                        (if (let ((_$e34136_
                                                   (eq? '##fx= _$e34133_)))
                                              (if _$e34136_
                                                  _$e34136_
                                                  (eq? 'fx= _$e34133_)))
                                            (let* ((___stx4119741198_ _L34107_)
                                                   (_g3414034169_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx4119741198_))))
                                              (let ((___kont4119941200_
                                                     (lambda (_L34237_
                                                              _L34238_)
                                                       (let ((_$e34263_
                                                              (_countf-symbol32367_
                                                               _L34238_)))
                                                         (if _$e34263_
                                                             ((lambda (_sym34266_)
                                                                (_assert-count32380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L34237_
                         _sym34266_
                         (gx#stx-e _L34106_)))
                      _$e34263_)
                     '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4120141202_
                                                     (lambda () '#!void)))
                                                (if (gx#stx-pair?
                                                     ___stx4119741198_)
                                                    (let ((_e3414434181_
                                                           (gx#stx-e
                                                            ___stx4119741198_)))
                                                      (let ((_tl3414634186_
                                                             (##cdr _e3414434181_))
                                                            (_hd3414534184_
                                                             (##car _e3414434181_)))
                                                        (if (gx#identifier?
                                                             _hd3414534184_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd3414534184_)
                        (if (gx#stx-pair? _tl3414634186_)
                            (let ((_e3414734189_ (gx#stx-e _tl3414634186_)))
                              (let ((_tl3414934194_ (##cdr _e3414734189_))
                                    (_hd3414834192_ (##car _e3414734189_)))
                                (if (gx#stx-pair? _hd3414834192_)
                                    (let ((_e3415034197_
                                           (gx#stx-e _hd3414834192_)))
                                      (let ((_tl3415234202_
                                             (##cdr _e3415034197_))
                                            (_hd3415134200_
                                             (##car _e3415034197_)))
                                        (if (gx#identifier? _hd3415134200_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3415134200_)
                                                (if (gx#stx-pair?
                                                     _tl3415234202_)
                                                    (let ((_e3415334205_
                                                           (gx#stx-e
                                                            _tl3415234202_)))
                                                      (let ((_tl3415534210_
                                                             (##cdr _e3415334205_))
                                                            (_hd3415434208_
                                                             (##car _e3415334205_)))
                                                        (if (gx#stx-null?
                                                             _tl3415534210_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3414934194_)
                        (let ((_e3415634213_ (gx#stx-e _tl3414934194_)))
                          (let ((_tl3415834218_ (##cdr _e3415634213_))
                                (_hd3415734216_ (##car _e3415634213_)))
                            (if (gx#stx-pair? _hd3415734216_)
                                (let ((_e3415934221_
                                       (gx#stx-e _hd3415734216_)))
                                  (let ((_tl3416134226_ (##cdr _e3415934221_))
                                        (_hd3416034224_ (##car _e3415934221_)))
                                    (if (gx#identifier? _hd3416034224_)
                                        (if (gx#stx-eq? '%#ref _hd3416034224_)
                                            (if (gx#stx-pair? _tl3416134226_)
                                                (let ((_e3416234229_
                                                       (gx#stx-e
                                                        _tl3416134226_)))
                                                  (let ((_tl3416434234_
                                                         (##cdr _e3416234229_))
                                                        (_hd3416334232_
                                                         (##car _e3416234229_)))
                                                    (if (gx#stx-null?
                                                         _tl3416434234_)
                                                        (if (gx#stx-null?
                                                             _tl3415834218_)
                                                            (___kont4119941200_
                                                             _hd3416334232_
                                                             _hd3415434208_)
                                                            (___kont4120141202_))
                                                        (___kont4120141202_))))
                                                (___kont4120141202_))
                                            (___kont4120141202_))
                                        (___kont4120141202_))))
                                (___kont4120141202_))))
                        (___kont4120141202_))
                    (___kont4120141202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4120141202_))
                                                (___kont4120141202_))
                                            (___kont4120141202_))))
                                    (___kont4120141202_))))
                            (___kont4120141202_))
                        (___kont4120141202_))
                    (___kont4120141202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4120141202_))))
                                            (if (let ((_$e34271_
                                                       (eq? '##eq? _$e34133_)))
                                                  (if _$e34271_
                                                      _$e34271_
                                                      (let ((_$e34274_
                                                             (eq? 'eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e34133_)))
                (if _$e34274_
                    _$e34274_
                    (let ((_$e34277_ (eq? '##eqv? _$e34133_)))
                      (if _$e34277_
                          _$e34277_
                          (let ((_$e34280_ (eq? 'eqv? _$e34133_)))
                            (if _$e34280_
                                _$e34280_
                                (let ((_$e34283_ (eq? '##equal? _$e34133_)))
                                  (if _$e34283_
                                      _$e34283_
                                      (let ((_$e34286_
                                             (eq? 'equal? _$e34133_)))
                                        (if _$e34286_
                                            _$e34286_
                                            (let ((_$e34289_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e34133_)))
                                              (if _$e34289_
                                                  _$e34289_
                                                  (eq? 'gx#stx-eq?
                                                       _$e34133_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                ((lambda (_sym34292_)
                                                   (let* ((___stx4126541266_
                                                           _L34107_)
                                                          (_g3429534308_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4126541266_))))
                                                     (let ((___kont4126741268_
                                                            (lambda (_L34336_)
                                                              (_assert-eqf32381_
                                                               _L34336_
                                                               (_eqf-symbol32368_
                                                                _sym34292_)
                                                               (gx#stx-e
                                                                _L34106_))))
                                                           (___kont4126941270_
                                                            (lambda ()
                                                              '#!void)))
                                                       (if (gx#stx-pair?
                                                            ___stx4126541266_)
                                                           (let ((_e3429834320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e ___stx4126541266_)))
                     (let ((_tl3430034325_ (##cdr _e3429834320_))
                           (_hd3429934323_ (##car _e3429834320_)))
                       (if (gx#identifier? _hd3429934323_)
                           (if (gx#stx-eq? '%#ref _hd3429934323_)
                               (if (gx#stx-pair? _tl3430034325_)
                                   (let ((_e3430134328_
                                          (gx#stx-e _tl3430034325_)))
                                     (let ((_tl3430334333_
                                            (##cdr _e3430134328_))
                                           (_hd3430234331_
                                            (##car _e3430134328_)))
                                       (if (gx#stx-null? _tl3430334333_)
                                           (___kont4126741268_ _hd3430234331_)
                                           (___kont4126941270_))))
                                   (___kont4126941270_))
                               (___kont4126941270_))
                           (___kont4126941270_))))
                   (___kont4126941270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e34133_)
                                                '#!void)))))
                                   (___kont4129741298_
                                    (lambda (_L34010_ _L34011_ _L34012_)
                                      (_assert33393_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L34012_ '()))
                                                   (cons _L34010_
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#quote)
                             (cons _L34011_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4129941300_
                                    (lambda (_L33902_ _L33903_ _L33904_)
                                      (let ((_$e33933_
                                             (gxc#identifier-symbol _L33904_)))
                                        (if (let ((_$e33936_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e33933_)))
                                              (if _$e33936_
                                                  _$e33936_
                                                  (eq? 'gx#stx-eq? _$e33933_)))
                                            ((lambda (_sym33939_)
                                               (_assert-eqf32381_
                                                _L33903_
                                                (_eqf-symbol32368_ _sym33939_)
                                                _L33902_))
                                             _$e33933_)
                                            '#!void))))
                                   (___kont4130141302_
                                    (lambda (_L33786_ _L33787_ _L33788_)
                                      (_assert33393_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L33788_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L33786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                             (cons _L33787_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4130341304_
                                    (lambda (_L33666_ _L33667_ _L33668_)
                                      (_assert33393_
                                       (gxc#apply-expression-subst
                                        _L33667_
                                        _L33668_
                                        _L33666_))))
                                   (___kont4130541306_ (lambda () '#!void)))
                               (if (gx#stx-pair? ___stx4129141292_)
                                   (let ((_e3340734357_
                                          (gx#stx-e ___stx4129141292_)))
                                     (let ((_tl3340934362_
                                            (##cdr _e3340734357_))
                                           (_hd3340834360_
                                            (##car _e3340734357_)))
                                       (if (gx#identifier? _hd3340834360_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd3340834360_)
                                               (if (gx#stx-pair?
                                                    _tl3340934362_)
                                                   (let ((_e3341034365_
                                                          (gx#stx-e
                                                           _tl3340934362_)))
                                                     (let ((_tl3341234370_
                                                            (##cdr _e3341034365_))
                                                           (_hd3341134368_
                                                            (##car _e3341034365_)))
                                                       (if (gx#stx-pair?
                                                            _hd3341134368_)
                                                           (let ((_e3341334373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3341134368_)))
                     (let ((_tl3341534378_ (##cdr _e3341334373_))
                           (_hd3341434376_ (##car _e3341334373_)))
                       (if (gx#identifier? _hd3341434376_)
                           (if (gx#stx-eq? '%#ref _hd3341434376_)
                               (if (gx#stx-pair? _tl3341534378_)
                                   (let ((_e3341634381_
                                          (gx#stx-e _tl3341534378_)))
                                     (let ((_tl3341834386_
                                            (##cdr _e3341634381_))
                                           (_hd3341734384_
                                            (##car _e3341634381_)))
                                       (if (gx#stx-null? _tl3341834386_)
                                           (if (gx#stx-pair? _tl3341234370_)
                                               (let ((_e3341934389_
                                                      (gx#stx-e
                                                       _tl3341234370_)))
                                                 (let ((_tl3342134394_
                                                        (##cdr _e3341934389_))
                                                       (_hd3342034392_
                                                        (##car _e3341934389_)))
                                                   (if (gx#stx-pair?
                                                        _hd3342034392_)
                                                       (let ((_e3342234397_
                                                              (gx#stx-e
                                                               _hd3342034392_)))
                                                         (let ((_tl3342434402_
                                                                (##cdr _e3342234397_))
                                                               (_hd3342334400_
                                                                (##car _e3342234397_)))
                                                           (if (gx#identifier?
                                                                _hd3342334400_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3342334400_)
                           (if (gx#stx-pair? _tl3342434402_)
                               (let ((_e3342534405_ (gx#stx-e _tl3342434402_)))
                                 (let ((_tl3342734410_ (##cdr _e3342534405_))
                                       (_hd3342634408_ (##car _e3342534405_)))
                                   (if (gx#stx-null? _tl3342734410_)
                                       (if (gx#stx-null? _tl3342134394_)
                                           (___kont4129341294_
                                            _hd3342634408_
                                            _hd3341734384_)
                                           (if (gx#stx-pair? _tl3342134394_)
                                               (let ((_e3344634082_
                                                      (gx#stx-e
                                                       _tl3342134394_)))
                                                 (let ((_tl3344834087_
                                                        (##cdr _e3344634082_))
                                                       (_hd3344734085_
                                                        (##car _e3344634082_)))
                                                   (if (gx#stx-pair?
                                                        _hd3344734085_)
                                                       (let ((_e3344934090_
                                                              (gx#stx-e
                                                               _hd3344734085_)))
                                                         (let ((_tl3345134095_
                                                                (##cdr _e3344934090_))
                                                               (_hd3345034093_
                                                                (##car _e3344934090_)))
                                                           (if (gx#identifier?
                                                                _hd3345034093_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#quote
                            _hd3345034093_)
                           (if (gx#stx-pair? _tl3345134095_)
                               (let ((_e3345234098_ (gx#stx-e _tl3345134095_)))
                                 (let ((_tl3345434103_ (##cdr _e3345234098_))
                                       (_hd3345334101_ (##car _e3345234098_)))
                                   (if (gx#stx-null? _tl3345434103_)
                                       (if (gx#stx-null? _tl3344834087_)
                                           (___kont4129541296_
                                            _hd3345334101_
                                            _hd3342034392_
                                            _hd3341734384_)
                                           (___kont4130541306_))
                                       (___kont4130541306_))))
                               (___kont4130541306_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3345034093_)
                               (if (gx#stx-pair? _tl3345134095_)
                                   (let ((_e3351233894_
                                          (gx#stx-e _tl3345134095_)))
                                     (let ((_tl3351433899_
                                            (##cdr _e3351233894_))
                                           (_hd3351333897_
                                            (##car _e3351233894_)))
                                       (if (gx#stx-null? _tl3351433899_)
                                           (if (gx#stx-null? _tl3344834087_)
                                               (___kont4129941300_
                                                _hd3351333897_
                                                _hd3342634408_
                                                _hd3341734384_)
                                               (___kont4130541306_))
                                           (___kont4130541306_))))
                                   (___kont4130541306_))
                               (___kont4130541306_)))
                       (___kont4130541306_))))
               (___kont4130541306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4130541306_)))
                                       (if (gx#stx-pair? _tl3342134394_)
                                           (let ((_e3344634082_
                                                  (gx#stx-e _tl3342134394_)))
                                             (let ((_tl3344834087_
                                                    (##cdr _e3344634082_))
                                                   (_hd3344734085_
                                                    (##car _e3344634082_)))
                                               (if (gx#stx-pair?
                                                    _hd3344734085_)
                                                   (let ((_e3344934090_
                                                          (gx#stx-e
                                                           _hd3344734085_)))
                                                     (let ((_tl3345134095_
                                                            (##cdr _e3344934090_))
                                                           (_hd3345034093_
                                                            (##car _e3344934090_)))
                                                       (if (gx#identifier?
                                                            _hd3345034093_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3345034093_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3345134095_)
                           (let ((_e3345234098_ (gx#stx-e _tl3345134095_)))
                             (let ((_tl3345434103_ (##cdr _e3345234098_))
                                   (_hd3345334101_ (##car _e3345234098_)))
                               (if (gx#stx-null? _tl3345434103_)
                                   (if (gx#stx-null? _tl3344834087_)
                                       (___kont4129541296_
                                        _hd3345334101_
                                        _hd3342034392_
                                        _hd3341734384_)
                                       (___kont4130541306_))
                                   (___kont4130541306_))))
                           (___kont4130541306_))
                       (___kont4130541306_))
                   (___kont4130541306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4130541306_))))
                                           (___kont4130541306_)))))
                               (if (gx#stx-pair? _tl3342134394_)
                                   (let ((_e3344634082_
                                          (gx#stx-e _tl3342134394_)))
                                     (let ((_tl3344834087_
                                            (##cdr _e3344634082_))
                                           (_hd3344734085_
                                            (##car _e3344634082_)))
                                       (if (gx#stx-pair? _hd3344734085_)
                                           (let ((_e3344934090_
                                                  (gx#stx-e _hd3344734085_)))
                                             (let ((_tl3345134095_
                                                    (##cdr _e3344934090_))
                                                   (_hd3345034093_
                                                    (##car _e3344934090_)))
                                               (if (gx#identifier?
                                                    _hd3345034093_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3345034093_)
                                                       (if (gx#stx-pair?
                                                            _tl3345134095_)
                                                           (let ((_e3345234098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3345134095_)))
                     (let ((_tl3345434103_ (##cdr _e3345234098_))
                           (_hd3345334101_ (##car _e3345234098_)))
                       (if (gx#stx-null? _tl3345434103_)
                           (if (gx#stx-null? _tl3344834087_)
                               (___kont4129541296_
                                _hd3345334101_
                                _hd3342034392_
                                _hd3341734384_)
                               (___kont4130541306_))
                           (___kont4130541306_))))
                   (___kont4130541306_))
               (___kont4130541306_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4130541306_))))
                                           (___kont4130541306_))))
                                   (___kont4130541306_)))
                           (if (gx#stx-pair? _tl3342134394_)
                               (let ((_e3344634082_ (gx#stx-e _tl3342134394_)))
                                 (let ((_tl3344834087_ (##cdr _e3344634082_))
                                       (_hd3344734085_ (##car _e3344634082_)))
                                   (if (gx#stx-pair? _hd3344734085_)
                                       (let ((_e3344934090_
                                              (gx#stx-e _hd3344734085_)))
                                         (let ((_tl3345134095_
                                                (##cdr _e3344934090_))
                                               (_hd3345034093_
                                                (##car _e3344934090_)))
                                           (if (gx#identifier? _hd3345034093_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3345034093_)
                                                   (if (gx#stx-pair?
                                                        _tl3345134095_)
                                                       (let ((_e3345234098_
                                                              (gx#stx-e
                                                               _tl3345134095_)))
                                                         (let ((_tl3345434103_
                                                                (##cdr _e3345234098_))
                                                               (_hd3345334101_
                                                                (##car _e3345234098_)))
                                                           (if (gx#stx-null?
                                                                _tl3345434103_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3344834087_)
                           (___kont4129541296_
                            _hd3345334101_
                            _hd3342034392_
                            _hd3341734384_)
                           (if (gx#stx-eq? '%#quote _hd3342334400_)
                               (if (gx#stx-pair? _tl3342434402_)
                                   (let ((_e3347633994_
                                          (gx#stx-e _tl3342434402_)))
                                     (let ((_tl3347833999_
                                            (##cdr _e3347633994_))
                                           (_hd3347733997_
                                            (##car _e3347633994_)))
                                       (___kont4130541306_)))
                                   (___kont4130541306_))
                               (if (gx#stx-eq? '%#quote-syntax _hd3342334400_)
                                   (if (gx#stx-pair? _tl3342434402_)
                                       (let ((_e3353633754_
                                              (gx#stx-e _tl3342434402_)))
                                         (let ((_tl3353833759_
                                                (##cdr _e3353633754_))
                                               (_hd3353733757_
                                                (##car _e3353633754_)))
                                           (___kont4130541306_)))
                                       (___kont4130541306_))
                                   (___kont4130541306_))))
                       (if (gx#stx-eq? '%#quote _hd3342334400_)
                           (if (gx#stx-pair? _tl3342434402_)
                               (let ((_e3347633994_ (gx#stx-e _tl3342434402_)))
                                 (let ((_tl3347833999_ (##cdr _e3347633994_))
                                       (_hd3347733997_ (##car _e3347633994_)))
                                   (if (gx#stx-null? _tl3347833999_)
                                       (if (gx#stx-null? _tl3344834087_)
                                           (___kont4129741298_
                                            _hd3344734085_
                                            _hd3347733997_
                                            _hd3341734384_)
                                           (___kont4130541306_))
                                       (___kont4130541306_))))
                               (___kont4130541306_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3342334400_)
                               (if (gx#stx-pair? _tl3342434402_)
                                   (let ((_e3353633754_
                                          (gx#stx-e _tl3342434402_)))
                                     (let ((_tl3353833759_
                                            (##cdr _e3353633754_))
                                           (_hd3353733757_
                                            (##car _e3353633754_)))
                                       (___kont4130541306_)))
                                   (___kont4130541306_))
                               (___kont4130541306_))))))
               (if (gx#stx-eq? '%#quote _hd3342334400_)
                   (if (gx#stx-pair? _tl3342434402_)
                       (let ((_e3347633994_ (gx#stx-e _tl3342434402_)))
                         (let ((_tl3347833999_ (##cdr _e3347633994_))
                               (_hd3347733997_ (##car _e3347633994_)))
                           (if (gx#stx-null? _tl3347833999_)
                               (if (gx#stx-null? _tl3344834087_)
                                   (___kont4129741298_
                                    _hd3344734085_
                                    _hd3347733997_
                                    _hd3341734384_)
                                   (___kont4130541306_))
                               (___kont4130541306_))))
                       (___kont4130541306_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3342334400_)
                       (if (gx#stx-pair? _tl3342434402_)
                           (let ((_e3353633754_ (gx#stx-e _tl3342434402_)))
                             (let ((_tl3353833759_ (##cdr _e3353633754_))
                                   (_hd3353733757_ (##car _e3353633754_)))
                               (___kont4130541306_)))
                           (___kont4130541306_))
                       (___kont4130541306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3342334400_)
                                                       (if (gx#stx-pair?
                                                            _tl3342434402_)
                                                           (let ((_e3347633994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3342434402_)))
                     (let ((_tl3347833999_ (##cdr _e3347633994_))
                           (_hd3347733997_ (##car _e3347633994_)))
                       (if (gx#stx-null? _tl3347833999_)
                           (if (gx#stx-null? _tl3344834087_)
                               (___kont4129741298_
                                _hd3344734085_
                                _hd3347733997_
                                _hd3341734384_)
                               (___kont4130541306_))
                           (___kont4130541306_))))
                   (___kont4130541306_))
               (if (gx#stx-eq? '%#quote-syntax _hd3342334400_)
                   (if (gx#stx-pair? _tl3342434402_)
                       (let ((_e3353633754_ (gx#stx-e _tl3342434402_)))
                         (let ((_tl3353833759_ (##cdr _e3353633754_))
                               (_hd3353733757_ (##car _e3353633754_)))
                           (if (gx#stx-null? _tl3353833759_)
                               (if (gx#stx-eq? '%#ref _hd3345034093_)
                                   (if (gx#stx-pair? _tl3345134095_)
                                       (let ((_e3354533778_
                                              (gx#stx-e _tl3345134095_)))
                                         (let ((_tl3354733783_
                                                (##cdr _e3354533778_))
                                               (_hd3354633781_
                                                (##car _e3354533778_)))
                                           (if (gx#stx-null? _tl3354733783_)
                                               (if (gx#stx-null?
                                                    _tl3344834087_)
                                                   (___kont4130141302_
                                                    _hd3354633781_
                                                    _hd3353733757_
                                                    _hd3341734384_)
                                                   (___kont4130541306_))
                                               (___kont4130541306_))))
                                       (___kont4130541306_))
                                   (___kont4130541306_))
                               (___kont4130541306_))))
                       (___kont4130541306_))
                   (___kont4130541306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3342334400_)
                                                   (if (gx#stx-pair?
                                                        _tl3342434402_)
                                                       (let ((_e3347633994_
                                                              (gx#stx-e
                                                               _tl3342434402_)))
                                                         (let ((_tl3347833999_
                                                                (##cdr _e3347633994_))
                                                               (_hd3347733997_
                                                                (##car _e3347633994_)))
                                                           (if (gx#stx-null?
                                                                _tl3347833999_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3344834087_)
                           (___kont4129741298_
                            _hd3344734085_
                            _hd3347733997_
                            _hd3341734384_)
                           (___kont4130541306_))
                       (___kont4130541306_))))
               (___kont4130541306_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3342334400_)
                                                       (if (gx#stx-pair?
                                                            _tl3342434402_)
                                                           (let ((_e3353633754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3342434402_)))
                     (let ((_tl3353833759_ (##cdr _e3353633754_))
                           (_hd3353733757_ (##car _e3353633754_)))
                       (___kont4130541306_)))
                   (___kont4130541306_))
               (___kont4130541306_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-eq? '%#quote _hd3342334400_)
                                           (if (gx#stx-pair? _tl3342434402_)
                                               (let ((_e3347633994_
                                                      (gx#stx-e
                                                       _tl3342434402_)))
                                                 (let ((_tl3347833999_
                                                        (##cdr _e3347633994_))
                                                       (_hd3347733997_
                                                        (##car _e3347633994_)))
                                                   (if (gx#stx-null?
                                                        _tl3347833999_)
                                                       (if (gx#stx-null?
                                                            _tl3344834087_)
                                                           (___kont4129741298_
                                                            _hd3344734085_
                                                            _hd3347733997_
                                                            _hd3341734384_)
                                                           (___kont4130541306_))
                                                       (___kont4130541306_))))
                                               (___kont4130541306_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3342334400_)
                                               (if (gx#stx-pair?
                                                    _tl3342434402_)
                                                   (let ((_e3353633754_
                                                          (gx#stx-e
                                                           _tl3342434402_)))
                                                     (let ((_tl3353833759_
                                                            (##cdr _e3353633754_))
                                                           (_hd3353733757_
                                                            (##car _e3353633754_)))
                                                       (___kont4130541306_)))
                                                   (___kont4130541306_))
                                               (___kont4130541306_))))))
                               (if (gx#stx-eq? '%#quote _hd3342334400_)
                                   (if (gx#stx-pair? _tl3342434402_)
                                       (let ((_e3347633994_
                                              (gx#stx-e _tl3342434402_)))
                                         (let ((_tl3347833999_
                                                (##cdr _e3347633994_))
                                               (_hd3347733997_
                                                (##car _e3347633994_)))
                                           (___kont4130541306_)))
                                       (___kont4130541306_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3342334400_)
                                       (if (gx#stx-pair? _tl3342434402_)
                                           (let ((_e3353633754_
                                                  (gx#stx-e _tl3342434402_)))
                                             (let ((_tl3353833759_
                                                    (##cdr _e3353633754_))
                                                   (_hd3353733757_
                                                    (##car _e3353633754_)))
                                               (___kont4130541306_)))
                                           (___kont4130541306_))
                                       (___kont4130541306_)))))
                       (if (gx#stx-pair? _tl3342134394_)
                           (let ((_e3344634082_ (gx#stx-e _tl3342134394_)))
                             (let ((_tl3344834087_ (##cdr _e3344634082_))
                                   (_hd3344734085_ (##car _e3344634082_)))
                               (if (gx#stx-pair? _hd3344734085_)
                                   (let ((_e3344934090_
                                          (gx#stx-e _hd3344734085_)))
                                     (let ((_tl3345134095_
                                            (##cdr _e3344934090_))
                                           (_hd3345034093_
                                            (##car _e3344934090_)))
                                       (if (gx#identifier? _hd3345034093_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3345034093_)
                                               (if (gx#stx-pair?
                                                    _tl3345134095_)
                                                   (let ((_e3345234098_
                                                          (gx#stx-e
                                                           _tl3345134095_)))
                                                     (let ((_tl3345434103_
                                                            (##cdr _e3345234098_))
                                                           (_hd3345334101_
                                                            (##car _e3345234098_)))
                                                       (if (gx#stx-null?
                                                            _tl3345434103_)
                                                           (if (gx#stx-null?
                                                                _tl3344834087_)
                                                               (___kont4129541296_
                                                                _hd3345334101_
                                                                _hd3342034392_
                                                                _hd3341734384_)
                                                               (___kont4130541306_))
                                                           (___kont4130541306_))))
                                                   (___kont4130541306_))
                                               (___kont4130541306_))
                                           (___kont4130541306_))))
                                   (___kont4130541306_))))
                           (___kont4130541306_)))))
               (if (gx#stx-pair? _tl3342134394_)
                   (let ((_e3344634082_ (gx#stx-e _tl3342134394_)))
                     (let ((_tl3344834087_ (##cdr _e3344634082_))
                           (_hd3344734085_ (##car _e3344634082_)))
                       (if (gx#stx-pair? _hd3344734085_)
                           (let ((_e3344934090_ (gx#stx-e _hd3344734085_)))
                             (let ((_tl3345134095_ (##cdr _e3344934090_))
                                   (_hd3345034093_ (##car _e3344934090_)))
                               (if (gx#identifier? _hd3345034093_)
                                   (if (gx#stx-eq? '%#quote _hd3345034093_)
                                       (if (gx#stx-pair? _tl3345134095_)
                                           (let ((_e3345234098_
                                                  (gx#stx-e _tl3345134095_)))
                                             (let ((_tl3345434103_
                                                    (##cdr _e3345234098_))
                                                   (_hd3345334101_
                                                    (##car _e3345234098_)))
                                               (if (gx#stx-null?
                                                    _tl3345434103_)
                                                   (if (gx#stx-null?
                                                        _tl3344834087_)
                                                       (___kont4129541296_
                                                        _hd3345334101_
                                                        _hd3342034392_
                                                        _hd3341734384_)
                                                       (___kont4130541306_))
                                                   (___kont4130541306_))))
                                           (___kont4130541306_))
                                       (___kont4130541306_))
                                   (___kont4130541306_))))
                           (___kont4130541306_))))
                   (___kont4130541306_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4130541306_))
                                           (___kont4130541306_))))
                                   (___kont4130541306_))
                               (if (gx#stx-eq? '%#lambda _hd3341434376_)
                                   (if (gx#stx-pair? _tl3341534378_)
                                       (let ((_e3356033618_
                                              (gx#stx-e _tl3341534378_)))
                                         (let ((_tl3356233623_
                                                (##cdr _e3356033618_))
                                               (_hd3356133621_
                                                (##car _e3356033618_)))
                                           (if (gx#stx-pair? _hd3356133621_)
                                               (let ((_e3356333626_
                                                      (gx#stx-e
                                                       _hd3356133621_)))
                                                 (let ((_tl3356533631_
                                                        (##cdr _e3356333626_))
                                                       (_hd3356433629_
                                                        (##car _e3356333626_)))
                                                   (if (gx#stx-null?
                                                        _tl3356533631_)
                                                       (if (gx#stx-pair?
                                                            _tl3356233623_)
                                                           (let ((_e3356633634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3356233623_)))
                     (let ((_tl3356833639_ (##cdr _e3356633634_))
                           (_hd3356733637_ (##car _e3356633634_)))
                       (if (gx#stx-null? _tl3356833639_)
                           (if (gx#stx-pair? _tl3341234370_)
                               (let ((_e3356933642_ (gx#stx-e _tl3341234370_)))
                                 (let ((_tl3357133647_ (##cdr _e3356933642_))
                                       (_hd3357033645_ (##car _e3356933642_)))
                                   (if (gx#stx-pair? _hd3357033645_)
                                       (let ((_e3357233650_
                                              (gx#stx-e _hd3357033645_)))
                                         (let ((_tl3357433655_
                                                (##cdr _e3357233650_))
                                               (_hd3357333653_
                                                (##car _e3357233650_)))
                                           (if (gx#identifier? _hd3357333653_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd3357333653_)
                                                   (if (gx#stx-pair?
                                                        _tl3357433655_)
                                                       (let ((_e3357533658_
                                                              (gx#stx-e
                                                               _tl3357433655_)))
                                                         (let ((_tl3357733663_
                                                                (##cdr _e3357533658_))
                                                               (_hd3357633661_
                                                                (##car _e3357533658_)))
                                                           (if (gx#stx-null?
                                                                _tl3357733663_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3357133647_)
                           (___kont4130341304_
                            _hd3357633661_
                            _hd3356733637_
                            _hd3356433629_)
                           (___kont4130541306_))
                       (___kont4130541306_))))
               (___kont4130541306_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4130541306_))
                                               (___kont4130541306_))))
                                       (___kont4130541306_))))
                               (___kont4130541306_))
                           (___kont4130541306_))))
                   (___kont4130541306_))
               (___kont4130541306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4130541306_))))
                                       (___kont4130541306_))
                                   (___kont4130541306_)))
                           (___kont4130541306_))))
                   (___kont4130541306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4130541306_))
                                               (___kont4130541306_))
                                           (___kont4130541306_))))
                                   (___kont4130541306_)))))))))
                (_assert-type32379_
                 (lambda (_id33278_ _t33279_)
                   (letrec ((_super-e33281_
                             (lambda (_t33378_)
                               (let ((_tid3337933381_
                                      (##structure-ref
                                       _t33378_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                 (if _tid3337933381_
                                     (let ((_tid33384_ _tid3337933381_))
                                       (gxc#optimizer-resolve-type _tid33384_))
                                     '#f)))))
                     (let _lp33283_ ((_rest33285_ _env-type32361_))
                       (let* ((_rest3328633294_ _rest33285_)
                              (_else3328833302_ (lambda () '#!void))
                              (_K3329033366_
                               (lambda (_rest33305_ _type-info33306_)
                                 (let* ((_type-info3330733319_
                                         _type-info33306_)
                                        (_else3330933327_
                                         (lambda () (_lp33283_ _rest33305_)))
                                        (_K3331133342_
                                         (lambda (_val33330_
                                                  _xt33331_
                                                  _xid33332_)
                                           (if (gx#free-identifier=?
                                                _id33278_
                                                _xid33332_)
                                               (if (eq? _t33279_ _xt33331_)
                                                   _val33330_
                                                   (if _val33330_
                                                       (if (if (##structure-instance-of?
                                                                _t33279_
                                                                'gxc#!struct-type::t)
                                                               (##structure-instance-of?
                                                                _xt33331_
                                                                'gxc#!struct-type::t)
                                                               '#f)
                                                           (let _subtype?33334_ ((_xt33336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          (_super-e33281_ _xt33331_)))
                     (if (not _xt33336_)
                         '#f
                         (if (eq? _xt33336_ _t33279_)
                             '#t
                             (_subtype?33334_ (_super-e33281_ _xt33336_)))))
                   '#f)
               (if (if (##structure-instance-of? _t33279_ 'gxc#!struct-type::t)
                       (##structure-instance-of?
                        _xt33331_
                        'gxc#!struct-type::t)
                       '#f)
                   (let _supertype?33338_ ((_t33340_
                                            (_super-e33281_ _t33279_)))
                     (if (not _t33340_)
                         (_lp33283_ _rest33305_)
                         (if (eq? _t33340_ _xt33331_)
                             '#f
                             (_supertype?33338_ (_super-e33281_ _t33340_)))))
                   (_lp33283_ _rest33305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp33283_ _rest33305_)))))
                                   (if (##pair? _type-info3330733319_)
                                       (let ((_hd3331233345_
                                              (##car _type-info3330733319_))
                                             (_tl3331333347_
                                              (##cdr _type-info3330733319_)))
                                         (let ((_xid33350_ _hd3331233345_))
                                           (if (##pair? _tl3331333347_)
                                               (let ((_hd3331433352_
                                                      (##car _tl3331333347_))
                                                     (_tl3331533354_
                                                      (##cdr _tl3331333347_)))
                                                 (let ((_xt33357_
                                                        _hd3331433352_))
                                                   (if (##pair? _tl3331533354_)
                                                       (let ((_hd3331633359_
                                                              (##car _tl3331533354_))
                                                             (_tl3331733361_
                                                              (##cdr _tl3331533354_)))
                                                         (let ((_val33364_
                                                                _hd3331633359_))
                                                           (if (##null? _tl3331733361_)
                                                               (_K3331133342_
                                                                _val33364_
                                                                _xt33357_
                                                                _xid33350_)
                                                               (_else3330933327_))))
                                                       (_else3330933327_))))
                                               (_else3330933327_))))
                                       (_else3330933327_))))))
                         (if (##pair? _rest3328633294_)
                             (let ((_hd3329133369_ (##car _rest3328633294_))
                                   (_tl3329233371_ (##cdr _rest3328633294_)))
                               (let* ((_type-info33374_ _hd3329133369_)
                                      (_rest33376_ _tl3329233371_))
                                 (_K3329033366_ _rest33376_ _type-info33374_)))
                             (_else3328833302_)))))))
                (_assert-count32380_
                 (lambda (_id33177_ _sym33178_ _count33179_)
                   (let _lp33181_ ((_rest33183_ _env-type32361_))
                     (let* ((_rest3318433192_ _rest33183_)
                            (_else3318633200_ (lambda () '#!void))
                            (_K3318833266_
                             (lambda (_rest33203_ _type-info33204_)
                               (let* ((_type-info3320533219_ _type-info33204_)
                                      (_else3320733227_
                                       (lambda () (_lp33181_ _rest33203_)))
                                      (_K3320933235_
                                       (lambda (_val33230_
                                                _xcount33231_
                                                _xsym33232_
                                                _xid33233_)
                                         (if (if (eq? _sym33178_ _xsym33232_)
                                                 (gx#free-identifier=?
                                                  _id33177_
                                                  _xid33233_)
                                                 '#f)
                                             (if _val33230_
                                                 (fx= _count33179_
                                                      _xcount33231_)
                                                 (if (fx= _count33179_
                                                          _xcount33231_)
                                                     '#f
                                                     (_lp33181_ _rest33203_)))
                                             (_lp33181_ _rest33203_)))))
                                 (if (##pair? _type-info3320533219_)
                                     (let ((_hd3321033238_
                                            (##car _type-info3320533219_))
                                           (_tl3321133240_
                                            (##cdr _type-info3320533219_)))
                                       (let ((_xid33243_ _hd3321033238_))
                                         (if (##pair? _tl3321133240_)
                                             (let ((_hd3321233245_
                                                    (##car _tl3321133240_))
                                                   (_tl3321333247_
                                                    (##cdr _tl3321133240_)))
                                               (let ((_xsym33250_
                                                      _hd3321233245_))
                                                 (if (##pair? _tl3321333247_)
                                                     (let ((_hd3321433252_
                                                            (##car _tl3321333247_))
                                                           (_tl3321533254_
                                                            (##cdr _tl3321333247_)))
                                                       (let ((_xcount33257_
                                                              _hd3321433252_))
                                                         (if (##pair? _tl3321533254_)
                                                             (let ((_hd3321633259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl3321533254_))
                           (_tl3321733261_ (##cdr _tl3321533254_)))
                       (let ((_val33264_ _hd3321633259_))
                         (if (##null? _tl3321733261_)
                             (_K3320933235_
                              _val33264_
                              _xcount33257_
                              _xsym33250_
                              _xid33243_)
                             (_else3320733227_))))
                     (_else3320733227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else3320733227_))))
                                             (_else3320733227_))))
                                     (_else3320733227_))))))
                       (if (##pair? _rest3318433192_)
                           (let ((_hd3318933269_ (##car _rest3318433192_))
                                 (_tl3319033271_ (##cdr _rest3318433192_)))
                             (let* ((_type-info33274_ _hd3318933269_)
                                    (_rest33276_ _tl3319033271_))
                               (_K3318833266_ _rest33276_ _type-info33274_)))
                           (_else3318633200_))))))
                (_assert-eqf32381_
                 (lambda (_id33067_ _sym33068_ _datum33069_)
                   (letrec ((_eqf33071_
                             (lambda (_sym33172_)
                               (let ((_$e33174_ _sym33172_))
                                 (if (eq? 'eq? _$e33174_)
                                     eq?
                                     (if (eq? 'eqv? _$e33174_)
                                         eqv?
                                         (if (eq? 'equal? _$e33174_)
                                             equal?
                                             (if (eq? 'free-identifier=?
                                                      _$e33174_)
                                                 gx#free-identifier=?
                                                 (if (eq? 'stx-eq? _$e33174_)
                                                     gx#stx-eq?
                                                     (gxc#raise-compile-error
                                                      '"Unexpected eqf symbol"
                                                      _body32122_
                                                      _sym33172_))))))))))
                     (let _lp33073_ ((_rest33075_ _env-type32361_))
                       (let* ((_rest3307633084_ _rest33075_)
                              (_else3307833092_ (lambda () '#!void))
                              (_K3308033160_
                               (lambda (_rest33095_ _type-info33096_)
                                 (let* ((_type-info3309733111_
                                         _type-info33096_)
                                        (_else3309933119_
                                         (lambda () (_lp33073_ _rest33095_)))
                                        (_K3310133129_
                                         (lambda (_val33122_
                                                  _xdatum33123_
                                                  _xsym33124_
                                                  _xid33125_)
                                           (if (if (eq? _sym33068_ _xsym33124_)
                                                   (gx#free-identifier=?
                                                    _id33067_
                                                    _xid33125_)
                                                   '#f)
                                               (let ((_=?33127_
                                                      (_eqf33071_ _sym33068_)))
                                                 (if _val33122_
                                                     (_=?33127_
                                                      _datum33069_
                                                      _xdatum33123_)
                                                     (if (_=?33127_
                                                          _datum33069_
                                                          _xdatum33123_)
                                                         '#f
                                                         (_lp33073_
                                                          _rest33095_))))
                                               (_lp33073_ _rest33095_)))))
                                   (if (##pair? _type-info3309733111_)
                                       (let ((_hd3310233132_
                                              (##car _type-info3309733111_))
                                             (_tl3310333134_
                                              (##cdr _type-info3309733111_)))
                                         (let ((_xid33137_ _hd3310233132_))
                                           (if (##pair? _tl3310333134_)
                                               (let ((_hd3310433139_
                                                      (##car _tl3310333134_))
                                                     (_tl3310533141_
                                                      (##cdr _tl3310333134_)))
                                                 (let ((_xsym33144_
                                                        _hd3310433139_))
                                                   (if (##pair? _tl3310533141_)
                                                       (let ((_hd3310633146_
                                                              (##car _tl3310533141_))
                                                             (_tl3310733148_
                                                              (##cdr _tl3310533141_)))
                                                         (let ((_xdatum33151_
                                                                _hd3310633146_))
                                                           (if (##pair? _tl3310733148_)
                                                               (let ((_hd3310833153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _tl3310733148_))
                             (_tl3310933155_ (##cdr _tl3310733148_)))
                         (let ((_val33158_ _hd3310833153_))
                           (if (##null? _tl3310933155_)
                               (_K3310133129_
                                _val33158_
                                _xdatum33151_
                                _xsym33144_
                                _xid33137_)
                               (_else3309933119_))))
                       (_else3309933119_))))
               (_else3309933119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else3309933119_))))
                                       (_else3309933119_))))))
                         (if (##pair? _rest3307633084_)
                             (let ((_hd3308133163_ (##car _rest3307633084_))
                                   (_tl3308233165_ (##cdr _rest3307633084_)))
                               (let* ((_type-info33168_ _hd3308133163_)
                                      (_rest33170_ _tl3308233165_))
                                 (_K3308033160_ _rest33170_ _type-info33168_)))
                             (_else3307833092_)))))))
                (_bind-e__3970439705_
                 (lambda (_bind32970_ _body32971_ _continue32972_)
                   (let _lp32974_ ((_rest32976_ _bind32970_)
                                   (_subst32977_ '())
                                   (_locals32978_ '())
                                   (_env32979_ _env-bind32362_))
                     (let* ((_rest3298032988_ _rest32976_)
                            (_else3298233002_
                             (lambda ()
                               (let* ((_body32996_
                                       (if (null? _subst32977_)
                                           _body32971_
                                           (gxc#apply-expression-subst*
                                            _body32971_
                                            _subst32977_)))
                                      (_body32999_
                                       (_do-bind!32373_
                                        _env32979_
                                        (lambda ()
                                          (_continue32972_ _body32996_)))))
                                 (if (null? _locals32978_)
                                     _body32999_
                                     (cons '%#let-values
                                           (cons _locals32978_
                                                 (cons _body32999_ '())))))))
                            (_K3298433043_
                             (lambda (_rest33005_ _bind33006_)
                               (let* ((_bind3300733014_ _bind33006_)
                                      (_E3300933018_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3300733014_)))
                                      (_K3301033031_
                                       (lambda (_expr33021_ _id33022_)
                                         (let* ((_sexpr33024_
                                                 (gxc#apply-generate-runtime-repr
                                                  _expr33021_))
                                                (_$e33026_
                                                 (assget _sexpr33024_
                                                         _env-bind32362_)))
                                           (if _$e33026_
                                               ((lambda (_xid33029_)
                                                  (_lp32974_
                                                   _rest33005_
                                                   (cons (cons _id33022_
                                                               _xid33029_)
                                                         _subst32977_)
                                                   _locals32978_
                                                   _env32979_))
                                                _$e33026_)
                                               (_lp32974_
                                                _rest33005_
                                                _subst32977_
                                                (cons (cons (cons _id33022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr33021_ '()))
              _locals32978_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _sexpr33024_
                                                            _id33022_)
                                                      _env32979_)))))))
                                 (if (##pair? _bind3300733014_)
                                     (let ((_hd3301133034_
                                            (##car _bind3300733014_))
                                           (_tl3301233036_
                                            (##cdr _bind3300733014_)))
                                       (let* ((_id33039_ _hd3301133034_)
                                              (_expr33041_ _tl3301233036_))
                                         (_K3301033031_
                                          _expr33041_
                                          _id33039_)))
                                     (_E3300933018_))))))
                       (if (##pair? _rest3298032988_)
                           (let ((_hd3298533046_ (##car _rest3298032988_))
                                 (_tl3298633048_ (##cdr _rest3298032988_)))
                             (let* ((_bind33051_ _hd3298533046_)
                                    (_rest33053_ _tl3298633048_))
                               (_K3298433043_ _rest33053_ _bind33051_)))
                           (_else3298233002_))))))
                (_bind-e__0__3970639707_
                 (lambda (_bind33058_ _body33059_)
                   (let ((_continue33061_ _optimize-e32375_))
                     (_bind-e__3970439705_
                      _bind33058_
                      _body33059_
                      _continue33061_))))
                (_bind-e32382_
                 (lambda _g42803_
                   (let ((_g42802_ (length _g42803_)))
                     (cond ((##fx= _g42802_ 2)
                            (apply _bind-e__0__3970639707_ _g42803_))
                           ((##fx= _g42802_ 3)
                            (apply _bind-e__3970439705_ _g42803_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42803_))))))
                (_lookup-block32383_
                 (lambda (_id32965_)
                   (find (lambda (_block32967_)
                           (gx#free-identifier=? (car _block32967_) _id32965_))
                         _blocks32125_)))
                (_inline-block32384_
                 (lambda (_block32841_ _args32842_)
                   (let* ((_kont32844_ (caddr _block32841_))
                          (_g3284632872_
                           (lambda (_g3284732869_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3284732869_)))
                          (_g3284532962_
                           (lambda (_g3284732875_)
                             (if (gx#stx-pair? _g3284732875_)
                                 (let ((_e3285032877_
                                        (gx#stx-e _g3284732875_)))
                                   (let ((_hd3285132880_ (##car _e3285032877_))
                                         (_tl3285232882_
                                          (##cdr _e3285032877_)))
                                     (if (gx#identifier? _hd3285132880_)
                                         (if (gx#stx-eq?
                                              '%#lambda
                                              _hd3285132880_)
                                             (if (gx#stx-pair? _tl3285232882_)
                                                 (let ((_e3285332885_
                                                        (gx#stx-e
                                                         _tl3285232882_)))
                                                   (let ((_hd3285432888_
                                                          (##car _e3285332885_))
                                                         (_tl3285532890_
                                                          (##cdr _e3285332885_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd3285432888_)
                                                         (let ((_g42804_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3285432888_
                         '0)))
                   (begin
                     (let ((_g42805_
                            (if (##values? _g42804_)
                                (##vector-length _g42804_)
                                1)))
                       (if (not (##fx= _g42805_ 2))
                           (error "Context expects 2 values" _g42805_)))
                     (let ((_target3285632893_ (##vector-ref _g42804_ 0))
                           (_tl3285832895_ (##vector-ref _g42804_ 1)))
                       (if (gx#stx-null? _tl3285832895_)
                           (letrec ((_loop3285932898_
                                     (lambda (_hd3285732901_ _id3286332903_)
                                       (if (gx#stx-pair? _hd3285732901_)
                                           (let ((_e3286032906_
                                                  (gx#stx-e _hd3285732901_)))
                                             (let ((_lp-hd3286132909_
                                                    (##car _e3286032906_))
                                                   (_lp-tl3286232911_
                                                    (##cdr _e3286032906_)))
                                               (_loop3285932898_
                                                _lp-tl3286232911_
                                                (cons _lp-hd3286132909_
                                                      _id3286332903_))))
                                           (let ((_id3286432914_
                                                  (reverse _id3286332903_)))
                                             (if (gx#stx-pair? _tl3285532890_)
                                                 (let ((_e3286532917_
                                                        (gx#stx-e
                                                         _tl3285532890_)))
                                                   (let ((_hd3286632920_
                                                          (##car _e3286532917_))
                                                         (_tl3286732922_
                                                          (##cdr _e3286532917_)))
                                                     (if (gx#stx-null?
                                                          _tl3286732922_)
                                                         ((lambda (_L32925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L32926_)
                    (if (null? (begin
                                 '#!void
                                 (foldr1 (lambda (_g3294532948_ _g3294632950_)
                                           (cons _g3294532948_ _g3294632950_))
                                         '()
                                         _L32926_)))
                        _L32925_
                        (let ((_subst32960_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3295232955_
                                                       _g3295332957_)
                                                (cons _g3295232955_
                                                      _g3295332957_))
                                              '()
                                              _L32926_))
                                    _args32842_)))
                          (gxc#apply-expression-subst*
                           _L32925_
                           _subst32960_))))
                  _hd3286632920_
                  _id3286432914_)
                 (_g3284632872_ _g3284732875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3284632872_
                                                  _g3284732875_)))))))
                             (_loop3285932898_ _target3285632893_ '()))
                           (_g3284632872_ _g3284732875_)))))
                 (_g3284632872_ _g3284732875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3284632872_ _g3284732875_))
                                             (_g3284632872_ _g3284732875_))
                                         (_g3284632872_ _g3284732875_))))
                                 (_g3284632872_ _g3284732875_)))))
                     (_g3284532962_ _kont32844_))))
                (_nonlinear-block?32385_
                 (lambda (_block32390_)
                   (letrec ((_nonlinear-expr?32392_
                             (lambda (_expr32500_)
                               (let* ((___stx4176141762_ _expr32500_)
                                      (_g3250632572_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4176141762_))))
                                 (let ((___kont4176341764_ (lambda () '#t))
                                       (___kont4176541766_
                                        (lambda (_L32771_)
                                          (let* ((___stx4174341744_ _L32771_)
                                                 (_g3278932798_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx4174341744_))))
                                            (let ((___kont4174541746_
                                                   (lambda () '#f))
                                                  (___kont4174741748_
                                                   (lambda () '#t)))
                                              (if (gx#stx-pair?
                                                   ___stx4174341744_)
                                                  (let ((_e3279132810_
                                                         (gx#stx-e
                                                          ___stx4174341744_)))
                                                    (let ((_tl3279332815_
                                                           (##cdr _e3279132810_))
                                                          (_hd3279232813_
                                                           (##car _e3279132810_)))
                                                      (if (gx#identifier?
                                                           _hd3279232813_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd3279232813_)
                                                              (___kont4174541746_)
                                                              (___kont4174741748_))
                                                          (___kont4174741748_))))
                                                  (___kont4174741748_))))))
                                       (___kont4176941770_
                                        (lambda (_L32669_)
                                          (_nonlinear-expr?32392_ _L32669_)))
                                       (___kont4177141772_
                                        (lambda (_L32616_ _L32617_ _L32618_)
                                          (let ((_$e32637_
                                                 (_nonlinear-expr?32392_
                                                  _L32617_)))
                                            (if _$e32637_
                                                _$e32637_
                                                (_nonlinear-expr?32392_
                                                 _L32616_)))))
                                       (___kont4177341774_ (lambda () '#f)))
                                   (let* ((___match4182441825_
                                           (lambda (_e3254432645_
                                                    _hd3254532648_
                                                    _tl3254632650_
                                                    _e3254732653_
                                                    _hd3254832656_
                                                    _tl3254932658_)
                                             (if (gx#stx-pair? _tl3254932658_)
                                                 (let ((_e3255032661_
                                                        (gx#stx-e
                                                         _tl3254932658_)))
                                                   (let ((_tl3255232666_
                                                          (##cdr _e3255032661_))
                                                         (_hd3255132664_
                                                          (##car _e3255032661_)))
                                                     (if (gx#stx-null?
                                                          _tl3255232666_)
                                                         (___kont4176941770_
                                                          _hd3255132664_)
                                                         (___kont4177341774_))))
                                                 (___kont4177341774_))))
                                          (___match4180841809_
                                           (lambda (_e3251232687_
                                                    _hd3251332690_
                                                    _tl3251432692_
                                                    _e3251532695_
                                                    _hd3251632698_
                                                    _tl3251732700_
                                                    ___splice4176741768_
                                                    _target3251832703_
                                                    _tl3252032705_)
                                             (letrec ((_loop3252132708_
                                                       (lambda (_hd3251932711_)
                                                         (if (gx#stx-pair?
                                                              _hd3251932711_)
                                                             (let ((_e3252232714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3251932711_)))
                       (let ((_lp-tl3252432719_ (##cdr _e3252232714_))
                             (_lp-hd3252332717_ (##car _e3252232714_)))
                         (if (gx#stx-pair? _lp-hd3252332717_)
                             (let ((_e3252532722_
                                    (gx#stx-e _lp-hd3252332717_)))
                               (let ((_tl3252732727_ (##cdr _e3252532722_))
                                     (_hd3252632725_ (##car _e3252532722_)))
                                 (if (gx#stx-pair? _hd3252632725_)
                                     (let ((_e3252832730_
                                            (gx#stx-e _hd3252632725_)))
                                       (let ((_tl3253032735_
                                              (##cdr _e3252832730_))
                                             (_hd3252932733_
                                              (##car _e3252832730_)))
                                         (if (gx#stx-null? _tl3253032735_)
                                             (if (gx#stx-pair? _tl3252732727_)
                                                 (let ((_e3253132738_
                                                        (gx#stx-e
                                                         _tl3252732727_)))
                                                   (let ((_tl3253332743_
                                                          (##cdr _e3253132738_))
                                                         (_hd3253232741_
                                                          (##car _e3253132738_)))
                                                     (if (gx#stx-pair?
                                                          _hd3253232741_)
                                                         (let ((_e3253432746_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3253232741_)))
                   (let ((_tl3253632751_ (##cdr _e3253432746_))
                         (_hd3253532749_ (##car _e3253432746_)))
                     (if (gx#identifier? _hd3253532749_)
                         (if (gx#stx-eq? '%#ref _hd3253532749_)
                             (if (gx#stx-pair? _tl3253632751_)
                                 (let ((_e3253732754_
                                        (gx#stx-e _tl3253632751_)))
                                   (let ((_tl3253932759_ (##cdr _e3253732754_))
                                         (_hd3253832757_
                                          (##car _e3253732754_)))
                                     (if (gx#stx-null? _tl3253932759_)
                                         (if (gx#stx-null? _tl3253332743_)
                                             (_loop3252132708_
                                              _lp-tl3252432719_)
                                             (___match4182441825_
                                              _e3251232687_
                                              _hd3251332690_
                                              _tl3251432692_
                                              _e3251532695_
                                              _hd3251632698_
                                              _tl3251732700_))
                                         (___match4182441825_
                                          _e3251232687_
                                          _hd3251332690_
                                          _tl3251432692_
                                          _e3251532695_
                                          _hd3251632698_
                                          _tl3251732700_))))
                                 (___match4182441825_
                                  _e3251232687_
                                  _hd3251332690_
                                  _tl3251432692_
                                  _e3251532695_
                                  _hd3251632698_
                                  _tl3251732700_))
                             (___match4182441825_
                              _e3251232687_
                              _hd3251332690_
                              _tl3251432692_
                              _e3251532695_
                              _hd3251632698_
                              _tl3251732700_))
                         (___match4182441825_
                          _e3251232687_
                          _hd3251332690_
                          _tl3251432692_
                          _e3251532695_
                          _hd3251632698_
                          _tl3251732700_))))
                 (___match4182441825_
                  _e3251232687_
                  _hd3251332690_
                  _tl3251432692_
                  _e3251532695_
                  _hd3251632698_
                  _tl3251732700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___match4182441825_
                                                  _e3251232687_
                                                  _hd3251332690_
                                                  _tl3251432692_
                                                  _e3251532695_
                                                  _hd3251632698_
                                                  _tl3251732700_))
                                             (___match4182441825_
                                              _e3251232687_
                                              _hd3251332690_
                                              _tl3251432692_
                                              _e3251532695_
                                              _hd3251632698_
                                              _tl3251732700_))))
                                     (___match4182441825_
                                      _e3251232687_
                                      _hd3251332690_
                                      _tl3251432692_
                                      _e3251532695_
                                      _hd3251632698_
                                      _tl3251732700_))))
                             (___match4182441825_
                              _e3251232687_
                              _hd3251332690_
                              _tl3251432692_
                              _e3251532695_
                              _hd3251632698_
                              _tl3251732700_))))
                     (let ()
                       (if (gx#stx-pair? _tl3251732700_)
                           (let ((_e3254032763_ (gx#stx-e _tl3251732700_)))
                             (let ((_tl3254232768_ (##cdr _e3254032763_))
                                   (_hd3254132766_ (##car _e3254032763_)))
                               (if (gx#stx-null? _tl3254232768_)
                                   (___kont4176541766_ _hd3254132766_)
                                   (___kont4177341774_))))
                           (___kont4177341774_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop3252132708_
                                                _target3251832703_)))))
                                     (if (gx#stx-pair? ___stx4176141762_)
                                         (let ((_e3250832828_
                                                (gx#stx-e ___stx4176141762_)))
                                           (let ((_tl3251032833_
                                                  (##cdr _e3250832828_))
                                                 (_hd3250932831_
                                                  (##car _e3250832828_)))
                                             (if (gx#identifier?
                                                  _hd3250932831_)
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3250932831_)
                                                     (___kont4176341764_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _hd3250932831_)
                                                         (if (gx#stx-pair?
                                                              _tl3251032833_)
                                                             (let ((_e3251532695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3251032833_)))
                       (let ((_tl3251732700_ (##cdr _e3251532695_))
                             (_hd3251632698_ (##car _e3251532695_)))
                         (if (gx#stx-pair/null? _hd3251632698_)
                             (let ((___splice4176741768_
                                    (gx#syntax-split-splice
                                     _hd3251632698_
                                     '0)))
                               (let ((_tl3252032705_
                                      (##vector-ref ___splice4176741768_ '1))
                                     (_target3251832703_
                                      (##vector-ref ___splice4176741768_ '0)))
                                 (if (gx#stx-null? _tl3252032705_)
                                     (___match4180841809_
                                      _e3250832828_
                                      _hd3250932831_
                                      _tl3251032833_
                                      _e3251532695_
                                      _hd3251632698_
                                      _tl3251732700_
                                      ___splice4176741768_
                                      _target3251832703_
                                      _tl3252032705_)
                                     (if (gx#stx-pair? _tl3251732700_)
                                         (let ((_e3255032661_
                                                (gx#stx-e _tl3251732700_)))
                                           (let ((_tl3255232666_
                                                  (##cdr _e3255032661_))
                                                 (_hd3255132664_
                                                  (##car _e3255032661_)))
                                             (if (gx#stx-null? _tl3255232666_)
                                                 (___kont4176941770_
                                                  _hd3255132664_)
                                                 (___kont4177341774_))))
                                         (___kont4177341774_)))))
                             (if (gx#stx-pair? _tl3251732700_)
                                 (let ((_e3255032661_
                                        (gx#stx-e _tl3251732700_)))
                                   (let ((_tl3255232666_ (##cdr _e3255032661_))
                                         (_hd3255132664_
                                          (##car _e3255032661_)))
                                     (if (gx#stx-null? _tl3255232666_)
                                         (___kont4176941770_ _hd3255132664_)
                                         (___kont4177341774_))))
                                 (___kont4177341774_)))))
                     (___kont4177341774_))
                 (if (gx#stx-eq? '%#if _hd3250932831_)
                     (if (gx#stx-pair? _tl3251032833_)
                         (let ((_e3255932592_ (gx#stx-e _tl3251032833_)))
                           (let ((_tl3256132597_ (##cdr _e3255932592_))
                                 (_hd3256032595_ (##car _e3255932592_)))
                             (if (gx#stx-pair? _tl3256132597_)
                                 (let ((_e3256232600_
                                        (gx#stx-e _tl3256132597_)))
                                   (let ((_tl3256432605_ (##cdr _e3256232600_))
                                         (_hd3256332603_
                                          (##car _e3256232600_)))
                                     (if (gx#stx-pair? _tl3256432605_)
                                         (let ((_e3256532608_
                                                (gx#stx-e _tl3256432605_)))
                                           (let ((_tl3256732613_
                                                  (##cdr _e3256532608_))
                                                 (_hd3256632611_
                                                  (##car _e3256532608_)))
                                             (if (gx#stx-null? _tl3256732613_)
                                                 (___kont4177141772_
                                                  _hd3256632611_
                                                  _hd3256332603_
                                                  _hd3256032595_)
                                                 (___kont4177341774_))))
                                         (___kont4177341774_))))
                                 (___kont4177341774_))))
                         (___kont4177341774_))
                     (___kont4177341774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4177341774_))))
                                         (___kont4177341774_))))))))
                     (let* ((_kont32394_ (caddr _block32390_))
                            (_g3239632422_
                             (lambda (_g3239732419_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3239732419_)))
                            (_g3239532497_
                             (lambda (_g3239732425_)
                               (if (gx#stx-pair? _g3239732425_)
                                   (let ((_e3240032427_
                                          (gx#stx-e _g3239732425_)))
                                     (let ((_hd3240132430_
                                            (##car _e3240032427_))
                                           (_tl3240232432_
                                            (##cdr _e3240032427_)))
                                       (if (gx#identifier? _hd3240132430_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd3240132430_)
                                               (if (gx#stx-pair?
                                                    _tl3240232432_)
                                                   (let ((_e3240332435_
                                                          (gx#stx-e
                                                           _tl3240232432_)))
                                                     (let ((_hd3240432438_
                                                            (##car _e3240332435_))
                                                           (_tl3240532440_
                                                            (##cdr _e3240332435_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd3240432438_)
                                                           (let ((_g42806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd3240432438_ '0)))
                     (begin
                       (let ((_g42807_
                              (if (##values? _g42806_)
                                  (##vector-length _g42806_)
                                  1)))
                         (if (not (##fx= _g42807_ 2))
                             (error "Context expects 2 values" _g42807_)))
                       (let ((_target3240632443_ (##vector-ref _g42806_ 0))
                             (_tl3240832445_ (##vector-ref _g42806_ 1)))
                         (if (gx#stx-null? _tl3240832445_)
                             (letrec ((_loop3240932448_
                                       (lambda (_hd3240732451_ _id3241332453_)
                                         (if (gx#stx-pair? _hd3240732451_)
                                             (let ((_e3241032456_
                                                    (gx#stx-e _hd3240732451_)))
                                               (let ((_lp-hd3241132459_
                                                      (##car _e3241032456_))
                                                     (_lp-tl3241232461_
                                                      (##cdr _e3241032456_)))
                                                 (_loop3240932448_
                                                  _lp-tl3241232461_
                                                  (cons _lp-hd3241132459_
                                                        _id3241332453_))))
                                             (let ((_id3241432464_
                                                    (reverse _id3241332453_)))
                                               (if (gx#stx-pair?
                                                    _tl3240532440_)
                                                   (let ((_e3241532467_
                                                          (gx#stx-e
                                                           _tl3240532440_)))
                                                     (let ((_hd3241632470_
                                                            (##car _e3241532467_))
                                                           (_tl3241732472_
                                                            (##cdr _e3241532467_)))
                                                       (if (gx#stx-null?
                                                            _tl3241732472_)
                                                           ((lambda (_L32475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L32476_)
                      (_nonlinear-expr?32392_ _L32475_))
                    _hd3241632470_
                    _id3241432464_)
                   (_g3239632422_ _g3239732425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3239632422_
                                                    _g3239732425_)))))))
                               (_loop3240932448_ _target3240632443_ '()))
                             (_g3239632422_ _g3239732425_)))))
                   (_g3239632422_ _g3239732425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3239632422_
                                                    _g3239732425_))
                                               (_g3239632422_ _g3239732425_))
                                           (_g3239632422_ _g3239732425_))))
                                   (_g3239632422_ _g3239732425_)))))
                       (_g3239532497_ _kont32394_))))))
        (_do-assert32364_
         _assert32123_
         (lambda ()
           (_do-bind32371_
            _bind32124_
            (lambda ()
              (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                  (_do-splice!32374_
                   (lambda () (_optimize-e32375_ _body32122_)))
                  (_optimize-e32375_ _body32122_)))))))))
  (define gxc#optimize-match-prune-blocks
    (lambda (_blocks32034_ _konts32035_)
      (letrec* ((_rtab32037_ (make-hash-table-eq)))
        (begin
          (for-each
           (lambda (_block32039_)
             (gxc#apply-collect-runtime-refs (caddr _block32039_) _rtab32037_))
           _konts32035_)
          (let _lp32041_ ((_rest32043_ _blocks32034_) (_r32044_ '()))
            (let* ((_rest3204532053_ _rest32043_)
                   (_else3204732061_ (lambda () (reverse _r32044_)))
                   (_K3204932110_
                    (lambda (_rest32064_ _block32065_)
                      (let* ((_block3206632077_ _block32065_)
                             (_E3206832081_
                              (lambda ()
                                (error '"No clause matching"
                                       _block3206632077_)))
                             (_K3206932088_
                              (lambda (_kont32084_ _type32085_ _name32086_)
                                (if (table-ref
                                     _rtab32037_
                                     (gxc#identifier-symbol _name32086_)
                                     '#f)
                                    (begin
                                      (gxc#apply-collect-runtime-refs
                                       _kont32084_
                                       _rtab32037_)
                                      (_lp32041_
                                       _rest32064_
                                       (cons _block32065_ _r32044_)))
                                    (_lp32041_ _rest32064_ _r32044_)))))
                        (if (##pair? _block3206632077_)
                            (let ((_hd3207032091_ (##car _block3206632077_))
                                  (_tl3207132093_ (##cdr _block3206632077_)))
                              (let ((_name32096_ _hd3207032091_))
                                (if (##pair? _tl3207132093_)
                                    (let ((_hd3207232098_
                                           (##car _tl3207132093_))
                                          (_tl3207332100_
                                           (##cdr _tl3207132093_)))
                                      (let ((_type32103_ _hd3207232098_))
                                        (if (##pair? _tl3207332100_)
                                            (let* ((_hd3207432105_
                                                    (##car _tl3207332100_))
                                                   (_kont32108_
                                                    _hd3207432105_))
                                              (_K3206932088_
                                               _kont32108_
                                               _type32103_
                                               _name32096_))
                                            (_E3206832081_))))
                                    (_E3206832081_))))
                            (_E3206832081_))))))
              (if (##pair? _rest3204532053_)
                  (let ((_hd3205032113_ (##car _rest3204532053_))
                        (_tl3205132115_ (##cdr _rest3204532053_)))
                    (let* ((_block32118_ _hd3205032113_)
                           (_rest32120_ _tl3205132115_))
                      (_K3204932110_ _rest32120_ _block32118_)))
                  (_else3204732061_))))))))
  (define gxc#optimize-match-fuse-restart-blocks
    (lambda (_blocks31958_ _konts31959_)
      (let* ((_blocks3196031976_ _blocks31958_)
             (_else3196231984_ (lambda () _blocks31958_))
             (_K3196432002_
              (lambda (_rest31987_ _kont31988_ _name31989_)
                (letrec* ((_rtab31991_ (make-hash-table-eq)))
                  (begin
                    (for-each
                     (lambda (_block31993_)
                       (gxc#apply-collect-runtime-refs
                        (caddr _block31993_)
                        _rtab31991_))
                     _konts31959_)
                    (if (fx= (table-ref
                              _rtab31991_
                              (gxc#identifier-symbol _name31989_))
                             '1)
                        (let* ((_rblock31997_
                                (find (lambda (_block31995_)
                                        (gxc#apply-find-var-refs
                                         (caddr _block31995_)
                                         (cons _name31989_ '())))
                                      _konts31959_))
                               (_assert31999_
                                (gxc#optimize-match-assert-restart
                                 _rblock31997_
                                 _name31989_)))
                          (cons (cons _name31989_
                                      (cons 'restart:
                                            (cons _kont31988_
                                                  (cons _assert31999_ '()))))
                                _rest31987_))
                        _blocks31958_))))))
        (if (##pair? _blocks3196031976_)
            (let ((_hd3196532005_ (##car _blocks3196031976_))
                  (_tl3196632007_ (##cdr _blocks3196031976_)))
              (if (##pair? _hd3196532005_)
                  (let ((_hd3196732010_ (##car _hd3196532005_))
                        (_tl3196832012_ (##cdr _hd3196532005_)))
                    (let ((_name32015_ _hd3196732010_))
                      (if (##pair? _tl3196832012_)
                          (let ((_hd3196932017_ (##car _tl3196832012_))
                                (_tl3197032019_ (##cdr _tl3196832012_)))
                            (if (##eq? _hd3196932017_ 'restart:)
                                (if (##pair? _tl3197032019_)
                                    (let ((_hd3197132022_
                                           (##car _tl3197032019_))
                                          (_tl3197232024_
                                           (##cdr _tl3197032019_)))
                                      (let ((_kont32027_ _hd3197132022_))
                                        (if (##pair? _tl3197232024_)
                                            (let ((_tl3197432029_
                                                   (##cdr _tl3197232024_)))
                                              (if (##null? _tl3197432029_)
                                                  (let ((_rest32032_
                                                         _tl3196632007_))
                                                    (_K3196432002_
                                                     _rest32032_
                                                     _kont32027_
                                                     _name32015_))
                                                  (_else3196231984_)))
                                            (_else3196231984_))))
                                    (_else3196231984_))
                                (_else3196231984_)))
                          (_else3196231984_))))
                  (_else3196231984_)))
            (_else3196231984_)))))
  (define gxc#optimize-match-assert-restart
    (lambda (_block31354_ _name31355_)
      (letrec ((_assert-restart31357_
                (lambda (_expr31513_ _assert31514_)
                  (let* ((___stx4186541866_ _expr31513_)
                         (_g3152031617_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4186541866_))))
                    (let ((___kont4186741868_
                           (lambda (_L31933_ _L31934_ _L31935_)
                             (let ((_$e31952_
                                    (_assert-restart31357_
                                     _L31934_
                                     (cons (cons _L31935_ '#t)
                                           _assert31514_))))
                               (if _$e31952_
                                   _$e31952_
                                   (_assert-restart31357_
                                    _L31933_
                                    (cons (cons _L31935_ '#f)
                                          _assert31514_))))))
                          (___kont4186941870_
                           (lambda (_L31881_)
                             (if (gx#free-identifier=? _L31881_ _name31355_)
                                 _assert31514_
                                 '#f)))
                          (___kont4187141872_
                           (lambda (_L31831_)
                             (_assert-restart31357_ _L31831_ _assert31514_)))
                          (___kont4187341874_
                           (lambda (_L31757_
                                    _L31758_
                                    _L31759_
                                    _L31760_
                                    _L31761_)
                             (_assert-restart31357_ _L31759_ _assert31514_)))
                          (___kont4187941880_ (lambda () '#f)))
                      (let ((___match4203442035_
                             (lambda (_e3156531629_
                                      _hd3156631632_
                                      _tl3156731634_
                                      _e3156831637_
                                      _hd3156931640_
                                      _tl3157031642_
                                      _e3157131645_
                                      _hd3157231648_
                                      _tl3157331650_
                                      _e3157431653_
                                      _hd3157531656_
                                      _tl3157631658_
                                      _e3157731661_
                                      _hd3157831664_
                                      _tl3157931666_
                                      _e3158031669_
                                      _hd3158131672_
                                      _tl3158231674_
                                      _e3158331677_
                                      _hd3158431680_
                                      _tl3158531682_
                                      _e3158631685_
                                      _hd3158731688_
                                      _tl3158831690_
                                      ___splice4187541876_
                                      _target3158931693_
                                      _tl3159131695_)
                               (letrec ((_loop3159231698_
                                         (lambda (_hd3159031701_
                                                  _id3159631703_)
                                           (if (gx#stx-pair? _hd3159031701_)
                                               (let ((_e3159331706_
                                                      (gx#stx-e
                                                       _hd3159031701_)))
                                                 (let ((_lp-tl3159531711_
                                                        (##cdr _e3159331706_))
                                                       (_lp-hd3159431709_
                                                        (##car _e3159331706_)))
                                                   (_loop3159231698_
                                                    _lp-tl3159531711_
                                                    (cons _lp-hd3159431709_
                                                          _id3159631703_))))
                                               (let ((_id3159731714_
                                                      (reverse _id3159631703_)))
                                                 (if (gx#stx-pair?
                                                      _tl3158831690_)
                                                     (let ((_e3159831717_
                                                            (gx#stx-e
                                                             _tl3158831690_)))
                                                       (let ((_tl3160031722_
                                                              (##cdr _e3159831717_))
                                                             (_hd3159931720_
                                                              (##car _e3159831717_)))
                                                         (if (gx#stx-null?
                                                              _tl3160031722_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl3158231674_)
                         (if (gx#stx-pair/null? _tl3157331650_)
                             (let ((___splice4187741878_
                                    (gx#syntax-split-splice
                                     _tl3157331650_
                                     '0)))
                               (let ((_tl3160331727_
                                      (##vector-ref ___splice4187741878_ '1))
                                     (_target3160131725_
                                      (##vector-ref ___splice4187741878_ '0)))
                                 (if (gx#stx-null? _tl3160331727_)
                                     (letrec ((_loop3160431730_
                                               (lambda (_hd3160231733_
                                                        _bind3160831735_)
                                                 (if (gx#stx-pair?
                                                      _hd3160231733_)
                                                     (let ((_e3160531738_
                                                            (gx#stx-e
                                                             _hd3160231733_)))
                                                       (let ((_lp-tl3160731743_
                                                              (##cdr _e3160531738_))
                                                             (_lp-hd3160631741_
                                                              (##car _e3160531738_)))
                                                         (_loop3160431730_
                                                          _lp-tl3160731743_
                                                          (cons _lp-hd3160631741_
                                                                _bind3160831735_))))
                                                     (let ((_bind3160931746_
                                                            (reverse _bind3160831735_)))
                                                       (if (gx#stx-pair?
                                                            _tl3157031642_)
                                                           (let ((_e3161031749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3157031642_)))
                     (let ((_tl3161231754_ (##cdr _e3161031749_))
                           (_hd3161131752_ (##car _e3161031749_)))
                       (if (gx#stx-null? _tl3161231754_)
                           (___kont4187341874_
                            _hd3161131752_
                            _bind3160931746_
                            _hd3159931720_
                            _id3159731714_
                            _hd3157831664_)
                           (___kont4187941880_))))
                   (___kont4187941880_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3160431730_
                                        _target3160131725_
                                        '()))
                                     (___kont4187941880_))))
                             (___kont4187941880_))
                         (___kont4187941880_))
                     (___kont4187941880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4187941880_)))))))
                                 (_loop3159231698_ _target3158931693_ '())))))
                        (if (gx#stx-pair? ___stx4186541866_)
                            (let ((_e3152531901_ (gx#stx-e ___stx4186541866_)))
                              (let ((_tl3152731906_ (##cdr _e3152531901_))
                                    (_hd3152631904_ (##car _e3152531901_)))
                                (if (gx#identifier? _hd3152631904_)
                                    (if (gx#stx-eq? '%#if _hd3152631904_)
                                        (if (gx#stx-pair? _tl3152731906_)
                                            (let ((_e3152831909_
                                                   (gx#stx-e _tl3152731906_)))
                                              (let ((_tl3153031914_
                                                     (##cdr _e3152831909_))
                                                    (_hd3152931912_
                                                     (##car _e3152831909_)))
                                                (if (gx#stx-pair?
                                                     _tl3153031914_)
                                                    (let ((_e3153131917_
                                                           (gx#stx-e
                                                            _tl3153031914_)))
                                                      (let ((_tl3153331922_
                                                             (##cdr _e3153131917_))
                                                            (_hd3153231920_
                                                             (##car _e3153131917_)))
                                                        (if (gx#stx-pair?
                                                             _tl3153331922_)
                                                            (let ((_e3153431925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3153331922_)))
                      (let ((_tl3153631930_ (##cdr _e3153431925_))
                            (_hd3153531928_ (##car _e3153431925_)))
                        (if (gx#stx-null? _tl3153631930_)
                            (___kont4186741868_
                             _hd3153531928_
                             _hd3153231920_
                             _hd3152931912_)
                            (___kont4187941880_))))
                    (___kont4187941880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4187941880_))))
                                            (___kont4187941880_))
                                        (if (gx#stx-eq? '%#call _hd3152631904_)
                                            (if (gx#stx-pair? _tl3152731906_)
                                                (let ((_e3154131857_
                                                       (gx#stx-e
                                                        _tl3152731906_)))
                                                  (let ((_tl3154331862_
                                                         (##cdr _e3154131857_))
                                                        (_hd3154231860_
                                                         (##car _e3154131857_)))
                                                    (if (gx#stx-pair?
                                                         _hd3154231860_)
                                                        (let ((_e3154431865_
                                                               (gx#stx-e
                                                                _hd3154231860_)))
                                                          (let ((_tl3154631870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3154431865_))
                        (_hd3154531868_ (##car _e3154431865_)))
                    (if (gx#identifier? _hd3154531868_)
                        (if (gx#stx-eq? '%#ref _hd3154531868_)
                            (if (gx#stx-pair? _tl3154631870_)
                                (let ((_e3154731873_
                                       (gx#stx-e _tl3154631870_)))
                                  (let ((_tl3154931878_ (##cdr _e3154731873_))
                                        (_hd3154831876_ (##car _e3154731873_)))
                                    (if (gx#stx-null? _tl3154931878_)
                                        (___kont4186941870_ _hd3154831876_)
                                        (___kont4187941880_))))
                                (___kont4187941880_))
                            (___kont4187941880_))
                        (___kont4187941880_))))
                (___kont4187941880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4187941880_))
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3152631904_)
                                                (if (gx#stx-pair?
                                                     _tl3152731906_)
                                                    (let ((_e3155431815_
                                                           (gx#stx-e
                                                            _tl3152731906_)))
                                                      (let ((_tl3155631820_
                                                             (##cdr _e3155431815_))
                                                            (_hd3155531818_
                                                             (##car _e3155431815_)))
                                                        (if (gx#stx-pair?
                                                             _tl3155631820_)
                                                            (let ((_e3155731823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3155631820_)))
                      (let ((_tl3155931828_ (##cdr _e3155731823_))
                            (_hd3155831826_ (##car _e3155731823_)))
                        (if (gx#stx-null? _tl3155931828_)
                            (___kont4187141872_ _hd3155831826_)
                            (___kont4187941880_))))
                    (___kont4187941880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4187941880_))
                                                (if (gx#stx-eq?
                                                     '%#letrec-values
                                                     _hd3152631904_)
                                                    (if (gx#stx-pair?
                                                         _tl3152731906_)
                                                        (let ((_e3156831637_
                                                               (gx#stx-e
                                                                _tl3152731906_)))
                                                          (let ((_tl3157031642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3156831637_))
                        (_hd3156931640_ (##car _e3156831637_)))
                    (if (gx#stx-pair? _hd3156931640_)
                        (let ((_e3157131645_ (gx#stx-e _hd3156931640_)))
                          (let ((_tl3157331650_ (##cdr _e3157131645_))
                                (_hd3157231648_ (##car _e3157131645_)))
                            (if (gx#stx-pair? _hd3157231648_)
                                (let ((_e3157431653_
                                       (gx#stx-e _hd3157231648_)))
                                  (let ((_tl3157631658_ (##cdr _e3157431653_))
                                        (_hd3157531656_ (##car _e3157431653_)))
                                    (if (gx#stx-pair? _hd3157531656_)
                                        (let ((_e3157731661_
                                               (gx#stx-e _hd3157531656_)))
                                          (let ((_tl3157931666_
                                                 (##cdr _e3157731661_))
                                                (_hd3157831664_
                                                 (##car _e3157731661_)))
                                            (if (gx#stx-null? _tl3157931666_)
                                                (if (gx#stx-pair?
                                                     _tl3157631658_)
                                                    (let ((_e3158031669_
                                                           (gx#stx-e
                                                            _tl3157631658_)))
                                                      (let ((_tl3158231674_
                                                             (##cdr _e3158031669_))
                                                            (_hd3158131672_
                                                             (##car _e3158031669_)))
                                                        (if (gx#stx-pair?
                                                             _hd3158131672_)
                                                            (let ((_e3158331677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3158131672_)))
                      (let ((_tl3158531682_ (##cdr _e3158331677_))
                            (_hd3158431680_ (##car _e3158331677_)))
                        (if (gx#identifier? _hd3158431680_)
                            (if (gx#stx-eq? '%#lambda _hd3158431680_)
                                (if (gx#stx-pair? _tl3158531682_)
                                    (let ((_e3158631685_
                                           (gx#stx-e _tl3158531682_)))
                                      (let ((_tl3158831690_
                                             (##cdr _e3158631685_))
                                            (_hd3158731688_
                                             (##car _e3158631685_)))
                                        (if (gx#stx-pair/null? _hd3158731688_)
                                            (let ((___splice4187541876_
                                                   (gx#syntax-split-splice
                                                    _hd3158731688_
                                                    '0)))
                                              (let ((_tl3159131695_
                                                     (##vector-ref
                                                      ___splice4187541876_
                                                      '1))
                                                    (_target3158931693_
                                                     (##vector-ref
                                                      ___splice4187541876_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3159131695_)
                                                    (___match4203442035_
                                                     _e3152531901_
                                                     _hd3152631904_
                                                     _tl3152731906_
                                                     _e3156831637_
                                                     _hd3156931640_
                                                     _tl3157031642_
                                                     _e3157131645_
                                                     _hd3157231648_
                                                     _tl3157331650_
                                                     _e3157431653_
                                                     _hd3157531656_
                                                     _tl3157631658_
                                                     _e3157731661_
                                                     _hd3157831664_
                                                     _tl3157931666_
                                                     _e3158031669_
                                                     _hd3158131672_
                                                     _tl3158231674_
                                                     _e3158331677_
                                                     _hd3158431680_
                                                     _tl3158531682_
                                                     _e3158631685_
                                                     _hd3158731688_
                                                     _tl3158831690_
                                                     ___splice4187541876_
                                                     _target3158931693_
                                                     _tl3159131695_)
                                                    (___kont4187941880_))))
                                            (___kont4187941880_))))
                                    (___kont4187941880_))
                                (___kont4187941880_))
                            (___kont4187941880_))))
                    (___kont4187941880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4187941880_))
                                                (___kont4187941880_))))
                                        (___kont4187941880_))))
                                (___kont4187941880_))))
                        (___kont4187941880_))))
                (___kont4187941880_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4187941880_)))))
                                    (___kont4187941880_))))
                            (___kont4187941880_))))))))
        (let* ((_block3135831371_ _block31354_)
               (_E3136031375_
                (lambda () (error '"No clause matching" _block3135831371_)))
               (_K3136131488_
                (lambda (_maybe-bind31378_ _assert31379_ _kont31380_)
                  (let* ((_g3138231408_
                          (lambda (_g3138331405_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3138331405_)))
                         (_g3138131485_
                          (lambda (_g3138331411_)
                            (if (gx#stx-pair? _g3138331411_)
                                (let ((_e3138631413_ (gx#stx-e _g3138331411_)))
                                  (let ((_hd3138731416_ (##car _e3138631413_))
                                        (_tl3138831418_ (##cdr _e3138631413_)))
                                    (if (gx#identifier? _hd3138731416_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3138731416_)
                                            (if (gx#stx-pair? _tl3138831418_)
                                                (let ((_e3138931421_
                                                       (gx#stx-e
                                                        _tl3138831418_)))
                                                  (let ((_hd3139031424_
                                                         (##car _e3138931421_))
                                                        (_tl3139131426_
                                                         (##cdr _e3138931421_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3139031424_)
                                                        (let ((_g42808_
                                                               (gx#syntax-split-splice
                                                                _hd3139031424_
                                                                '0)))
                                                          (begin
                                                            (let ((_g42809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g42808_)
                               (##vector-length _g42808_)
                               1)))
                      (if (not (##fx= _g42809_ 2))
                          (error "Context expects 2 values" _g42809_)))
                    (let ((_target3139231429_ (##vector-ref _g42808_ 0))
                          (_tl3139431431_ (##vector-ref _g42808_ 1)))
                      (if (gx#stx-null? _tl3139431431_)
                          (letrec ((_loop3139531434_
                                    (lambda (_hd3139331437_ _id3139931439_)
                                      (if (gx#stx-pair? _hd3139331437_)
                                          (let ((_e3139631442_
                                                 (gx#stx-e _hd3139331437_)))
                                            (let ((_lp-hd3139731445_
                                                   (##car _e3139631442_))
                                                  (_lp-tl3139831447_
                                                   (##cdr _e3139631442_)))
                                              (_loop3139531434_
                                               _lp-tl3139831447_
                                               (cons _lp-hd3139731445_
                                                     _id3139931439_))))
                                          (let ((_id3140031450_
                                                 (reverse _id3139931439_)))
                                            (if (gx#stx-pair? _tl3139131426_)
                                                (let ((_e3140131453_
                                                       (gx#stx-e
                                                        _tl3139131426_)))
                                                  (let ((_hd3140231456_
                                                         (##car _e3140131453_))
                                                        (_tl3140331458_
                                                         (##cdr _e3140131453_)))
                                                    (if (gx#stx-null?
                                                         _tl3140331458_)
                                                        ((lambda (_L31461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L31462_)
                   (_assert-restart31357_ _L31461_ _assert31379_))
                 _hd3140231456_
                 _id3140031450_)
                (_g3138231408_ _g3138331411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3138231408_
                                                 _g3138331411_)))))))
                            (_loop3139531434_ _target3139231429_ '()))
                          (_g3138231408_ _g3138331411_)))))
                (_g3138231408_ _g3138331411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3138231408_ _g3138331411_))
                                            (_g3138231408_ _g3138331411_))
                                        (_g3138231408_ _g3138331411_))))
                                (_g3138231408_ _g3138331411_)))))
                    (_g3138131485_ _kont31380_)))))
          (if (##pair? _block3135831371_)
              (let ((_tl3136331491_ (##cdr _block3135831371_)))
                (if (##pair? _tl3136331491_)
                    (let ((_tl3136531494_ (##cdr _tl3136331491_)))
                      (if (##pair? _tl3136531494_)
                          (let ((_hd3136631497_ (##car _tl3136531494_))
                                (_tl3136731499_ (##cdr _tl3136531494_)))
                            (let ((_kont31502_ _hd3136631497_))
                              (if (##pair? _tl3136731499_)
                                  (let ((_hd3136831504_ (##car _tl3136731499_))
                                        (_tl3136931506_
                                         (##cdr _tl3136731499_)))
                                    (let* ((_assert31509_ _hd3136831504_)
                                           (_maybe-bind31511_ _tl3136931506_))
                                      (_K3136131488_
                                       _maybe-bind31511_
                                       _assert31509_
                                       _kont31502_)))
                                  (_E3136031375_))))
                          (_E3136031375_)))
                    (_E3136031375_)))
              (_E3136031375_))))))
  (define gxc#optimize-syntax-case
    (lambda (_stx30985_)
      (let* ((_g3098731017_
              (lambda (_g3098831014_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3098831014_)))
             (_g3098631351_
              (lambda (_g3098831020_)
                (if (gx#stx-pair? _g3098831020_)
                    (let ((_e3099231022_ (gx#stx-e _g3098831020_)))
                      (let ((_hd3099331025_ (##car _e3099231022_))
                            (_tl3099431027_ (##cdr _e3099231022_)))
                        (if (gx#identifier? _hd3099331025_)
                            (if (gx#stx-eq? '%#let-values _hd3099331025_)
                                (if (gx#stx-pair? _tl3099431027_)
                                    (let ((_e3099531030_
                                           (gx#stx-e _tl3099431027_)))
                                      (let ((_hd3099631033_
                                             (##car _e3099531030_))
                                            (_tl3099731035_
                                             (##cdr _e3099531030_)))
                                        (if (gx#stx-pair? _hd3099631033_)
                                            (let ((_e3099831038_
                                                   (gx#stx-e _hd3099631033_)))
                                              (let ((_hd3099931041_
                                                     (##car _e3099831038_))
                                                    (_tl3100031043_
                                                     (##cdr _e3099831038_)))
                                                (if (gx#stx-pair?
                                                     _hd3099931041_)
                                                    (let ((_e3100131046_
                                                           (gx#stx-e
                                                            _hd3099931041_)))
                                                      (let ((_hd3100231049_
                                                             (##car _e3100131046_))
                                                            (_tl3100331051_
                                                             (##cdr _e3100131046_)))
                                                        (if (gx#stx-pair?
                                                             _hd3100231049_)
                                                            (let ((_e3100431054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3100231049_)))
                      (let ((_hd3100531057_ (##car _e3100431054_))
                            (_tl3100631059_ (##cdr _e3100431054_)))
                        (if (gx#stx-null? _tl3100631059_)
                            (if (gx#stx-pair? _tl3100331051_)
                                (let ((_e3100731062_
                                       (gx#stx-e _tl3100331051_)))
                                  (let ((_hd3100831065_ (##car _e3100731062_))
                                        (_tl3100931067_ (##cdr _e3100731062_)))
                                    (if (gx#stx-null? _tl3100931067_)
                                        (if (gx#stx-null? _tl3100031043_)
                                            (if (gx#stx-pair? _tl3099731035_)
                                                (let ((_e3101031070_
                                                       (gx#stx-e
                                                        _tl3099731035_)))
                                                  (let ((_hd3101131073_
                                                         (##car _e3101031070_))
                                                        (_tl3101231075_
                                                         (##cdr _e3101031070_)))
                                                    (if (gx#stx-null?
                                                         _tl3101231075_)
                                                        ((lambda (_L31078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L31079_
                          _L31080_)
                   (let _lp31104_ ((_body31106_ _L31078_) (_clauses31107_ '()))
                     (let* ((___stx4203742038_ _body31106_)
                            (_g3111031157_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4203742038_))))
                       (let ((___kont4203942040_
                              (lambda (_L31323_ _L31324_ _L31325_)
                                (_lp31104_
                                 _L31323_
                                 (cons (cons _L31325_ (gxc#compile-e _L31324_))
                                       _clauses31107_))))
                             (___kont4204142042_
                              (lambda (_L31202_ _L31203_)
                                (let ((_$e31224_ (length _clauses31107_)))
                                  (if (eq? '0 _$e31224_)
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _L31080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L31079_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gxc#compile-e
                                                          _body31106_)
                                                         '())))
                                       _stx30985_)
                                      (if (eq? '1 _$e31224_)
                                          (let* ((_clauses3122631235_
                                                  _clauses31107_)
                                                 (_E3122831239_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _clauses3122631235_)))
                                                 (_K3122931245_
                                                  (lambda (_clause-lambda31242_
                                                           _clause31243_)
                                                    (gxc#xform-wrap-source
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _L31080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _L31079_ '()))
                               '())
                         (cons (cons '%#let-values
                                     (cons (cons (cons (cons _clause31243_ '())
                                                       (cons _clause-lambda31242_
                                                             '()))
                                                 '())
                                           (cons (gxc#compile-e _body31106_)
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx30985_))))
                                            (if (##pair? _clauses3122631235_)
                                                (let ((_hd3123031248_
                                                       (##car _clauses3122631235_))
                                                      (_tl3123131250_
                                                       (##cdr _clauses3122631235_)))
                                                  (if (##pair? _hd3123031248_)
                                                      (let ((_hd3123231253_
                                                             (##car _hd3123031248_))
                                                            (_tl3123331255_
                                                             (##cdr _hd3123031248_)))
                                                        (let* ((_clause31258_
                                                                _hd3123231253_)
                                                               (_clause-lambda31260_
                                                                _tl3123331255_))
                                                          (if (##null? _tl3123131250_)
                                                              (_K3122931245_
                                                               _clause-lambda31260_
                                                               _clause31258_)
                                                              (_E3122831239_))))
                                                      (_E3122831239_)))
                                                (_E3122831239_)))
                                          (gxc#optimize-syntax-case-body
                                           _stx30985_
                                           (gxc#compile-e _L31202_)
                                           (cons _L31080_ _L31079_)
                                           _clauses31107_)))))))
                         (if (gx#stx-pair? ___stx4203742038_)
                             (let ((_e3111531267_
                                    (gx#stx-e ___stx4203742038_)))
                               (let ((_tl3111731272_ (##cdr _e3111531267_))
                                     (_hd3111631270_ (##car _e3111531267_)))
                                 (if (gx#identifier? _hd3111631270_)
                                     (if (gx#stx-eq?
                                          '%#let-values
                                          _hd3111631270_)
                                         (if (gx#stx-pair? _tl3111731272_)
                                             (let ((_e3111831275_
                                                    (gx#stx-e _tl3111731272_)))
                                               (let ((_tl3112031280_
                                                      (##cdr _e3111831275_))
                                                     (_hd3111931278_
                                                      (##car _e3111831275_)))
                                                 (if (gx#stx-pair?
                                                      _hd3111931278_)
                                                     (let ((_e3112131283_
                                                            (gx#stx-e
                                                             _hd3111931278_)))
                                                       (let ((_tl3112331288_
                                                              (##cdr _e3112131283_))
                                                             (_hd3112231286_
                                                              (##car _e3112131283_)))
                                                         (if (gx#stx-pair?
                                                              _hd3112231286_)
                                                             (let ((_e3112431291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3112231286_)))
                       (let ((_tl3112631296_ (##cdr _e3112431291_))
                             (_hd3112531294_ (##car _e3112431291_)))
                         (if (gx#stx-pair? _hd3112531294_)
                             (let ((_e3112731299_ (gx#stx-e _hd3112531294_)))
                               (let ((_tl3112931304_ (##cdr _e3112731299_))
                                     (_hd3112831302_ (##car _e3112731299_)))
                                 (if (gx#stx-null? _tl3112931304_)
                                     (if (gx#stx-pair? _tl3112631296_)
                                         (let ((_e3113031307_
                                                (gx#stx-e _tl3112631296_)))
                                           (let ((_tl3113231312_
                                                  (##cdr _e3113031307_))
                                                 (_hd3113131310_
                                                  (##car _e3113031307_)))
                                             (if (gx#stx-null? _tl3113231312_)
                                                 (if (gx#stx-null?
                                                      _tl3112331288_)
                                                     (if (gx#stx-pair?
                                                          _tl3112031280_)
                                                         (let ((_e3113331315_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3112031280_)))
                   (let ((_tl3113531320_ (##cdr _e3113331315_))
                         (_hd3113431318_ (##car _e3113331315_)))
                     (if (gx#stx-null? _tl3113531320_)
                         (___kont4203942040_
                          _hd3113431318_
                          _hd3113131310_
                          _hd3112831302_)
                         (_g3111031157_))))
                 (_g3111031157_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3111031157_))
                                                 (_g3111031157_))))
                                         (_g3111031157_))
                                     (_g3111031157_))))
                             (_g3111031157_))))
                     (_g3111031157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3111031157_))))
                                             (_g3111031157_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3111631270_)
                                             (if (gx#stx-pair? _tl3111731272_)
                                                 (let ((_e3114131170_
                                                        (gx#stx-e
                                                         _tl3111731272_)))
                                                   (let ((_tl3114331175_
                                                          (##cdr _e3114131170_))
                                                         (_hd3114231173_
                                                          (##car _e3114131170_)))
                                                     (if (gx#stx-pair?
                                                          _hd3114231173_)
                                                         (let ((_e3114431178_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3114231173_)))
                   (let ((_tl3114631183_ (##cdr _e3114431178_))
                         (_hd3114531181_ (##car _e3114431178_)))
                     (if (gx#identifier? _hd3114531181_)
                         (if (gx#stx-eq? '%#ref _hd3114531181_)
                             (if (gx#stx-pair? _tl3114631183_)
                                 (let ((_e3114731186_
                                        (gx#stx-e _tl3114631183_)))
                                   (let ((_tl3114931191_ (##cdr _e3114731186_))
                                         (_hd3114831189_
                                          (##car _e3114731186_)))
                                     (if (gx#stx-null? _tl3114931191_)
                                         (if (gx#stx-pair? _tl3114331175_)
                                             (let ((_e3115031194_
                                                    (gx#stx-e _tl3114331175_)))
                                               (let ((_tl3115231199_
                                                      (##cdr _e3115031194_))
                                                     (_hd3115131197_
                                                      (##car _e3115031194_)))
                                                 (if (gx#stx-null?
                                                      _tl3115231199_)
                                                     (___kont4204142042_
                                                      _hd3115131197_
                                                      _hd3114831189_)
                                                     (_g3111031157_))))
                                             (_g3111031157_))
                                         (_g3111031157_))))
                                 (_g3111031157_))
                             (_g3111031157_))
                         (_g3111031157_))))
                 (_g3111031157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3111031157_))
                                             (_g3111031157_)))
                                     (_g3111031157_))))
                             (_g3111031157_))))))
                 _hd3101131073_
                 _hd3100831065_
                 _hd3100531057_)
                (_g3098731017_ _g3098831020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3098731017_ _g3098831020_))
                                            (_g3098731017_ _g3098831020_))
                                        (_g3098731017_ _g3098831020_))))
                                (_g3098731017_ _g3098831020_))
                            (_g3098731017_ _g3098831020_))))
                    (_g3098731017_ _g3098831020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3098731017_
                                                     _g3098831020_))))
                                            (_g3098731017_ _g3098831020_))))
                                    (_g3098731017_ _g3098831020_))
                                (_g3098731017_ _g3098831020_))
                            (_g3098731017_ _g3098831020_))))
                    (_g3098731017_ _g3098831020_)))))
        (_g3098631351_ _stx30985_))))
  (define gxc#optimize-syntax-case-body
    (lambda (_stx30913_ _expr30914_ _negation30915_ _clauses30916_)
      (letrec ((_normalize30918_
                (lambda (_clauses30945_)
                  (let* ((_clauses3094630955_ _clauses30945_)
                         (_E3094830959_
                          (lambda ()
                            (error '"No clause matching" _clauses3094630955_)))
                         (_K3094930966_
                          (lambda (_rest30962_ _kont30963_ _id30964_)
                            (cons (cons '#f _kont30963_) _rest30962_))))
                    (if (##pair? _clauses3094630955_)
                        (let ((_hd3095030969_ (##car _clauses3094630955_))
                              (_tl3095130971_ (##cdr _clauses3094630955_)))
                          (if (##pair? _hd3095030969_)
                              (let ((_hd3095230974_ (##car _hd3095030969_))
                                    (_tl3095330976_ (##cdr _hd3095030969_)))
                                (let* ((_id30979_ _hd3095230974_)
                                       (_kont30981_ _tl3095330976_)
                                       (_rest30983_ _tl3095130971_))
                                  (_K3094930966_
                                   _rest30983_
                                   _kont30981_
                                   _id30979_)))
                              (_E3094830959_)))
                        (_E3094830959_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_id30921_ (make-symbol (gensym '__stx)))
                  (_id30923_ (gx#core-quote-syntax__0 _id30921_))
                  (_g42810_ (gx#core-bind-runtime!__0 _id30923_))
                  (_g42811_
                   (gxc#optimize-syntax-case-clauses
                    _clauses30916_
                    (car _negation30915_))))
             (begin
               (let ((_g42812_
                      (if (##values? _g42811_) (##vector-length _g42811_) 1)))
                 (if (not (##fx= _g42812_ 2))
                     (error "Context expects 2 values" _g42812_)))
               (let ((_clauses30926_ (##vector-ref _g42811_ 0))
                     (_konts30927_ (##vector-ref _g42811_ 1)))
                 (let* ((_clauses30936_
                         (map (lambda (_g3092830931_ _g3092930933_)
                                (gxc#optimize-syntax-case-closure
                                 _g3092830931_
                                 _g3092930933_
                                 _id30923_))
                              _clauses30926_
                              (foldr1 cons
                                      (cons (car _negation30915_) '())
                                      (map car (cdr _clauses30926_)))))
                        (_clauses30938_ (_normalize30918_ _clauses30936_))
                        (_negation30940_
                         (gxc#optimize-syntax-case-closure
                          _negation30915_
                          '#f
                          _id30923_))
                        (_body30942_
                         (gxc#optimize-match-body
                          _stx30913_
                          _negation30940_
                          _clauses30938_
                          _konts30927_)))
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _id30923_ '())
                                            (cons _expr30914_ '()))
                                      '())
                                (cons _body30942_ '())))
                    _stx30913_))))))
         gx#current-expander-context
         (let ((__obj42783 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj42783) __obj42783))))))
  (define gxc#optimize-syntax-case-clauses
    (lambda (_clauses29671_ _negation-id29672_)
      (letrec ((_xform-e29674_
                (lambda (_expr30058_
                         _kont-id30059_
                         _kont-box30060_
                         _negation-id30061_)
                  (let* ((___stx4223942240_ _expr30058_)
                         (_g3006730200_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4223942240_))))
                    (let ((___kont4224142242_
                           (lambda (_L30889_ _L30890_ _L30891_)
                             (let ((_K30908_
                                    (_xform-e29674_
                                     _L30890_
                                     _kont-id30059_
                                     _kont-box30060_
                                     _negation-id30061_)))
                               (cons '%#if
                                     (cons _L30891_
                                           (cons _K30908_
                                                 (cons _L30889_ '())))))))
                          (___kont4224342244_
                           (lambda (_L30805_
                                    _L30806_
                                    _L30807_
                                    _L30808_
                                    _L30809_)
                             (let* ((_id30844_
                                     (make-symbol (gensym '__splice)))
                                    (_id30846_
                                     (gx#core-quote-syntax__0 _id30844_))
                                    (_g42813_
                                     (gx#core-bind-runtime!__0 _id30846_))
                                    (_body30849_
                                     (_xform-e29674_
                                      _L30805_
                                      _kont-id30059_
                                      _kont-box30060_
                                      _negation-id30061_)))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _id30846_ '())
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#call)
                           (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                       (cons _L30807_ '()))
                                 _L30806_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons '%#let-values
                                                       (cons (cons (cons (cons _L30809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons '%#call
                                             (cons '(%#ref ##vector-ref)
                                                   (cons (cons '%#ref
                                                               (cons _id30846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '(%#quote 0) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (cons _L30808_ '())
                                       (cons (cons '%#call
                                                   (cons '(%#ref ##vector-ref)
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _id30846_ '()))
                       (cons '(%#quote 1) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))
                     (cons _body30849_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                          (___kont4224542246_
                           (lambda (_L30687_ _L30688_)
                             (let ((_body30702_
                                    (_xform-e29674_
                                     _L30687_
                                     _kont-id30059_
                                     _kont-box30060_
                                     _negation-id30061_)))
                               (cons '%#let-values
                                     (cons _L30688_ (cons _body30702_ '()))))))
                          (___kont4224742248_
                           (lambda (_L30631_ _L30632_ _L30633_)
                             (let ((_lambda-expr30656_
                                    (_xform-loop-e29675_
                                     _L30632_
                                     _kont-id30059_
                                     _kont-box30060_
                                     _negation-id30061_)))
                               (cons '%#letrec-values
                                     (cons (cons (cons (cons _L30633_ '())
                                                       (cons _lambda-expr30656_
                                                             '()))
                                                 '())
                                           (cons _L30631_ '()))))))
                          (___kont4224942250_
                           (lambda (_L30293_ _L30294_ _L30295_)
                             (let* ((___stx4214142142_ _L30294_)
                                    (_g3032430367_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4214142142_))))
                               (let ((___kont4214342144_
                                      (lambda (_L30483_
                                               _L30484_
                                               _L30485_
                                               _L30486_)
                                        (let ((_kont30527_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3051930522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3052030524_)
                               (cons _g3051930522_ _g3052030524_))
                             '()
                             _L30295_))
                   (cons _L30485_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box30060_
                                             _kont30527_)
                                            (let* ((_kont-args30538_
                                                    (map (lambda (_id30529_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id30529_ '())))
                 (begin
                   '#!void
                   (foldr1 (lambda (_g3053030533_ _g3053130535_)
                             (cons _g3053030533_ _g3053130535_))
                           '()
                           _L30295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_body30540_
                                                    (cons '%#if
                                                          (cons _L30486_
                                                                (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#ref
                                                (cons _kont-id30059_ '()))
                                          _kont-args30538_))
                              (cons (cons (gx#datum->syntax__0 '#f '%#call)
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L30484_ '()))
                                                (cons (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)
                                                            (cons _L30483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g3054230545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3054330547_)
                             (cons _g3054230545_ _g3054330547_))
                           '()
                           _L30295_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _body30540_
                                                  (cons '%#let-values
                                                        (cons (map (lambda (_id30550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _arg30551_)
                             (cons (cons _id30550_ '()) (cons _arg30551_ '())))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3055230555_ _g3055330557_)
                                       (cons _g3055230555_ _g3055330557_))
                                     '()
                                     _L30295_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3055930562_ _g3056030564_)
                                       (cons _g3055930562_ _g3056030564_))
                                     '()
                                     _L30293_)))
                      (cons _body30540_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont4214542146_
                                      (lambda ()
                                        (let ((_kont30381_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3037330376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3037430378_)
                               (cons _g3037330376_ _g3037430378_))
                             '()
                             _L30295_))
                   (cons _L30294_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box30060_
                                             _kont30381_)
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kont-id30059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3038230385_ _g3038330387_)
                            (cons _g3038230385_ _g3038330387_))
                          '()
                          _L30293_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((___match4223642237_
                                        (lambda (_e3033030395_
                                                 _hd3033130398_
                                                 _tl3033230400_
                                                 _e3033330403_
                                                 _hd3033430406_
                                                 _tl3033530408_
                                                 _e3033630411_
                                                 _hd3033730414_
                                                 _tl3033830416_
                                                 _e3033930419_
                                                 _hd3034030422_
                                                 _tl3034130424_
                                                 _e3034230427_
                                                 _hd3034330430_
                                                 _tl3034430432_
                                                 _e3034530435_
                                                 _hd3034630438_
                                                 _tl3034730440_
                                                 _e3034830443_
                                                 _hd3034930446_
                                                 _tl3035030448_
                                                 _e3035130451_
                                                 _hd3035230454_
                                                 _tl3035330456_
                                                 _e3035430459_
                                                 _hd3035530462_
                                                 _tl3035630464_
                                                 _e3035730467_
                                                 _hd3035830470_
                                                 _tl3035930472_
                                                 _e3036030475_
                                                 _hd3036130478_
                                                 _tl3036230480_)
                                          (let ((_L30483_ _hd3036130478_)
                                                (_L30484_ _hd3035230454_)
                                                (_L30485_ _hd3033730414_)
                                                (_L30486_ _hd3033430406_))
                                            (if (gx#free-identifier=?
                                                 _L30484_
                                                 _negation-id30061_)
                                                (___kont4214342144_
                                                 _L30483_
                                                 _L30484_
                                                 _L30485_
                                                 _L30486_)
                                                (___kont4214542146_))))))
                                   (if (gx#stx-pair? ___stx4214142142_)
                                       (let ((_e3033030395_
                                              (gx#stx-e ___stx4214142142_)))
                                         (let ((_tl3033230400_
                                                (##cdr _e3033030395_))
                                               (_hd3033130398_
                                                (##car _e3033030395_)))
                                           (if (gx#identifier? _hd3033130398_)
                                               (if (gx#stx-eq?
                                                    '%#if
                                                    _hd3033130398_)
                                                   (if (gx#stx-pair?
                                                        _tl3033230400_)
                                                       (let ((_e3033330403_
                                                              (gx#stx-e
                                                               _tl3033230400_)))
                                                         (let ((_tl3033530408_
                                                                (##cdr _e3033330403_))
                                                               (_hd3033430406_
                                                                (##car _e3033330403_)))
                                                           (if (gx#stx-pair?
                                                                _tl3033530408_)
                                                               (let ((_e3033630411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3033530408_)))
                         (let ((_tl3033830416_ (##cdr _e3033630411_))
                               (_hd3033730414_ (##car _e3033630411_)))
                           (if (gx#stx-pair? _tl3033830416_)
                               (let ((_e3033930419_ (gx#stx-e _tl3033830416_)))
                                 (let ((_tl3034130424_ (##cdr _e3033930419_))
                                       (_hd3034030422_ (##car _e3033930419_)))
                                   (if (gx#stx-pair? _hd3034030422_)
                                       (let ((_e3034230427_
                                              (gx#stx-e _hd3034030422_)))
                                         (let ((_tl3034430432_
                                                (##cdr _e3034230427_))
                                               (_hd3034330430_
                                                (##car _e3034230427_)))
                                           (if (gx#identifier? _hd3034330430_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd3034330430_)
                                                   (if (gx#stx-pair?
                                                        _tl3034430432_)
                                                       (let ((_e3034530435_
                                                              (gx#stx-e
                                                               _tl3034430432_)))
                                                         (let ((_tl3034730440_
                                                                (##cdr _e3034530435_))
                                                               (_hd3034630438_
                                                                (##car _e3034530435_)))
                                                           (if (gx#stx-pair?
                                                                _hd3034630438_)
                                                               (let ((_e3034830443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd3034630438_)))
                         (let ((_tl3035030448_ (##cdr _e3034830443_))
                               (_hd3034930446_ (##car _e3034830443_)))
                           (if (gx#identifier? _hd3034930446_)
                               (if (gx#stx-eq? '%#ref _hd3034930446_)
                                   (if (gx#stx-pair? _tl3035030448_)
                                       (let ((_e3035130451_
                                              (gx#stx-e _tl3035030448_)))
                                         (let ((_tl3035330456_
                                                (##cdr _e3035130451_))
                                               (_hd3035230454_
                                                (##car _e3035130451_)))
                                           (if (gx#stx-null? _tl3035330456_)
                                               (if (gx#stx-pair?
                                                    _tl3034730440_)
                                                   (let ((_e3035430459_
                                                          (gx#stx-e
                                                           _tl3034730440_)))
                                                     (let ((_tl3035630464_
                                                            (##cdr _e3035430459_))
                                                           (_hd3035530462_
                                                            (##car _e3035430459_)))
                                                       (if (gx#stx-pair?
                                                            _hd3035530462_)
                                                           (let ((_e3035730467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3035530462_)))
                     (let ((_tl3035930472_ (##cdr _e3035730467_))
                           (_hd3035830470_ (##car _e3035730467_)))
                       (if (gx#identifier? _hd3035830470_)
                           (if (gx#stx-eq? '%#ref _hd3035830470_)
                               (if (gx#stx-pair? _tl3035930472_)
                                   (let ((_e3036030475_
                                          (gx#stx-e _tl3035930472_)))
                                     (let ((_tl3036230480_
                                            (##cdr _e3036030475_))
                                           (_hd3036130478_
                                            (##car _e3036030475_)))
                                       (if (gx#stx-null? _tl3036230480_)
                                           (if (gx#stx-null? _tl3035630464_)
                                               (if (gx#stx-null?
                                                    _tl3034130424_)
                                                   (___match4223642237_
                                                    _e3033030395_
                                                    _hd3033130398_
                                                    _tl3033230400_
                                                    _e3033330403_
                                                    _hd3033430406_
                                                    _tl3033530408_
                                                    _e3033630411_
                                                    _hd3033730414_
                                                    _tl3033830416_
                                                    _e3033930419_
                                                    _hd3034030422_
                                                    _tl3034130424_
                                                    _e3034230427_
                                                    _hd3034330430_
                                                    _tl3034430432_
                                                    _e3034530435_
                                                    _hd3034630438_
                                                    _tl3034730440_
                                                    _e3034830443_
                                                    _hd3034930446_
                                                    _tl3035030448_
                                                    _e3035130451_
                                                    _hd3035230454_
                                                    _tl3035330456_
                                                    _e3035430459_
                                                    _hd3035530462_
                                                    _tl3035630464_
                                                    _e3035730467_
                                                    _hd3035830470_
                                                    _tl3035930472_
                                                    _e3036030475_
                                                    _hd3036130478_
                                                    _tl3036230480_)
                                                   (___kont4214542146_))
                                               (___kont4214542146_))
                                           (___kont4214542146_))))
                                   (___kont4214542146_))
                               (___kont4214542146_))
                           (___kont4214542146_))))
                   (___kont4214542146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4214542146_))
                                               (___kont4214542146_))))
                                       (___kont4214542146_))
                                   (___kont4214542146_))
                               (___kont4214542146_))))
                       (___kont4214542146_))))
               (___kont4214542146_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4214542146_))
                                               (___kont4214542146_))))
                                       (___kont4214542146_))))
                               (___kont4214542146_))))
                       (___kont4214542146_))))
               (___kont4214542146_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4214542146_))
                                               (___kont4214542146_))))
                                       (___kont4214542146_))))))))
                      (let* ((___match4249642497_
                              (lambda (_e3016330205_
                                       _hd3016430208_
                                       _tl3016530210_
                                       _e3016630213_
                                       _hd3016730216_
                                       _tl3016830218_
                                       _e3016930221_
                                       _hd3017030224_
                                       _tl3017130226_
                                       _e3017230229_
                                       _hd3017330232_
                                       _tl3017430234_
                                       ___splice4225142252_
                                       _target3017530237_
                                       _tl3017730239_)
                                (letrec ((_loop3017830242_
                                          (lambda (_hd3017630245_
                                                   _id3018230247_)
                                            (if (gx#stx-pair? _hd3017630245_)
                                                (let ((_e3017930250_
                                                       (gx#stx-e
                                                        _hd3017630245_)))
                                                  (let ((_lp-tl3018130255_
                                                         (##cdr _e3017930250_))
                                                        (_lp-hd3018030253_
                                                         (##car _e3017930250_)))
                                                    (_loop3017830242_
                                                     _lp-tl3018130255_
                                                     (cons _lp-hd3018030253_
                                                           _id3018230247_))))
                                                (let ((_id3018330258_
                                                       (reverse _id3018230247_)))
                                                  (if (gx#stx-pair?
                                                       _tl3017430234_)
                                                      (let ((_e3018430261_
                                                             (gx#stx-e
                                                              _tl3017430234_)))
                                                        (let ((_tl3018630266_
                                                               (##cdr _e3018430261_))
                                                              (_hd3018530264_
                                                               (##car _e3018430261_)))
                                                          (if (gx#stx-null?
                                                               _tl3018630266_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3016830218_)
                          (let ((___splice4225342254_
                                 (gx#syntax-split-splice _tl3016830218_ '0)))
                            (let ((_tl3018930271_
                                   (##vector-ref ___splice4225342254_ '1))
                                  (_target3018730269_
                                   (##vector-ref ___splice4225342254_ '0)))
                              (if (gx#stx-null? _tl3018930271_)
                                  (letrec ((_loop3019030274_
                                            (lambda (_hd3018830277_
                                                     _arg3019430279_)
                                              (if (gx#stx-pair? _hd3018830277_)
                                                  (let ((_e3019130282_
                                                         (gx#stx-e
                                                          _hd3018830277_)))
                                                    (let ((_lp-tl3019330287_
                                                           (##cdr _e3019130282_))
                                                          (_lp-hd3019230285_
                                                           (##car _e3019130282_)))
                                                      (_loop3019030274_
                                                       _lp-tl3019330287_
                                                       (cons _lp-hd3019230285_
                                                             _arg3019430279_))))
                                                  (let ((_arg3019530290_
                                                         (reverse _arg3019430279_)))
                                                    (___kont4224942250_
                                                     _arg3019530290_
                                                     _hd3018530264_
                                                     _id3018330258_))))))
                                    (_loop3019030274_ _target3018730269_ '()))
                                  (_g3006730200_))))
                          (_g3006730200_))
                      (_g3006730200_))))
              (_g3006730200_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop3017830242_ _target3017530237_ '()))))
                             (___match4237842379_
                              (lambda (_e3008930709_
                                       _hd3009030712_
                                       _tl3009130714_
                                       _e3009230717_
                                       _hd3009330720_
                                       _tl3009430722_
                                       _e3009530725_
                                       _hd3009630728_
                                       _tl3009730730_
                                       _e3009830733_
                                       _hd3009930736_
                                       _tl3010030738_
                                       _e3010130741_
                                       _hd3010230744_
                                       _tl3010330746_
                                       _e3010430749_
                                       _hd3010530752_
                                       _tl3010630754_
                                       _e3010730757_
                                       _hd3010830760_
                                       _tl3010930762_
                                       _e3011030765_
                                       _hd3011130768_
                                       _tl3011230770_
                                       _e3011330773_
                                       _hd3011430776_
                                       _tl3011530778_
                                       _e3011630781_
                                       _hd3011730784_
                                       _tl3011830786_
                                       _e3011930789_
                                       _hd3012030792_
                                       _tl3012130794_
                                       _e3012230797_
                                       _hd3012330800_
                                       _tl3012430802_)
                                (let ((_L30805_ _hd3012330800_)
                                      (_L30806_ _tl3011530778_)
                                      (_L30807_ _hd3012030792_)
                                      (_L30808_ _hd3010530752_)
                                      (_L30809_ _hd3010230744_))
                                  (if (gxc#runtime-identifier=?
                                       _L30807_
                                       'gx#syntax-split-splice)
                                      (___kont4224342244_
                                       _L30805_
                                       _L30806_
                                       _L30807_
                                       _L30808_
                                       _L30809_)
                                      (___kont4224542246_
                                       _hd3012330800_
                                       _hd3009330720_))))))
                        (if (gx#stx-pair? ___stx4223942240_)
                            (let ((_e3007230857_ (gx#stx-e ___stx4223942240_)))
                              (let ((_tl3007430862_ (##cdr _e3007230857_))
                                    (_hd3007330860_ (##car _e3007230857_)))
                                (if (gx#identifier? _hd3007330860_)
                                    (if (gx#stx-eq? '%#if _hd3007330860_)
                                        (if (gx#stx-pair? _tl3007430862_)
                                            (let ((_e3007530865_
                                                   (gx#stx-e _tl3007430862_)))
                                              (let ((_tl3007730870_
                                                     (##cdr _e3007530865_))
                                                    (_hd3007630868_
                                                     (##car _e3007530865_)))
                                                (if (gx#stx-pair?
                                                     _tl3007730870_)
                                                    (let ((_e3007830873_
                                                           (gx#stx-e
                                                            _tl3007730870_)))
                                                      (let ((_tl3008030878_
                                                             (##cdr _e3007830873_))
                                                            (_hd3007930876_
                                                             (##car _e3007830873_)))
                                                        (if (gx#stx-pair?
                                                             _tl3008030878_)
                                                            (let ((_e3008130881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3008030878_)))
                      (let ((_tl3008330886_ (##cdr _e3008130881_))
                            (_hd3008230884_ (##car _e3008130881_)))
                        (if (gx#stx-null? _tl3008330886_)
                            (___kont4224142242_
                             _hd3008230884_
                             _hd3007930876_
                             _hd3007630868_)
                            (_g3006730200_))))
                    (_g3006730200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3006730200_))))
                                            (_g3006730200_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3007330860_)
                                            (if (gx#stx-pair? _tl3007430862_)
                                                (let ((_e3009230717_
                                                       (gx#stx-e
                                                        _tl3007430862_)))
                                                  (let ((_tl3009430722_
                                                         (##cdr _e3009230717_))
                                                        (_hd3009330720_
                                                         (##car _e3009230717_)))
                                                    (if (gx#stx-pair?
                                                         _hd3009330720_)
                                                        (let ((_e3009530725_
                                                               (gx#stx-e
                                                                _hd3009330720_)))
                                                          (let ((_tl3009730730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3009530725_))
                        (_hd3009630728_ (##car _e3009530725_)))
                    (if (gx#stx-pair? _hd3009630728_)
                        (let ((_e3009830733_ (gx#stx-e _hd3009630728_)))
                          (let ((_tl3010030738_ (##cdr _e3009830733_))
                                (_hd3009930736_ (##car _e3009830733_)))
                            (if (gx#stx-pair? _hd3009930736_)
                                (let ((_e3010130741_
                                       (gx#stx-e _hd3009930736_)))
                                  (let ((_tl3010330746_ (##cdr _e3010130741_))
                                        (_hd3010230744_ (##car _e3010130741_)))
                                    (if (gx#stx-pair? _tl3010330746_)
                                        (let ((_e3010430749_
                                               (gx#stx-e _tl3010330746_)))
                                          (let ((_tl3010630754_
                                                 (##cdr _e3010430749_))
                                                (_hd3010530752_
                                                 (##car _e3010430749_)))
                                            (if (gx#stx-null? _tl3010630754_)
                                                (if (gx#stx-pair?
                                                     _tl3010030738_)
                                                    (let ((_e3010730757_
                                                           (gx#stx-e
                                                            _tl3010030738_)))
                                                      (let ((_tl3010930762_
                                                             (##cdr _e3010730757_))
                                                            (_hd3010830760_
                                                             (##car _e3010730757_)))
                                                        (if (gx#stx-pair?
                                                             _hd3010830760_)
                                                            (let ((_e3011030765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3010830760_)))
                      (let ((_tl3011230770_ (##cdr _e3011030765_))
                            (_hd3011130768_ (##car _e3011030765_)))
                        (if (gx#identifier? _hd3011130768_)
                            (if (gx#stx-eq? '%#call _hd3011130768_)
                                (if (gx#stx-pair? _tl3011230770_)
                                    (let ((_e3011330773_
                                           (gx#stx-e _tl3011230770_)))
                                      (let ((_tl3011530778_
                                             (##cdr _e3011330773_))
                                            (_hd3011430776_
                                             (##car _e3011330773_)))
                                        (if (gx#stx-pair? _hd3011430776_)
                                            (let ((_e3011630781_
                                                   (gx#stx-e _hd3011430776_)))
                                              (let ((_tl3011830786_
                                                     (##cdr _e3011630781_))
                                                    (_hd3011730784_
                                                     (##car _e3011630781_)))
                                                (if (gx#identifier?
                                                     _hd3011730784_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3011730784_)
                                                        (if (gx#stx-pair?
                                                             _tl3011830786_)
                                                            (let ((_e3011930789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3011830786_)))
                      (let ((_tl3012130794_ (##cdr _e3011930789_))
                            (_hd3012030792_ (##car _e3011930789_)))
                        (if (gx#stx-null? _tl3012130794_)
                            (if (gx#stx-null? _tl3010930762_)
                                (if (gx#stx-null? _tl3009730730_)
                                    (if (gx#stx-pair? _tl3009430722_)
                                        (let ((_e3012230797_
                                               (gx#stx-e _tl3009430722_)))
                                          (let ((_tl3012430802_
                                                 (##cdr _e3012230797_))
                                                (_hd3012330800_
                                                 (##car _e3012230797_)))
                                            (if (gx#stx-null? _tl3012430802_)
                                                (___match4237842379_
                                                 _e3007230857_
                                                 _hd3007330860_
                                                 _tl3007430862_
                                                 _e3009230717_
                                                 _hd3009330720_
                                                 _tl3009430722_
                                                 _e3009530725_
                                                 _hd3009630728_
                                                 _tl3009730730_
                                                 _e3009830733_
                                                 _hd3009930736_
                                                 _tl3010030738_
                                                 _e3010130741_
                                                 _hd3010230744_
                                                 _tl3010330746_
                                                 _e3010430749_
                                                 _hd3010530752_
                                                 _tl3010630754_
                                                 _e3010730757_
                                                 _hd3010830760_
                                                 _tl3010930762_
                                                 _e3011030765_
                                                 _hd3011130768_
                                                 _tl3011230770_
                                                 _e3011330773_
                                                 _hd3011430776_
                                                 _tl3011530778_
                                                 _e3011630781_
                                                 _hd3011730784_
                                                 _tl3011830786_
                                                 _e3011930789_
                                                 _hd3012030792_
                                                 _tl3012130794_
                                                 _e3012230797_
                                                 _hd3012330800_
                                                 _tl3012430802_)
                                                (_g3006730200_))))
                                        (_g3006730200_))
                                    (if (gx#stx-pair? _tl3009430722_)
                                        (let ((_e3013330679_
                                               (gx#stx-e _tl3009430722_)))
                                          (let ((_tl3013530684_
                                                 (##cdr _e3013330679_))
                                                (_hd3013430682_
                                                 (##car _e3013330679_)))
                                            (if (gx#stx-null? _tl3013530684_)
                                                (___kont4224542246_
                                                 _hd3013430682_
                                                 _hd3009330720_)
                                                (_g3006730200_))))
                                        (_g3006730200_)))
                                (if (gx#stx-pair? _tl3009430722_)
                                    (let ((_e3013330679_
                                           (gx#stx-e _tl3009430722_)))
                                      (let ((_tl3013530684_
                                             (##cdr _e3013330679_))
                                            (_hd3013430682_
                                             (##car _e3013330679_)))
                                        (if (gx#stx-null? _tl3013530684_)
                                            (___kont4224542246_
                                             _hd3013430682_
                                             _hd3009330720_)
                                            (_g3006730200_))))
                                    (_g3006730200_)))
                            (if (gx#stx-pair? _tl3009430722_)
                                (let ((_e3013330679_
                                       (gx#stx-e _tl3009430722_)))
                                  (let ((_tl3013530684_ (##cdr _e3013330679_))
                                        (_hd3013430682_ (##car _e3013330679_)))
                                    (if (gx#stx-null? _tl3013530684_)
                                        (___kont4224542246_
                                         _hd3013430682_
                                         _hd3009330720_)
                                        (_g3006730200_))))
                                (_g3006730200_)))))
                    (if (gx#stx-pair? _tl3009430722_)
                        (let ((_e3013330679_ (gx#stx-e _tl3009430722_)))
                          (let ((_tl3013530684_ (##cdr _e3013330679_))
                                (_hd3013430682_ (##car _e3013330679_)))
                            (if (gx#stx-null? _tl3013530684_)
                                (___kont4224542246_
                                 _hd3013430682_
                                 _hd3009330720_)
                                (_g3006730200_))))
                        (_g3006730200_)))
                (if (gx#stx-pair? _tl3009430722_)
                    (let ((_e3013330679_ (gx#stx-e _tl3009430722_)))
                      (let ((_tl3013530684_ (##cdr _e3013330679_))
                            (_hd3013430682_ (##car _e3013330679_)))
                        (if (gx#stx-null? _tl3013530684_)
                            (___kont4224542246_ _hd3013430682_ _hd3009330720_)
                            (_g3006730200_))))
                    (_g3006730200_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3009430722_)
                                                        (let ((_e3013330679_
                                                               (gx#stx-e
                                                                _tl3009430722_)))
                                                          (let ((_tl3013530684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3013330679_))
                        (_hd3013430682_ (##car _e3013330679_)))
                    (if (gx#stx-null? _tl3013530684_)
                        (___kont4224542246_ _hd3013430682_ _hd3009330720_)
                        (_g3006730200_))))
                (_g3006730200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3009430722_)
                                                (let ((_e3013330679_
                                                       (gx#stx-e
                                                        _tl3009430722_)))
                                                  (let ((_tl3013530684_
                                                         (##cdr _e3013330679_))
                                                        (_hd3013430682_
                                                         (##car _e3013330679_)))
                                                    (if (gx#stx-null?
                                                         _tl3013530684_)
                                                        (___kont4224542246_
                                                         _hd3013430682_
                                                         _hd3009330720_)
                                                        (_g3006730200_))))
                                                (_g3006730200_)))))
                                    (if (gx#stx-pair? _tl3009430722_)
                                        (let ((_e3013330679_
                                               (gx#stx-e _tl3009430722_)))
                                          (let ((_tl3013530684_
                                                 (##cdr _e3013330679_))
                                                (_hd3013430682_
                                                 (##car _e3013330679_)))
                                            (if (gx#stx-null? _tl3013530684_)
                                                (___kont4224542246_
                                                 _hd3013430682_
                                                 _hd3009330720_)
                                                (_g3006730200_))))
                                        (_g3006730200_)))
                                (if (gx#stx-pair? _tl3009430722_)
                                    (let ((_e3013330679_
                                           (gx#stx-e _tl3009430722_)))
                                      (let ((_tl3013530684_
                                             (##cdr _e3013330679_))
                                            (_hd3013430682_
                                             (##car _e3013330679_)))
                                        (if (gx#stx-null? _tl3013530684_)
                                            (___kont4224542246_
                                             _hd3013430682_
                                             _hd3009330720_)
                                            (_g3006730200_))))
                                    (_g3006730200_)))
                            (if (gx#stx-pair? _tl3009430722_)
                                (let ((_e3013330679_
                                       (gx#stx-e _tl3009430722_)))
                                  (let ((_tl3013530684_ (##cdr _e3013330679_))
                                        (_hd3013430682_ (##car _e3013330679_)))
                                    (if (gx#stx-null? _tl3013530684_)
                                        (___kont4224542246_
                                         _hd3013430682_
                                         _hd3009330720_)
                                        (_g3006730200_))))
                                (_g3006730200_)))))
                    (if (gx#stx-pair? _tl3009430722_)
                        (let ((_e3013330679_ (gx#stx-e _tl3009430722_)))
                          (let ((_tl3013530684_ (##cdr _e3013330679_))
                                (_hd3013430682_ (##car _e3013330679_)))
                            (if (gx#stx-null? _tl3013530684_)
                                (___kont4224542246_
                                 _hd3013430682_
                                 _hd3009330720_)
                                (_g3006730200_))))
                        (_g3006730200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3009430722_)
                                                        (let ((_e3013330679_
                                                               (gx#stx-e
                                                                _tl3009430722_)))
                                                          (let ((_tl3013530684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3013330679_))
                        (_hd3013430682_ (##car _e3013330679_)))
                    (if (gx#stx-null? _tl3013530684_)
                        (___kont4224542246_ _hd3013430682_ _hd3009330720_)
                        (_g3006730200_))))
                (_g3006730200_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _tl3009430722_)
                                                    (let ((_e3013330679_
                                                           (gx#stx-e
                                                            _tl3009430722_)))
                                                      (let ((_tl3013530684_
                                                             (##cdr _e3013330679_))
                                                            (_hd3013430682_
                                                             (##car _e3013330679_)))
                                                        (if (gx#stx-null?
                                                             _tl3013530684_)
                                                            (___kont4224542246_
                                                             _hd3013430682_
                                                             _hd3009330720_)
                                                            (_g3006730200_))))
                                                    (_g3006730200_)))))
                                        (if (gx#stx-pair? _tl3009430722_)
                                            (let ((_e3013330679_
                                                   (gx#stx-e _tl3009430722_)))
                                              (let ((_tl3013530684_
                                                     (##cdr _e3013330679_))
                                                    (_hd3013430682_
                                                     (##car _e3013330679_)))
                                                (if (gx#stx-null?
                                                     _tl3013530684_)
                                                    (___kont4224542246_
                                                     _hd3013430682_
                                                     _hd3009330720_)
                                                    (_g3006730200_))))
                                            (_g3006730200_)))))
                                (if (gx#stx-pair? _tl3009430722_)
                                    (let ((_e3013330679_
                                           (gx#stx-e _tl3009430722_)))
                                      (let ((_tl3013530684_
                                             (##cdr _e3013330679_))
                                            (_hd3013430682_
                                             (##car _e3013330679_)))
                                        (if (gx#stx-null? _tl3013530684_)
                                            (___kont4224542246_
                                             _hd3013430682_
                                             _hd3009330720_)
                                            (_g3006730200_))))
                                    (_g3006730200_)))))
                        (if (gx#stx-pair? _tl3009430722_)
                            (let ((_e3013330679_ (gx#stx-e _tl3009430722_)))
                              (let ((_tl3013530684_ (##cdr _e3013330679_))
                                    (_hd3013430682_ (##car _e3013330679_)))
                                (if (gx#stx-null? _tl3013530684_)
                                    (___kont4224542246_
                                     _hd3013430682_
                                     _hd3009330720_)
                                    (_g3006730200_))))
                            (_g3006730200_)))))
                (if (gx#stx-pair? _tl3009430722_)
                    (let ((_e3013330679_ (gx#stx-e _tl3009430722_)))
                      (let ((_tl3013530684_ (##cdr _e3013330679_))
                            (_hd3013430682_ (##car _e3013330679_)))
                        (if (gx#stx-null? _tl3013530684_)
                            (___kont4224542246_ _hd3013430682_ _hd3009330720_)
                            (_g3006730200_))))
                    (_g3006730200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3006730200_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3007330860_)
                                                (if (gx#stx-pair?
                                                     _tl3007430862_)
                                                    (let ((_e3014230583_
                                                           (gx#stx-e
                                                            _tl3007430862_)))
                                                      (let ((_tl3014430588_
                                                             (##cdr _e3014230583_))
                                                            (_hd3014330586_
                                                             (##car _e3014230583_)))
                                                        (if (gx#stx-pair?
                                                             _hd3014330586_)
                                                            (let ((_e3014530591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3014330586_)))
                      (let ((_tl3014730596_ (##cdr _e3014530591_))
                            (_hd3014630594_ (##car _e3014530591_)))
                        (if (gx#stx-pair? _hd3014630594_)
                            (let ((_e3014830599_ (gx#stx-e _hd3014630594_)))
                              (let ((_tl3015030604_ (##cdr _e3014830599_))
                                    (_hd3014930602_ (##car _e3014830599_)))
                                (if (gx#stx-pair? _hd3014930602_)
                                    (let ((_e3015130607_
                                           (gx#stx-e _hd3014930602_)))
                                      (let ((_tl3015330612_
                                             (##cdr _e3015130607_))
                                            (_hd3015230610_
                                             (##car _e3015130607_)))
                                        (if (gx#stx-null? _tl3015330612_)
                                            (if (gx#stx-pair? _tl3015030604_)
                                                (let ((_e3015430615_
                                                       (gx#stx-e
                                                        _tl3015030604_)))
                                                  (let ((_tl3015630620_
                                                         (##cdr _e3015430615_))
                                                        (_hd3015530618_
                                                         (##car _e3015430615_)))
                                                    (if (gx#stx-null?
                                                         _tl3015630620_)
                                                        (if (gx#stx-null?
                                                             _tl3014730596_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3014430588_)
                        (let ((_e3015730623_ (gx#stx-e _tl3014430588_)))
                          (let ((_tl3015930628_ (##cdr _e3015730623_))
                                (_hd3015830626_ (##car _e3015730623_)))
                            (if (gx#stx-null? _tl3015930628_)
                                (___kont4224742248_
                                 _hd3015830626_
                                 _hd3015530618_
                                 _hd3015230610_)
                                (_g3006730200_))))
                        (_g3006730200_))
                    (_g3006730200_))
                (_g3006730200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3006730200_))
                                            (_g3006730200_))))
                                    (_g3006730200_))))
                            (_g3006730200_))))
                    (_g3006730200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3006730200_))
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd3007330860_)
                                                    (if (gx#stx-pair?
                                                         _tl3007430862_)
                                                        (let ((_e3016630213_
                                                               (gx#stx-e
                                                                _tl3007430862_)))
                                                          (let ((_tl3016830218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3016630213_))
                        (_hd3016730216_ (##car _e3016630213_)))
                    (if (gx#stx-pair? _hd3016730216_)
                        (let ((_e3016930221_ (gx#stx-e _hd3016730216_)))
                          (let ((_tl3017130226_ (##cdr _e3016930221_))
                                (_hd3017030224_ (##car _e3016930221_)))
                            (if (gx#identifier? _hd3017030224_)
                                (if (gx#stx-eq? '%#lambda _hd3017030224_)
                                    (if (gx#stx-pair? _tl3017130226_)
                                        (let ((_e3017230229_
                                               (gx#stx-e _tl3017130226_)))
                                          (let ((_tl3017430234_
                                                 (##cdr _e3017230229_))
                                                (_hd3017330232_
                                                 (##car _e3017230229_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3017330232_)
                                                (let ((___splice4225142252_
                                                       (gx#syntax-split-splice
                                                        _hd3017330232_
                                                        '0)))
                                                  (let ((_tl3017730239_
                                                         (##vector-ref
                                                          ___splice4225142252_
                                                          '1))
                                                        (_target3017530237_
                                                         (##vector-ref
                                                          ___splice4225142252_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3017730239_)
                                                        (___match4249642497_
                                                         _e3007230857_
                                                         _hd3007330860_
                                                         _tl3007430862_
                                                         _e3016630213_
                                                         _hd3016730216_
                                                         _tl3016830218_
                                                         _e3016930221_
                                                         _hd3017030224_
                                                         _tl3017130226_
                                                         _e3017230229_
                                                         _hd3017330232_
                                                         _tl3017430234_
                                                         ___splice4225142252_
                                                         _target3017530237_
                                                         _tl3017730239_)
                                                        (_g3006730200_))))
                                                (_g3006730200_))))
                                        (_g3006730200_))
                                    (_g3006730200_))
                                (_g3006730200_))))
                        (_g3006730200_))))
                (_g3006730200_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3006730200_)))))
                                    (_g3006730200_))))
                            (_g3006730200_)))))))
               (_xform-loop-e29675_
                (lambda (_expr29884_
                         _kont-id29885_
                         _kont-box29886_
                         _negation-id29887_)
                  (let* ((_g2988929929_
                          (lambda (_g2989029926_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2989029926_)))
                         (_g2988830055_
                          (lambda (_g2989029932_)
                            (if (gx#stx-pair? _g2989029932_)
                                (let ((_e2989529934_ (gx#stx-e _g2989029932_)))
                                  (let ((_hd2989629937_ (##car _e2989529934_))
                                        (_tl2989729939_ (##cdr _e2989529934_)))
                                    (if (gx#identifier? _hd2989629937_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2989629937_)
                                            (if (gx#stx-pair? _tl2989729939_)
                                                (let ((_e2989829942_
                                                       (gx#stx-e
                                                        _tl2989729939_)))
                                                  (let ((_hd2989929945_
                                                         (##car _e2989829942_))
                                                        (_tl2990029947_
                                                         (##cdr _e2989829942_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd2989929945_)
                                                        (let ((_g42814_
                                                               (gx#syntax-split-splice
                                                                _hd2989929945_
                                                                '0)))
                                                          (begin
                                                            (let ((_g42815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g42814_)
                               (##vector-length _g42814_)
                               1)))
                      (if (not (##fx= _g42815_ 2))
                          (error "Context expects 2 values" _g42815_)))
                    (let ((_target2990129950_ (##vector-ref _g42814_ 0))
                          (_tl2990329952_ (##vector-ref _g42814_ 1)))
                      (if (gx#stx-null? _tl2990329952_)
                          (letrec ((_loop2990429955_
                                    (lambda (_hd2990229958_ _id2990829960_)
                                      (if (gx#stx-pair? _hd2990229958_)
                                          (let ((_e2990529963_
                                                 (gx#stx-e _hd2990229958_)))
                                            (let ((_lp-hd2990629966_
                                                   (##car _e2990529963_))
                                                  (_lp-tl2990729968_
                                                   (##cdr _e2990529963_)))
                                              (_loop2990429955_
                                               _lp-tl2990729968_
                                               (cons _lp-hd2990629966_
                                                     _id2990829960_))))
                                          (let ((_id2990929971_
                                                 (reverse _id2990829960_)))
                                            (if (gx#stx-pair? _tl2990029947_)
                                                (let ((_e2991029974_
                                                       (gx#stx-e
                                                        _tl2990029947_)))
                                                  (let ((_hd2991129977_
                                                         (##car _e2991029974_))
                                                        (_tl2991229979_
                                                         (##cdr _e2991029974_)))
                                                    (if (gx#stx-pair?
                                                         _hd2991129977_)
                                                        (let ((_e2991329982_
                                                               (gx#stx-e
                                                                _hd2991129977_)))
                                                          (let ((_hd2991429985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2991329982_))
                        (_tl2991529987_ (##cdr _e2991329982_)))
                    (if (gx#identifier? _hd2991429985_)
                        (if (gx#stx-eq? '%#if _hd2991429985_)
                            (if (gx#stx-pair? _tl2991529987_)
                                (let ((_e2991629990_
                                       (gx#stx-e _tl2991529987_)))
                                  (let ((_hd2991729993_ (##car _e2991629990_))
                                        (_tl2991829995_ (##cdr _e2991629990_)))
                                    (if (gx#stx-pair? _tl2991829995_)
                                        (let ((_e2991929998_
                                               (gx#stx-e _tl2991829995_)))
                                          (let ((_hd2992030001_
                                                 (##car _e2991929998_))
                                                (_tl2992130003_
                                                 (##cdr _e2991929998_)))
                                            (if (gx#stx-pair? _tl2992130003_)
                                                (let ((_e2992230006_
                                                       (gx#stx-e
                                                        _tl2992130003_)))
                                                  (let ((_hd2992330009_
                                                         (##car _e2992230006_))
                                                        (_tl2992430011_
                                                         (##cdr _e2992230006_)))
                                                    (if (gx#stx-null?
                                                         _tl2992430011_)
                                                        (if (gx#stx-null?
                                                             _tl2991229979_)
                                                            ((lambda (_L30014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L30015_
                              _L30016_
                              _L30017_)
                       (let ((_E30046_
                              (_xform-e29674_
                               _L30014_
                               _kont-id29885_
                               _kont-box29886_
                               _negation-id29887_)))
                         (cons '%#lambda
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3004730050_
                                                        _g3004830052_)
                                                 (cons _g3004730050_
                                                       _g3004830052_))
                                               '()
                                               _L30017_))
                                     (cons (cons '%#if
                                                 (cons _L30016_
                                                       (cons _L30015_
                                                             (cons _E30046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _hd2992330009_
                     _hd2992030001_
                     _hd2991729993_
                     _id2990929971_)
                    (_g2988929929_ _g2989029932_))
                (_g2988929929_ _g2989029932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2988929929_
                                                 _g2989029932_))))
                                        (_g2988929929_ _g2989029932_))))
                                (_g2988929929_ _g2989029932_))
                            (_g2988929929_ _g2989029932_))
                        (_g2988929929_ _g2989029932_))))
                (_g2988929929_ _g2989029932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2988929929_
                                                 _g2989029932_)))))))
                            (_loop2990429955_ _target2990129950_ '()))
                          (_g2988929929_ _g2989029932_)))))
                (_g2988929929_ _g2989029932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2988929929_ _g2989029932_))
                                            (_g2988929929_ _g2989029932_))
                                        (_g2988929929_ _g2989029932_))))
                                (_g2988929929_ _g2989029932_)))))
                    (_g2988830055_ _expr29884_))))
               (_clause-e29676_
                (lambda (_clause-lambda29754_ _kont-id29755_ _rest29756_)
                  (letrec* ((_kont-box29758_ (box '#f)))
                    (let* ((_negation-id29798_
                            (let* ((_rest2975929769_ _rest29756_)
                                   (_else2976129777_
                                    (lambda () _negation-id29672_))
                                   (_K2976329783_
                                    (lambda (_clause29780_ _clause-id29781_)
                                      _clause-id29781_)))
                              (if (##pair? _rest2975929769_)
                                  (let ((_hd2976429786_
                                         (##car _rest2975929769_)))
                                    (if (##pair? _hd2976429786_)
                                        (let ((_hd2976629789_
                                               (##car _hd2976429786_))
                                              (_tl2976729791_
                                               (##cdr _hd2976429786_)))
                                          (let* ((_clause-id29794_
                                                  _hd2976629789_)
                                                 (_clause29796_
                                                  _tl2976729791_))
                                            (_K2976329783_
                                             _clause29796_
                                             _clause-id29794_)))
                                        (_else2976129777_)))
                                  (_else2976129777_))))
                           (_g2980029820_
                            (lambda (_g2980129817_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2980129817_)))
                           (_g2979929881_
                            (lambda (_g2980129823_)
                              (if (gx#stx-pair? _g2980129823_)
                                  (let ((_e2980429825_
                                         (gx#stx-e _g2980129823_)))
                                    (let ((_hd2980529828_
                                           (##car _e2980429825_))
                                          (_tl2980629830_
                                           (##cdr _e2980429825_)))
                                      (if (gx#identifier? _hd2980529828_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd2980529828_)
                                              (if (gx#stx-pair? _tl2980629830_)
                                                  (let ((_e2980729833_
                                                         (gx#stx-e
                                                          _tl2980629830_)))
                                                    (let ((_hd2980829836_
                                                           (##car _e2980729833_))
                                                          (_tl2980929838_
                                                           (##cdr _e2980729833_)))
                                                      (if (gx#stx-pair?
                                                           _hd2980829836_)
                                                          (let ((_e2981029841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2980829836_)))
                    (let ((_hd2981129844_ (##car _e2981029841_))
                          (_tl2981229846_ (##cdr _e2981029841_)))
                      (if (gx#stx-null? _tl2981229846_)
                          (if (gx#stx-pair? _tl2980929838_)
                              (let ((_e2981329849_ (gx#stx-e _tl2980929838_)))
                                (let ((_hd2981429852_ (##car _e2981329849_))
                                      (_tl2981529854_ (##cdr _e2981329849_)))
                                  (if (gx#stx-null? _tl2981529854_)
                                      ((lambda (_L29857_ _L29858_)
                                         (let ((_body29879_
                                                (_xform-e29674_
                                                 _L29857_
                                                 _kont-id29755_
                                                 _kont-box29758_
                                                 _negation-id29798_)))
                                           (values (cons '%#lambda
                                                         (cons (cons _L29858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _body29879_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (unbox _kont-box29758_))))
                                       _hd2981429852_
                                       _hd2981129844_)
                                      (_g2980029820_ _g2980129823_))))
                              (_g2980029820_ _g2980129823_))
                          (_g2980029820_ _g2980129823_))))
                  (_g2980029820_ _g2980129823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2980029820_
                                                   _g2980129823_))
                                              (_g2980029820_ _g2980129823_))
                                          (_g2980029820_ _g2980129823_))))
                                  (_g2980029820_ _g2980129823_)))))
                      (_g2979929881_ _clause-lambda29754_))))))
        (let _lp29678_ ((_rest29680_ _clauses29671_)
                        (_clauses29681_ '())
                        (_konts29682_ '()))
          (let* ((_rest2968329691_ _rest29680_)
                 (_else2968529699_
                  (lambda ()
                    (values (reverse _clauses29681_) (reverse _konts29682_))))
                 (_K2968729742_
                  (lambda (_rest29702_ _clause29703_)
                    (let* ((_clause2970429711_ _clause29703_)
                           (_E2970629715_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause2970429711_)))
                           (_K2970729730_
                            (lambda (_clause-lambda29718_ _clause-id29719_)
                              (let* ((_id29721_ (make-symbol (gensym '__kont)))
                                     (_id29723_
                                      (gx#core-quote-syntax__0 _id29721_))
                                     (_g42816_
                                      (gx#core-bind-runtime!__0 _id29723_))
                                     (_g42817_
                                      (_clause-e29676_
                                       _clause-lambda29718_
                                       _id29723_
                                       _rest29702_)))
                                (begin
                                  (let ((_g42818_
                                         (if (##values? _g42817_)
                                             (##vector-length _g42817_)
                                             1)))
                                    (if (not (##fx= _g42818_ 2))
                                        (error "Context expects 2 values"
                                               _g42818_)))
                                  (let ((_clause-lambda29726_
                                         (##vector-ref _g42817_ 0))
                                        (_kont29727_
                                         (##vector-ref _g42817_ 1)))
                                    (let ()
                                      (_lp29678_
                                       _rest29702_
                                       (cons (cons _clause-id29719_
                                                   _clause-lambda29726_)
                                             _clauses29681_)
                                       (cons (cons _id29723_ _kont29727_)
                                             _konts29682_)))))))))
                      (if (##pair? _clause2970429711_)
                          (let ((_hd2970829733_ (##car _clause2970429711_))
                                (_tl2970929735_ (##cdr _clause2970429711_)))
                            (let* ((_clause-id29738_ _hd2970829733_)
                                   (_clause-lambda29740_ _tl2970929735_))
                              (_K2970729730_
                               _clause-lambda29740_
                               _clause-id29738_)))
                          (_E2970629715_))))))
            (if (##pair? _rest2968329691_)
                (let ((_hd2968829745_ (##car _rest2968329691_))
                      (_tl2968929747_ (##cdr _rest2968329691_)))
                  (let* ((_clause29750_ _hd2968829745_)
                         (_rest29752_ _tl2968929747_))
                    (_K2968729742_ _rest29752_ _clause29750_)))
                (_else2968529699_)))))))
  (define gxc#optimize-syntax-case-closure
    (lambda (_clause29015_ _negation29016_ _target29017_)
      (letrec ((_closure-e29019_
                (lambda (_expr29136_)
                  (let* ((___stx4249942500_ _expr29136_)
                         (_g2914329258_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4249942500_))))
                    (let ((___kont4250142502_
                           (lambda (_L29649_ _L29650_ _L29651_)
                             (cons '%#if
                                   (cons _L29651_
                                         (cons (_closure-e29019_ _L29650_)
                                               (cons (_closure-e29019_
                                                      _L29649_)
                                                     '()))))))
                          (___kont4250342504_
                           (lambda (_L29597_ _L29598_)
                             (cons '%#let-values
                                   (cons _L29598_
                                         (cons (_closure-e29019_ _L29597_)
                                               '())))))
                          (___kont4250542506_
                           (lambda (_L29543_ _L29544_ _L29545_)
                             (cons '%#letrec-values
                                   (cons (cons (cons (cons _L29545_ '())
                                                     (cons (_closure-e29019_
                                                            _L29544_)
                                                           '()))
                                               '())
                                         (cons _L29543_ '())))))
                          (___kont4250742508_
                           (lambda (_L29456_ _L29457_)
                             (cons '%#lambda
                                   (cons (begin
                                           '#!void
                                           (foldr1 (lambda (_g2947429477_
                                                            _g2947529479_)
                                                     (cons _g2947429477_
                                                           _g2947529479_))
                                                   '()
                                                   _L29457_))
                                         (cons (_closure-e29019_ _L29456_)
                                               '())))))
                          (___kont4251142512_
                           (lambda (_L29386_)
                             (cons '%#call
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _L29386_ '()))
                                         '()))))
                          (___kont4251342514_
                           (lambda (_L29319_ _L29320_) _expr29136_)))
                      (let* ((___match4273242733_
                              (lambda (_e2923329263_
                                       _hd2923429266_
                                       _tl2923529268_
                                       _e2923629271_
                                       _hd2923729274_
                                       _tl2923829276_
                                       _e2923929279_
                                       _hd2924029282_
                                       _tl2924129284_
                                       _e2924229287_
                                       _hd2924329290_
                                       _tl2924429292_
                                       ___splice4251542516_
                                       _target2924529295_
                                       _tl2924729297_)
                                (letrec ((_loop2924829300_
                                          (lambda (_hd2924629303_
                                                   _arg2925229305_)
                                            (if (gx#stx-pair? _hd2924629303_)
                                                (let ((_e2924929308_
                                                       (gx#stx-e
                                                        _hd2924629303_)))
                                                  (let ((_lp-tl2925129313_
                                                         (##cdr _e2924929308_))
                                                        (_lp-hd2925029311_
                                                         (##car _e2924929308_)))
                                                    (_loop2924829300_
                                                     _lp-tl2925129313_
                                                     (cons _lp-hd2925029311_
                                                           _arg2925229305_))))
                                                (let ((_arg2925329316_
                                                       (reverse _arg2925229305_)))
                                                  (___kont4251342514_
                                                   _arg2925329316_
                                                   _hd2924329290_))))))
                                  (_loop2924829300_ _target2924529295_ '()))))
                             (___match4269042691_
                              (lambda (_e2921629346_
                                       _hd2921729349_
                                       _tl2921829351_
                                       _e2921929354_
                                       _hd2922029357_
                                       _tl2922129359_
                                       _e2922229362_
                                       _hd2922329365_
                                       _tl2922429367_
                                       _e2922529370_
                                       _hd2922629373_
                                       _tl2922729375_
                                       _e2922829378_
                                       _hd2922929381_
                                       _tl2923029383_)
                                (let ((_L29386_ _hd2922629373_))
                                  (if (gx#free-identifier=?
                                       _L29386_
                                       _negation29016_)
                                      (___kont4251142512_ _L29386_)
                                      (if (gx#stx-pair/null? _tl2922129359_)
                                          (let ((___splice4251542516_
                                                 (gx#syntax-split-splice
                                                  _tl2922129359_
                                                  '0)))
                                            (let ((_tl2924729297_
                                                   (##vector-ref
                                                    ___splice4251542516_
                                                    '1))
                                                  (_target2924529295_
                                                   (##vector-ref
                                                    ___splice4251542516_
                                                    '0)))
                                              (if (gx#stx-null? _tl2924729297_)
                                                  (___match4273242733_
                                                   _e2921629346_
                                                   _hd2921729349_
                                                   _tl2921829351_
                                                   _e2921929354_
                                                   _hd2922029357_
                                                   _tl2922129359_
                                                   _e2922229362_
                                                   _hd2922329365_
                                                   _tl2922429367_
                                                   _e2922529370_
                                                   _hd2922629373_
                                                   _tl2922729375_
                                                   ___splice4251542516_
                                                   _target2924529295_
                                                   _tl2924729297_)
                                                  (_g2914329258_))))
                                          (_g2914329258_))))))
                             (___match4264842649_
                              (lambda (_e2919729408_
                                       _hd2919829411_
                                       _tl2919929413_
                                       _e2920029416_
                                       _hd2920129419_
                                       _tl2920229421_
                                       ___splice4250942510_
                                       _target2920329424_
                                       _tl2920529426_)
                                (letrec ((_loop2920629429_
                                          (lambda (_hd2920429432_
                                                   _id2921029434_)
                                            (if (gx#stx-pair? _hd2920429432_)
                                                (let ((_e2920729437_
                                                       (gx#stx-e
                                                        _hd2920429432_)))
                                                  (let ((_lp-tl2920929442_
                                                         (##cdr _e2920729437_))
                                                        (_lp-hd2920829440_
                                                         (##car _e2920729437_)))
                                                    (_loop2920629429_
                                                     _lp-tl2920929442_
                                                     (cons _lp-hd2920829440_
                                                           _id2921029434_))))
                                                (let ((_id2921129445_
                                                       (reverse _id2921029434_)))
                                                  (if (gx#stx-pair?
                                                       _tl2920229421_)
                                                      (let ((_e2921229448_
                                                             (gx#stx-e
                                                              _tl2920229421_)))
                                                        (let ((_tl2921429453_
                                                               (##cdr _e2921229448_))
                                                              (_hd2921329451_
                                                               (##car _e2921229448_)))
                                                          (if (gx#stx-null?
                                                               _tl2921429453_)
                                                              (___kont4250742508_
                                                               _hd2921329451_
                                                               _id2921129445_)
                                                              (_g2914329258_))))
                                                      (_g2914329258_)))))))
                                  (_loop2920629429_ _target2920329424_ '())))))
                        (if (gx#stx-pair? ___stx4249942500_)
                            (let ((_e2914829617_ (gx#stx-e ___stx4249942500_)))
                              (let ((_tl2915029622_ (##cdr _e2914829617_))
                                    (_hd2914929620_ (##car _e2914829617_)))
                                (if (gx#identifier? _hd2914929620_)
                                    (if (gx#stx-eq? '%#if _hd2914929620_)
                                        (if (gx#stx-pair? _tl2915029622_)
                                            (let ((_e2915129625_
                                                   (gx#stx-e _tl2915029622_)))
                                              (let ((_tl2915329630_
                                                     (##cdr _e2915129625_))
                                                    (_hd2915229628_
                                                     (##car _e2915129625_)))
                                                (if (gx#stx-pair?
                                                     _tl2915329630_)
                                                    (let ((_e2915429633_
                                                           (gx#stx-e
                                                            _tl2915329630_)))
                                                      (let ((_tl2915629638_
                                                             (##cdr _e2915429633_))
                                                            (_hd2915529636_
                                                             (##car _e2915429633_)))
                                                        (if (gx#stx-pair?
                                                             _tl2915629638_)
                                                            (let ((_e2915729641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2915629638_)))
                      (let ((_tl2915929646_ (##cdr _e2915729641_))
                            (_hd2915829644_ (##car _e2915729641_)))
                        (if (gx#stx-null? _tl2915929646_)
                            (___kont4250142502_
                             _hd2915829644_
                             _hd2915529636_
                             _hd2915229628_)
                            (_g2914329258_))))
                    (_g2914329258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2914329258_))))
                                            (_g2914329258_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd2914929620_)
                                            (if (gx#stx-pair? _tl2915029622_)
                                                (let ((_e2916529581_
                                                       (gx#stx-e
                                                        _tl2915029622_)))
                                                  (let ((_tl2916729586_
                                                         (##cdr _e2916529581_))
                                                        (_hd2916629584_
                                                         (##car _e2916529581_)))
                                                    (if (gx#stx-pair?
                                                         _tl2916729586_)
                                                        (let ((_e2916829589_
                                                               (gx#stx-e
                                                                _tl2916729586_)))
                                                          (let ((_tl2917029594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2916829589_))
                        (_hd2916929592_ (##car _e2916829589_)))
                    (if (gx#stx-null? _tl2917029594_)
                        (___kont4250342504_ _hd2916929592_ _hd2916629584_)
                        (_g2914329258_))))
                (_g2914329258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2914329258_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd2914929620_)
                                                (if (gx#stx-pair?
                                                     _tl2915029622_)
                                                    (let ((_e2917729495_
                                                           (gx#stx-e
                                                            _tl2915029622_)))
                                                      (let ((_tl2917929500_
                                                             (##cdr _e2917729495_))
                                                            (_hd2917829498_
                                                             (##car _e2917729495_)))
                                                        (if (gx#stx-pair?
                                                             _hd2917829498_)
                                                            (let ((_e2918029503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2917829498_)))
                      (let ((_tl2918229508_ (##cdr _e2918029503_))
                            (_hd2918129506_ (##car _e2918029503_)))
                        (if (gx#stx-pair? _hd2918129506_)
                            (let ((_e2918329511_ (gx#stx-e _hd2918129506_)))
                              (let ((_tl2918529516_ (##cdr _e2918329511_))
                                    (_hd2918429514_ (##car _e2918329511_)))
                                (if (gx#stx-pair? _hd2918429514_)
                                    (let ((_e2918629519_
                                           (gx#stx-e _hd2918429514_)))
                                      (let ((_tl2918829524_
                                             (##cdr _e2918629519_))
                                            (_hd2918729522_
                                             (##car _e2918629519_)))
                                        (if (gx#stx-null? _tl2918829524_)
                                            (if (gx#stx-pair? _tl2918529516_)
                                                (let ((_e2918929527_
                                                       (gx#stx-e
                                                        _tl2918529516_)))
                                                  (let ((_tl2919129532_
                                                         (##cdr _e2918929527_))
                                                        (_hd2919029530_
                                                         (##car _e2918929527_)))
                                                    (if (gx#stx-null?
                                                         _tl2919129532_)
                                                        (if (gx#stx-null?
                                                             _tl2918229508_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2917929500_)
                        (let ((_e2919229535_ (gx#stx-e _tl2917929500_)))
                          (let ((_tl2919429540_ (##cdr _e2919229535_))
                                (_hd2919329538_ (##car _e2919229535_)))
                            (if (gx#stx-null? _tl2919429540_)
                                (___kont4250542506_
                                 _hd2919329538_
                                 _hd2919029530_
                                 _hd2918729522_)
                                (_g2914329258_))))
                        (_g2914329258_))
                    (_g2914329258_))
                (_g2914329258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2914329258_))
                                            (_g2914329258_))))
                                    (_g2914329258_))))
                            (_g2914329258_))))
                    (_g2914329258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2914329258_))
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd2914929620_)
                                                    (if (gx#stx-pair?
                                                         _tl2915029622_)
                                                        (let ((_e2920029416_
                                                               (gx#stx-e
                                                                _tl2915029622_)))
                                                          (let ((_tl2920229421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2920029416_))
                        (_hd2920129419_ (##car _e2920029416_)))
                    (if (gx#stx-pair/null? _hd2920129419_)
                        (let ((___splice4250942510_
                               (gx#syntax-split-splice _hd2920129419_ '0)))
                          (let ((_tl2920529426_
                                 (##vector-ref ___splice4250942510_ '1))
                                (_target2920329424_
                                 (##vector-ref ___splice4250942510_ '0)))
                            (if (gx#stx-null? _tl2920529426_)
                                (___match4264842649_
                                 _e2914829617_
                                 _hd2914929620_
                                 _tl2915029622_
                                 _e2920029416_
                                 _hd2920129419_
                                 _tl2920229421_
                                 ___splice4250942510_
                                 _target2920329424_
                                 _tl2920529426_)
                                (_g2914329258_))))
                        (_g2914329258_))))
                (_g2914329258_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2914929620_)
                                                        (if (gx#stx-pair?
                                                             _tl2915029622_)
                                                            (let ((_e2921929354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2915029622_)))
                      (let ((_tl2922129359_ (##cdr _e2921929354_))
                            (_hd2922029357_ (##car _e2921929354_)))
                        (if (gx#stx-pair? _hd2922029357_)
                            (let ((_e2922229362_ (gx#stx-e _hd2922029357_)))
                              (let ((_tl2922429367_ (##cdr _e2922229362_))
                                    (_hd2922329365_ (##car _e2922229362_)))
                                (if (gx#identifier? _hd2922329365_)
                                    (if (gx#stx-eq? '%#ref _hd2922329365_)
                                        (if (gx#stx-pair? _tl2922429367_)
                                            (let ((_e2922529370_
                                                   (gx#stx-e _tl2922429367_)))
                                              (let ((_tl2922729375_
                                                     (##cdr _e2922529370_))
                                                    (_hd2922629373_
                                                     (##car _e2922529370_)))
                                                (if (gx#stx-null?
                                                     _tl2922729375_)
                                                    (if (gx#stx-pair?
                                                         _tl2922129359_)
                                                        (let ((_e2922829378_
                                                               (gx#stx-e
                                                                _tl2922129359_)))
                                                          (let ((_tl2923029383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2922829378_))
                        (_hd2922929381_ (##car _e2922829378_)))
                    (if (gx#stx-null? _tl2923029383_)
                        (___match4269042691_
                         _e2914829617_
                         _hd2914929620_
                         _tl2915029622_
                         _e2921929354_
                         _hd2922029357_
                         _tl2922129359_
                         _e2922229362_
                         _hd2922329365_
                         _tl2922429367_
                         _e2922529370_
                         _hd2922629373_
                         _tl2922729375_
                         _e2922829378_
                         _hd2922929381_
                         _tl2923029383_)
                        (if (gx#stx-pair/null? _tl2922129359_)
                            (let ((___splice4251542516_
                                   (gx#syntax-split-splice _tl2922129359_ '0)))
                              (let ((_tl2924729297_
                                     (##vector-ref ___splice4251542516_ '1))
                                    (_target2924529295_
                                     (##vector-ref ___splice4251542516_ '0)))
                                (if (gx#stx-null? _tl2924729297_)
                                    (___match4273242733_
                                     _e2914829617_
                                     _hd2914929620_
                                     _tl2915029622_
                                     _e2921929354_
                                     _hd2922029357_
                                     _tl2922129359_
                                     _e2922229362_
                                     _hd2922329365_
                                     _tl2922429367_
                                     _e2922529370_
                                     _hd2922629373_
                                     _tl2922729375_
                                     ___splice4251542516_
                                     _target2924529295_
                                     _tl2924729297_)
                                    (_g2914329258_))))
                            (_g2914329258_)))))
                (if (gx#stx-pair/null? _tl2922129359_)
                    (let ((___splice4251542516_
                           (gx#syntax-split-splice _tl2922129359_ '0)))
                      (let ((_tl2924729297_
                             (##vector-ref ___splice4251542516_ '1))
                            (_target2924529295_
                             (##vector-ref ___splice4251542516_ '0)))
                        (if (gx#stx-null? _tl2924729297_)
                            (___match4273242733_
                             _e2914829617_
                             _hd2914929620_
                             _tl2915029622_
                             _e2921929354_
                             _hd2922029357_
                             _tl2922129359_
                             _e2922229362_
                             _hd2922329365_
                             _tl2922429367_
                             _e2922529370_
                             _hd2922629373_
                             _tl2922729375_
                             ___splice4251542516_
                             _target2924529295_
                             _tl2924729297_)
                            (_g2914329258_))))
                    (_g2914329258_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2914329258_))))
                                            (_g2914329258_))
                                        (_g2914329258_))
                                    (_g2914329258_))))
                            (_g2914329258_))))
                    (_g2914329258_))
                (_g2914329258_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g2914329258_))))
                            (_g2914329258_))))))))
        (let* ((_clause2902029027_ _clause29015_)
               (_E2902229031_
                (lambda () (error '"No clause matching" _clause2902029027_)))
               (_K2902329124_
                (lambda (_kont29034_ _id29035_)
                  (let* ((_g2903729057_
                          (lambda (_g2903829054_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2903829054_)))
                         (_g2903629121_
                          (lambda (_g2903829060_)
                            (if (gx#stx-pair? _g2903829060_)
                                (let ((_e2904129062_ (gx#stx-e _g2903829060_)))
                                  (let ((_hd2904229065_ (##car _e2904129062_))
                                        (_tl2904329067_ (##cdr _e2904129062_)))
                                    (if (gx#identifier? _hd2904229065_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2904229065_)
                                            (if (gx#stx-pair? _tl2904329067_)
                                                (let ((_e2904429070_
                                                       (gx#stx-e
                                                        _tl2904329067_)))
                                                  (let ((_hd2904529073_
                                                         (##car _e2904429070_))
                                                        (_tl2904629075_
                                                         (##cdr _e2904429070_)))
                                                    (if (gx#stx-pair?
                                                         _hd2904529073_)
                                                        (let ((_e2904729078_
                                                               (gx#stx-e
                                                                _hd2904529073_)))
                                                          (let ((_hd2904829081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2904729078_))
                        (_tl2904929083_ (##cdr _e2904729078_)))
                    (if (gx#stx-null? _tl2904929083_)
                        (if (gx#stx-pair? _tl2904629075_)
                            (let ((_e2905029086_ (gx#stx-e _tl2904629075_)))
                              (let ((_hd2905129089_ (##car _e2905029086_))
                                    (_tl2905229091_ (##cdr _e2905029086_)))
                                (if (gx#stx-null? _tl2905229091_)
                                    ((lambda (_L29094_ _L29095_)
                                       (let* ((_body29116_
                                               (gxc#apply-expression-subst
                                                _L29094_
                                                _L29095_
                                                _target29017_))
                                              (_body29118_
                                               (if _negation29016_
                                                   (_closure-e29019_
                                                    _body29116_)
                                                   _body29116_)))
                                         (begin
                                           (gxc#optimizer-declare-type!__%
                                            (gxc#identifier-symbol _id29035_)
                                            (let ((__obj42784
                                                   (make-object
                                                    gxc#!lambda::t
                                                    '5)))
                                              (begin
                                                (gxc#!lambda:::init!__0
                                                 __obj42784
                                                 'lambda
                                                 '0
                                                 '#f)
                                                __obj42784))
                                            '#t)
                                           (cons _id29035_
                                                 (cons '%#lambda
                                                       (cons '()
                                                             (cons _body29118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2905129089_
                                     _hd2904829081_)
                                    (_g2903729057_ _g2903829060_))))
                            (_g2903729057_ _g2903829060_))
                        (_g2903729057_ _g2903829060_))))
                (_g2903729057_ _g2903829060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2903729057_ _g2903829060_))
                                            (_g2903729057_ _g2903829060_))
                                        (_g2903729057_ _g2903829060_))))
                                (_g2903729057_ _g2903829060_)))))
                    (_g2903629121_ _kont29034_)))))
          (if (##pair? _clause2902029027_)
              (let ((_hd2902429127_ (##car _clause2902029027_))
                    (_tl2902529129_ (##cdr _clause2902029027_)))
                (let* ((_id29132_ _hd2902429127_) (_kont29134_ _tl2902529129_))
                  (_K2902329124_ _kont29134_ _id29132_)))
              (_E2902229031_))))))
  (define gxc#push-match-vars-let-values%
    (lambda (_stx28801_ _vars28802_ _K28803_)
      (let* ((_g2880528822_
              (lambda (_g2880628819_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2880628819_)))
             (_g2880429012_
              (lambda (_g2880628825_)
                (if (gx#stx-pair? _g2880628825_)
                    (let ((_e2880928827_ (gx#stx-e _g2880628825_)))
                      (let ((_hd2881028830_ (##car _e2880928827_))
                            (_tl2881128832_ (##cdr _e2880928827_)))
                        (if (gx#stx-pair? _tl2881128832_)
                            (let ((_e2881228835_ (gx#stx-e _tl2881128832_)))
                              (let ((_hd2881328838_ (##car _e2881228835_))
                                    (_tl2881428840_ (##cdr _e2881228835_)))
                                (if (gx#stx-pair? _tl2881428840_)
                                    (let ((_e2881528843_
                                           (gx#stx-e _tl2881428840_)))
                                      (let ((_hd2881628846_
                                             (##car _e2881528843_))
                                            (_tl2881728848_
                                             (##cdr _e2881528843_)))
                                        (if (gx#stx-null? _tl2881728848_)
                                            ((lambda (_L28851_ _L28852_)
                                               (let _lp28867_ ((_rest28869_
                                                                _L28852_)
                                                               (_rebind28870_
                                                                '())
                                                               (_vars28871_
                                                                _vars28802_))
                                                 (let* ((_rest2887228880_
                                                         _rest28869_)
                                                        (_else2887428888_
                                                         (lambda ()
                                                           (if (null? _rebind28870_)
                                                               (gxc#compile-e
                                                                _L28851_
                                                                _vars28871_
                                                                _K28803_)
                                                               (gxc#xform-wrap-source
                                                                (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (reverse _rebind28870_)
                                    (cons (gxc#compile-e
                                           _L28851_
                                           _vars28871_
                                           _K28803_)
                                          '())))
                        _stx28801_))))
                (_K2887629000_
                 (lambda (_rest28891_ _bind28892_)
                   (let* ((___stx4273542736_ _bind28892_)
                          (_g2889528918_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4273542736_))))
                     (let ((___kont4273742738_
                            (lambda (_L28970_ _L28971_)
                              (_lp28867_
                               _rest28891_
                               _rebind28870_
                               (cons _bind28892_ _vars28871_))))
                           (___kont4273942740_
                            (lambda ()
                              (_lp28867_
                               _rest28891_
                               (cons _bind28892_ _rebind28870_)
                               _vars28871_))))
                       (if (gx#stx-pair? ___stx4273542736_)
                           (let ((_e2889928930_ (gx#stx-e ___stx4273542736_)))
                             (let ((_tl2890128935_ (##cdr _e2889928930_))
                                   (_hd2890028933_ (##car _e2889928930_)))
                               (if (gx#stx-pair? _hd2890028933_)
                                   (let ((_e2890228938_
                                          (gx#stx-e _hd2890028933_)))
                                     (let ((_tl2890428943_
                                            (##cdr _e2890228938_))
                                           (_hd2890328941_
                                            (##car _e2890228938_)))
                                       (if (gx#stx-null? _tl2890428943_)
                                           (if (gx#stx-pair? _tl2890128935_)
                                               (let ((_e2890528946_
                                                      (gx#stx-e
                                                       _tl2890128935_)))
                                                 (let ((_tl2890728951_
                                                        (##cdr _e2890528946_))
                                                       (_hd2890628949_
                                                        (##car _e2890528946_)))
                                                   (if (gx#stx-pair?
                                                        _hd2890628949_)
                                                       (let ((_e2890828954_
                                                              (gx#stx-e
                                                               _hd2890628949_)))
                                                         (let ((_tl2891028959_
                                                                (##cdr _e2890828954_))
                                                               (_hd2890928957_
                                                                (##car _e2890828954_)))
                                                           (if (gx#identifier?
                                                                _hd2890928957_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd2890928957_)
                           (if (gx#stx-pair? _tl2891028959_)
                               (let ((_e2891128962_ (gx#stx-e _tl2891028959_)))
                                 (let ((_tl2891328967_ (##cdr _e2891128962_))
                                       (_hd2891228965_ (##car _e2891128962_)))
                                   (if (gx#stx-null? _tl2891328967_)
                                       (if (gx#stx-null? _tl2890728951_)
                                           (___kont4273742738_
                                            _hd2891228965_
                                            _hd2890328941_)
                                           (___kont4273942740_))
                                       (___kont4273942740_))))
                               (___kont4273942740_))
                           (___kont4273942740_))
                       (___kont4273942740_))))
               (___kont4273942740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4273942740_))
                                           (___kont4273942740_))))
                                   (___kont4273942740_))))
                           (___kont4273942740_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _rest2887228880_)
                                                       (let ((_hd2887729003_
                                                              (##car _rest2887228880_))
                                                             (_tl2887829005_
                                                              (##cdr _rest2887228880_)))
                                                         (let* ((_bind29008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2887729003_)
                        (_rest29010_ _tl2887829005_))
                   (_K2887629000_ _rest29010_ _bind29008_)))
               (_else2887428888_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd2881628846_
                                             _hd2881328838_)
                                            (_g2880528822_ _g2880628825_))))
                                    (_g2880528822_ _g2880628825_))))
                            (_g2880528822_ _g2880628825_))))
                    (_g2880528822_ _g2880628825_)))))
        (_g2880429012_ _stx28801_))))
  (define gxc#push-match-vars-if%
    (lambda (_stx28716_ _vars28717_ _K28718_)
      (let* ((_g2872028741_
              (lambda (_g2872128738_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2872128738_)))
             (_g2871928798_
              (lambda (_g2872128744_)
                (if (gx#stx-pair? _g2872128744_)
                    (let ((_e2872528746_ (gx#stx-e _g2872128744_)))
                      (let ((_hd2872628749_ (##car _e2872528746_))
                            (_tl2872728751_ (##cdr _e2872528746_)))
                        (if (gx#stx-pair? _tl2872728751_)
                            (let ((_e2872828754_ (gx#stx-e _tl2872728751_)))
                              (let ((_hd2872928757_ (##car _e2872828754_))
                                    (_tl2873028759_ (##cdr _e2872828754_)))
                                (if (gx#stx-pair? _tl2873028759_)
                                    (let ((_e2873128762_
                                           (gx#stx-e _tl2873028759_)))
                                      (let ((_hd2873228765_
                                             (##car _e2873128762_))
                                            (_tl2873328767_
                                             (##cdr _e2873128762_)))
                                        (if (gx#stx-pair? _tl2873328767_)
                                            (let ((_e2873428770_
                                                   (gx#stx-e _tl2873328767_)))
                                              (let ((_hd2873528773_
                                                     (##car _e2873428770_))
                                                    (_tl2873628775_
                                                     (##cdr _e2873428770_)))
                                                (if (gx#stx-null?
                                                     _tl2873628775_)
                                                    ((lambda (_L28778_
                                                              _L28779_
                                                              _L28780_)
                                                       (if (gxc#apply-find-var-refs
                                                            _L28780_
                                                            (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _vars28717_))
                   (gxc#push-match-vars-stop _stx28716_ _vars28717_ _K28718_)
                   (gxc#xform-wrap-source
                    (cons '%#if
                          (cons _L28780_
                                (cons (gxc#compile-e
                                       _L28779_
                                       _vars28717_
                                       _K28718_)
                                      (cons (gxc#compile-e
                                             _L28778_
                                             _vars28717_
                                             _K28718_)
                                            '()))))
                    _stx28716_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd2873528773_
                                                     _hd2873228765_
                                                     _hd2872928757_)
                                                    (_g2872028741_
                                                     _g2872128744_))))
                                            (_g2872028741_ _g2872128744_))))
                                    (_g2872028741_ _g2872128744_))))
                            (_g2872028741_ _g2872128744_))))
                    (_g2872028741_ _g2872128744_)))))
        (_g2871928798_ _stx28716_))))
  (define gxc#push-match-vars-call%
    (lambda (_stx28636_ _vars28637_ _K28638_)
      (let* ((_g2864028659_
              (lambda (_g2864128656_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2864128656_)))
             (_g2863928713_
              (lambda (_g2864128662_)
                (if (gx#stx-pair? _g2864128662_)
                    (let ((_e2864328664_ (gx#stx-e _g2864128662_)))
                      (let ((_hd2864428667_ (##car _e2864328664_))
                            (_tl2864528669_ (##cdr _e2864328664_)))
                        (if (gx#stx-pair? _tl2864528669_)
                            (let ((_e2864628672_ (gx#stx-e _tl2864528669_)))
                              (let ((_hd2864728675_ (##car _e2864628672_))
                                    (_tl2864828677_ (##cdr _e2864628672_)))
                                (if (gx#stx-pair? _hd2864728675_)
                                    (let ((_e2864928680_
                                           (gx#stx-e _hd2864728675_)))
                                      (let ((_hd2865028683_
                                             (##car _e2864928680_))
                                            (_tl2865128685_
                                             (##cdr _e2864928680_)))
                                        (if (gx#identifier? _hd2865028683_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2865028683_)
                                                (if (gx#stx-pair?
                                                     _tl2865128685_)
                                                    (let ((_e2865228688_
                                                           (gx#stx-e
                                                            _tl2865128685_)))
                                                      (let ((_hd2865328691_
                                                             (##car _e2865228688_))
                                                            (_tl2865428693_
                                                             (##cdr _e2865228688_)))
                                                        (if (gx#stx-null?
                                                             _tl2865428693_)
                                                            ((lambda (_L28696_)
                                                               (if (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L28696_
                                _K28638_)
                               (pair? _vars28637_)
                               '#f)
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (reverse _vars28637_)
                                        (cons _stx28636_ '())))
                            _stx28636_)
                           _stx28636_))
                     _hd2865328691_)
                    (_g2864028659_ _g2864128662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2864028659_
                                                     _g2864128662_))
                                                (_g2864028659_ _g2864128662_))
                                            (_g2864028659_ _g2864128662_))))
                                    (_g2864028659_ _g2864128662_))))
                            (_g2864028659_ _g2864128662_))))
                    (_g2864028659_ _g2864128662_)))))
        (_g2863928713_ _stx28636_))))
  (define gxc#push-match-vars-stop
    (lambda (_stx28632_ _vars28633_ _K28634_)
      (if (null? _vars28633_)
          _stx28632_
          (gxc#xform-wrap-source
           (cons '%#let-values
                 (cons (reverse _vars28633_) (cons _stx28632_ '())))
           _stx28632_)))))
