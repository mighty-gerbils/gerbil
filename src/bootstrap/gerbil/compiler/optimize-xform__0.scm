(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 100))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl16968_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl16968_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl16968_ '%#lambda gxc#xform-identity)
           (table-set! _tbl16968_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl16968_ '%#let-values gxc#xform-identity)
           (table-set! _tbl16968_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl16968_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl16968_ '%#quote gxc#xform-identity)
           (table-set! _tbl16968_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl16968_ '%#call gxc#xform-identity)
           (table-set! _tbl16968_ '%#if gxc#xform-identity)
           (table-set! _tbl16968_ '%#ref gxc#xform-identity)
           (table-set! _tbl16968_ '%#set! gxc#xform-identity)
           (table-set! _tbl16968_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl16968_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl16968_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl16968_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl16968_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl16968_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl16968_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl16968_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl16968_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl16964_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl16964_ '%#begin gxc#xform-identity)
           (table-set! _tbl16964_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl16964_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl16964_ '%#module gxc#xform-identity)
           (table-set! _tbl16964_ '%#import gxc#xform-identity)
           (table-set! _tbl16964_ '%#export gxc#xform-identity)
           (table-set! _tbl16964_ '%#provide gxc#xform-identity)
           (table-set! _tbl16964_ '%#extern gxc#xform-identity)
           (table-set! _tbl16964_ '%#define-values gxc#xform-identity)
           (table-set! _tbl16964_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl16964_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl16964_ '%#declare gxc#xform-identity)
           _tbl16964_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl16960_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16960_ (force gxc#&identity-special-form))
           (hash-copy! _tbl16960_ (force gxc#&identity-expression))
           _tbl16960_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl16956_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl16956_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl16956_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl16956_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl16956_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl16956_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl16956_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl16956_ '%#quote gxc#xform-identity)
           (table-set! _tbl16956_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl16956_ '%#call gxc#xform-operands)
           (table-set! _tbl16956_ '%#if gxc#xform-operands)
           (table-set! _tbl16956_ '%#ref gxc#xform-identity)
           (table-set! _tbl16956_ '%#set! gxc#xform-setq%)
           (table-set! _tbl16956_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl16956_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl16956_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl16956_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl16956_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl16956_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl16956_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl16956_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl16956_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl16952_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16952_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl16952_ (force gxc#&identity))
           (table-set! _tbl16952_ '%#begin gxc#xform-begin%)
           (table-set! _tbl16952_ '%#begin-syntax gxc#xform-begin-syntax%)
           (table-set! _tbl16952_ '%#module gxc#xform-module%)
           (table-set! _tbl16952_ '%#define-values gxc#xform-define-values%)
           (table-set! _tbl16952_ '%#define-syntax gxc#xform-define-syntax%)
           _tbl16952_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl16948_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16948_ (force gxc#&void))
           (table-set! _tbl16948_ '%#begin gxc#collect-begin%)
           (table-set! _tbl16948_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set!
            _tbl16948_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl16948_ '%#module gxc#collect-module%)
           (table-set! _tbl16948_ '%#define-values gxc#collect-define-values%)
           (table-set! _tbl16948_ '%#define-syntax gxc#collect-define-syntax%)
           (table-set! _tbl16948_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl16948_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl16948_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl16948_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl16948_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl16948_ '%#call gxc#collect-operands)
           (table-set! _tbl16948_ '%#if gxc#collect-operands)
           (table-set! _tbl16948_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl16948_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl16948_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl16948_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl16948_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl16948_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl16948_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl16948_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl16948_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl16948_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx16941_ . _args16943_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16941_ _args16943_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl16938_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16938_ (force gxc#&basic-xform-expression))
           (table-set! _tbl16938_ '%#begin gxc#xform-begin%)
           (table-set! _tbl16938_ '%#ref gxc#expression-subst-ref%)
           (table-set! _tbl16938_ '%#set! gxc#expression-subst-setq%)
           _tbl16938_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx16931_ . _args16933_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16931_ _args16933_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&expression-subst*
    (make-promise
     (lambda ()
       (let ((_tbl16928_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16928_ (force gxc#&expression-subst))
           (table-set! _tbl16928_ '%#ref gxc#expression-subst*-ref%)
           (table-set! _tbl16928_ '%#set! gxc#expression-subst*-setq%)
           _tbl16928_)))))
  (define gxc#apply-expression-subst*
    (lambda (_stx16921_ . _args16923_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16921_ _args16923_))
       gxc#current-compile-methods
       (force gxc#&expression-subst*))))
  (define gxc#&find-expression
    (make-promise
     (lambda ()
       (let ((_tbl16918_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16918_ (force gxc#&false-expression))
           (table-set! _tbl16918_ '%#begin gxc#find-body%)
           (table-set!
            _tbl16918_
            '%#begin-annotation
            gxc#find-begin-annotation%)
           (table-set! _tbl16918_ '%#lambda gxc#find-lambda%)
           (table-set! _tbl16918_ '%#case-lambda gxc#find-case-lambda%)
           (table-set! _tbl16918_ '%#let-values gxc#find-let-values%)
           (table-set! _tbl16918_ '%#letrec-values gxc#find-let-values%)
           (table-set! _tbl16918_ '%#letrec*-values gxc#find-let-values%)
           (table-set! _tbl16918_ '%#call gxc#find-body%)
           (table-set! _tbl16918_ '%#if gxc#find-body%)
           (table-set! _tbl16918_ '%#set! gxc#find-setq%)
           (table-set! _tbl16918_ '%#struct-instance? gxc#find-body%)
           (table-set! _tbl16918_ '%#struct-direct-instance? gxc#find-body%)
           (table-set! _tbl16918_ '%#struct-ref gxc#find-body%)
           (table-set! _tbl16918_ '%#struct-set! gxc#find-body%)
           (table-set! _tbl16918_ '%#struct-direct-ref gxc#find-body%)
           (table-set! _tbl16918_ '%#struct-direct-set! gxc#find-body%)
           (table-set! _tbl16918_ '%#struct-unchecked-ref gxc#find-body%)
           (table-set! _tbl16918_ '%#struct-unchecked-set! gxc#find-body%)
           _tbl16918_)))))
  (define gxc#&find-var-refs
    (make-promise
     (lambda ()
       (let ((_tbl16914_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16914_ (force gxc#&find-expression))
           (table-set! _tbl16914_ '%#ref gxc#find-var-refs-ref%)
           (table-set! _tbl16914_ '%#set! gxc#find-var-refs-setq%)
           _tbl16914_)))))
  (define gxc#apply-find-var-refs
    (lambda (_stx16907_ . _args16909_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16907_ _args16909_))
       gxc#current-compile-methods
       (force gxc#&find-var-refs))))
  (define gxc#&collect-runtime-refs
    (make-promise
     (lambda ()
       (let ((_tbl16904_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16904_ (force gxc#&collect-expression-refs))
           (table-set! _tbl16904_ '%#ref gxc#collect-runtime-refs-ref%)
           (table-set! _tbl16904_ '%#set! gxc#collect-runtime-refs-setq%)
           _tbl16904_)))))
  (define gxc#apply-collect-runtime-refs
    (lambda (_stx16897_ . _args16899_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16897_ _args16899_))
       gxc#current-compile-methods
       (force gxc#&collect-runtime-refs))))
  (define gxc#xform-identity (lambda (_stx16894_ . _args16895_) _stx16894_))
  (define gxc#xform-wrap-source
    (lambda (_stx16891_ _src-stx16892_)
      (gx#stx-wrap-source _stx16891_ (gx#stx-source _src-stx16892_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args16885_)
      (lambda (_g1688616888_)
        (apply gxc#compile-e _g1688616888_ _args16885_))))
  (define gxc#xform-begin%
    (lambda (_stx16844_ . _args16845_)
      (let* ((_g1684716857_
              (lambda (_g1684816854_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1684816854_)))
             (_g1684616882_
              (lambda (_g1684816860_)
                (if (gx#stx-pair? _g1684816860_)
                    (let ((_e1685016862_ (gx#stx-e _g1684816860_)))
                      (let ((_hd1685116865_ (##car _e1685016862_))
                            (_tl1685216867_ (##cdr _e1685016862_)))
                        ((lambda (_L16870_)
                           (let ((_forms16880_
                                  (map (gxc#xform-apply-compile-e _args16845_)
                                       _L16870_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms16880_)
                              _stx16844_)))
                         _tl1685216867_)))
                    (_g1684716857_ _g1684816860_)))))
        (_g1684616882_ _stx16844_))))
  (define gxc#xform-begin-syntax%
    (lambda (_stx16802_ . _args16803_)
      (let* ((_g1680516815_
              (lambda (_g1680616812_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1680616812_)))
             (_g1680416841_
              (lambda (_g1680616818_)
                (if (gx#stx-pair? _g1680616818_)
                    (let ((_e1680816820_ (gx#stx-e _g1680616818_)))
                      (let ((_hd1680916823_ (##car _e1680816820_))
                            (_tl1681016825_ (##cdr _e1680816820_)))
                        ((lambda (_L16828_)
                           (call-with-parameters
                            (lambda ()
                              (let ((_forms16839_
                                     (map (gxc#xform-apply-compile-e
                                           _args16803_)
                                          _L16828_)))
                                (gxc#xform-wrap-source
                                 (cons '%#begin-syntax _forms16839_)
                                 _stx16802_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1681016825_)))
                    (_g1680516815_ _g1680616818_)))))
        (_g1680416841_ _stx16802_))))
  (define gxc#xform-module%
    (lambda (_stx16739_ . _args16740_)
      (let* ((_g1674216756_
              (lambda (_g1674316753_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1674316753_)))
             (_g1674116799_
              (lambda (_g1674316759_)
                (if (gx#stx-pair? _g1674316759_)
                    (let ((_e1674616761_ (gx#stx-e _g1674316759_)))
                      (let ((_hd1674716764_ (##car _e1674616761_))
                            (_tl1674816766_ (##cdr _e1674616761_)))
                        (if (gx#stx-pair? _tl1674816766_)
                            (let ((_e1674916769_ (gx#stx-e _tl1674816766_)))
                              (let ((_hd1675016772_ (##car _e1674916769_))
                                    (_tl1675116774_ (##cdr _e1674916769_)))
                                ((lambda (_L16777_ _L16778_)
                                   (let* ((_ctx16791_
                                           (gx#syntax-local-e__0 _L16778_))
                                          (_code16793_
                                           (##structure-ref
                                            _ctx16791_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code16796_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code16793_
                                                     _args16740_))
                                            gx#current-expander-context
                                            _ctx16791_)))
                                     (begin
                                       (##structure-set!
                                        _ctx16791_
                                        _code16796_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L16778_
                                                    (cons _code16796_ '())))
                                        _stx16739_))))
                                 _tl1675116774_
                                 _hd1675016772_)))
                            (_g1674216756_ _g1674316759_))))
                    (_g1674216756_ _g1674316759_)))))
        (_g1674116799_ _stx16739_))))
  (define gxc#xform-define-values%
    (lambda (_stx16669_ . _args16670_)
      (let* ((_g1667216689_
              (lambda (_g1667316686_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1667316686_)))
             (_g1667116736_
              (lambda (_g1667316692_)
                (if (gx#stx-pair? _g1667316692_)
                    (let ((_e1667616694_ (gx#stx-e _g1667316692_)))
                      (let ((_hd1667716697_ (##car _e1667616694_))
                            (_tl1667816699_ (##cdr _e1667616694_)))
                        (if (gx#stx-pair? _tl1667816699_)
                            (let ((_e1667916702_ (gx#stx-e _tl1667816699_)))
                              (let ((_hd1668016705_ (##car _e1667916702_))
                                    (_tl1668116707_ (##cdr _e1667916702_)))
                                (if (gx#stx-pair? _tl1668116707_)
                                    (let ((_e1668216710_
                                           (gx#stx-e _tl1668116707_)))
                                      (let ((_hd1668316713_
                                             (##car _e1668216710_))
                                            (_tl1668416715_
                                             (##cdr _e1668216710_)))
                                        (if (gx#stx-null? _tl1668416715_)
                                            ((lambda (_L16718_ _L16719_)
                                               (let ((_expr16734_
                                                      (apply gxc#compile-e
                                                             _L16718_
                                                             _args16670_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L16719_
                                                              (cons _expr16734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16669_)))
                                             _hd1668316713_
                                             _hd1668016705_)
                                            (_g1667216689_ _g1667316692_))))
                                    (_g1667216689_ _g1667316692_))))
                            (_g1667216689_ _g1667316692_))))
                    (_g1667216689_ _g1667316692_)))))
        (_g1667116736_ _stx16669_))))
  (define gxc#xform-define-syntax%
    (lambda (_stx16598_ . _args16599_)
      (let* ((_g1660116618_
              (lambda (_g1660216615_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1660216615_)))
             (_g1660016666_
              (lambda (_g1660216621_)
                (if (gx#stx-pair? _g1660216621_)
                    (let ((_e1660516623_ (gx#stx-e _g1660216621_)))
                      (let ((_hd1660616626_ (##car _e1660516623_))
                            (_tl1660716628_ (##cdr _e1660516623_)))
                        (if (gx#stx-pair? _tl1660716628_)
                            (let ((_e1660816631_ (gx#stx-e _tl1660716628_)))
                              (let ((_hd1660916634_ (##car _e1660816631_))
                                    (_tl1661016636_ (##cdr _e1660816631_)))
                                (if (gx#stx-pair? _tl1661016636_)
                                    (let ((_e1661116639_
                                           (gx#stx-e _tl1661016636_)))
                                      (let ((_hd1661216642_
                                             (##car _e1661116639_))
                                            (_tl1661316644_
                                             (##cdr _e1661116639_)))
                                        (if (gx#stx-null? _tl1661316644_)
                                            ((lambda (_L16647_ _L16648_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (let ((_expr16664_
                                                         (apply gxc#compile-e
                                                                _L16647_
                                                                _args16599_)))
                                                    (gxc#xform-wrap-source
                                                     (cons '%#define-syntax
                                                           (cons _L16648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr16664_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx16598_)))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1661216642_
                                             _hd1660916634_)
                                            (_g1660116618_ _g1660216621_))))
                                    (_g1660116618_ _g1660216621_))))
                            (_g1660116618_ _g1660216621_))))
                    (_g1660116618_ _g1660216621_)))))
        (_g1660016666_ _stx16598_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx16528_ . _args16529_)
      (let* ((_g1653116548_
              (lambda (_g1653216545_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1653216545_)))
             (_g1653016595_
              (lambda (_g1653216551_)
                (if (gx#stx-pair? _g1653216551_)
                    (let ((_e1653516553_ (gx#stx-e _g1653216551_)))
                      (let ((_hd1653616556_ (##car _e1653516553_))
                            (_tl1653716558_ (##cdr _e1653516553_)))
                        (if (gx#stx-pair? _tl1653716558_)
                            (let ((_e1653816561_ (gx#stx-e _tl1653716558_)))
                              (let ((_hd1653916564_ (##car _e1653816561_))
                                    (_tl1654016566_ (##cdr _e1653816561_)))
                                (if (gx#stx-pair? _tl1654016566_)
                                    (let ((_e1654116569_
                                           (gx#stx-e _tl1654016566_)))
                                      (let ((_hd1654216572_
                                             (##car _e1654116569_))
                                            (_tl1654316574_
                                             (##cdr _e1654116569_)))
                                        (if (gx#stx-null? _tl1654316574_)
                                            ((lambda (_L16577_ _L16578_)
                                               (let ((_expr16593_
                                                      (apply gxc#compile-e
                                                             _L16577_
                                                             _args16529_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L16578_
                                                              (cons _expr16593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16528_)))
                                             _hd1654216572_
                                             _hd1653916564_)
                                            (_g1653116548_ _g1653216551_))))
                                    (_g1653116548_ _g1653216551_))))
                            (_g1653116548_ _g1653216551_))))
                    (_g1653116548_ _g1653216551_)))))
        (_g1653016595_ _stx16528_))))
  (define gxc#xform-lambda%
    (lambda (_stx16471_ . _args16472_)
      (let* ((_g1647416488_
              (lambda (_g1647516485_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1647516485_)))
             (_g1647316525_
              (lambda (_g1647516491_)
                (if (gx#stx-pair? _g1647516491_)
                    (let ((_e1647816493_ (gx#stx-e _g1647516491_)))
                      (let ((_hd1647916496_ (##car _e1647816493_))
                            (_tl1648016498_ (##cdr _e1647816493_)))
                        (if (gx#stx-pair? _tl1648016498_)
                            (let ((_e1648116501_ (gx#stx-e _tl1648016498_)))
                              (let ((_hd1648216504_ (##car _e1648116501_))
                                    (_tl1648316506_ (##cdr _e1648116501_)))
                                ((lambda (_L16509_ _L16510_)
                                   (let ((_body16523_
                                          (map (gxc#xform-apply-compile-e
                                                _args16472_)
                                               _L16509_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L16510_ _body16523_))
                                      _stx16471_)))
                                 _tl1648316506_
                                 _hd1648216504_)))
                            (_g1647416488_ _g1647516491_))))
                    (_g1647416488_ _g1647516491_)))))
        (_g1647316525_ _stx16471_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx16384_ . _args16385_)
      (letrec ((_clause-e16387_
                (lambda (_clause16428_)
                  (let* ((_g1643016441_
                          (lambda (_g1643116438_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1643116438_)))
                         (_g1642916468_
                          (lambda (_g1643116444_)
                            (if (gx#stx-pair? _g1643116444_)
                                (let ((_e1643416446_ (gx#stx-e _g1643116444_)))
                                  (let ((_hd1643516449_ (##car _e1643416446_))
                                        (_tl1643616451_ (##cdr _e1643416446_)))
                                    ((lambda (_L16454_ _L16455_)
                                       (let ((_body16466_
                                              (map (gxc#xform-apply-compile-e
                                                    _args16385_)
                                                   _L16454_)))
                                         (cons _L16455_ _body16466_)))
                                     _tl1643616451_
                                     _hd1643516449_)))
                                (_g1643016441_ _g1643116444_)))))
                    (_g1642916468_ _clause16428_)))))
        (let* ((_g1638916399_
                (lambda (_g1639016396_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1639016396_)))
               (_g1638816425_
                (lambda (_g1639016402_)
                  (if (gx#stx-pair? _g1639016402_)
                      (let ((_e1639216404_ (gx#stx-e _g1639016402_)))
                        (let ((_hd1639316407_ (##car _e1639216404_))
                              (_tl1639416409_ (##cdr _e1639216404_)))
                          ((lambda (_L16412_)
                             (let ((_clauses16423_
                                    (map _clause-e16387_ _L16412_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses16423_)
                                _stx16384_)))
                           _tl1639416409_)))
                      (_g1638916399_ _g1639016402_)))))
          (_g1638816425_ _stx16384_)))))
  (define gxc#xform-let-values%
    (lambda (_stx16178_ . _args16179_)
      (let* ((_g1618116214_
              (lambda (_g1618216211_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1618216211_)))
             (_g1618016381_
              (lambda (_g1618216217_)
                (if (gx#stx-pair? _g1618216217_)
                    (let ((_e1618716219_ (gx#stx-e _g1618216217_)))
                      (let ((_hd1618816222_ (##car _e1618716219_))
                            (_tl1618916224_ (##cdr _e1618716219_)))
                        (if (gx#stx-pair? _tl1618916224_)
                            (let ((_e1619016227_ (gx#stx-e _tl1618916224_)))
                              (let ((_hd1619116230_ (##car _e1619016227_))
                                    (_tl1619216232_ (##cdr _e1619016227_)))
                                (if (gx#stx-pair/null? _hd1619116230_)
                                    (let ((_g16970_
                                           (gx#syntax-split-splice
                                            _hd1619116230_
                                            '0)))
                                      (begin
                                        (let ((_g16971_
                                               (if (##values? _g16970_)
                                                   (##vector-length _g16970_)
                                                   1)))
                                          (if (not (##fx= _g16971_ 2))
                                              (error "Context expects 2 values"
                                                     _g16971_)))
                                        (let ((_target1619316235_
                                               (##vector-ref _g16970_ 0))
                                              (_tl1619516237_
                                               (##vector-ref _g16970_ 1)))
                                          (if (gx#stx-null? _tl1619516237_)
                                              (letrec ((_loop1619616240_
                                                        (lambda (_hd1619416243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1620016245_
                         _hd1620116247_)
                  (if (gx#stx-pair? _hd1619416243_)
                      (let ((_e1619716250_ (gx#stx-e _hd1619416243_)))
                        (let ((_lp-hd1619816253_ (##car _e1619716250_))
                              (_lp-tl1619916255_ (##cdr _e1619716250_)))
                          (if (gx#stx-pair? _lp-hd1619816253_)
                              (let ((_e1620416258_
                                     (gx#stx-e _lp-hd1619816253_)))
                                (let ((_hd1620516261_ (##car _e1620416258_))
                                      (_tl1620616263_ (##cdr _e1620416258_)))
                                  (if (gx#stx-pair? _tl1620616263_)
                                      (let ((_e1620716266_
                                             (gx#stx-e _tl1620616263_)))
                                        (let ((_hd1620816269_
                                               (##car _e1620716266_))
                                              (_tl1620916271_
                                               (##cdr _e1620716266_)))
                                          (if (gx#stx-null? _tl1620916271_)
                                              (_loop1619616240_
                                               _lp-tl1619916255_
                                               (cons _hd1620816269_
                                                     _expr1620016245_)
                                               (cons _hd1620516261_
                                                     _hd1620116247_))
                                              (_g1618116214_ _g1618216217_))))
                                      (_g1618116214_ _g1618216217_))))
                              (_g1618116214_ _g1618216217_))))
                      (let ((_expr1620216274_ (reverse _expr1620016245_))
                            (_hd1620316276_ (reverse _hd1620116247_)))
                        ((lambda (_L16279_ _L16280_ _L16281_ _L16282_)
                           (let* ((_g1630116317_
                                   (lambda (_g1630216314_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1630216314_)))
                                  (_g1630016371_
                                   (lambda (_g1630216320_)
                                     (if (gx#stx-pair/null? _g1630216320_)
                                         (let ((_g16972_
                                                (gx#syntax-split-splice
                                                 _g1630216320_
                                                 '0)))
                                           (begin
                                             (let ((_g16973_
                                                    (if (##values? _g16972_)
                                                        (##vector-length
                                                         _g16972_)
                                                        1)))
                                               (if (not (##fx= _g16973_ 2))
                                                   (error "Context expects 2 values"
                                                          _g16973_)))
                                             (let ((_target1630416322_
                                                    (##vector-ref _g16972_ 0))
                                                   (_tl1630616324_
                                                    (##vector-ref _g16972_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1630616324_)
                                                   (letrec ((_loop1630716327_
                                                             (lambda (_hd1630516330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1631116332_)
                       (if (gx#stx-pair? _hd1630516330_)
                           (let ((_e1630816335_ (gx#syntax-e _hd1630516330_)))
                             (let ((_lp-hd1630916338_ (##car _e1630816335_))
                                   (_lp-tl1631016340_ (##cdr _e1630816335_)))
                               (_loop1630716327_
                                _lp-tl1631016340_
                                (cons _lp-hd1630916338_ _expr1631116332_))))
                           (let ((_expr1631216343_ (reverse _expr1631116332_)))
                             ((lambda (_L16346_)
                                (let ()
                                  (let ((_body16359_
                                         (map (gxc#xform-apply-compile-e
                                               _args16179_)
                                              _L16279_)))
                                    (gxc#xform-wrap-source
                                     (cons _L16282_
                                           (cons (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L16346_
                                                    _L16281_)
                                                   (foldr2 (lambda (_g1636016364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1636116366_
                            _g1636216368_)
                     (cons (cons _g1636116366_ (cons _g1636016364_ '()))
                           _g1636216368_))
                   '()
                   _L16346_
                   _L16281_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _body16359_))
                                     _stx16178_))))
                              _expr1631216343_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1630716327_
                                                      _target1630416322_
                                                      '()))
                                                   (_g1630116317_
                                                    _g1630216320_)))))
                                         (_g1630116317_ _g1630216320_)))))
                             (_g1630016371_
                              (map (gxc#xform-apply-compile-e _args16179_)
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1637316376_
                                                      _g1637416378_)
                                               (cons _g1637316376_
                                                     _g1637416378_))
                                             '()
                                             _L16280_))))))
                         _tl1619216232_
                         _expr1620216274_
                         _hd1620316276_
                         _hd1618816222_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1619616240_
                                                 _target1619316235_
                                                 '()
                                                 '()))
                                              (_g1618116214_ _g1618216217_)))))
                                    (_g1618116214_ _g1618216217_))))
                            (_g1618116214_ _g1618216217_))))
                    (_g1618116214_ _g1618216217_)))))
        (_g1618016381_ _stx16178_))))
  (define gxc#xform-operands
    (lambda (_stx16134_ . _args16135_)
      (let* ((_g1613716148_
              (lambda (_g1613816145_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1613816145_)))
             (_g1613616175_
              (lambda (_g1613816151_)
                (if (gx#stx-pair? _g1613816151_)
                    (let ((_e1614116153_ (gx#stx-e _g1613816151_)))
                      (let ((_hd1614216156_ (##car _e1614116153_))
                            (_tl1614316158_ (##cdr _e1614116153_)))
                        ((lambda (_L16161_ _L16162_)
                           (let ((_rands16173_
                                  (map (gxc#xform-apply-compile-e _args16135_)
                                       _L16161_)))
                             (gxc#xform-wrap-source
                              (cons _L16162_ _rands16173_)
                              _stx16134_)))
                         _tl1614316158_
                         _hd1614216156_)))
                    (_g1613716148_ _g1613816151_)))))
        (_g1613616175_ _stx16134_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx16064_ . _args16065_)
      (let* ((_g1606716084_
              (lambda (_g1606816081_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1606816081_)))
             (_g1606616131_
              (lambda (_g1606816087_)
                (if (gx#stx-pair? _g1606816087_)
                    (let ((_e1607116089_ (gx#stx-e _g1606816087_)))
                      (let ((_hd1607216092_ (##car _e1607116089_))
                            (_tl1607316094_ (##cdr _e1607116089_)))
                        (if (gx#stx-pair? _tl1607316094_)
                            (let ((_e1607416097_ (gx#stx-e _tl1607316094_)))
                              (let ((_hd1607516100_ (##car _e1607416097_))
                                    (_tl1607616102_ (##cdr _e1607416097_)))
                                (if (gx#stx-pair? _tl1607616102_)
                                    (let ((_e1607716105_
                                           (gx#stx-e _tl1607616102_)))
                                      (let ((_hd1607816108_
                                             (##car _e1607716105_))
                                            (_tl1607916110_
                                             (##cdr _e1607716105_)))
                                        (if (gx#stx-null? _tl1607916110_)
                                            ((lambda (_L16113_ _L16114_)
                                               (let ((_expr16129_
                                                      (apply gxc#compile-e
                                                             _L16113_
                                                             _args16065_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L16114_
                                                              (cons _expr16129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16064_)))
                                             _hd1607816108_
                                             _hd1607516100_)
                                            (_g1606716084_ _g1606816087_))))
                                    (_g1606716084_ _g1606816087_))))
                            (_g1606716084_ _g1606816087_))))
                    (_g1606716084_ _g1606816087_)))))
        (_g1606616131_ _stx16064_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx15995_)
      (let* ((_g1599716014_
              (lambda (_g1599816011_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1599816011_)))
             (_g1599616061_
              (lambda (_g1599816017_)
                (if (gx#stx-pair? _g1599816017_)
                    (let ((_e1600116019_ (gx#stx-e _g1599816017_)))
                      (let ((_hd1600216022_ (##car _e1600116019_))
                            (_tl1600316024_ (##cdr _e1600116019_)))
                        (if (gx#stx-pair? _tl1600316024_)
                            (let ((_e1600416027_ (gx#stx-e _tl1600316024_)))
                              (let ((_hd1600516030_ (##car _e1600416027_))
                                    (_tl1600616032_ (##cdr _e1600416027_)))
                                (if (gx#stx-pair? _tl1600616032_)
                                    (let ((_e1600716035_
                                           (gx#stx-e _tl1600616032_)))
                                      (let ((_hd1600816038_
                                             (##car _e1600716035_))
                                            (_tl1600916040_
                                             (##cdr _e1600716035_)))
                                        (if (gx#stx-null? _tl1600916040_)
                                            ((lambda (_L16043_ _L16044_)
                                               (let ((_sym16059_
                                                      (gxc#identifier-symbol
                                                       _L16044_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym16059_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym16059_
                                                    '#t)
                                                   (gxc#compile-e _L16043_))))
                                             _hd1600816038_
                                             _hd1600516030_)
                                            (_g1599716014_ _g1599816017_))))
                                    (_g1599716014_ _g1599816017_))))
                            (_g1599716014_ _g1599816017_))))
                    (_g1599716014_ _g1599816017_)))))
        (_g1599616061_ _stx15995_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx15942_ _id15943_ _new-id15944_)
      (let* ((_g1594615959_
              (lambda (_g1594715956_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1594715956_)))
             (_g1594515992_
              (lambda (_g1594715962_)
                (if (gx#stx-pair? _g1594715962_)
                    (let ((_e1594915964_ (gx#stx-e _g1594715962_)))
                      (let ((_hd1595015967_ (##car _e1594915964_))
                            (_tl1595115969_ (##cdr _e1594915964_)))
                        (if (gx#stx-pair? _tl1595115969_)
                            (let ((_e1595215972_ (gx#stx-e _tl1595115969_)))
                              (let ((_hd1595315975_ (##car _e1595215972_))
                                    (_tl1595415977_ (##cdr _e1595215972_)))
                                (if (gx#stx-null? _tl1595415977_)
                                    ((lambda (_L15980_)
                                       (if (gx#free-identifier=?
                                            _L15980_
                                            _id15943_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id15944_ '()))
                                            _stx15942_)
                                           _stx15942_))
                                     _hd1595315975_)
                                    (_g1594615959_ _g1594715962_))))
                            (_g1594615959_ _g1594715962_))))
                    (_g1594615959_ _g1594715962_)))))
        (_g1594515992_ _stx15942_))))
  (define gxc#expression-subst*-ref%
    (lambda (_stx15883_ _subst15884_)
      (let* ((_g1588615899_
              (lambda (_g1588715896_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1588715896_)))
             (_g1588515939_
              (lambda (_g1588715902_)
                (if (gx#stx-pair? _g1588715902_)
                    (let ((_e1588915904_ (gx#stx-e _g1588715902_)))
                      (let ((_hd1589015907_ (##car _e1588915904_))
                            (_tl1589115909_ (##cdr _e1588915904_)))
                        (if (gx#stx-pair? _tl1589115909_)
                            (let ((_e1589215912_ (gx#stx-e _tl1589115909_)))
                              (let ((_hd1589315915_ (##car _e1589215912_))
                                    (_tl1589415917_ (##cdr _e1589215912_)))
                                (if (gx#stx-null? _tl1589415917_)
                                    ((lambda (_L15920_)
                                       (let ((_$e15934_
                                              (find (lambda (_sub15932_)
                                                      (gx#free-identifier=?
                                                       _L15920_
                                                       (car _sub15932_)))
                                                    _subst15884_)))
                                         (if _$e15934_
                                             ((lambda (_sub15937_)
                                                (gxc#xform-wrap-source
                                                 (cons '%#ref
                                                       (cons (cdr _sub15937_)
                                                             '()))
                                                 _stx15883_))
                                              _$e15934_)
                                             _stx15883_)))
                                     _hd1589315915_)
                                    (_g1588615899_ _g1588715902_))))
                            (_g1588615899_ _g1588715902_))))
                    (_g1588615899_ _g1588715902_)))))
        (_g1588515939_ _stx15883_))))
  (define gxc#expression-subst-setq%
    (lambda (_stx15811_ _id15812_ _new-id15813_)
      (let* ((_g1581515832_
              (lambda (_g1581615829_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1581615829_)))
             (_g1581415880_
              (lambda (_g1581615835_)
                (if (gx#stx-pair? _g1581615835_)
                    (let ((_e1581915837_ (gx#stx-e _g1581615835_)))
                      (let ((_hd1582015840_ (##car _e1581915837_))
                            (_tl1582115842_ (##cdr _e1581915837_)))
                        (if (gx#stx-pair? _tl1582115842_)
                            (let ((_e1582215845_ (gx#stx-e _tl1582115842_)))
                              (let ((_hd1582315848_ (##car _e1582215845_))
                                    (_tl1582415850_ (##cdr _e1582215845_)))
                                (if (gx#stx-pair? _tl1582415850_)
                                    (let ((_e1582515853_
                                           (gx#stx-e _tl1582415850_)))
                                      (let ((_hd1582615856_
                                             (##car _e1582515853_))
                                            (_tl1582715858_
                                             (##cdr _e1582515853_)))
                                        (if (gx#stx-null? _tl1582715858_)
                                            ((lambda (_L15861_ _L15862_)
                                               (let ((_new-expr15877_
                                                      (gxc#compile-e
                                                       _L15861_
                                                       _id15812_
                                                       _new-id15813_))
                                                     (_new-xid15878_
                                                      (if (gx#free-identifier=?
                                                           _L15862_
                                                           _id15812_)
                                                          _new-id15813_
                                                          _L15862_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid15878_
                                                              (cons _new-expr15877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx15811_)))
                                             _hd1582615856_
                                             _hd1582315848_)
                                            (_g1581515832_ _g1581615835_))))
                                    (_g1581515832_ _g1581615835_))))
                            (_g1581515832_ _g1581615835_))))
                    (_g1581515832_ _g1581615835_)))))
        (_g1581415880_ _stx15811_))))
  (define gxc#expression-subst*-setq%
    (lambda (_stx15735_ _subst15736_)
      (let* ((_g1573815755_
              (lambda (_g1573915752_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1573915752_)))
             (_g1573715808_
              (lambda (_g1573915758_)
                (if (gx#stx-pair? _g1573915758_)
                    (let ((_e1574215760_ (gx#stx-e _g1573915758_)))
                      (let ((_hd1574315763_ (##car _e1574215760_))
                            (_tl1574415765_ (##cdr _e1574215760_)))
                        (if (gx#stx-pair? _tl1574415765_)
                            (let ((_e1574515768_ (gx#stx-e _tl1574415765_)))
                              (let ((_hd1574615771_ (##car _e1574515768_))
                                    (_tl1574715773_ (##cdr _e1574515768_)))
                                (if (gx#stx-pair? _tl1574715773_)
                                    (let ((_e1574815776_
                                           (gx#stx-e _tl1574715773_)))
                                      (let ((_hd1574915779_
                                             (##car _e1574815776_))
                                            (_tl1575015781_
                                             (##cdr _e1574815776_)))
                                        (if (gx#stx-null? _tl1575015781_)
                                            ((lambda (_L15784_ _L15785_)
                                               (let ((_new-expr15805_
                                                      (gxc#compile-e
                                                       _L15784_
                                                       _subst15736_))
                                                     (_new-xid15806_
                                                      (let ((_$e15802_
                                                             (find (lambda (_sub15800_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#free-identifier=? _L15785_ (car _sub15800_)))
                           _subst15736_)))
                (if _$e15802_ (cdr _$e15802_) _L15785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid15806_
                                                              (cons _new-expr15805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx15735_)))
                                             _hd1574915779_
                                             _hd1574615771_)
                                            (_g1573815755_ _g1573915758_))))
                                    (_g1573815755_ _g1573915758_))))
                            (_g1573815755_ _g1573915758_))))
                    (_g1573815755_ _g1573915758_)))))
        (_g1573715808_ _stx15735_))))
  (define gxc#collect-runtime-refs-ref%
    (lambda (_stx15681_ _ht15682_)
      (let* ((_g1568415697_
              (lambda (_g1568515694_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1568515694_)))
             (_g1568315732_
              (lambda (_g1568515700_)
                (if (gx#stx-pair? _g1568515700_)
                    (let ((_e1568715702_ (gx#stx-e _g1568515700_)))
                      (let ((_hd1568815705_ (##car _e1568715702_))
                            (_tl1568915707_ (##cdr _e1568715702_)))
                        (if (gx#stx-pair? _tl1568915707_)
                            (let ((_e1569015710_ (gx#stx-e _tl1568915707_)))
                              (let ((_hd1569115713_ (##car _e1569015710_))
                                    (_tl1569215715_ (##cdr _e1569015710_)))
                                (if (gx#stx-null? _tl1569215715_)
                                    ((lambda (_L15718_)
                                       (let ((_eid15730_
                                              (gxc#identifier-symbol
                                               _L15718_)))
                                         (hash-update!
                                          _ht15682_
                                          _eid15730_
                                          1+
                                          '0)))
                                     _hd1569115713_)
                                    (_g1568415697_ _g1568515700_))))
                            (_g1568415697_ _g1568515700_))))
                    (_g1568415697_ _g1568515700_)))))
        (_g1568315732_ _stx15681_))))
  (define gxc#collect-runtime-refs-setq%
    (lambda (_stx15611_ _ht15612_)
      (let* ((_g1561415631_
              (lambda (_g1561515628_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1561515628_)))
             (_g1561315678_
              (lambda (_g1561515634_)
                (if (gx#stx-pair? _g1561515634_)
                    (let ((_e1561815636_ (gx#stx-e _g1561515634_)))
                      (let ((_hd1561915639_ (##car _e1561815636_))
                            (_tl1562015641_ (##cdr _e1561815636_)))
                        (if (gx#stx-pair? _tl1562015641_)
                            (let ((_e1562115644_ (gx#stx-e _tl1562015641_)))
                              (let ((_hd1562215647_ (##car _e1562115644_))
                                    (_tl1562315649_ (##cdr _e1562115644_)))
                                (if (gx#stx-pair? _tl1562315649_)
                                    (let ((_e1562415652_
                                           (gx#stx-e _tl1562315649_)))
                                      (let ((_hd1562515655_
                                             (##car _e1562415652_))
                                            (_tl1562615657_
                                             (##cdr _e1562415652_)))
                                        (if (gx#stx-null? _tl1562615657_)
                                            ((lambda (_L15660_ _L15661_)
                                               (let ((_eid15676_
                                                      (gxc#identifier-symbol
                                                       _L15661_)))
                                                 (begin
                                                   (hash-update!
                                                    _ht15612_
                                                    _eid15676_
                                                    1+
                                                    '0)
                                                   (gxc#compile-e
                                                    _L15660_
                                                    _ht15612_))))
                                             _hd1562515655_
                                             _hd1562215647_)
                                            (_g1561415631_ _g1561515634_))))
                                    (_g1561415631_ _g1561515634_))))
                            (_g1561415631_ _g1561515634_))))
                    (_g1561415631_ _g1561515634_)))))
        (_g1561315678_ _stx15611_))))
  (define gxc#find-body%
    (lambda (_stx15524_ _arg15525_)
      (let* ((_g1552715546_
              (lambda (_g1552815543_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1552815543_)))
             (_g1552615608_
              (lambda (_g1552815549_)
                (if (gx#stx-pair? _g1552815549_)
                    (let ((_e1553015551_ (gx#stx-e _g1552815549_)))
                      (let ((_hd1553115554_ (##car _e1553015551_))
                            (_tl1553215556_ (##cdr _e1553015551_)))
                        (if (gx#stx-pair/null? _tl1553215556_)
                            (let ((_g16974_
                                   (gx#syntax-split-splice _tl1553215556_ '0)))
                              (begin
                                (let ((_g16975_
                                       (if (##values? _g16974_)
                                           (##vector-length _g16974_)
                                           1)))
                                  (if (not (##fx= _g16975_ 2))
                                      (error "Context expects 2 values"
                                             _g16975_)))
                                (let ((_target1553315559_
                                       (##vector-ref _g16974_ 0))
                                      (_tl1553515561_
                                       (##vector-ref _g16974_ 1)))
                                  (if (gx#stx-null? _tl1553515561_)
                                      (letrec ((_loop1553615564_
                                                (lambda (_hd1553415567_
                                                         _expr1554015569_)
                                                  (if (gx#stx-pair?
                                                       _hd1553415567_)
                                                      (let ((_e1553715572_
                                                             (gx#stx-e
                                                              _hd1553415567_)))
                                                        (let ((_lp-hd1553815575_
                                                               (##car _e1553715572_))
                                                              (_lp-tl1553915577_
                                                               (##cdr _e1553715572_)))
                                                          (_loop1553615564_
                                                           _lp-tl1553915577_
                                                           (cons _lp-hd1553815575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1554015569_))))
              (let ((_expr1554115580_ (reverse _expr1554015569_)))
                ((lambda (_L15583_)
                   (ormap1 (lambda (_g1559615598_)
                             (gxc#compile-e _g1559615598_ _arg15525_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1560015603_ _g1560115605_)
                                       (cons _g1560015603_ _g1560115605_))
                                     '()
                                     _L15583_))))
                 _expr1554115580_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1553615564_
                                         _target1553315559_
                                         '()))
                                      (_g1552715546_ _g1552815549_)))))
                            (_g1552715546_ _g1552815549_))))
                    (_g1552715546_ _g1552815549_)))))
        (_g1552615608_ _stx15524_))))
  (define gxc#find-begin-annotation%
    (lambda (_stx15456_ _arg15457_)
      (let* ((_g1545915476_
              (lambda (_g1546015473_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1546015473_)))
             (_g1545815521_
              (lambda (_g1546015479_)
                (if (gx#stx-pair? _g1546015479_)
                    (let ((_e1546315481_ (gx#stx-e _g1546015479_)))
                      (let ((_hd1546415484_ (##car _e1546315481_))
                            (_tl1546515486_ (##cdr _e1546315481_)))
                        (if (gx#stx-pair? _tl1546515486_)
                            (let ((_e1546615489_ (gx#stx-e _tl1546515486_)))
                              (let ((_hd1546715492_ (##car _e1546615489_))
                                    (_tl1546815494_ (##cdr _e1546615489_)))
                                (if (gx#stx-pair? _tl1546815494_)
                                    (let ((_e1546915497_
                                           (gx#stx-e _tl1546815494_)))
                                      (let ((_hd1547015500_
                                             (##car _e1546915497_))
                                            (_tl1547115502_
                                             (##cdr _e1546915497_)))
                                        (if (gx#stx-null? _tl1547115502_)
                                            ((lambda (_L15505_ _L15506_)
                                               (gxc#compile-e
                                                _L15505_
                                                _arg15457_))
                                             _hd1547015500_
                                             _hd1546715492_)
                                            (_g1545915476_ _g1546015479_))))
                                    (_g1545915476_ _g1546015479_))))
                            (_g1545915476_ _g1546015479_))))
                    (_g1545915476_ _g1546015479_)))))
        (_g1545815521_ _stx15456_))))
  (define gxc#find-lambda%
    (lambda (_stx15388_ _arg15389_)
      (let* ((_g1539115408_
              (lambda (_g1539215405_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1539215405_)))
             (_g1539015453_
              (lambda (_g1539215411_)
                (if (gx#stx-pair? _g1539215411_)
                    (let ((_e1539515413_ (gx#stx-e _g1539215411_)))
                      (let ((_hd1539615416_ (##car _e1539515413_))
                            (_tl1539715418_ (##cdr _e1539515413_)))
                        (if (gx#stx-pair? _tl1539715418_)
                            (let ((_e1539815421_ (gx#stx-e _tl1539715418_)))
                              (let ((_hd1539915424_ (##car _e1539815421_))
                                    (_tl1540015426_ (##cdr _e1539815421_)))
                                (if (gx#stx-pair? _tl1540015426_)
                                    (let ((_e1540115429_
                                           (gx#stx-e _tl1540015426_)))
                                      (let ((_hd1540215432_
                                             (##car _e1540115429_))
                                            (_tl1540315434_
                                             (##cdr _e1540115429_)))
                                        (if (gx#stx-null? _tl1540315434_)
                                            ((lambda (_L15437_ _L15438_)
                                               (gxc#compile-e
                                                _L15437_
                                                _arg15389_))
                                             _hd1540215432_
                                             _hd1539915424_)
                                            (_g1539115408_ _g1539215411_))))
                                    (_g1539115408_ _g1539215411_))))
                            (_g1539115408_ _g1539215411_))))
                    (_g1539115408_ _g1539215411_)))))
        (_g1539015453_ _stx15388_))))
  (define gxc#find-case-lambda%
    (lambda (_stx15270_ _arg15271_)
      (let* ((_g1527315301_
              (lambda (_g1527415298_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1527415298_)))
             (_g1527215385_
              (lambda (_g1527415304_)
                (if (gx#stx-pair? _g1527415304_)
                    (let ((_e1527715306_ (gx#stx-e _g1527415304_)))
                      (let ((_hd1527815309_ (##car _e1527715306_))
                            (_tl1527915311_ (##cdr _e1527715306_)))
                        (if (gx#stx-pair/null? _tl1527915311_)
                            (let ((_g16976_
                                   (gx#syntax-split-splice _tl1527915311_ '0)))
                              (begin
                                (let ((_g16977_
                                       (if (##values? _g16976_)
                                           (##vector-length _g16976_)
                                           1)))
                                  (if (not (##fx= _g16977_ 2))
                                      (error "Context expects 2 values"
                                             _g16977_)))
                                (let ((_target1528015314_
                                       (##vector-ref _g16976_ 0))
                                      (_tl1528215316_
                                       (##vector-ref _g16976_ 1)))
                                  (if (gx#stx-null? _tl1528215316_)
                                      (letrec ((_loop1528315319_
                                                (lambda (_hd1528115322_
                                                         _body1528715324_
                                                         _hd1528815326_)
                                                  (if (gx#stx-pair?
                                                       _hd1528115322_)
                                                      (let ((_e1528415329_
                                                             (gx#stx-e
                                                              _hd1528115322_)))
                                                        (let ((_lp-hd1528515332_
                                                               (##car _e1528415329_))
                                                              (_lp-tl1528615334_
                                                               (##cdr _e1528415329_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1528515332_)
                                                              (let ((_e1529115337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1528515332_)))
                        (let ((_hd1529215340_ (##car _e1529115337_))
                              (_tl1529315342_ (##cdr _e1529115337_)))
                          (if (gx#stx-pair? _tl1529315342_)
                              (let ((_e1529415345_ (gx#stx-e _tl1529315342_)))
                                (let ((_hd1529515348_ (##car _e1529415345_))
                                      (_tl1529615350_ (##cdr _e1529415345_)))
                                  (if (gx#stx-null? _tl1529615350_)
                                      (_loop1528315319_
                                       _lp-tl1528615334_
                                       (cons _hd1529515348_ _body1528715324_)
                                       (cons _hd1529215340_ _hd1528815326_))
                                      (_g1527315301_ _g1527415304_))))
                              (_g1527315301_ _g1527415304_))))
                      (_g1527315301_ _g1527415304_))))
              (let ((_body1528915353_ (reverse _body1528715324_))
                    (_hd1529015355_ (reverse _hd1528815326_)))
                ((lambda (_L15358_ _L15359_)
                   (ormap1 (lambda (_g1537315375_)
                             (gxc#compile-e _g1537315375_ _arg15271_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1537715380_ _g1537815382_)
                                       (cons _g1537715380_ _g1537815382_))
                                     '()
                                     _L15358_))))
                 _body1528915353_
                 _hd1529015355_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1528315319_
                                         _target1528015314_
                                         '()
                                         '()))
                                      (_g1527315301_ _g1527415304_)))))
                            (_g1527315301_ _g1527415304_))))
                    (_g1527315301_ _g1527415304_)))))
        (_g1527215385_ _stx15270_))))
  (define gxc#find-let-values%
    (lambda (_stx15120_ _arg15121_)
      (let* ((_g1512315158_
              (lambda (_g1512415155_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1512415155_)))
             (_g1512215267_
              (lambda (_g1512415161_)
                (if (gx#stx-pair? _g1512415161_)
                    (let ((_e1512815163_ (gx#stx-e _g1512415161_)))
                      (let ((_hd1512915166_ (##car _e1512815163_))
                            (_tl1513015168_ (##cdr _e1512815163_)))
                        (if (gx#stx-pair? _tl1513015168_)
                            (let ((_e1513115171_ (gx#stx-e _tl1513015168_)))
                              (let ((_hd1513215174_ (##car _e1513115171_))
                                    (_tl1513315176_ (##cdr _e1513115171_)))
                                (if (gx#stx-pair/null? _hd1513215174_)
                                    (let ((_g16978_
                                           (gx#syntax-split-splice
                                            _hd1513215174_
                                            '0)))
                                      (begin
                                        (let ((_g16979_
                                               (if (##values? _g16978_)
                                                   (##vector-length _g16978_)
                                                   1)))
                                          (if (not (##fx= _g16979_ 2))
                                              (error "Context expects 2 values"
                                                     _g16979_)))
                                        (let ((_target1513415179_
                                               (##vector-ref _g16978_ 0))
                                              (_tl1513615181_
                                               (##vector-ref _g16978_ 1)))
                                          (if (gx#stx-null? _tl1513615181_)
                                              (letrec ((_loop1513715184_
                                                        (lambda (_hd1513515187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1514115189_
                         _bind1514215191_)
                  (if (gx#stx-pair? _hd1513515187_)
                      (let ((_e1513815194_ (gx#stx-e _hd1513515187_)))
                        (let ((_lp-hd1513915197_ (##car _e1513815194_))
                              (_lp-tl1514015199_ (##cdr _e1513815194_)))
                          (if (gx#stx-pair? _lp-hd1513915197_)
                              (let ((_e1514515202_
                                     (gx#stx-e _lp-hd1513915197_)))
                                (let ((_hd1514615205_ (##car _e1514515202_))
                                      (_tl1514715207_ (##cdr _e1514515202_)))
                                  (if (gx#stx-pair? _tl1514715207_)
                                      (let ((_e1514815210_
                                             (gx#stx-e _tl1514715207_)))
                                        (let ((_hd1514915213_
                                               (##car _e1514815210_))
                                              (_tl1515015215_
                                               (##cdr _e1514815210_)))
                                          (if (gx#stx-null? _tl1515015215_)
                                              (_loop1513715184_
                                               _lp-tl1514015199_
                                               (cons _hd1514915213_
                                                     _expr1514115189_)
                                               (cons _hd1514615205_
                                                     _bind1514215191_))
                                              (_g1512315158_ _g1512415161_))))
                                      (_g1512315158_ _g1512415161_))))
                              (_g1512315158_ _g1512415161_))))
                      (let ((_expr1514315218_ (reverse _expr1514115189_))
                            (_bind1514415220_ (reverse _bind1514215191_)))
                        (if (gx#stx-pair? _tl1513315176_)
                            (let ((_e1515115223_ (gx#stx-e _tl1513315176_)))
                              (let ((_hd1515215226_ (##car _e1515115223_))
                                    (_tl1515315228_ (##cdr _e1515115223_)))
                                (if (gx#stx-null? _tl1515315228_)
                                    ((lambda (_L15231_ _L15232_ _L15233_)
                                       (let ((_$e15264_
                                              (ormap1 (lambda (_g1525215254_)
                                                        (gxc#compile-e
                                                         _g1525215254_
                                                         _arg15121_))
                                                      (begin
                                                        '#!void
                                                        (foldr1 (lambda (_g1525615259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1525715261_)
                          (cons _g1525615259_ _g1525715261_))
                        '()
                        _L15232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if _$e15264_
                                             _$e15264_
                                             (gxc#compile-e
                                              _L15231_
                                              _arg15121_))))
                                     _hd1515215226_
                                     _expr1514315218_
                                     _bind1514415220_)
                                    (_g1512315158_ _g1512415161_))))
                            (_g1512315158_ _g1512415161_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1513715184_
                                                 _target1513415179_
                                                 '()
                                                 '()))
                                              (_g1512315158_ _g1512415161_)))))
                                    (_g1512315158_ _g1512415161_))))
                            (_g1512315158_ _g1512415161_))))
                    (_g1512315158_ _g1512415161_)))))
        (_g1512215267_ _stx15120_))))
  (define gxc#find-setq%
    (lambda (_stx15052_ _arg15053_)
      (let* ((_g1505515072_
              (lambda (_g1505615069_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1505615069_)))
             (_g1505415117_
              (lambda (_g1505615075_)
                (if (gx#stx-pair? _g1505615075_)
                    (let ((_e1505915077_ (gx#stx-e _g1505615075_)))
                      (let ((_hd1506015080_ (##car _e1505915077_))
                            (_tl1506115082_ (##cdr _e1505915077_)))
                        (if (gx#stx-pair? _tl1506115082_)
                            (let ((_e1506215085_ (gx#stx-e _tl1506115082_)))
                              (let ((_hd1506315088_ (##car _e1506215085_))
                                    (_tl1506415090_ (##cdr _e1506215085_)))
                                (if (gx#stx-pair? _tl1506415090_)
                                    (let ((_e1506515093_
                                           (gx#stx-e _tl1506415090_)))
                                      (let ((_hd1506615096_
                                             (##car _e1506515093_))
                                            (_tl1506715098_
                                             (##cdr _e1506515093_)))
                                        (if (gx#stx-null? _tl1506715098_)
                                            ((lambda (_L15101_ _L15102_)
                                               (gxc#compile-e
                                                _L15101_
                                                _arg15053_))
                                             _hd1506615096_
                                             _hd1506315088_)
                                            (_g1505515072_ _g1505615075_))))
                                    (_g1505515072_ _g1505615075_))))
                            (_g1505515072_ _g1505615075_))))
                    (_g1505515072_ _g1505615075_)))))
        (_g1505415117_ _stx15052_))))
  (define gxc#find-var-refs-ref%
    (lambda (_stx14996_ _ids14997_)
      (let* ((_g1499915012_
              (lambda (_g1500015009_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1500015009_)))
             (_g1499815049_
              (lambda (_g1500015015_)
                (if (gx#stx-pair? _g1500015015_)
                    (let ((_e1500215017_ (gx#stx-e _g1500015015_)))
                      (let ((_hd1500315020_ (##car _e1500215017_))
                            (_tl1500415022_ (##cdr _e1500215017_)))
                        (if (gx#stx-pair? _tl1500415022_)
                            (let ((_e1500515025_ (gx#stx-e _tl1500415022_)))
                              (let ((_hd1500615028_ (##car _e1500515025_))
                                    (_tl1500715030_ (##cdr _e1500515025_)))
                                (if (gx#stx-null? _tl1500715030_)
                                    ((lambda (_L15033_)
                                       (find (lambda (_g1504415046_)
                                               (gx#free-identifier=?
                                                _L15033_
                                                _g1504415046_))
                                             _ids14997_))
                                     _hd1500615028_)
                                    (_g1499915012_ _g1500015015_))))
                            (_g1499915012_ _g1500015015_))))
                    (_g1499915012_ _g1500015015_)))))
        (_g1499815049_ _stx14996_))))
  (define gxc#find-var-refs-setq%
    (lambda (_stx14920_ _ids14921_)
      (let* ((_g1492314940_
              (lambda (_g1492414937_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1492414937_)))
             (_g1492214993_
              (lambda (_g1492414943_)
                (if (gx#stx-pair? _g1492414943_)
                    (let ((_e1492714945_ (gx#stx-e _g1492414943_)))
                      (let ((_hd1492814948_ (##car _e1492714945_))
                            (_tl1492914950_ (##cdr _e1492714945_)))
                        (if (gx#stx-pair? _tl1492914950_)
                            (let ((_e1493014953_ (gx#stx-e _tl1492914950_)))
                              (let ((_hd1493114956_ (##car _e1493014953_))
                                    (_tl1493214958_ (##cdr _e1493014953_)))
                                (if (gx#stx-pair? _tl1493214958_)
                                    (let ((_e1493314961_
                                           (gx#stx-e _tl1493214958_)))
                                      (let ((_hd1493414964_
                                             (##car _e1493314961_))
                                            (_tl1493514966_
                                             (##cdr _e1493314961_)))
                                        (if (gx#stx-null? _tl1493514966_)
                                            ((lambda (_L14969_ _L14970_)
                                               (let ((_$e14990_
                                                      (find (lambda (_g1498514987_)
                                                              (gx#free-identifier=?
                                                               _L14970_
                                                               _g1498514987_))
                                                            _ids14921_)))
                                                 (if _$e14990_
                                                     _$e14990_
                                                     (gxc#compile-e
                                                      _L14969_
                                                      _ids14921_))))
                                             _hd1493414964_
                                             _hd1493114956_)
                                            (_g1492314940_ _g1492414943_))))
                                    (_g1492314940_ _g1492414943_))))
                            (_g1492314940_ _g1492414943_))))
                    (_g1492314940_ _g1492414943_)))))
        (_g1492214993_ _stx14920_)))))
