(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl15559_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl15559_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl15559_ '%#lambda gxc#xform-identity)
           (table-set! _tbl15559_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl15559_ '%#let-values gxc#xform-identity)
           (table-set! _tbl15559_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl15559_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl15559_ '%#quote gxc#xform-identity)
           (table-set! _tbl15559_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl15559_ '%#call gxc#xform-identity)
           (table-set! _tbl15559_ '%#if gxc#xform-identity)
           (table-set! _tbl15559_ '%#ref gxc#xform-identity)
           (table-set! _tbl15559_ '%#set! gxc#xform-identity)
           (table-set! _tbl15559_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl15559_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl15559_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl15559_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl15559_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl15559_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl15559_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl15559_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl15559_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl15555_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl15555_ '%#begin gxc#xform-identity)
           (table-set! _tbl15555_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl15555_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl15555_ '%#module gxc#xform-identity)
           (table-set! _tbl15555_ '%#import gxc#xform-identity)
           (table-set! _tbl15555_ '%#export gxc#xform-identity)
           (table-set! _tbl15555_ '%#provide gxc#xform-identity)
           (table-set! _tbl15555_ '%#extern gxc#xform-identity)
           (table-set! _tbl15555_ '%#define-values gxc#xform-identity)
           (table-set! _tbl15555_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl15555_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl15555_ '%#declare gxc#xform-identity)
           _tbl15555_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl15551_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15551_ (force gxc#&identity-special-form))
           (hash-copy! _tbl15551_ (force gxc#&identity-expression))
           _tbl15551_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl15547_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl15547_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl15547_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl15547_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl15547_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl15547_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl15547_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl15547_ '%#quote gxc#xform-identity)
           (table-set! _tbl15547_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl15547_ '%#call gxc#xform-operands)
           (table-set! _tbl15547_ '%#if gxc#xform-operands)
           (table-set! _tbl15547_ '%#ref gxc#xform-identity)
           (table-set! _tbl15547_ '%#set! gxc#xform-setq%)
           (table-set! _tbl15547_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl15547_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl15547_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl15547_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl15547_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl15547_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl15547_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl15547_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl15547_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl15543_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15543_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl15543_ (force gxc#&identity))
           (table-set! _tbl15543_ '%#begin gxc#xform-begin%)
           (table-set! _tbl15543_ '%#module gxc#xform-module%)
           (table-set! _tbl15543_ '%#define-values gxc#xform-define-values%)
           _tbl15543_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl15539_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15539_ (force gxc#&void))
           (table-set! _tbl15539_ '%#begin gxc#collect-begin%)
           (table-set! _tbl15539_ '%#module gxc#collect-module%)
           (table-set!
            _tbl15539_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl15539_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl15539_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl15539_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl15539_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl15539_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl15539_ '%#call gxc#collect-operands)
           (table-set! _tbl15539_ '%#if gxc#collect-operands)
           (table-set! _tbl15539_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl15539_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl15539_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl15539_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl15539_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl15539_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl15539_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl15539_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl15539_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl15539_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx15532_ . _args15534_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15532_ _args15534_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl15529_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15529_ (force gxc#&basic-xform-expression))
           (table-set! _tbl15529_ '%#begin gxc#xform-begin%)
           (table-set! _tbl15529_ '%#ref gxc#expression-subst-ref%)
           (table-set! _tbl15529_ '%#set! gxc#expression-subst-setq%)
           _tbl15529_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx15522_ . _args15524_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15522_ _args15524_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&expression-subst*
    (make-promise
     (lambda ()
       (let ((_tbl15519_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15519_ (force gxc#&expression-subst))
           (table-set! _tbl15519_ '%#ref gxc#expression-subst*-ref%)
           (table-set! _tbl15519_ '%#set! gxc#expression-subst*-setq%)
           _tbl15519_)))))
  (define gxc#apply-expression-subst*
    (lambda (_stx15512_ . _args15514_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15512_ _args15514_))
       gxc#current-compile-methods
       (force gxc#&expression-subst*))))
  (define gxc#&find-expression
    (make-promise
     (lambda ()
       (let ((_tbl15509_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15509_ (force gxc#&false-expression))
           (table-set! _tbl15509_ '%#begin gxc#find-body%)
           (table-set!
            _tbl15509_
            '%#begin-annotation
            gxc#find-begin-annotation%)
           (table-set! _tbl15509_ '%#lambda gxc#find-lambda%)
           (table-set! _tbl15509_ '%#case-lambda gxc#find-case-lambda%)
           (table-set! _tbl15509_ '%#let-values gxc#find-let-values%)
           (table-set! _tbl15509_ '%#letrec-values gxc#find-let-values%)
           (table-set! _tbl15509_ '%#letrec*-values gxc#find-let-values%)
           (table-set! _tbl15509_ '%#call gxc#find-body%)
           (table-set! _tbl15509_ '%#if gxc#find-body%)
           (table-set! _tbl15509_ '%#set! gxc#find-setq%)
           (table-set! _tbl15509_ '%#struct-instance? gxc#find-body%)
           (table-set! _tbl15509_ '%#struct-direct-instance? gxc#find-body%)
           (table-set! _tbl15509_ '%#struct-ref gxc#find-body%)
           (table-set! _tbl15509_ '%#struct-set! gxc#find-body%)
           (table-set! _tbl15509_ '%#struct-direct-ref gxc#find-body%)
           (table-set! _tbl15509_ '%#struct-direct-set! gxc#find-body%)
           (table-set! _tbl15509_ '%#struct-unchecked-ref gxc#find-body%)
           (table-set! _tbl15509_ '%#struct-unchecked-set! gxc#find-body%)
           _tbl15509_)))))
  (define gxc#&find-var-refs
    (make-promise
     (lambda ()
       (let ((_tbl15505_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15505_ (force gxc#&find-expression))
           (table-set! _tbl15505_ '%#ref gxc#find-var-refs-ref%)
           (table-set! _tbl15505_ '%#set! gxc#find-var-refs-setq%)
           _tbl15505_)))))
  (define gxc#apply-find-var-refs
    (lambda (_stx15498_ . _args15500_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15498_ _args15500_))
       gxc#current-compile-methods
       (force gxc#&find-var-refs))))
  (define gxc#&collect-runtime-refs
    (make-promise
     (lambda ()
       (let ((_tbl15495_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl15495_ (force gxc#&collect-expression-refs))
           (table-set! _tbl15495_ '%#ref gxc#collect-runtime-refs-ref%)
           (table-set! _tbl15495_ '%#set! gxc#collect-runtime-refs-setq%)
           _tbl15495_)))))
  (define gxc#apply-collect-runtime-refs
    (lambda (_stx15488_ . _args15490_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx15488_ _args15490_))
       gxc#current-compile-methods
       (force gxc#&collect-runtime-refs))))
  (define gxc#xform-identity (lambda (_stx15485_ . _args15486_) _stx15485_))
  (define gxc#xform-wrap-source
    (lambda (_stx15482_ _src-stx15483_)
      (gx#stx-wrap-source _stx15482_ (gx#stx-source _src-stx15483_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args15476_)
      (lambda (_g1547715479_)
        (apply gxc#compile-e _g1547715479_ _args15476_))))
  (define gxc#xform-begin%
    (lambda (_stx15435_ . _args15436_)
      (let* ((_g1543815448_
              (lambda (_g1543915445_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1543915445_)))
             (_g1543715473_
              (lambda (_g1543915451_)
                (if (gx#stx-pair? _g1543915451_)
                    (let ((_e1544115453_ (gx#stx-e _g1543915451_)))
                      (let ((_hd1544215456_ (##car _e1544115453_))
                            (_tl1544315458_ (##cdr _e1544115453_)))
                        ((lambda (_L15461_)
                           (let ((_forms15471_
                                  (map (gxc#xform-apply-compile-e _args15436_)
                                       _L15461_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms15471_)
                              _stx15435_)))
                         _tl1544315458_)))
                    (_g1543815448_ _g1543915451_)))))
        (_g1543715473_ _stx15435_))))
  (define gxc#xform-module%
    (lambda (_stx15372_ . _args15373_)
      (let* ((_g1537515389_
              (lambda (_g1537615386_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1537615386_)))
             (_g1537415432_
              (lambda (_g1537615392_)
                (if (gx#stx-pair? _g1537615392_)
                    (let ((_e1537915394_ (gx#stx-e _g1537615392_)))
                      (let ((_hd1538015397_ (##car _e1537915394_))
                            (_tl1538115399_ (##cdr _e1537915394_)))
                        (if (gx#stx-pair? _tl1538115399_)
                            (let ((_e1538215402_ (gx#stx-e _tl1538115399_)))
                              (let ((_hd1538315405_ (##car _e1538215402_))
                                    (_tl1538415407_ (##cdr _e1538215402_)))
                                ((lambda (_L15410_ _L15411_)
                                   (let* ((_ctx15424_
                                           (gx#syntax-local-e__0 _L15411_))
                                          (_code15426_
                                           (##structure-ref
                                            _ctx15424_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code15429_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code15426_
                                                     _args15373_))
                                            gx#current-expander-context
                                            _ctx15424_)))
                                     (begin
                                       (##structure-set!
                                        _ctx15424_
                                        _code15429_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L15411_
                                                    (cons _code15429_ '())))
                                        _stx15372_))))
                                 _tl1538415407_
                                 _hd1538315405_)))
                            (_g1537515389_ _g1537615392_))))
                    (_g1537515389_ _g1537615392_)))))
        (_g1537415432_ _stx15372_))))
  (define gxc#xform-define-values%
    (lambda (_stx15302_ . _args15303_)
      (let* ((_g1530515322_
              (lambda (_g1530615319_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1530615319_)))
             (_g1530415369_
              (lambda (_g1530615325_)
                (if (gx#stx-pair? _g1530615325_)
                    (let ((_e1530915327_ (gx#stx-e _g1530615325_)))
                      (let ((_hd1531015330_ (##car _e1530915327_))
                            (_tl1531115332_ (##cdr _e1530915327_)))
                        (if (gx#stx-pair? _tl1531115332_)
                            (let ((_e1531215335_ (gx#stx-e _tl1531115332_)))
                              (let ((_hd1531315338_ (##car _e1531215335_))
                                    (_tl1531415340_ (##cdr _e1531215335_)))
                                (if (gx#stx-pair? _tl1531415340_)
                                    (let ((_e1531515343_
                                           (gx#stx-e _tl1531415340_)))
                                      (let ((_hd1531615346_
                                             (##car _e1531515343_))
                                            (_tl1531715348_
                                             (##cdr _e1531515343_)))
                                        (if (gx#stx-null? _tl1531715348_)
                                            ((lambda (_L15351_ _L15352_)
                                               (let ((_expr15367_
                                                      (apply gxc#compile-e
                                                             _L15351_
                                                             _args15303_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L15352_
                                                              (cons _expr15367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx15302_)))
                                             _hd1531615346_
                                             _hd1531315338_)
                                            (_g1530515322_ _g1530615325_))))
                                    (_g1530515322_ _g1530615325_))))
                            (_g1530515322_ _g1530615325_))))
                    (_g1530515322_ _g1530615325_)))))
        (_g1530415369_ _stx15302_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx15232_ . _args15233_)
      (let* ((_g1523515252_
              (lambda (_g1523615249_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1523615249_)))
             (_g1523415299_
              (lambda (_g1523615255_)
                (if (gx#stx-pair? _g1523615255_)
                    (let ((_e1523915257_ (gx#stx-e _g1523615255_)))
                      (let ((_hd1524015260_ (##car _e1523915257_))
                            (_tl1524115262_ (##cdr _e1523915257_)))
                        (if (gx#stx-pair? _tl1524115262_)
                            (let ((_e1524215265_ (gx#stx-e _tl1524115262_)))
                              (let ((_hd1524315268_ (##car _e1524215265_))
                                    (_tl1524415270_ (##cdr _e1524215265_)))
                                (if (gx#stx-pair? _tl1524415270_)
                                    (let ((_e1524515273_
                                           (gx#stx-e _tl1524415270_)))
                                      (let ((_hd1524615276_
                                             (##car _e1524515273_))
                                            (_tl1524715278_
                                             (##cdr _e1524515273_)))
                                        (if (gx#stx-null? _tl1524715278_)
                                            ((lambda (_L15281_ _L15282_)
                                               (let ((_expr15297_
                                                      (apply gxc#compile-e
                                                             _L15281_
                                                             _args15233_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L15282_
                                                              (cons _expr15297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx15232_)))
                                             _hd1524615276_
                                             _hd1524315268_)
                                            (_g1523515252_ _g1523615255_))))
                                    (_g1523515252_ _g1523615255_))))
                            (_g1523515252_ _g1523615255_))))
                    (_g1523515252_ _g1523615255_)))))
        (_g1523415299_ _stx15232_))))
  (define gxc#xform-lambda%
    (lambda (_stx15175_ . _args15176_)
      (let* ((_g1517815192_
              (lambda (_g1517915189_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1517915189_)))
             (_g1517715229_
              (lambda (_g1517915195_)
                (if (gx#stx-pair? _g1517915195_)
                    (let ((_e1518215197_ (gx#stx-e _g1517915195_)))
                      (let ((_hd1518315200_ (##car _e1518215197_))
                            (_tl1518415202_ (##cdr _e1518215197_)))
                        (if (gx#stx-pair? _tl1518415202_)
                            (let ((_e1518515205_ (gx#stx-e _tl1518415202_)))
                              (let ((_hd1518615208_ (##car _e1518515205_))
                                    (_tl1518715210_ (##cdr _e1518515205_)))
                                ((lambda (_L15213_ _L15214_)
                                   (let ((_body15227_
                                          (map (gxc#xform-apply-compile-e
                                                _args15176_)
                                               _L15213_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L15214_ _body15227_))
                                      _stx15175_)))
                                 _tl1518715210_
                                 _hd1518615208_)))
                            (_g1517815192_ _g1517915195_))))
                    (_g1517815192_ _g1517915195_)))))
        (_g1517715229_ _stx15175_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx15088_ . _args15089_)
      (letrec ((_clause-e15091_
                (lambda (_clause15132_)
                  (let* ((_g1513415145_
                          (lambda (_g1513515142_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1513515142_)))
                         (_g1513315172_
                          (lambda (_g1513515148_)
                            (if (gx#stx-pair? _g1513515148_)
                                (let ((_e1513815150_ (gx#stx-e _g1513515148_)))
                                  (let ((_hd1513915153_ (##car _e1513815150_))
                                        (_tl1514015155_ (##cdr _e1513815150_)))
                                    ((lambda (_L15158_ _L15159_)
                                       (let ((_body15170_
                                              (map (gxc#xform-apply-compile-e
                                                    _args15089_)
                                                   _L15158_)))
                                         (cons _L15159_ _body15170_)))
                                     _tl1514015155_
                                     _hd1513915153_)))
                                (_g1513415145_ _g1513515148_)))))
                    (_g1513315172_ _clause15132_)))))
        (let* ((_g1509315103_
                (lambda (_g1509415100_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1509415100_)))
               (_g1509215129_
                (lambda (_g1509415106_)
                  (if (gx#stx-pair? _g1509415106_)
                      (let ((_e1509615108_ (gx#stx-e _g1509415106_)))
                        (let ((_hd1509715111_ (##car _e1509615108_))
                              (_tl1509815113_ (##cdr _e1509615108_)))
                          ((lambda (_L15116_)
                             (let ((_clauses15127_
                                    (map _clause-e15091_ _L15116_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses15127_)
                                _stx15088_)))
                           _tl1509815113_)))
                      (_g1509315103_ _g1509415106_)))))
          (_g1509215129_ _stx15088_)))))
  (define gxc#xform-let-values%
    (lambda (_stx14882_ . _args14883_)
      (let* ((_g1488514918_
              (lambda (_g1488614915_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1488614915_)))
             (_g1488415085_
              (lambda (_g1488614921_)
                (if (gx#stx-pair? _g1488614921_)
                    (let ((_e1489114923_ (gx#stx-e _g1488614921_)))
                      (let ((_hd1489214926_ (##car _e1489114923_))
                            (_tl1489314928_ (##cdr _e1489114923_)))
                        (if (gx#stx-pair? _tl1489314928_)
                            (let ((_e1489414931_ (gx#stx-e _tl1489314928_)))
                              (let ((_hd1489514934_ (##car _e1489414931_))
                                    (_tl1489614936_ (##cdr _e1489414931_)))
                                (if (gx#stx-pair/null? _hd1489514934_)
                                    (if (fx>= (gx#stx-length _hd1489514934_)
                                              '0)
                                        (let ((_g15561_
                                               (gx#syntax-split-splice
                                                _hd1489514934_
                                                '0)))
                                          (begin
                                            (let ((_g15562_
                                                   (if (##values? _g15561_)
                                                       (##vector-length
                                                        _g15561_)
                                                       1)))
                                              (if (not (##fx= _g15562_ 2))
                                                  (error "Context expects 2 values"
                                                         _g15562_)))
                                            (let ((_target1489714939_
                                                   (##vector-ref _g15561_ 0))
                                                  (_tl1489914941_
                                                   (##vector-ref _g15561_ 1)))
                                              (if (gx#stx-null? _tl1489914941_)
                                                  (letrec ((_loop1490014944_
                                                            (lambda (_hd1489814947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1490414949_
                             _hd1490514951_)
                      (if (gx#stx-pair? _hd1489814947_)
                          (let ((_e1490114954_ (gx#stx-e _hd1489814947_)))
                            (let ((_lp-hd1490214957_ (##car _e1490114954_))
                                  (_lp-tl1490314959_ (##cdr _e1490114954_)))
                              (if (gx#stx-pair? _lp-hd1490214957_)
                                  (let ((_e1490814962_
                                         (gx#stx-e _lp-hd1490214957_)))
                                    (let ((_hd1490914965_
                                           (##car _e1490814962_))
                                          (_tl1491014967_
                                           (##cdr _e1490814962_)))
                                      (if (gx#stx-pair? _tl1491014967_)
                                          (let ((_e1491114970_
                                                 (gx#stx-e _tl1491014967_)))
                                            (let ((_hd1491214973_
                                                   (##car _e1491114970_))
                                                  (_tl1491314975_
                                                   (##cdr _e1491114970_)))
                                              (if (gx#stx-null? _tl1491314975_)
                                                  (_loop1490014944_
                                                   _lp-tl1490314959_
                                                   (cons _hd1491214973_
                                                         _expr1490414949_)
                                                   (cons _hd1490914965_
                                                         _hd1490514951_))
                                                  (_g1488514918_
                                                   _g1488614921_))))
                                          (_g1488514918_ _g1488614921_))))
                                  (_g1488514918_ _g1488614921_))))
                          (let ((_expr1490614978_ (reverse _expr1490414949_))
                                (_hd1490714980_ (reverse _hd1490514951_)))
                            ((lambda (_L14983_ _L14984_ _L14985_ _L14986_)
                               (let* ((_g1500515021_
                                       (lambda (_g1500615018_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1500615018_)))
                                      (_g1500415075_
                                       (lambda (_g1500615024_)
                                         (if (gx#stx-pair/null? _g1500615024_)
                                             (if (fx>= (gx#stx-length
                                                        _g1500615024_)
                                                       '0)
                                                 (let ((_g15563_
                                                        (gx#syntax-split-splice
                                                         _g1500615024_
                                                         '0)))
                                                   (begin
                                                     (let ((_g15564_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g15563_)
                        (##vector-length _g15563_)
                        1)))
               (if (not (##fx= _g15564_ 2))
                   (error "Context expects 2 values" _g15564_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1500815026_
                                                            (##vector-ref
                                                             _g15563_
                                                             0))
                                                           (_tl1501015028_
                                                            (##vector-ref
                                                             _g15563_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1501015028_)
                                                           (letrec ((_loop1501115031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1500915034_ _expr1501515036_)
                               (if (gx#stx-pair? _hd1500915034_)
                                   (let ((_e1501215039_
                                          (gx#syntax-e _hd1500915034_)))
                                     (let ((_lp-hd1501315042_
                                            (##car _e1501215039_))
                                           (_lp-tl1501415044_
                                            (##cdr _e1501215039_)))
                                       (_loop1501115031_
                                        _lp-tl1501415044_
                                        (cons _lp-hd1501315042_
                                              _expr1501515036_))))
                                   (let ((_expr1501615047_
                                          (reverse _expr1501515036_)))
                                     ((lambda (_L15050_)
                                        (let ()
                                          (let ((_body15063_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args14883_)
                                                      _L14983_)))
                                            (gxc#xform-wrap-source
                                             (cons _L14986_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L15050_
                                                            _L14985_)
                                                           (foldr2 (lambda (_g1506415068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1506515070_
                                    _g1506615072_)
                             (cons (cons _g1506515070_
                                         (cons _g1506415068_ '()))
                                   _g1506615072_))
                           '()
                           _L15050_
                           _L14985_))
                 _body15063_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx14882_))))
                                      _expr1501615047_))))))
                     (_loop1501115031_ _target1500815026_ '()))
                   (_g1500515021_ _g1500615024_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1500515021_ _g1500615024_))
                                             (_g1500515021_ _g1500615024_)))))
                                 (_g1500415075_
                                  (map (gxc#xform-apply-compile-e _args14883_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1507715080_
                                                          _g1507815082_)
                                                   (cons _g1507715080_
                                                         _g1507815082_))
                                                 '()
                                                 _L14984_))))))
                             _tl1489614936_
                             _expr1490614978_
                             _hd1490714980_
                             _hd1489214926_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1490014944_
                                                     _target1489714939_
                                                     '()
                                                     '()))
                                                  (_g1488514918_
                                                   _g1488614921_)))))
                                        (_g1488514918_ _g1488614921_))
                                    (_g1488514918_ _g1488614921_))))
                            (_g1488514918_ _g1488614921_))))
                    (_g1488514918_ _g1488614921_)))))
        (_g1488415085_ _stx14882_))))
  (define gxc#xform-operands
    (lambda (_stx14838_ . _args14839_)
      (let* ((_g1484114852_
              (lambda (_g1484214849_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1484214849_)))
             (_g1484014879_
              (lambda (_g1484214855_)
                (if (gx#stx-pair? _g1484214855_)
                    (let ((_e1484514857_ (gx#stx-e _g1484214855_)))
                      (let ((_hd1484614860_ (##car _e1484514857_))
                            (_tl1484714862_ (##cdr _e1484514857_)))
                        ((lambda (_L14865_ _L14866_)
                           (let ((_rands14877_
                                  (map (gxc#xform-apply-compile-e _args14839_)
                                       _L14865_)))
                             (gxc#xform-wrap-source
                              (cons _L14866_ _rands14877_)
                              _stx14838_)))
                         _tl1484714862_
                         _hd1484614860_)))
                    (_g1484114852_ _g1484214855_)))))
        (_g1484014879_ _stx14838_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx14768_ . _args14769_)
      (let* ((_g1477114788_
              (lambda (_g1477214785_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1477214785_)))
             (_g1477014835_
              (lambda (_g1477214791_)
                (if (gx#stx-pair? _g1477214791_)
                    (let ((_e1477514793_ (gx#stx-e _g1477214791_)))
                      (let ((_hd1477614796_ (##car _e1477514793_))
                            (_tl1477714798_ (##cdr _e1477514793_)))
                        (if (gx#stx-pair? _tl1477714798_)
                            (let ((_e1477814801_ (gx#stx-e _tl1477714798_)))
                              (let ((_hd1477914804_ (##car _e1477814801_))
                                    (_tl1478014806_ (##cdr _e1477814801_)))
                                (if (gx#stx-pair? _tl1478014806_)
                                    (let ((_e1478114809_
                                           (gx#stx-e _tl1478014806_)))
                                      (let ((_hd1478214812_
                                             (##car _e1478114809_))
                                            (_tl1478314814_
                                             (##cdr _e1478114809_)))
                                        (if (gx#stx-null? _tl1478314814_)
                                            ((lambda (_L14817_ _L14818_)
                                               (let ((_expr14833_
                                                      (apply gxc#compile-e
                                                             _L14817_
                                                             _args14769_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L14818_
                                                              (cons _expr14833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx14768_)))
                                             _hd1478214812_
                                             _hd1477914804_)
                                            (_g1477114788_ _g1477214791_))))
                                    (_g1477114788_ _g1477214791_))))
                            (_g1477114788_ _g1477214791_))))
                    (_g1477114788_ _g1477214791_)))))
        (_g1477014835_ _stx14768_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx14699_)
      (let* ((_g1470114718_
              (lambda (_g1470214715_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1470214715_)))
             (_g1470014765_
              (lambda (_g1470214721_)
                (if (gx#stx-pair? _g1470214721_)
                    (let ((_e1470514723_ (gx#stx-e _g1470214721_)))
                      (let ((_hd1470614726_ (##car _e1470514723_))
                            (_tl1470714728_ (##cdr _e1470514723_)))
                        (if (gx#stx-pair? _tl1470714728_)
                            (let ((_e1470814731_ (gx#stx-e _tl1470714728_)))
                              (let ((_hd1470914734_ (##car _e1470814731_))
                                    (_tl1471014736_ (##cdr _e1470814731_)))
                                (if (gx#stx-pair? _tl1471014736_)
                                    (let ((_e1471114739_
                                           (gx#stx-e _tl1471014736_)))
                                      (let ((_hd1471214742_
                                             (##car _e1471114739_))
                                            (_tl1471314744_
                                             (##cdr _e1471114739_)))
                                        (if (gx#stx-null? _tl1471314744_)
                                            ((lambda (_L14747_ _L14748_)
                                               (let ((_sym14763_
                                                      (gxc#identifier-symbol
                                                       _L14748_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym14763_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym14763_
                                                    '#t)
                                                   (gxc#compile-e _L14747_))))
                                             _hd1471214742_
                                             _hd1470914734_)
                                            (_g1470114718_ _g1470214721_))))
                                    (_g1470114718_ _g1470214721_))))
                            (_g1470114718_ _g1470214721_))))
                    (_g1470114718_ _g1470214721_)))))
        (_g1470014765_ _stx14699_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14646_ _id14647_ _new-id14648_)
      (let* ((_g1465014663_
              (lambda (_g1465114660_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1465114660_)))
             (_g1464914696_
              (lambda (_g1465114666_)
                (if (gx#stx-pair? _g1465114666_)
                    (let ((_e1465314668_ (gx#stx-e _g1465114666_)))
                      (let ((_hd1465414671_ (##car _e1465314668_))
                            (_tl1465514673_ (##cdr _e1465314668_)))
                        (if (gx#stx-pair? _tl1465514673_)
                            (let ((_e1465614676_ (gx#stx-e _tl1465514673_)))
                              (let ((_hd1465714679_ (##car _e1465614676_))
                                    (_tl1465814681_ (##cdr _e1465614676_)))
                                (if (gx#stx-null? _tl1465814681_)
                                    ((lambda (_L14684_)
                                       (if (gx#free-identifier=?
                                            _L14684_
                                            _id14647_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id14648_ '()))
                                            _stx14646_)
                                           _stx14646_))
                                     _hd1465714679_)
                                    (_g1465014663_ _g1465114666_))))
                            (_g1465014663_ _g1465114666_))))
                    (_g1465014663_ _g1465114666_)))))
        (_g1464914696_ _stx14646_))))
  (define gxc#expression-subst*-ref%
    (lambda (_stx14587_ _subst14588_)
      (let* ((_g1459014603_
              (lambda (_g1459114600_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1459114600_)))
             (_g1458914643_
              (lambda (_g1459114606_)
                (if (gx#stx-pair? _g1459114606_)
                    (let ((_e1459314608_ (gx#stx-e _g1459114606_)))
                      (let ((_hd1459414611_ (##car _e1459314608_))
                            (_tl1459514613_ (##cdr _e1459314608_)))
                        (if (gx#stx-pair? _tl1459514613_)
                            (let ((_e1459614616_ (gx#stx-e _tl1459514613_)))
                              (let ((_hd1459714619_ (##car _e1459614616_))
                                    (_tl1459814621_ (##cdr _e1459614616_)))
                                (if (gx#stx-null? _tl1459814621_)
                                    ((lambda (_L14624_)
                                       (let ((_$e14638_
                                              (find (lambda (_sub14636_)
                                                      (gx#free-identifier=?
                                                       _L14624_
                                                       (car _sub14636_)))
                                                    _subst14588_)))
                                         (if _$e14638_
                                             ((lambda (_sub14641_)
                                                (gxc#xform-wrap-source
                                                 (cons '%#ref
                                                       (cons (cdr _sub14641_)
                                                             '()))
                                                 _stx14587_))
                                              _$e14638_)
                                             _stx14587_)))
                                     _hd1459714619_)
                                    (_g1459014603_ _g1459114606_))))
                            (_g1459014603_ _g1459114606_))))
                    (_g1459014603_ _g1459114606_)))))
        (_g1458914643_ _stx14587_))))
  (define gxc#expression-subst-setq%
    (lambda (_stx14515_ _id14516_ _new-id14517_)
      (let* ((_g1451914536_
              (lambda (_g1452014533_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1452014533_)))
             (_g1451814584_
              (lambda (_g1452014539_)
                (if (gx#stx-pair? _g1452014539_)
                    (let ((_e1452314541_ (gx#stx-e _g1452014539_)))
                      (let ((_hd1452414544_ (##car _e1452314541_))
                            (_tl1452514546_ (##cdr _e1452314541_)))
                        (if (gx#stx-pair? _tl1452514546_)
                            (let ((_e1452614549_ (gx#stx-e _tl1452514546_)))
                              (let ((_hd1452714552_ (##car _e1452614549_))
                                    (_tl1452814554_ (##cdr _e1452614549_)))
                                (if (gx#stx-pair? _tl1452814554_)
                                    (let ((_e1452914557_
                                           (gx#stx-e _tl1452814554_)))
                                      (let ((_hd1453014560_
                                             (##car _e1452914557_))
                                            (_tl1453114562_
                                             (##cdr _e1452914557_)))
                                        (if (gx#stx-null? _tl1453114562_)
                                            ((lambda (_L14565_ _L14566_)
                                               (let ((_new-expr14581_
                                                      (gxc#compile-e
                                                       _L14565_
                                                       _id14516_
                                                       _new-id14517_))
                                                     (_new-xid14582_
                                                      (if (gx#free-identifier=?
                                                           _L14566_
                                                           _id14516_)
                                                          _new-id14517_
                                                          _L14566_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid14582_
                                                              (cons _new-expr14581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx14515_)))
                                             _hd1453014560_
                                             _hd1452714552_)
                                            (_g1451914536_ _g1452014539_))))
                                    (_g1451914536_ _g1452014539_))))
                            (_g1451914536_ _g1452014539_))))
                    (_g1451914536_ _g1452014539_)))))
        (_g1451814584_ _stx14515_))))
  (define gxc#expression-subst*-setq%
    (lambda (_stx14439_ _subst14440_)
      (let* ((_g1444214459_
              (lambda (_g1444314456_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1444314456_)))
             (_g1444114512_
              (lambda (_g1444314462_)
                (if (gx#stx-pair? _g1444314462_)
                    (let ((_e1444614464_ (gx#stx-e _g1444314462_)))
                      (let ((_hd1444714467_ (##car _e1444614464_))
                            (_tl1444814469_ (##cdr _e1444614464_)))
                        (if (gx#stx-pair? _tl1444814469_)
                            (let ((_e1444914472_ (gx#stx-e _tl1444814469_)))
                              (let ((_hd1445014475_ (##car _e1444914472_))
                                    (_tl1445114477_ (##cdr _e1444914472_)))
                                (if (gx#stx-pair? _tl1445114477_)
                                    (let ((_e1445214480_
                                           (gx#stx-e _tl1445114477_)))
                                      (let ((_hd1445314483_
                                             (##car _e1445214480_))
                                            (_tl1445414485_
                                             (##cdr _e1445214480_)))
                                        (if (gx#stx-null? _tl1445414485_)
                                            ((lambda (_L14488_ _L14489_)
                                               (let ((_new-expr14509_
                                                      (gxc#compile-e
                                                       _L14488_
                                                       _subst14440_))
                                                     (_new-xid14510_
                                                      (let ((_$e14506_
                                                             (find (lambda (_sub14504_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#free-identifier=? _L14489_ (car _sub14504_)))
                           _subst14440_)))
                (if _$e14506_ (cdr _$e14506_) _L14489_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid14510_
                                                              (cons _new-expr14509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx14439_)))
                                             _hd1445314483_
                                             _hd1445014475_)
                                            (_g1444214459_ _g1444314462_))))
                                    (_g1444214459_ _g1444314462_))))
                            (_g1444214459_ _g1444314462_))))
                    (_g1444214459_ _g1444314462_)))))
        (_g1444114512_ _stx14439_))))
  (define gxc#collect-runtime-refs-ref%
    (lambda (_stx14385_ _ht14386_)
      (let* ((_g1438814401_
              (lambda (_g1438914398_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1438914398_)))
             (_g1438714436_
              (lambda (_g1438914404_)
                (if (gx#stx-pair? _g1438914404_)
                    (let ((_e1439114406_ (gx#stx-e _g1438914404_)))
                      (let ((_hd1439214409_ (##car _e1439114406_))
                            (_tl1439314411_ (##cdr _e1439114406_)))
                        (if (gx#stx-pair? _tl1439314411_)
                            (let ((_e1439414414_ (gx#stx-e _tl1439314411_)))
                              (let ((_hd1439514417_ (##car _e1439414414_))
                                    (_tl1439614419_ (##cdr _e1439414414_)))
                                (if (gx#stx-null? _tl1439614419_)
                                    ((lambda (_L14422_)
                                       (let ((_eid14434_
                                              (gxc#identifier-symbol
                                               _L14422_)))
                                         (hash-update!
                                          _ht14386_
                                          _eid14434_
                                          1+
                                          '0)))
                                     _hd1439514417_)
                                    (_g1438814401_ _g1438914404_))))
                            (_g1438814401_ _g1438914404_))))
                    (_g1438814401_ _g1438914404_)))))
        (_g1438714436_ _stx14385_))))
  (define gxc#collect-runtime-refs-setq%
    (lambda (_stx14315_ _ht14316_)
      (let* ((_g1431814335_
              (lambda (_g1431914332_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1431914332_)))
             (_g1431714382_
              (lambda (_g1431914338_)
                (if (gx#stx-pair? _g1431914338_)
                    (let ((_e1432214340_ (gx#stx-e _g1431914338_)))
                      (let ((_hd1432314343_ (##car _e1432214340_))
                            (_tl1432414345_ (##cdr _e1432214340_)))
                        (if (gx#stx-pair? _tl1432414345_)
                            (let ((_e1432514348_ (gx#stx-e _tl1432414345_)))
                              (let ((_hd1432614351_ (##car _e1432514348_))
                                    (_tl1432714353_ (##cdr _e1432514348_)))
                                (if (gx#stx-pair? _tl1432714353_)
                                    (let ((_e1432814356_
                                           (gx#stx-e _tl1432714353_)))
                                      (let ((_hd1432914359_
                                             (##car _e1432814356_))
                                            (_tl1433014361_
                                             (##cdr _e1432814356_)))
                                        (if (gx#stx-null? _tl1433014361_)
                                            ((lambda (_L14364_ _L14365_)
                                               (let ((_eid14380_
                                                      (gxc#identifier-symbol
                                                       _L14365_)))
                                                 (begin
                                                   (hash-update!
                                                    _ht14316_
                                                    _eid14380_
                                                    1+
                                                    '0)
                                                   (gxc#compile-e
                                                    _L14364_
                                                    _ht14316_))))
                                             _hd1432914359_
                                             _hd1432614351_)
                                            (_g1431814335_ _g1431914338_))))
                                    (_g1431814335_ _g1431914338_))))
                            (_g1431814335_ _g1431914338_))))
                    (_g1431814335_ _g1431914338_)))))
        (_g1431714382_ _stx14315_))))
  (define gxc#find-body%
    (lambda (_stx14228_ _arg14229_)
      (let* ((_g1423114250_
              (lambda (_g1423214247_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1423214247_)))
             (_g1423014312_
              (lambda (_g1423214253_)
                (if (gx#stx-pair? _g1423214253_)
                    (let ((_e1423414255_ (gx#stx-e _g1423214253_)))
                      (let ((_hd1423514258_ (##car _e1423414255_))
                            (_tl1423614260_ (##cdr _e1423414255_)))
                        (if (gx#stx-pair/null? _tl1423614260_)
                            (if (fx>= (gx#stx-length _tl1423614260_) '0)
                                (let ((_g15565_
                                       (gx#syntax-split-splice
                                        _tl1423614260_
                                        '0)))
                                  (begin
                                    (let ((_g15566_
                                           (if (##values? _g15565_)
                                               (##vector-length _g15565_)
                                               1)))
                                      (if (not (##fx= _g15566_ 2))
                                          (error "Context expects 2 values"
                                                 _g15566_)))
                                    (let ((_target1423714263_
                                           (##vector-ref _g15565_ 0))
                                          (_tl1423914265_
                                           (##vector-ref _g15565_ 1)))
                                      (if (gx#stx-null? _tl1423914265_)
                                          (letrec ((_loop1424014268_
                                                    (lambda (_hd1423814271_
                                                             _expr1424414273_)
                                                      (if (gx#stx-pair?
                                                           _hd1423814271_)
                                                          (let ((_e1424114276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1423814271_)))
                    (let ((_lp-hd1424214279_ (##car _e1424114276_))
                          (_lp-tl1424314281_ (##cdr _e1424114276_)))
                      (_loop1424014268_
                       _lp-tl1424314281_
                       (cons _lp-hd1424214279_ _expr1424414273_))))
                  (let ((_expr1424514284_ (reverse _expr1424414273_)))
                    ((lambda (_L14287_)
                       (ormap1 (lambda (_g1430014302_)
                                 (gxc#compile-e _g1430014302_ _arg14229_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1430414307_ _g1430514309_)
                                           (cons _g1430414307_ _g1430514309_))
                                         '()
                                         _L14287_))))
                     _expr1424514284_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1424014268_
                                             _target1423714263_
                                             '()))
                                          (_g1423114250_ _g1423214253_)))))
                                (_g1423114250_ _g1423214253_))
                            (_g1423114250_ _g1423214253_))))
                    (_g1423114250_ _g1423214253_)))))
        (_g1423014312_ _stx14228_))))
  (define gxc#find-begin-annotation%
    (lambda (_stx14160_ _arg14161_)
      (let* ((_g1416314180_
              (lambda (_g1416414177_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1416414177_)))
             (_g1416214225_
              (lambda (_g1416414183_)
                (if (gx#stx-pair? _g1416414183_)
                    (let ((_e1416714185_ (gx#stx-e _g1416414183_)))
                      (let ((_hd1416814188_ (##car _e1416714185_))
                            (_tl1416914190_ (##cdr _e1416714185_)))
                        (if (gx#stx-pair? _tl1416914190_)
                            (let ((_e1417014193_ (gx#stx-e _tl1416914190_)))
                              (let ((_hd1417114196_ (##car _e1417014193_))
                                    (_tl1417214198_ (##cdr _e1417014193_)))
                                (if (gx#stx-pair? _tl1417214198_)
                                    (let ((_e1417314201_
                                           (gx#stx-e _tl1417214198_)))
                                      (let ((_hd1417414204_
                                             (##car _e1417314201_))
                                            (_tl1417514206_
                                             (##cdr _e1417314201_)))
                                        (if (gx#stx-null? _tl1417514206_)
                                            ((lambda (_L14209_ _L14210_)
                                               (gxc#compile-e
                                                _L14209_
                                                _arg14161_))
                                             _hd1417414204_
                                             _hd1417114196_)
                                            (_g1416314180_ _g1416414183_))))
                                    (_g1416314180_ _g1416414183_))))
                            (_g1416314180_ _g1416414183_))))
                    (_g1416314180_ _g1416414183_)))))
        (_g1416214225_ _stx14160_))))
  (define gxc#find-lambda%
    (lambda (_stx14092_ _arg14093_)
      (let* ((_g1409514112_
              (lambda (_g1409614109_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1409614109_)))
             (_g1409414157_
              (lambda (_g1409614115_)
                (if (gx#stx-pair? _g1409614115_)
                    (let ((_e1409914117_ (gx#stx-e _g1409614115_)))
                      (let ((_hd1410014120_ (##car _e1409914117_))
                            (_tl1410114122_ (##cdr _e1409914117_)))
                        (if (gx#stx-pair? _tl1410114122_)
                            (let ((_e1410214125_ (gx#stx-e _tl1410114122_)))
                              (let ((_hd1410314128_ (##car _e1410214125_))
                                    (_tl1410414130_ (##cdr _e1410214125_)))
                                (if (gx#stx-pair? _tl1410414130_)
                                    (let ((_e1410514133_
                                           (gx#stx-e _tl1410414130_)))
                                      (let ((_hd1410614136_
                                             (##car _e1410514133_))
                                            (_tl1410714138_
                                             (##cdr _e1410514133_)))
                                        (if (gx#stx-null? _tl1410714138_)
                                            ((lambda (_L14141_ _L14142_)
                                               (gxc#compile-e
                                                _L14141_
                                                _arg14093_))
                                             _hd1410614136_
                                             _hd1410314128_)
                                            (_g1409514112_ _g1409614115_))))
                                    (_g1409514112_ _g1409614115_))))
                            (_g1409514112_ _g1409614115_))))
                    (_g1409514112_ _g1409614115_)))))
        (_g1409414157_ _stx14092_))))
  (define gxc#find-case-lambda%
    (lambda (_stx13974_ _arg13975_)
      (let* ((_g1397714005_
              (lambda (_g1397814002_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1397814002_)))
             (_g1397614089_
              (lambda (_g1397814008_)
                (if (gx#stx-pair? _g1397814008_)
                    (let ((_e1398114010_ (gx#stx-e _g1397814008_)))
                      (let ((_hd1398214013_ (##car _e1398114010_))
                            (_tl1398314015_ (##cdr _e1398114010_)))
                        (if (gx#stx-pair/null? _tl1398314015_)
                            (if (fx>= (gx#stx-length _tl1398314015_) '0)
                                (let ((_g15567_
                                       (gx#syntax-split-splice
                                        _tl1398314015_
                                        '0)))
                                  (begin
                                    (let ((_g15568_
                                           (if (##values? _g15567_)
                                               (##vector-length _g15567_)
                                               1)))
                                      (if (not (##fx= _g15568_ 2))
                                          (error "Context expects 2 values"
                                                 _g15568_)))
                                    (let ((_target1398414018_
                                           (##vector-ref _g15567_ 0))
                                          (_tl1398614020_
                                           (##vector-ref _g15567_ 1)))
                                      (if (gx#stx-null? _tl1398614020_)
                                          (letrec ((_loop1398714023_
                                                    (lambda (_hd1398514026_
                                                             _body1399114028_
                                                             _hd1399214030_)
                                                      (if (gx#stx-pair?
                                                           _hd1398514026_)
                                                          (let ((_e1398814033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1398514026_)))
                    (let ((_lp-hd1398914036_ (##car _e1398814033_))
                          (_lp-tl1399014038_ (##cdr _e1398814033_)))
                      (if (gx#stx-pair? _lp-hd1398914036_)
                          (let ((_e1399514041_ (gx#stx-e _lp-hd1398914036_)))
                            (let ((_hd1399614044_ (##car _e1399514041_))
                                  (_tl1399714046_ (##cdr _e1399514041_)))
                              (if (gx#stx-pair? _tl1399714046_)
                                  (let ((_e1399814049_
                                         (gx#stx-e _tl1399714046_)))
                                    (let ((_hd1399914052_
                                           (##car _e1399814049_))
                                          (_tl1400014054_
                                           (##cdr _e1399814049_)))
                                      (if (gx#stx-null? _tl1400014054_)
                                          (_loop1398714023_
                                           _lp-tl1399014038_
                                           (cons _hd1399914052_
                                                 _body1399114028_)
                                           (cons _hd1399614044_
                                                 _hd1399214030_))
                                          (_g1397714005_ _g1397814008_))))
                                  (_g1397714005_ _g1397814008_))))
                          (_g1397714005_ _g1397814008_))))
                  (let ((_body1399314057_ (reverse _body1399114028_))
                        (_hd1399414059_ (reverse _hd1399214030_)))
                    ((lambda (_L14062_ _L14063_)
                       (ormap1 (lambda (_g1407714079_)
                                 (gxc#compile-e _g1407714079_ _arg13975_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1408114084_ _g1408214086_)
                                           (cons _g1408114084_ _g1408214086_))
                                         '()
                                         _L14062_))))
                     _body1399314057_
                     _hd1399414059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1398714023_
                                             _target1398414018_
                                             '()
                                             '()))
                                          (_g1397714005_ _g1397814008_)))))
                                (_g1397714005_ _g1397814008_))
                            (_g1397714005_ _g1397814008_))))
                    (_g1397714005_ _g1397814008_)))))
        (_g1397614089_ _stx13974_))))
  (define gxc#find-let-values%
    (lambda (_stx13824_ _arg13825_)
      (let* ((_g1382713862_
              (lambda (_g1382813859_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1382813859_)))
             (_g1382613971_
              (lambda (_g1382813865_)
                (if (gx#stx-pair? _g1382813865_)
                    (let ((_e1383213867_ (gx#stx-e _g1382813865_)))
                      (let ((_hd1383313870_ (##car _e1383213867_))
                            (_tl1383413872_ (##cdr _e1383213867_)))
                        (if (gx#stx-pair? _tl1383413872_)
                            (let ((_e1383513875_ (gx#stx-e _tl1383413872_)))
                              (let ((_hd1383613878_ (##car _e1383513875_))
                                    (_tl1383713880_ (##cdr _e1383513875_)))
                                (if (gx#stx-pair/null? _hd1383613878_)
                                    (if (fx>= (gx#stx-length _hd1383613878_)
                                              '0)
                                        (let ((_g15569_
                                               (gx#syntax-split-splice
                                                _hd1383613878_
                                                '0)))
                                          (begin
                                            (let ((_g15570_
                                                   (if (##values? _g15569_)
                                                       (##vector-length
                                                        _g15569_)
                                                       1)))
                                              (if (not (##fx= _g15570_ 2))
                                                  (error "Context expects 2 values"
                                                         _g15570_)))
                                            (let ((_target1383813883_
                                                   (##vector-ref _g15569_ 0))
                                                  (_tl1384013885_
                                                   (##vector-ref _g15569_ 1)))
                                              (if (gx#stx-null? _tl1384013885_)
                                                  (letrec ((_loop1384113888_
                                                            (lambda (_hd1383913891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1384513893_
                             _bind1384613895_)
                      (if (gx#stx-pair? _hd1383913891_)
                          (let ((_e1384213898_ (gx#stx-e _hd1383913891_)))
                            (let ((_lp-hd1384313901_ (##car _e1384213898_))
                                  (_lp-tl1384413903_ (##cdr _e1384213898_)))
                              (if (gx#stx-pair? _lp-hd1384313901_)
                                  (let ((_e1384913906_
                                         (gx#stx-e _lp-hd1384313901_)))
                                    (let ((_hd1385013909_
                                           (##car _e1384913906_))
                                          (_tl1385113911_
                                           (##cdr _e1384913906_)))
                                      (if (gx#stx-pair? _tl1385113911_)
                                          (let ((_e1385213914_
                                                 (gx#stx-e _tl1385113911_)))
                                            (let ((_hd1385313917_
                                                   (##car _e1385213914_))
                                                  (_tl1385413919_
                                                   (##cdr _e1385213914_)))
                                              (if (gx#stx-null? _tl1385413919_)
                                                  (_loop1384113888_
                                                   _lp-tl1384413903_
                                                   (cons _hd1385313917_
                                                         _expr1384513893_)
                                                   (cons _hd1385013909_
                                                         _bind1384613895_))
                                                  (_g1382713862_
                                                   _g1382813865_))))
                                          (_g1382713862_ _g1382813865_))))
                                  (_g1382713862_ _g1382813865_))))
                          (let ((_expr1384713922_ (reverse _expr1384513893_))
                                (_bind1384813924_ (reverse _bind1384613895_)))
                            (if (gx#stx-pair? _tl1383713880_)
                                (let ((_e1385513927_
                                       (gx#stx-e _tl1383713880_)))
                                  (let ((_hd1385613930_ (##car _e1385513927_))
                                        (_tl1385713932_ (##cdr _e1385513927_)))
                                    (if (gx#stx-null? _tl1385713932_)
                                        ((lambda (_L13935_ _L13936_ _L13937_)
                                           (let ((_$e13968_
                                                  (ormap1 (lambda (_g1395613958_)
                                                            (gxc#compile-e
                                                             _g1395613958_
                                                             _arg13825_))
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1396013963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1396113965_)
                              (cons _g1396013963_ _g1396113965_))
                            '()
                            _L13936_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e13968_
                                                 _$e13968_
                                                 (gxc#compile-e
                                                  _L13935_
                                                  _arg13825_))))
                                         _hd1385613930_
                                         _expr1384713922_
                                         _bind1384813924_)
                                        (_g1382713862_ _g1382813865_))))
                                (_g1382713862_ _g1382813865_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1384113888_
                                                     _target1383813883_
                                                     '()
                                                     '()))
                                                  (_g1382713862_
                                                   _g1382813865_)))))
                                        (_g1382713862_ _g1382813865_))
                                    (_g1382713862_ _g1382813865_))))
                            (_g1382713862_ _g1382813865_))))
                    (_g1382713862_ _g1382813865_)))))
        (_g1382613971_ _stx13824_))))
  (define gxc#find-setq%
    (lambda (_stx13756_ _arg13757_)
      (let* ((_g1375913776_
              (lambda (_g1376013773_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1376013773_)))
             (_g1375813821_
              (lambda (_g1376013779_)
                (if (gx#stx-pair? _g1376013779_)
                    (let ((_e1376313781_ (gx#stx-e _g1376013779_)))
                      (let ((_hd1376413784_ (##car _e1376313781_))
                            (_tl1376513786_ (##cdr _e1376313781_)))
                        (if (gx#stx-pair? _tl1376513786_)
                            (let ((_e1376613789_ (gx#stx-e _tl1376513786_)))
                              (let ((_hd1376713792_ (##car _e1376613789_))
                                    (_tl1376813794_ (##cdr _e1376613789_)))
                                (if (gx#stx-pair? _tl1376813794_)
                                    (let ((_e1376913797_
                                           (gx#stx-e _tl1376813794_)))
                                      (let ((_hd1377013800_
                                             (##car _e1376913797_))
                                            (_tl1377113802_
                                             (##cdr _e1376913797_)))
                                        (if (gx#stx-null? _tl1377113802_)
                                            ((lambda (_L13805_ _L13806_)
                                               (gxc#compile-e
                                                _L13805_
                                                _arg13757_))
                                             _hd1377013800_
                                             _hd1376713792_)
                                            (_g1375913776_ _g1376013779_))))
                                    (_g1375913776_ _g1376013779_))))
                            (_g1375913776_ _g1376013779_))))
                    (_g1375913776_ _g1376013779_)))))
        (_g1375813821_ _stx13756_))))
  (define gxc#find-var-refs-ref%
    (lambda (_stx13700_ _ids13701_)
      (let* ((_g1370313716_
              (lambda (_g1370413713_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1370413713_)))
             (_g1370213753_
              (lambda (_g1370413719_)
                (if (gx#stx-pair? _g1370413719_)
                    (let ((_e1370613721_ (gx#stx-e _g1370413719_)))
                      (let ((_hd1370713724_ (##car _e1370613721_))
                            (_tl1370813726_ (##cdr _e1370613721_)))
                        (if (gx#stx-pair? _tl1370813726_)
                            (let ((_e1370913729_ (gx#stx-e _tl1370813726_)))
                              (let ((_hd1371013732_ (##car _e1370913729_))
                                    (_tl1371113734_ (##cdr _e1370913729_)))
                                (if (gx#stx-null? _tl1371113734_)
                                    ((lambda (_L13737_)
                                       (find (lambda (_g1374813750_)
                                               (gx#free-identifier=?
                                                _L13737_
                                                _g1374813750_))
                                             _ids13701_))
                                     _hd1371013732_)
                                    (_g1370313716_ _g1370413719_))))
                            (_g1370313716_ _g1370413719_))))
                    (_g1370313716_ _g1370413719_)))))
        (_g1370213753_ _stx13700_))))
  (define gxc#find-var-refs-setq%
    (lambda (_stx13624_ _ids13625_)
      (let* ((_g1362713644_
              (lambda (_g1362813641_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1362813641_)))
             (_g1362613697_
              (lambda (_g1362813647_)
                (if (gx#stx-pair? _g1362813647_)
                    (let ((_e1363113649_ (gx#stx-e _g1362813647_)))
                      (let ((_hd1363213652_ (##car _e1363113649_))
                            (_tl1363313654_ (##cdr _e1363113649_)))
                        (if (gx#stx-pair? _tl1363313654_)
                            (let ((_e1363413657_ (gx#stx-e _tl1363313654_)))
                              (let ((_hd1363513660_ (##car _e1363413657_))
                                    (_tl1363613662_ (##cdr _e1363413657_)))
                                (if (gx#stx-pair? _tl1363613662_)
                                    (let ((_e1363713665_
                                           (gx#stx-e _tl1363613662_)))
                                      (let ((_hd1363813668_
                                             (##car _e1363713665_))
                                            (_tl1363913670_
                                             (##cdr _e1363713665_)))
                                        (if (gx#stx-null? _tl1363913670_)
                                            ((lambda (_L13673_ _L13674_)
                                               (let ((_$e13694_
                                                      (find (lambda (_g1368913691_)
                                                              (gx#free-identifier=?
                                                               _L13674_
                                                               _g1368913691_))
                                                            _ids13625_)))
                                                 (if _$e13694_
                                                     _$e13694_
                                                     (gxc#compile-e
                                                      _L13673_
                                                      _ids13625_))))
                                             _hd1363813668_
                                             _hd1363513660_)
                                            (_g1362713644_ _g1362813647_))))
                                    (_g1362713644_ _g1362813647_))))
                            (_g1362713644_ _g1362813647_))))
                    (_g1362713644_ _g1362813647_)))))
        (_g1362613697_ _stx13624_)))))
