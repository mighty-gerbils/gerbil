(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 200))
  (define gxc#&optmize-annotated
    (##make-promise
     (lambda ()
       (let ((_tbl39799_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl39799_ (force gxc#&basic-xform))
           (table-set! _tbl39799_ '%#begin-annotation gxc#optimize-annotation%)
           _tbl39799_)))))
  (define gxc#apply-optimize-annotated
    (lambda (_stx39792_ . _args39794_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39792_ _args39794_))
       gxc#current-compile-methods
       (force gxc#&optmize-annotated))))
  (define gxc#&generate-runtime-repr
    (##make-promise
     (lambda ()
       (let ((_tbl39789_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl39789_ (force gxc#&generate-runtime))
           (table-set! _tbl39789_ '%#quote-syntax identity)
           _tbl39789_)))))
  (define gxc#apply-generate-runtime-repr
    (lambda (_stx39782_ . _args39784_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39782_ _args39784_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-repr))))
  (define gxc#&push-match-vars
    (##make-promise
     (lambda ()
       (let ((_tbl39779_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl39779_ '%#lambda gxc#xform-lambda%)
           (table-set!
            _tbl39779_
            '%#let-values
            gxc#push-match-vars-let-values%)
           (table-set! _tbl39779_ '%#letrec-values gxc#push-match-vars-stop)
           (table-set! _tbl39779_ '%#if gxc#push-match-vars-if%)
           (table-set! _tbl39779_ '%#call gxc#push-match-vars-call%)
           _tbl39779_)))))
  (define gxc#apply-push-match-vars
    (lambda (_stx39772_ . _args39774_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx39772_ _args39774_))
       gxc#current-compile-methods
       (force gxc#&push-match-vars))))
  (define gxc#current-annotation-optimizer (make-parameter '()))
  (define gxc#optimize-annotation%
    (lambda (_stx39690_)
      (let* ((___stx3981539816_ _stx39690_)
             (_g3969339710_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx3981539816_))))
        (let ((___kont3981739818_
               (lambda (_L39746_ _L39747_)
                 (let ((_ann39763_ (gx#stx-e _L39747_)))
                   (call-with-parameters
                    (lambda ()
                      (let ((_$e39766_ _ann39763_))
                        (if (eq? '@match _$e39766_)
                            (begin
                              (gxc#verbose '"Optimizing match expansion")
                              (gxc#optimize-match _L39746_))
                            (if (eq? '@syntax-case _$e39766_)
                                (begin
                                  (gxc#verbose
                                   '"Optimizing syntax-case expansion")
                                  (gxc#optimize-syntax-case _L39746_))
                                (gxc#compile-e _L39746_)))))
                    gxc#current-annotation-optimizer
                    (cons _ann39763_ (gxc#current-annotation-optimizer))))))
              (___kont3981939820_
               (lambda () (gxc#xform-begin-annotation% _stx39690_))))
          (let ((___match3984039841_
                 (lambda (_e3969739722_
                          _hd3969839725_
                          _tl3969939727_
                          _e3970039730_
                          _hd3970139733_
                          _tl3970239735_
                          _e3970339738_
                          _hd3970439741_
                          _tl3970539743_)
                   (let ((_L39746_ _hd3970439741_) (_L39747_ _hd3970139733_))
                     (if (gx#identifier? _L39747_)
                         (___kont3981739818_ _L39746_ _L39747_)
                         (___kont3981939820_))))))
            (if (gx#stx-pair? ___stx3981539816_)
                (let ((_e3969739722_ (gx#stx-e ___stx3981539816_)))
                  (let ((_tl3969939727_ (##cdr _e3969739722_))
                        (_hd3969839725_ (##car _e3969739722_)))
                    (if (gx#stx-pair? _tl3969939727_)
                        (let ((_e3970039730_ (gx#stx-e _tl3969939727_)))
                          (let ((_tl3970239735_ (##cdr _e3970039730_))
                                (_hd3970139733_ (##car _e3970039730_)))
                            (if (gx#stx-pair? _tl3970239735_)
                                (let ((_e3970339738_
                                       (gx#stx-e _tl3970239735_)))
                                  (let ((_tl3970539743_ (##cdr _e3970339738_))
                                        (_hd3970439741_ (##car _e3970339738_)))
                                    (if (gx#stx-null? _tl3970539743_)
                                        (___match3984039841_
                                         _e3969739722_
                                         _hd3969839725_
                                         _tl3969939727_
                                         _e3970039730_
                                         _hd3970139733_
                                         _tl3970239735_
                                         _e3970339738_
                                         _hd3970439741_
                                         _tl3970539743_)
                                        (___kont3981939820_))))
                                (___kont3981939820_))))
                        (___kont3981939820_))))
                (___kont3981939820_)))))))
  (define gxc#optimize-match
    (lambda (_stx38989_)
      (let* ((_g3899139021_
              (lambda (_g3899239018_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3899239018_)))
             (_g3899039687_
              (lambda (_g3899239024_)
                (if (gx#stx-pair? _g3899239024_)
                    (let ((_e3899639026_ (gx#stx-e _g3899239024_)))
                      (let ((_hd3899739029_ (##car _e3899639026_))
                            (_tl3899839031_ (##cdr _e3899639026_)))
                        (if (gx#identifier? _hd3899739029_)
                            (if (gx#stx-eq? '%#let-values _hd3899739029_)
                                (if (gx#stx-pair? _tl3899839031_)
                                    (let ((_e3899939034_
                                           (gx#stx-e _tl3899839031_)))
                                      (let ((_hd3900039037_
                                             (##car _e3899939034_))
                                            (_tl3900139039_
                                             (##cdr _e3899939034_)))
                                        (if (gx#stx-pair? _hd3900039037_)
                                            (let ((_e3900239042_
                                                   (gx#stx-e _hd3900039037_)))
                                              (let ((_hd3900339045_
                                                     (##car _e3900239042_))
                                                    (_tl3900439047_
                                                     (##cdr _e3900239042_)))
                                                (if (gx#stx-pair?
                                                     _hd3900339045_)
                                                    (let ((_e3900539050_
                                                           (gx#stx-e
                                                            _hd3900339045_)))
                                                      (let ((_hd3900639053_
                                                             (##car _e3900539050_))
                                                            (_tl3900739055_
                                                             (##cdr _e3900539050_)))
                                                        (if (gx#stx-pair?
                                                             _hd3900639053_)
                                                            (let ((_e3900839058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3900639053_)))
                      (let ((_hd3900939061_ (##car _e3900839058_))
                            (_tl3901039063_ (##cdr _e3900839058_)))
                        (if (gx#stx-null? _tl3901039063_)
                            (if (gx#stx-pair? _tl3900739055_)
                                (let ((_e3901139066_
                                       (gx#stx-e _tl3900739055_)))
                                  (let ((_hd3901239069_ (##car _e3901139066_))
                                        (_tl3901339071_ (##cdr _e3901139066_)))
                                    (if (gx#stx-null? _tl3901339071_)
                                        (if (gx#stx-null? _tl3900439047_)
                                            (if (gx#stx-pair? _tl3900139039_)
                                                (let ((_e3901439074_
                                                       (gx#stx-e
                                                        _tl3900139039_)))
                                                  (let ((_hd3901539077_
                                                         (##car _e3901439074_))
                                                        (_tl3901639079_
                                                         (##cdr _e3901439074_)))
                                                    (if (gx#stx-null?
                                                         _tl3901639079_)
                                                        ((lambda (_L39082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L39083_
                          _L39084_)
                   (let _lp39108_ ((_body39110_ _L39082_)
                                   (_negation39111_ (cons _L39084_ _L39083_))
                                   (_clauses39112_ '())
                                   (_konts39113_ '()))
                     (let* ((___stx4002340024_ _body39110_)
                            (_g3911639156_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4002340024_))))
                       (let ((___kont4002540026_
                              (lambda (_L39486_)
                                (let* ((___stx3995939960_ _L39486_)
                                       (_g3950039530_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx3995939960_))))
                                  (let ((___kont3996139962_
                                         (lambda (_L39626_ _L39627_ _L39628_)
                                           (if (null? _clauses39112_)
                                               (let* ((_negation3965239659_
                                                       _negation39111_)
                                                      (_E3965439663_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _negation3965239659_)))
                                                      (_K3965539669_
                                                       (lambda (_negate39666_
                                                                _E39667_)
                                                         (gxc#xform-wrap-source
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _E39667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _negate39666_ '()))
                                    '())
                              (cons (cons '%#let-values
                                          (cons (cons (cons (cons _L39628_ '())
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L39627_)
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L39626_ '())))
                                    '())))
                  _stx38989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _negation3965239659_)
                                                     (let ((_hd3965639672_
                                                            (##car _negation3965239659_))
                                                           (_tl3965739674_
                                                            (##cdr _negation3965239659_)))
                                                       (let* ((_E39677_
                                                               _hd3965639672_)
                                                              (_negate39679_
                                                               _tl3965739674_))
                                                         (_K3965539669_
                                                          _negate39679_
                                                          _E39677_)))
                                                     (_E3965439663_)))
                                               (gxc#optimize-match-body
                                                _stx38989_
                                                _negation39111_
                                                (cons (cons '#f
                                                            (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#lambda)
                          (cons '() (cons _L39626_ '()))))
              _clauses39112_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _L39628_
                                                            (gxc#compile-e
                                                             _L39627_))
                                                      _konts39113_)))))
                                        (___kont3996339964_
                                         (lambda ()
                                           (let* ((_negation3953639543_
                                                   _negation39111_)
                                                  (_E3953839547_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _negation3953639543_)))
                                                  (_K3953939553_
                                                   (lambda (_negate39550_
                                                            _E39551_)
                                                     (gxc#xform-wrap-source
                                                      (cons '%#let-values
                                                            (cons (cons (cons (cons _E39551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                            '())
                                      (cons _negate39550_ '()))
                                '())
                          (cons _L39486_ '())))
              _stx38989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _negation3953639543_)
                                                 (let ((_hd3954039556_
                                                        (##car _negation3953639543_))
                                                       (_tl3954139558_
                                                        (##cdr _negation3953639543_)))
                                                   (let* ((_E39561_
                                                           _hd3954039556_)
                                                          (_negate39563_
                                                           _tl3954139558_))
                                                     (_K3953939553_
                                                      _negate39563_
                                                      _E39561_)))
                                                 (_E3953839547_))))))
                                    (let ((_g3949939565_
                                           (lambda ()
                                             (if (null? _clauses39112_)
                                                 (___kont3996339964_)
                                                 (_g3950039530_)))))
                                      (if (gx#stx-pair? ___stx3995939960_)
                                          (let ((_e3950539570_
                                                 (gx#stx-e ___stx3995939960_)))
                                            (let ((_tl3950739575_
                                                   (##cdr _e3950539570_))
                                                  (_hd3950639573_
                                                   (##car _e3950539570_)))
                                              (if (gx#identifier?
                                                   _hd3950639573_)
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd3950639573_)
                                                      (if (gx#stx-pair?
                                                           _tl3950739575_)
                                                          (let ((_e3950839578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3950739575_)))
                    (let ((_tl3951039583_ (##cdr _e3950839578_))
                          (_hd3950939581_ (##car _e3950839578_)))
                      (if (gx#stx-pair? _hd3950939581_)
                          (let ((_e3951139586_ (gx#stx-e _hd3950939581_)))
                            (let ((_tl3951339591_ (##cdr _e3951139586_))
                                  (_hd3951239589_ (##car _e3951139586_)))
                              (if (gx#stx-pair? _hd3951239589_)
                                  (let ((_e3951439594_
                                         (gx#stx-e _hd3951239589_)))
                                    (let ((_tl3951639599_
                                           (##cdr _e3951439594_))
                                          (_hd3951539597_
                                           (##car _e3951439594_)))
                                      (if (gx#stx-pair? _hd3951539597_)
                                          (let ((_e3951739602_
                                                 (gx#stx-e _hd3951539597_)))
                                            (let ((_tl3951939607_
                                                   (##cdr _e3951739602_))
                                                  (_hd3951839605_
                                                   (##car _e3951739602_)))
                                              (if (gx#stx-null? _tl3951939607_)
                                                  (if (gx#stx-pair?
                                                       _tl3951639599_)
                                                      (let ((_e3952039610_
                                                             (gx#stx-e
                                                              _tl3951639599_)))
                                                        (let ((_tl3952239615_
                                                               (##cdr _e3952039610_))
                                                              (_hd3952139613_
                                                               (##car _e3952039610_)))
                                                          (if (gx#stx-null?
                                                               _tl3952239615_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3951339591_)
                          (if (gx#stx-pair? _tl3951039583_)
                              (let ((_e3952339618_ (gx#stx-e _tl3951039583_)))
                                (let ((_tl3952539623_ (##cdr _e3952339618_))
                                      (_hd3952439621_ (##car _e3952339618_)))
                                  (if (gx#stx-null? _tl3952539623_)
                                      (___kont3996139962_
                                       _hd3952439621_
                                       _hd3952139613_
                                       _hd3951839605_)
                                      (_g3949939565_))))
                              (_g3949939565_))
                          (_g3949939565_))
                      (_g3949939565_))))
              (_g3949939565_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3949939565_))))
                                          (_g3949939565_))))
                                  (_g3949939565_))))
                          (_g3949939565_))))
                  (_g3949939565_))
              (_g3949939565_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3949939565_))))
                                          (_g3949939565_)))))))
                             (___kont4002740028_
                              (lambda (_L39217_ _L39218_ _L39219_)
                                (let* ((___stx3984339844_ _L39218_)
                                       (_g3924639295_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx3984339844_))))
                                  (let ((___kont3984539846_
                                         (lambda (_L39423_ _L39424_ _L39425_)
                                           (_lp39108_
                                            _L39217_
                                            _negation39111_
                                            (cons (cons _L39219_
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#lambda)
                                                              (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L39423_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _clauses39112_)
                                            (cons (cons _L39425_
                                                        (gxc#compile-e
                                                         _L39424_))
                                                  _konts39113_))))
                                        (___kont3984739848_
                                         (lambda (_L39324_)
                                           (_lp39108_
                                            _L39217_
                                            (cons _L39219_
                                                  (gxc#compile-e _L39324_))
                                            _clauses39112_
                                            _konts39113_))))
                                    (if (gx#stx-pair? ___stx3984339844_)
                                        (let ((_e3925139343_
                                               (gx#stx-e ___stx3984339844_)))
                                          (let ((_tl3925339348_
                                                 (##cdr _e3925139343_))
                                                (_hd3925239346_
                                                 (##car _e3925139343_)))
                                            (if (gx#identifier? _hd3925239346_)
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd3925239346_)
                                                    (if (gx#stx-pair?
                                                         _tl3925339348_)
                                                        (let ((_e3925439351_
                                                               (gx#stx-e
                                                                _tl3925339348_)))
                                                          (let ((_tl3925639356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3925439351_))
                        (_hd3925539354_ (##car _e3925439351_)))
                    (if (gx#stx-null? _hd3925539354_)
                        (if (gx#stx-pair? _tl3925639356_)
                            (let ((_e3925739359_ (gx#stx-e _tl3925639356_)))
                              (let ((_tl3925939364_ (##cdr _e3925739359_))
                                    (_hd3925839362_ (##car _e3925739359_)))
                                (if (gx#stx-pair? _hd3925839362_)
                                    (let ((_e3926039367_
                                           (gx#stx-e _hd3925839362_)))
                                      (let ((_tl3926239372_
                                             (##cdr _e3926039367_))
                                            (_hd3926139370_
                                             (##car _e3926039367_)))
                                        (if (gx#identifier? _hd3926139370_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3926139370_)
                                                (if (gx#stx-pair?
                                                     _tl3926239372_)
                                                    (let ((_e3926339375_
                                                           (gx#stx-e
                                                            _tl3926239372_)))
                                                      (let ((_tl3926539380_
                                                             (##cdr _e3926339375_))
                                                            (_hd3926439378_
                                                             (##car _e3926339375_)))
                                                        (if (gx#stx-pair?
                                                             _hd3926439378_)
                                                            (let ((_e3926639383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3926439378_)))
                      (let ((_tl3926839388_ (##cdr _e3926639383_))
                            (_hd3926739386_ (##car _e3926639383_)))
                        (if (gx#stx-pair? _hd3926739386_)
                            (let ((_e3926939391_ (gx#stx-e _hd3926739386_)))
                              (let ((_tl3927139396_ (##cdr _e3926939391_))
                                    (_hd3927039394_ (##car _e3926939391_)))
                                (if (gx#stx-pair? _hd3927039394_)
                                    (let ((_e3927239399_
                                           (gx#stx-e _hd3927039394_)))
                                      (let ((_tl3927439404_
                                             (##cdr _e3927239399_))
                                            (_hd3927339402_
                                             (##car _e3927239399_)))
                                        (if (gx#stx-null? _tl3927439404_)
                                            (if (gx#stx-pair? _tl3927139396_)
                                                (let ((_e3927539407_
                                                       (gx#stx-e
                                                        _tl3927139396_)))
                                                  (let ((_tl3927739412_
                                                         (##cdr _e3927539407_))
                                                        (_hd3927639410_
                                                         (##car _e3927539407_)))
                                                    (if (gx#stx-null?
                                                         _tl3927739412_)
                                                        (if (gx#stx-null?
                                                             _tl3926839388_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3926539380_)
                        (let ((_e3927839415_ (gx#stx-e _tl3926539380_)))
                          (let ((_tl3928039420_ (##cdr _e3927839415_))
                                (_hd3927939418_ (##car _e3927839415_)))
                            (if (gx#stx-null? _tl3928039420_)
                                (if (gx#stx-null? _tl3925939364_)
                                    (___kont3984539846_
                                     _hd3927939418_
                                     _hd3927639410_
                                     _hd3927339402_)
                                    (_g3924639295_))
                                (_g3924639295_))))
                        (_g3924639295_))
                    (_g3924639295_))
                (_g3924639295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3924639295_))
                                            (_g3924639295_))))
                                    (_g3924639295_))))
                            (_g3924639295_))))
                    (_g3924639295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3924639295_))
                                                (_g3924639295_))
                                            (_g3924639295_))))
                                    (_g3924639295_))))
                            (_g3924639295_))
                        (_g3924639295_))))
                (_g3924639295_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#begin-annotation
                                                         _hd3925239346_)
                                                        (if (gx#stx-pair?
                                                             _tl3925339348_)
                                                            (let ((_e3928539308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3925339348_)))
                      (let ((_tl3928739313_ (##cdr _e3928539308_))
                            (_hd3928639311_ (##car _e3928539308_)))
                        (if (gx#identifier? _hd3928639311_)
                            (if (gx#stx-eq? '@match-else _hd3928639311_)
                                (if (gx#stx-pair? _tl3928739313_)
                                    (let ((_e3928839316_
                                           (gx#stx-e _tl3928739313_)))
                                      (let ((_tl3929039321_
                                             (##cdr _e3928839316_))
                                            (_hd3928939319_
                                             (##car _e3928839316_)))
                                        (if (gx#stx-null? _tl3929039321_)
                                            (___kont3984739848_ _hd3928939319_)
                                            (_g3924639295_))))
                                    (_g3924639295_))
                                (_g3924639295_))
                            (_g3924639295_))))
                    (_g3924639295_))
                (_g3924639295_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3924639295_))))
                                        (_g3924639295_)))))))
                         (if (gx#stx-pair? ___stx4002340024_)
                             (let ((_e3911939462_
                                    (gx#stx-e ___stx4002340024_)))
                               (let ((_tl3912139467_ (##cdr _e3911939462_))
                                     (_hd3912039465_ (##car _e3911939462_)))
                                 (if (gx#identifier? _hd3912039465_)
                                     (if (gx#stx-eq?
                                          '%#begin-annotation
                                          _hd3912039465_)
                                         (if (gx#stx-pair? _tl3912139467_)
                                             (let ((_e3912239470_
                                                    (gx#stx-e _tl3912139467_)))
                                               (let ((_tl3912439475_
                                                      (##cdr _e3912239470_))
                                                     (_hd3912339473_
                                                      (##car _e3912239470_)))
                                                 (if (gx#identifier?
                                                      _hd3912339473_)
                                                     (if (gx#stx-eq?
                                                          '@match-body
                                                          _hd3912339473_)
                                                         (if (gx#stx-pair?
                                                              _tl3912439475_)
                                                             (let ((_e3912539478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3912439475_)))
                       (let ((_tl3912739483_ (##cdr _e3912539478_))
                             (_hd3912639481_ (##car _e3912539478_)))
                         (if (gx#stx-null? _tl3912739483_)
                             (___kont4002540026_ _hd3912639481_)
                             (_g3911639156_))))
                     (_g3911639156_))
                 (_g3911639156_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3911639156_))))
                                             (_g3911639156_))
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd3912039465_)
                                             (if (gx#stx-pair? _tl3912139467_)
                                                 (let ((_e3913439169_
                                                        (gx#stx-e
                                                         _tl3912139467_)))
                                                   (let ((_tl3913639174_
                                                          (##cdr _e3913439169_))
                                                         (_hd3913539172_
                                                          (##car _e3913439169_)))
                                                     (if (gx#stx-pair?
                                                          _hd3913539172_)
                                                         (let ((_e3913739177_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3913539172_)))
                   (let ((_tl3913939182_ (##cdr _e3913739177_))
                         (_hd3913839180_ (##car _e3913739177_)))
                     (if (gx#stx-pair? _hd3913839180_)
                         (let ((_e3914039185_ (gx#stx-e _hd3913839180_)))
                           (let ((_tl3914239190_ (##cdr _e3914039185_))
                                 (_hd3914139188_ (##car _e3914039185_)))
                             (if (gx#stx-pair? _hd3914139188_)
                                 (let ((_e3914339193_
                                        (gx#stx-e _hd3914139188_)))
                                   (let ((_tl3914539198_ (##cdr _e3914339193_))
                                         (_hd3914439196_
                                          (##car _e3914339193_)))
                                     (if (gx#stx-null? _tl3914539198_)
                                         (if (gx#stx-pair? _tl3914239190_)
                                             (let ((_e3914639201_
                                                    (gx#stx-e _tl3914239190_)))
                                               (let ((_tl3914839206_
                                                      (##cdr _e3914639201_))
                                                     (_hd3914739204_
                                                      (##car _e3914639201_)))
                                                 (if (gx#stx-null?
                                                      _tl3914839206_)
                                                     (if (gx#stx-null?
                                                          _tl3913939182_)
                                                         (if (gx#stx-pair?
                                                              _tl3913639174_)
                                                             (let ((_e3914939209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3913639174_)))
                       (let ((_tl3915139214_ (##cdr _e3914939209_))
                             (_hd3915039212_ (##car _e3914939209_)))
                         (if (gx#stx-null? _tl3915139214_)
                             (___kont4002740028_
                              _hd3915039212_
                              _hd3914739204_
                              _hd3914439196_)
                             (_g3911639156_))))
                     (_g3911639156_))
                 (_g3911639156_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3911639156_))))
                                             (_g3911639156_))
                                         (_g3911639156_))))
                                 (_g3911639156_))))
                         (_g3911639156_))))
                 (_g3911639156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3911639156_))
                                             (_g3911639156_)))
                                     (_g3911639156_))))
                             (_g3911639156_))))))
                 _hd3901539077_
                 _hd3901239069_
                 _hd3900939061_)
                (_g3899139021_ _g3899239024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3899139021_ _g3899239024_))
                                            (_g3899139021_ _g3899239024_))
                                        (_g3899139021_ _g3899239024_))))
                                (_g3899139021_ _g3899239024_))
                            (_g3899139021_ _g3899239024_))))
                    (_g3899139021_ _g3899239024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3899139021_
                                                     _g3899239024_))))
                                            (_g3899139021_ _g3899239024_))))
                                    (_g3899139021_ _g3899239024_))
                                (_g3899139021_ _g3899239024_))
                            (_g3899139021_ _g3899239024_))))
                    (_g3899139021_ _g3899239024_)))))
        (_g3899039687_ _stx38989_))))
  (define gxc#optimize-match-body
    (lambda (_stx38695_ _negation38696_ _clauses38697_ _konts38698_)
      (letrec ((_push-variables38700_
                (lambda (_clause38947_ _kont38948_)
                  (let ((_clause3894938959_ _clause38947_)
                        (_kont3895038961_ _kont38948_))
                    (let* ((_E3895238965_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause3894938959_
                                     _kont3895038961_)))
                           (_K3895338972_
                            (lambda (_clause-lambda38968_
                                     _clause-name38969_
                                     _K38970_)
                              (cons _clause-name38969_
                                    (gxc#apply-push-match-vars
                                     _clause-lambda38968_
                                     '()
                                     _K38970_)))))
                      (if (##pair? _clause3894938959_)
                          (let ((_hd3895638975_ (##car _clause3894938959_))
                                (_tl3895738977_ (##cdr _clause3894938959_)))
                            (let* ((_clause-name38980_ _hd3895638975_)
                                   (_clause-lambda38982_ _tl3895738977_))
                              (if (##pair? _kont3895038961_)
                                  (let* ((_hd3895438984_
                                          (##car _kont3895038961_))
                                         (_K38987_ _hd3895438984_))
                                    (_K3895338972_
                                     _clause-lambda38982_
                                     _clause-name38980_
                                     _K38987_))
                                  (_E3895238965_))))
                          (_E3895238965_))))))
               (_start-match38701_
                (lambda (_kont38881_)
                  (let* ((_g3888338899_
                          (lambda (_g3888438896_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3888438896_)))
                         (_g3888238944_
                          (lambda (_g3888438902_)
                            (if (gx#stx-pair? _g3888438902_)
                                (let ((_e3888638904_ (gx#stx-e _g3888438902_)))
                                  (let ((_hd3888738907_ (##car _e3888638904_))
                                        (_tl3888838909_ (##cdr _e3888638904_)))
                                    (if (gx#identifier? _hd3888738907_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3888738907_)
                                            (if (gx#stx-pair? _tl3888838909_)
                                                (let ((_e3888938912_
                                                       (gx#stx-e
                                                        _tl3888838909_)))
                                                  (let ((_hd3889038915_
                                                         (##car _e3888938912_))
                                                        (_tl3889138917_
                                                         (##cdr _e3888938912_)))
                                                    (if (gx#stx-null?
                                                         _hd3889038915_)
                                                        (if (gx#stx-pair?
                                                             _tl3889138917_)
                                                            (let ((_e3889238920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3889138917_)))
                      (let ((_hd3889338923_ (##car _e3889238920_))
                            (_tl3889438925_ (##cdr _e3889238920_)))
                        (if (gx#stx-null? _tl3889438925_)
                            ((lambda (_L38928_) _L38928_) _hd3889338923_)
                            (_g3888338899_ _g3888438902_))))
                    (_g3888338899_ _g3888438902_))
                (_g3888338899_ _g3888438902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3888338899_ _g3888438902_))
                                            (_g3888338899_ _g3888438902_))
                                        (_g3888338899_ _g3888438902_))))
                                (_g3888338899_ _g3888438902_)))))
                    (_g3888238944_ _kont38881_))))
               (_match-body38702_
                (lambda (_blocks38778_)
                  (let* ((_blocks3877938788_ _blocks38778_)
                         (_E3878138792_
                          (lambda ()
                            (error '"No clause matching" _blocks3877938788_)))
                         (_K3878238864_
                          (lambda (_rest38795_ _start38796_)
                            (let _lp38798_ ((_rest38800_ _rest38795_)
                                            (_body38801_
                                             (_start-match38701_
                                              _start38796_)))
                              (let* ((_rest3880238810_ _rest38800_)
                                     (_else3880438818_ (lambda () _body38801_))
                                     (_K3880638852_
                                      (lambda (_rest38821_ _block38822_)
                                        (let* ((_block3882338830_ _block38822_)
                                               (_E3882538834_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _block3882338830_)))
                                               (_K3882638840_
                                                (lambda (_kont38837_ _K38838_)
                                                  (_lp38798_
                                                   _rest38821_
                                                   (cons '%#let-values
                                                         (cons (cons (cons (cons _K38838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons _kont38837_ '()))
                             '())
                       (cons _body38801_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _block3882338830_)
                                              (let ((_hd3882738843_
                                                     (##car _block3882338830_))
                                                    (_tl3882838845_
                                                     (##cdr _block3882338830_)))
                                                (let* ((_K38848_
                                                        _hd3882738843_)
                                                       (_kont38850_
                                                        _tl3882838845_))
                                                  (_K3882638840_
                                                   _kont38850_
                                                   _K38848_)))
                                              (_E3882538834_))))))
                                (if (##pair? _rest3880238810_)
                                    (let ((_hd3880738855_
                                           (##car _rest3880238810_))
                                          (_tl3880838857_
                                           (##cdr _rest3880238810_)))
                                      (let* ((_block38860_ _hd3880738855_)
                                             (_rest38862_ _tl3880838857_))
                                        (_K3880638852_
                                         _rest38862_
                                         _block38860_)))
                                    (_else3880438818_)))))))
                    (if (##pair? _blocks3877938788_)
                        (let ((_hd3878338867_ (##car _blocks3877938788_))
                              (_tl3878438869_ (##cdr _blocks3877938788_)))
                          (if (##pair? _hd3878338867_)
                              (let ((_hd3878538872_ (##car _hd3878338867_))
                                    (_tl3878638874_ (##cdr _hd3878338867_)))
                                (if (##eq? _hd3878538872_ '#f)
                                    (let* ((_start38877_ _tl3878638874_)
                                           (_rest38879_ _tl3878438869_))
                                      (_K3878238864_ _rest38879_ _start38877_))
                                    (_E3878138792_)))
                              (_E3878138792_)))
                        (_E3878138792_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_clauses38705_
                   (map _push-variables38700_ _clauses38697_ _konts38698_))
                  (_blocks38707_
                   (gxc#optimize-match-basic-blocks _clauses38705_))
                  (_blocks38709_
                   (gxc#optimize-match-fold-basic-blocks _blocks38707_))
                  (_body38711_ (_match-body38702_ _blocks38709_))
                  (_bind38745_
                   (map (lambda (_e3871238714_)
                          (let* ((_g3871638723_ _e3871238714_)
                                 (_E3871838727_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g3871638723_)))
                                 (_K3871938733_
                                  (lambda (_kont38730_ _K38731_)
                                    (cons (cons _K38731_ '())
                                          (cons _kont38730_ '())))))
                            (if (##pair? _g3871638723_)
                                (let ((_hd3872038736_ (##car _g3871638723_))
                                      (_tl3872138738_ (##cdr _g3871638723_)))
                                  (let* ((_K38741_ _hd3872038736_)
                                         (_kont38743_ _tl3872138738_))
                                    (_K3871938733_ _kont38743_ _K38741_)))
                                (_E3871838727_))))
                        _konts38698_))
                  (_negate38775_
                   (let* ((_negation3874638753_ _negation38696_)
                          (_E3874838757_
                           (lambda ()
                             (error '"No clause matching"
                                    _negation3874638753_)))
                          (_K3874938763_
                           (lambda (_kont38760_ _K38761_)
                             (cons (cons _K38761_ '())
                                   (cons _kont38760_ '())))))
                     (if (##pair? _negation3874638753_)
                         (let ((_hd3875038766_ (##car _negation3874638753_))
                               (_tl3875138768_ (##cdr _negation3874638753_)))
                           (let* ((_K38771_ _hd3875038766_)
                                  (_kont38773_ _tl3875138768_))
                             (_K3874938763_ _kont38773_ _K38771_)))
                         (_E3874838757_)))))
             (gxc#xform-wrap-source
              (cons '%#let-values
                    (cons (cons _negate38775_ '())
                          (cons (cons '%#let-values
                                      (cons _bind38745_
                                            (cons _body38711_ '())))
                                '())))
              _stx38695_)))
         gx#current-expander-context
         (let ((__obj42888 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj42888) __obj42888))))))
  (define gxc#optimize-match-basic-blocks
    (lambda (_clauses38655_)
      (let _lp38657_ ((_rest38659_ _clauses38655_) (_blocks38660_ '()))
        (let* ((_rest3866138669_ _rest38659_)
               (_else3866338677_ (lambda () (reverse _blocks38660_)))
               (_K3866538683_
                (lambda (_rest38680_ _clause38681_)
                  (_lp38657_
                   _rest38680_
                   (gxc#optimize-match-lift-basic-blocks
                    _clause38681_
                    _blocks38660_)))))
          (if (##pair? _rest3866138669_)
              (let ((_hd3866638686_ (##car _rest3866138669_))
                    (_tl3866738688_ (##cdr _rest3866138669_)))
                (let* ((_clause38691_ _hd3866638686_)
                       (_rest38693_ _tl3866738688_))
                  (_K3866538683_ _rest38693_ _clause38691_)))
              (_else3866338677_))))))
  (define gxc#optimize-match-lift-basic-blocks
    (lambda (_clause37999_ _blocks38000_)
      (letrec ((_bind->args38002_
                (lambda (_bind38650_)
                  (foldl1 (lambda (_b38652_ _r38653_)
                            (cons (cons '%#ref (cons (car _b38652_) '()))
                                  _r38653_))
                          '()
                          _bind38650_)))
               (_create-block38003_
                (lambda (_body38599_ _let-bind38600_ _bind38601_ _assert38602_)
                  (let* ((_id38604_ (make-symbol (gensym '__match)))
                         (_id38606_ (gx#core-quote-syntax__0 _id38604_))
                         (_g42891_ (gx#core-bind-runtime!__0 _id38606_))
                         (_block38609_
                          (cons _id38606_
                                (cons _body38599_
                                      (cons _bind38601_
                                            (cons _assert38602_ '())))))
                         (_continue38611_
                          (cons '%#call
                                (cons (cons '%#ref (cons _id38606_ '()))
                                      (_bind->args38002_ _bind38601_))))
                         (_continue38647_
                          (if (null? _let-bind38600_)
                              _continue38611_
                              (let ((_locals38645_
                                     (map (lambda (_e3861238614_)
                                            (let* ((_g3861638623_
                                                    _e3861238614_)
                                                   (_E3861838627_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g3861638623_)))
                                                   (_K3861938633_
                                                    (lambda (_expr38630_
                                                             _id38631_)
                                                      (cons (cons _id38631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr38630_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g3861638623_)
                                                  (let ((_hd3862038636_
                                                         (##car _g3861638623_))
                                                        (_tl3862138638_
                                                         (##cdr _g3861638623_)))
                                                    (let* ((_id38641_
                                                            _hd3862038636_)
                                                           (_expr38643_
                                                            _tl3862138638_))
                                                      (_K3861938633_
                                                       _expr38643_
                                                       _id38641_)))
                                                  (_E3861838627_))))
                                          _let-bind38600_)))
                                (cons '%#let-values
                                      (cons _locals38645_
                                            (cons _continue38611_ '())))))))
                    (values _continue38647_ _block38609_))))
               (_basic-block38004_
                (lambda (_body38185_ _bind38186_ _assert38187_)
                  (let* ((___stx4013140132_ _body38185_)
                         (_g3819238276_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4013140132_))))
                    (let ((___kont4013340134_
                           (lambda (_L38535_ _L38536_ _L38537_)
                             (let ((_g42892_
                                    (_create-block38003_
                                     _L38536_
                                     '()
                                     _bind38186_
                                     (cons (cons _L38537_ '#t)
                                           _assert38187_))))
                               (begin
                                 (let ((_g42893_
                                        (if (##values? _g42892_)
                                            (##vector-length _g42892_)
                                            1)))
                                   (if (not (##fx= _g42893_ 2))
                                       (error "Context expects 2 values"
                                              _g42893_)))
                                 (let ((_k-continue38555_
                                        (##vector-ref _g42892_ 0))
                                       (_k-block38556_
                                        (##vector-ref _g42892_ 1)))
                                   (let* ((___stx4011340114_ _L38535_)
                                          (_g3855938568_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx4011340114_))))
                                     (let ((___kont4011540116_
                                            (lambda ()
                                              (values (cons '%#if
                                                            (cons _L38537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _k-continue38555_ (cons _L38535_ '()))))
              (cons _k-block38556_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4011740118_
                                            (lambda ()
                                              (let ((_g42894_
                                                     (_create-block38003_
                                                      _L38535_
                                                      '()
                                                      _bind38186_
                                                      (cons (cons _L38537_ '#f)
                                                            _assert38187_))))
                                                (begin
                                                  (let ((_g42895_
                                                         (if (##values?
                                                              _g42894_)
                                                             (##vector-length
                                                              _g42894_)
                                                             1)))
                                                    (if (not (##fx= _g42895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g42895_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_e-continue38575_
                                                         (##vector-ref
                                                          _g42894_
                                                          0))
                                                        (_e-block38576_
                                                         (##vector-ref
                                                          _g42894_
                                                          1)))
                                                    (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L38537_
                                (cons _k-continue38555_
                                      (cons _e-continue38575_ '()))))
                    (cons _k-block38556_ (cons _e-block38576_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? ___stx4011340114_)
                                           (let ((_e3856138583_
                                                  (gx#stx-e
                                                   ___stx4011340114_)))
                                             (let ((_tl3856338588_
                                                    (##cdr _e3856138583_))
                                                   (_hd3856238586_
                                                    (##car _e3856138583_)))
                                               (if (gx#identifier?
                                                    _hd3856238586_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _hd3856238586_)
                                                       (___kont4011540116_)
                                                       (___kont4011740118_))
                                                   (___kont4011740118_))))
                                           (___kont4011740118_)))))))))
                          (___kont4013540136_
                           (lambda () (values _body38185_ '())))
                          (___kont4013940140_
                           (lambda (_L38364_ _L38365_ _L38366_)
                             (let* ((_let-bind38401_
                                     (map cons
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3838638389_
                                                             _g3838738391_)
                                                      (cons _g3838638389_
                                                            _g3838738391_))
                                                    '()
                                                    _L38366_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3839338396_
                                                             _g3839438398_)
                                                      (cons _g3839338396_
                                                            _g3839438398_))
                                                    '()
                                                    _L38365_))))
                                    (_g42896_
                                     (_create-block38003_
                                      _L38364_
                                      _let-bind38401_
                                      (foldl1 cons _bind38186_ _let-bind38401_)
                                      _assert38187_)))
                               (begin
                                 (let ((_g42897_
                                        (if (##values? _g42896_)
                                            (##vector-length _g42896_)
                                            1)))
                                   (if (not (##fx= _g42897_ 2))
                                       (error "Context expects 2 values"
                                              _g42897_)))
                                 (let ((_continue38403_
                                        (##vector-ref _g42896_ 0))
                                       (_block38404_
                                        (##vector-ref _g42896_ 1)))
                                   (let ()
                                     (values _continue38403_
                                             (cons _block38404_ '()))))))))
                          (___kont4014340144_
                           (lambda () (values _body38185_ '()))))
                      (let* ((___match4022240223_
                              (lambda (_e3824338288_
                                       _hd3824438291_
                                       _tl3824538293_
                                       _e3824638296_
                                       _hd3824738299_
                                       _tl3824838301_
                                       ___splice4014140142_
                                       _target3824938304_
                                       _tl3825138306_)
                                (letrec ((_loop3825238309_
                                          (lambda (_hd3825038312_
                                                   _expr3825638314_
                                                   _id3825738316_)
                                            (if (gx#stx-pair? _hd3825038312_)
                                                (let ((_e3825338319_
                                                       (gx#stx-e
                                                        _hd3825038312_)))
                                                  (let ((_lp-tl3825538324_
                                                         (##cdr _e3825338319_))
                                                        (_lp-hd3825438322_
                                                         (##car _e3825338319_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3825438322_)
                                                        (let ((_e3826038327_
                                                               (gx#stx-e
                                                                _lp-hd3825438322_)))
                                                          (let ((_tl3826238332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3826038327_))
                        (_hd3826138330_ (##car _e3826038327_)))
                    (if (gx#stx-pair? _hd3826138330_)
                        (let ((_e3826338335_ (gx#stx-e _hd3826138330_)))
                          (let ((_tl3826538340_ (##cdr _e3826338335_))
                                (_hd3826438338_ (##car _e3826338335_)))
                            (if (gx#stx-null? _tl3826538340_)
                                (if (gx#stx-pair? _tl3826238332_)
                                    (let ((_e3826638343_
                                           (gx#stx-e _tl3826238332_)))
                                      (let ((_tl3826838348_
                                             (##cdr _e3826638343_))
                                            (_hd3826738346_
                                             (##car _e3826638343_)))
                                        (if (gx#stx-null? _tl3826838348_)
                                            (_loop3825238309_
                                             _lp-tl3825538324_
                                             (cons _hd3826738346_
                                                   _expr3825638314_)
                                             (cons _hd3826438338_
                                                   _id3825738316_))
                                            (___kont4014340144_))))
                                    (___kont4014340144_))
                                (___kont4014340144_))))
                        (___kont4014340144_))))
                (___kont4014340144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_id3825938353_
                                                       (reverse _id3825738316_))
                                                      (_expr3825838351_
                                                       (reverse _expr3825638314_)))
                                                  (if (gx#stx-pair?
                                                       _tl3824838301_)
                                                      (let ((_e3826938356_
                                                             (gx#stx-e
                                                              _tl3824838301_)))
                                                        (let ((_tl3827138361_
                                                               (##cdr _e3826938356_))
                                                              (_hd3827038359_
                                                               (##car _e3826938356_)))
                                                          (if (gx#stx-null?
                                                               _tl3827138361_)
                                                              (___kont4013940140_
                                                               _hd3827038359_
                                                               _expr3825838351_
                                                               _id3825938353_)
                                                              (___kont4014340144_))))
                                                      (___kont4014340144_)))))))
                                  (_loop3825238309_
                                   _target3824938304_
                                   '()
                                   '()))))
                             (___match4019840199_
                              (lambda (_e3820938412_
                                       _hd3821038415_
                                       _tl3821138417_
                                       _e3821238420_
                                       _hd3821338423_
                                       _tl3821438425_
                                       ___splice4013740138_
                                       _target3821538428_
                                       _tl3821738430_)
                                (letrec ((_loop3821838433_
                                          (lambda (_hd3821638436_)
                                            (if (gx#stx-pair? _hd3821638436_)
                                                (let ((_e3821938439_
                                                       (gx#stx-e
                                                        _hd3821638436_)))
                                                  (let ((_lp-tl3822138444_
                                                         (##cdr _e3821938439_))
                                                        (_lp-hd3822038442_
                                                         (##car _e3821938439_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3822038442_)
                                                        (let ((_e3822238447_
                                                               (gx#stx-e
                                                                _lp-hd3822038442_)))
                                                          (let ((_tl3822438452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3822238447_))
                        (_hd3822338450_ (##car _e3822238447_)))
                    (if (gx#stx-pair? _hd3822338450_)
                        (let ((_e3822538455_ (gx#stx-e _hd3822338450_)))
                          (let ((_tl3822738460_ (##cdr _e3822538455_))
                                (_hd3822638458_ (##car _e3822538455_)))
                            (if (gx#stx-null? _tl3822738460_)
                                (if (gx#stx-pair? _tl3822438452_)
                                    (let ((_e3822838463_
                                           (gx#stx-e _tl3822438452_)))
                                      (let ((_tl3823038468_
                                             (##cdr _e3822838463_))
                                            (_hd3822938466_
                                             (##car _e3822838463_)))
                                        (if (gx#stx-pair? _hd3822938466_)
                                            (let ((_e3823138471_
                                                   (gx#stx-e _hd3822938466_)))
                                              (let ((_tl3823338476_
                                                     (##cdr _e3823138471_))
                                                    (_hd3823238474_
                                                     (##car _e3823138471_)))
                                                (if (gx#identifier?
                                                     _hd3823238474_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3823238474_)
                                                        (if (gx#stx-pair?
                                                             _tl3823338476_)
                                                            (let ((_e3823438479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3823338476_)))
                      (let ((_tl3823638484_ (##cdr _e3823438479_))
                            (_hd3823538482_ (##car _e3823438479_)))
                        (if (gx#stx-null? _tl3823638484_)
                            (if (gx#stx-null? _tl3823038468_)
                                (_loop3821838433_ _lp-tl3822138444_)
                                (___match4022240223_
                                 _e3820938412_
                                 _hd3821038415_
                                 _tl3821138417_
                                 _e3821238420_
                                 _hd3821338423_
                                 _tl3821438425_
                                 ___splice4013740138_
                                 _target3821538428_
                                 _tl3821738430_))
                            (___match4022240223_
                             _e3820938412_
                             _hd3821038415_
                             _tl3821138417_
                             _e3821238420_
                             _hd3821338423_
                             _tl3821438425_
                             ___splice4013740138_
                             _target3821538428_
                             _tl3821738430_))))
                    (___match4022240223_
                     _e3820938412_
                     _hd3821038415_
                     _tl3821138417_
                     _e3821238420_
                     _hd3821338423_
                     _tl3821438425_
                     ___splice4013740138_
                     _target3821538428_
                     _tl3821738430_))
                (___match4022240223_
                 _e3820938412_
                 _hd3821038415_
                 _tl3821138417_
                 _e3821238420_
                 _hd3821338423_
                 _tl3821438425_
                 ___splice4013740138_
                 _target3821538428_
                 _tl3821738430_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4022240223_
                                                     _e3820938412_
                                                     _hd3821038415_
                                                     _tl3821138417_
                                                     _e3821238420_
                                                     _hd3821338423_
                                                     _tl3821438425_
                                                     ___splice4013740138_
                                                     _target3821538428_
                                                     _tl3821738430_))))
                                            (___match4022240223_
                                             _e3820938412_
                                             _hd3821038415_
                                             _tl3821138417_
                                             _e3821238420_
                                             _hd3821338423_
                                             _tl3821438425_
                                             ___splice4013740138_
                                             _target3821538428_
                                             _tl3821738430_))))
                                    (___match4022240223_
                                     _e3820938412_
                                     _hd3821038415_
                                     _tl3821138417_
                                     _e3821238420_
                                     _hd3821338423_
                                     _tl3821438425_
                                     ___splice4013740138_
                                     _target3821538428_
                                     _tl3821738430_))
                                (___match4022240223_
                                 _e3820938412_
                                 _hd3821038415_
                                 _tl3821138417_
                                 _e3821238420_
                                 _hd3821338423_
                                 _tl3821438425_
                                 ___splice4013740138_
                                 _target3821538428_
                                 _tl3821738430_))))
                        (___match4022240223_
                         _e3820938412_
                         _hd3821038415_
                         _tl3821138417_
                         _e3821238420_
                         _hd3821338423_
                         _tl3821438425_
                         ___splice4013740138_
                         _target3821538428_
                         _tl3821738430_))))
                (___match4022240223_
                 _e3820938412_
                 _hd3821038415_
                 _tl3821138417_
                 _e3821238420_
                 _hd3821338423_
                 _tl3821438425_
                 ___splice4013740138_
                 _target3821538428_
                 _tl3821738430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (if (gx#stx-pair?
                                                       _tl3821438425_)
                                                      (let ((_e3823738488_
                                                             (gx#stx-e
                                                              _tl3821438425_)))
                                                        (let ((_tl3823938493_
                                                               (##cdr _e3823738488_))
                                                              (_hd3823838491_
                                                               (##car _e3823738488_)))
                                                          (if (gx#stx-null?
                                                               _tl3823938493_)
                                                              (___kont4013540136_)
                                                              (___match4022240223_
                                                               _e3820938412_
                                                               _hd3821038415_
                                                               _tl3821138417_
                                                               _e3821238420_
                                                               _hd3821338423_
                                                               _tl3821438425_
                                                               ___splice4013740138_
                                                               _target3821538428_
                                                               _tl3821738430_))))
                                                      (___match4022240223_
                                                       _e3820938412_
                                                       _hd3821038415_
                                                       _tl3821138417_
                                                       _e3821238420_
                                                       _hd3821338423_
                                                       _tl3821438425_
                                                       ___splice4013740138_
                                                       _target3821538428_
                                                       _tl3821738430_)))))))
                                  (_loop3821838433_ _target3821538428_)))))
                        (if (gx#stx-pair? ___stx4013140132_)
                            (let ((_e3819738503_ (gx#stx-e ___stx4013140132_)))
                              (let ((_tl3819938508_ (##cdr _e3819738503_))
                                    (_hd3819838506_ (##car _e3819738503_)))
                                (if (gx#identifier? _hd3819838506_)
                                    (if (gx#stx-eq? '%#if _hd3819838506_)
                                        (if (gx#stx-pair? _tl3819938508_)
                                            (let ((_e3820038511_
                                                   (gx#stx-e _tl3819938508_)))
                                              (let ((_tl3820238516_
                                                     (##cdr _e3820038511_))
                                                    (_hd3820138514_
                                                     (##car _e3820038511_)))
                                                (if (gx#stx-pair?
                                                     _tl3820238516_)
                                                    (let ((_e3820338519_
                                                           (gx#stx-e
                                                            _tl3820238516_)))
                                                      (let ((_tl3820538524_
                                                             (##cdr _e3820338519_))
                                                            (_hd3820438522_
                                                             (##car _e3820338519_)))
                                                        (if (gx#stx-pair?
                                                             _tl3820538524_)
                                                            (let ((_e3820638527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3820538524_)))
                      (let ((_tl3820838532_ (##cdr _e3820638527_))
                            (_hd3820738530_ (##car _e3820638527_)))
                        (if (gx#stx-null? _tl3820838532_)
                            (___kont4013340134_
                             _hd3820738530_
                             _hd3820438522_
                             _hd3820138514_)
                            (___kont4014340144_))))
                    (___kont4014340144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4014340144_))))
                                            (___kont4014340144_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3819838506_)
                                            (if (gx#stx-pair? _tl3819938508_)
                                                (let ((_e3821238420_
                                                       (gx#stx-e
                                                        _tl3819938508_)))
                                                  (let ((_tl3821438425_
                                                         (##cdr _e3821238420_))
                                                        (_hd3821338423_
                                                         (##car _e3821238420_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3821338423_)
                                                        (let ((___splice4013740138_
                                                               (gx#syntax-split-splice
                                                                _hd3821338423_
                                                                '0)))
                                                          (let ((_tl3821738430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice4013740138_ '1))
                        (_target3821538428_
                         (##vector-ref ___splice4013740138_ '0)))
                    (if (gx#stx-null? _tl3821738430_)
                        (___match4019840199_
                         _e3819738503_
                         _hd3819838506_
                         _tl3819938508_
                         _e3821238420_
                         _hd3821338423_
                         _tl3821438425_
                         ___splice4013740138_
                         _target3821538428_
                         _tl3821738430_)
                        (___kont4014340144_))))
                (___kont4014340144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4014340144_))
                                            (___kont4014340144_)))
                                    (___kont4014340144_))))
                            (___kont4014340144_)))))))
               (_fold-blocks38005_
                (lambda (_rest38104_ _blocks38105_)
                  (let* ((_rest3810638123_ _rest38104_)
                         (_E3810938127_
                          (lambda ()
                            (error '"No clause matching" _rest3810638123_))))
                    (let ((_K3811138147_
                           (lambda (_rest38138_
                                    _assert38139_
                                    _bind38140_
                                    _body38141_
                                    _name38142_)
                             (let ((_g42898_
                                    (_basic-block38004_
                                     _body38141_
                                     _bind38140_
                                     _assert38139_)))
                               (begin
                                 (let ((_g42899_
                                        (if (##values? _g42898_)
                                            (##vector-length _g42898_)
                                            1)))
                                   (if (not (##fx= _g42899_ 2))
                                       (error "Context expects 2 values"
                                              _g42899_)))
                                 (let ((_body38144_ (##vector-ref _g42898_ 0))
                                       (_body-blocks38145_
                                        (##vector-ref _g42898_ 1)))
                                   (_fold-blocks38005_
                                    (foldl1 cons
                                            _rest38138_
                                            _body-blocks38145_)
                                    (cons (cons _name38142_
                                                (cons 'continue:
                                                      (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (reverse (map car _bind38140_))
                                (cons _body38144_ '())))
                    (cons _assert38139_ (cons _bind38140_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _blocks38105_)))))))
                          (_K3811038132_ (lambda () _blocks38105_)))
                      (let ((_try-match3810838135_
                             (lambda ()
                               (if (##null? _rest3810638123_)
                                   (_K3811038132_)
                                   (_E3810938127_)))))
                        (if (##pair? _rest3810638123_)
                            (let ((_tl3811338152_ (##cdr _rest3810638123_))
                                  (_hd3811238150_ (##car _rest3810638123_)))
                              (if (##pair? _hd3811238150_)
                                  (let ((_tl3811538157_ (##cdr _hd3811238150_))
                                        (_hd3811438155_
                                         (##car _hd3811238150_)))
                                    (if (##pair? _tl3811538157_)
                                        (let ((_tl3811738164_
                                               (##cdr _tl3811538157_))
                                              (_hd3811638162_
                                               (##car _tl3811538157_)))
                                          (if (##pair? _tl3811738164_)
                                              (let ((_tl3811938171_
                                                     (##cdr _tl3811738164_))
                                                    (_hd3811838169_
                                                     (##car _tl3811738164_)))
                                                (if (##pair? _tl3811938171_)
                                                    (let ((_tl3812138178_
                                                           (##cdr _tl3811938171_))
                                                          (_hd3812038176_
                                                           (##car _tl3811938171_)))
                                                      (if (##null? _tl3812138178_)
                                                          (let ((_name38160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3811438155_)
                        (_body38167_ _hd3811638162_)
                        (_bind38174_ _hd3811838169_)
                        (_assert38181_ _hd3812038176_)
                        (_rest38183_ _tl3811338152_))
                    (_K3811138147_
                     _rest38183_
                     _assert38181_
                     _bind38174_
                     _body38167_
                     _name38160_))
                  (_E3810938127_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3810938127_)))
                                              (_E3810938127_)))
                                        (_E3810938127_)))
                                  (_E3810938127_)))
                            (_try-match3810838135_))))))))
        (let* ((_clause3800638013_ _clause37999_)
               (_E3800838017_
                (lambda () (error '"No clause matching" _clause3800638013_)))
               (_K3800938092_
                (lambda (_body38020_ _name38021_)
                  (let* ((_g3802338039_
                          (lambda (_g3802438036_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3802438036_)))
                         (_g3802238089_
                          (lambda (_g3802438042_)
                            (if (gx#stx-pair? _g3802438042_)
                                (let ((_e3802638044_ (gx#stx-e _g3802438042_)))
                                  (let ((_hd3802738047_ (##car _e3802638044_))
                                        (_tl3802838049_ (##cdr _e3802638044_)))
                                    (if (gx#identifier? _hd3802738047_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3802738047_)
                                            (if (gx#stx-pair? _tl3802838049_)
                                                (let ((_e3802938052_
                                                       (gx#stx-e
                                                        _tl3802838049_)))
                                                  (let ((_hd3803038055_
                                                         (##car _e3802938052_))
                                                        (_tl3803138057_
                                                         (##cdr _e3802938052_)))
                                                    (if (gx#stx-null?
                                                         _hd3803038055_)
                                                        (if (gx#stx-pair?
                                                             _tl3803138057_)
                                                            (let ((_e3803238060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3803138057_)))
                      (let ((_hd3803338063_ (##car _e3803238060_))
                            (_tl3803438065_ (##cdr _e3803238060_)))
                        (if (gx#stx-null? _tl3803438065_)
                            ((lambda (_L38068_)
                               (let ((_g42900_
                                      (_basic-block38004_ _L38068_ '() '())))
                                 (begin
                                   (let ((_g42901_
                                          (if (##values? _g42900_)
                                              (##vector-length _g42900_)
                                              1)))
                                     (if (not (##fx= _g42901_ 2))
                                         (error "Context expects 2 values"
                                                _g42901_)))
                                   (let ((_body38086_
                                          (##vector-ref _g42900_ 0))
                                         (_body-blocks38087_
                                          (##vector-ref _g42900_ 1)))
                                     (_fold-blocks38005_
                                      _body-blocks38087_
                                      (cons (cons _name38021_
                                                  (cons 'restart:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '() (cons _body38086_ '())))
                      (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks38000_))))))
                             _hd3803338063_)
                            (_g3802338039_ _g3802438042_))))
                    (_g3802338039_ _g3802438042_))
                (_g3802338039_ _g3802438042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3802338039_ _g3802438042_))
                                            (_g3802338039_ _g3802438042_))
                                        (_g3802338039_ _g3802438042_))))
                                (_g3802338039_ _g3802438042_)))))
                    (_g3802238089_ _body38020_)))))
          (if (##pair? _clause3800638013_)
              (let ((_hd3801038095_ (##car _clause3800638013_))
                    (_tl3801138097_ (##cdr _clause3800638013_)))
                (let* ((_name38100_ _hd3801038095_)
                       (_body38102_ _tl3801138097_))
                  (_K3800938092_ _body38102_ _name38100_)))
              (_E3800838017_))))))
  (define gxc#optimize-match-fold-basic-blocks
    (lambda (_blocks37605_)
      (let _lp37607_ ((_rest37609_ _blocks37605_) (_blocks37610_ '()))
        (let* ((_rest3761137619_ _rest37609_)
               (_else3761337668_
                (lambda ()
                  (foldl1 (lambda (_block37627_ _r37628_)
                            (let* ((_block3762937640_ _block37627_)
                                   (_E3763137644_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _block3762937640_)))
                                   (_K3763237650_
                                    (lambda (_kont37647_ _name37648_)
                                      (cons (cons _name37648_ _kont37647_)
                                            _r37628_))))
                              (if (##pair? _block3762937640_)
                                  (let ((_hd3763337653_
                                         (##car _block3762937640_))
                                        (_tl3763437655_
                                         (##cdr _block3762937640_)))
                                    (let ((_name37658_ _hd3763337653_))
                                      (if (##pair? _tl3763437655_)
                                          (let ((_tl3763637660_
                                                 (##cdr _tl3763437655_)))
                                            (if (##pair? _tl3763637660_)
                                                (let* ((_hd3763737663_
                                                        (##car _tl3763637660_))
                                                       (_kont37666_
                                                        _hd3763737663_))
                                                  (_K3763237650_
                                                   _kont37666_
                                                   _name37658_))
                                                (_E3763137644_)))
                                          (_E3763137644_))))
                                  (_E3763137644_))))
                          '()
                          _blocks37610_)))
               (_K3761537987_
                (lambda (_rest37671_ _block37672_)
                  (let* ((_block3767337698_ _block37672_)
                         (_E3767637702_
                          (lambda ()
                            (error '"No clause matching" _block3767337698_))))
                    (let ((_K3768837958_
                           (lambda (_assert37880_ _kont37881_ _name37882_)
                             (let* ((_g3788437900_
                                     (lambda (_g3788537897_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3788537897_)))
                                    (_g3788337955_
                                     (lambda (_g3788537903_)
                                       (if (gx#stx-pair? _g3788537903_)
                                           (let ((_e3788737905_
                                                  (gx#stx-e _g3788537903_)))
                                             (let ((_hd3788837908_
                                                    (##car _e3788737905_))
                                                   (_tl3788937910_
                                                    (##cdr _e3788737905_)))
                                               (if (gx#identifier?
                                                    _hd3788837908_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3788837908_)
                                                       (if (gx#stx-pair?
                                                            _tl3788937910_)
                                                           (let ((_e3789037913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3788937910_)))
                     (let ((_hd3789137916_ (##car _e3789037913_))
                           (_tl3789237918_ (##cdr _e3789037913_)))
                       (if (gx#stx-null? _hd3789137916_)
                           (if (gx#stx-pair? _tl3789237918_)
                               (let ((_e3789337921_ (gx#stx-e _tl3789237918_)))
                                 (let ((_hd3789437924_ (##car _e3789337921_))
                                       (_tl3789537926_ (##cdr _e3789337921_)))
                                   (if (gx#stx-null? _tl3789537926_)
                                       ((lambda (_L37929_)
                                          (let* ((_body37944_
                                                  (gxc#optimize-match-block
                                                   _L37929_
                                                   _assert37880_
                                                   '()
                                                   _rest37671_))
                                                 (_block37946_
                                                  (cons _name37882_
                                                        (cons 'restart:
                                                              (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '() (cons _body37944_ '())))
                            (cons _assert37880_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_blocks37948_
                                                  (cons _block37946_
                                                        _blocks37610_))
                                                 (_rest37950_
                                                  (gxc#optimize-match-prune-blocks
                                                   _rest37671_
                                                   _blocks37948_))
                                                 (_rest37952_
                                                  (gxc#optimize-match-fuse-restart-blocks
                                                   _rest37950_
                                                   _blocks37948_)))
                                            (_lp37607_
                                             _rest37952_
                                             _blocks37948_)))
                                        _hd3789437924_)
                                       (_g3788437900_ _g3788537903_))))
                               (_g3788437900_ _g3788537903_))
                           (_g3788437900_ _g3788537903_))))
                   (_g3788437900_ _g3788537903_))
               (_g3788437900_ _g3788537903_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3788437900_
                                                    _g3788537903_))))
                                           (_g3788437900_ _g3788537903_)))))
                               (_g3788337955_ _kont37881_))))
                          (_K3767737841_
                           (lambda (_bind37706_
                                    _assert37707_
                                    _kont37708_
                                    _name37709_)
                             (let* ((_g3771137737_
                                     (lambda (_g3771237734_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3771237734_)))
                                    (_g3771037838_
                                     (lambda (_g3771237740_)
                                       (if (gx#stx-pair? _g3771237740_)
                                           (let ((_e3771537742_
                                                  (gx#stx-e _g3771237740_)))
                                             (let ((_hd3771637745_
                                                    (##car _e3771537742_))
                                                   (_tl3771737747_
                                                    (##cdr _e3771537742_)))
                                               (if (gx#identifier?
                                                    _hd3771637745_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3771637745_)
                                                       (if (gx#stx-pair?
                                                            _tl3771737747_)
                                                           (let ((_e3771837750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3771737747_)))
                     (let ((_hd3771937753_ (##car _e3771837750_))
                           (_tl3772037755_ (##cdr _e3771837750_)))
                       (if (gx#stx-pair/null? _hd3771937753_)
                           (let ((_g42902_
                                  (gx#syntax-split-splice _hd3771937753_ '0)))
                             (begin
                               (let ((_g42903_
                                      (if (##values? _g42902_)
                                          (##vector-length _g42902_)
                                          1)))
                                 (if (not (##fx= _g42903_ 2))
                                     (error "Context expects 2 values"
                                            _g42903_)))
                               (let ((_target3772137758_
                                      (##vector-ref _g42902_ 0))
                                     (_tl3772337760_
                                      (##vector-ref _g42902_ 1)))
                                 (if (gx#stx-null? _tl3772337760_)
                                     (letrec ((_loop3772437763_
                                               (lambda (_hd3772237766_
                                                        _id3772837768_)
                                                 (if (gx#stx-pair?
                                                      _hd3772237766_)
                                                     (let ((_e3772537771_
                                                            (gx#stx-e
                                                             _hd3772237766_)))
                                                       (let ((_lp-hd3772637774_
                                                              (##car _e3772537771_))
                                                             (_lp-tl3772737776_
                                                              (##cdr _e3772537771_)))
                                                         (_loop3772437763_
                                                          _lp-tl3772737776_
                                                          (cons _lp-hd3772637774_
                                                                _id3772837768_))))
                                                     (let ((_id3772937779_
                                                            (reverse _id3772837768_)))
                                                       (if (gx#stx-pair?
                                                            _tl3772037755_)
                                                           (let ((_e3773037782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3772037755_)))
                     (let ((_hd3773137785_ (##car _e3773037782_))
                           (_tl3773237787_ (##cdr _e3773037782_)))
                       (if (gx#stx-null? _tl3773237787_)
                           ((lambda (_L37790_ _L37791_)
                              (let* ((_body37820_
                                      (gxc#optimize-match-block
                                       _L37790_
                                       _assert37707_
                                       _bind37706_
                                       _rest37671_))
                                     (_block37829_
                                      (cons _name37709_
                                            (cons 'continue:
                                                  (cons (cons '%#lambda
                                                              (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g3782137824_ _g3782237826_)
                                        (cons _g3782137824_ _g3782237826_))
                                      '()
                                      _L37791_))
                            (cons _body37820_ '())))
                (cons _assert37707_ (cons _bind37706_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_blocks37831_
                                      (cons _block37829_ _blocks37610_))
                                     (_rest37833_
                                      (gxc#optimize-match-prune-blocks
                                       _rest37671_
                                       _blocks37831_))
                                     (_rest37835_
                                      (gxc#optimize-match-fuse-restart-blocks
                                       _rest37833_
                                       _blocks37831_)))
                                (_lp37607_ _rest37835_ _blocks37831_)))
                            _hd3773137785_
                            _id3772937779_)
                           (_g3771137737_ _g3771237740_))))
                   (_g3771137737_ _g3771237740_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3772437763_
                                        _target3772137758_
                                        '()))
                                     (_g3771137737_ _g3771237740_)))))
                           (_g3771137737_ _g3771237740_))))
                   (_g3771137737_ _g3771237740_))
               (_g3771137737_ _g3771237740_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3771137737_
                                                    _g3771237740_))))
                                           (_g3771137737_ _g3771237740_)))))
                               (_g3771037838_ _kont37708_)))))
                      (if (##pair? _block3767337698_)
                          (let ((_tl3769037963_ (##cdr _block3767337698_))
                                (_hd3768937961_ (##car _block3767337698_)))
                            (if (##pair? _tl3769037963_)
                                (let ((_tl3769237970_ (##cdr _tl3769037963_))
                                      (_hd3769137968_ (##car _tl3769037963_)))
                                  (if (##eq? _hd3769137968_ 'restart:)
                                      (if (##pair? _tl3769237970_)
                                          (let ((_tl3769437975_
                                                 (##cdr _tl3769237970_))
                                                (_hd3769337973_
                                                 (##car _tl3769237970_)))
                                            (if (##pair? _tl3769437975_)
                                                (let ((_tl3769637982_
                                                       (##cdr _tl3769437975_))
                                                      (_hd3769537980_
                                                       (##car _tl3769437975_)))
                                                  (if (##null? _tl3769637982_)
                                                      (let ((_name37966_
                                                             _hd3768937961_)
                                                            (_kont37978_
                                                             _hd3769337973_)
                                                            (_assert37985_
                                                             _hd3769537980_))
                                                        (_K3768837958_
                                                         _assert37985_
                                                         _kont37978_
                                                         _name37966_))
                                                      (_E3767637702_)))
                                                (_E3767637702_)))
                                          (_E3767637702_))
                                      (if (##eq? _hd3769137968_ 'continue:)
                                          (if (##pair? _tl3769237970_)
                                              (let ((_tl3768337858_
                                                     (##cdr _tl3769237970_))
                                                    (_hd3768237856_
                                                     (##car _tl3769237970_)))
                                                (if (##pair? _tl3768337858_)
                                                    (let ((_tl3768537865_
                                                           (##cdr _tl3768337858_))
                                                          (_hd3768437863_
                                                           (##car _tl3768337858_)))
                                                      (if (##pair? _tl3768537865_)
                                                          (let ((_tl3768737872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _tl3768537865_))
                        (_hd3768637870_ (##car _tl3768537865_)))
                    (if (##null? _tl3768737872_)
                        (let ((_name37849_ _hd3768937961_)
                              (_kont37861_ _hd3768237856_)
                              (_assert37868_ _hd3768437863_)
                              (_bind37875_ _hd3768637870_))
                          (_K3767737841_
                           _bind37875_
                           _assert37868_
                           _kont37861_
                           _name37849_))
                        (_E3767637702_)))
                  (_E3767637702_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3767637702_)))
                                              (_E3767637702_))
                                          (_E3767637702_))))
                                (_E3767637702_)))
                          (_E3767637702_)))))))
          (if (##pair? _rest3761137619_)
              (let ((_hd3761637990_ (##car _rest3761137619_))
                    (_tl3761737992_ (##cdr _rest3761137619_)))
                (let* ((_block37995_ _hd3761637990_)
                       (_rest37997_ _tl3761737992_))
                  (_K3761537987_ _rest37997_ _block37995_)))
              (_else3761337668_))))))
  (define gxc#optimize-match-block
    (lambda (_body32228_ _assert32229_ _bind32230_ _blocks32231_)
      (letrec* ((_env-assert32466_ '())
                (_env-type32467_ '())
                (_env-bind32468_ '())
                (_in-splice?32469_ '#f)
                (_do-assert32470_
                 (lambda (_assert37528_ _K37529_)
                   (if (pair? _assert37528_)
                       (let _lp37531_ ((_rest37533_ _assert37528_)
                                       (_env-assert37534_ _env-assert32466_)
                                       (_env-type37535_ _env-type32467_))
                         (let* ((_rest3753637544_ _rest37533_)
                                (_else3753837552_
                                 (lambda ()
                                   (_do-assert!32476_
                                    _env-assert37534_
                                    _env-type37535_
                                    _K37529_)))
                                (_K3754037593_
                                 (lambda (_rest37555_ _assert37556_)
                                   (let* ((_assert3755737564_ _assert37556_)
                                          (_E3755937568_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _assert3755737564_)))
                                          (_K3756037581_
                                           (lambda (_val37571_ _expr37572_)
                                             (let* ((_sexpr37574_
                                                     (gxc#apply-generate-runtime-repr
                                                      _expr37572_))
                                                    (_env-assert37576_
                                                     (cons (cons _sexpr37574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _val37571_)
                   _env-assert37534_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_env-type37578_
                                                     (_fold-assert-type32472_
                                                      _expr37572_
                                                      _val37571_
                                                      _env-type37535_)))
                                               (_lp37531_
                                                _rest37555_
                                                _env-assert37576_
                                                _env-type37578_)))))
                                     (if (##pair? _assert3755737564_)
                                         (let ((_hd3756137584_
                                                (##car _assert3755737564_))
                                               (_tl3756237586_
                                                (##cdr _assert3755737564_)))
                                           (let* ((_expr37589_ _hd3756137584_)
                                                  (_val37591_ _tl3756237586_))
                                             (_K3756037581_
                                              _val37591_
                                              _expr37589_)))
                                         (_E3755937568_))))))
                           (if (##pair? _rest3753637544_)
                               (let ((_hd3754137596_ (##car _rest3753637544_))
                                     (_tl3754237598_ (##cdr _rest3753637544_)))
                                 (let* ((_assert37601_ _hd3754137596_)
                                        (_rest37603_ _tl3754237598_))
                                   (_K3754037593_ _rest37603_ _assert37601_)))
                               (_else3753837552_))))
                       (_K37529_))))
                (_predicate-type32471_
                 (lambda (_id37473_)
                   (let* ((_sym37475_ (gxc#identifier-symbol _id37473_))
                          (_$e37477_ _sym37475_))
                     (let ((_default3747937510_
                            (lambda ()
                              (let* ((_g3748237489_
                                      (gxc#optimizer-resolve-type _sym37475_))
                                     (_else3748437497_ (lambda () '#f))
                                     (_K3748637502_
                                      (lambda (_struct-t37500_)
                                        (gxc#optimizer-resolve-type
                                         _struct-t37500_))))
                                (if (##structure-instance-of?
                                     _g3748237489_
                                     'gxc#!struct-pred::t)
                                    (let* ((_e3748737505_
                                            (##vector-ref _g3748237489_ '1))
                                           (_struct-t37508_ _e3748737505_))
                                      (gxc#optimizer-resolve-type
                                       _struct-t37508_))
                                    (_else3748437497_)))))
                           (_table3748037512_
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
                       (if (symbol? _$e37477_)
                           (let* ((_h37515_ (##symbol-hash _$e37477_))
                                  (_ix37518_ (##fxmodulo _h37515_ '63))
                                  (_q37521_
                                   (##vector-ref _table3748037512_ _ix37518_)))
                             (if _q37521_
                                 (if (eq? (##car _q37521_) _$e37477_)
                                     (let ((_x37525_ (##cdr _q37521_)))
                                       (if (##fx< _x37525_ '5)
                                           (if (##fx< _x37525_ '2)
                                               (if (##fx= _x37525_ '0)
                                                   'pair
                                                   'null)
                                               (if (##fx= _x37525_ '2)
                                                   'vector
                                                   (if (##fx= _x37525_ '3)
                                                       'box
                                                       'identifier)))
                                           (if (##fx< _x37525_ '7)
                                               (if (##fx= _x37525_ '5)
                                                   'stx-pair
                                                   'stx-null)
                                               (if (##fx= _x37525_ '7)
                                                   'stx-vector
                                                   (if (##fx= _x37525_ '8)
                                                       'stx-box
                                                       'stx-datum)))))
                                     (_default3747937510_))
                                 (_default3747937510_)))
                           (_default3747937510_))))))
                (_fold-assert-type32472_
                 (lambda (_expr36421_ _val36422_ _env36423_)
                   (let* ((___stx4038940390_ _expr36421_)
                          (_g3643136610_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4038940390_))))
                     (let ((___kont4039140392_
                            (lambda (_L37442_ _L37443_)
                              (let ((_$e37465_
                                     (_predicate-type32471_ _L37443_)))
                                (if _$e37465_
                                    ((lambda (_t37468_)
                                       (cons (cons _L37442_
                                                   (cons _t37468_
                                                         (cons _val36422_
                                                               '())))
                                             _env36423_))
                                     _$e37465_)
                                    _env36423_))))
                           (___kont4039340394_
                            (lambda (_L37132_ _L37133_ _L37134_)
                              (let ((_$e37159_
                                     (gxc#identifier-symbol _L37134_)))
                                (if (let ((_$e37162_ (eq? '##fx= _$e37159_)))
                                      (if _$e37162_
                                          _$e37162_
                                          (eq? 'fx= _$e37159_)))
                                    (let* ((___stx4029540296_ _L37133_)
                                           (_g3716637195_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               ___stx4029540296_))))
                                      (let ((___kont4029740298_
                                             (lambda (_L37263_ _L37264_)
                                               (let ((_$e37289_
                                                      (_countf-symbol32473_
                                                       _L37264_)))
                                                 (if _$e37289_
                                                     ((lambda (_sym37292_)
                                                        (cons (cons _L37263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym37292_
                                  (cons (gx#stx-e _L37132_)
                                        (cons _val36422_ '()))))
                      _env36423_))
              _$e37289_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _env36423_))))
                                            (___kont4029940300_
                                             (lambda () _env36423_)))
                                        (if (gx#stx-pair? ___stx4029540296_)
                                            (let ((_e3717037207_
                                                   (gx#stx-e
                                                    ___stx4029540296_)))
                                              (let ((_tl3717237212_
                                                     (##cdr _e3717037207_))
                                                    (_hd3717137210_
                                                     (##car _e3717037207_)))
                                                (if (gx#identifier?
                                                     _hd3717137210_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3717137210_)
                                                        (if (gx#stx-pair?
                                                             _tl3717237212_)
                                                            (let ((_e3717337215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3717237212_)))
                      (let ((_tl3717537220_ (##cdr _e3717337215_))
                            (_hd3717437218_ (##car _e3717337215_)))
                        (if (gx#stx-pair? _hd3717437218_)
                            (let ((_e3717637223_ (gx#stx-e _hd3717437218_)))
                              (let ((_tl3717837228_ (##cdr _e3717637223_))
                                    (_hd3717737226_ (##car _e3717637223_)))
                                (if (gx#identifier? _hd3717737226_)
                                    (if (gx#stx-eq? '%#ref _hd3717737226_)
                                        (if (gx#stx-pair? _tl3717837228_)
                                            (let ((_e3717937231_
                                                   (gx#stx-e _tl3717837228_)))
                                              (let ((_tl3718137236_
                                                     (##cdr _e3717937231_))
                                                    (_hd3718037234_
                                                     (##car _e3717937231_)))
                                                (if (gx#stx-null?
                                                     _tl3718137236_)
                                                    (if (gx#stx-pair?
                                                         _tl3717537220_)
                                                        (let ((_e3718237239_
                                                               (gx#stx-e
                                                                _tl3717537220_)))
                                                          (let ((_tl3718437244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3718237239_))
                        (_hd3718337242_ (##car _e3718237239_)))
                    (if (gx#stx-pair? _hd3718337242_)
                        (let ((_e3718537247_ (gx#stx-e _hd3718337242_)))
                          (let ((_tl3718737252_ (##cdr _e3718537247_))
                                (_hd3718637250_ (##car _e3718537247_)))
                            (if (gx#identifier? _hd3718637250_)
                                (if (gx#stx-eq? '%#ref _hd3718637250_)
                                    (if (gx#stx-pair? _tl3718737252_)
                                        (let ((_e3718837255_
                                               (gx#stx-e _tl3718737252_)))
                                          (let ((_tl3719037260_
                                                 (##cdr _e3718837255_))
                                                (_hd3718937258_
                                                 (##car _e3718837255_)))
                                            (if (gx#stx-null? _tl3719037260_)
                                                (if (gx#stx-null?
                                                     _tl3718437244_)
                                                    (___kont4029740298_
                                                     _hd3718937258_
                                                     _hd3718037234_)
                                                    (___kont4029940300_))
                                                (___kont4029940300_))))
                                        (___kont4029940300_))
                                    (___kont4029940300_))
                                (___kont4029940300_))))
                        (___kont4029940300_))))
                (___kont4029940300_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4029940300_))))
                                            (___kont4029940300_))
                                        (___kont4029940300_))
                                    (___kont4029940300_))))
                            (___kont4029940300_))))
                    (___kont4029940300_))
                (___kont4029940300_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4029940300_))))
                                            (___kont4029940300_))))
                                    (if (let ((_$e37297_
                                               (eq? '##eq? _$e37159_)))
                                          (if _$e37297_
                                              _$e37297_
                                              (let ((_$e37300_
                                                     (eq? 'eq? _$e37159_)))
                                                (if _$e37300_
                                                    _$e37300_
                                                    (let ((_$e37303_
                                                           (eq? '##eqv?
                                                                _$e37159_)))
                                                      (if _$e37303_
                                                          _$e37303_
                                                          (let ((_$e37306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (eq? 'eqv? _$e37159_)))
                    (if _$e37306_
                        _$e37306_
                        (let ((_$e37309_ (eq? '##equal? _$e37159_)))
                          (if _$e37309_
                              _$e37309_
                              (let ((_$e37312_ (eq? 'equal? _$e37159_)))
                                (if _$e37312_
                                    _$e37312_
                                    (let ((_$e37315_
                                           (eq? 'gx#free-identifier=?
                                                _$e37159_)))
                                      (if _$e37315_
                                          _$e37315_
                                          (eq? 'gx#stx-eq?
                                               _$e37159_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        ((lambda (_sym37318_)
                                           (let* ((_sym37320_
                                                   (_eqf-symbol32474_
                                                    _sym37318_))
                                                  (___stx4036340364_ _L37133_)
                                                  (_g3732337336_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4036340364_))))
                                             (let ((___kont4036540366_
                                                    (lambda (_L37364_)
                                                      (cons (cons _L37364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _sym37320_
                                (cons (gx#stx-e _L37132_)
                                      (cons _val36422_ '()))))
                    _env36423_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4036740368_
                                                    (lambda () _env36423_)))
                                               (if (gx#stx-pair?
                                                    ___stx4036340364_)
                                                   (let ((_e3732637348_
                                                          (gx#stx-e
                                                           ___stx4036340364_)))
                                                     (let ((_tl3732837353_
                                                            (##cdr _e3732637348_))
                                                           (_hd3732737351_
                                                            (##car _e3732637348_)))
                                                       (if (gx#identifier?
                                                            _hd3732737351_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3732737351_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3732837353_)
                           (let ((_e3732937356_ (gx#stx-e _tl3732837353_)))
                             (let ((_tl3733137361_ (##cdr _e3732937356_))
                                   (_hd3733037359_ (##car _e3732937356_)))
                               (if (gx#stx-null? _tl3733137361_)
                                   (___kont4036540366_ _hd3733037359_)
                                   (___kont4036740368_))))
                           (___kont4036740368_))
                       (___kont4036740368_))
                   (___kont4036740368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4036740368_)))))
                                         _$e37159_)
                                        _env36423_)))))
                           (___kont4039540396_
                            (lambda (_L37036_ _L37037_ _L37038_)
                              (_fold-assert-type32472_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L37038_ '()))
                                           (cons _L37036_
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote)
                                                             (cons _L37037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36422_
                               _env36423_)))
                           (___kont4039740398_
                            (lambda (_L36926_ _L36927_ _L36928_)
                              (let ((_$e36957_
                                     (gxc#identifier-symbol _L36928_)))
                                (if (let ((_$e36960_
                                           (eq? 'gx#free-identifier=?
                                                _$e36957_)))
                                      (if _$e36960_
                                          _$e36960_
                                          (eq? 'gx#stx-eq? _$e36957_)))
                                    ((lambda (_sym36963_)
                                       (let ((_sym36965_
                                              (_eqf-symbol32474_ _sym36963_)))
                                         (cons (cons _L36927_
                                                     (cons _sym36965_
                                                           (cons _L36926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _val36422_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env36423_)))
                                     _$e36957_)
                                    _env36423_))))
                           (___kont4039940400_
                            (lambda (_L36810_ _L36811_ _L36812_)
                              (_fold-assert-type32472_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L36812_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#ref)
                                                       (cons _L36810_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote-syntax)
                                                             (cons _L36811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val36422_
                               _env36423_)))
                           (___kont4040140402_
                            (lambda (_L36694_ _L36695_ _L36696_)
                              (_fold-assert-type32472_
                               (gxc#apply-expression-subst
                                _L36695_
                                _L36696_
                                _L36694_)
                               _val36422_
                               _env36423_)))
                           (___kont4040340404_ (lambda () _env36423_)))
                       (if (gx#stx-pair? ___stx4038940390_)
                           (let ((_e3643537386_ (gx#stx-e ___stx4038940390_)))
                             (let ((_tl3643737391_ (##cdr _e3643537386_))
                                   (_hd3643637389_ (##car _e3643537386_)))
                               (if (gx#identifier? _hd3643637389_)
                                   (if (gx#stx-eq? '%#call _hd3643637389_)
                                       (if (gx#stx-pair? _tl3643737391_)
                                           (let ((_e3643837394_
                                                  (gx#stx-e _tl3643737391_)))
                                             (let ((_tl3644037399_
                                                    (##cdr _e3643837394_))
                                                   (_hd3643937397_
                                                    (##car _e3643837394_)))
                                               (if (gx#stx-pair?
                                                    _hd3643937397_)
                                                   (let ((_e3644137402_
                                                          (gx#stx-e
                                                           _hd3643937397_)))
                                                     (let ((_tl3644337407_
                                                            (##cdr _e3644137402_))
                                                           (_hd3644237405_
                                                            (##car _e3644137402_)))
                                                       (if (gx#identifier?
                                                            _hd3644237405_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3644237405_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3644337407_)
                           (let ((_e3644437410_ (gx#stx-e _tl3644337407_)))
                             (let ((_tl3644637415_ (##cdr _e3644437410_))
                                   (_hd3644537413_ (##car _e3644437410_)))
                               (if (gx#stx-null? _tl3644637415_)
                                   (if (gx#stx-pair? _tl3644037399_)
                                       (let ((_e3644737418_
                                              (gx#stx-e _tl3644037399_)))
                                         (let ((_tl3644937423_
                                                (##cdr _e3644737418_))
                                               (_hd3644837421_
                                                (##car _e3644737418_)))
                                           (if (gx#stx-pair? _hd3644837421_)
                                               (let ((_e3645037426_
                                                      (gx#stx-e
                                                       _hd3644837421_)))
                                                 (let ((_tl3645237431_
                                                        (##cdr _e3645037426_))
                                                       (_hd3645137429_
                                                        (##car _e3645037426_)))
                                                   (if (gx#identifier?
                                                        _hd3645137429_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd3645137429_)
                                                           (if (gx#stx-pair?
                                                                _tl3645237431_)
                                                               (let ((_e3645337434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3645237431_)))
                         (let ((_tl3645537439_ (##cdr _e3645337434_))
                               (_hd3645437437_ (##car _e3645337434_)))
                           (if (gx#stx-null? _tl3645537439_)
                               (if (gx#stx-null? _tl3644937423_)
                                   (___kont4039140392_
                                    _hd3645437437_
                                    _hd3644537413_)
                                   (if (gx#stx-pair? _tl3644937423_)
                                       (let ((_e3647437108_
                                              (gx#stx-e _tl3644937423_)))
                                         (let ((_tl3647637113_
                                                (##cdr _e3647437108_))
                                               (_hd3647537111_
                                                (##car _e3647437108_)))
                                           (if (gx#stx-pair? _hd3647537111_)
                                               (let ((_e3647737116_
                                                      (gx#stx-e
                                                       _hd3647537111_)))
                                                 (let ((_tl3647937121_
                                                        (##cdr _e3647737116_))
                                                       (_hd3647837119_
                                                        (##car _e3647737116_)))
                                                   (if (gx#identifier?
                                                        _hd3647837119_)
                                                       (if (gx#stx-eq?
                                                            '%#quote
                                                            _hd3647837119_)
                                                           (if (gx#stx-pair?
                                                                _tl3647937121_)
                                                               (let ((_e3648037124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3647937121_)))
                         (let ((_tl3648237129_ (##cdr _e3648037124_))
                               (_hd3648137127_ (##car _e3648037124_)))
                           (if (gx#stx-null? _tl3648237129_)
                               (if (gx#stx-null? _tl3647637113_)
                                   (___kont4039340394_
                                    _hd3648137127_
                                    _hd3644837421_
                                    _hd3644537413_)
                                   (___kont4040340404_))
                               (___kont4040340404_))))
                       (___kont4040340404_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3647837119_)
                       (if (gx#stx-pair? _tl3647937121_)
                           (let ((_e3654036918_ (gx#stx-e _tl3647937121_)))
                             (let ((_tl3654236923_ (##cdr _e3654036918_))
                                   (_hd3654136921_ (##car _e3654036918_)))
                               (if (gx#stx-null? _tl3654236923_)
                                   (if (gx#stx-null? _tl3647637113_)
                                       (___kont4039740398_
                                        _hd3654136921_
                                        _hd3645437437_
                                        _hd3644537413_)
                                       (___kont4040340404_))
                                   (___kont4040340404_))))
                           (___kont4040340404_))
                       (___kont4040340404_)))
               (___kont4040340404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4040340404_))))
                                       (___kont4040340404_)))
                               (if (gx#stx-pair? _tl3644937423_)
                                   (let ((_e3647437108_
                                          (gx#stx-e _tl3644937423_)))
                                     (let ((_tl3647637113_
                                            (##cdr _e3647437108_))
                                           (_hd3647537111_
                                            (##car _e3647437108_)))
                                       (if (gx#stx-pair? _hd3647537111_)
                                           (let ((_e3647737116_
                                                  (gx#stx-e _hd3647537111_)))
                                             (let ((_tl3647937121_
                                                    (##cdr _e3647737116_))
                                                   (_hd3647837119_
                                                    (##car _e3647737116_)))
                                               (if (gx#identifier?
                                                    _hd3647837119_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3647837119_)
                                                       (if (gx#stx-pair?
                                                            _tl3647937121_)
                                                           (let ((_e3648037124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3647937121_)))
                     (let ((_tl3648237129_ (##cdr _e3648037124_))
                           (_hd3648137127_ (##car _e3648037124_)))
                       (if (gx#stx-null? _tl3648237129_)
                           (if (gx#stx-null? _tl3647637113_)
                               (___kont4039340394_
                                _hd3648137127_
                                _hd3644837421_
                                _hd3644537413_)
                               (___kont4040340404_))
                           (___kont4040340404_))))
                   (___kont4040340404_))
               (___kont4040340404_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4040340404_))))
                                           (___kont4040340404_))))
                                   (___kont4040340404_)))))
                       (if (gx#stx-pair? _tl3644937423_)
                           (let ((_e3647437108_ (gx#stx-e _tl3644937423_)))
                             (let ((_tl3647637113_ (##cdr _e3647437108_))
                                   (_hd3647537111_ (##car _e3647437108_)))
                               (if (gx#stx-pair? _hd3647537111_)
                                   (let ((_e3647737116_
                                          (gx#stx-e _hd3647537111_)))
                                     (let ((_tl3647937121_
                                            (##cdr _e3647737116_))
                                           (_hd3647837119_
                                            (##car _e3647737116_)))
                                       (if (gx#identifier? _hd3647837119_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3647837119_)
                                               (if (gx#stx-pair?
                                                    _tl3647937121_)
                                                   (let ((_e3648037124_
                                                          (gx#stx-e
                                                           _tl3647937121_)))
                                                     (let ((_tl3648237129_
                                                            (##cdr _e3648037124_))
                                                           (_hd3648137127_
                                                            (##car _e3648037124_)))
                                                       (if (gx#stx-null?
                                                            _tl3648237129_)
                                                           (if (gx#stx-null?
                                                                _tl3647637113_)
                                                               (___kont4039340394_
                                                                _hd3648137127_
                                                                _hd3644837421_
                                                                _hd3644537413_)
                                                               (___kont4040340404_))
                                                           (___kont4040340404_))))
                                                   (___kont4040340404_))
                                               (___kont4040340404_))
                                           (___kont4040340404_))))
                                   (___kont4040340404_))))
                           (___kont4040340404_)))
                   (if (gx#stx-pair? _tl3644937423_)
                       (let ((_e3647437108_ (gx#stx-e _tl3644937423_)))
                         (let ((_tl3647637113_ (##cdr _e3647437108_))
                               (_hd3647537111_ (##car _e3647437108_)))
                           (if (gx#stx-pair? _hd3647537111_)
                               (let ((_e3647737116_ (gx#stx-e _hd3647537111_)))
                                 (let ((_tl3647937121_ (##cdr _e3647737116_))
                                       (_hd3647837119_ (##car _e3647737116_)))
                                   (if (gx#identifier? _hd3647837119_)
                                       (if (gx#stx-eq? '%#quote _hd3647837119_)
                                           (if (gx#stx-pair? _tl3647937121_)
                                               (let ((_e3648037124_
                                                      (gx#stx-e
                                                       _tl3647937121_)))
                                                 (let ((_tl3648237129_
                                                        (##cdr _e3648037124_))
                                                       (_hd3648137127_
                                                        (##car _e3648037124_)))
                                                   (if (gx#stx-null?
                                                        _tl3648237129_)
                                                       (if (gx#stx-null?
                                                            _tl3647637113_)
                                                           (___kont4039340394_
                                                            _hd3648137127_
                                                            _hd3644837421_
                                                            _hd3644537413_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3645137429_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3645237431_)
                           (let ((_e3650437020_ (gx#stx-e _tl3645237431_)))
                             (let ((_tl3650637025_ (##cdr _e3650437020_))
                                   (_hd3650537023_ (##car _e3650437020_)))
                               (___kont4040340404_)))
                           (___kont4040340404_))
                       (if (gx#stx-eq? '%#quote-syntax _hd3645137429_)
                           (if (gx#stx-pair? _tl3645237431_)
                               (let ((_e3656436778_ (gx#stx-e _tl3645237431_)))
                                 (let ((_tl3656636783_ (##cdr _e3656436778_))
                                       (_hd3656536781_ (##car _e3656436778_)))
                                   (___kont4040340404_)))
                               (___kont4040340404_))
                           (___kont4040340404_))))
               (if (gx#stx-eq? '%#quote _hd3645137429_)
                   (if (gx#stx-pair? _tl3645237431_)
                       (let ((_e3650437020_ (gx#stx-e _tl3645237431_)))
                         (let ((_tl3650637025_ (##cdr _e3650437020_))
                               (_hd3650537023_ (##car _e3650437020_)))
                           (if (gx#stx-null? _tl3650637025_)
                               (if (gx#stx-null? _tl3647637113_)
                                   (___kont4039540396_
                                    _hd3647537111_
                                    _hd3650537023_
                                    _hd3644537413_)
                                   (___kont4040340404_))
                               (___kont4040340404_))))
                       (___kont4040340404_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3645137429_)
                       (if (gx#stx-pair? _tl3645237431_)
                           (let ((_e3656436778_ (gx#stx-e _tl3645237431_)))
                             (let ((_tl3656636783_ (##cdr _e3656436778_))
                                   (_hd3656536781_ (##car _e3656436778_)))
                               (___kont4040340404_)))
                           (___kont4040340404_))
                       (___kont4040340404_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3645137429_)
                                                   (if (gx#stx-pair?
                                                        _tl3645237431_)
                                                       (let ((_e3650437020_
                                                              (gx#stx-e
                                                               _tl3645237431_)))
                                                         (let ((_tl3650637025_
                                                                (##cdr _e3650437020_))
                                                               (_hd3650537023_
                                                                (##car _e3650437020_)))
                                                           (if (gx#stx-null?
                                                                _tl3650637025_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3647637113_)
                           (___kont4039540396_
                            _hd3647537111_
                            _hd3650537023_
                            _hd3644537413_)
                           (___kont4040340404_))
                       (___kont4040340404_))))
               (___kont4040340404_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3645137429_)
                                                       (if (gx#stx-pair?
                                                            _tl3645237431_)
                                                           (let ((_e3656436778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3645237431_)))
                     (let ((_tl3656636783_ (##cdr _e3656436778_))
                           (_hd3656536781_ (##car _e3656436778_)))
                       (___kont4040340404_)))
                   (___kont4040340404_))
               (___kont4040340404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3645137429_)
                                               (if (gx#stx-pair?
                                                    _tl3645237431_)
                                                   (let ((_e3650437020_
                                                          (gx#stx-e
                                                           _tl3645237431_)))
                                                     (let ((_tl3650637025_
                                                            (##cdr _e3650437020_))
                                                           (_hd3650537023_
                                                            (##car _e3650437020_)))
                                                       (if (gx#stx-null?
                                                            _tl3650637025_)
                                                           (if (gx#stx-null?
                                                                _tl3647637113_)
                                                               (___kont4039540396_
                                                                _hd3647537111_
                                                                _hd3650537023_
                                                                _hd3644537413_)
                                                               (___kont4040340404_))
                                                           (___kont4040340404_))))
                                                   (___kont4040340404_))
                                               (if (gx#stx-eq?
                                                    '%#quote-syntax
                                                    _hd3645137429_)
                                                   (if (gx#stx-pair?
                                                        _tl3645237431_)
                                                       (let ((_e3656436778_
                                                              (gx#stx-e
                                                               _tl3645237431_)))
                                                         (let ((_tl3656636783_
                                                                (##cdr _e3656436778_))
                                                               (_hd3656536781_
                                                                (##car _e3656436778_)))
                                                           (if (gx#stx-null?
                                                                _tl3656636783_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3647837119_)
                           (if (gx#stx-pair? _tl3647937121_)
                               (let ((_e3657336802_ (gx#stx-e _tl3647937121_)))
                                 (let ((_tl3657536807_ (##cdr _e3657336802_))
                                       (_hd3657436805_ (##car _e3657336802_)))
                                   (if (gx#stx-null? _tl3657536807_)
                                       (if (gx#stx-null? _tl3647637113_)
                                           (___kont4039940400_
                                            _hd3657436805_
                                            _hd3656536781_
                                            _hd3644537413_)
                                           (___kont4040340404_))
                                       (___kont4040340404_))))
                               (___kont4040340404_))
                           (___kont4040340404_))
                       (___kont4040340404_))))
               (___kont4040340404_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4040340404_))))
                                       (if (gx#stx-eq? '%#quote _hd3645137429_)
                                           (if (gx#stx-pair? _tl3645237431_)
                                               (let ((_e3650437020_
                                                      (gx#stx-e
                                                       _tl3645237431_)))
                                                 (let ((_tl3650637025_
                                                        (##cdr _e3650437020_))
                                                       (_hd3650537023_
                                                        (##car _e3650437020_)))
                                                   (if (gx#stx-null?
                                                        _tl3650637025_)
                                                       (if (gx#stx-null?
                                                            _tl3647637113_)
                                                           (___kont4039540396_
                                                            _hd3647537111_
                                                            _hd3650537023_
                                                            _hd3644537413_)
                                                           (___kont4040340404_))
                                                       (___kont4040340404_))))
                                               (___kont4040340404_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3645137429_)
                                               (if (gx#stx-pair?
                                                    _tl3645237431_)
                                                   (let ((_e3656436778_
                                                          (gx#stx-e
                                                           _tl3645237431_)))
                                                     (let ((_tl3656636783_
                                                            (##cdr _e3656436778_))
                                                           (_hd3656536781_
                                                            (##car _e3656436778_)))
                                                       (___kont4040340404_)))
                                                   (___kont4040340404_))
                                               (___kont4040340404_))))))
                               (if (gx#stx-eq? '%#quote _hd3645137429_)
                                   (if (gx#stx-pair? _tl3645237431_)
                                       (let ((_e3650437020_
                                              (gx#stx-e _tl3645237431_)))
                                         (let ((_tl3650637025_
                                                (##cdr _e3650437020_))
                                               (_hd3650537023_
                                                (##car _e3650437020_)))
                                           (if (gx#stx-null? _tl3650637025_)
                                               (if (gx#stx-null?
                                                    _tl3647637113_)
                                                   (___kont4039540396_
                                                    _hd3647537111_
                                                    _hd3650537023_
                                                    _hd3644537413_)
                                                   (___kont4040340404_))
                                               (___kont4040340404_))))
                                       (___kont4040340404_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3645137429_)
                                       (if (gx#stx-pair? _tl3645237431_)
                                           (let ((_e3656436778_
                                                  (gx#stx-e _tl3645237431_)))
                                             (let ((_tl3656636783_
                                                    (##cdr _e3656436778_))
                                                   (_hd3656536781_
                                                    (##car _e3656436778_)))
                                               (___kont4040340404_)))
                                           (___kont4040340404_))
                                       (___kont4040340404_))))))
                       (if (gx#stx-eq? '%#quote _hd3645137429_)
                           (if (gx#stx-pair? _tl3645237431_)
                               (let ((_e3650437020_ (gx#stx-e _tl3645237431_)))
                                 (let ((_tl3650637025_ (##cdr _e3650437020_))
                                       (_hd3650537023_ (##car _e3650437020_)))
                                   (___kont4040340404_)))
                               (___kont4040340404_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3645137429_)
                               (if (gx#stx-pair? _tl3645237431_)
                                   (let ((_e3656436778_
                                          (gx#stx-e _tl3645237431_)))
                                     (let ((_tl3656636783_
                                            (##cdr _e3656436778_))
                                           (_hd3656536781_
                                            (##car _e3656436778_)))
                                       (___kont4040340404_)))
                                   (___kont4040340404_))
                               (___kont4040340404_)))))
               (if (gx#stx-pair? _tl3644937423_)
                   (let ((_e3647437108_ (gx#stx-e _tl3644937423_)))
                     (let ((_tl3647637113_ (##cdr _e3647437108_))
                           (_hd3647537111_ (##car _e3647437108_)))
                       (if (gx#stx-pair? _hd3647537111_)
                           (let ((_e3647737116_ (gx#stx-e _hd3647537111_)))
                             (let ((_tl3647937121_ (##cdr _e3647737116_))
                                   (_hd3647837119_ (##car _e3647737116_)))
                               (if (gx#identifier? _hd3647837119_)
                                   (if (gx#stx-eq? '%#quote _hd3647837119_)
                                       (if (gx#stx-pair? _tl3647937121_)
                                           (let ((_e3648037124_
                                                  (gx#stx-e _tl3647937121_)))
                                             (let ((_tl3648237129_
                                                    (##cdr _e3648037124_))
                                                   (_hd3648137127_
                                                    (##car _e3648037124_)))
                                               (if (gx#stx-null?
                                                    _tl3648237129_)
                                                   (if (gx#stx-null?
                                                        _tl3647637113_)
                                                       (___kont4039340394_
                                                        _hd3648137127_
                                                        _hd3644837421_
                                                        _hd3644537413_)
                                                       (___kont4040340404_))
                                                   (___kont4040340404_))))
                                           (___kont4040340404_))
                                       (___kont4040340404_))
                                   (___kont4040340404_))))
                           (___kont4040340404_))))
                   (___kont4040340404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl3644937423_)
                                                   (let ((_e3647437108_
                                                          (gx#stx-e
                                                           _tl3644937423_)))
                                                     (let ((_tl3647637113_
                                                            (##cdr _e3647437108_))
                                                           (_hd3647537111_
                                                            (##car _e3647437108_)))
                                                       (if (gx#stx-pair?
                                                            _hd3647537111_)
                                                           (let ((_e3647737116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3647537111_)))
                     (let ((_tl3647937121_ (##cdr _e3647737116_))
                           (_hd3647837119_ (##car _e3647737116_)))
                       (if (gx#identifier? _hd3647837119_)
                           (if (gx#stx-eq? '%#quote _hd3647837119_)
                               (if (gx#stx-pair? _tl3647937121_)
                                   (let ((_e3648037124_
                                          (gx#stx-e _tl3647937121_)))
                                     (let ((_tl3648237129_
                                            (##cdr _e3648037124_))
                                           (_hd3648137127_
                                            (##car _e3648037124_)))
                                       (if (gx#stx-null? _tl3648237129_)
                                           (if (gx#stx-null? _tl3647637113_)
                                               (___kont4039340394_
                                                _hd3648137127_
                                                _hd3644837421_
                                                _hd3644537413_)
                                               (___kont4040340404_))
                                           (___kont4040340404_))))
                                   (___kont4040340404_))
                               (___kont4040340404_))
                           (___kont4040340404_))))
                   (___kont4040340404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4040340404_)))))
                                       (___kont4040340404_))
                                   (___kont4040340404_))))
                           (___kont4040340404_))
                       (if (gx#stx-eq? '%#lambda _hd3644237405_)
                           (if (gx#stx-pair? _tl3644337407_)
                               (let ((_e3658836646_ (gx#stx-e _tl3644337407_)))
                                 (let ((_tl3659036651_ (##cdr _e3658836646_))
                                       (_hd3658936649_ (##car _e3658836646_)))
                                   (if (gx#stx-pair? _hd3658936649_)
                                       (let ((_e3659136654_
                                              (gx#stx-e _hd3658936649_)))
                                         (let ((_tl3659336659_
                                                (##cdr _e3659136654_))
                                               (_hd3659236657_
                                                (##car _e3659136654_)))
                                           (if (gx#stx-null? _tl3659336659_)
                                               (if (gx#stx-pair?
                                                    _tl3659036651_)
                                                   (let ((_e3659436662_
                                                          (gx#stx-e
                                                           _tl3659036651_)))
                                                     (let ((_tl3659636667_
                                                            (##cdr _e3659436662_))
                                                           (_hd3659536665_
                                                            (##car _e3659436662_)))
                                                       (if (gx#stx-null?
                                                            _tl3659636667_)
                                                           (if (gx#stx-pair?
                                                                _tl3644037399_)
                                                               (let ((_e3659736670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3644037399_)))
                         (let ((_tl3659936675_ (##cdr _e3659736670_))
                               (_hd3659836673_ (##car _e3659736670_)))
                           (if (gx#stx-pair? _hd3659836673_)
                               (let ((_e3660036678_ (gx#stx-e _hd3659836673_)))
                                 (let ((_tl3660236683_ (##cdr _e3660036678_))
                                       (_hd3660136681_ (##car _e3660036678_)))
                                   (if (gx#identifier? _hd3660136681_)
                                       (if (gx#stx-eq? '%#ref _hd3660136681_)
                                           (if (gx#stx-pair? _tl3660236683_)
                                               (let ((_e3660336686_
                                                      (gx#stx-e
                                                       _tl3660236683_)))
                                                 (let ((_tl3660536691_
                                                        (##cdr _e3660336686_))
                                                       (_hd3660436689_
                                                        (##car _e3660336686_)))
                                                   (if (gx#stx-null?
                                                        _tl3660536691_)
                                                       (if (gx#stx-null?
                                                            _tl3659936675_)
                                                           (___kont4040140402_
                                                            _hd3660436689_
                                                            _hd3659536665_
                                                            _hd3659236657_)
                                                           (___kont4040340404_))
                                                       (___kont4040340404_))))
                                               (___kont4040340404_))
                                           (___kont4040340404_))
                                       (___kont4040340404_))))
                               (___kont4040340404_))))
                       (___kont4040340404_))
                   (___kont4040340404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4040340404_))
                                               (___kont4040340404_))))
                                       (___kont4040340404_))))
                               (___kont4040340404_))
                           (___kont4040340404_)))
                   (___kont4040340404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4040340404_))))
                                           (___kont4040340404_))
                                       (___kont4040340404_))
                                   (___kont4040340404_))))
                           (___kont4040340404_))))))
                (_countf-symbol32473_
                 (lambda (_id36413_)
                   (let ((_$e36415_ (gxc#identifier-symbol _id36413_)))
                     (if (let ((_$e36418_ (eq? '##vector-length _$e36415_)))
                           (if _$e36418_
                               _$e36418_
                               (eq? 'vector-length _$e36415_)))
                         'vector-length
                         (if (eq? 'values-count _$e36415_)
                             'values-count
                             '#f)))))
                (_eqf-symbol32474_
                 (lambda (_sym36399_)
                   (let ((_$e36401_ _sym36399_))
                     (if (let ((_$e36404_ (eq? '##eq? _$e36401_)))
                           (if _$e36404_ _$e36404_ (eq? 'eq? _$e36401_)))
                         'eq?
                         (if (let ((_$e36407_ (eq? '##eqv? _$e36401_)))
                               (if _$e36407_ _$e36407_ (eq? 'eqv? _$e36401_)))
                             'eqv?
                             (if (let ((_$e36410_ (eq? '##equal? _$e36401_)))
                                   (if _$e36410_
                                       _$e36410_
                                       (eq? 'equal? _$e36401_)))
                                 'equal?
                                 (if (eq? 'gx#free-identifier=? _$e36401_)
                                     'free-identifier=?
                                     (if (eq? 'gx#stx-eq? _$e36401_)
                                         'stx-eq?
                                         '#f))))))))
                (_eqf-symbol?32475_
                 (lambda (_sym36382_)
                   (let ((_$e36384_ _sym36382_))
                     (if (let ((_$e36387_ (eq? 'eq? _$e36384_)))
                           (if _$e36387_
                               _$e36387_
                               (let ((_$e36390_ (eq? 'eqv? _$e36384_)))
                                 (if _$e36390_
                                     _$e36390_
                                     (let ((_$e36393_ (eq? 'equal? _$e36384_)))
                                       (if _$e36393_
                                           _$e36393_
                                           (let ((_$e36396_
                                                  (eq? 'free-identifier=?
                                                       _$e36384_)))
                                             (if _$e36396_
                                                 _$e36396_
                                                 (eq? 'stx-eq?
                                                      _$e36384_)))))))))
                         '#t
                         '#f))))
                (_do-assert!32476_
                 (lambda (_assert36373_ _type36374_ _K36375_)
                   (let ((_unwind-assert36377_ _env-assert32466_)
                         (_unwind-type36378_ _env-type32467_))
                     (begin
                       (set! _env-assert32466_ _assert36373_)
                       (set! _env-type32467_ _type36374_)
                       (let ((_val36380_ (_K36375_)))
                         (begin
                           (set! _env-assert32466_ _unwind-assert36377_)
                           (set! _env-type32467_ _unwind-type36378_)
                           _val36380_))))))
                (_do-bind32477_
                 (lambda (_bind36370_ _K36371_)
                   (if (pair? _bind36370_)
                       (_do-bind!32479_
                        (_fold-bind-env32478_ _bind36370_ _env-bind32468_)
                        _K36371_)
                       (_K36371_))))
                (_fold-bind-env32478_
                 (lambda (_bind36299_ _env36300_)
                   (let _lp36302_ ((_rest36304_ _bind36299_)
                                   (_env36305_ _env36300_))
                     (let* ((_rest3630636314_ _rest36304_)
                            (_else3630836322_ (lambda () _env36305_))
                            (_K3631036358_
                             (lambda (_rest36325_ _bind36326_)
                               (let* ((_bind3632736334_ _bind36326_)
                                      (_E3632936338_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3632736334_)))
                                      (_K3633036346_
                                       (lambda (_expr36341_ _id36342_)
                                         (let ((_sexpr36344_
                                                (gxc#apply-generate-runtime-repr
                                                 _expr36341_)))
                                           (_lp36302_
                                            _rest36325_
                                            (cons (cons _sexpr36344_ _id36342_)
                                                  _env36305_))))))
                                 (if (##pair? _bind3632736334_)
                                     (let ((_hd3633136349_
                                            (##car _bind3632736334_))
                                           (_tl3633236351_
                                            (##cdr _bind3632736334_)))
                                       (let* ((_id36354_ _hd3633136349_)
                                              (_expr36356_ _tl3633236351_))
                                         (_K3633036346_
                                          _expr36356_
                                          _id36354_)))
                                     (_E3632936338_))))))
                       (if (##pair? _rest3630636314_)
                           (let ((_hd3631136361_ (##car _rest3630636314_))
                                 (_tl3631236363_ (##cdr _rest3630636314_)))
                             (let* ((_bind36366_ _hd3631136361_)
                                    (_rest36368_ _tl3631236363_))
                               (_K3631036358_ _rest36368_ _bind36366_)))
                           (_else3630836322_))))))
                (_do-bind!32479_
                 (lambda (_env36292_ _K36293_)
                   (let ((_unwind36295_ _env-bind32468_))
                     (begin
                       (set! _env-bind32468_ _env36292_)
                       (let ((_val36297_ (_K36293_)))
                         (begin
                           (set! _env-bind32468_ _unwind36295_)
                           _val36297_))))))
                (_do-splice!32480_
                 (lambda (_K36286_)
                   (let ((_unwind36288_ _in-splice?32469_))
                     (begin
                       (set! _in-splice?32469_ '#t)
                       (let ((_val36290_ (_K36286_)))
                         (begin
                           (set! _in-splice?32469_ _unwind36288_)
                           _val36290_))))))
                (_optimize-e32481_
                 (lambda (_expr35483_)
                   (let* ((___stx4084140842_ _expr35483_)
                          (_g3549035663_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4084140842_))))
                     (let ((___kont4084340844_
                            (lambda (_L36258_ _L36259_ _L36260_)
                              (let ((_$e36277_ (_assert-e32484_ _L36260_)))
                                (if (eq? '#t _$e36277_)
                                    (_optimize-e32481_ _L36259_)
                                    (if (eq? '#f _$e36277_)
                                        (_optimize-e32481_ _L36258_)
                                        (let ((_K36280_
                                               (_optimize-t__0__3980439805_
                                                _L36259_
                                                _L36260_))
                                              (_E36281_
                                               (_optimize-f__3980639807_
                                                _L36258_
                                                _L36260_)))
                                          (if (equal? (gxc#apply-generate-runtime-repr
                                                       _K36280_)
                                                      (gxc#apply-generate-runtime-repr
                                                       _E36281_))
                                              _K36280_
                                              (cons '%#if
                                                    (cons _L36260_
                                                          (cons _K36280_
                                                                (cons _E36281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (___kont4084540846_
                            (lambda (_L36188_ _L36189_)
                              (let ((_$e36209_ (_lookup-block32489_ _L36189_)))
                                (if _$e36209_
                                    ((lambda (_block36212_)
                                       (if (_nonlinear-block?32491_
                                            _block36212_)
                                           _expr35483_
                                           (_optimize-e32481_
                                            (_inline-block32490_
                                             _block36212_
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g3621336216_
                                                                _g3621436218_)
                                                         (cons _g3621336216_
                                                               _g3621436218_))
                                                       '()
                                                       _L36188_))))))
                                     _$e36209_)
                                    _expr35483_))))
                           (___kont4084940850_
                            (lambda (_L36078_ _L36079_ _L36080_)
                              (let ((_body36099_ (_optimize-e32481_ _L36078_)))
                                (cons '%#let-values
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _L36079_
                                               _L36080_)
                                              (foldr2 (lambda (_g3610036104_
                                                               _g3610136106_
                                                               _g3610236108_)
                                                        (cons (cons (cons _g3610136106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                        (cons _g3610036104_ '()))
                                  '()))
                      _g3610236108_))
              '()
              _L36079_
              _L36080_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _body36099_ '()))))))
                           (___kont4085340854_
                            (lambda (_L35946_ _L35947_ _L35948_)
                              (_bind-e__0__3981239813_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3596635969_
                                                       _g3596735971_)
                                                (cons _g3596635969_
                                                      _g3596735971_))
                                              '()
                                              _L35948_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3597335976_
                                                       _g3597435978_)
                                                (cons _g3597335976_
                                                      _g3597435978_))
                                              '()
                                              _L35947_)))
                               _L35946_)))
                           (___kont4085740858_
                            (lambda (_L35803_
                                     _L35804_
                                     _L35805_
                                     _L35806_
                                     _L35807_)
                              (_do-splice!32480_
                               (lambda ()
                                 (let ((_expr35849_
                                        (_optimize-e32481_ _L35805_)))
                                   (cons '%#letrec-values
                                         (cons (cons (cons (cons _L35807_ '())
                                                           (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3585035853_
                                                        _g3585135855_)
                                                 (cons _g3585035853_
                                                       _g3585135855_))
                                               '()
                                               _L35806_))
                                     (cons _expr35849_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g3585735860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3585835862_)
                         (cons _g3585735860_ _g3585835862_))
                       '()
                       _L35804_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L35803_ '()))))))))
                           (___kont4086340864_ (lambda () _expr35483_)))
                       (let* ((___match4105041051_
                               (lambda (_e3561135675_
                                        _hd3561235678_
                                        _tl3561335680_
                                        _e3561435683_
                                        _hd3561535686_
                                        _tl3561635688_
                                        _e3561735691_
                                        _hd3561835694_
                                        _tl3561935696_
                                        _e3562035699_
                                        _hd3562135702_
                                        _tl3562235704_
                                        _e3562335707_
                                        _hd3562435710_
                                        _tl3562535712_
                                        _e3562635715_
                                        _hd3562735718_
                                        _tl3562835720_
                                        _e3562935723_
                                        _hd3563035726_
                                        _tl3563135728_
                                        _e3563235731_
                                        _hd3563335734_
                                        _tl3563435736_
                                        ___splice4085940860_
                                        _target3563535739_
                                        _tl3563735741_)
                                 (letrec ((_loop3563835744_
                                           (lambda (_hd3563635747_
                                                    _id3564235749_)
                                             (if (gx#stx-pair? _hd3563635747_)
                                                 (let ((_e3563935752_
                                                        (gx#stx-e
                                                         _hd3563635747_)))
                                                   (let ((_lp-tl3564135757_
                                                          (##cdr _e3563935752_))
                                                         (_lp-hd3564035755_
                                                          (##car _e3563935752_)))
                                                     (_loop3563835744_
                                                      _lp-tl3564135757_
                                                      (cons _lp-hd3564035755_
                                                            _id3564235749_))))
                                                 (let ((_id3564335760_
                                                        (reverse _id3564235749_)))
                                                   (if (gx#stx-pair?
                                                        _tl3563435736_)
                                                       (let ((_e3564435763_
                                                              (gx#stx-e
                                                               _tl3563435736_)))
                                                         (let ((_tl3564635768_
                                                                (##cdr _e3564435763_))
                                                               (_hd3564535766_
                                                                (##car _e3564435763_)))
                                                           (if (gx#stx-null?
                                                                _tl3564635768_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3562835720_)
                           (if (gx#stx-pair/null? _tl3561935696_)
                               (let ((___splice4086140862_
                                      (gx#syntax-split-splice
                                       _tl3561935696_
                                       '0)))
                                 (let ((_tl3564935773_
                                        (##vector-ref ___splice4086140862_ '1))
                                       (_target3564735771_
                                        (##vector-ref
                                         ___splice4086140862_
                                         '0)))
                                   (if (gx#stx-null? _tl3564935773_)
                                       (letrec ((_loop3565035776_
                                                 (lambda (_hd3564835779_
                                                          _bind3565435781_)
                                                   (if (gx#stx-pair?
                                                        _hd3564835779_)
                                                       (let ((_e3565135784_
                                                              (gx#stx-e
                                                               _hd3564835779_)))
                                                         (let ((_lp-tl3565335789_
                                                                (##cdr _e3565135784_))
                                                               (_lp-hd3565235787_
                                                                (##car _e3565135784_)))
                                                           (_loop3565035776_
                                                            _lp-tl3565335789_
                                                            (cons _lp-hd3565235787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind3565435781_))))
               (let ((_bind3565535792_ (reverse _bind3565435781_)))
                 (if (gx#stx-pair? _tl3561635688_)
                     (let ((_e3565635795_ (gx#stx-e _tl3561635688_)))
                       (let ((_tl3565835800_ (##cdr _e3565635795_))
                             (_hd3565735798_ (##car _e3565635795_)))
                         (if (gx#stx-null? _tl3565835800_)
                             (___kont4085740858_
                              _hd3565735798_
                              _bind3565535792_
                              _hd3564535766_
                              _id3564335760_
                              _hd3562435710_)
                             (___kont4086340864_))))
                     (___kont4086340864_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3565035776_
                                          _target3564735771_
                                          '()))
                                       (___kont4086340864_))))
                               (___kont4086340864_))
                           (___kont4086340864_))
                       (___kont4086340864_))))
               (___kont4086340864_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop3563835744_ _target3563535739_ '()))))
                              (___match4098440985_
                               (lambda (_e3557735870_
                                        _hd3557835873_
                                        _tl3557935875_
                                        _e3558035878_
                                        _hd3558135881_
                                        _tl3558235883_
                                        ___splice4085540856_
                                        _target3558335886_
                                        _tl3558535888_)
                                 (letrec ((_loop3558635891_
                                           (lambda (_hd3558435894_
                                                    _expr3559035896_
                                                    _id3559135898_)
                                             (if (gx#stx-pair? _hd3558435894_)
                                                 (let ((_e3558735901_
                                                        (gx#stx-e
                                                         _hd3558435894_)))
                                                   (let ((_lp-tl3558935906_
                                                          (##cdr _e3558735901_))
                                                         (_lp-hd3558835904_
                                                          (##car _e3558735901_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3558835904_)
                                                         (let ((_e3559435909_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3558835904_)))
                   (let ((_tl3559635914_ (##cdr _e3559435909_))
                         (_hd3559535912_ (##car _e3559435909_)))
                     (if (gx#stx-pair? _hd3559535912_)
                         (let ((_e3559735917_ (gx#stx-e _hd3559535912_)))
                           (let ((_tl3559935922_ (##cdr _e3559735917_))
                                 (_hd3559835920_ (##car _e3559735917_)))
                             (if (gx#stx-null? _tl3559935922_)
                                 (if (gx#stx-pair? _tl3559635914_)
                                     (let ((_e3560035925_
                                            (gx#stx-e _tl3559635914_)))
                                       (let ((_tl3560235930_
                                              (##cdr _e3560035925_))
                                             (_hd3560135928_
                                              (##car _e3560035925_)))
                                         (if (gx#stx-null? _tl3560235930_)
                                             (_loop3558635891_
                                              _lp-tl3558935906_
                                              (cons _hd3560135928_
                                                    _expr3559035896_)
                                              (cons _hd3559835920_
                                                    _id3559135898_))
                                             (___kont4086340864_))))
                                     (___kont4086340864_))
                                 (___kont4086340864_))))
                         (___kont4086340864_))))
                 (___kont4086340864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3559335935_
                                                        (reverse _id3559135898_))
                                                       (_expr3559235933_
                                                        (reverse _expr3559035896_)))
                                                   (if (gx#stx-pair?
                                                        _tl3558235883_)
                                                       (let ((_e3560335938_
                                                              (gx#stx-e
                                                               _tl3558235883_)))
                                                         (let ((_tl3560535943_
                                                                (##cdr _e3560335938_))
                                                               (_hd3560435941_
                                                                (##car _e3560335938_)))
                                                           (if (gx#stx-null?
                                                                _tl3560535943_)
                                                               (___kont4085340854_
                                                                _hd3560435941_
                                                                _expr3559235933_
                                                                _id3559335935_)
                                                               (___kont4086340864_))))
                                                       (___kont4086340864_)))))))
                                   (_loop3558635891_
                                    _target3558335886_
                                    '()
                                    '()))))
                              (___match4096040961_
                               (lambda (_e3553935986_
                                        _hd3554035989_
                                        _tl3554135991_
                                        _e3554235994_
                                        _hd3554335997_
                                        _tl3554435999_
                                        ___splice4085140852_
                                        _target3554536002_
                                        _tl3554736004_)
                                 (letrec ((_loop3554836007_
                                           (lambda (_hd3554636010_
                                                    _xid3555236012_
                                                    _id3555336014_)
                                             (if (gx#stx-pair? _hd3554636010_)
                                                 (let ((_e3554936017_
                                                        (gx#stx-e
                                                         _hd3554636010_)))
                                                   (let ((_lp-tl3555136022_
                                                          (##cdr _e3554936017_))
                                                         (_lp-hd3555036020_
                                                          (##car _e3554936017_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3555036020_)
                                                         (let ((_e3555636025_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3555036020_)))
                   (let ((_tl3555836030_ (##cdr _e3555636025_))
                         (_hd3555736028_ (##car _e3555636025_)))
                     (if (gx#stx-pair? _hd3555736028_)
                         (let ((_e3555936033_ (gx#stx-e _hd3555736028_)))
                           (let ((_tl3556136038_ (##cdr _e3555936033_))
                                 (_hd3556036036_ (##car _e3555936033_)))
                             (if (gx#stx-null? _tl3556136038_)
                                 (if (gx#stx-pair? _tl3555836030_)
                                     (let ((_e3556236041_
                                            (gx#stx-e _tl3555836030_)))
                                       (let ((_tl3556436046_
                                              (##cdr _e3556236041_))
                                             (_hd3556336044_
                                              (##car _e3556236041_)))
                                         (if (gx#stx-pair? _hd3556336044_)
                                             (let ((_e3556536049_
                                                    (gx#stx-e _hd3556336044_)))
                                               (let ((_tl3556736054_
                                                      (##cdr _e3556536049_))
                                                     (_hd3556636052_
                                                      (##car _e3556536049_)))
                                                 (if (gx#identifier?
                                                      _hd3556636052_)
                                                     (if (gx#stx-eq?
                                                          '%#ref
                                                          _hd3556636052_)
                                                         (if (gx#stx-pair?
                                                              _tl3556736054_)
                                                             (let ((_e3556836057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3556736054_)))
                       (let ((_tl3557036062_ (##cdr _e3556836057_))
                             (_hd3556936060_ (##car _e3556836057_)))
                         (if (gx#stx-null? _tl3557036062_)
                             (if (gx#stx-null? _tl3556436046_)
                                 (_loop3554836007_
                                  _lp-tl3555136022_
                                  (cons _hd3556936060_ _xid3555236012_)
                                  (cons _hd3556036036_ _id3555336014_))
                                 (___match4098440985_
                                  _e3553935986_
                                  _hd3554035989_
                                  _tl3554135991_
                                  _e3554235994_
                                  _hd3554335997_
                                  _tl3554435999_
                                  ___splice4085140852_
                                  _target3554536002_
                                  _tl3554736004_))
                             (___match4098440985_
                              _e3553935986_
                              _hd3554035989_
                              _tl3554135991_
                              _e3554235994_
                              _hd3554335997_
                              _tl3554435999_
                              ___splice4085140852_
                              _target3554536002_
                              _tl3554736004_))))
                     (___match4098440985_
                      _e3553935986_
                      _hd3554035989_
                      _tl3554135991_
                      _e3554235994_
                      _hd3554335997_
                      _tl3554435999_
                      ___splice4085140852_
                      _target3554536002_
                      _tl3554736004_))
                 (___match4098440985_
                  _e3553935986_
                  _hd3554035989_
                  _tl3554135991_
                  _e3554235994_
                  _hd3554335997_
                  _tl3554435999_
                  ___splice4085140852_
                  _target3554536002_
                  _tl3554736004_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___match4098440985_
                                                      _e3553935986_
                                                      _hd3554035989_
                                                      _tl3554135991_
                                                      _e3554235994_
                                                      _hd3554335997_
                                                      _tl3554435999_
                                                      ___splice4085140852_
                                                      _target3554536002_
                                                      _tl3554736004_))))
                                             (___match4098440985_
                                              _e3553935986_
                                              _hd3554035989_
                                              _tl3554135991_
                                              _e3554235994_
                                              _hd3554335997_
                                              _tl3554435999_
                                              ___splice4085140852_
                                              _target3554536002_
                                              _tl3554736004_))))
                                     (___match4098440985_
                                      _e3553935986_
                                      _hd3554035989_
                                      _tl3554135991_
                                      _e3554235994_
                                      _hd3554335997_
                                      _tl3554435999_
                                      ___splice4085140852_
                                      _target3554536002_
                                      _tl3554736004_))
                                 (___match4098440985_
                                  _e3553935986_
                                  _hd3554035989_
                                  _tl3554135991_
                                  _e3554235994_
                                  _hd3554335997_
                                  _tl3554435999_
                                  ___splice4085140852_
                                  _target3554536002_
                                  _tl3554736004_))))
                         (___match4098440985_
                          _e3553935986_
                          _hd3554035989_
                          _tl3554135991_
                          _e3554235994_
                          _hd3554335997_
                          _tl3554435999_
                          ___splice4085140852_
                          _target3554536002_
                          _tl3554736004_))))
                 (___match4098440985_
                  _e3553935986_
                  _hd3554035989_
                  _tl3554135991_
                  _e3554235994_
                  _hd3554335997_
                  _tl3554435999_
                  ___splice4085140852_
                  _target3554536002_
                  _tl3554736004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3555536067_
                                                        (reverse _id3555336014_))
                                                       (_xid3555436065_
                                                        (reverse _xid3555236012_)))
                                                   (if (gx#stx-pair?
                                                        _tl3554435999_)
                                                       (let ((_e3557136070_
                                                              (gx#stx-e
                                                               _tl3554435999_)))
                                                         (let ((_tl3557336075_
                                                                (##cdr _e3557136070_))
                                                               (_hd3557236073_
                                                                (##car _e3557136070_)))
                                                           (if (gx#stx-null?
                                                                _tl3557336075_)
                                                               (___kont4084940850_
                                                                _hd3557236073_
                                                                _xid3555436065_
                                                                _id3555536067_)
                                                               (___match4098440985_
                                                                _e3553935986_
                                                                _hd3554035989_
                                                                _tl3554135991_
                                                                _e3554235994_
                                                                _hd3554335997_
                                                                _tl3554435999_
                                                                ___splice4085140852_
                                                                _target3554536002_
                                                                _tl3554736004_))))
                                                       (___match4098440985_
                                                        _e3553935986_
                                                        _hd3554035989_
                                                        _tl3554135991_
                                                        _e3554235994_
                                                        _hd3554335997_
                                                        _tl3554435999_
                                                        ___splice4085140852_
                                                        _target3554536002_
                                                        _tl3554736004_)))))))
                                   (_loop3554836007_
                                    _target3554536002_
                                    '()
                                    '()))))
                              (___match4093640937_
                               (lambda (_e3550936116_
                                        _hd3551036119_
                                        _tl3551136121_
                                        _e3551236124_
                                        _hd3551336127_
                                        _tl3551436129_
                                        _e3551536132_
                                        _hd3551636135_
                                        _tl3551736137_
                                        _e3551836140_
                                        _hd3551936143_
                                        _tl3552036145_
                                        ___splice4084740848_
                                        _target3552136148_
                                        _tl3552336150_)
                                 (letrec ((_loop3552436153_
                                           (lambda (_hd3552236156_
                                                    _id3552836158_)
                                             (if (gx#stx-pair? _hd3552236156_)
                                                 (let ((_e3552536161_
                                                        (gx#stx-e
                                                         _hd3552236156_)))
                                                   (let ((_lp-tl3552736166_
                                                          (##cdr _e3552536161_))
                                                         (_lp-hd3552636164_
                                                          (##car _e3552536161_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3552636164_)
                                                         (let ((_e3553036169_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3552636164_)))
                   (let ((_tl3553236174_ (##cdr _e3553036169_))
                         (_hd3553136172_ (##car _e3553036169_)))
                     (if (gx#identifier? _hd3553136172_)
                         (if (gx#stx-eq? '%#ref _hd3553136172_)
                             (if (gx#stx-pair? _tl3553236174_)
                                 (let ((_e3553336177_
                                        (gx#stx-e _tl3553236174_)))
                                   (let ((_tl3553536182_ (##cdr _e3553336177_))
                                         (_hd3553436180_
                                          (##car _e3553336177_)))
                                     (if (gx#stx-null? _tl3553536182_)
                                         (_loop3552436153_
                                          _lp-tl3552736166_
                                          (cons _hd3553436180_ _id3552836158_))
                                         (___kont4086340864_))))
                                 (___kont4086340864_))
                             (___kont4086340864_))
                         (___kont4086340864_))))
                 (___kont4086340864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3552936185_
                                                        (reverse _id3552836158_)))
                                                   (___kont4084540846_
                                                    _id3552936185_
                                                    _hd3551936143_))))))
                                   (_loop3552436153_
                                    _target3552136148_
                                    '())))))
                         (if (gx#stx-pair? ___stx4084140842_)
                             (let ((_e3549536226_
                                    (gx#stx-e ___stx4084140842_)))
                               (let ((_tl3549736231_ (##cdr _e3549536226_))
                                     (_hd3549636229_ (##car _e3549536226_)))
                                 (if (gx#identifier? _hd3549636229_)
                                     (if (gx#stx-eq? '%#if _hd3549636229_)
                                         (if (gx#stx-pair? _tl3549736231_)
                                             (let ((_e3549836234_
                                                    (gx#stx-e _tl3549736231_)))
                                               (let ((_tl3550036239_
                                                      (##cdr _e3549836234_))
                                                     (_hd3549936237_
                                                      (##car _e3549836234_)))
                                                 (if (gx#stx-pair?
                                                      _tl3550036239_)
                                                     (let ((_e3550136242_
                                                            (gx#stx-e
                                                             _tl3550036239_)))
                                                       (let ((_tl3550336247_
                                                              (##cdr _e3550136242_))
                                                             (_hd3550236245_
                                                              (##car _e3550136242_)))
                                                         (if (gx#stx-pair?
                                                              _tl3550336247_)
                                                             (let ((_e3550436250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3550336247_)))
                       (let ((_tl3550636255_ (##cdr _e3550436250_))
                             (_hd3550536253_ (##car _e3550436250_)))
                         (if (gx#stx-null? _tl3550636255_)
                             (___kont4084340844_
                              _hd3550536253_
                              _hd3550236245_
                              _hd3549936237_)
                             (___kont4086340864_))))
                     (___kont4086340864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4086340864_))))
                                             (___kont4086340864_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3549636229_)
                                             (if (gx#stx-pair? _tl3549736231_)
                                                 (let ((_e3551236124_
                                                        (gx#stx-e
                                                         _tl3549736231_)))
                                                   (let ((_tl3551436129_
                                                          (##cdr _e3551236124_))
                                                         (_hd3551336127_
                                                          (##car _e3551236124_)))
                                                     (if (gx#stx-pair?
                                                          _hd3551336127_)
                                                         (let ((_e3551536132_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3551336127_)))
                   (let ((_tl3551736137_ (##cdr _e3551536132_))
                         (_hd3551636135_ (##car _e3551536132_)))
                     (if (gx#identifier? _hd3551636135_)
                         (if (gx#stx-eq? '%#ref _hd3551636135_)
                             (if (gx#stx-pair? _tl3551736137_)
                                 (let ((_e3551836140_
                                        (gx#stx-e _tl3551736137_)))
                                   (let ((_tl3552036145_ (##cdr _e3551836140_))
                                         (_hd3551936143_
                                          (##car _e3551836140_)))
                                     (if (gx#stx-null? _tl3552036145_)
                                         (if (gx#stx-pair/null? _tl3551436129_)
                                             (let ((___splice4084740848_
                                                    (gx#syntax-split-splice
                                                     _tl3551436129_
                                                     '0)))
                                               (let ((_tl3552336150_
                                                      (##vector-ref
                                                       ___splice4084740848_
                                                       '1))
                                                     (_target3552136148_
                                                      (##vector-ref
                                                       ___splice4084740848_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3552336150_)
                                                     (___match4093640937_
                                                      _e3549536226_
                                                      _hd3549636229_
                                                      _tl3549736231_
                                                      _e3551236124_
                                                      _hd3551336127_
                                                      _tl3551436129_
                                                      _e3551536132_
                                                      _hd3551636135_
                                                      _tl3551736137_
                                                      _e3551836140_
                                                      _hd3551936143_
                                                      _tl3552036145_
                                                      ___splice4084740848_
                                                      _target3552136148_
                                                      _tl3552336150_)
                                                     (___kont4086340864_))))
                                             (___kont4086340864_))
                                         (___kont4086340864_))))
                                 (___kont4086340864_))
                             (___kont4086340864_))
                         (___kont4086340864_))))
                 (___kont4086340864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4086340864_))
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _hd3549636229_)
                                                 (if (gx#stx-pair?
                                                      _tl3549736231_)
                                                     (let ((_e3554235994_
                                                            (gx#stx-e
                                                             _tl3549736231_)))
                                                       (let ((_tl3554435999_
                                                              (##cdr _e3554235994_))
                                                             (_hd3554335997_
                                                              (##car _e3554235994_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd3554335997_)
                                                             (let ((___splice4085140852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd3554335997_ '0)))
                       (let ((_tl3554736004_
                              (##vector-ref ___splice4085140852_ '1))
                             (_target3554536002_
                              (##vector-ref ___splice4085140852_ '0)))
                         (if (gx#stx-null? _tl3554736004_)
                             (___match4096040961_
                              _e3549536226_
                              _hd3549636229_
                              _tl3549736231_
                              _e3554235994_
                              _hd3554335997_
                              _tl3554435999_
                              ___splice4085140852_
                              _target3554536002_
                              _tl3554736004_)
                             (___kont4086340864_))))
                     (___kont4086340864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4086340864_))
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3549636229_)
                                                     (if (gx#stx-pair?
                                                          _tl3549736231_)
                                                         (let ((_e3561435683_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3549736231_)))
                   (let ((_tl3561635688_ (##cdr _e3561435683_))
                         (_hd3561535686_ (##car _e3561435683_)))
                     (if (gx#stx-pair? _hd3561535686_)
                         (let ((_e3561735691_ (gx#stx-e _hd3561535686_)))
                           (let ((_tl3561935696_ (##cdr _e3561735691_))
                                 (_hd3561835694_ (##car _e3561735691_)))
                             (if (gx#stx-pair? _hd3561835694_)
                                 (let ((_e3562035699_
                                        (gx#stx-e _hd3561835694_)))
                                   (let ((_tl3562235704_ (##cdr _e3562035699_))
                                         (_hd3562135702_
                                          (##car _e3562035699_)))
                                     (if (gx#stx-pair? _hd3562135702_)
                                         (let ((_e3562335707_
                                                (gx#stx-e _hd3562135702_)))
                                           (let ((_tl3562535712_
                                                  (##cdr _e3562335707_))
                                                 (_hd3562435710_
                                                  (##car _e3562335707_)))
                                             (if (gx#stx-null? _tl3562535712_)
                                                 (if (gx#stx-pair?
                                                      _tl3562235704_)
                                                     (let ((_e3562635715_
                                                            (gx#stx-e
                                                             _tl3562235704_)))
                                                       (let ((_tl3562835720_
                                                              (##cdr _e3562635715_))
                                                             (_hd3562735718_
                                                              (##car _e3562635715_)))
                                                         (if (gx#stx-pair?
                                                              _hd3562735718_)
                                                             (let ((_e3562935723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3562735718_)))
                       (let ((_tl3563135728_ (##cdr _e3562935723_))
                             (_hd3563035726_ (##car _e3562935723_)))
                         (if (gx#identifier? _hd3563035726_)
                             (if (gx#stx-eq? '%#lambda _hd3563035726_)
                                 (if (gx#stx-pair? _tl3563135728_)
                                     (let ((_e3563235731_
                                            (gx#stx-e _tl3563135728_)))
                                       (let ((_tl3563435736_
                                              (##cdr _e3563235731_))
                                             (_hd3563335734_
                                              (##car _e3563235731_)))
                                         (if (gx#stx-pair/null? _hd3563335734_)
                                             (let ((___splice4085940860_
                                                    (gx#syntax-split-splice
                                                     _hd3563335734_
                                                     '0)))
                                               (let ((_tl3563735741_
                                                      (##vector-ref
                                                       ___splice4085940860_
                                                       '1))
                                                     (_target3563535739_
                                                      (##vector-ref
                                                       ___splice4085940860_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3563735741_)
                                                     (___match4105041051_
                                                      _e3549536226_
                                                      _hd3549636229_
                                                      _tl3549736231_
                                                      _e3561435683_
                                                      _hd3561535686_
                                                      _tl3561635688_
                                                      _e3561735691_
                                                      _hd3561835694_
                                                      _tl3561935696_
                                                      _e3562035699_
                                                      _hd3562135702_
                                                      _tl3562235704_
                                                      _e3562335707_
                                                      _hd3562435710_
                                                      _tl3562535712_
                                                      _e3562635715_
                                                      _hd3562735718_
                                                      _tl3562835720_
                                                      _e3562935723_
                                                      _hd3563035726_
                                                      _tl3563135728_
                                                      _e3563235731_
                                                      _hd3563335734_
                                                      _tl3563435736_
                                                      ___splice4085940860_
                                                      _target3563535739_
                                                      _tl3563735741_)
                                                     (___kont4086340864_))))
                                             (___kont4086340864_))))
                                     (___kont4086340864_))
                                 (___kont4086340864_))
                             (___kont4086340864_))))
                     (___kont4086340864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4086340864_))
                                                 (___kont4086340864_))))
                                         (___kont4086340864_))))
                                 (___kont4086340864_))))
                         (___kont4086340864_))))
                 (___kont4086340864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4086340864_)))))
                                     (___kont4086340864_))))
                             (___kont4086340864_)))))))
                (_optimize-t__3980239803_
                 (lambda (_expr35466_ _test35467_ _continue35468_)
                   (_do-assert32470_
                    (cons (cons _test35467_ '#t) '())
                    (lambda () (_continue35468_ _expr35466_)))))
                (_optimize-t__0__3980439805_
                 (lambda (_expr35474_ _test35475_)
                   (let ((_continue35477_ _optimize-e32481_))
                     (_optimize-t__3980239803_
                      _expr35474_
                      _test35475_
                      _continue35477_))))
                (_optimize-t32482_
                 (lambda _g42905_
                   (let ((_g42904_ (length _g42905_)))
                     (cond ((##fx= _g42904_ 2)
                            (apply _optimize-t__0__3980439805_ _g42905_))
                           ((##fx= _g42904_ 3)
                            (apply _optimize-t__3980239803_ _g42905_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42905_))))))
                (_optimize-f__3980639807_
                 (lambda (_expr34551_ _test34552_)
                   (_do-assert32470_
                    (if _test34552_ (cons (cons _test34552_ '#f) '()) '())
                    (lambda ()
                      (let* ((___stx4109141092_ _expr34551_)
                             (_g3456034733_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4109141092_))))
                        (let ((___kont4109341094_
                               (lambda (_L35321_ _L35322_)
                                 (let ((_$e35342_
                                        (_lookup-block32489_ _L35322_)))
                                   (if _$e35342_
                                       ((lambda (_block35345_)
                                          (if (_nonlinear-block?32491_
                                               _block35345_)
                                              _expr34551_
                                              (let* ((_inline35354_
                                                      (_inline-block32490_
                                                       _block35345_
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g3534635349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3534735351_)
                           (cons _g3534635349_ _g3534735351_))
                         '()
                         _L35321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___stx4105341054_
                                                      _inline35354_)
                                                     (_g3535735378_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4105341054_))))
                                                (let ((___kont4105541056_
                                                       (lambda (_L35422_
                                                                _L35423_
                                                                _L35424_)
                                                         (let ((_$e35446_
                                                                (_assert-e32484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L35424_)))
                   (if (eq? '#t _$e35446_)
                       (if _in-splice?32469_
                           (_optimize-f__0__3980839809_ _L35423_)
                           (_optimize-e32481_ _L35423_))
                       (if (eq? '#f _$e35446_)
                           (_optimize-f__0__3980839809_ _L35422_)
                           _expr34551_)))))
              (___kont4105741058_
               (lambda () (_optimize-f__0__3980839809_ _inline35354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4105341054_)
                                                      (let ((_e3536235390_
                                                             (gx#stx-e
                                                              ___stx4105341054_)))
                                                        (let ((_tl3536435395_
                                                               (##cdr _e3536235390_))
                                                              (_hd3536335393_
                                                               (##car _e3536235390_)))
                                                          (if (gx#identifier?
                                                               _hd3536335393_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#if
                           _hd3536335393_)
                          (if (gx#stx-pair? _tl3536435395_)
                              (let ((_e3536535398_ (gx#stx-e _tl3536435395_)))
                                (let ((_tl3536735403_ (##cdr _e3536535398_))
                                      (_hd3536635401_ (##car _e3536535398_)))
                                  (if (gx#stx-pair? _tl3536735403_)
                                      (let ((_e3536835406_
                                             (gx#stx-e _tl3536735403_)))
                                        (let ((_tl3537035411_
                                               (##cdr _e3536835406_))
                                              (_hd3536935409_
                                               (##car _e3536835406_)))
                                          (if (gx#stx-pair? _tl3537035411_)
                                              (let ((_e3537135414_
                                                     (gx#stx-e
                                                      _tl3537035411_)))
                                                (let ((_tl3537335419_
                                                       (##cdr _e3537135414_))
                                                      (_hd3537235417_
                                                       (##car _e3537135414_)))
                                                  (if (gx#stx-null?
                                                       _tl3537335419_)
                                                      (___kont4105541056_
                                                       _hd3537235417_
                                                       _hd3536935409_
                                                       _hd3536635401_)
                                                      (___kont4105741058_))))
                                              (___kont4105741058_))))
                                      (___kont4105741058_))))
                              (___kont4105741058_))
                          (___kont4105741058_))
                      (___kont4105741058_))))
              (___kont4105741058_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e35342_)
                                       _expr34551_))))
                              (___kont4109741098_
                               (lambda (_L35219_ _L35220_ _L35221_)
                                 (let ((_$e35238_ (_assert-e32484_ _L35221_)))
                                   (if (eq? '#t _$e35238_)
                                       (if _in-splice?32469_
                                           (_optimize-f__0__3980839809_
                                            _L35220_)
                                           (_optimize-e32481_ _L35220_))
                                       (if (eq? '#f _$e35238_)
                                           (_optimize-f__0__3980839809_
                                            _L35219_)
                                           (let ((_K35241_
                                                  (_optimize-t__3980239803_
                                                   _L35220_
                                                   _L35221_
                                                   _optimize-f32483_))
                                                 (_E35242_
                                                  (_optimize-f__3980639807_
                                                   _L35219_
                                                   _L35221_)))
                                             (if (equal? (gxc#apply-generate-runtime-repr
                                                          _K35241_)
                                                         (gxc#apply-generate-runtime-repr
                                                          _E35242_))
                                                 _K35241_
                                                 (cons '%#if
                                                       (cons _L35221_
                                                             (cons _K35241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _E35242_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (___kont4109941100_
                               (lambda (_L35149_ _L35150_ _L35151_)
                                 (let ((_body35170_
                                        (_optimize-f__0__3980839809_
                                         _L35149_)))
                                   (cons '%#let-values
                                         (cons (begin
                                                 (gx#syntax-check-splice-targets
                                                  _L35150_
                                                  _L35151_)
                                                 (foldr2 (lambda (_g3517135175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3517235177_
                          _g3517335179_)
                   (cons (cons (cons _g3517235177_ '())
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g3517135175_ '()))
                                     '()))
                         _g3517335179_))
                 '()
                 _L35150_
                 _L35151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _body35170_ '()))))))
                              (___kont4110341104_
                               (lambda (_L35017_ _L35018_ _L35019_)
                                 (_bind-e__3981039811_
                                  (map cons
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3503735040_
                                                          _g3503835042_)
                                                   (cons _g3503735040_
                                                         _g3503835042_))
                                                 '()
                                                 _L35019_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3504435047_
                                                          _g3504535049_)
                                                   (cons _g3504435047_
                                                         _g3504535049_))
                                                 '()
                                                 _L35018_)))
                                  _L35017_
                                  _optimize-f32483_)))
                              (___kont4110741108_
                               (lambda (_L34873_
                                        _L34874_
                                        _L34875_
                                        _L34876_
                                        _L34877_)
                                 (_do-splice!32480_
                                  (lambda ()
                                    (let ((_expr34920_
                                           (_optimize-f__0__3980839809_
                                            _L34875_)))
                                      (cons '%#letrec-values
                                            (cons (cons (cons (cons _L34877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#lambda
                                  (cons (begin
                                          '#!void
                                          (foldr1 (lambda (_g3492134924_
                                                           _g3492234926_)
                                                    (cons _g3492134924_
                                                          _g3492234926_))
                                                  '()
                                                  _L34876_))
                                        (cons _expr34920_ '())))
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3492834931_ _g3492934933_)
                            (cons _g3492834931_ _g3492934933_))
                          '()
                          _L34874_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L34873_ '()))))))))
                              (___kont4111341114_ (lambda () _expr34551_)))
                          (let* ((___match4130041301_
                                  (lambda (_e3468134745_
                                           _hd3468234748_
                                           _tl3468334750_
                                           _e3468434753_
                                           _hd3468534756_
                                           _tl3468634758_
                                           _e3468734761_
                                           _hd3468834764_
                                           _tl3468934766_
                                           _e3469034769_
                                           _hd3469134772_
                                           _tl3469234774_
                                           _e3469334777_
                                           _hd3469434780_
                                           _tl3469534782_
                                           _e3469634785_
                                           _hd3469734788_
                                           _tl3469834790_
                                           _e3469934793_
                                           _hd3470034796_
                                           _tl3470134798_
                                           _e3470234801_
                                           _hd3470334804_
                                           _tl3470434806_
                                           ___splice4110941110_
                                           _target3470534809_
                                           _tl3470734811_)
                                    (letrec ((_loop3470834814_
                                              (lambda (_hd3470634817_
                                                       _id3471234819_)
                                                (if (gx#stx-pair?
                                                     _hd3470634817_)
                                                    (let ((_e3470934822_
                                                           (gx#stx-e
                                                            _hd3470634817_)))
                                                      (let ((_lp-tl3471134827_
                                                             (##cdr _e3470934822_))
                                                            (_lp-hd3471034825_
                                                             (##car _e3470934822_)))
                                                        (_loop3470834814_
                                                         _lp-tl3471134827_
                                                         (cons _lp-hd3471034825_
                                                               _id3471234819_))))
                                                    (let ((_id3471334830_
                                                           (reverse _id3471234819_)))
                                                      (if (gx#stx-pair?
                                                           _tl3470434806_)
                                                          (let ((_e3471434833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3470434806_)))
                    (let ((_tl3471634838_ (##cdr _e3471434833_))
                          (_hd3471534836_ (##car _e3471434833_)))
                      (if (gx#stx-null? _tl3471634838_)
                          (if (gx#stx-null? _tl3469834790_)
                              (if (gx#stx-pair/null? _tl3468934766_)
                                  (let ((___splice4111141112_
                                         (gx#syntax-split-splice
                                          _tl3468934766_
                                          '0)))
                                    (let ((_tl3471934843_
                                           (##vector-ref
                                            ___splice4111141112_
                                            '1))
                                          (_target3471734841_
                                           (##vector-ref
                                            ___splice4111141112_
                                            '0)))
                                      (if (gx#stx-null? _tl3471934843_)
                                          (letrec ((_loop3472034846_
                                                    (lambda (_hd3471834849_
                                                             _bind3472434851_)
                                                      (if (gx#stx-pair?
                                                           _hd3471834849_)
                                                          (let ((_e3472134854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3471834849_)))
                    (let ((_lp-tl3472334859_ (##cdr _e3472134854_))
                          (_lp-hd3472234857_ (##car _e3472134854_)))
                      (_loop3472034846_
                       _lp-tl3472334859_
                       (cons _lp-hd3472234857_ _bind3472434851_))))
                  (let ((_bind3472534862_ (reverse _bind3472434851_)))
                    (if (gx#stx-pair? _tl3468634758_)
                        (let ((_e3472634865_ (gx#stx-e _tl3468634758_)))
                          (let ((_tl3472834870_ (##cdr _e3472634865_))
                                (_hd3472734868_ (##car _e3472634865_)))
                            (if (gx#stx-null? _tl3472834870_)
                                (___kont4110741108_
                                 _hd3472734868_
                                 _bind3472534862_
                                 _hd3471534836_
                                 _id3471334830_
                                 _hd3469434780_)
                                (___kont4111341114_))))
                        (___kont4111341114_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3472034846_
                                             _target3471734841_
                                             '()))
                                          (___kont4111341114_))))
                                  (___kont4111341114_))
                              (___kont4111341114_))
                          (___kont4111341114_))))
                  (___kont4111341114_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3470834814_
                                       _target3470534809_
                                       '()))))
                                 (___match4123441235_
                                  (lambda (_e3464734941_
                                           _hd3464834944_
                                           _tl3464934946_
                                           _e3465034949_
                                           _hd3465134952_
                                           _tl3465234954_
                                           ___splice4110541106_
                                           _target3465334957_
                                           _tl3465534959_)
                                    (letrec ((_loop3465634962_
                                              (lambda (_hd3465434965_
                                                       _expr3466034967_
                                                       _id3466134969_)
                                                (if (gx#stx-pair?
                                                     _hd3465434965_)
                                                    (let ((_e3465734972_
                                                           (gx#stx-e
                                                            _hd3465434965_)))
                                                      (let ((_lp-tl3465934977_
                                                             (##cdr _e3465734972_))
                                                            (_lp-hd3465834975_
                                                             (##car _e3465734972_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3465834975_)
                                                            (let ((_e3466434980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3465834975_)))
                      (let ((_tl3466634985_ (##cdr _e3466434980_))
                            (_hd3466534983_ (##car _e3466434980_)))
                        (if (gx#stx-pair? _hd3466534983_)
                            (let ((_e3466734988_ (gx#stx-e _hd3466534983_)))
                              (let ((_tl3466934993_ (##cdr _e3466734988_))
                                    (_hd3466834991_ (##car _e3466734988_)))
                                (if (gx#stx-null? _tl3466934993_)
                                    (if (gx#stx-pair? _tl3466634985_)
                                        (let ((_e3467034996_
                                               (gx#stx-e _tl3466634985_)))
                                          (let ((_tl3467235001_
                                                 (##cdr _e3467034996_))
                                                (_hd3467134999_
                                                 (##car _e3467034996_)))
                                            (if (gx#stx-null? _tl3467235001_)
                                                (_loop3465634962_
                                                 _lp-tl3465934977_
                                                 (cons _hd3467134999_
                                                       _expr3466034967_)
                                                 (cons _hd3466834991_
                                                       _id3466134969_))
                                                (___kont4111341114_))))
                                        (___kont4111341114_))
                                    (___kont4111341114_))))
                            (___kont4111341114_))))
                    (___kont4111341114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3466335006_
                                                           (reverse _id3466134969_))
                                                          (_expr3466235004_
                                                           (reverse _expr3466034967_)))
                                                      (if (gx#stx-pair?
                                                           _tl3465234954_)
                                                          (let ((_e3467335009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3465234954_)))
                    (let ((_tl3467535014_ (##cdr _e3467335009_))
                          (_hd3467435012_ (##car _e3467335009_)))
                      (if (gx#stx-null? _tl3467535014_)
                          (___kont4110341104_
                           _hd3467435012_
                           _expr3466235004_
                           _id3466335006_)
                          (___kont4111341114_))))
                  (___kont4111341114_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3465634962_
                                       _target3465334957_
                                       '()
                                       '()))))
                                 (___match4121041211_
                                  (lambda (_e3460935057_
                                           _hd3461035060_
                                           _tl3461135062_
                                           _e3461235065_
                                           _hd3461335068_
                                           _tl3461435070_
                                           ___splice4110141102_
                                           _target3461535073_
                                           _tl3461735075_)
                                    (letrec ((_loop3461835078_
                                              (lambda (_hd3461635081_
                                                       _xid3462235083_
                                                       _id3462335085_)
                                                (if (gx#stx-pair?
                                                     _hd3461635081_)
                                                    (let ((_e3461935088_
                                                           (gx#stx-e
                                                            _hd3461635081_)))
                                                      (let ((_lp-tl3462135093_
                                                             (##cdr _e3461935088_))
                                                            (_lp-hd3462035091_
                                                             (##car _e3461935088_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3462035091_)
                                                            (let ((_e3462635096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3462035091_)))
                      (let ((_tl3462835101_ (##cdr _e3462635096_))
                            (_hd3462735099_ (##car _e3462635096_)))
                        (if (gx#stx-pair? _hd3462735099_)
                            (let ((_e3462935104_ (gx#stx-e _hd3462735099_)))
                              (let ((_tl3463135109_ (##cdr _e3462935104_))
                                    (_hd3463035107_ (##car _e3462935104_)))
                                (if (gx#stx-null? _tl3463135109_)
                                    (if (gx#stx-pair? _tl3462835101_)
                                        (let ((_e3463235112_
                                               (gx#stx-e _tl3462835101_)))
                                          (let ((_tl3463435117_
                                                 (##cdr _e3463235112_))
                                                (_hd3463335115_
                                                 (##car _e3463235112_)))
                                            (if (gx#stx-pair? _hd3463335115_)
                                                (let ((_e3463535120_
                                                       (gx#stx-e
                                                        _hd3463335115_)))
                                                  (let ((_tl3463735125_
                                                         (##cdr _e3463535120_))
                                                        (_hd3463635123_
                                                         (##car _e3463535120_)))
                                                    (if (gx#identifier?
                                                         _hd3463635123_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3463635123_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3463735125_)
                        (let ((_e3463835128_ (gx#stx-e _tl3463735125_)))
                          (let ((_tl3464035133_ (##cdr _e3463835128_))
                                (_hd3463935131_ (##car _e3463835128_)))
                            (if (gx#stx-null? _tl3464035133_)
                                (if (gx#stx-null? _tl3463435117_)
                                    (_loop3461835078_
                                     _lp-tl3462135093_
                                     (cons _hd3463935131_ _xid3462235083_)
                                     (cons _hd3463035107_ _id3462335085_))
                                    (___match4123441235_
                                     _e3460935057_
                                     _hd3461035060_
                                     _tl3461135062_
                                     _e3461235065_
                                     _hd3461335068_
                                     _tl3461435070_
                                     ___splice4110141102_
                                     _target3461535073_
                                     _tl3461735075_))
                                (___match4123441235_
                                 _e3460935057_
                                 _hd3461035060_
                                 _tl3461135062_
                                 _e3461235065_
                                 _hd3461335068_
                                 _tl3461435070_
                                 ___splice4110141102_
                                 _target3461535073_
                                 _tl3461735075_))))
                        (___match4123441235_
                         _e3460935057_
                         _hd3461035060_
                         _tl3461135062_
                         _e3461235065_
                         _hd3461335068_
                         _tl3461435070_
                         ___splice4110141102_
                         _target3461535073_
                         _tl3461735075_))
                    (___match4123441235_
                     _e3460935057_
                     _hd3461035060_
                     _tl3461135062_
                     _e3461235065_
                     _hd3461335068_
                     _tl3461435070_
                     ___splice4110141102_
                     _target3461535073_
                     _tl3461735075_))
                (___match4123441235_
                 _e3460935057_
                 _hd3461035060_
                 _tl3461135062_
                 _e3461235065_
                 _hd3461335068_
                 _tl3461435070_
                 ___splice4110141102_
                 _target3461535073_
                 _tl3461735075_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match4123441235_
                                                 _e3460935057_
                                                 _hd3461035060_
                                                 _tl3461135062_
                                                 _e3461235065_
                                                 _hd3461335068_
                                                 _tl3461435070_
                                                 ___splice4110141102_
                                                 _target3461535073_
                                                 _tl3461735075_))))
                                        (___match4123441235_
                                         _e3460935057_
                                         _hd3461035060_
                                         _tl3461135062_
                                         _e3461235065_
                                         _hd3461335068_
                                         _tl3461435070_
                                         ___splice4110141102_
                                         _target3461535073_
                                         _tl3461735075_))
                                    (___match4123441235_
                                     _e3460935057_
                                     _hd3461035060_
                                     _tl3461135062_
                                     _e3461235065_
                                     _hd3461335068_
                                     _tl3461435070_
                                     ___splice4110141102_
                                     _target3461535073_
                                     _tl3461735075_))))
                            (___match4123441235_
                             _e3460935057_
                             _hd3461035060_
                             _tl3461135062_
                             _e3461235065_
                             _hd3461335068_
                             _tl3461435070_
                             ___splice4110141102_
                             _target3461535073_
                             _tl3461735075_))))
                    (___match4123441235_
                     _e3460935057_
                     _hd3461035060_
                     _tl3461135062_
                     _e3461235065_
                     _hd3461335068_
                     _tl3461435070_
                     ___splice4110141102_
                     _target3461535073_
                     _tl3461735075_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3462535138_
                                                           (reverse _id3462335085_))
                                                          (_xid3462435136_
                                                           (reverse _xid3462235083_)))
                                                      (if (gx#stx-pair?
                                                           _tl3461435070_)
                                                          (let ((_e3464135141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3461435070_)))
                    (let ((_tl3464335146_ (##cdr _e3464135141_))
                          (_hd3464235144_ (##car _e3464135141_)))
                      (if (gx#stx-null? _tl3464335146_)
                          (___kont4109941100_
                           _hd3464235144_
                           _xid3462435136_
                           _id3462535138_)
                          (___match4123441235_
                           _e3460935057_
                           _hd3461035060_
                           _tl3461135062_
                           _e3461235065_
                           _hd3461335068_
                           _tl3461435070_
                           ___splice4110141102_
                           _target3461535073_
                           _tl3461735075_))))
                  (___match4123441235_
                   _e3460935057_
                   _hd3461035060_
                   _tl3461135062_
                   _e3461235065_
                   _hd3461335068_
                   _tl3461435070_
                   ___splice4110141102_
                   _target3461535073_
                   _tl3461735075_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3461835078_
                                       _target3461535073_
                                       '()
                                       '()))))
                                 (___match4115641157_
                                  (lambda (_e3456435249_
                                           _hd3456535252_
                                           _tl3456635254_
                                           _e3456735257_
                                           _hd3456835260_
                                           _tl3456935262_
                                           _e3457035265_
                                           _hd3457135268_
                                           _tl3457235270_
                                           _e3457335273_
                                           _hd3457435276_
                                           _tl3457535278_
                                           ___splice4109541096_
                                           _target3457635281_
                                           _tl3457835283_)
                                    (letrec ((_loop3457935286_
                                              (lambda (_hd3457735289_
                                                       _id3458335291_)
                                                (if (gx#stx-pair?
                                                     _hd3457735289_)
                                                    (let ((_e3458035294_
                                                           (gx#stx-e
                                                            _hd3457735289_)))
                                                      (let ((_lp-tl3458235299_
                                                             (##cdr _e3458035294_))
                                                            (_lp-hd3458135297_
                                                             (##car _e3458035294_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3458135297_)
                                                            (let ((_e3458535302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3458135297_)))
                      (let ((_tl3458735307_ (##cdr _e3458535302_))
                            (_hd3458635305_ (##car _e3458535302_)))
                        (if (gx#identifier? _hd3458635305_)
                            (if (gx#stx-eq? '%#ref _hd3458635305_)
                                (if (gx#stx-pair? _tl3458735307_)
                                    (let ((_e3458835310_
                                           (gx#stx-e _tl3458735307_)))
                                      (let ((_tl3459035315_
                                             (##cdr _e3458835310_))
                                            (_hd3458935313_
                                             (##car _e3458835310_)))
                                        (if (gx#stx-null? _tl3459035315_)
                                            (_loop3457935286_
                                             _lp-tl3458235299_
                                             (cons _hd3458935313_
                                                   _id3458335291_))
                                            (___kont4111341114_))))
                                    (___kont4111341114_))
                                (___kont4111341114_))
                            (___kont4111341114_))))
                    (___kont4111341114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3458435318_
                                                           (reverse _id3458335291_)))
                                                      (___kont4109341094_
                                                       _id3458435318_
                                                       _hd3457435276_))))))
                                      (_loop3457935286_
                                       _target3457635281_
                                       '())))))
                            (if (gx#stx-pair? ___stx4109141092_)
                                (let ((_e3456435249_
                                       (gx#stx-e ___stx4109141092_)))
                                  (let ((_tl3456635254_ (##cdr _e3456435249_))
                                        (_hd3456535252_ (##car _e3456435249_)))
                                    (if (gx#identifier? _hd3456535252_)
                                        (if (gx#stx-eq? '%#call _hd3456535252_)
                                            (if (gx#stx-pair? _tl3456635254_)
                                                (let ((_e3456735257_
                                                       (gx#stx-e
                                                        _tl3456635254_)))
                                                  (let ((_tl3456935262_
                                                         (##cdr _e3456735257_))
                                                        (_hd3456835260_
                                                         (##car _e3456735257_)))
                                                    (if (gx#stx-pair?
                                                         _hd3456835260_)
                                                        (let ((_e3457035265_
                                                               (gx#stx-e
                                                                _hd3456835260_)))
                                                          (let ((_tl3457235270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3457035265_))
                        (_hd3457135268_ (##car _e3457035265_)))
                    (if (gx#identifier? _hd3457135268_)
                        (if (gx#stx-eq? '%#ref _hd3457135268_)
                            (if (gx#stx-pair? _tl3457235270_)
                                (let ((_e3457335273_
                                       (gx#stx-e _tl3457235270_)))
                                  (let ((_tl3457535278_ (##cdr _e3457335273_))
                                        (_hd3457435276_ (##car _e3457335273_)))
                                    (if (gx#stx-null? _tl3457535278_)
                                        (if (gx#stx-pair/null? _tl3456935262_)
                                            (let ((___splice4109541096_
                                                   (gx#syntax-split-splice
                                                    _tl3456935262_
                                                    '0)))
                                              (let ((_tl3457835283_
                                                     (##vector-ref
                                                      ___splice4109541096_
                                                      '1))
                                                    (_target3457635281_
                                                     (##vector-ref
                                                      ___splice4109541096_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3457835283_)
                                                    (___match4115641157_
                                                     _e3456435249_
                                                     _hd3456535252_
                                                     _tl3456635254_
                                                     _e3456735257_
                                                     _hd3456835260_
                                                     _tl3456935262_
                                                     _e3457035265_
                                                     _hd3457135268_
                                                     _tl3457235270_
                                                     _e3457335273_
                                                     _hd3457435276_
                                                     _tl3457535278_
                                                     ___splice4109541096_
                                                     _target3457635281_
                                                     _tl3457835283_)
                                                    (___kont4111341114_))))
                                            (___kont4111341114_))
                                        (___kont4111341114_))))
                                (___kont4111341114_))
                            (___kont4111341114_))
                        (___kont4111341114_))))
                (___kont4111341114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4111341114_))
                                            (if (gx#stx-eq?
                                                 '%#if
                                                 _hd3456535252_)
                                                (if (gx#stx-pair?
                                                     _tl3456635254_)
                                                    (let ((_e3459735195_
                                                           (gx#stx-e
                                                            _tl3456635254_)))
                                                      (let ((_tl3459935200_
                                                             (##cdr _e3459735195_))
                                                            (_hd3459835198_
                                                             (##car _e3459735195_)))
                                                        (if (gx#stx-pair?
                                                             _tl3459935200_)
                                                            (let ((_e3460035203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3459935200_)))
                      (let ((_tl3460235208_ (##cdr _e3460035203_))
                            (_hd3460135206_ (##car _e3460035203_)))
                        (if (gx#stx-pair? _tl3460235208_)
                            (let ((_e3460335211_ (gx#stx-e _tl3460235208_)))
                              (let ((_tl3460535216_ (##cdr _e3460335211_))
                                    (_hd3460435214_ (##car _e3460335211_)))
                                (if (gx#stx-null? _tl3460535216_)
                                    (___kont4109741098_
                                     _hd3460435214_
                                     _hd3460135206_
                                     _hd3459835198_)
                                    (___kont4111341114_))))
                            (___kont4111341114_))))
                    (___kont4111341114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4111341114_))
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd3456535252_)
                                                    (if (gx#stx-pair?
                                                         _tl3456635254_)
                                                        (let ((_e3461235065_
                                                               (gx#stx-e
                                                                _tl3456635254_)))
                                                          (let ((_tl3461435070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3461235065_))
                        (_hd3461335068_ (##car _e3461235065_)))
                    (if (gx#stx-pair/null? _hd3461335068_)
                        (let ((___splice4110141102_
                               (gx#syntax-split-splice _hd3461335068_ '0)))
                          (let ((_tl3461735075_
                                 (##vector-ref ___splice4110141102_ '1))
                                (_target3461535073_
                                 (##vector-ref ___splice4110141102_ '0)))
                            (if (gx#stx-null? _tl3461735075_)
                                (___match4121041211_
                                 _e3456435249_
                                 _hd3456535252_
                                 _tl3456635254_
                                 _e3461235065_
                                 _hd3461335068_
                                 _tl3461435070_
                                 ___splice4110141102_
                                 _target3461535073_
                                 _tl3461735075_)
                                (___kont4111341114_))))
                        (___kont4111341114_))))
                (___kont4111341114_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#letrec-values
                                                         _hd3456535252_)
                                                        (if (gx#stx-pair?
                                                             _tl3456635254_)
                                                            (let ((_e3468434753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3456635254_)))
                      (let ((_tl3468634758_ (##cdr _e3468434753_))
                            (_hd3468534756_ (##car _e3468434753_)))
                        (if (gx#stx-pair? _hd3468534756_)
                            (let ((_e3468734761_ (gx#stx-e _hd3468534756_)))
                              (let ((_tl3468934766_ (##cdr _e3468734761_))
                                    (_hd3468834764_ (##car _e3468734761_)))
                                (if (gx#stx-pair? _hd3468834764_)
                                    (let ((_e3469034769_
                                           (gx#stx-e _hd3468834764_)))
                                      (let ((_tl3469234774_
                                             (##cdr _e3469034769_))
                                            (_hd3469134772_
                                             (##car _e3469034769_)))
                                        (if (gx#stx-pair? _hd3469134772_)
                                            (let ((_e3469334777_
                                                   (gx#stx-e _hd3469134772_)))
                                              (let ((_tl3469534782_
                                                     (##cdr _e3469334777_))
                                                    (_hd3469434780_
                                                     (##car _e3469334777_)))
                                                (if (gx#stx-null?
                                                     _tl3469534782_)
                                                    (if (gx#stx-pair?
                                                         _tl3469234774_)
                                                        (let ((_e3469634785_
                                                               (gx#stx-e
                                                                _tl3469234774_)))
                                                          (let ((_tl3469834790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3469634785_))
                        (_hd3469734788_ (##car _e3469634785_)))
                    (if (gx#stx-pair? _hd3469734788_)
                        (let ((_e3469934793_ (gx#stx-e _hd3469734788_)))
                          (let ((_tl3470134798_ (##cdr _e3469934793_))
                                (_hd3470034796_ (##car _e3469934793_)))
                            (if (gx#identifier? _hd3470034796_)
                                (if (gx#stx-eq? '%#lambda _hd3470034796_)
                                    (if (gx#stx-pair? _tl3470134798_)
                                        (let ((_e3470234801_
                                               (gx#stx-e _tl3470134798_)))
                                          (let ((_tl3470434806_
                                                 (##cdr _e3470234801_))
                                                (_hd3470334804_
                                                 (##car _e3470234801_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3470334804_)
                                                (let ((___splice4110941110_
                                                       (gx#syntax-split-splice
                                                        _hd3470334804_
                                                        '0)))
                                                  (let ((_tl3470734811_
                                                         (##vector-ref
                                                          ___splice4110941110_
                                                          '1))
                                                        (_target3470534809_
                                                         (##vector-ref
                                                          ___splice4110941110_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3470734811_)
                                                        (___match4130041301_
                                                         _e3456435249_
                                                         _hd3456535252_
                                                         _tl3456635254_
                                                         _e3468434753_
                                                         _hd3468534756_
                                                         _tl3468634758_
                                                         _e3468734761_
                                                         _hd3468834764_
                                                         _tl3468934766_
                                                         _e3469034769_
                                                         _hd3469134772_
                                                         _tl3469234774_
                                                         _e3469334777_
                                                         _hd3469434780_
                                                         _tl3469534782_
                                                         _e3469634785_
                                                         _hd3469734788_
                                                         _tl3469834790_
                                                         _e3469934793_
                                                         _hd3470034796_
                                                         _tl3470134798_
                                                         _e3470234801_
                                                         _hd3470334804_
                                                         _tl3470434806_
                                                         ___splice4110941110_
                                                         _target3470534809_
                                                         _tl3470734811_)
                                                        (___kont4111341114_))))
                                                (___kont4111341114_))))
                                        (___kont4111341114_))
                                    (___kont4111341114_))
                                (___kont4111341114_))))
                        (___kont4111341114_))))
                (___kont4111341114_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4111341114_))))
                                            (___kont4111341114_))))
                                    (___kont4111341114_))))
                            (___kont4111341114_))))
                    (___kont4111341114_))
                (___kont4111341114_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (___kont4111341114_))))
                                (___kont4111341114_)))))))))
                (_optimize-f__0__3980839809_
                 (lambda (_expr35458_)
                   (let ((_test35460_ '#f))
                     (_optimize-f__3980639807_ _expr35458_ _test35460_))))
                (_optimize-f32483_
                 (lambda _g42907_
                   (let ((_g42906_ (length _g42907_)))
                     (cond ((##fx= _g42906_ 1)
                            (apply _optimize-f__0__3980839809_ _g42907_))
                           ((##fx= _g42906_ 2)
                            (apply _optimize-f__3980639807_ _g42907_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42907_))))))
                (_assert-e32484_
                 (lambda (_expr33492_)
                   (let* ((_sexpr33494_
                           (gxc#apply-generate-runtime-repr _expr33492_))
                          (_$e33496_ (assoc _sexpr33494_ _env-assert32466_)))
                     (if _$e33496_
                         (cdr _$e33496_)
                         (let _assert33499_ ((_expr33501_ _expr33492_))
                           (let* ((___stx4139741398_ _expr33501_)
                                  (_g3350933688_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4139741398_))))
                             (let ((___kont4139941400_
                                    (lambda (_L34519_ _L34520_)
                                      (let ((_$e34542_
                                             (_predicate-type32471_ _L34520_)))
                                        (if _$e34542_
                                            ((lambda (_t34545_)
                                               (_assert-type32485_
                                                _L34519_
                                                _t34545_))
                                             _$e34542_)
                                            '#!void))))
                                   (___kont4140141402_
                                    (lambda (_L34212_ _L34213_ _L34214_)
                                      (let ((_$e34239_
                                             (gxc#identifier-symbol _L34214_)))
                                        (if (let ((_$e34242_
                                                   (eq? '##fx= _$e34239_)))
                                              (if _$e34242_
                                                  _$e34242_
                                                  (eq? 'fx= _$e34239_)))
                                            (let* ((___stx4130341304_ _L34213_)
                                                   (_g3424634275_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx4130341304_))))
                                              (let ((___kont4130541306_
                                                     (lambda (_L34343_
                                                              _L34344_)
                                                       (let ((_$e34369_
                                                              (_countf-symbol32473_
                                                               _L34344_)))
                                                         (if _$e34369_
                                                             ((lambda (_sym34372_)
                                                                (_assert-count32486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L34343_
                         _sym34372_
                         (gx#stx-e _L34212_)))
                      _$e34369_)
                     '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4130741308_
                                                     (lambda () '#!void)))
                                                (if (gx#stx-pair?
                                                     ___stx4130341304_)
                                                    (let ((_e3425034287_
                                                           (gx#stx-e
                                                            ___stx4130341304_)))
                                                      (let ((_tl3425234292_
                                                             (##cdr _e3425034287_))
                                                            (_hd3425134290_
                                                             (##car _e3425034287_)))
                                                        (if (gx#identifier?
                                                             _hd3425134290_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd3425134290_)
                        (if (gx#stx-pair? _tl3425234292_)
                            (let ((_e3425334295_ (gx#stx-e _tl3425234292_)))
                              (let ((_tl3425534300_ (##cdr _e3425334295_))
                                    (_hd3425434298_ (##car _e3425334295_)))
                                (if (gx#stx-pair? _hd3425434298_)
                                    (let ((_e3425634303_
                                           (gx#stx-e _hd3425434298_)))
                                      (let ((_tl3425834308_
                                             (##cdr _e3425634303_))
                                            (_hd3425734306_
                                             (##car _e3425634303_)))
                                        (if (gx#identifier? _hd3425734306_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3425734306_)
                                                (if (gx#stx-pair?
                                                     _tl3425834308_)
                                                    (let ((_e3425934311_
                                                           (gx#stx-e
                                                            _tl3425834308_)))
                                                      (let ((_tl3426134316_
                                                             (##cdr _e3425934311_))
                                                            (_hd3426034314_
                                                             (##car _e3425934311_)))
                                                        (if (gx#stx-null?
                                                             _tl3426134316_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3425534300_)
                        (let ((_e3426234319_ (gx#stx-e _tl3425534300_)))
                          (let ((_tl3426434324_ (##cdr _e3426234319_))
                                (_hd3426334322_ (##car _e3426234319_)))
                            (if (gx#stx-pair? _hd3426334322_)
                                (let ((_e3426534327_
                                       (gx#stx-e _hd3426334322_)))
                                  (let ((_tl3426734332_ (##cdr _e3426534327_))
                                        (_hd3426634330_ (##car _e3426534327_)))
                                    (if (gx#identifier? _hd3426634330_)
                                        (if (gx#stx-eq? '%#ref _hd3426634330_)
                                            (if (gx#stx-pair? _tl3426734332_)
                                                (let ((_e3426834335_
                                                       (gx#stx-e
                                                        _tl3426734332_)))
                                                  (let ((_tl3427034340_
                                                         (##cdr _e3426834335_))
                                                        (_hd3426934338_
                                                         (##car _e3426834335_)))
                                                    (if (gx#stx-null?
                                                         _tl3427034340_)
                                                        (if (gx#stx-null?
                                                             _tl3426434324_)
                                                            (___kont4130541306_
                                                             _hd3426934338_
                                                             _hd3426034314_)
                                                            (___kont4130741308_))
                                                        (___kont4130741308_))))
                                                (___kont4130741308_))
                                            (___kont4130741308_))
                                        (___kont4130741308_))))
                                (___kont4130741308_))))
                        (___kont4130741308_))
                    (___kont4130741308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4130741308_))
                                                (___kont4130741308_))
                                            (___kont4130741308_))))
                                    (___kont4130741308_))))
                            (___kont4130741308_))
                        (___kont4130741308_))
                    (___kont4130741308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4130741308_))))
                                            (if (let ((_$e34377_
                                                       (eq? '##eq? _$e34239_)))
                                                  (if _$e34377_
                                                      _$e34377_
                                                      (let ((_$e34380_
                                                             (eq? 'eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e34239_)))
                (if _$e34380_
                    _$e34380_
                    (let ((_$e34383_ (eq? '##eqv? _$e34239_)))
                      (if _$e34383_
                          _$e34383_
                          (let ((_$e34386_ (eq? 'eqv? _$e34239_)))
                            (if _$e34386_
                                _$e34386_
                                (let ((_$e34389_ (eq? '##equal? _$e34239_)))
                                  (if _$e34389_
                                      _$e34389_
                                      (let ((_$e34392_
                                             (eq? 'equal? _$e34239_)))
                                        (if _$e34392_
                                            _$e34392_
                                            (let ((_$e34395_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e34239_)))
                                              (if _$e34395_
                                                  _$e34395_
                                                  (eq? 'gx#stx-eq?
                                                       _$e34239_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                ((lambda (_sym34398_)
                                                   (let* ((___stx4137141372_
                                                           _L34213_)
                                                          (_g3440134414_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4137141372_))))
                                                     (let ((___kont4137341374_
                                                            (lambda (_L34442_)
                                                              (_assert-eqf32487_
                                                               _L34442_
                                                               (_eqf-symbol32474_
                                                                _sym34398_)
                                                               (gx#stx-e
                                                                _L34212_))))
                                                           (___kont4137541376_
                                                            (lambda ()
                                                              '#!void)))
                                                       (if (gx#stx-pair?
                                                            ___stx4137141372_)
                                                           (let ((_e3440434426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e ___stx4137141372_)))
                     (let ((_tl3440634431_ (##cdr _e3440434426_))
                           (_hd3440534429_ (##car _e3440434426_)))
                       (if (gx#identifier? _hd3440534429_)
                           (if (gx#stx-eq? '%#ref _hd3440534429_)
                               (if (gx#stx-pair? _tl3440634431_)
                                   (let ((_e3440734434_
                                          (gx#stx-e _tl3440634431_)))
                                     (let ((_tl3440934439_
                                            (##cdr _e3440734434_))
                                           (_hd3440834437_
                                            (##car _e3440734434_)))
                                       (if (gx#stx-null? _tl3440934439_)
                                           (___kont4137341374_ _hd3440834437_)
                                           (___kont4137541376_))))
                                   (___kont4137541376_))
                               (___kont4137541376_))
                           (___kont4137541376_))))
                   (___kont4137541376_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e34239_)
                                                '#!void)))))
                                   (___kont4140341404_
                                    (lambda (_L34116_ _L34117_ _L34118_)
                                      (_assert33499_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L34118_ '()))
                                                   (cons _L34116_
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#quote)
                             (cons _L34117_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4140541406_
                                    (lambda (_L34008_ _L34009_ _L34010_)
                                      (let ((_$e34039_
                                             (gxc#identifier-symbol _L34010_)))
                                        (if (let ((_$e34042_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e34039_)))
                                              (if _$e34042_
                                                  _$e34042_
                                                  (eq? 'gx#stx-eq? _$e34039_)))
                                            ((lambda (_sym34045_)
                                               (_assert-eqf32487_
                                                _L34009_
                                                (_eqf-symbol32474_ _sym34045_)
                                                _L34008_))
                                             _$e34039_)
                                            '#!void))))
                                   (___kont4140741408_
                                    (lambda (_L33892_ _L33893_ _L33894_)
                                      (_assert33499_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L33894_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L33892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                             (cons _L33893_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4140941410_
                                    (lambda (_L33772_ _L33773_ _L33774_)
                                      (_assert33499_
                                       (gxc#apply-expression-subst
                                        _L33773_
                                        _L33774_
                                        _L33772_))))
                                   (___kont4141141412_ (lambda () '#!void)))
                               (if (gx#stx-pair? ___stx4139741398_)
                                   (let ((_e3351334463_
                                          (gx#stx-e ___stx4139741398_)))
                                     (let ((_tl3351534468_
                                            (##cdr _e3351334463_))
                                           (_hd3351434466_
                                            (##car _e3351334463_)))
                                       (if (gx#identifier? _hd3351434466_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd3351434466_)
                                               (if (gx#stx-pair?
                                                    _tl3351534468_)
                                                   (let ((_e3351634471_
                                                          (gx#stx-e
                                                           _tl3351534468_)))
                                                     (let ((_tl3351834476_
                                                            (##cdr _e3351634471_))
                                                           (_hd3351734474_
                                                            (##car _e3351634471_)))
                                                       (if (gx#stx-pair?
                                                            _hd3351734474_)
                                                           (let ((_e3351934479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3351734474_)))
                     (let ((_tl3352134484_ (##cdr _e3351934479_))
                           (_hd3352034482_ (##car _e3351934479_)))
                       (if (gx#identifier? _hd3352034482_)
                           (if (gx#stx-eq? '%#ref _hd3352034482_)
                               (if (gx#stx-pair? _tl3352134484_)
                                   (let ((_e3352234487_
                                          (gx#stx-e _tl3352134484_)))
                                     (let ((_tl3352434492_
                                            (##cdr _e3352234487_))
                                           (_hd3352334490_
                                            (##car _e3352234487_)))
                                       (if (gx#stx-null? _tl3352434492_)
                                           (if (gx#stx-pair? _tl3351834476_)
                                               (let ((_e3352534495_
                                                      (gx#stx-e
                                                       _tl3351834476_)))
                                                 (let ((_tl3352734500_
                                                        (##cdr _e3352534495_))
                                                       (_hd3352634498_
                                                        (##car _e3352534495_)))
                                                   (if (gx#stx-pair?
                                                        _hd3352634498_)
                                                       (let ((_e3352834503_
                                                              (gx#stx-e
                                                               _hd3352634498_)))
                                                         (let ((_tl3353034508_
                                                                (##cdr _e3352834503_))
                                                               (_hd3352934506_
                                                                (##car _e3352834503_)))
                                                           (if (gx#identifier?
                                                                _hd3352934506_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3352934506_)
                           (if (gx#stx-pair? _tl3353034508_)
                               (let ((_e3353134511_ (gx#stx-e _tl3353034508_)))
                                 (let ((_tl3353334516_ (##cdr _e3353134511_))
                                       (_hd3353234514_ (##car _e3353134511_)))
                                   (if (gx#stx-null? _tl3353334516_)
                                       (if (gx#stx-null? _tl3352734500_)
                                           (___kont4139941400_
                                            _hd3353234514_
                                            _hd3352334490_)
                                           (if (gx#stx-pair? _tl3352734500_)
                                               (let ((_e3355234188_
                                                      (gx#stx-e
                                                       _tl3352734500_)))
                                                 (let ((_tl3355434193_
                                                        (##cdr _e3355234188_))
                                                       (_hd3355334191_
                                                        (##car _e3355234188_)))
                                                   (if (gx#stx-pair?
                                                        _hd3355334191_)
                                                       (let ((_e3355534196_
                                                              (gx#stx-e
                                                               _hd3355334191_)))
                                                         (let ((_tl3355734201_
                                                                (##cdr _e3355534196_))
                                                               (_hd3355634199_
                                                                (##car _e3355534196_)))
                                                           (if (gx#identifier?
                                                                _hd3355634199_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#quote
                            _hd3355634199_)
                           (if (gx#stx-pair? _tl3355734201_)
                               (let ((_e3355834204_ (gx#stx-e _tl3355734201_)))
                                 (let ((_tl3356034209_ (##cdr _e3355834204_))
                                       (_hd3355934207_ (##car _e3355834204_)))
                                   (if (gx#stx-null? _tl3356034209_)
                                       (if (gx#stx-null? _tl3355434193_)
                                           (___kont4140141402_
                                            _hd3355934207_
                                            _hd3352634498_
                                            _hd3352334490_)
                                           (___kont4141141412_))
                                       (___kont4141141412_))))
                               (___kont4141141412_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3355634199_)
                               (if (gx#stx-pair? _tl3355734201_)
                                   (let ((_e3361834000_
                                          (gx#stx-e _tl3355734201_)))
                                     (let ((_tl3362034005_
                                            (##cdr _e3361834000_))
                                           (_hd3361934003_
                                            (##car _e3361834000_)))
                                       (if (gx#stx-null? _tl3362034005_)
                                           (if (gx#stx-null? _tl3355434193_)
                                               (___kont4140541406_
                                                _hd3361934003_
                                                _hd3353234514_
                                                _hd3352334490_)
                                               (___kont4141141412_))
                                           (___kont4141141412_))))
                                   (___kont4141141412_))
                               (___kont4141141412_)))
                       (___kont4141141412_))))
               (___kont4141141412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4141141412_)))
                                       (if (gx#stx-pair? _tl3352734500_)
                                           (let ((_e3355234188_
                                                  (gx#stx-e _tl3352734500_)))
                                             (let ((_tl3355434193_
                                                    (##cdr _e3355234188_))
                                                   (_hd3355334191_
                                                    (##car _e3355234188_)))
                                               (if (gx#stx-pair?
                                                    _hd3355334191_)
                                                   (let ((_e3355534196_
                                                          (gx#stx-e
                                                           _hd3355334191_)))
                                                     (let ((_tl3355734201_
                                                            (##cdr _e3355534196_))
                                                           (_hd3355634199_
                                                            (##car _e3355534196_)))
                                                       (if (gx#identifier?
                                                            _hd3355634199_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3355634199_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3355734201_)
                           (let ((_e3355834204_ (gx#stx-e _tl3355734201_)))
                             (let ((_tl3356034209_ (##cdr _e3355834204_))
                                   (_hd3355934207_ (##car _e3355834204_)))
                               (if (gx#stx-null? _tl3356034209_)
                                   (if (gx#stx-null? _tl3355434193_)
                                       (___kont4140141402_
                                        _hd3355934207_
                                        _hd3352634498_
                                        _hd3352334490_)
                                       (___kont4141141412_))
                                   (___kont4141141412_))))
                           (___kont4141141412_))
                       (___kont4141141412_))
                   (___kont4141141412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4141141412_))))
                                           (___kont4141141412_)))))
                               (if (gx#stx-pair? _tl3352734500_)
                                   (let ((_e3355234188_
                                          (gx#stx-e _tl3352734500_)))
                                     (let ((_tl3355434193_
                                            (##cdr _e3355234188_))
                                           (_hd3355334191_
                                            (##car _e3355234188_)))
                                       (if (gx#stx-pair? _hd3355334191_)
                                           (let ((_e3355534196_
                                                  (gx#stx-e _hd3355334191_)))
                                             (let ((_tl3355734201_
                                                    (##cdr _e3355534196_))
                                                   (_hd3355634199_
                                                    (##car _e3355534196_)))
                                               (if (gx#identifier?
                                                    _hd3355634199_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3355634199_)
                                                       (if (gx#stx-pair?
                                                            _tl3355734201_)
                                                           (let ((_e3355834204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3355734201_)))
                     (let ((_tl3356034209_ (##cdr _e3355834204_))
                           (_hd3355934207_ (##car _e3355834204_)))
                       (if (gx#stx-null? _tl3356034209_)
                           (if (gx#stx-null? _tl3355434193_)
                               (___kont4140141402_
                                _hd3355934207_
                                _hd3352634498_
                                _hd3352334490_)
                               (___kont4141141412_))
                           (___kont4141141412_))))
                   (___kont4141141412_))
               (___kont4141141412_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4141141412_))))
                                           (___kont4141141412_))))
                                   (___kont4141141412_)))
                           (if (gx#stx-pair? _tl3352734500_)
                               (let ((_e3355234188_ (gx#stx-e _tl3352734500_)))
                                 (let ((_tl3355434193_ (##cdr _e3355234188_))
                                       (_hd3355334191_ (##car _e3355234188_)))
                                   (if (gx#stx-pair? _hd3355334191_)
                                       (let ((_e3355534196_
                                              (gx#stx-e _hd3355334191_)))
                                         (let ((_tl3355734201_
                                                (##cdr _e3355534196_))
                                               (_hd3355634199_
                                                (##car _e3355534196_)))
                                           (if (gx#identifier? _hd3355634199_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3355634199_)
                                                   (if (gx#stx-pair?
                                                        _tl3355734201_)
                                                       (let ((_e3355834204_
                                                              (gx#stx-e
                                                               _tl3355734201_)))
                                                         (let ((_tl3356034209_
                                                                (##cdr _e3355834204_))
                                                               (_hd3355934207_
                                                                (##car _e3355834204_)))
                                                           (if (gx#stx-null?
                                                                _tl3356034209_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3355434193_)
                           (___kont4140141402_
                            _hd3355934207_
                            _hd3352634498_
                            _hd3352334490_)
                           (if (gx#stx-eq? '%#quote _hd3352934506_)
                               (if (gx#stx-pair? _tl3353034508_)
                                   (let ((_e3358234100_
                                          (gx#stx-e _tl3353034508_)))
                                     (let ((_tl3358434105_
                                            (##cdr _e3358234100_))
                                           (_hd3358334103_
                                            (##car _e3358234100_)))
                                       (___kont4141141412_)))
                                   (___kont4141141412_))
                               (if (gx#stx-eq? '%#quote-syntax _hd3352934506_)
                                   (if (gx#stx-pair? _tl3353034508_)
                                       (let ((_e3364233860_
                                              (gx#stx-e _tl3353034508_)))
                                         (let ((_tl3364433865_
                                                (##cdr _e3364233860_))
                                               (_hd3364333863_
                                                (##car _e3364233860_)))
                                           (___kont4141141412_)))
                                       (___kont4141141412_))
                                   (___kont4141141412_))))
                       (if (gx#stx-eq? '%#quote _hd3352934506_)
                           (if (gx#stx-pair? _tl3353034508_)
                               (let ((_e3358234100_ (gx#stx-e _tl3353034508_)))
                                 (let ((_tl3358434105_ (##cdr _e3358234100_))
                                       (_hd3358334103_ (##car _e3358234100_)))
                                   (if (gx#stx-null? _tl3358434105_)
                                       (if (gx#stx-null? _tl3355434193_)
                                           (___kont4140341404_
                                            _hd3355334191_
                                            _hd3358334103_
                                            _hd3352334490_)
                                           (___kont4141141412_))
                                       (___kont4141141412_))))
                               (___kont4141141412_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3352934506_)
                               (if (gx#stx-pair? _tl3353034508_)
                                   (let ((_e3364233860_
                                          (gx#stx-e _tl3353034508_)))
                                     (let ((_tl3364433865_
                                            (##cdr _e3364233860_))
                                           (_hd3364333863_
                                            (##car _e3364233860_)))
                                       (___kont4141141412_)))
                                   (___kont4141141412_))
                               (___kont4141141412_))))))
               (if (gx#stx-eq? '%#quote _hd3352934506_)
                   (if (gx#stx-pair? _tl3353034508_)
                       (let ((_e3358234100_ (gx#stx-e _tl3353034508_)))
                         (let ((_tl3358434105_ (##cdr _e3358234100_))
                               (_hd3358334103_ (##car _e3358234100_)))
                           (if (gx#stx-null? _tl3358434105_)
                               (if (gx#stx-null? _tl3355434193_)
                                   (___kont4140341404_
                                    _hd3355334191_
                                    _hd3358334103_
                                    _hd3352334490_)
                                   (___kont4141141412_))
                               (___kont4141141412_))))
                       (___kont4141141412_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3352934506_)
                       (if (gx#stx-pair? _tl3353034508_)
                           (let ((_e3364233860_ (gx#stx-e _tl3353034508_)))
                             (let ((_tl3364433865_ (##cdr _e3364233860_))
                                   (_hd3364333863_ (##car _e3364233860_)))
                               (___kont4141141412_)))
                           (___kont4141141412_))
                       (___kont4141141412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3352934506_)
                                                       (if (gx#stx-pair?
                                                            _tl3353034508_)
                                                           (let ((_e3358234100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3353034508_)))
                     (let ((_tl3358434105_ (##cdr _e3358234100_))
                           (_hd3358334103_ (##car _e3358234100_)))
                       (if (gx#stx-null? _tl3358434105_)
                           (if (gx#stx-null? _tl3355434193_)
                               (___kont4140341404_
                                _hd3355334191_
                                _hd3358334103_
                                _hd3352334490_)
                               (___kont4141141412_))
                           (___kont4141141412_))))
                   (___kont4141141412_))
               (if (gx#stx-eq? '%#quote-syntax _hd3352934506_)
                   (if (gx#stx-pair? _tl3353034508_)
                       (let ((_e3364233860_ (gx#stx-e _tl3353034508_)))
                         (let ((_tl3364433865_ (##cdr _e3364233860_))
                               (_hd3364333863_ (##car _e3364233860_)))
                           (if (gx#stx-null? _tl3364433865_)
                               (if (gx#stx-eq? '%#ref _hd3355634199_)
                                   (if (gx#stx-pair? _tl3355734201_)
                                       (let ((_e3365133884_
                                              (gx#stx-e _tl3355734201_)))
                                         (let ((_tl3365333889_
                                                (##cdr _e3365133884_))
                                               (_hd3365233887_
                                                (##car _e3365133884_)))
                                           (if (gx#stx-null? _tl3365333889_)
                                               (if (gx#stx-null?
                                                    _tl3355434193_)
                                                   (___kont4140741408_
                                                    _hd3365233887_
                                                    _hd3364333863_
                                                    _hd3352334490_)
                                                   (___kont4141141412_))
                                               (___kont4141141412_))))
                                       (___kont4141141412_))
                                   (___kont4141141412_))
                               (___kont4141141412_))))
                       (___kont4141141412_))
                   (___kont4141141412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3352934506_)
                                                   (if (gx#stx-pair?
                                                        _tl3353034508_)
                                                       (let ((_e3358234100_
                                                              (gx#stx-e
                                                               _tl3353034508_)))
                                                         (let ((_tl3358434105_
                                                                (##cdr _e3358234100_))
                                                               (_hd3358334103_
                                                                (##car _e3358234100_)))
                                                           (if (gx#stx-null?
                                                                _tl3358434105_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3355434193_)
                           (___kont4140341404_
                            _hd3355334191_
                            _hd3358334103_
                            _hd3352334490_)
                           (___kont4141141412_))
                       (___kont4141141412_))))
               (___kont4141141412_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3352934506_)
                                                       (if (gx#stx-pair?
                                                            _tl3353034508_)
                                                           (let ((_e3364233860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3353034508_)))
                     (let ((_tl3364433865_ (##cdr _e3364233860_))
                           (_hd3364333863_ (##car _e3364233860_)))
                       (___kont4141141412_)))
                   (___kont4141141412_))
               (___kont4141141412_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-eq? '%#quote _hd3352934506_)
                                           (if (gx#stx-pair? _tl3353034508_)
                                               (let ((_e3358234100_
                                                      (gx#stx-e
                                                       _tl3353034508_)))
                                                 (let ((_tl3358434105_
                                                        (##cdr _e3358234100_))
                                                       (_hd3358334103_
                                                        (##car _e3358234100_)))
                                                   (if (gx#stx-null?
                                                        _tl3358434105_)
                                                       (if (gx#stx-null?
                                                            _tl3355434193_)
                                                           (___kont4140341404_
                                                            _hd3355334191_
                                                            _hd3358334103_
                                                            _hd3352334490_)
                                                           (___kont4141141412_))
                                                       (___kont4141141412_))))
                                               (___kont4141141412_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3352934506_)
                                               (if (gx#stx-pair?
                                                    _tl3353034508_)
                                                   (let ((_e3364233860_
                                                          (gx#stx-e
                                                           _tl3353034508_)))
                                                     (let ((_tl3364433865_
                                                            (##cdr _e3364233860_))
                                                           (_hd3364333863_
                                                            (##car _e3364233860_)))
                                                       (___kont4141141412_)))
                                                   (___kont4141141412_))
                                               (___kont4141141412_))))))
                               (if (gx#stx-eq? '%#quote _hd3352934506_)
                                   (if (gx#stx-pair? _tl3353034508_)
                                       (let ((_e3358234100_
                                              (gx#stx-e _tl3353034508_)))
                                         (let ((_tl3358434105_
                                                (##cdr _e3358234100_))
                                               (_hd3358334103_
                                                (##car _e3358234100_)))
                                           (___kont4141141412_)))
                                       (___kont4141141412_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3352934506_)
                                       (if (gx#stx-pair? _tl3353034508_)
                                           (let ((_e3364233860_
                                                  (gx#stx-e _tl3353034508_)))
                                             (let ((_tl3364433865_
                                                    (##cdr _e3364233860_))
                                                   (_hd3364333863_
                                                    (##car _e3364233860_)))
                                               (___kont4141141412_)))
                                           (___kont4141141412_))
                                       (___kont4141141412_)))))
                       (if (gx#stx-pair? _tl3352734500_)
                           (let ((_e3355234188_ (gx#stx-e _tl3352734500_)))
                             (let ((_tl3355434193_ (##cdr _e3355234188_))
                                   (_hd3355334191_ (##car _e3355234188_)))
                               (if (gx#stx-pair? _hd3355334191_)
                                   (let ((_e3355534196_
                                          (gx#stx-e _hd3355334191_)))
                                     (let ((_tl3355734201_
                                            (##cdr _e3355534196_))
                                           (_hd3355634199_
                                            (##car _e3355534196_)))
                                       (if (gx#identifier? _hd3355634199_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3355634199_)
                                               (if (gx#stx-pair?
                                                    _tl3355734201_)
                                                   (let ((_e3355834204_
                                                          (gx#stx-e
                                                           _tl3355734201_)))
                                                     (let ((_tl3356034209_
                                                            (##cdr _e3355834204_))
                                                           (_hd3355934207_
                                                            (##car _e3355834204_)))
                                                       (if (gx#stx-null?
                                                            _tl3356034209_)
                                                           (if (gx#stx-null?
                                                                _tl3355434193_)
                                                               (___kont4140141402_
                                                                _hd3355934207_
                                                                _hd3352634498_
                                                                _hd3352334490_)
                                                               (___kont4141141412_))
                                                           (___kont4141141412_))))
                                                   (___kont4141141412_))
                                               (___kont4141141412_))
                                           (___kont4141141412_))))
                                   (___kont4141141412_))))
                           (___kont4141141412_)))))
               (if (gx#stx-pair? _tl3352734500_)
                   (let ((_e3355234188_ (gx#stx-e _tl3352734500_)))
                     (let ((_tl3355434193_ (##cdr _e3355234188_))
                           (_hd3355334191_ (##car _e3355234188_)))
                       (if (gx#stx-pair? _hd3355334191_)
                           (let ((_e3355534196_ (gx#stx-e _hd3355334191_)))
                             (let ((_tl3355734201_ (##cdr _e3355534196_))
                                   (_hd3355634199_ (##car _e3355534196_)))
                               (if (gx#identifier? _hd3355634199_)
                                   (if (gx#stx-eq? '%#quote _hd3355634199_)
                                       (if (gx#stx-pair? _tl3355734201_)
                                           (let ((_e3355834204_
                                                  (gx#stx-e _tl3355734201_)))
                                             (let ((_tl3356034209_
                                                    (##cdr _e3355834204_))
                                                   (_hd3355934207_
                                                    (##car _e3355834204_)))
                                               (if (gx#stx-null?
                                                    _tl3356034209_)
                                                   (if (gx#stx-null?
                                                        _tl3355434193_)
                                                       (___kont4140141402_
                                                        _hd3355934207_
                                                        _hd3352634498_
                                                        _hd3352334490_)
                                                       (___kont4141141412_))
                                                   (___kont4141141412_))))
                                           (___kont4141141412_))
                                       (___kont4141141412_))
                                   (___kont4141141412_))))
                           (___kont4141141412_))))
                   (___kont4141141412_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4141141412_))
                                           (___kont4141141412_))))
                                   (___kont4141141412_))
                               (if (gx#stx-eq? '%#lambda _hd3352034482_)
                                   (if (gx#stx-pair? _tl3352134484_)
                                       (let ((_e3366633724_
                                              (gx#stx-e _tl3352134484_)))
                                         (let ((_tl3366833729_
                                                (##cdr _e3366633724_))
                                               (_hd3366733727_
                                                (##car _e3366633724_)))
                                           (if (gx#stx-pair? _hd3366733727_)
                                               (let ((_e3366933732_
                                                      (gx#stx-e
                                                       _hd3366733727_)))
                                                 (let ((_tl3367133737_
                                                        (##cdr _e3366933732_))
                                                       (_hd3367033735_
                                                        (##car _e3366933732_)))
                                                   (if (gx#stx-null?
                                                        _tl3367133737_)
                                                       (if (gx#stx-pair?
                                                            _tl3366833729_)
                                                           (let ((_e3367233740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3366833729_)))
                     (let ((_tl3367433745_ (##cdr _e3367233740_))
                           (_hd3367333743_ (##car _e3367233740_)))
                       (if (gx#stx-null? _tl3367433745_)
                           (if (gx#stx-pair? _tl3351834476_)
                               (let ((_e3367533748_ (gx#stx-e _tl3351834476_)))
                                 (let ((_tl3367733753_ (##cdr _e3367533748_))
                                       (_hd3367633751_ (##car _e3367533748_)))
                                   (if (gx#stx-pair? _hd3367633751_)
                                       (let ((_e3367833756_
                                              (gx#stx-e _hd3367633751_)))
                                         (let ((_tl3368033761_
                                                (##cdr _e3367833756_))
                                               (_hd3367933759_
                                                (##car _e3367833756_)))
                                           (if (gx#identifier? _hd3367933759_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd3367933759_)
                                                   (if (gx#stx-pair?
                                                        _tl3368033761_)
                                                       (let ((_e3368133764_
                                                              (gx#stx-e
                                                               _tl3368033761_)))
                                                         (let ((_tl3368333769_
                                                                (##cdr _e3368133764_))
                                                               (_hd3368233767_
                                                                (##car _e3368133764_)))
                                                           (if (gx#stx-null?
                                                                _tl3368333769_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3367733753_)
                           (___kont4140941410_
                            _hd3368233767_
                            _hd3367333743_
                            _hd3367033735_)
                           (___kont4141141412_))
                       (___kont4141141412_))))
               (___kont4141141412_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4141141412_))
                                               (___kont4141141412_))))
                                       (___kont4141141412_))))
                               (___kont4141141412_))
                           (___kont4141141412_))))
                   (___kont4141141412_))
               (___kont4141141412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4141141412_))))
                                       (___kont4141141412_))
                                   (___kont4141141412_)))
                           (___kont4141141412_))))
                   (___kont4141141412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4141141412_))
                                               (___kont4141141412_))
                                           (___kont4141141412_))))
                                   (___kont4141141412_)))))))))
                (_assert-type32485_
                 (lambda (_id33384_ _t33385_)
                   (letrec ((_super-e33387_
                             (lambda (_t33484_)
                               (let ((_tid3348533487_
                                      (##structure-ref
                                       _t33484_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                 (if _tid3348533487_
                                     (let ((_tid33490_ _tid3348533487_))
                                       (gxc#optimizer-resolve-type _tid33490_))
                                     '#f)))))
                     (let _lp33389_ ((_rest33391_ _env-type32467_))
                       (let* ((_rest3339233400_ _rest33391_)
                              (_else3339433408_ (lambda () '#!void))
                              (_K3339633472_
                               (lambda (_rest33411_ _type-info33412_)
                                 (let* ((_type-info3341333425_
                                         _type-info33412_)
                                        (_else3341533433_
                                         (lambda () (_lp33389_ _rest33411_)))
                                        (_K3341733448_
                                         (lambda (_val33436_
                                                  _xt33437_
                                                  _xid33438_)
                                           (if (gx#free-identifier=?
                                                _id33384_
                                                _xid33438_)
                                               (if (eq? _t33385_ _xt33437_)
                                                   _val33436_
                                                   (if _val33436_
                                                       (if (if (##structure-instance-of?
                                                                _t33385_
                                                                'gxc#!struct-type::t)
                                                               (##structure-instance-of?
                                                                _xt33437_
                                                                'gxc#!struct-type::t)
                                                               '#f)
                                                           (let _subtype?33440_ ((_xt33442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          (_super-e33387_ _xt33437_)))
                     (if (not _xt33442_)
                         '#f
                         (if (eq? _xt33442_ _t33385_)
                             '#t
                             (_subtype?33440_ (_super-e33387_ _xt33442_)))))
                   '#f)
               (if (if (##structure-instance-of? _t33385_ 'gxc#!struct-type::t)
                       (##structure-instance-of?
                        _xt33437_
                        'gxc#!struct-type::t)
                       '#f)
                   (let _supertype?33444_ ((_t33446_
                                            (_super-e33387_ _t33385_)))
                     (if (not _t33446_)
                         (_lp33389_ _rest33411_)
                         (if (eq? _t33446_ _xt33437_)
                             '#f
                             (_supertype?33444_ (_super-e33387_ _t33446_)))))
                   (_lp33389_ _rest33411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp33389_ _rest33411_)))))
                                   (if (##pair? _type-info3341333425_)
                                       (let ((_hd3341833451_
                                              (##car _type-info3341333425_))
                                             (_tl3341933453_
                                              (##cdr _type-info3341333425_)))
                                         (let ((_xid33456_ _hd3341833451_))
                                           (if (##pair? _tl3341933453_)
                                               (let ((_hd3342033458_
                                                      (##car _tl3341933453_))
                                                     (_tl3342133460_
                                                      (##cdr _tl3341933453_)))
                                                 (let ((_xt33463_
                                                        _hd3342033458_))
                                                   (if (##pair? _tl3342133460_)
                                                       (let ((_hd3342233465_
                                                              (##car _tl3342133460_))
                                                             (_tl3342333467_
                                                              (##cdr _tl3342133460_)))
                                                         (let ((_val33470_
                                                                _hd3342233465_))
                                                           (if (##null? _tl3342333467_)
                                                               (_K3341733448_
                                                                _val33470_
                                                                _xt33463_
                                                                _xid33456_)
                                                               (_else3341533433_))))
                                                       (_else3341533433_))))
                                               (_else3341533433_))))
                                       (_else3341533433_))))))
                         (if (##pair? _rest3339233400_)
                             (let ((_hd3339733475_ (##car _rest3339233400_))
                                   (_tl3339833477_ (##cdr _rest3339233400_)))
                               (let* ((_type-info33480_ _hd3339733475_)
                                      (_rest33482_ _tl3339833477_))
                                 (_K3339633472_ _rest33482_ _type-info33480_)))
                             (_else3339433408_)))))))
                (_assert-count32486_
                 (lambda (_id33283_ _sym33284_ _count33285_)
                   (let _lp33287_ ((_rest33289_ _env-type32467_))
                     (let* ((_rest3329033298_ _rest33289_)
                            (_else3329233306_ (lambda () '#!void))
                            (_K3329433372_
                             (lambda (_rest33309_ _type-info33310_)
                               (let* ((_type-info3331133325_ _type-info33310_)
                                      (_else3331333333_
                                       (lambda () (_lp33287_ _rest33309_)))
                                      (_K3331533341_
                                       (lambda (_val33336_
                                                _xcount33337_
                                                _xsym33338_
                                                _xid33339_)
                                         (if (if (eq? _sym33284_ _xsym33338_)
                                                 (gx#free-identifier=?
                                                  _id33283_
                                                  _xid33339_)
                                                 '#f)
                                             (if _val33336_
                                                 (fx= _count33285_
                                                      _xcount33337_)
                                                 (if (fx= _count33285_
                                                          _xcount33337_)
                                                     '#f
                                                     (_lp33287_ _rest33309_)))
                                             (_lp33287_ _rest33309_)))))
                                 (if (##pair? _type-info3331133325_)
                                     (let ((_hd3331633344_
                                            (##car _type-info3331133325_))
                                           (_tl3331733346_
                                            (##cdr _type-info3331133325_)))
                                       (let ((_xid33349_ _hd3331633344_))
                                         (if (##pair? _tl3331733346_)
                                             (let ((_hd3331833351_
                                                    (##car _tl3331733346_))
                                                   (_tl3331933353_
                                                    (##cdr _tl3331733346_)))
                                               (let ((_xsym33356_
                                                      _hd3331833351_))
                                                 (if (##pair? _tl3331933353_)
                                                     (let ((_hd3332033358_
                                                            (##car _tl3331933353_))
                                                           (_tl3332133360_
                                                            (##cdr _tl3331933353_)))
                                                       (let ((_xcount33363_
                                                              _hd3332033358_))
                                                         (if (##pair? _tl3332133360_)
                                                             (let ((_hd3332233365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl3332133360_))
                           (_tl3332333367_ (##cdr _tl3332133360_)))
                       (let ((_val33370_ _hd3332233365_))
                         (if (##null? _tl3332333367_)
                             (_K3331533341_
                              _val33370_
                              _xcount33363_
                              _xsym33356_
                              _xid33349_)
                             (_else3331333333_))))
                     (_else3331333333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else3331333333_))))
                                             (_else3331333333_))))
                                     (_else3331333333_))))))
                       (if (##pair? _rest3329033298_)
                           (let ((_hd3329533375_ (##car _rest3329033298_))
                                 (_tl3329633377_ (##cdr _rest3329033298_)))
                             (let* ((_type-info33380_ _hd3329533375_)
                                    (_rest33382_ _tl3329633377_))
                               (_K3329433372_ _rest33382_ _type-info33380_)))
                           (_else3329233306_))))))
                (_assert-eqf32487_
                 (lambda (_id33173_ _sym33174_ _datum33175_)
                   (letrec ((_eqf33177_
                             (lambda (_sym33278_)
                               (let ((_$e33280_ _sym33278_))
                                 (if (eq? 'eq? _$e33280_)
                                     eq?
                                     (if (eq? 'eqv? _$e33280_)
                                         eqv?
                                         (if (eq? 'equal? _$e33280_)
                                             equal?
                                             (if (eq? 'free-identifier=?
                                                      _$e33280_)
                                                 gx#free-identifier=?
                                                 (if (eq? 'stx-eq? _$e33280_)
                                                     gx#stx-eq?
                                                     (gxc#raise-compile-error
                                                      '"Unexpected eqf symbol"
                                                      _body32228_
                                                      _sym33278_))))))))))
                     (let _lp33179_ ((_rest33181_ _env-type32467_))
                       (let* ((_rest3318233190_ _rest33181_)
                              (_else3318433198_ (lambda () '#!void))
                              (_K3318633266_
                               (lambda (_rest33201_ _type-info33202_)
                                 (let* ((_type-info3320333217_
                                         _type-info33202_)
                                        (_else3320533225_
                                         (lambda () (_lp33179_ _rest33201_)))
                                        (_K3320733235_
                                         (lambda (_val33228_
                                                  _xdatum33229_
                                                  _xsym33230_
                                                  _xid33231_)
                                           (if (if (eq? _sym33174_ _xsym33230_)
                                                   (gx#free-identifier=?
                                                    _id33173_
                                                    _xid33231_)
                                                   '#f)
                                               (let ((_=?33233_
                                                      (_eqf33177_ _sym33174_)))
                                                 (if _val33228_
                                                     (_=?33233_
                                                      _datum33175_
                                                      _xdatum33229_)
                                                     (if (_=?33233_
                                                          _datum33175_
                                                          _xdatum33229_)
                                                         '#f
                                                         (_lp33179_
                                                          _rest33201_))))
                                               (_lp33179_ _rest33201_)))))
                                   (if (##pair? _type-info3320333217_)
                                       (let ((_hd3320833238_
                                              (##car _type-info3320333217_))
                                             (_tl3320933240_
                                              (##cdr _type-info3320333217_)))
                                         (let ((_xid33243_ _hd3320833238_))
                                           (if (##pair? _tl3320933240_)
                                               (let ((_hd3321033245_
                                                      (##car _tl3320933240_))
                                                     (_tl3321133247_
                                                      (##cdr _tl3320933240_)))
                                                 (let ((_xsym33250_
                                                        _hd3321033245_))
                                                   (if (##pair? _tl3321133247_)
                                                       (let ((_hd3321233252_
                                                              (##car _tl3321133247_))
                                                             (_tl3321333254_
                                                              (##cdr _tl3321133247_)))
                                                         (let ((_xdatum33257_
                                                                _hd3321233252_))
                                                           (if (##pair? _tl3321333254_)
                                                               (let ((_hd3321433259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _tl3321333254_))
                             (_tl3321533261_ (##cdr _tl3321333254_)))
                         (let ((_val33264_ _hd3321433259_))
                           (if (##null? _tl3321533261_)
                               (_K3320733235_
                                _val33264_
                                _xdatum33257_
                                _xsym33250_
                                _xid33243_)
                               (_else3320533225_))))
                       (_else3320533225_))))
               (_else3320533225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else3320533225_))))
                                       (_else3320533225_))))))
                         (if (##pair? _rest3318233190_)
                             (let ((_hd3318733269_ (##car _rest3318233190_))
                                   (_tl3318833271_ (##cdr _rest3318233190_)))
                               (let* ((_type-info33274_ _hd3318733269_)
                                      (_rest33276_ _tl3318833271_))
                                 (_K3318633266_ _rest33276_ _type-info33274_)))
                             (_else3318433198_)))))))
                (_bind-e__3981039811_
                 (lambda (_bind33076_ _body33077_ _continue33078_)
                   (let _lp33080_ ((_rest33082_ _bind33076_)
                                   (_subst33083_ '())
                                   (_locals33084_ '())
                                   (_env33085_ _env-bind32468_))
                     (let* ((_rest3308633094_ _rest33082_)
                            (_else3308833108_
                             (lambda ()
                               (let* ((_body33102_
                                       (if (null? _subst33083_)
                                           _body33077_
                                           (gxc#apply-expression-subst*
                                            _body33077_
                                            _subst33083_)))
                                      (_body33105_
                                       (_do-bind!32479_
                                        _env33085_
                                        (lambda ()
                                          (_continue33078_ _body33102_)))))
                                 (if (null? _locals33084_)
                                     _body33105_
                                     (cons '%#let-values
                                           (cons _locals33084_
                                                 (cons _body33105_ '())))))))
                            (_K3309033149_
                             (lambda (_rest33111_ _bind33112_)
                               (let* ((_bind3311333120_ _bind33112_)
                                      (_E3311533124_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3311333120_)))
                                      (_K3311633137_
                                       (lambda (_expr33127_ _id33128_)
                                         (let* ((_sexpr33130_
                                                 (gxc#apply-generate-runtime-repr
                                                  _expr33127_))
                                                (_$e33132_
                                                 (assget _sexpr33130_
                                                         _env-bind32468_)))
                                           (if _$e33132_
                                               ((lambda (_xid33135_)
                                                  (_lp33080_
                                                   _rest33111_
                                                   (cons (cons _id33128_
                                                               _xid33135_)
                                                         _subst33083_)
                                                   _locals33084_
                                                   _env33085_))
                                                _$e33132_)
                                               (_lp33080_
                                                _rest33111_
                                                _subst33083_
                                                (cons (cons (cons _id33128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr33127_ '()))
              _locals33084_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _sexpr33130_
                                                            _id33128_)
                                                      _env33085_)))))))
                                 (if (##pair? _bind3311333120_)
                                     (let ((_hd3311733140_
                                            (##car _bind3311333120_))
                                           (_tl3311833142_
                                            (##cdr _bind3311333120_)))
                                       (let* ((_id33145_ _hd3311733140_)
                                              (_expr33147_ _tl3311833142_))
                                         (_K3311633137_
                                          _expr33147_
                                          _id33145_)))
                                     (_E3311533124_))))))
                       (if (##pair? _rest3308633094_)
                           (let ((_hd3309133152_ (##car _rest3308633094_))
                                 (_tl3309233154_ (##cdr _rest3308633094_)))
                             (let* ((_bind33157_ _hd3309133152_)
                                    (_rest33159_ _tl3309233154_))
                               (_K3309033149_ _rest33159_ _bind33157_)))
                           (_else3308833108_))))))
                (_bind-e__0__3981239813_
                 (lambda (_bind33164_ _body33165_)
                   (let ((_continue33167_ _optimize-e32481_))
                     (_bind-e__3981039811_
                      _bind33164_
                      _body33165_
                      _continue33167_))))
                (_bind-e32488_
                 (lambda _g42909_
                   (let ((_g42908_ (length _g42909_)))
                     (cond ((##fx= _g42908_ 2)
                            (apply _bind-e__0__3981239813_ _g42909_))
                           ((##fx= _g42908_ 3)
                            (apply _bind-e__3981039811_ _g42909_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g42909_))))))
                (_lookup-block32489_
                 (lambda (_id33071_)
                   (find (lambda (_block33073_)
                           (gx#free-identifier=? (car _block33073_) _id33071_))
                         _blocks32231_)))
                (_inline-block32490_
                 (lambda (_block32947_ _args32948_)
                   (let* ((_kont32950_ (caddr _block32947_))
                          (_g3295232978_
                           (lambda (_g3295332975_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3295332975_)))
                          (_g3295133068_
                           (lambda (_g3295332981_)
                             (if (gx#stx-pair? _g3295332981_)
                                 (let ((_e3295632983_
                                        (gx#stx-e _g3295332981_)))
                                   (let ((_hd3295732986_ (##car _e3295632983_))
                                         (_tl3295832988_
                                          (##cdr _e3295632983_)))
                                     (if (gx#identifier? _hd3295732986_)
                                         (if (gx#stx-eq?
                                              '%#lambda
                                              _hd3295732986_)
                                             (if (gx#stx-pair? _tl3295832988_)
                                                 (let ((_e3295932991_
                                                        (gx#stx-e
                                                         _tl3295832988_)))
                                                   (let ((_hd3296032994_
                                                          (##car _e3295932991_))
                                                         (_tl3296132996_
                                                          (##cdr _e3295932991_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd3296032994_)
                                                         (let ((_g42910_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3296032994_
                         '0)))
                   (begin
                     (let ((_g42911_
                            (if (##values? _g42910_)
                                (##vector-length _g42910_)
                                1)))
                       (if (not (##fx= _g42911_ 2))
                           (error "Context expects 2 values" _g42911_)))
                     (let ((_target3296232999_ (##vector-ref _g42910_ 0))
                           (_tl3296433001_ (##vector-ref _g42910_ 1)))
                       (if (gx#stx-null? _tl3296433001_)
                           (letrec ((_loop3296533004_
                                     (lambda (_hd3296333007_ _id3296933009_)
                                       (if (gx#stx-pair? _hd3296333007_)
                                           (let ((_e3296633012_
                                                  (gx#stx-e _hd3296333007_)))
                                             (let ((_lp-hd3296733015_
                                                    (##car _e3296633012_))
                                                   (_lp-tl3296833017_
                                                    (##cdr _e3296633012_)))
                                               (_loop3296533004_
                                                _lp-tl3296833017_
                                                (cons _lp-hd3296733015_
                                                      _id3296933009_))))
                                           (let ((_id3297033020_
                                                  (reverse _id3296933009_)))
                                             (if (gx#stx-pair? _tl3296132996_)
                                                 (let ((_e3297133023_
                                                        (gx#stx-e
                                                         _tl3296132996_)))
                                                   (let ((_hd3297233026_
                                                          (##car _e3297133023_))
                                                         (_tl3297333028_
                                                          (##cdr _e3297133023_)))
                                                     (if (gx#stx-null?
                                                          _tl3297333028_)
                                                         ((lambda (_L33031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L33032_)
                    (if (null? (begin
                                 '#!void
                                 (foldr1 (lambda (_g3305133054_ _g3305233056_)
                                           (cons _g3305133054_ _g3305233056_))
                                         '()
                                         _L33032_)))
                        _L33031_
                        (let ((_subst33066_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3305833061_
                                                       _g3305933063_)
                                                (cons _g3305833061_
                                                      _g3305933063_))
                                              '()
                                              _L33032_))
                                    _args32948_)))
                          (gxc#apply-expression-subst*
                           _L33031_
                           _subst33066_))))
                  _hd3297233026_
                  _id3297033020_)
                 (_g3295232978_ _g3295332981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3295232978_
                                                  _g3295332981_)))))))
                             (_loop3296533004_ _target3296232999_ '()))
                           (_g3295232978_ _g3295332981_)))))
                 (_g3295232978_ _g3295332981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3295232978_ _g3295332981_))
                                             (_g3295232978_ _g3295332981_))
                                         (_g3295232978_ _g3295332981_))))
                                 (_g3295232978_ _g3295332981_)))))
                     (_g3295133068_ _kont32950_))))
                (_nonlinear-block?32491_
                 (lambda (_block32496_)
                   (letrec ((_nonlinear-expr?32498_
                             (lambda (_expr32606_)
                               (let* ((___stx4186741868_ _expr32606_)
                                      (_g3261232678_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4186741868_))))
                                 (let ((___kont4186941870_ (lambda () '#t))
                                       (___kont4187141872_
                                        (lambda (_L32877_)
                                          (let* ((___stx4184941850_ _L32877_)
                                                 (_g3289532904_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx4184941850_))))
                                            (let ((___kont4185141852_
                                                   (lambda () '#f))
                                                  (___kont4185341854_
                                                   (lambda () '#t)))
                                              (if (gx#stx-pair?
                                                   ___stx4184941850_)
                                                  (let ((_e3289732916_
                                                         (gx#stx-e
                                                          ___stx4184941850_)))
                                                    (let ((_tl3289932921_
                                                           (##cdr _e3289732916_))
                                                          (_hd3289832919_
                                                           (##car _e3289732916_)))
                                                      (if (gx#identifier?
                                                           _hd3289832919_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd3289832919_)
                                                              (___kont4185141852_)
                                                              (___kont4185341854_))
                                                          (___kont4185341854_))))
                                                  (___kont4185341854_))))))
                                       (___kont4187541876_
                                        (lambda (_L32775_)
                                          (_nonlinear-expr?32498_ _L32775_)))
                                       (___kont4187741878_
                                        (lambda (_L32722_ _L32723_ _L32724_)
                                          (let ((_$e32743_
                                                 (_nonlinear-expr?32498_
                                                  _L32723_)))
                                            (if _$e32743_
                                                _$e32743_
                                                (_nonlinear-expr?32498_
                                                 _L32722_)))))
                                       (___kont4187941880_ (lambda () '#f)))
                                   (let* ((___match4193041931_
                                           (lambda (_e3265032751_
                                                    _hd3265132754_
                                                    _tl3265232756_
                                                    _e3265332759_
                                                    _hd3265432762_
                                                    _tl3265532764_)
                                             (if (gx#stx-pair? _tl3265532764_)
                                                 (let ((_e3265632767_
                                                        (gx#stx-e
                                                         _tl3265532764_)))
                                                   (let ((_tl3265832772_
                                                          (##cdr _e3265632767_))
                                                         (_hd3265732770_
                                                          (##car _e3265632767_)))
                                                     (if (gx#stx-null?
                                                          _tl3265832772_)
                                                         (___kont4187541876_
                                                          _hd3265732770_)
                                                         (___kont4187941880_))))
                                                 (___kont4187941880_))))
                                          (___match4191441915_
                                           (lambda (_e3261832793_
                                                    _hd3261932796_
                                                    _tl3262032798_
                                                    _e3262132801_
                                                    _hd3262232804_
                                                    _tl3262332806_
                                                    ___splice4187341874_
                                                    _target3262432809_
                                                    _tl3262632811_)
                                             (letrec ((_loop3262732814_
                                                       (lambda (_hd3262532817_)
                                                         (if (gx#stx-pair?
                                                              _hd3262532817_)
                                                             (let ((_e3262832820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3262532817_)))
                       (let ((_lp-tl3263032825_ (##cdr _e3262832820_))
                             (_lp-hd3262932823_ (##car _e3262832820_)))
                         (if (gx#stx-pair? _lp-hd3262932823_)
                             (let ((_e3263132828_
                                    (gx#stx-e _lp-hd3262932823_)))
                               (let ((_tl3263332833_ (##cdr _e3263132828_))
                                     (_hd3263232831_ (##car _e3263132828_)))
                                 (if (gx#stx-pair? _hd3263232831_)
                                     (let ((_e3263432836_
                                            (gx#stx-e _hd3263232831_)))
                                       (let ((_tl3263632841_
                                              (##cdr _e3263432836_))
                                             (_hd3263532839_
                                              (##car _e3263432836_)))
                                         (if (gx#stx-null? _tl3263632841_)
                                             (if (gx#stx-pair? _tl3263332833_)
                                                 (let ((_e3263732844_
                                                        (gx#stx-e
                                                         _tl3263332833_)))
                                                   (let ((_tl3263932849_
                                                          (##cdr _e3263732844_))
                                                         (_hd3263832847_
                                                          (##car _e3263732844_)))
                                                     (if (gx#stx-pair?
                                                          _hd3263832847_)
                                                         (let ((_e3264032852_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3263832847_)))
                   (let ((_tl3264232857_ (##cdr _e3264032852_))
                         (_hd3264132855_ (##car _e3264032852_)))
                     (if (gx#identifier? _hd3264132855_)
                         (if (gx#stx-eq? '%#ref _hd3264132855_)
                             (if (gx#stx-pair? _tl3264232857_)
                                 (let ((_e3264332860_
                                        (gx#stx-e _tl3264232857_)))
                                   (let ((_tl3264532865_ (##cdr _e3264332860_))
                                         (_hd3264432863_
                                          (##car _e3264332860_)))
                                     (if (gx#stx-null? _tl3264532865_)
                                         (if (gx#stx-null? _tl3263932849_)
                                             (_loop3262732814_
                                              _lp-tl3263032825_)
                                             (___match4193041931_
                                              _e3261832793_
                                              _hd3261932796_
                                              _tl3262032798_
                                              _e3262132801_
                                              _hd3262232804_
                                              _tl3262332806_))
                                         (___match4193041931_
                                          _e3261832793_
                                          _hd3261932796_
                                          _tl3262032798_
                                          _e3262132801_
                                          _hd3262232804_
                                          _tl3262332806_))))
                                 (___match4193041931_
                                  _e3261832793_
                                  _hd3261932796_
                                  _tl3262032798_
                                  _e3262132801_
                                  _hd3262232804_
                                  _tl3262332806_))
                             (___match4193041931_
                              _e3261832793_
                              _hd3261932796_
                              _tl3262032798_
                              _e3262132801_
                              _hd3262232804_
                              _tl3262332806_))
                         (___match4193041931_
                          _e3261832793_
                          _hd3261932796_
                          _tl3262032798_
                          _e3262132801_
                          _hd3262232804_
                          _tl3262332806_))))
                 (___match4193041931_
                  _e3261832793_
                  _hd3261932796_
                  _tl3262032798_
                  _e3262132801_
                  _hd3262232804_
                  _tl3262332806_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___match4193041931_
                                                  _e3261832793_
                                                  _hd3261932796_
                                                  _tl3262032798_
                                                  _e3262132801_
                                                  _hd3262232804_
                                                  _tl3262332806_))
                                             (___match4193041931_
                                              _e3261832793_
                                              _hd3261932796_
                                              _tl3262032798_
                                              _e3262132801_
                                              _hd3262232804_
                                              _tl3262332806_))))
                                     (___match4193041931_
                                      _e3261832793_
                                      _hd3261932796_
                                      _tl3262032798_
                                      _e3262132801_
                                      _hd3262232804_
                                      _tl3262332806_))))
                             (___match4193041931_
                              _e3261832793_
                              _hd3261932796_
                              _tl3262032798_
                              _e3262132801_
                              _hd3262232804_
                              _tl3262332806_))))
                     (let ()
                       (if (gx#stx-pair? _tl3262332806_)
                           (let ((_e3264632869_ (gx#stx-e _tl3262332806_)))
                             (let ((_tl3264832874_ (##cdr _e3264632869_))
                                   (_hd3264732872_ (##car _e3264632869_)))
                               (if (gx#stx-null? _tl3264832874_)
                                   (___kont4187141872_ _hd3264732872_)
                                   (___kont4187941880_))))
                           (___kont4187941880_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop3262732814_
                                                _target3262432809_)))))
                                     (if (gx#stx-pair? ___stx4186741868_)
                                         (let ((_e3261432934_
                                                (gx#stx-e ___stx4186741868_)))
                                           (let ((_tl3261632939_
                                                  (##cdr _e3261432934_))
                                                 (_hd3261532937_
                                                  (##car _e3261432934_)))
                                             (if (gx#identifier?
                                                  _hd3261532937_)
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3261532937_)
                                                     (___kont4186941870_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _hd3261532937_)
                                                         (if (gx#stx-pair?
                                                              _tl3261632939_)
                                                             (let ((_e3262132801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3261632939_)))
                       (let ((_tl3262332806_ (##cdr _e3262132801_))
                             (_hd3262232804_ (##car _e3262132801_)))
                         (if (gx#stx-pair/null? _hd3262232804_)
                             (let ((___splice4187341874_
                                    (gx#syntax-split-splice
                                     _hd3262232804_
                                     '0)))
                               (let ((_tl3262632811_
                                      (##vector-ref ___splice4187341874_ '1))
                                     (_target3262432809_
                                      (##vector-ref ___splice4187341874_ '0)))
                                 (if (gx#stx-null? _tl3262632811_)
                                     (___match4191441915_
                                      _e3261432934_
                                      _hd3261532937_
                                      _tl3261632939_
                                      _e3262132801_
                                      _hd3262232804_
                                      _tl3262332806_
                                      ___splice4187341874_
                                      _target3262432809_
                                      _tl3262632811_)
                                     (if (gx#stx-pair? _tl3262332806_)
                                         (let ((_e3265632767_
                                                (gx#stx-e _tl3262332806_)))
                                           (let ((_tl3265832772_
                                                  (##cdr _e3265632767_))
                                                 (_hd3265732770_
                                                  (##car _e3265632767_)))
                                             (if (gx#stx-null? _tl3265832772_)
                                                 (___kont4187541876_
                                                  _hd3265732770_)
                                                 (___kont4187941880_))))
                                         (___kont4187941880_)))))
                             (if (gx#stx-pair? _tl3262332806_)
                                 (let ((_e3265632767_
                                        (gx#stx-e _tl3262332806_)))
                                   (let ((_tl3265832772_ (##cdr _e3265632767_))
                                         (_hd3265732770_
                                          (##car _e3265632767_)))
                                     (if (gx#stx-null? _tl3265832772_)
                                         (___kont4187541876_ _hd3265732770_)
                                         (___kont4187941880_))))
                                 (___kont4187941880_)))))
                     (___kont4187941880_))
                 (if (gx#stx-eq? '%#if _hd3261532937_)
                     (if (gx#stx-pair? _tl3261632939_)
                         (let ((_e3266532698_ (gx#stx-e _tl3261632939_)))
                           (let ((_tl3266732703_ (##cdr _e3266532698_))
                                 (_hd3266632701_ (##car _e3266532698_)))
                             (if (gx#stx-pair? _tl3266732703_)
                                 (let ((_e3266832706_
                                        (gx#stx-e _tl3266732703_)))
                                   (let ((_tl3267032711_ (##cdr _e3266832706_))
                                         (_hd3266932709_
                                          (##car _e3266832706_)))
                                     (if (gx#stx-pair? _tl3267032711_)
                                         (let ((_e3267132714_
                                                (gx#stx-e _tl3267032711_)))
                                           (let ((_tl3267332719_
                                                  (##cdr _e3267132714_))
                                                 (_hd3267232717_
                                                  (##car _e3267132714_)))
                                             (if (gx#stx-null? _tl3267332719_)
                                                 (___kont4187741878_
                                                  _hd3267232717_
                                                  _hd3266932709_
                                                  _hd3266632701_)
                                                 (___kont4187941880_))))
                                         (___kont4187941880_))))
                                 (___kont4187941880_))))
                         (___kont4187941880_))
                     (___kont4187941880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4187941880_))))
                                         (___kont4187941880_))))))))
                     (let* ((_kont32500_ (caddr _block32496_))
                            (_g3250232528_
                             (lambda (_g3250332525_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3250332525_)))
                            (_g3250132603_
                             (lambda (_g3250332531_)
                               (if (gx#stx-pair? _g3250332531_)
                                   (let ((_e3250632533_
                                          (gx#stx-e _g3250332531_)))
                                     (let ((_hd3250732536_
                                            (##car _e3250632533_))
                                           (_tl3250832538_
                                            (##cdr _e3250632533_)))
                                       (if (gx#identifier? _hd3250732536_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd3250732536_)
                                               (if (gx#stx-pair?
                                                    _tl3250832538_)
                                                   (let ((_e3250932541_
                                                          (gx#stx-e
                                                           _tl3250832538_)))
                                                     (let ((_hd3251032544_
                                                            (##car _e3250932541_))
                                                           (_tl3251132546_
                                                            (##cdr _e3250932541_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd3251032544_)
                                                           (let ((_g42912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd3251032544_ '0)))
                     (begin
                       (let ((_g42913_
                              (if (##values? _g42912_)
                                  (##vector-length _g42912_)
                                  1)))
                         (if (not (##fx= _g42913_ 2))
                             (error "Context expects 2 values" _g42913_)))
                       (let ((_target3251232549_ (##vector-ref _g42912_ 0))
                             (_tl3251432551_ (##vector-ref _g42912_ 1)))
                         (if (gx#stx-null? _tl3251432551_)
                             (letrec ((_loop3251532554_
                                       (lambda (_hd3251332557_ _id3251932559_)
                                         (if (gx#stx-pair? _hd3251332557_)
                                             (let ((_e3251632562_
                                                    (gx#stx-e _hd3251332557_)))
                                               (let ((_lp-hd3251732565_
                                                      (##car _e3251632562_))
                                                     (_lp-tl3251832567_
                                                      (##cdr _e3251632562_)))
                                                 (_loop3251532554_
                                                  _lp-tl3251832567_
                                                  (cons _lp-hd3251732565_
                                                        _id3251932559_))))
                                             (let ((_id3252032570_
                                                    (reverse _id3251932559_)))
                                               (if (gx#stx-pair?
                                                    _tl3251132546_)
                                                   (let ((_e3252132573_
                                                          (gx#stx-e
                                                           _tl3251132546_)))
                                                     (let ((_hd3252232576_
                                                            (##car _e3252132573_))
                                                           (_tl3252332578_
                                                            (##cdr _e3252132573_)))
                                                       (if (gx#stx-null?
                                                            _tl3252332578_)
                                                           ((lambda (_L32581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L32582_)
                      (_nonlinear-expr?32498_ _L32581_))
                    _hd3252232576_
                    _id3252032570_)
                   (_g3250232528_ _g3250332531_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3250232528_
                                                    _g3250332531_)))))))
                               (_loop3251532554_ _target3251232549_ '()))
                             (_g3250232528_ _g3250332531_)))))
                   (_g3250232528_ _g3250332531_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3250232528_
                                                    _g3250332531_))
                                               (_g3250232528_ _g3250332531_))
                                           (_g3250232528_ _g3250332531_))))
                                   (_g3250232528_ _g3250332531_)))))
                       (_g3250132603_ _kont32500_))))))
        (_do-assert32470_
         _assert32229_
         (lambda ()
           (_do-bind32477_
            _bind32230_
            (lambda ()
              (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                  (_do-splice!32480_
                   (lambda () (_optimize-e32481_ _body32228_)))
                  (_optimize-e32481_ _body32228_)))))))))
  (define gxc#optimize-match-prune-blocks
    (lambda (_blocks32140_ _konts32141_)
      (letrec* ((_rtab32143_ (make-hash-table-eq)))
        (begin
          (for-each
           (lambda (_block32145_)
             (gxc#apply-collect-runtime-refs (caddr _block32145_) _rtab32143_))
           _konts32141_)
          (let _lp32147_ ((_rest32149_ _blocks32140_) (_r32150_ '()))
            (let* ((_rest3215132159_ _rest32149_)
                   (_else3215332167_ (lambda () (reverse _r32150_)))
                   (_K3215532216_
                    (lambda (_rest32170_ _block32171_)
                      (let* ((_block3217232183_ _block32171_)
                             (_E3217432187_
                              (lambda ()
                                (error '"No clause matching"
                                       _block3217232183_)))
                             (_K3217532194_
                              (lambda (_kont32190_ _type32191_ _name32192_)
                                (if (table-ref
                                     _rtab32143_
                                     (gxc#identifier-symbol _name32192_)
                                     '#f)
                                    (begin
                                      (gxc#apply-collect-runtime-refs
                                       _kont32190_
                                       _rtab32143_)
                                      (_lp32147_
                                       _rest32170_
                                       (cons _block32171_ _r32150_)))
                                    (_lp32147_ _rest32170_ _r32150_)))))
                        (if (##pair? _block3217232183_)
                            (let ((_hd3217632197_ (##car _block3217232183_))
                                  (_tl3217732199_ (##cdr _block3217232183_)))
                              (let ((_name32202_ _hd3217632197_))
                                (if (##pair? _tl3217732199_)
                                    (let ((_hd3217832204_
                                           (##car _tl3217732199_))
                                          (_tl3217932206_
                                           (##cdr _tl3217732199_)))
                                      (let ((_type32209_ _hd3217832204_))
                                        (if (##pair? _tl3217932206_)
                                            (let* ((_hd3218032211_
                                                    (##car _tl3217932206_))
                                                   (_kont32214_
                                                    _hd3218032211_))
                                              (_K3217532194_
                                               _kont32214_
                                               _type32209_
                                               _name32202_))
                                            (_E3217432187_))))
                                    (_E3217432187_))))
                            (_E3217432187_))))))
              (if (##pair? _rest3215132159_)
                  (let ((_hd3215632219_ (##car _rest3215132159_))
                        (_tl3215732221_ (##cdr _rest3215132159_)))
                    (let* ((_block32224_ _hd3215632219_)
                           (_rest32226_ _tl3215732221_))
                      (_K3215532216_ _rest32226_ _block32224_)))
                  (_else3215332167_))))))))
  (define gxc#optimize-match-fuse-restart-blocks
    (lambda (_blocks32064_ _konts32065_)
      (let* ((_blocks3206632082_ _blocks32064_)
             (_else3206832090_ (lambda () _blocks32064_))
             (_K3207032108_
              (lambda (_rest32093_ _kont32094_ _name32095_)
                (letrec* ((_rtab32097_ (make-hash-table-eq)))
                  (begin
                    (for-each
                     (lambda (_block32099_)
                       (gxc#apply-collect-runtime-refs
                        (caddr _block32099_)
                        _rtab32097_))
                     _konts32065_)
                    (if (fx= (table-ref
                              _rtab32097_
                              (gxc#identifier-symbol _name32095_))
                             '1)
                        (let* ((_rblock32103_
                                (find (lambda (_block32101_)
                                        (gxc#apply-find-var-refs
                                         (caddr _block32101_)
                                         (cons _name32095_ '())))
                                      _konts32065_))
                               (_assert32105_
                                (gxc#optimize-match-assert-restart
                                 _rblock32103_
                                 _name32095_)))
                          (cons (cons _name32095_
                                      (cons 'restart:
                                            (cons _kont32094_
                                                  (cons _assert32105_ '()))))
                                _rest32093_))
                        _blocks32064_))))))
        (if (##pair? _blocks3206632082_)
            (let ((_hd3207132111_ (##car _blocks3206632082_))
                  (_tl3207232113_ (##cdr _blocks3206632082_)))
              (if (##pair? _hd3207132111_)
                  (let ((_hd3207332116_ (##car _hd3207132111_))
                        (_tl3207432118_ (##cdr _hd3207132111_)))
                    (let ((_name32121_ _hd3207332116_))
                      (if (##pair? _tl3207432118_)
                          (let ((_hd3207532123_ (##car _tl3207432118_))
                                (_tl3207632125_ (##cdr _tl3207432118_)))
                            (if (##eq? _hd3207532123_ 'restart:)
                                (if (##pair? _tl3207632125_)
                                    (let ((_hd3207732128_
                                           (##car _tl3207632125_))
                                          (_tl3207832130_
                                           (##cdr _tl3207632125_)))
                                      (let ((_kont32133_ _hd3207732128_))
                                        (if (##pair? _tl3207832130_)
                                            (let ((_tl3208032135_
                                                   (##cdr _tl3207832130_)))
                                              (if (##null? _tl3208032135_)
                                                  (let ((_rest32138_
                                                         _tl3207232113_))
                                                    (_K3207032108_
                                                     _rest32138_
                                                     _kont32133_
                                                     _name32121_))
                                                  (_else3206832090_)))
                                            (_else3206832090_))))
                                    (_else3206832090_))
                                (_else3206832090_)))
                          (_else3206832090_))))
                  (_else3206832090_)))
            (_else3206832090_)))))
  (define gxc#optimize-match-assert-restart
    (lambda (_block31460_ _name31461_)
      (letrec ((_assert-restart31463_
                (lambda (_expr31619_ _assert31620_)
                  (let* ((___stx4197141972_ _expr31619_)
                         (_g3162631723_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4197141972_))))
                    (let ((___kont4197341974_
                           (lambda (_L32039_ _L32040_ _L32041_)
                             (let ((_$e32058_
                                    (_assert-restart31463_
                                     _L32040_
                                     (cons (cons _L32041_ '#t)
                                           _assert31620_))))
                               (if _$e32058_
                                   _$e32058_
                                   (_assert-restart31463_
                                    _L32039_
                                    (cons (cons _L32041_ '#f)
                                          _assert31620_))))))
                          (___kont4197541976_
                           (lambda (_L31987_)
                             (if (gx#free-identifier=? _L31987_ _name31461_)
                                 _assert31620_
                                 '#f)))
                          (___kont4197741978_
                           (lambda (_L31937_)
                             (_assert-restart31463_ _L31937_ _assert31620_)))
                          (___kont4197941980_
                           (lambda (_L31863_
                                    _L31864_
                                    _L31865_
                                    _L31866_
                                    _L31867_)
                             (_assert-restart31463_ _L31865_ _assert31620_)))
                          (___kont4198541986_ (lambda () '#f)))
                      (let ((___match4214042141_
                             (lambda (_e3167131735_
                                      _hd3167231738_
                                      _tl3167331740_
                                      _e3167431743_
                                      _hd3167531746_
                                      _tl3167631748_
                                      _e3167731751_
                                      _hd3167831754_
                                      _tl3167931756_
                                      _e3168031759_
                                      _hd3168131762_
                                      _tl3168231764_
                                      _e3168331767_
                                      _hd3168431770_
                                      _tl3168531772_
                                      _e3168631775_
                                      _hd3168731778_
                                      _tl3168831780_
                                      _e3168931783_
                                      _hd3169031786_
                                      _tl3169131788_
                                      _e3169231791_
                                      _hd3169331794_
                                      _tl3169431796_
                                      ___splice4198141982_
                                      _target3169531799_
                                      _tl3169731801_)
                               (letrec ((_loop3169831804_
                                         (lambda (_hd3169631807_
                                                  _id3170231809_)
                                           (if (gx#stx-pair? _hd3169631807_)
                                               (let ((_e3169931812_
                                                      (gx#stx-e
                                                       _hd3169631807_)))
                                                 (let ((_lp-tl3170131817_
                                                        (##cdr _e3169931812_))
                                                       (_lp-hd3170031815_
                                                        (##car _e3169931812_)))
                                                   (_loop3169831804_
                                                    _lp-tl3170131817_
                                                    (cons _lp-hd3170031815_
                                                          _id3170231809_))))
                                               (let ((_id3170331820_
                                                      (reverse _id3170231809_)))
                                                 (if (gx#stx-pair?
                                                      _tl3169431796_)
                                                     (let ((_e3170431823_
                                                            (gx#stx-e
                                                             _tl3169431796_)))
                                                       (let ((_tl3170631828_
                                                              (##cdr _e3170431823_))
                                                             (_hd3170531826_
                                                              (##car _e3170431823_)))
                                                         (if (gx#stx-null?
                                                              _tl3170631828_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl3168831780_)
                         (if (gx#stx-pair/null? _tl3167931756_)
                             (let ((___splice4198341984_
                                    (gx#syntax-split-splice
                                     _tl3167931756_
                                     '0)))
                               (let ((_tl3170931833_
                                      (##vector-ref ___splice4198341984_ '1))
                                     (_target3170731831_
                                      (##vector-ref ___splice4198341984_ '0)))
                                 (if (gx#stx-null? _tl3170931833_)
                                     (letrec ((_loop3171031836_
                                               (lambda (_hd3170831839_
                                                        _bind3171431841_)
                                                 (if (gx#stx-pair?
                                                      _hd3170831839_)
                                                     (let ((_e3171131844_
                                                            (gx#stx-e
                                                             _hd3170831839_)))
                                                       (let ((_lp-tl3171331849_
                                                              (##cdr _e3171131844_))
                                                             (_lp-hd3171231847_
                                                              (##car _e3171131844_)))
                                                         (_loop3171031836_
                                                          _lp-tl3171331849_
                                                          (cons _lp-hd3171231847_
                                                                _bind3171431841_))))
                                                     (let ((_bind3171531852_
                                                            (reverse _bind3171431841_)))
                                                       (if (gx#stx-pair?
                                                            _tl3167631748_)
                                                           (let ((_e3171631855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3167631748_)))
                     (let ((_tl3171831860_ (##cdr _e3171631855_))
                           (_hd3171731858_ (##car _e3171631855_)))
                       (if (gx#stx-null? _tl3171831860_)
                           (___kont4197941980_
                            _hd3171731858_
                            _bind3171531852_
                            _hd3170531826_
                            _id3170331820_
                            _hd3168431770_)
                           (___kont4198541986_))))
                   (___kont4198541986_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3171031836_
                                        _target3170731831_
                                        '()))
                                     (___kont4198541986_))))
                             (___kont4198541986_))
                         (___kont4198541986_))
                     (___kont4198541986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4198541986_)))))))
                                 (_loop3169831804_ _target3169531799_ '())))))
                        (if (gx#stx-pair? ___stx4197141972_)
                            (let ((_e3163132007_ (gx#stx-e ___stx4197141972_)))
                              (let ((_tl3163332012_ (##cdr _e3163132007_))
                                    (_hd3163232010_ (##car _e3163132007_)))
                                (if (gx#identifier? _hd3163232010_)
                                    (if (gx#stx-eq? '%#if _hd3163232010_)
                                        (if (gx#stx-pair? _tl3163332012_)
                                            (let ((_e3163432015_
                                                   (gx#stx-e _tl3163332012_)))
                                              (let ((_tl3163632020_
                                                     (##cdr _e3163432015_))
                                                    (_hd3163532018_
                                                     (##car _e3163432015_)))
                                                (if (gx#stx-pair?
                                                     _tl3163632020_)
                                                    (let ((_e3163732023_
                                                           (gx#stx-e
                                                            _tl3163632020_)))
                                                      (let ((_tl3163932028_
                                                             (##cdr _e3163732023_))
                                                            (_hd3163832026_
                                                             (##car _e3163732023_)))
                                                        (if (gx#stx-pair?
                                                             _tl3163932028_)
                                                            (let ((_e3164032031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3163932028_)))
                      (let ((_tl3164232036_ (##cdr _e3164032031_))
                            (_hd3164132034_ (##car _e3164032031_)))
                        (if (gx#stx-null? _tl3164232036_)
                            (___kont4197341974_
                             _hd3164132034_
                             _hd3163832026_
                             _hd3163532018_)
                            (___kont4198541986_))))
                    (___kont4198541986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4198541986_))))
                                            (___kont4198541986_))
                                        (if (gx#stx-eq? '%#call _hd3163232010_)
                                            (if (gx#stx-pair? _tl3163332012_)
                                                (let ((_e3164731963_
                                                       (gx#stx-e
                                                        _tl3163332012_)))
                                                  (let ((_tl3164931968_
                                                         (##cdr _e3164731963_))
                                                        (_hd3164831966_
                                                         (##car _e3164731963_)))
                                                    (if (gx#stx-pair?
                                                         _hd3164831966_)
                                                        (let ((_e3165031971_
                                                               (gx#stx-e
                                                                _hd3164831966_)))
                                                          (let ((_tl3165231976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3165031971_))
                        (_hd3165131974_ (##car _e3165031971_)))
                    (if (gx#identifier? _hd3165131974_)
                        (if (gx#stx-eq? '%#ref _hd3165131974_)
                            (if (gx#stx-pair? _tl3165231976_)
                                (let ((_e3165331979_
                                       (gx#stx-e _tl3165231976_)))
                                  (let ((_tl3165531984_ (##cdr _e3165331979_))
                                        (_hd3165431982_ (##car _e3165331979_)))
                                    (if (gx#stx-null? _tl3165531984_)
                                        (___kont4197541976_ _hd3165431982_)
                                        (___kont4198541986_))))
                                (___kont4198541986_))
                            (___kont4198541986_))
                        (___kont4198541986_))))
                (___kont4198541986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4198541986_))
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3163232010_)
                                                (if (gx#stx-pair?
                                                     _tl3163332012_)
                                                    (let ((_e3166031921_
                                                           (gx#stx-e
                                                            _tl3163332012_)))
                                                      (let ((_tl3166231926_
                                                             (##cdr _e3166031921_))
                                                            (_hd3166131924_
                                                             (##car _e3166031921_)))
                                                        (if (gx#stx-pair?
                                                             _tl3166231926_)
                                                            (let ((_e3166331929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3166231926_)))
                      (let ((_tl3166531934_ (##cdr _e3166331929_))
                            (_hd3166431932_ (##car _e3166331929_)))
                        (if (gx#stx-null? _tl3166531934_)
                            (___kont4197741978_ _hd3166431932_)
                            (___kont4198541986_))))
                    (___kont4198541986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4198541986_))
                                                (if (gx#stx-eq?
                                                     '%#letrec-values
                                                     _hd3163232010_)
                                                    (if (gx#stx-pair?
                                                         _tl3163332012_)
                                                        (let ((_e3167431743_
                                                               (gx#stx-e
                                                                _tl3163332012_)))
                                                          (let ((_tl3167631748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3167431743_))
                        (_hd3167531746_ (##car _e3167431743_)))
                    (if (gx#stx-pair? _hd3167531746_)
                        (let ((_e3167731751_ (gx#stx-e _hd3167531746_)))
                          (let ((_tl3167931756_ (##cdr _e3167731751_))
                                (_hd3167831754_ (##car _e3167731751_)))
                            (if (gx#stx-pair? _hd3167831754_)
                                (let ((_e3168031759_
                                       (gx#stx-e _hd3167831754_)))
                                  (let ((_tl3168231764_ (##cdr _e3168031759_))
                                        (_hd3168131762_ (##car _e3168031759_)))
                                    (if (gx#stx-pair? _hd3168131762_)
                                        (let ((_e3168331767_
                                               (gx#stx-e _hd3168131762_)))
                                          (let ((_tl3168531772_
                                                 (##cdr _e3168331767_))
                                                (_hd3168431770_
                                                 (##car _e3168331767_)))
                                            (if (gx#stx-null? _tl3168531772_)
                                                (if (gx#stx-pair?
                                                     _tl3168231764_)
                                                    (let ((_e3168631775_
                                                           (gx#stx-e
                                                            _tl3168231764_)))
                                                      (let ((_tl3168831780_
                                                             (##cdr _e3168631775_))
                                                            (_hd3168731778_
                                                             (##car _e3168631775_)))
                                                        (if (gx#stx-pair?
                                                             _hd3168731778_)
                                                            (let ((_e3168931783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3168731778_)))
                      (let ((_tl3169131788_ (##cdr _e3168931783_))
                            (_hd3169031786_ (##car _e3168931783_)))
                        (if (gx#identifier? _hd3169031786_)
                            (if (gx#stx-eq? '%#lambda _hd3169031786_)
                                (if (gx#stx-pair? _tl3169131788_)
                                    (let ((_e3169231791_
                                           (gx#stx-e _tl3169131788_)))
                                      (let ((_tl3169431796_
                                             (##cdr _e3169231791_))
                                            (_hd3169331794_
                                             (##car _e3169231791_)))
                                        (if (gx#stx-pair/null? _hd3169331794_)
                                            (let ((___splice4198141982_
                                                   (gx#syntax-split-splice
                                                    _hd3169331794_
                                                    '0)))
                                              (let ((_tl3169731801_
                                                     (##vector-ref
                                                      ___splice4198141982_
                                                      '1))
                                                    (_target3169531799_
                                                     (##vector-ref
                                                      ___splice4198141982_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3169731801_)
                                                    (___match4214042141_
                                                     _e3163132007_
                                                     _hd3163232010_
                                                     _tl3163332012_
                                                     _e3167431743_
                                                     _hd3167531746_
                                                     _tl3167631748_
                                                     _e3167731751_
                                                     _hd3167831754_
                                                     _tl3167931756_
                                                     _e3168031759_
                                                     _hd3168131762_
                                                     _tl3168231764_
                                                     _e3168331767_
                                                     _hd3168431770_
                                                     _tl3168531772_
                                                     _e3168631775_
                                                     _hd3168731778_
                                                     _tl3168831780_
                                                     _e3168931783_
                                                     _hd3169031786_
                                                     _tl3169131788_
                                                     _e3169231791_
                                                     _hd3169331794_
                                                     _tl3169431796_
                                                     ___splice4198141982_
                                                     _target3169531799_
                                                     _tl3169731801_)
                                                    (___kont4198541986_))))
                                            (___kont4198541986_))))
                                    (___kont4198541986_))
                                (___kont4198541986_))
                            (___kont4198541986_))))
                    (___kont4198541986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4198541986_))
                                                (___kont4198541986_))))
                                        (___kont4198541986_))))
                                (___kont4198541986_))))
                        (___kont4198541986_))))
                (___kont4198541986_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4198541986_)))))
                                    (___kont4198541986_))))
                            (___kont4198541986_))))))))
        (let* ((_block3146431477_ _block31460_)
               (_E3146631481_
                (lambda () (error '"No clause matching" _block3146431477_)))
               (_K3146731594_
                (lambda (_maybe-bind31484_ _assert31485_ _kont31486_)
                  (let* ((_g3148831514_
                          (lambda (_g3148931511_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3148931511_)))
                         (_g3148731591_
                          (lambda (_g3148931517_)
                            (if (gx#stx-pair? _g3148931517_)
                                (let ((_e3149231519_ (gx#stx-e _g3148931517_)))
                                  (let ((_hd3149331522_ (##car _e3149231519_))
                                        (_tl3149431524_ (##cdr _e3149231519_)))
                                    (if (gx#identifier? _hd3149331522_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3149331522_)
                                            (if (gx#stx-pair? _tl3149431524_)
                                                (let ((_e3149531527_
                                                       (gx#stx-e
                                                        _tl3149431524_)))
                                                  (let ((_hd3149631530_
                                                         (##car _e3149531527_))
                                                        (_tl3149731532_
                                                         (##cdr _e3149531527_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3149631530_)
                                                        (let ((_g42914_
                                                               (gx#syntax-split-splice
                                                                _hd3149631530_
                                                                '0)))
                                                          (begin
                                                            (let ((_g42915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g42914_)
                               (##vector-length _g42914_)
                               1)))
                      (if (not (##fx= _g42915_ 2))
                          (error "Context expects 2 values" _g42915_)))
                    (let ((_target3149831535_ (##vector-ref _g42914_ 0))
                          (_tl3150031537_ (##vector-ref _g42914_ 1)))
                      (if (gx#stx-null? _tl3150031537_)
                          (letrec ((_loop3150131540_
                                    (lambda (_hd3149931543_ _id3150531545_)
                                      (if (gx#stx-pair? _hd3149931543_)
                                          (let ((_e3150231548_
                                                 (gx#stx-e _hd3149931543_)))
                                            (let ((_lp-hd3150331551_
                                                   (##car _e3150231548_))
                                                  (_lp-tl3150431553_
                                                   (##cdr _e3150231548_)))
                                              (_loop3150131540_
                                               _lp-tl3150431553_
                                               (cons _lp-hd3150331551_
                                                     _id3150531545_))))
                                          (let ((_id3150631556_
                                                 (reverse _id3150531545_)))
                                            (if (gx#stx-pair? _tl3149731532_)
                                                (let ((_e3150731559_
                                                       (gx#stx-e
                                                        _tl3149731532_)))
                                                  (let ((_hd3150831562_
                                                         (##car _e3150731559_))
                                                        (_tl3150931564_
                                                         (##cdr _e3150731559_)))
                                                    (if (gx#stx-null?
                                                         _tl3150931564_)
                                                        ((lambda (_L31567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L31568_)
                   (_assert-restart31463_ _L31567_ _assert31485_))
                 _hd3150831562_
                 _id3150631556_)
                (_g3148831514_ _g3148931517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3148831514_
                                                 _g3148931517_)))))))
                            (_loop3150131540_ _target3149831535_ '()))
                          (_g3148831514_ _g3148931517_)))))
                (_g3148831514_ _g3148931517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3148831514_ _g3148931517_))
                                            (_g3148831514_ _g3148931517_))
                                        (_g3148831514_ _g3148931517_))))
                                (_g3148831514_ _g3148931517_)))))
                    (_g3148731591_ _kont31486_)))))
          (if (##pair? _block3146431477_)
              (let ((_tl3146931597_ (##cdr _block3146431477_)))
                (if (##pair? _tl3146931597_)
                    (let ((_tl3147131600_ (##cdr _tl3146931597_)))
                      (if (##pair? _tl3147131600_)
                          (let ((_hd3147231603_ (##car _tl3147131600_))
                                (_tl3147331605_ (##cdr _tl3147131600_)))
                            (let ((_kont31608_ _hd3147231603_))
                              (if (##pair? _tl3147331605_)
                                  (let ((_hd3147431610_ (##car _tl3147331605_))
                                        (_tl3147531612_
                                         (##cdr _tl3147331605_)))
                                    (let* ((_assert31615_ _hd3147431610_)
                                           (_maybe-bind31617_ _tl3147531612_))
                                      (_K3146731594_
                                       _maybe-bind31617_
                                       _assert31615_
                                       _kont31608_)))
                                  (_E3146631481_))))
                          (_E3146631481_)))
                    (_E3146631481_)))
              (_E3146631481_))))))
  (define gxc#optimize-syntax-case
    (lambda (_stx31091_)
      (let* ((_g3109331123_
              (lambda (_g3109431120_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3109431120_)))
             (_g3109231457_
              (lambda (_g3109431126_)
                (if (gx#stx-pair? _g3109431126_)
                    (let ((_e3109831128_ (gx#stx-e _g3109431126_)))
                      (let ((_hd3109931131_ (##car _e3109831128_))
                            (_tl3110031133_ (##cdr _e3109831128_)))
                        (if (gx#identifier? _hd3109931131_)
                            (if (gx#stx-eq? '%#let-values _hd3109931131_)
                                (if (gx#stx-pair? _tl3110031133_)
                                    (let ((_e3110131136_
                                           (gx#stx-e _tl3110031133_)))
                                      (let ((_hd3110231139_
                                             (##car _e3110131136_))
                                            (_tl3110331141_
                                             (##cdr _e3110131136_)))
                                        (if (gx#stx-pair? _hd3110231139_)
                                            (let ((_e3110431144_
                                                   (gx#stx-e _hd3110231139_)))
                                              (let ((_hd3110531147_
                                                     (##car _e3110431144_))
                                                    (_tl3110631149_
                                                     (##cdr _e3110431144_)))
                                                (if (gx#stx-pair?
                                                     _hd3110531147_)
                                                    (let ((_e3110731152_
                                                           (gx#stx-e
                                                            _hd3110531147_)))
                                                      (let ((_hd3110831155_
                                                             (##car _e3110731152_))
                                                            (_tl3110931157_
                                                             (##cdr _e3110731152_)))
                                                        (if (gx#stx-pair?
                                                             _hd3110831155_)
                                                            (let ((_e3111031160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3110831155_)))
                      (let ((_hd3111131163_ (##car _e3111031160_))
                            (_tl3111231165_ (##cdr _e3111031160_)))
                        (if (gx#stx-null? _tl3111231165_)
                            (if (gx#stx-pair? _tl3110931157_)
                                (let ((_e3111331168_
                                       (gx#stx-e _tl3110931157_)))
                                  (let ((_hd3111431171_ (##car _e3111331168_))
                                        (_tl3111531173_ (##cdr _e3111331168_)))
                                    (if (gx#stx-null? _tl3111531173_)
                                        (if (gx#stx-null? _tl3110631149_)
                                            (if (gx#stx-pair? _tl3110331141_)
                                                (let ((_e3111631176_
                                                       (gx#stx-e
                                                        _tl3110331141_)))
                                                  (let ((_hd3111731179_
                                                         (##car _e3111631176_))
                                                        (_tl3111831181_
                                                         (##cdr _e3111631176_)))
                                                    (if (gx#stx-null?
                                                         _tl3111831181_)
                                                        ((lambda (_L31184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L31185_
                          _L31186_)
                   (let _lp31210_ ((_body31212_ _L31184_) (_clauses31213_ '()))
                     (let* ((___stx4214342144_ _body31212_)
                            (_g3121631263_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4214342144_))))
                       (let ((___kont4214542146_
                              (lambda (_L31429_ _L31430_ _L31431_)
                                (_lp31210_
                                 _L31429_
                                 (cons (cons _L31431_ (gxc#compile-e _L31430_))
                                       _clauses31213_))))
                             (___kont4214742148_
                              (lambda (_L31308_ _L31309_)
                                (let ((_$e31330_ (length _clauses31213_)))
                                  (if (eq? '0 _$e31330_)
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _L31186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L31185_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gxc#compile-e
                                                          _body31212_)
                                                         '())))
                                       _stx31091_)
                                      (if (eq? '1 _$e31330_)
                                          (let* ((_clauses3133231341_
                                                  _clauses31213_)
                                                 (_E3133431345_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _clauses3133231341_)))
                                                 (_K3133531351_
                                                  (lambda (_clause-lambda31348_
                                                           _clause31349_)
                                                    (gxc#xform-wrap-source
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _L31186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _L31185_ '()))
                               '())
                         (cons (cons '%#let-values
                                     (cons (cons (cons (cons _clause31349_ '())
                                                       (cons _clause-lambda31348_
                                                             '()))
                                                 '())
                                           (cons (gxc#compile-e _body31212_)
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx31091_))))
                                            (if (##pair? _clauses3133231341_)
                                                (let ((_hd3133631354_
                                                       (##car _clauses3133231341_))
                                                      (_tl3133731356_
                                                       (##cdr _clauses3133231341_)))
                                                  (if (##pair? _hd3133631354_)
                                                      (let ((_hd3133831359_
                                                             (##car _hd3133631354_))
                                                            (_tl3133931361_
                                                             (##cdr _hd3133631354_)))
                                                        (let* ((_clause31364_
                                                                _hd3133831359_)
                                                               (_clause-lambda31366_
                                                                _tl3133931361_))
                                                          (if (##null? _tl3133731356_)
                                                              (_K3133531351_
                                                               _clause-lambda31366_
                                                               _clause31364_)
                                                              (_E3133431345_))))
                                                      (_E3133431345_)))
                                                (_E3133431345_)))
                                          (gxc#optimize-syntax-case-body
                                           _stx31091_
                                           (gxc#compile-e _L31308_)
                                           (cons _L31186_ _L31185_)
                                           _clauses31213_)))))))
                         (if (gx#stx-pair? ___stx4214342144_)
                             (let ((_e3122131373_
                                    (gx#stx-e ___stx4214342144_)))
                               (let ((_tl3122331378_ (##cdr _e3122131373_))
                                     (_hd3122231376_ (##car _e3122131373_)))
                                 (if (gx#identifier? _hd3122231376_)
                                     (if (gx#stx-eq?
                                          '%#let-values
                                          _hd3122231376_)
                                         (if (gx#stx-pair? _tl3122331378_)
                                             (let ((_e3122431381_
                                                    (gx#stx-e _tl3122331378_)))
                                               (let ((_tl3122631386_
                                                      (##cdr _e3122431381_))
                                                     (_hd3122531384_
                                                      (##car _e3122431381_)))
                                                 (if (gx#stx-pair?
                                                      _hd3122531384_)
                                                     (let ((_e3122731389_
                                                            (gx#stx-e
                                                             _hd3122531384_)))
                                                       (let ((_tl3122931394_
                                                              (##cdr _e3122731389_))
                                                             (_hd3122831392_
                                                              (##car _e3122731389_)))
                                                         (if (gx#stx-pair?
                                                              _hd3122831392_)
                                                             (let ((_e3123031397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3122831392_)))
                       (let ((_tl3123231402_ (##cdr _e3123031397_))
                             (_hd3123131400_ (##car _e3123031397_)))
                         (if (gx#stx-pair? _hd3123131400_)
                             (let ((_e3123331405_ (gx#stx-e _hd3123131400_)))
                               (let ((_tl3123531410_ (##cdr _e3123331405_))
                                     (_hd3123431408_ (##car _e3123331405_)))
                                 (if (gx#stx-null? _tl3123531410_)
                                     (if (gx#stx-pair? _tl3123231402_)
                                         (let ((_e3123631413_
                                                (gx#stx-e _tl3123231402_)))
                                           (let ((_tl3123831418_
                                                  (##cdr _e3123631413_))
                                                 (_hd3123731416_
                                                  (##car _e3123631413_)))
                                             (if (gx#stx-null? _tl3123831418_)
                                                 (if (gx#stx-null?
                                                      _tl3122931394_)
                                                     (if (gx#stx-pair?
                                                          _tl3122631386_)
                                                         (let ((_e3123931421_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3122631386_)))
                   (let ((_tl3124131426_ (##cdr _e3123931421_))
                         (_hd3124031424_ (##car _e3123931421_)))
                     (if (gx#stx-null? _tl3124131426_)
                         (___kont4214542146_
                          _hd3124031424_
                          _hd3123731416_
                          _hd3123431408_)
                         (_g3121631263_))))
                 (_g3121631263_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3121631263_))
                                                 (_g3121631263_))))
                                         (_g3121631263_))
                                     (_g3121631263_))))
                             (_g3121631263_))))
                     (_g3121631263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3121631263_))))
                                             (_g3121631263_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3122231376_)
                                             (if (gx#stx-pair? _tl3122331378_)
                                                 (let ((_e3124731276_
                                                        (gx#stx-e
                                                         _tl3122331378_)))
                                                   (let ((_tl3124931281_
                                                          (##cdr _e3124731276_))
                                                         (_hd3124831279_
                                                          (##car _e3124731276_)))
                                                     (if (gx#stx-pair?
                                                          _hd3124831279_)
                                                         (let ((_e3125031284_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3124831279_)))
                   (let ((_tl3125231289_ (##cdr _e3125031284_))
                         (_hd3125131287_ (##car _e3125031284_)))
                     (if (gx#identifier? _hd3125131287_)
                         (if (gx#stx-eq? '%#ref _hd3125131287_)
                             (if (gx#stx-pair? _tl3125231289_)
                                 (let ((_e3125331292_
                                        (gx#stx-e _tl3125231289_)))
                                   (let ((_tl3125531297_ (##cdr _e3125331292_))
                                         (_hd3125431295_
                                          (##car _e3125331292_)))
                                     (if (gx#stx-null? _tl3125531297_)
                                         (if (gx#stx-pair? _tl3124931281_)
                                             (let ((_e3125631300_
                                                    (gx#stx-e _tl3124931281_)))
                                               (let ((_tl3125831305_
                                                      (##cdr _e3125631300_))
                                                     (_hd3125731303_
                                                      (##car _e3125631300_)))
                                                 (if (gx#stx-null?
                                                      _tl3125831305_)
                                                     (___kont4214742148_
                                                      _hd3125731303_
                                                      _hd3125431295_)
                                                     (_g3121631263_))))
                                             (_g3121631263_))
                                         (_g3121631263_))))
                                 (_g3121631263_))
                             (_g3121631263_))
                         (_g3121631263_))))
                 (_g3121631263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3121631263_))
                                             (_g3121631263_)))
                                     (_g3121631263_))))
                             (_g3121631263_))))))
                 _hd3111731179_
                 _hd3111431171_
                 _hd3111131163_)
                (_g3109331123_ _g3109431126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3109331123_ _g3109431126_))
                                            (_g3109331123_ _g3109431126_))
                                        (_g3109331123_ _g3109431126_))))
                                (_g3109331123_ _g3109431126_))
                            (_g3109331123_ _g3109431126_))))
                    (_g3109331123_ _g3109431126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3109331123_
                                                     _g3109431126_))))
                                            (_g3109331123_ _g3109431126_))))
                                    (_g3109331123_ _g3109431126_))
                                (_g3109331123_ _g3109431126_))
                            (_g3109331123_ _g3109431126_))))
                    (_g3109331123_ _g3109431126_)))))
        (_g3109231457_ _stx31091_))))
  (define gxc#optimize-syntax-case-body
    (lambda (_stx31019_ _expr31020_ _negation31021_ _clauses31022_)
      (letrec ((_normalize31024_
                (lambda (_clauses31051_)
                  (let* ((_clauses3105231061_ _clauses31051_)
                         (_E3105431065_
                          (lambda ()
                            (error '"No clause matching" _clauses3105231061_)))
                         (_K3105531072_
                          (lambda (_rest31068_ _kont31069_ _id31070_)
                            (cons (cons '#f _kont31069_) _rest31068_))))
                    (if (##pair? _clauses3105231061_)
                        (let ((_hd3105631075_ (##car _clauses3105231061_))
                              (_tl3105731077_ (##cdr _clauses3105231061_)))
                          (if (##pair? _hd3105631075_)
                              (let ((_hd3105831080_ (##car _hd3105631075_))
                                    (_tl3105931082_ (##cdr _hd3105631075_)))
                                (let* ((_id31085_ _hd3105831080_)
                                       (_kont31087_ _tl3105931082_)
                                       (_rest31089_ _tl3105731077_))
                                  (_K3105531072_
                                   _rest31089_
                                   _kont31087_
                                   _id31085_)))
                              (_E3105431065_)))
                        (_E3105431065_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_id31027_ (make-symbol (gensym '__stx)))
                  (_id31029_ (gx#core-quote-syntax__0 _id31027_))
                  (_g42916_ (gx#core-bind-runtime!__0 _id31029_))
                  (_g42917_
                   (gxc#optimize-syntax-case-clauses
                    _clauses31022_
                    (car _negation31021_))))
             (begin
               (let ((_g42918_
                      (if (##values? _g42917_) (##vector-length _g42917_) 1)))
                 (if (not (##fx= _g42918_ 2))
                     (error "Context expects 2 values" _g42918_)))
               (let ((_clauses31032_ (##vector-ref _g42917_ 0))
                     (_konts31033_ (##vector-ref _g42917_ 1)))
                 (let* ((_clauses31042_
                         (map (lambda (_g3103431037_ _g3103531039_)
                                (gxc#optimize-syntax-case-closure
                                 _g3103431037_
                                 _g3103531039_
                                 _id31029_))
                              _clauses31032_
                              (foldr1 cons
                                      (cons (car _negation31021_) '())
                                      (map car (cdr _clauses31032_)))))
                        (_clauses31044_ (_normalize31024_ _clauses31042_))
                        (_negation31046_
                         (gxc#optimize-syntax-case-closure
                          _negation31021_
                          '#f
                          _id31029_))
                        (_body31048_
                         (gxc#optimize-match-body
                          _stx31019_
                          _negation31046_
                          _clauses31044_
                          _konts31033_)))
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _id31029_ '())
                                            (cons _expr31020_ '()))
                                      '())
                                (cons _body31048_ '())))
                    _stx31019_))))))
         gx#current-expander-context
         (let ((__obj42889 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj42889) __obj42889))))))
  (define gxc#optimize-syntax-case-clauses
    (lambda (_clauses29777_ _negation-id29778_)
      (letrec ((_xform-e29780_
                (lambda (_expr30164_
                         _kont-id30165_
                         _kont-box30166_
                         _negation-id30167_)
                  (let* ((___stx4234542346_ _expr30164_)
                         (_g3017330306_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4234542346_))))
                    (let ((___kont4234742348_
                           (lambda (_L30995_ _L30996_ _L30997_)
                             (let ((_K31014_
                                    (_xform-e29780_
                                     _L30996_
                                     _kont-id30165_
                                     _kont-box30166_
                                     _negation-id30167_)))
                               (cons '%#if
                                     (cons _L30997_
                                           (cons _K31014_
                                                 (cons _L30995_ '())))))))
                          (___kont4234942350_
                           (lambda (_L30911_
                                    _L30912_
                                    _L30913_
                                    _L30914_
                                    _L30915_)
                             (let* ((_id30950_
                                     (make-symbol (gensym '__splice)))
                                    (_id30952_
                                     (gx#core-quote-syntax__0 _id30950_))
                                    (_g42919_
                                     (gx#core-bind-runtime!__0 _id30952_))
                                    (_body30955_
                                     (_xform-e29780_
                                      _L30911_
                                      _kont-id30165_
                                      _kont-box30166_
                                      _negation-id30167_)))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _id30952_ '())
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#call)
                           (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                       (cons _L30913_ '()))
                                 _L30912_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons '%#let-values
                                                       (cons (cons (cons (cons _L30915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons '%#call
                                             (cons '(%#ref ##vector-ref)
                                                   (cons (cons '%#ref
                                                               (cons _id30952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '(%#quote 0) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (cons _L30914_ '())
                                       (cons (cons '%#call
                                                   (cons '(%#ref ##vector-ref)
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _id30952_ '()))
                       (cons '(%#quote 1) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))
                     (cons _body30955_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                          (___kont4235142352_
                           (lambda (_L30793_ _L30794_)
                             (let ((_body30808_
                                    (_xform-e29780_
                                     _L30793_
                                     _kont-id30165_
                                     _kont-box30166_
                                     _negation-id30167_)))
                               (cons '%#let-values
                                     (cons _L30794_ (cons _body30808_ '()))))))
                          (___kont4235342354_
                           (lambda (_L30737_ _L30738_ _L30739_)
                             (let ((_lambda-expr30762_
                                    (_xform-loop-e29781_
                                     _L30738_
                                     _kont-id30165_
                                     _kont-box30166_
                                     _negation-id30167_)))
                               (cons '%#letrec-values
                                     (cons (cons (cons (cons _L30739_ '())
                                                       (cons _lambda-expr30762_
                                                             '()))
                                                 '())
                                           (cons _L30737_ '()))))))
                          (___kont4235542356_
                           (lambda (_L30399_ _L30400_ _L30401_)
                             (let* ((___stx4224742248_ _L30400_)
                                    (_g3043030473_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4224742248_))))
                               (let ((___kont4224942250_
                                      (lambda (_L30589_
                                               _L30590_
                                               _L30591_
                                               _L30592_)
                                        (let ((_kont30633_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3062530628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3062630630_)
                               (cons _g3062530628_ _g3062630630_))
                             '()
                             _L30401_))
                   (cons _L30591_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box30166_
                                             _kont30633_)
                                            (let* ((_kont-args30644_
                                                    (map (lambda (_id30635_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id30635_ '())))
                 (begin
                   '#!void
                   (foldr1 (lambda (_g3063630639_ _g3063730641_)
                             (cons _g3063630639_ _g3063730641_))
                           '()
                           _L30401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_body30646_
                                                    (cons '%#if
                                                          (cons _L30592_
                                                                (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#ref
                                                (cons _kont-id30165_ '()))
                                          _kont-args30644_))
                              (cons (cons (gx#datum->syntax__0 '#f '%#call)
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L30590_ '()))
                                                (cons (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)
                                                            (cons _L30589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g3064830651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3064930653_)
                             (cons _g3064830651_ _g3064930653_))
                           '()
                           _L30401_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _body30646_
                                                  (cons '%#let-values
                                                        (cons (map (lambda (_id30656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _arg30657_)
                             (cons (cons _id30656_ '()) (cons _arg30657_ '())))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3065830661_ _g3065930663_)
                                       (cons _g3065830661_ _g3065930663_))
                                     '()
                                     _L30401_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3066530668_ _g3066630670_)
                                       (cons _g3066530668_ _g3066630670_))
                                     '()
                                     _L30399_)))
                      (cons _body30646_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont4225142252_
                                      (lambda ()
                                        (let ((_kont30487_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3047930482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3048030484_)
                               (cons _g3047930482_ _g3048030484_))
                             '()
                             _L30401_))
                   (cons _L30400_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box30166_
                                             _kont30487_)
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kont-id30165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3048830491_ _g3048930493_)
                            (cons _g3048830491_ _g3048930493_))
                          '()
                          _L30399_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((___match4234242343_
                                        (lambda (_e3043630501_
                                                 _hd3043730504_
                                                 _tl3043830506_
                                                 _e3043930509_
                                                 _hd3044030512_
                                                 _tl3044130514_
                                                 _e3044230517_
                                                 _hd3044330520_
                                                 _tl3044430522_
                                                 _e3044530525_
                                                 _hd3044630528_
                                                 _tl3044730530_
                                                 _e3044830533_
                                                 _hd3044930536_
                                                 _tl3045030538_
                                                 _e3045130541_
                                                 _hd3045230544_
                                                 _tl3045330546_
                                                 _e3045430549_
                                                 _hd3045530552_
                                                 _tl3045630554_
                                                 _e3045730557_
                                                 _hd3045830560_
                                                 _tl3045930562_
                                                 _e3046030565_
                                                 _hd3046130568_
                                                 _tl3046230570_
                                                 _e3046330573_
                                                 _hd3046430576_
                                                 _tl3046530578_
                                                 _e3046630581_
                                                 _hd3046730584_
                                                 _tl3046830586_)
                                          (let ((_L30589_ _hd3046730584_)
                                                (_L30590_ _hd3045830560_)
                                                (_L30591_ _hd3044330520_)
                                                (_L30592_ _hd3044030512_))
                                            (if (gx#free-identifier=?
                                                 _L30590_
                                                 _negation-id30167_)
                                                (___kont4224942250_
                                                 _L30589_
                                                 _L30590_
                                                 _L30591_
                                                 _L30592_)
                                                (___kont4225142252_))))))
                                   (if (gx#stx-pair? ___stx4224742248_)
                                       (let ((_e3043630501_
                                              (gx#stx-e ___stx4224742248_)))
                                         (let ((_tl3043830506_
                                                (##cdr _e3043630501_))
                                               (_hd3043730504_
                                                (##car _e3043630501_)))
                                           (if (gx#identifier? _hd3043730504_)
                                               (if (gx#stx-eq?
                                                    '%#if
                                                    _hd3043730504_)
                                                   (if (gx#stx-pair?
                                                        _tl3043830506_)
                                                       (let ((_e3043930509_
                                                              (gx#stx-e
                                                               _tl3043830506_)))
                                                         (let ((_tl3044130514_
                                                                (##cdr _e3043930509_))
                                                               (_hd3044030512_
                                                                (##car _e3043930509_)))
                                                           (if (gx#stx-pair?
                                                                _tl3044130514_)
                                                               (let ((_e3044230517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3044130514_)))
                         (let ((_tl3044430522_ (##cdr _e3044230517_))
                               (_hd3044330520_ (##car _e3044230517_)))
                           (if (gx#stx-pair? _tl3044430522_)
                               (let ((_e3044530525_ (gx#stx-e _tl3044430522_)))
                                 (let ((_tl3044730530_ (##cdr _e3044530525_))
                                       (_hd3044630528_ (##car _e3044530525_)))
                                   (if (gx#stx-pair? _hd3044630528_)
                                       (let ((_e3044830533_
                                              (gx#stx-e _hd3044630528_)))
                                         (let ((_tl3045030538_
                                                (##cdr _e3044830533_))
                                               (_hd3044930536_
                                                (##car _e3044830533_)))
                                           (if (gx#identifier? _hd3044930536_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd3044930536_)
                                                   (if (gx#stx-pair?
                                                        _tl3045030538_)
                                                       (let ((_e3045130541_
                                                              (gx#stx-e
                                                               _tl3045030538_)))
                                                         (let ((_tl3045330546_
                                                                (##cdr _e3045130541_))
                                                               (_hd3045230544_
                                                                (##car _e3045130541_)))
                                                           (if (gx#stx-pair?
                                                                _hd3045230544_)
                                                               (let ((_e3045430549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd3045230544_)))
                         (let ((_tl3045630554_ (##cdr _e3045430549_))
                               (_hd3045530552_ (##car _e3045430549_)))
                           (if (gx#identifier? _hd3045530552_)
                               (if (gx#stx-eq? '%#ref _hd3045530552_)
                                   (if (gx#stx-pair? _tl3045630554_)
                                       (let ((_e3045730557_
                                              (gx#stx-e _tl3045630554_)))
                                         (let ((_tl3045930562_
                                                (##cdr _e3045730557_))
                                               (_hd3045830560_
                                                (##car _e3045730557_)))
                                           (if (gx#stx-null? _tl3045930562_)
                                               (if (gx#stx-pair?
                                                    _tl3045330546_)
                                                   (let ((_e3046030565_
                                                          (gx#stx-e
                                                           _tl3045330546_)))
                                                     (let ((_tl3046230570_
                                                            (##cdr _e3046030565_))
                                                           (_hd3046130568_
                                                            (##car _e3046030565_)))
                                                       (if (gx#stx-pair?
                                                            _hd3046130568_)
                                                           (let ((_e3046330573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3046130568_)))
                     (let ((_tl3046530578_ (##cdr _e3046330573_))
                           (_hd3046430576_ (##car _e3046330573_)))
                       (if (gx#identifier? _hd3046430576_)
                           (if (gx#stx-eq? '%#ref _hd3046430576_)
                               (if (gx#stx-pair? _tl3046530578_)
                                   (let ((_e3046630581_
                                          (gx#stx-e _tl3046530578_)))
                                     (let ((_tl3046830586_
                                            (##cdr _e3046630581_))
                                           (_hd3046730584_
                                            (##car _e3046630581_)))
                                       (if (gx#stx-null? _tl3046830586_)
                                           (if (gx#stx-null? _tl3046230570_)
                                               (if (gx#stx-null?
                                                    _tl3044730530_)
                                                   (___match4234242343_
                                                    _e3043630501_
                                                    _hd3043730504_
                                                    _tl3043830506_
                                                    _e3043930509_
                                                    _hd3044030512_
                                                    _tl3044130514_
                                                    _e3044230517_
                                                    _hd3044330520_
                                                    _tl3044430522_
                                                    _e3044530525_
                                                    _hd3044630528_
                                                    _tl3044730530_
                                                    _e3044830533_
                                                    _hd3044930536_
                                                    _tl3045030538_
                                                    _e3045130541_
                                                    _hd3045230544_
                                                    _tl3045330546_
                                                    _e3045430549_
                                                    _hd3045530552_
                                                    _tl3045630554_
                                                    _e3045730557_
                                                    _hd3045830560_
                                                    _tl3045930562_
                                                    _e3046030565_
                                                    _hd3046130568_
                                                    _tl3046230570_
                                                    _e3046330573_
                                                    _hd3046430576_
                                                    _tl3046530578_
                                                    _e3046630581_
                                                    _hd3046730584_
                                                    _tl3046830586_)
                                                   (___kont4225142252_))
                                               (___kont4225142252_))
                                           (___kont4225142252_))))
                                   (___kont4225142252_))
                               (___kont4225142252_))
                           (___kont4225142252_))))
                   (___kont4225142252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4225142252_))
                                               (___kont4225142252_))))
                                       (___kont4225142252_))
                                   (___kont4225142252_))
                               (___kont4225142252_))))
                       (___kont4225142252_))))
               (___kont4225142252_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4225142252_))
                                               (___kont4225142252_))))
                                       (___kont4225142252_))))
                               (___kont4225142252_))))
                       (___kont4225142252_))))
               (___kont4225142252_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4225142252_))
                                               (___kont4225142252_))))
                                       (___kont4225142252_))))))))
                      (let* ((___match4260242603_
                              (lambda (_e3026930311_
                                       _hd3027030314_
                                       _tl3027130316_
                                       _e3027230319_
                                       _hd3027330322_
                                       _tl3027430324_
                                       _e3027530327_
                                       _hd3027630330_
                                       _tl3027730332_
                                       _e3027830335_
                                       _hd3027930338_
                                       _tl3028030340_
                                       ___splice4235742358_
                                       _target3028130343_
                                       _tl3028330345_)
                                (letrec ((_loop3028430348_
                                          (lambda (_hd3028230351_
                                                   _id3028830353_)
                                            (if (gx#stx-pair? _hd3028230351_)
                                                (let ((_e3028530356_
                                                       (gx#stx-e
                                                        _hd3028230351_)))
                                                  (let ((_lp-tl3028730361_
                                                         (##cdr _e3028530356_))
                                                        (_lp-hd3028630359_
                                                         (##car _e3028530356_)))
                                                    (_loop3028430348_
                                                     _lp-tl3028730361_
                                                     (cons _lp-hd3028630359_
                                                           _id3028830353_))))
                                                (let ((_id3028930364_
                                                       (reverse _id3028830353_)))
                                                  (if (gx#stx-pair?
                                                       _tl3028030340_)
                                                      (let ((_e3029030367_
                                                             (gx#stx-e
                                                              _tl3028030340_)))
                                                        (let ((_tl3029230372_
                                                               (##cdr _e3029030367_))
                                                              (_hd3029130370_
                                                               (##car _e3029030367_)))
                                                          (if (gx#stx-null?
                                                               _tl3029230372_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3027430324_)
                          (let ((___splice4235942360_
                                 (gx#syntax-split-splice _tl3027430324_ '0)))
                            (let ((_tl3029530377_
                                   (##vector-ref ___splice4235942360_ '1))
                                  (_target3029330375_
                                   (##vector-ref ___splice4235942360_ '0)))
                              (if (gx#stx-null? _tl3029530377_)
                                  (letrec ((_loop3029630380_
                                            (lambda (_hd3029430383_
                                                     _arg3030030385_)
                                              (if (gx#stx-pair? _hd3029430383_)
                                                  (let ((_e3029730388_
                                                         (gx#stx-e
                                                          _hd3029430383_)))
                                                    (let ((_lp-tl3029930393_
                                                           (##cdr _e3029730388_))
                                                          (_lp-hd3029830391_
                                                           (##car _e3029730388_)))
                                                      (_loop3029630380_
                                                       _lp-tl3029930393_
                                                       (cons _lp-hd3029830391_
                                                             _arg3030030385_))))
                                                  (let ((_arg3030130396_
                                                         (reverse _arg3030030385_)))
                                                    (___kont4235542356_
                                                     _arg3030130396_
                                                     _hd3029130370_
                                                     _id3028930364_))))))
                                    (_loop3029630380_ _target3029330375_ '()))
                                  (_g3017330306_))))
                          (_g3017330306_))
                      (_g3017330306_))))
              (_g3017330306_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop3028430348_ _target3028130343_ '()))))
                             (___match4248442485_
                              (lambda (_e3019530815_
                                       _hd3019630818_
                                       _tl3019730820_
                                       _e3019830823_
                                       _hd3019930826_
                                       _tl3020030828_
                                       _e3020130831_
                                       _hd3020230834_
                                       _tl3020330836_
                                       _e3020430839_
                                       _hd3020530842_
                                       _tl3020630844_
                                       _e3020730847_
                                       _hd3020830850_
                                       _tl3020930852_
                                       _e3021030855_
                                       _hd3021130858_
                                       _tl3021230860_
                                       _e3021330863_
                                       _hd3021430866_
                                       _tl3021530868_
                                       _e3021630871_
                                       _hd3021730874_
                                       _tl3021830876_
                                       _e3021930879_
                                       _hd3022030882_
                                       _tl3022130884_
                                       _e3022230887_
                                       _hd3022330890_
                                       _tl3022430892_
                                       _e3022530895_
                                       _hd3022630898_
                                       _tl3022730900_
                                       _e3022830903_
                                       _hd3022930906_
                                       _tl3023030908_)
                                (let ((_L30911_ _hd3022930906_)
                                      (_L30912_ _tl3022130884_)
                                      (_L30913_ _hd3022630898_)
                                      (_L30914_ _hd3021130858_)
                                      (_L30915_ _hd3020830850_))
                                  (if (gxc#runtime-identifier=?
                                       _L30913_
                                       'gx#syntax-split-splice)
                                      (___kont4234942350_
                                       _L30911_
                                       _L30912_
                                       _L30913_
                                       _L30914_
                                       _L30915_)
                                      (___kont4235142352_
                                       _hd3022930906_
                                       _hd3019930826_))))))
                        (if (gx#stx-pair? ___stx4234542346_)
                            (let ((_e3017830963_ (gx#stx-e ___stx4234542346_)))
                              (let ((_tl3018030968_ (##cdr _e3017830963_))
                                    (_hd3017930966_ (##car _e3017830963_)))
                                (if (gx#identifier? _hd3017930966_)
                                    (if (gx#stx-eq? '%#if _hd3017930966_)
                                        (if (gx#stx-pair? _tl3018030968_)
                                            (let ((_e3018130971_
                                                   (gx#stx-e _tl3018030968_)))
                                              (let ((_tl3018330976_
                                                     (##cdr _e3018130971_))
                                                    (_hd3018230974_
                                                     (##car _e3018130971_)))
                                                (if (gx#stx-pair?
                                                     _tl3018330976_)
                                                    (let ((_e3018430979_
                                                           (gx#stx-e
                                                            _tl3018330976_)))
                                                      (let ((_tl3018630984_
                                                             (##cdr _e3018430979_))
                                                            (_hd3018530982_
                                                             (##car _e3018430979_)))
                                                        (if (gx#stx-pair?
                                                             _tl3018630984_)
                                                            (let ((_e3018730987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3018630984_)))
                      (let ((_tl3018930992_ (##cdr _e3018730987_))
                            (_hd3018830990_ (##car _e3018730987_)))
                        (if (gx#stx-null? _tl3018930992_)
                            (___kont4234742348_
                             _hd3018830990_
                             _hd3018530982_
                             _hd3018230974_)
                            (_g3017330306_))))
                    (_g3017330306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3017330306_))))
                                            (_g3017330306_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3017930966_)
                                            (if (gx#stx-pair? _tl3018030968_)
                                                (let ((_e3019830823_
                                                       (gx#stx-e
                                                        _tl3018030968_)))
                                                  (let ((_tl3020030828_
                                                         (##cdr _e3019830823_))
                                                        (_hd3019930826_
                                                         (##car _e3019830823_)))
                                                    (if (gx#stx-pair?
                                                         _hd3019930826_)
                                                        (let ((_e3020130831_
                                                               (gx#stx-e
                                                                _hd3019930826_)))
                                                          (let ((_tl3020330836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3020130831_))
                        (_hd3020230834_ (##car _e3020130831_)))
                    (if (gx#stx-pair? _hd3020230834_)
                        (let ((_e3020430839_ (gx#stx-e _hd3020230834_)))
                          (let ((_tl3020630844_ (##cdr _e3020430839_))
                                (_hd3020530842_ (##car _e3020430839_)))
                            (if (gx#stx-pair? _hd3020530842_)
                                (let ((_e3020730847_
                                       (gx#stx-e _hd3020530842_)))
                                  (let ((_tl3020930852_ (##cdr _e3020730847_))
                                        (_hd3020830850_ (##car _e3020730847_)))
                                    (if (gx#stx-pair? _tl3020930852_)
                                        (let ((_e3021030855_
                                               (gx#stx-e _tl3020930852_)))
                                          (let ((_tl3021230860_
                                                 (##cdr _e3021030855_))
                                                (_hd3021130858_
                                                 (##car _e3021030855_)))
                                            (if (gx#stx-null? _tl3021230860_)
                                                (if (gx#stx-pair?
                                                     _tl3020630844_)
                                                    (let ((_e3021330863_
                                                           (gx#stx-e
                                                            _tl3020630844_)))
                                                      (let ((_tl3021530868_
                                                             (##cdr _e3021330863_))
                                                            (_hd3021430866_
                                                             (##car _e3021330863_)))
                                                        (if (gx#stx-pair?
                                                             _hd3021430866_)
                                                            (let ((_e3021630871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3021430866_)))
                      (let ((_tl3021830876_ (##cdr _e3021630871_))
                            (_hd3021730874_ (##car _e3021630871_)))
                        (if (gx#identifier? _hd3021730874_)
                            (if (gx#stx-eq? '%#call _hd3021730874_)
                                (if (gx#stx-pair? _tl3021830876_)
                                    (let ((_e3021930879_
                                           (gx#stx-e _tl3021830876_)))
                                      (let ((_tl3022130884_
                                             (##cdr _e3021930879_))
                                            (_hd3022030882_
                                             (##car _e3021930879_)))
                                        (if (gx#stx-pair? _hd3022030882_)
                                            (let ((_e3022230887_
                                                   (gx#stx-e _hd3022030882_)))
                                              (let ((_tl3022430892_
                                                     (##cdr _e3022230887_))
                                                    (_hd3022330890_
                                                     (##car _e3022230887_)))
                                                (if (gx#identifier?
                                                     _hd3022330890_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3022330890_)
                                                        (if (gx#stx-pair?
                                                             _tl3022430892_)
                                                            (let ((_e3022530895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3022430892_)))
                      (let ((_tl3022730900_ (##cdr _e3022530895_))
                            (_hd3022630898_ (##car _e3022530895_)))
                        (if (gx#stx-null? _tl3022730900_)
                            (if (gx#stx-null? _tl3021530868_)
                                (if (gx#stx-null? _tl3020330836_)
                                    (if (gx#stx-pair? _tl3020030828_)
                                        (let ((_e3022830903_
                                               (gx#stx-e _tl3020030828_)))
                                          (let ((_tl3023030908_
                                                 (##cdr _e3022830903_))
                                                (_hd3022930906_
                                                 (##car _e3022830903_)))
                                            (if (gx#stx-null? _tl3023030908_)
                                                (___match4248442485_
                                                 _e3017830963_
                                                 _hd3017930966_
                                                 _tl3018030968_
                                                 _e3019830823_
                                                 _hd3019930826_
                                                 _tl3020030828_
                                                 _e3020130831_
                                                 _hd3020230834_
                                                 _tl3020330836_
                                                 _e3020430839_
                                                 _hd3020530842_
                                                 _tl3020630844_
                                                 _e3020730847_
                                                 _hd3020830850_
                                                 _tl3020930852_
                                                 _e3021030855_
                                                 _hd3021130858_
                                                 _tl3021230860_
                                                 _e3021330863_
                                                 _hd3021430866_
                                                 _tl3021530868_
                                                 _e3021630871_
                                                 _hd3021730874_
                                                 _tl3021830876_
                                                 _e3021930879_
                                                 _hd3022030882_
                                                 _tl3022130884_
                                                 _e3022230887_
                                                 _hd3022330890_
                                                 _tl3022430892_
                                                 _e3022530895_
                                                 _hd3022630898_
                                                 _tl3022730900_
                                                 _e3022830903_
                                                 _hd3022930906_
                                                 _tl3023030908_)
                                                (_g3017330306_))))
                                        (_g3017330306_))
                                    (if (gx#stx-pair? _tl3020030828_)
                                        (let ((_e3023930785_
                                               (gx#stx-e _tl3020030828_)))
                                          (let ((_tl3024130790_
                                                 (##cdr _e3023930785_))
                                                (_hd3024030788_
                                                 (##car _e3023930785_)))
                                            (if (gx#stx-null? _tl3024130790_)
                                                (___kont4235142352_
                                                 _hd3024030788_
                                                 _hd3019930826_)
                                                (_g3017330306_))))
                                        (_g3017330306_)))
                                (if (gx#stx-pair? _tl3020030828_)
                                    (let ((_e3023930785_
                                           (gx#stx-e _tl3020030828_)))
                                      (let ((_tl3024130790_
                                             (##cdr _e3023930785_))
                                            (_hd3024030788_
                                             (##car _e3023930785_)))
                                        (if (gx#stx-null? _tl3024130790_)
                                            (___kont4235142352_
                                             _hd3024030788_
                                             _hd3019930826_)
                                            (_g3017330306_))))
                                    (_g3017330306_)))
                            (if (gx#stx-pair? _tl3020030828_)
                                (let ((_e3023930785_
                                       (gx#stx-e _tl3020030828_)))
                                  (let ((_tl3024130790_ (##cdr _e3023930785_))
                                        (_hd3024030788_ (##car _e3023930785_)))
                                    (if (gx#stx-null? _tl3024130790_)
                                        (___kont4235142352_
                                         _hd3024030788_
                                         _hd3019930826_)
                                        (_g3017330306_))))
                                (_g3017330306_)))))
                    (if (gx#stx-pair? _tl3020030828_)
                        (let ((_e3023930785_ (gx#stx-e _tl3020030828_)))
                          (let ((_tl3024130790_ (##cdr _e3023930785_))
                                (_hd3024030788_ (##car _e3023930785_)))
                            (if (gx#stx-null? _tl3024130790_)
                                (___kont4235142352_
                                 _hd3024030788_
                                 _hd3019930826_)
                                (_g3017330306_))))
                        (_g3017330306_)))
                (if (gx#stx-pair? _tl3020030828_)
                    (let ((_e3023930785_ (gx#stx-e _tl3020030828_)))
                      (let ((_tl3024130790_ (##cdr _e3023930785_))
                            (_hd3024030788_ (##car _e3023930785_)))
                        (if (gx#stx-null? _tl3024130790_)
                            (___kont4235142352_ _hd3024030788_ _hd3019930826_)
                            (_g3017330306_))))
                    (_g3017330306_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3020030828_)
                                                        (let ((_e3023930785_
                                                               (gx#stx-e
                                                                _tl3020030828_)))
                                                          (let ((_tl3024130790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3023930785_))
                        (_hd3024030788_ (##car _e3023930785_)))
                    (if (gx#stx-null? _tl3024130790_)
                        (___kont4235142352_ _hd3024030788_ _hd3019930826_)
                        (_g3017330306_))))
                (_g3017330306_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3020030828_)
                                                (let ((_e3023930785_
                                                       (gx#stx-e
                                                        _tl3020030828_)))
                                                  (let ((_tl3024130790_
                                                         (##cdr _e3023930785_))
                                                        (_hd3024030788_
                                                         (##car _e3023930785_)))
                                                    (if (gx#stx-null?
                                                         _tl3024130790_)
                                                        (___kont4235142352_
                                                         _hd3024030788_
                                                         _hd3019930826_)
                                                        (_g3017330306_))))
                                                (_g3017330306_)))))
                                    (if (gx#stx-pair? _tl3020030828_)
                                        (let ((_e3023930785_
                                               (gx#stx-e _tl3020030828_)))
                                          (let ((_tl3024130790_
                                                 (##cdr _e3023930785_))
                                                (_hd3024030788_
                                                 (##car _e3023930785_)))
                                            (if (gx#stx-null? _tl3024130790_)
                                                (___kont4235142352_
                                                 _hd3024030788_
                                                 _hd3019930826_)
                                                (_g3017330306_))))
                                        (_g3017330306_)))
                                (if (gx#stx-pair? _tl3020030828_)
                                    (let ((_e3023930785_
                                           (gx#stx-e _tl3020030828_)))
                                      (let ((_tl3024130790_
                                             (##cdr _e3023930785_))
                                            (_hd3024030788_
                                             (##car _e3023930785_)))
                                        (if (gx#stx-null? _tl3024130790_)
                                            (___kont4235142352_
                                             _hd3024030788_
                                             _hd3019930826_)
                                            (_g3017330306_))))
                                    (_g3017330306_)))
                            (if (gx#stx-pair? _tl3020030828_)
                                (let ((_e3023930785_
                                       (gx#stx-e _tl3020030828_)))
                                  (let ((_tl3024130790_ (##cdr _e3023930785_))
                                        (_hd3024030788_ (##car _e3023930785_)))
                                    (if (gx#stx-null? _tl3024130790_)
                                        (___kont4235142352_
                                         _hd3024030788_
                                         _hd3019930826_)
                                        (_g3017330306_))))
                                (_g3017330306_)))))
                    (if (gx#stx-pair? _tl3020030828_)
                        (let ((_e3023930785_ (gx#stx-e _tl3020030828_)))
                          (let ((_tl3024130790_ (##cdr _e3023930785_))
                                (_hd3024030788_ (##car _e3023930785_)))
                            (if (gx#stx-null? _tl3024130790_)
                                (___kont4235142352_
                                 _hd3024030788_
                                 _hd3019930826_)
                                (_g3017330306_))))
                        (_g3017330306_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3020030828_)
                                                        (let ((_e3023930785_
                                                               (gx#stx-e
                                                                _tl3020030828_)))
                                                          (let ((_tl3024130790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3023930785_))
                        (_hd3024030788_ (##car _e3023930785_)))
                    (if (gx#stx-null? _tl3024130790_)
                        (___kont4235142352_ _hd3024030788_ _hd3019930826_)
                        (_g3017330306_))))
                (_g3017330306_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _tl3020030828_)
                                                    (let ((_e3023930785_
                                                           (gx#stx-e
                                                            _tl3020030828_)))
                                                      (let ((_tl3024130790_
                                                             (##cdr _e3023930785_))
                                                            (_hd3024030788_
                                                             (##car _e3023930785_)))
                                                        (if (gx#stx-null?
                                                             _tl3024130790_)
                                                            (___kont4235142352_
                                                             _hd3024030788_
                                                             _hd3019930826_)
                                                            (_g3017330306_))))
                                                    (_g3017330306_)))))
                                        (if (gx#stx-pair? _tl3020030828_)
                                            (let ((_e3023930785_
                                                   (gx#stx-e _tl3020030828_)))
                                              (let ((_tl3024130790_
                                                     (##cdr _e3023930785_))
                                                    (_hd3024030788_
                                                     (##car _e3023930785_)))
                                                (if (gx#stx-null?
                                                     _tl3024130790_)
                                                    (___kont4235142352_
                                                     _hd3024030788_
                                                     _hd3019930826_)
                                                    (_g3017330306_))))
                                            (_g3017330306_)))))
                                (if (gx#stx-pair? _tl3020030828_)
                                    (let ((_e3023930785_
                                           (gx#stx-e _tl3020030828_)))
                                      (let ((_tl3024130790_
                                             (##cdr _e3023930785_))
                                            (_hd3024030788_
                                             (##car _e3023930785_)))
                                        (if (gx#stx-null? _tl3024130790_)
                                            (___kont4235142352_
                                             _hd3024030788_
                                             _hd3019930826_)
                                            (_g3017330306_))))
                                    (_g3017330306_)))))
                        (if (gx#stx-pair? _tl3020030828_)
                            (let ((_e3023930785_ (gx#stx-e _tl3020030828_)))
                              (let ((_tl3024130790_ (##cdr _e3023930785_))
                                    (_hd3024030788_ (##car _e3023930785_)))
                                (if (gx#stx-null? _tl3024130790_)
                                    (___kont4235142352_
                                     _hd3024030788_
                                     _hd3019930826_)
                                    (_g3017330306_))))
                            (_g3017330306_)))))
                (if (gx#stx-pair? _tl3020030828_)
                    (let ((_e3023930785_ (gx#stx-e _tl3020030828_)))
                      (let ((_tl3024130790_ (##cdr _e3023930785_))
                            (_hd3024030788_ (##car _e3023930785_)))
                        (if (gx#stx-null? _tl3024130790_)
                            (___kont4235142352_ _hd3024030788_ _hd3019930826_)
                            (_g3017330306_))))
                    (_g3017330306_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3017330306_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3017930966_)
                                                (if (gx#stx-pair?
                                                     _tl3018030968_)
                                                    (let ((_e3024830689_
                                                           (gx#stx-e
                                                            _tl3018030968_)))
                                                      (let ((_tl3025030694_
                                                             (##cdr _e3024830689_))
                                                            (_hd3024930692_
                                                             (##car _e3024830689_)))
                                                        (if (gx#stx-pair?
                                                             _hd3024930692_)
                                                            (let ((_e3025130697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3024930692_)))
                      (let ((_tl3025330702_ (##cdr _e3025130697_))
                            (_hd3025230700_ (##car _e3025130697_)))
                        (if (gx#stx-pair? _hd3025230700_)
                            (let ((_e3025430705_ (gx#stx-e _hd3025230700_)))
                              (let ((_tl3025630710_ (##cdr _e3025430705_))
                                    (_hd3025530708_ (##car _e3025430705_)))
                                (if (gx#stx-pair? _hd3025530708_)
                                    (let ((_e3025730713_
                                           (gx#stx-e _hd3025530708_)))
                                      (let ((_tl3025930718_
                                             (##cdr _e3025730713_))
                                            (_hd3025830716_
                                             (##car _e3025730713_)))
                                        (if (gx#stx-null? _tl3025930718_)
                                            (if (gx#stx-pair? _tl3025630710_)
                                                (let ((_e3026030721_
                                                       (gx#stx-e
                                                        _tl3025630710_)))
                                                  (let ((_tl3026230726_
                                                         (##cdr _e3026030721_))
                                                        (_hd3026130724_
                                                         (##car _e3026030721_)))
                                                    (if (gx#stx-null?
                                                         _tl3026230726_)
                                                        (if (gx#stx-null?
                                                             _tl3025330702_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3025030694_)
                        (let ((_e3026330729_ (gx#stx-e _tl3025030694_)))
                          (let ((_tl3026530734_ (##cdr _e3026330729_))
                                (_hd3026430732_ (##car _e3026330729_)))
                            (if (gx#stx-null? _tl3026530734_)
                                (___kont4235342354_
                                 _hd3026430732_
                                 _hd3026130724_
                                 _hd3025830716_)
                                (_g3017330306_))))
                        (_g3017330306_))
                    (_g3017330306_))
                (_g3017330306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3017330306_))
                                            (_g3017330306_))))
                                    (_g3017330306_))))
                            (_g3017330306_))))
                    (_g3017330306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3017330306_))
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd3017930966_)
                                                    (if (gx#stx-pair?
                                                         _tl3018030968_)
                                                        (let ((_e3027230319_
                                                               (gx#stx-e
                                                                _tl3018030968_)))
                                                          (let ((_tl3027430324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3027230319_))
                        (_hd3027330322_ (##car _e3027230319_)))
                    (if (gx#stx-pair? _hd3027330322_)
                        (let ((_e3027530327_ (gx#stx-e _hd3027330322_)))
                          (let ((_tl3027730332_ (##cdr _e3027530327_))
                                (_hd3027630330_ (##car _e3027530327_)))
                            (if (gx#identifier? _hd3027630330_)
                                (if (gx#stx-eq? '%#lambda _hd3027630330_)
                                    (if (gx#stx-pair? _tl3027730332_)
                                        (let ((_e3027830335_
                                               (gx#stx-e _tl3027730332_)))
                                          (let ((_tl3028030340_
                                                 (##cdr _e3027830335_))
                                                (_hd3027930338_
                                                 (##car _e3027830335_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3027930338_)
                                                (let ((___splice4235742358_
                                                       (gx#syntax-split-splice
                                                        _hd3027930338_
                                                        '0)))
                                                  (let ((_tl3028330345_
                                                         (##vector-ref
                                                          ___splice4235742358_
                                                          '1))
                                                        (_target3028130343_
                                                         (##vector-ref
                                                          ___splice4235742358_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3028330345_)
                                                        (___match4260242603_
                                                         _e3017830963_
                                                         _hd3017930966_
                                                         _tl3018030968_
                                                         _e3027230319_
                                                         _hd3027330322_
                                                         _tl3027430324_
                                                         _e3027530327_
                                                         _hd3027630330_
                                                         _tl3027730332_
                                                         _e3027830335_
                                                         _hd3027930338_
                                                         _tl3028030340_
                                                         ___splice4235742358_
                                                         _target3028130343_
                                                         _tl3028330345_)
                                                        (_g3017330306_))))
                                                (_g3017330306_))))
                                        (_g3017330306_))
                                    (_g3017330306_))
                                (_g3017330306_))))
                        (_g3017330306_))))
                (_g3017330306_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3017330306_)))))
                                    (_g3017330306_))))
                            (_g3017330306_)))))))
               (_xform-loop-e29781_
                (lambda (_expr29990_
                         _kont-id29991_
                         _kont-box29992_
                         _negation-id29993_)
                  (let* ((_g2999530035_
                          (lambda (_g2999630032_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2999630032_)))
                         (_g2999430161_
                          (lambda (_g2999630038_)
                            (if (gx#stx-pair? _g2999630038_)
                                (let ((_e3000130040_ (gx#stx-e _g2999630038_)))
                                  (let ((_hd3000230043_ (##car _e3000130040_))
                                        (_tl3000330045_ (##cdr _e3000130040_)))
                                    (if (gx#identifier? _hd3000230043_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3000230043_)
                                            (if (gx#stx-pair? _tl3000330045_)
                                                (let ((_e3000430048_
                                                       (gx#stx-e
                                                        _tl3000330045_)))
                                                  (let ((_hd3000530051_
                                                         (##car _e3000430048_))
                                                        (_tl3000630053_
                                                         (##cdr _e3000430048_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3000530051_)
                                                        (let ((_g42920_
                                                               (gx#syntax-split-splice
                                                                _hd3000530051_
                                                                '0)))
                                                          (begin
                                                            (let ((_g42921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g42920_)
                               (##vector-length _g42920_)
                               1)))
                      (if (not (##fx= _g42921_ 2))
                          (error "Context expects 2 values" _g42921_)))
                    (let ((_target3000730056_ (##vector-ref _g42920_ 0))
                          (_tl3000930058_ (##vector-ref _g42920_ 1)))
                      (if (gx#stx-null? _tl3000930058_)
                          (letrec ((_loop3001030061_
                                    (lambda (_hd3000830064_ _id3001430066_)
                                      (if (gx#stx-pair? _hd3000830064_)
                                          (let ((_e3001130069_
                                                 (gx#stx-e _hd3000830064_)))
                                            (let ((_lp-hd3001230072_
                                                   (##car _e3001130069_))
                                                  (_lp-tl3001330074_
                                                   (##cdr _e3001130069_)))
                                              (_loop3001030061_
                                               _lp-tl3001330074_
                                               (cons _lp-hd3001230072_
                                                     _id3001430066_))))
                                          (let ((_id3001530077_
                                                 (reverse _id3001430066_)))
                                            (if (gx#stx-pair? _tl3000630053_)
                                                (let ((_e3001630080_
                                                       (gx#stx-e
                                                        _tl3000630053_)))
                                                  (let ((_hd3001730083_
                                                         (##car _e3001630080_))
                                                        (_tl3001830085_
                                                         (##cdr _e3001630080_)))
                                                    (if (gx#stx-pair?
                                                         _hd3001730083_)
                                                        (let ((_e3001930088_
                                                               (gx#stx-e
                                                                _hd3001730083_)))
                                                          (let ((_hd3002030091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3001930088_))
                        (_tl3002130093_ (##cdr _e3001930088_)))
                    (if (gx#identifier? _hd3002030091_)
                        (if (gx#stx-eq? '%#if _hd3002030091_)
                            (if (gx#stx-pair? _tl3002130093_)
                                (let ((_e3002230096_
                                       (gx#stx-e _tl3002130093_)))
                                  (let ((_hd3002330099_ (##car _e3002230096_))
                                        (_tl3002430101_ (##cdr _e3002230096_)))
                                    (if (gx#stx-pair? _tl3002430101_)
                                        (let ((_e3002530104_
                                               (gx#stx-e _tl3002430101_)))
                                          (let ((_hd3002630107_
                                                 (##car _e3002530104_))
                                                (_tl3002730109_
                                                 (##cdr _e3002530104_)))
                                            (if (gx#stx-pair? _tl3002730109_)
                                                (let ((_e3002830112_
                                                       (gx#stx-e
                                                        _tl3002730109_)))
                                                  (let ((_hd3002930115_
                                                         (##car _e3002830112_))
                                                        (_tl3003030117_
                                                         (##cdr _e3002830112_)))
                                                    (if (gx#stx-null?
                                                         _tl3003030117_)
                                                        (if (gx#stx-null?
                                                             _tl3001830085_)
                                                            ((lambda (_L30120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L30121_
                              _L30122_
                              _L30123_)
                       (let ((_E30152_
                              (_xform-e29780_
                               _L30120_
                               _kont-id29991_
                               _kont-box29992_
                               _negation-id29993_)))
                         (cons '%#lambda
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3015330156_
                                                        _g3015430158_)
                                                 (cons _g3015330156_
                                                       _g3015430158_))
                                               '()
                                               _L30123_))
                                     (cons (cons '%#if
                                                 (cons _L30122_
                                                       (cons _L30121_
                                                             (cons _E30152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _hd3002930115_
                     _hd3002630107_
                     _hd3002330099_
                     _id3001530077_)
                    (_g2999530035_ _g2999630038_))
                (_g2999530035_ _g2999630038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2999530035_
                                                 _g2999630038_))))
                                        (_g2999530035_ _g2999630038_))))
                                (_g2999530035_ _g2999630038_))
                            (_g2999530035_ _g2999630038_))
                        (_g2999530035_ _g2999630038_))))
                (_g2999530035_ _g2999630038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2999530035_
                                                 _g2999630038_)))))))
                            (_loop3001030061_ _target3000730056_ '()))
                          (_g2999530035_ _g2999630038_)))))
                (_g2999530035_ _g2999630038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2999530035_ _g2999630038_))
                                            (_g2999530035_ _g2999630038_))
                                        (_g2999530035_ _g2999630038_))))
                                (_g2999530035_ _g2999630038_)))))
                    (_g2999430161_ _expr29990_))))
               (_clause-e29782_
                (lambda (_clause-lambda29860_ _kont-id29861_ _rest29862_)
                  (letrec* ((_kont-box29864_ (box '#f)))
                    (let* ((_negation-id29904_
                            (let* ((_rest2986529875_ _rest29862_)
                                   (_else2986729883_
                                    (lambda () _negation-id29778_))
                                   (_K2986929889_
                                    (lambda (_clause29886_ _clause-id29887_)
                                      _clause-id29887_)))
                              (if (##pair? _rest2986529875_)
                                  (let ((_hd2987029892_
                                         (##car _rest2986529875_)))
                                    (if (##pair? _hd2987029892_)
                                        (let ((_hd2987229895_
                                               (##car _hd2987029892_))
                                              (_tl2987329897_
                                               (##cdr _hd2987029892_)))
                                          (let* ((_clause-id29900_
                                                  _hd2987229895_)
                                                 (_clause29902_
                                                  _tl2987329897_))
                                            (_K2986929889_
                                             _clause29902_
                                             _clause-id29900_)))
                                        (_else2986729883_)))
                                  (_else2986729883_))))
                           (_g2990629926_
                            (lambda (_g2990729923_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2990729923_)))
                           (_g2990529987_
                            (lambda (_g2990729929_)
                              (if (gx#stx-pair? _g2990729929_)
                                  (let ((_e2991029931_
                                         (gx#stx-e _g2990729929_)))
                                    (let ((_hd2991129934_
                                           (##car _e2991029931_))
                                          (_tl2991229936_
                                           (##cdr _e2991029931_)))
                                      (if (gx#identifier? _hd2991129934_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd2991129934_)
                                              (if (gx#stx-pair? _tl2991229936_)
                                                  (let ((_e2991329939_
                                                         (gx#stx-e
                                                          _tl2991229936_)))
                                                    (let ((_hd2991429942_
                                                           (##car _e2991329939_))
                                                          (_tl2991529944_
                                                           (##cdr _e2991329939_)))
                                                      (if (gx#stx-pair?
                                                           _hd2991429942_)
                                                          (let ((_e2991629947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2991429942_)))
                    (let ((_hd2991729950_ (##car _e2991629947_))
                          (_tl2991829952_ (##cdr _e2991629947_)))
                      (if (gx#stx-null? _tl2991829952_)
                          (if (gx#stx-pair? _tl2991529944_)
                              (let ((_e2991929955_ (gx#stx-e _tl2991529944_)))
                                (let ((_hd2992029958_ (##car _e2991929955_))
                                      (_tl2992129960_ (##cdr _e2991929955_)))
                                  (if (gx#stx-null? _tl2992129960_)
                                      ((lambda (_L29963_ _L29964_)
                                         (let ((_body29985_
                                                (_xform-e29780_
                                                 _L29963_
                                                 _kont-id29861_
                                                 _kont-box29864_
                                                 _negation-id29904_)))
                                           (values (cons '%#lambda
                                                         (cons (cons _L29964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _body29985_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (unbox _kont-box29864_))))
                                       _hd2992029958_
                                       _hd2991729950_)
                                      (_g2990629926_ _g2990729929_))))
                              (_g2990629926_ _g2990729929_))
                          (_g2990629926_ _g2990729929_))))
                  (_g2990629926_ _g2990729929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2990629926_
                                                   _g2990729929_))
                                              (_g2990629926_ _g2990729929_))
                                          (_g2990629926_ _g2990729929_))))
                                  (_g2990629926_ _g2990729929_)))))
                      (_g2990529987_ _clause-lambda29860_))))))
        (let _lp29784_ ((_rest29786_ _clauses29777_)
                        (_clauses29787_ '())
                        (_konts29788_ '()))
          (let* ((_rest2978929797_ _rest29786_)
                 (_else2979129805_
                  (lambda ()
                    (values (reverse _clauses29787_) (reverse _konts29788_))))
                 (_K2979329848_
                  (lambda (_rest29808_ _clause29809_)
                    (let* ((_clause2981029817_ _clause29809_)
                           (_E2981229821_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause2981029817_)))
                           (_K2981329836_
                            (lambda (_clause-lambda29824_ _clause-id29825_)
                              (let* ((_id29827_ (make-symbol (gensym '__kont)))
                                     (_id29829_
                                      (gx#core-quote-syntax__0 _id29827_))
                                     (_g42922_
                                      (gx#core-bind-runtime!__0 _id29829_))
                                     (_g42923_
                                      (_clause-e29782_
                                       _clause-lambda29824_
                                       _id29829_
                                       _rest29808_)))
                                (begin
                                  (let ((_g42924_
                                         (if (##values? _g42923_)
                                             (##vector-length _g42923_)
                                             1)))
                                    (if (not (##fx= _g42924_ 2))
                                        (error "Context expects 2 values"
                                               _g42924_)))
                                  (let ((_clause-lambda29832_
                                         (##vector-ref _g42923_ 0))
                                        (_kont29833_
                                         (##vector-ref _g42923_ 1)))
                                    (let ()
                                      (_lp29784_
                                       _rest29808_
                                       (cons (cons _clause-id29825_
                                                   _clause-lambda29832_)
                                             _clauses29787_)
                                       (cons (cons _id29829_ _kont29833_)
                                             _konts29788_)))))))))
                      (if (##pair? _clause2981029817_)
                          (let ((_hd2981429839_ (##car _clause2981029817_))
                                (_tl2981529841_ (##cdr _clause2981029817_)))
                            (let* ((_clause-id29844_ _hd2981429839_)
                                   (_clause-lambda29846_ _tl2981529841_))
                              (_K2981329836_
                               _clause-lambda29846_
                               _clause-id29844_)))
                          (_E2981229821_))))))
            (if (##pair? _rest2978929797_)
                (let ((_hd2979429851_ (##car _rest2978929797_))
                      (_tl2979529853_ (##cdr _rest2978929797_)))
                  (let* ((_clause29856_ _hd2979429851_)
                         (_rest29858_ _tl2979529853_))
                    (_K2979329848_ _rest29858_ _clause29856_)))
                (_else2979129805_)))))))
  (define gxc#optimize-syntax-case-closure
    (lambda (_clause29121_ _negation29122_ _target29123_)
      (letrec ((_closure-e29125_
                (lambda (_expr29242_)
                  (let* ((___stx4260542606_ _expr29242_)
                         (_g2924929364_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4260542606_))))
                    (let ((___kont4260742608_
                           (lambda (_L29755_ _L29756_ _L29757_)
                             (cons '%#if
                                   (cons _L29757_
                                         (cons (_closure-e29125_ _L29756_)
                                               (cons (_closure-e29125_
                                                      _L29755_)
                                                     '()))))))
                          (___kont4260942610_
                           (lambda (_L29703_ _L29704_)
                             (cons '%#let-values
                                   (cons _L29704_
                                         (cons (_closure-e29125_ _L29703_)
                                               '())))))
                          (___kont4261142612_
                           (lambda (_L29649_ _L29650_ _L29651_)
                             (cons '%#letrec-values
                                   (cons (cons (cons (cons _L29651_ '())
                                                     (cons (_closure-e29125_
                                                            _L29650_)
                                                           '()))
                                               '())
                                         (cons _L29649_ '())))))
                          (___kont4261342614_
                           (lambda (_L29562_ _L29563_)
                             (cons '%#lambda
                                   (cons (begin
                                           '#!void
                                           (foldr1 (lambda (_g2958029583_
                                                            _g2958129585_)
                                                     (cons _g2958029583_
                                                           _g2958129585_))
                                                   '()
                                                   _L29563_))
                                         (cons (_closure-e29125_ _L29562_)
                                               '())))))
                          (___kont4261742618_
                           (lambda (_L29492_)
                             (cons '%#call
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _L29492_ '()))
                                         '()))))
                          (___kont4261942620_
                           (lambda (_L29425_ _L29426_) _expr29242_)))
                      (let* ((___match4283842839_
                              (lambda (_e2933929369_
                                       _hd2934029372_
                                       _tl2934129374_
                                       _e2934229377_
                                       _hd2934329380_
                                       _tl2934429382_
                                       _e2934529385_
                                       _hd2934629388_
                                       _tl2934729390_
                                       _e2934829393_
                                       _hd2934929396_
                                       _tl2935029398_
                                       ___splice4262142622_
                                       _target2935129401_
                                       _tl2935329403_)
                                (letrec ((_loop2935429406_
                                          (lambda (_hd2935229409_
                                                   _arg2935829411_)
                                            (if (gx#stx-pair? _hd2935229409_)
                                                (let ((_e2935529414_
                                                       (gx#stx-e
                                                        _hd2935229409_)))
                                                  (let ((_lp-tl2935729419_
                                                         (##cdr _e2935529414_))
                                                        (_lp-hd2935629417_
                                                         (##car _e2935529414_)))
                                                    (_loop2935429406_
                                                     _lp-tl2935729419_
                                                     (cons _lp-hd2935629417_
                                                           _arg2935829411_))))
                                                (let ((_arg2935929422_
                                                       (reverse _arg2935829411_)))
                                                  (___kont4261942620_
                                                   _arg2935929422_
                                                   _hd2934929396_))))))
                                  (_loop2935429406_ _target2935129401_ '()))))
                             (___match4279642797_
                              (lambda (_e2932229452_
                                       _hd2932329455_
                                       _tl2932429457_
                                       _e2932529460_
                                       _hd2932629463_
                                       _tl2932729465_
                                       _e2932829468_
                                       _hd2932929471_
                                       _tl2933029473_
                                       _e2933129476_
                                       _hd2933229479_
                                       _tl2933329481_
                                       _e2933429484_
                                       _hd2933529487_
                                       _tl2933629489_)
                                (let ((_L29492_ _hd2933229479_))
                                  (if (gx#free-identifier=?
                                       _L29492_
                                       _negation29122_)
                                      (___kont4261742618_ _L29492_)
                                      (if (gx#stx-pair/null? _tl2932729465_)
                                          (let ((___splice4262142622_
                                                 (gx#syntax-split-splice
                                                  _tl2932729465_
                                                  '0)))
                                            (let ((_tl2935329403_
                                                   (##vector-ref
                                                    ___splice4262142622_
                                                    '1))
                                                  (_target2935129401_
                                                   (##vector-ref
                                                    ___splice4262142622_
                                                    '0)))
                                              (if (gx#stx-null? _tl2935329403_)
                                                  (___match4283842839_
                                                   _e2932229452_
                                                   _hd2932329455_
                                                   _tl2932429457_
                                                   _e2932529460_
                                                   _hd2932629463_
                                                   _tl2932729465_
                                                   _e2932829468_
                                                   _hd2932929471_
                                                   _tl2933029473_
                                                   _e2933129476_
                                                   _hd2933229479_
                                                   _tl2933329481_
                                                   ___splice4262142622_
                                                   _target2935129401_
                                                   _tl2935329403_)
                                                  (_g2924929364_))))
                                          (_g2924929364_))))))
                             (___match4275442755_
                              (lambda (_e2930329514_
                                       _hd2930429517_
                                       _tl2930529519_
                                       _e2930629522_
                                       _hd2930729525_
                                       _tl2930829527_
                                       ___splice4261542616_
                                       _target2930929530_
                                       _tl2931129532_)
                                (letrec ((_loop2931229535_
                                          (lambda (_hd2931029538_
                                                   _id2931629540_)
                                            (if (gx#stx-pair? _hd2931029538_)
                                                (let ((_e2931329543_
                                                       (gx#stx-e
                                                        _hd2931029538_)))
                                                  (let ((_lp-tl2931529548_
                                                         (##cdr _e2931329543_))
                                                        (_lp-hd2931429546_
                                                         (##car _e2931329543_)))
                                                    (_loop2931229535_
                                                     _lp-tl2931529548_
                                                     (cons _lp-hd2931429546_
                                                           _id2931629540_))))
                                                (let ((_id2931729551_
                                                       (reverse _id2931629540_)))
                                                  (if (gx#stx-pair?
                                                       _tl2930829527_)
                                                      (let ((_e2931829554_
                                                             (gx#stx-e
                                                              _tl2930829527_)))
                                                        (let ((_tl2932029559_
                                                               (##cdr _e2931829554_))
                                                              (_hd2931929557_
                                                               (##car _e2931829554_)))
                                                          (if (gx#stx-null?
                                                               _tl2932029559_)
                                                              (___kont4261342614_
                                                               _hd2931929557_
                                                               _id2931729551_)
                                                              (_g2924929364_))))
                                                      (_g2924929364_)))))))
                                  (_loop2931229535_ _target2930929530_ '())))))
                        (if (gx#stx-pair? ___stx4260542606_)
                            (let ((_e2925429723_ (gx#stx-e ___stx4260542606_)))
                              (let ((_tl2925629728_ (##cdr _e2925429723_))
                                    (_hd2925529726_ (##car _e2925429723_)))
                                (if (gx#identifier? _hd2925529726_)
                                    (if (gx#stx-eq? '%#if _hd2925529726_)
                                        (if (gx#stx-pair? _tl2925629728_)
                                            (let ((_e2925729731_
                                                   (gx#stx-e _tl2925629728_)))
                                              (let ((_tl2925929736_
                                                     (##cdr _e2925729731_))
                                                    (_hd2925829734_
                                                     (##car _e2925729731_)))
                                                (if (gx#stx-pair?
                                                     _tl2925929736_)
                                                    (let ((_e2926029739_
                                                           (gx#stx-e
                                                            _tl2925929736_)))
                                                      (let ((_tl2926229744_
                                                             (##cdr _e2926029739_))
                                                            (_hd2926129742_
                                                             (##car _e2926029739_)))
                                                        (if (gx#stx-pair?
                                                             _tl2926229744_)
                                                            (let ((_e2926329747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2926229744_)))
                      (let ((_tl2926529752_ (##cdr _e2926329747_))
                            (_hd2926429750_ (##car _e2926329747_)))
                        (if (gx#stx-null? _tl2926529752_)
                            (___kont4260742608_
                             _hd2926429750_
                             _hd2926129742_
                             _hd2925829734_)
                            (_g2924929364_))))
                    (_g2924929364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2924929364_))))
                                            (_g2924929364_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd2925529726_)
                                            (if (gx#stx-pair? _tl2925629728_)
                                                (let ((_e2927129687_
                                                       (gx#stx-e
                                                        _tl2925629728_)))
                                                  (let ((_tl2927329692_
                                                         (##cdr _e2927129687_))
                                                        (_hd2927229690_
                                                         (##car _e2927129687_)))
                                                    (if (gx#stx-pair?
                                                         _tl2927329692_)
                                                        (let ((_e2927429695_
                                                               (gx#stx-e
                                                                _tl2927329692_)))
                                                          (let ((_tl2927629700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2927429695_))
                        (_hd2927529698_ (##car _e2927429695_)))
                    (if (gx#stx-null? _tl2927629700_)
                        (___kont4260942610_ _hd2927529698_ _hd2927229690_)
                        (_g2924929364_))))
                (_g2924929364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2924929364_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd2925529726_)
                                                (if (gx#stx-pair?
                                                     _tl2925629728_)
                                                    (let ((_e2928329601_
                                                           (gx#stx-e
                                                            _tl2925629728_)))
                                                      (let ((_tl2928529606_
                                                             (##cdr _e2928329601_))
                                                            (_hd2928429604_
                                                             (##car _e2928329601_)))
                                                        (if (gx#stx-pair?
                                                             _hd2928429604_)
                                                            (let ((_e2928629609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2928429604_)))
                      (let ((_tl2928829614_ (##cdr _e2928629609_))
                            (_hd2928729612_ (##car _e2928629609_)))
                        (if (gx#stx-pair? _hd2928729612_)
                            (let ((_e2928929617_ (gx#stx-e _hd2928729612_)))
                              (let ((_tl2929129622_ (##cdr _e2928929617_))
                                    (_hd2929029620_ (##car _e2928929617_)))
                                (if (gx#stx-pair? _hd2929029620_)
                                    (let ((_e2929229625_
                                           (gx#stx-e _hd2929029620_)))
                                      (let ((_tl2929429630_
                                             (##cdr _e2929229625_))
                                            (_hd2929329628_
                                             (##car _e2929229625_)))
                                        (if (gx#stx-null? _tl2929429630_)
                                            (if (gx#stx-pair? _tl2929129622_)
                                                (let ((_e2929529633_
                                                       (gx#stx-e
                                                        _tl2929129622_)))
                                                  (let ((_tl2929729638_
                                                         (##cdr _e2929529633_))
                                                        (_hd2929629636_
                                                         (##car _e2929529633_)))
                                                    (if (gx#stx-null?
                                                         _tl2929729638_)
                                                        (if (gx#stx-null?
                                                             _tl2928829614_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2928529606_)
                        (let ((_e2929829641_ (gx#stx-e _tl2928529606_)))
                          (let ((_tl2930029646_ (##cdr _e2929829641_))
                                (_hd2929929644_ (##car _e2929829641_)))
                            (if (gx#stx-null? _tl2930029646_)
                                (___kont4261142612_
                                 _hd2929929644_
                                 _hd2929629636_
                                 _hd2929329628_)
                                (_g2924929364_))))
                        (_g2924929364_))
                    (_g2924929364_))
                (_g2924929364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2924929364_))
                                            (_g2924929364_))))
                                    (_g2924929364_))))
                            (_g2924929364_))))
                    (_g2924929364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2924929364_))
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd2925529726_)
                                                    (if (gx#stx-pair?
                                                         _tl2925629728_)
                                                        (let ((_e2930629522_
                                                               (gx#stx-e
                                                                _tl2925629728_)))
                                                          (let ((_tl2930829527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2930629522_))
                        (_hd2930729525_ (##car _e2930629522_)))
                    (if (gx#stx-pair/null? _hd2930729525_)
                        (let ((___splice4261542616_
                               (gx#syntax-split-splice _hd2930729525_ '0)))
                          (let ((_tl2931129532_
                                 (##vector-ref ___splice4261542616_ '1))
                                (_target2930929530_
                                 (##vector-ref ___splice4261542616_ '0)))
                            (if (gx#stx-null? _tl2931129532_)
                                (___match4275442755_
                                 _e2925429723_
                                 _hd2925529726_
                                 _tl2925629728_
                                 _e2930629522_
                                 _hd2930729525_
                                 _tl2930829527_
                                 ___splice4261542616_
                                 _target2930929530_
                                 _tl2931129532_)
                                (_g2924929364_))))
                        (_g2924929364_))))
                (_g2924929364_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2925529726_)
                                                        (if (gx#stx-pair?
                                                             _tl2925629728_)
                                                            (let ((_e2932529460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2925629728_)))
                      (let ((_tl2932729465_ (##cdr _e2932529460_))
                            (_hd2932629463_ (##car _e2932529460_)))
                        (if (gx#stx-pair? _hd2932629463_)
                            (let ((_e2932829468_ (gx#stx-e _hd2932629463_)))
                              (let ((_tl2933029473_ (##cdr _e2932829468_))
                                    (_hd2932929471_ (##car _e2932829468_)))
                                (if (gx#identifier? _hd2932929471_)
                                    (if (gx#stx-eq? '%#ref _hd2932929471_)
                                        (if (gx#stx-pair? _tl2933029473_)
                                            (let ((_e2933129476_
                                                   (gx#stx-e _tl2933029473_)))
                                              (let ((_tl2933329481_
                                                     (##cdr _e2933129476_))
                                                    (_hd2933229479_
                                                     (##car _e2933129476_)))
                                                (if (gx#stx-null?
                                                     _tl2933329481_)
                                                    (if (gx#stx-pair?
                                                         _tl2932729465_)
                                                        (let ((_e2933429484_
                                                               (gx#stx-e
                                                                _tl2932729465_)))
                                                          (let ((_tl2933629489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2933429484_))
                        (_hd2933529487_ (##car _e2933429484_)))
                    (if (gx#stx-null? _tl2933629489_)
                        (___match4279642797_
                         _e2925429723_
                         _hd2925529726_
                         _tl2925629728_
                         _e2932529460_
                         _hd2932629463_
                         _tl2932729465_
                         _e2932829468_
                         _hd2932929471_
                         _tl2933029473_
                         _e2933129476_
                         _hd2933229479_
                         _tl2933329481_
                         _e2933429484_
                         _hd2933529487_
                         _tl2933629489_)
                        (if (gx#stx-pair/null? _tl2932729465_)
                            (let ((___splice4262142622_
                                   (gx#syntax-split-splice _tl2932729465_ '0)))
                              (let ((_tl2935329403_
                                     (##vector-ref ___splice4262142622_ '1))
                                    (_target2935129401_
                                     (##vector-ref ___splice4262142622_ '0)))
                                (if (gx#stx-null? _tl2935329403_)
                                    (___match4283842839_
                                     _e2925429723_
                                     _hd2925529726_
                                     _tl2925629728_
                                     _e2932529460_
                                     _hd2932629463_
                                     _tl2932729465_
                                     _e2932829468_
                                     _hd2932929471_
                                     _tl2933029473_
                                     _e2933129476_
                                     _hd2933229479_
                                     _tl2933329481_
                                     ___splice4262142622_
                                     _target2935129401_
                                     _tl2935329403_)
                                    (_g2924929364_))))
                            (_g2924929364_)))))
                (if (gx#stx-pair/null? _tl2932729465_)
                    (let ((___splice4262142622_
                           (gx#syntax-split-splice _tl2932729465_ '0)))
                      (let ((_tl2935329403_
                             (##vector-ref ___splice4262142622_ '1))
                            (_target2935129401_
                             (##vector-ref ___splice4262142622_ '0)))
                        (if (gx#stx-null? _tl2935329403_)
                            (___match4283842839_
                             _e2925429723_
                             _hd2925529726_
                             _tl2925629728_
                             _e2932529460_
                             _hd2932629463_
                             _tl2932729465_
                             _e2932829468_
                             _hd2932929471_
                             _tl2933029473_
                             _e2933129476_
                             _hd2933229479_
                             _tl2933329481_
                             ___splice4262142622_
                             _target2935129401_
                             _tl2935329403_)
                            (_g2924929364_))))
                    (_g2924929364_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2924929364_))))
                                            (_g2924929364_))
                                        (_g2924929364_))
                                    (_g2924929364_))))
                            (_g2924929364_))))
                    (_g2924929364_))
                (_g2924929364_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g2924929364_))))
                            (_g2924929364_))))))))
        (let* ((_clause2912629133_ _clause29121_)
               (_E2912829137_
                (lambda () (error '"No clause matching" _clause2912629133_)))
               (_K2912929230_
                (lambda (_kont29140_ _id29141_)
                  (let* ((_g2914329163_
                          (lambda (_g2914429160_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2914429160_)))
                         (_g2914229227_
                          (lambda (_g2914429166_)
                            (if (gx#stx-pair? _g2914429166_)
                                (let ((_e2914729168_ (gx#stx-e _g2914429166_)))
                                  (let ((_hd2914829171_ (##car _e2914729168_))
                                        (_tl2914929173_ (##cdr _e2914729168_)))
                                    (if (gx#identifier? _hd2914829171_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2914829171_)
                                            (if (gx#stx-pair? _tl2914929173_)
                                                (let ((_e2915029176_
                                                       (gx#stx-e
                                                        _tl2914929173_)))
                                                  (let ((_hd2915129179_
                                                         (##car _e2915029176_))
                                                        (_tl2915229181_
                                                         (##cdr _e2915029176_)))
                                                    (if (gx#stx-pair?
                                                         _hd2915129179_)
                                                        (let ((_e2915329184_
                                                               (gx#stx-e
                                                                _hd2915129179_)))
                                                          (let ((_hd2915429187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2915329184_))
                        (_tl2915529189_ (##cdr _e2915329184_)))
                    (if (gx#stx-null? _tl2915529189_)
                        (if (gx#stx-pair? _tl2915229181_)
                            (let ((_e2915629192_ (gx#stx-e _tl2915229181_)))
                              (let ((_hd2915729195_ (##car _e2915629192_))
                                    (_tl2915829197_ (##cdr _e2915629192_)))
                                (if (gx#stx-null? _tl2915829197_)
                                    ((lambda (_L29200_ _L29201_)
                                       (let* ((_body29222_
                                               (gxc#apply-expression-subst
                                                _L29200_
                                                _L29201_
                                                _target29123_))
                                              (_body29224_
                                               (if _negation29122_
                                                   (_closure-e29125_
                                                    _body29222_)
                                                   _body29222_)))
                                         (begin
                                           (gxc#optimizer-declare-type!__%
                                            (gxc#identifier-symbol _id29141_)
                                            (let ((__obj42890
                                                   (make-object
                                                    gxc#!lambda::t
                                                    '5)))
                                              (begin
                                                (gxc#!lambda:::init!__0
                                                 __obj42890
                                                 'lambda
                                                 '0
                                                 '#f)
                                                __obj42890))
                                            '#t)
                                           (cons _id29141_
                                                 (cons '%#lambda
                                                       (cons '()
                                                             (cons _body29224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2915729195_
                                     _hd2915429187_)
                                    (_g2914329163_ _g2914429166_))))
                            (_g2914329163_ _g2914429166_))
                        (_g2914329163_ _g2914429166_))))
                (_g2914329163_ _g2914429166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2914329163_ _g2914429166_))
                                            (_g2914329163_ _g2914429166_))
                                        (_g2914329163_ _g2914429166_))))
                                (_g2914329163_ _g2914429166_)))))
                    (_g2914229227_ _kont29140_)))))
          (if (##pair? _clause2912629133_)
              (let ((_hd2913029233_ (##car _clause2912629133_))
                    (_tl2913129235_ (##cdr _clause2912629133_)))
                (let* ((_id29238_ _hd2913029233_) (_kont29240_ _tl2913129235_))
                  (_K2912929230_ _kont29240_ _id29238_)))
              (_E2912829137_))))))
  (define gxc#push-match-vars-let-values%
    (lambda (_stx28907_ _vars28908_ _K28909_)
      (let* ((_g2891128928_
              (lambda (_g2891228925_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2891228925_)))
             (_g2891029118_
              (lambda (_g2891228931_)
                (if (gx#stx-pair? _g2891228931_)
                    (let ((_e2891528933_ (gx#stx-e _g2891228931_)))
                      (let ((_hd2891628936_ (##car _e2891528933_))
                            (_tl2891728938_ (##cdr _e2891528933_)))
                        (if (gx#stx-pair? _tl2891728938_)
                            (let ((_e2891828941_ (gx#stx-e _tl2891728938_)))
                              (let ((_hd2891928944_ (##car _e2891828941_))
                                    (_tl2892028946_ (##cdr _e2891828941_)))
                                (if (gx#stx-pair? _tl2892028946_)
                                    (let ((_e2892128949_
                                           (gx#stx-e _tl2892028946_)))
                                      (let ((_hd2892228952_
                                             (##car _e2892128949_))
                                            (_tl2892328954_
                                             (##cdr _e2892128949_)))
                                        (if (gx#stx-null? _tl2892328954_)
                                            ((lambda (_L28957_ _L28958_)
                                               (let _lp28973_ ((_rest28975_
                                                                _L28958_)
                                                               (_rebind28976_
                                                                '())
                                                               (_vars28977_
                                                                _vars28908_))
                                                 (let* ((_rest2897828986_
                                                         _rest28975_)
                                                        (_else2898028994_
                                                         (lambda ()
                                                           (if (null? _rebind28976_)
                                                               (gxc#compile-e
                                                                _L28957_
                                                                _vars28977_
                                                                _K28909_)
                                                               (gxc#xform-wrap-source
                                                                (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (reverse _rebind28976_)
                                    (cons (gxc#compile-e
                                           _L28957_
                                           _vars28977_
                                           _K28909_)
                                          '())))
                        _stx28907_))))
                (_K2898229106_
                 (lambda (_rest28997_ _bind28998_)
                   (let* ((___stx4284142842_ _bind28998_)
                          (_g2900129024_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4284142842_))))
                     (let ((___kont4284342844_
                            (lambda (_L29076_ _L29077_)
                              (_lp28973_
                               _rest28997_
                               _rebind28976_
                               (cons _bind28998_ _vars28977_))))
                           (___kont4284542846_
                            (lambda ()
                              (_lp28973_
                               _rest28997_
                               (cons _bind28998_ _rebind28976_)
                               _vars28977_))))
                       (if (gx#stx-pair? ___stx4284142842_)
                           (let ((_e2900529036_ (gx#stx-e ___stx4284142842_)))
                             (let ((_tl2900729041_ (##cdr _e2900529036_))
                                   (_hd2900629039_ (##car _e2900529036_)))
                               (if (gx#stx-pair? _hd2900629039_)
                                   (let ((_e2900829044_
                                          (gx#stx-e _hd2900629039_)))
                                     (let ((_tl2901029049_
                                            (##cdr _e2900829044_))
                                           (_hd2900929047_
                                            (##car _e2900829044_)))
                                       (if (gx#stx-null? _tl2901029049_)
                                           (if (gx#stx-pair? _tl2900729041_)
                                               (let ((_e2901129052_
                                                      (gx#stx-e
                                                       _tl2900729041_)))
                                                 (let ((_tl2901329057_
                                                        (##cdr _e2901129052_))
                                                       (_hd2901229055_
                                                        (##car _e2901129052_)))
                                                   (if (gx#stx-pair?
                                                        _hd2901229055_)
                                                       (let ((_e2901429060_
                                                              (gx#stx-e
                                                               _hd2901229055_)))
                                                         (let ((_tl2901629065_
                                                                (##cdr _e2901429060_))
                                                               (_hd2901529063_
                                                                (##car _e2901429060_)))
                                                           (if (gx#identifier?
                                                                _hd2901529063_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd2901529063_)
                           (if (gx#stx-pair? _tl2901629065_)
                               (let ((_e2901729068_ (gx#stx-e _tl2901629065_)))
                                 (let ((_tl2901929073_ (##cdr _e2901729068_))
                                       (_hd2901829071_ (##car _e2901729068_)))
                                   (if (gx#stx-null? _tl2901929073_)
                                       (if (gx#stx-null? _tl2901329057_)
                                           (___kont4284342844_
                                            _hd2901829071_
                                            _hd2900929047_)
                                           (___kont4284542846_))
                                       (___kont4284542846_))))
                               (___kont4284542846_))
                           (___kont4284542846_))
                       (___kont4284542846_))))
               (___kont4284542846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4284542846_))
                                           (___kont4284542846_))))
                                   (___kont4284542846_))))
                           (___kont4284542846_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _rest2897828986_)
                                                       (let ((_hd2898329109_
                                                              (##car _rest2897828986_))
                                                             (_tl2898429111_
                                                              (##cdr _rest2897828986_)))
                                                         (let* ((_bind29114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2898329109_)
                        (_rest29116_ _tl2898429111_))
                   (_K2898229106_ _rest29116_ _bind29114_)))
               (_else2898028994_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd2892228952_
                                             _hd2891928944_)
                                            (_g2891128928_ _g2891228931_))))
                                    (_g2891128928_ _g2891228931_))))
                            (_g2891128928_ _g2891228931_))))
                    (_g2891128928_ _g2891228931_)))))
        (_g2891029118_ _stx28907_))))
  (define gxc#push-match-vars-if%
    (lambda (_stx28822_ _vars28823_ _K28824_)
      (let* ((_g2882628847_
              (lambda (_g2882728844_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2882728844_)))
             (_g2882528904_
              (lambda (_g2882728850_)
                (if (gx#stx-pair? _g2882728850_)
                    (let ((_e2883128852_ (gx#stx-e _g2882728850_)))
                      (let ((_hd2883228855_ (##car _e2883128852_))
                            (_tl2883328857_ (##cdr _e2883128852_)))
                        (if (gx#stx-pair? _tl2883328857_)
                            (let ((_e2883428860_ (gx#stx-e _tl2883328857_)))
                              (let ((_hd2883528863_ (##car _e2883428860_))
                                    (_tl2883628865_ (##cdr _e2883428860_)))
                                (if (gx#stx-pair? _tl2883628865_)
                                    (let ((_e2883728868_
                                           (gx#stx-e _tl2883628865_)))
                                      (let ((_hd2883828871_
                                             (##car _e2883728868_))
                                            (_tl2883928873_
                                             (##cdr _e2883728868_)))
                                        (if (gx#stx-pair? _tl2883928873_)
                                            (let ((_e2884028876_
                                                   (gx#stx-e _tl2883928873_)))
                                              (let ((_hd2884128879_
                                                     (##car _e2884028876_))
                                                    (_tl2884228881_
                                                     (##cdr _e2884028876_)))
                                                (if (gx#stx-null?
                                                     _tl2884228881_)
                                                    ((lambda (_L28884_
                                                              _L28885_
                                                              _L28886_)
                                                       (if (gxc#apply-find-var-refs
                                                            _L28886_
                                                            (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _vars28823_))
                   (gxc#push-match-vars-stop _stx28822_ _vars28823_ _K28824_)
                   (gxc#xform-wrap-source
                    (cons '%#if
                          (cons _L28886_
                                (cons (gxc#compile-e
                                       _L28885_
                                       _vars28823_
                                       _K28824_)
                                      (cons (gxc#compile-e
                                             _L28884_
                                             _vars28823_
                                             _K28824_)
                                            '()))))
                    _stx28822_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd2884128879_
                                                     _hd2883828871_
                                                     _hd2883528863_)
                                                    (_g2882628847_
                                                     _g2882728850_))))
                                            (_g2882628847_ _g2882728850_))))
                                    (_g2882628847_ _g2882728850_))))
                            (_g2882628847_ _g2882728850_))))
                    (_g2882628847_ _g2882728850_)))))
        (_g2882528904_ _stx28822_))))
  (define gxc#push-match-vars-call%
    (lambda (_stx28742_ _vars28743_ _K28744_)
      (let* ((_g2874628765_
              (lambda (_g2874728762_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2874728762_)))
             (_g2874528819_
              (lambda (_g2874728768_)
                (if (gx#stx-pair? _g2874728768_)
                    (let ((_e2874928770_ (gx#stx-e _g2874728768_)))
                      (let ((_hd2875028773_ (##car _e2874928770_))
                            (_tl2875128775_ (##cdr _e2874928770_)))
                        (if (gx#stx-pair? _tl2875128775_)
                            (let ((_e2875228778_ (gx#stx-e _tl2875128775_)))
                              (let ((_hd2875328781_ (##car _e2875228778_))
                                    (_tl2875428783_ (##cdr _e2875228778_)))
                                (if (gx#stx-pair? _hd2875328781_)
                                    (let ((_e2875528786_
                                           (gx#stx-e _hd2875328781_)))
                                      (let ((_hd2875628789_
                                             (##car _e2875528786_))
                                            (_tl2875728791_
                                             (##cdr _e2875528786_)))
                                        (if (gx#identifier? _hd2875628789_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2875628789_)
                                                (if (gx#stx-pair?
                                                     _tl2875728791_)
                                                    (let ((_e2875828794_
                                                           (gx#stx-e
                                                            _tl2875728791_)))
                                                      (let ((_hd2875928797_
                                                             (##car _e2875828794_))
                                                            (_tl2876028799_
                                                             (##cdr _e2875828794_)))
                                                        (if (gx#stx-null?
                                                             _tl2876028799_)
                                                            ((lambda (_L28802_)
                                                               (if (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L28802_
                                _K28744_)
                               (pair? _vars28743_)
                               '#f)
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (reverse _vars28743_)
                                        (cons _stx28742_ '())))
                            _stx28742_)
                           _stx28742_))
                     _hd2875928797_)
                    (_g2874628765_ _g2874728768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2874628765_
                                                     _g2874728768_))
                                                (_g2874628765_ _g2874728768_))
                                            (_g2874628765_ _g2874728768_))))
                                    (_g2874628765_ _g2874728768_))))
                            (_g2874628765_ _g2874728768_))))
                    (_g2874628765_ _g2874728768_)))))
        (_g2874528819_ _stx28742_))))
  (define gxc#push-match-vars-stop
    (lambda (_stx28738_ _vars28739_ _K28740_)
      (if (null? _vars28739_)
          _stx28738_
          (gxc#xform-wrap-source
           (cons '%#let-values
                 (cons (reverse _vars28739_) (cons _stx28738_ '())))
           _stx28738_)))))
