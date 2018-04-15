(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&collect-type-info
    (##make-promise
     (lambda ()
       (let ((_tbl28187_ (make-table 'test: eq?)))
         (hash-copy! _tbl28187_ (force gxc#&void))
         (table-set! _tbl28187_ '%#begin gxc#collect-begin%)
         (table-set! _tbl28187_ '%#begin-syntax gxc#collect-begin-syntax%)
         (table-set! _tbl28187_ '%#module gxc#collect-module%)
         (table-set!
          _tbl28187_
          '%#define-values
          gxc#collect-type-define-values%)
         (table-set!
          _tbl28187_
          '%#begin-annotation
          gxc#collect-begin-annotation%)
         (table-set! _tbl28187_ '%#lambda gxc#collect-body-lambda%)
         (table-set! _tbl28187_ '%#case-lambda gxc#collect-body-case-lambda%)
         (table-set! _tbl28187_ '%#let-values gxc#collect-type-let-values%)
         (table-set! _tbl28187_ '%#letrec-values gxc#collect-type-let-values%)
         (table-set! _tbl28187_ '%#letrec*-values gxc#collect-type-let-values%)
         (table-set! _tbl28187_ '%#call gxc#collect-type-call%)
         (table-set! _tbl28187_ '%#if gxc#collect-operands)
         (table-set! _tbl28187_ '%#set! gxc#collect-body-setq%)
         _tbl28187_))))
  (define gxc#apply-collect-type-info
    (lambda (_stx28180_ . _args28182_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx28180_ _args28182_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (##make-promise
     (lambda ()
       (let ((_tbl28177_ (make-table 'test: eq?)))
         (hash-copy! _tbl28177_ (force gxc#&false))
         (table-set! _tbl28177_ '%#begin gxc#basic-expression-type-begin%)
         (table-set!
          _tbl28177_
          '%#begin-annotation
          gxc#basic-expression-type-begin-annotation%)
         (table-set! _tbl28177_ '%#lambda gxc#basic-expression-type-lambda%)
         (table-set!
          _tbl28177_
          '%#case-lambda
          gxc#basic-expression-type-case-lambda%)
         (table-set!
          _tbl28177_
          '%#let-values
          gxc#basic-expression-type-let-values%)
         (table-set!
          _tbl28177_
          '%#letrec-values
          gxc#basic-expression-type-let-values%)
         (table-set!
          _tbl28177_
          '%#letrec*-values
          gxc#basic-expression-type-let-values%)
         (table-set! _tbl28177_ '%#call gxc#basic-expression-type-call%)
         (table-set! _tbl28177_ '%#ref gxc#basic-expression-type-ref%)
         _tbl28177_))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx28170_ . _args28172_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx28170_ _args28172_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&lift-top-lambdas
    (##make-promise
     (lambda ()
       (let ((_tbl28167_ (make-table 'test: eq?)))
         (hash-copy! _tbl28167_ (force gxc#&basic-xform))
         (table-set!
          _tbl28167_
          '%#define-values
          gxc#lift-top-lambda-define-values%)
         (table-set! _tbl28167_ '%#let-values gxc#lift-top-lambda-let-values%)
         (table-set!
          _tbl28167_
          '%#letrec-values
          gxc#lift-top-lambda-letrec-values%)
         (table-set!
          _tbl28167_
          '%#letrec*-values
          gxc#lift-top-lambda-letrec-values%)
         _tbl28167_))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx28160_ . _args28162_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx28160_ _args28162_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#collect-type-define-values%
    (lambda (_stx28016_)
      (let* ((___stx2820028201_ _stx28016_)
             (_g2801928050_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2820028201_))))
        (let ((___kont2820228203_
               (lambda (_L28132_ _L28133_)
                 (let ((_sym28149_ (gxc#identifier-symbol _L28133_)))
                   (if (table-ref
                        (gxc#current-compile-mutators)
                        _sym28149_
                        '#f)
                       (gxc#verbose
                        '"skipping type declaration for mutable binding "
                        _sym28149_)
                       (let ((_type2815028152_
                              (gxc#apply-basic-expression-type _L28132_)))
                         (if _type2815028152_
                             (let ((_type28155_ _type2815028152_))
                               (gxc#optimizer-declare-type!__0
                                _sym28149_
                                _type28155_))
                             '#f)))
                   (gxc#compile-e _L28132_))))
              (___kont2820428205_
               (lambda (_L28079_ _L28080_) (gxc#compile-e _L28079_))))
          (let ((___match2823328234_
                 (lambda (_e2802328100_
                          _hd2802428103_
                          _tl2802528105_
                          _e2802628108_
                          _hd2802728111_
                          _tl2802828113_
                          _e2802928116_
                          _hd2803028119_
                          _tl2803128121_
                          _e2803228124_
                          _hd2803328127_
                          _tl2803428129_)
                   (let ((_L28132_ _hd2803328127_) (_L28133_ _hd2803028119_))
                     (if (gx#identifier? _L28133_)
                         (___kont2820228203_ _L28132_ _L28133_)
                         (___kont2820428205_
                          _hd2803328127_
                          _hd2802728111_))))))
            (if (gx#stx-pair? ___stx2820028201_)
                (let ((_e2802328100_ (gx#stx-e ___stx2820028201_)))
                  (let ((_tl2802528105_ (##cdr _e2802328100_))
                        (_hd2802428103_ (##car _e2802328100_)))
                    (if (gx#stx-pair? _tl2802528105_)
                        (let ((_e2802628108_ (gx#stx-e _tl2802528105_)))
                          (let ((_tl2802828113_ (##cdr _e2802628108_))
                                (_hd2802728111_ (##car _e2802628108_)))
                            (if (gx#stx-pair? _hd2802728111_)
                                (let ((_e2802928116_
                                       (gx#stx-e _hd2802728111_)))
                                  (let ((_tl2803128121_ (##cdr _e2802928116_))
                                        (_hd2803028119_ (##car _e2802928116_)))
                                    (if (gx#stx-null? _tl2803128121_)
                                        (if (gx#stx-pair? _tl2802828113_)
                                            (let ((_e2803228124_
                                                   (gx#stx-e _tl2802828113_)))
                                              (let ((_tl2803428129_
                                                     (##cdr _e2803228124_))
                                                    (_hd2803328127_
                                                     (##car _e2803228124_)))
                                                (if (gx#stx-null?
                                                     _tl2803428129_)
                                                    (___match2823328234_
                                                     _e2802328100_
                                                     _hd2802428103_
                                                     _tl2802528105_
                                                     _e2802628108_
                                                     _hd2802728111_
                                                     _tl2802828113_
                                                     _e2802928116_
                                                     _hd2803028119_
                                                     _tl2803128121_
                                                     _e2803228124_
                                                     _hd2803328127_
                                                     _tl2803428129_)
                                                    (_g2801928050_))))
                                            (_g2801928050_))
                                        (if (gx#stx-pair? _tl2802828113_)
                                            (let ((_e2804328071_
                                                   (gx#stx-e _tl2802828113_)))
                                              (let ((_tl2804528076_
                                                     (##cdr _e2804328071_))
                                                    (_hd2804428074_
                                                     (##car _e2804328071_)))
                                                (if (gx#stx-null?
                                                     _tl2804528076_)
                                                    (___kont2820428205_
                                                     _hd2804428074_
                                                     _hd2802728111_)
                                                    (_g2801928050_))))
                                            (_g2801928050_)))))
                                (if (gx#stx-pair? _tl2802828113_)
                                    (let ((_e2804328071_
                                           (gx#stx-e _tl2802828113_)))
                                      (let ((_tl2804528076_
                                             (##cdr _e2804328071_))
                                            (_hd2804428074_
                                             (##car _e2804328071_)))
                                        (if (gx#stx-null? _tl2804528076_)
                                            (___kont2820428205_
                                             _hd2804428074_
                                             _hd2802728111_)
                                            (_g2801928050_))))
                                    (_g2801928050_)))))
                        (_g2801928050_))))
                (_g2801928050_)))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx27801_)
      (letrec ((_collect-e27803_
                (lambda (_hd27960_ _expr27961_)
                  (let* ((___stx2825628257_ _hd27960_)
                         (_g2796427974_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx2825628257_))))
                    (let ((___kont2825828259_
                           (lambda (_L27994_)
                             (let ((_sym28005_
                                    (gxc#identifier-symbol _L27994_)))
                               (if (table-ref
                                    (gxc#current-compile-mutators)
                                    _sym28005_
                                    '#f)
                                   (gxc#verbose
                                    '"skipping type declaration for mutable binding "
                                    _sym28005_)
                                   (let ((_type2800628008_
                                          (gxc#apply-basic-expression-type
                                           _expr27961_)))
                                     (if _type2800628008_
                                         (let ((_type28011_ _type2800628008_))
                                           (gxc#optimizer-declare-type!__%
                                            _sym28005_
                                            _type28011_
                                            '#t))
                                         '#f))))))
                          (___kont2826028261_ (lambda () '#!void)))
                      (let ((___match2826928270_
                             (lambda (_e2796727986_
                                      _hd2796827989_
                                      _tl2796927991_)
                               (let ((_L27994_ _hd2796827989_))
                                 (if (gx#identifier? _L27994_)
                                     (___kont2825828259_ _L27994_)
                                     (___kont2826028261_))))))
                        (if (gx#stx-pair? ___stx2825628257_)
                            (let ((_e2796727986_ (gx#stx-e ___stx2825628257_)))
                              (let ((_tl2796927991_ (##cdr _e2796727986_))
                                    (_hd2796827989_ (##car _e2796727986_)))
                                (if (gx#stx-null? _tl2796927991_)
                                    (___match2826928270_
                                     _e2796727986_
                                     _hd2796827989_
                                     _tl2796927991_)
                                    (___kont2826028261_))))
                            (___kont2826028261_))))))))
        (let* ((_g2780527840_
                (lambda (_g2780627837_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2780627837_)))
               (_g2780427957_
                (lambda (_g2780627843_)
                  (if (gx#stx-pair? _g2780627843_)
                      (let ((_e2781027845_ (gx#stx-e _g2780627843_)))
                        (let ((_hd2781127848_ (##car _e2781027845_))
                              (_tl2781227850_ (##cdr _e2781027845_)))
                          (if (gx#stx-pair? _tl2781227850_)
                              (let ((_e2781327853_ (gx#stx-e _tl2781227850_)))
                                (let ((_hd2781427856_ (##car _e2781327853_))
                                      (_tl2781527858_ (##cdr _e2781327853_)))
                                  (if (gx#stx-pair/null? _hd2781427856_)
                                      (let ((_g30805_
                                             (gx#syntax-split-splice
                                              _hd2781427856_
                                              '0)))
                                        (begin
                                          (let ((_g30806_
                                                 (if (##values? _g30805_)
                                                     (##vector-length _g30805_)
                                                     1)))
                                            (if (not (##fx= _g30806_ 2))
                                                (error "Context expects 2 values"
                                                       _g30806_)))
                                          (let ((_target2781627861_
                                                 (##vector-ref _g30805_ 0))
                                                (_tl2781827863_
                                                 (##vector-ref _g30805_ 1)))
                                            (if (gx#stx-null? _tl2781827863_)
                                                (letrec ((_loop2781927866_
                                                          (lambda (_hd2781727869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2782327871_
                           _hd2782427873_)
                    (if (gx#stx-pair? _hd2781727869_)
                        (let ((_e2782027876_ (gx#stx-e _hd2781727869_)))
                          (let ((_lp-hd2782127879_ (##car _e2782027876_))
                                (_lp-tl2782227881_ (##cdr _e2782027876_)))
                            (if (gx#stx-pair? _lp-hd2782127879_)
                                (let ((_e2782727884_
                                       (gx#stx-e _lp-hd2782127879_)))
                                  (let ((_hd2782827887_ (##car _e2782727884_))
                                        (_tl2782927889_ (##cdr _e2782727884_)))
                                    (if (gx#stx-pair? _tl2782927889_)
                                        (let ((_e2783027892_
                                               (gx#stx-e _tl2782927889_)))
                                          (let ((_hd2783127895_
                                                 (##car _e2783027892_))
                                                (_tl2783227897_
                                                 (##cdr _e2783027892_)))
                                            (if (gx#stx-null? _tl2783227897_)
                                                (_loop2781927866_
                                                 _lp-tl2782227881_
                                                 (cons _hd2783127895_
                                                       _expr2782327871_)
                                                 (cons _hd2782827887_
                                                       _hd2782427873_))
                                                (_g2780527840_
                                                 _g2780627843_))))
                                        (_g2780527840_ _g2780627843_))))
                                (_g2780527840_ _g2780627843_))))
                        (let ((_expr2782527900_ (reverse _expr2782327871_))
                              (_hd2782627902_ (reverse _hd2782427873_)))
                          (if (gx#stx-pair? _tl2781527858_)
                              (let ((_e2783327905_ (gx#stx-e _tl2781527858_)))
                                (let ((_hd2783427908_ (##car _e2783327905_))
                                      (_tl2783527910_ (##cdr _e2783327905_)))
                                  (if (gx#stx-null? _tl2783527910_)
                                      ((lambda (_L27913_ _L27914_ _L27915_)
                                         (for-each
                                          _collect-e27803_
                                          (foldr1 (lambda (_g2793527938_
                                                           _g2793627940_)
                                                    (cons _g2793527938_
                                                          _g2793627940_))
                                                  '()
                                                  _L27915_)
                                          (foldr1 (lambda (_g2794227945_
                                                           _g2794327947_)
                                                    (cons _g2794227945_
                                                          _g2794327947_))
                                                  '()
                                                  _L27914_))
                                         (for-each
                                          gxc#compile-e
                                          (foldr1 (lambda (_g2794927952_
                                                           _g2795027954_)
                                                    (cons _g2794927952_
                                                          _g2795027954_))
                                                  '()
                                                  _L27914_))
                                         (gxc#compile-e _L27913_))
                                       _hd2783427908_
                                       _expr2782527900_
                                       _hd2782627902_)
                                      (_g2780527840_ _g2780627843_))))
                              (_g2780527840_ _g2780627843_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2781927866_
                                                   _target2781627861_
                                                   '()
                                                   '()))
                                                (_g2780527840_
                                                 _g2780627843_)))))
                                      (_g2780527840_ _g2780627843_))))
                              (_g2780527840_ _g2780627843_))))
                      (_g2780527840_ _g2780627843_)))))
          (_g2780427957_ _stx27801_)))))
  (define gxc#collect-type-call%
    (lambda (_stx27293_)
      (let* ((___stx2827228273_ _stx27293_)
             (_g2729727412_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2827228273_))))
        (let ((___kont2827428275_
               (lambda (_L27751_ _L27752_ _L27753_ _L27754_ _L27755_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L27754_)
                  (gx#stx-e _L27753_)
                  (gxc#identifier-symbol _L27752_)
                  (gx#stx-e _L27751_))))
              (___kont2827628277_
               (lambda (_L27579_ _L27580_ _L27581_ _L27582_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L27581_)
                  (gx#stx-e _L27580_)
                  (gxc#identifier-symbol _L27579_)
                  '#f)))
              (___kont2827828279_
               (lambda (_L27449_)
                 (for-each
                  gxc#compile-e
                  (foldr1 (lambda (_g2746227465_ _g2746327467_)
                            (cons _g2746227465_ _g2746327467_))
                          '()
                          _L27449_)))))
          (let* ((___match2852928530_
                  (lambda (_e2739627417_
                           _hd2739727420_
                           _tl2739827422_
                           ___splice2828028281_
                           _target2739927425_
                           _tl2740127427_)
                    (letrec ((_loop2740227430_
                              (lambda (_hd2740027433_ _expr2740627435_)
                                (if (gx#stx-pair? _hd2740027433_)
                                    (let ((_e2740327438_
                                           (gx#stx-e _hd2740027433_)))
                                      (let ((_lp-tl2740527443_
                                             (##cdr _e2740327438_))
                                            (_lp-hd2740427441_
                                             (##car _e2740327438_)))
                                        (_loop2740227430_
                                         _lp-tl2740527443_
                                         (cons _lp-hd2740427441_
                                               _expr2740627435_))))
                                    (let ((_expr2740727446_
                                           (reverse _expr2740627435_)))
                                      (___kont2827828279_
                                       _expr2740727446_))))))
                      (_loop2740227430_ _target2739927425_ '()))))
                 (___match2840928410_
                  (lambda (_e2730427623_
                           _hd2730527626_
                           _tl2730627628_
                           _e2730727631_
                           _hd2730827634_
                           _tl2730927636_
                           _e2731027639_
                           _hd2731127642_
                           _tl2731227644_
                           _e2731327647_
                           _hd2731427650_
                           _tl2731527652_
                           _e2731627655_
                           _hd2731727658_
                           _tl2731827660_
                           _e2731927663_
                           _hd2732027666_
                           _tl2732127668_
                           _e2732227671_
                           _hd2732327674_
                           _tl2732427676_
                           _e2732527679_
                           _hd2732627682_
                           _tl2732727684_
                           _e2732827687_
                           _hd2732927690_
                           _tl2733027692_
                           _e2733127695_
                           _hd2733227698_
                           _tl2733327700_
                           _e2733427703_
                           _hd2733527706_
                           _tl2733627708_
                           _e2733727711_
                           _hd2733827714_
                           _tl2733927716_
                           _e2734027719_
                           _hd2734127722_
                           _tl2734227724_
                           _e2734327727_
                           _hd2734427730_
                           _tl2734527732_
                           _e2734627735_
                           _hd2734727738_
                           _tl2734827740_
                           _e2734927743_
                           _hd2735027746_
                           _tl2735127748_)
                    (let ((_L27751_ _hd2735027746_)
                          (_L27752_ _hd2734127722_)
                          (_L27753_ _hd2733227698_)
                          (_L27754_ _hd2732327674_)
                          (_L27755_ _hd2731427650_))
                      (if (gxc#runtime-identifier=? _L27755_ 'bind-method!)
                          (___kont2827428275_
                           _L27751_
                           _L27752_
                           _L27753_
                           _L27754_
                           _L27755_)
                          (if (gx#stx-pair/null? _tl2730627628_)
                              (let ((___splice2828028281_
                                     (gx#syntax-split-splice
                                      _tl2730627628_
                                      '0)))
                                (let ((_tl2740127427_
                                       (##vector-ref ___splice2828028281_ '1))
                                      (_target2739927425_
                                       (##vector-ref ___splice2828028281_ '0)))
                                  (if (gx#stx-null? _tl2740127427_)
                                      (___match2852928530_
                                       _e2730427623_
                                       _hd2730527626_
                                       _tl2730627628_
                                       ___splice2828028281_
                                       _target2739927425_
                                       _tl2740127427_)
                                      (_g2729727412_))))
                              (_g2729727412_)))))))
            (if (gx#stx-pair? ___stx2827228273_)
                (let ((_e2730427623_ (gx#stx-e ___stx2827228273_)))
                  (let ((_tl2730627628_ (##cdr _e2730427623_))
                        (_hd2730527626_ (##car _e2730427623_)))
                    (if (gx#stx-pair? _tl2730627628_)
                        (let ((_e2730727631_ (gx#stx-e _tl2730627628_)))
                          (let ((_tl2730927636_ (##cdr _e2730727631_))
                                (_hd2730827634_ (##car _e2730727631_)))
                            (if (gx#stx-pair? _hd2730827634_)
                                (let ((_e2731027639_
                                       (gx#stx-e _hd2730827634_)))
                                  (let ((_tl2731227644_ (##cdr _e2731027639_))
                                        (_hd2731127642_ (##car _e2731027639_)))
                                    (if (gx#identifier? _hd2731127642_)
                                        (if (gx#stx-eq? '%#ref _hd2731127642_)
                                            (if (gx#stx-pair? _tl2731227644_)
                                                (let ((_e2731327647_
                                                       (gx#stx-e
                                                        _tl2731227644_)))
                                                  (let ((_tl2731527652_
                                                         (##cdr _e2731327647_))
                                                        (_hd2731427650_
                                                         (##car _e2731327647_)))
                                                    (if (gx#stx-null?
                                                         _tl2731527652_)
                                                        (if (gx#stx-pair?
                                                             _tl2730927636_)
                                                            (let ((_e2731627655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2730927636_)))
                      (let ((_tl2731827660_ (##cdr _e2731627655_))
                            (_hd2731727658_ (##car _e2731627655_)))
                        (if (gx#stx-pair? _hd2731727658_)
                            (let ((_e2731927663_ (gx#stx-e _hd2731727658_)))
                              (let ((_tl2732127668_ (##cdr _e2731927663_))
                                    (_hd2732027666_ (##car _e2731927663_)))
                                (if (gx#identifier? _hd2732027666_)
                                    (if (gx#stx-eq? '%#ref _hd2732027666_)
                                        (if (gx#stx-pair? _tl2732127668_)
                                            (let ((_e2732227671_
                                                   (gx#stx-e _tl2732127668_)))
                                              (let ((_tl2732427676_
                                                     (##cdr _e2732227671_))
                                                    (_hd2732327674_
                                                     (##car _e2732227671_)))
                                                (if (gx#stx-null?
                                                     _tl2732427676_)
                                                    (if (gx#stx-pair?
                                                         _tl2731827660_)
                                                        (let ((_e2732527679_
                                                               (gx#stx-e
                                                                _tl2731827660_)))
                                                          (let ((_tl2732727684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2732527679_))
                        (_hd2732627682_ (##car _e2732527679_)))
                    (if (gx#stx-pair? _hd2732627682_)
                        (let ((_e2732827687_ (gx#stx-e _hd2732627682_)))
                          (let ((_tl2733027692_ (##cdr _e2732827687_))
                                (_hd2732927690_ (##car _e2732827687_)))
                            (if (gx#identifier? _hd2732927690_)
                                (if (gx#stx-eq? '%#quote _hd2732927690_)
                                    (if (gx#stx-pair? _tl2733027692_)
                                        (let ((_e2733127695_
                                               (gx#stx-e _tl2733027692_)))
                                          (let ((_tl2733327700_
                                                 (##cdr _e2733127695_))
                                                (_hd2733227698_
                                                 (##car _e2733127695_)))
                                            (if (gx#stx-null? _tl2733327700_)
                                                (if (gx#stx-pair?
                                                     _tl2732727684_)
                                                    (let ((_e2733427703_
                                                           (gx#stx-e
                                                            _tl2732727684_)))
                                                      (let ((_tl2733627708_
                                                             (##cdr _e2733427703_))
                                                            (_hd2733527706_
                                                             (##car _e2733427703_)))
                                                        (if (gx#stx-pair?
                                                             _hd2733527706_)
                                                            (let ((_e2733727711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2733527706_)))
                      (let ((_tl2733927716_ (##cdr _e2733727711_))
                            (_hd2733827714_ (##car _e2733727711_)))
                        (if (gx#identifier? _hd2733827714_)
                            (if (gx#stx-eq? '%#ref _hd2733827714_)
                                (if (gx#stx-pair? _tl2733927716_)
                                    (let ((_e2734027719_
                                           (gx#stx-e _tl2733927716_)))
                                      (let ((_tl2734227724_
                                             (##cdr _e2734027719_))
                                            (_hd2734127722_
                                             (##car _e2734027719_)))
                                        (if (gx#stx-null? _tl2734227724_)
                                            (if (gx#stx-pair? _tl2733627708_)
                                                (let ((_e2734327727_
                                                       (gx#stx-e
                                                        _tl2733627708_)))
                                                  (let ((_tl2734527732_
                                                         (##cdr _e2734327727_))
                                                        (_hd2734427730_
                                                         (##car _e2734327727_)))
                                                    (if (gx#stx-pair?
                                                         _hd2734427730_)
                                                        (let ((_e2734627735_
                                                               (gx#stx-e
                                                                _hd2734427730_)))
                                                          (let ((_tl2734827740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2734627735_))
                        (_hd2734727738_ (##car _e2734627735_)))
                    (if (gx#identifier? _hd2734727738_)
                        (if (gx#stx-eq? '%#quote _hd2734727738_)
                            (if (gx#stx-pair? _tl2734827740_)
                                (let ((_e2734927743_
                                       (gx#stx-e _tl2734827740_)))
                                  (let ((_tl2735127748_ (##cdr _e2734927743_))
                                        (_hd2735027746_ (##car _e2734927743_)))
                                    (if (gx#stx-null? _tl2735127748_)
                                        (if (gx#stx-null? _tl2734527732_)
                                            (___match2840928410_
                                             _e2730427623_
                                             _hd2730527626_
                                             _tl2730627628_
                                             _e2730727631_
                                             _hd2730827634_
                                             _tl2730927636_
                                             _e2731027639_
                                             _hd2731127642_
                                             _tl2731227644_
                                             _e2731327647_
                                             _hd2731427650_
                                             _tl2731527652_
                                             _e2731627655_
                                             _hd2731727658_
                                             _tl2731827660_
                                             _e2731927663_
                                             _hd2732027666_
                                             _tl2732127668_
                                             _e2732227671_
                                             _hd2732327674_
                                             _tl2732427676_
                                             _e2732527679_
                                             _hd2732627682_
                                             _tl2732727684_
                                             _e2732827687_
                                             _hd2732927690_
                                             _tl2733027692_
                                             _e2733127695_
                                             _hd2733227698_
                                             _tl2733327700_
                                             _e2733427703_
                                             _hd2733527706_
                                             _tl2733627708_
                                             _e2733727711_
                                             _hd2733827714_
                                             _tl2733927716_
                                             _e2734027719_
                                             _hd2734127722_
                                             _tl2734227724_
                                             _e2734327727_
                                             _hd2734427730_
                                             _tl2734527732_
                                             _e2734627735_
                                             _hd2734727738_
                                             _tl2734827740_
                                             _e2734927743_
                                             _hd2735027746_
                                             _tl2735127748_)
                                            (if (gx#stx-pair/null?
                                                 _tl2730627628_)
                                                (let ((___splice2828028281_
                                                       (gx#syntax-split-splice
                                                        _tl2730627628_
                                                        '0)))
                                                  (let ((_tl2740127427_
                                                         (##vector-ref
                                                          ___splice2828028281_
                                                          '1))
                                                        (_target2739927425_
                                                         (##vector-ref
                                                          ___splice2828028281_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2740127427_)
                                                        (___match2852928530_
                                                         _e2730427623_
                                                         _hd2730527626_
                                                         _tl2730627628_
                                                         ___splice2828028281_
                                                         _target2739927425_
                                                         _tl2740127427_)
                                                        (_g2729727412_))))
                                                (_g2729727412_)))
                                        (if (gx#stx-pair/null? _tl2730627628_)
                                            (let ((___splice2828028281_
                                                   (gx#syntax-split-splice
                                                    _tl2730627628_
                                                    '0)))
                                              (let ((_tl2740127427_
                                                     (##vector-ref
                                                      ___splice2828028281_
                                                      '1))
                                                    (_target2739927425_
                                                     (##vector-ref
                                                      ___splice2828028281_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2740127427_)
                                                    (___match2852928530_
                                                     _e2730427623_
                                                     _hd2730527626_
                                                     _tl2730627628_
                                                     ___splice2828028281_
                                                     _target2739927425_
                                                     _tl2740127427_)
                                                    (_g2729727412_))))
                                            (_g2729727412_)))))
                                (if (gx#stx-pair/null? _tl2730627628_)
                                    (let ((___splice2828028281_
                                           (gx#syntax-split-splice
                                            _tl2730627628_
                                            '0)))
                                      (let ((_tl2740127427_
                                             (##vector-ref
                                              ___splice2828028281_
                                              '1))
                                            (_target2739927425_
                                             (##vector-ref
                                              ___splice2828028281_
                                              '0)))
                                        (if (gx#stx-null? _tl2740127427_)
                                            (___match2852928530_
                                             _e2730427623_
                                             _hd2730527626_
                                             _tl2730627628_
                                             ___splice2828028281_
                                             _target2739927425_
                                             _tl2740127427_)
                                            (_g2729727412_))))
                                    (_g2729727412_)))
                            (if (gx#stx-pair/null? _tl2730627628_)
                                (let ((___splice2828028281_
                                       (gx#syntax-split-splice
                                        _tl2730627628_
                                        '0)))
                                  (let ((_tl2740127427_
                                         (##vector-ref
                                          ___splice2828028281_
                                          '1))
                                        (_target2739927425_
                                         (##vector-ref
                                          ___splice2828028281_
                                          '0)))
                                    (if (gx#stx-null? _tl2740127427_)
                                        (___match2852928530_
                                         _e2730427623_
                                         _hd2730527626_
                                         _tl2730627628_
                                         ___splice2828028281_
                                         _target2739927425_
                                         _tl2740127427_)
                                        (_g2729727412_))))
                                (_g2729727412_)))
                        (if (gx#stx-pair/null? _tl2730627628_)
                            (let ((___splice2828028281_
                                   (gx#syntax-split-splice _tl2730627628_ '0)))
                              (let ((_tl2740127427_
                                     (##vector-ref ___splice2828028281_ '1))
                                    (_target2739927425_
                                     (##vector-ref ___splice2828028281_ '0)))
                                (if (gx#stx-null? _tl2740127427_)
                                    (___match2852928530_
                                     _e2730427623_
                                     _hd2730527626_
                                     _tl2730627628_
                                     ___splice2828028281_
                                     _target2739927425_
                                     _tl2740127427_)
                                    (_g2729727412_))))
                            (_g2729727412_)))))
                (if (gx#stx-pair/null? _tl2730627628_)
                    (let ((___splice2828028281_
                           (gx#syntax-split-splice _tl2730627628_ '0)))
                      (let ((_tl2740127427_
                             (##vector-ref ___splice2828028281_ '1))
                            (_target2739927425_
                             (##vector-ref ___splice2828028281_ '0)))
                        (if (gx#stx-null? _tl2740127427_)
                            (___match2852928530_
                             _e2730427623_
                             _hd2730527626_
                             _tl2730627628_
                             ___splice2828028281_
                             _target2739927425_
                             _tl2740127427_)
                            (_g2729727412_))))
                    (_g2729727412_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl2733627708_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L27579_
                                                               _hd2734127722_)
                                                              (_L27580_
                                                               _hd2733227698_)
                                                              (_L27581_
                                                               _hd2732327674_)
                                                              (_L27582_
                                                               _hd2731427650_))
                                                          (___kont2827628277_
                                                           _L27579_
                                                           _L27580_
                                                           _L27581_
                                                           _L27582_))
                                                        (if (gx#stx-pair/null?
                                                             _tl2730627628_)
                                                            (let ((___splice2828028281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl2730627628_ '0)))
                      (let ((_tl2740127427_
                             (##vector-ref ___splice2828028281_ '1))
                            (_target2739927425_
                             (##vector-ref ___splice2828028281_ '0)))
                        (if (gx#stx-null? _tl2740127427_)
                            (___match2852928530_
                             _e2730427623_
                             _hd2730527626_
                             _tl2730627628_
                             ___splice2828028281_
                             _target2739927425_
                             _tl2740127427_)
                            (_g2729727412_))))
                    (_g2729727412_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2730627628_)
                                                        (let ((___splice2828028281_
                                                               (gx#syntax-split-splice
                                                                _tl2730627628_
                                                                '0)))
                                                          (let ((_tl2740127427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2828028281_ '1))
                        (_target2739927425_
                         (##vector-ref ___splice2828028281_ '0)))
                    (if (gx#stx-null? _tl2740127427_)
                        (___match2852928530_
                         _e2730427623_
                         _hd2730527626_
                         _tl2730627628_
                         ___splice2828028281_
                         _target2739927425_
                         _tl2740127427_)
                        (_g2729727412_))))
                (_g2729727412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2730627628_)
                                                (let ((___splice2828028281_
                                                       (gx#syntax-split-splice
                                                        _tl2730627628_
                                                        '0)))
                                                  (let ((_tl2740127427_
                                                         (##vector-ref
                                                          ___splice2828028281_
                                                          '1))
                                                        (_target2739927425_
                                                         (##vector-ref
                                                          ___splice2828028281_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2740127427_)
                                                        (___match2852928530_
                                                         _e2730427623_
                                                         _hd2730527626_
                                                         _tl2730627628_
                                                         ___splice2828028281_
                                                         _target2739927425_
                                                         _tl2740127427_)
                                                        (_g2729727412_))))
                                                (_g2729727412_)))))
                                    (if (gx#stx-pair/null? _tl2730627628_)
                                        (let ((___splice2828028281_
                                               (gx#syntax-split-splice
                                                _tl2730627628_
                                                '0)))
                                          (let ((_tl2740127427_
                                                 (##vector-ref
                                                  ___splice2828028281_
                                                  '1))
                                                (_target2739927425_
                                                 (##vector-ref
                                                  ___splice2828028281_
                                                  '0)))
                                            (if (gx#stx-null? _tl2740127427_)
                                                (___match2852928530_
                                                 _e2730427623_
                                                 _hd2730527626_
                                                 _tl2730627628_
                                                 ___splice2828028281_
                                                 _target2739927425_
                                                 _tl2740127427_)
                                                (_g2729727412_))))
                                        (_g2729727412_)))
                                (if (gx#stx-pair/null? _tl2730627628_)
                                    (let ((___splice2828028281_
                                           (gx#syntax-split-splice
                                            _tl2730627628_
                                            '0)))
                                      (let ((_tl2740127427_
                                             (##vector-ref
                                              ___splice2828028281_
                                              '1))
                                            (_target2739927425_
                                             (##vector-ref
                                              ___splice2828028281_
                                              '0)))
                                        (if (gx#stx-null? _tl2740127427_)
                                            (___match2852928530_
                                             _e2730427623_
                                             _hd2730527626_
                                             _tl2730627628_
                                             ___splice2828028281_
                                             _target2739927425_
                                             _tl2740127427_)
                                            (_g2729727412_))))
                                    (_g2729727412_)))
                            (if (gx#stx-pair/null? _tl2730627628_)
                                (let ((___splice2828028281_
                                       (gx#syntax-split-splice
                                        _tl2730627628_
                                        '0)))
                                  (let ((_tl2740127427_
                                         (##vector-ref
                                          ___splice2828028281_
                                          '1))
                                        (_target2739927425_
                                         (##vector-ref
                                          ___splice2828028281_
                                          '0)))
                                    (if (gx#stx-null? _tl2740127427_)
                                        (___match2852928530_
                                         _e2730427623_
                                         _hd2730527626_
                                         _tl2730627628_
                                         ___splice2828028281_
                                         _target2739927425_
                                         _tl2740127427_)
                                        (_g2729727412_))))
                                (_g2729727412_)))))
                    (if (gx#stx-pair/null? _tl2730627628_)
                        (let ((___splice2828028281_
                               (gx#syntax-split-splice _tl2730627628_ '0)))
                          (let ((_tl2740127427_
                                 (##vector-ref ___splice2828028281_ '1))
                                (_target2739927425_
                                 (##vector-ref ___splice2828028281_ '0)))
                            (if (gx#stx-null? _tl2740127427_)
                                (___match2852928530_
                                 _e2730427623_
                                 _hd2730527626_
                                 _tl2730627628_
                                 ___splice2828028281_
                                 _target2739927425_
                                 _tl2740127427_)
                                (_g2729727412_))))
                        (_g2729727412_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2730627628_)
                                                        (let ((___splice2828028281_
                                                               (gx#syntax-split-splice
                                                                _tl2730627628_
                                                                '0)))
                                                          (let ((_tl2740127427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2828028281_ '1))
                        (_target2739927425_
                         (##vector-ref ___splice2828028281_ '0)))
                    (if (gx#stx-null? _tl2740127427_)
                        (___match2852928530_
                         _e2730427623_
                         _hd2730527626_
                         _tl2730627628_
                         ___splice2828028281_
                         _target2739927425_
                         _tl2740127427_)
                        (_g2729727412_))))
                (_g2729727412_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2730627628_)
                                                    (let ((___splice2828028281_
                                                           (gx#syntax-split-splice
                                                            _tl2730627628_
                                                            '0)))
                                                      (let ((_tl2740127427_
                                                             (##vector-ref
                                                              ___splice2828028281_
                                                              '1))
                                                            (_target2739927425_
                                                             (##vector-ref
                                                              ___splice2828028281_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2740127427_)
                                                            (___match2852928530_
                                                             _e2730427623_
                                                             _hd2730527626_
                                                             _tl2730627628_
                                                             ___splice2828028281_
                                                             _target2739927425_
                                                             _tl2740127427_)
                                                            (_g2729727412_))))
                                                    (_g2729727412_)))))
                                        (if (gx#stx-pair/null? _tl2730627628_)
                                            (let ((___splice2828028281_
                                                   (gx#syntax-split-splice
                                                    _tl2730627628_
                                                    '0)))
                                              (let ((_tl2740127427_
                                                     (##vector-ref
                                                      ___splice2828028281_
                                                      '1))
                                                    (_target2739927425_
                                                     (##vector-ref
                                                      ___splice2828028281_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2740127427_)
                                                    (___match2852928530_
                                                     _e2730427623_
                                                     _hd2730527626_
                                                     _tl2730627628_
                                                     ___splice2828028281_
                                                     _target2739927425_
                                                     _tl2740127427_)
                                                    (_g2729727412_))))
                                            (_g2729727412_)))
                                    (if (gx#stx-pair/null? _tl2730627628_)
                                        (let ((___splice2828028281_
                                               (gx#syntax-split-splice
                                                _tl2730627628_
                                                '0)))
                                          (let ((_tl2740127427_
                                                 (##vector-ref
                                                  ___splice2828028281_
                                                  '1))
                                                (_target2739927425_
                                                 (##vector-ref
                                                  ___splice2828028281_
                                                  '0)))
                                            (if (gx#stx-null? _tl2740127427_)
                                                (___match2852928530_
                                                 _e2730427623_
                                                 _hd2730527626_
                                                 _tl2730627628_
                                                 ___splice2828028281_
                                                 _target2739927425_
                                                 _tl2740127427_)
                                                (_g2729727412_))))
                                        (_g2729727412_)))
                                (if (gx#stx-pair/null? _tl2730627628_)
                                    (let ((___splice2828028281_
                                           (gx#syntax-split-splice
                                            _tl2730627628_
                                            '0)))
                                      (let ((_tl2740127427_
                                             (##vector-ref
                                              ___splice2828028281_
                                              '1))
                                            (_target2739927425_
                                             (##vector-ref
                                              ___splice2828028281_
                                              '0)))
                                        (if (gx#stx-null? _tl2740127427_)
                                            (___match2852928530_
                                             _e2730427623_
                                             _hd2730527626_
                                             _tl2730627628_
                                             ___splice2828028281_
                                             _target2739927425_
                                             _tl2740127427_)
                                            (_g2729727412_))))
                                    (_g2729727412_)))))
                        (if (gx#stx-pair/null? _tl2730627628_)
                            (let ((___splice2828028281_
                                   (gx#syntax-split-splice _tl2730627628_ '0)))
                              (let ((_tl2740127427_
                                     (##vector-ref ___splice2828028281_ '1))
                                    (_target2739927425_
                                     (##vector-ref ___splice2828028281_ '0)))
                                (if (gx#stx-null? _tl2740127427_)
                                    (___match2852928530_
                                     _e2730427623_
                                     _hd2730527626_
                                     _tl2730627628_
                                     ___splice2828028281_
                                     _target2739927425_
                                     _tl2740127427_)
                                    (_g2729727412_))))
                            (_g2729727412_)))))
                (if (gx#stx-pair/null? _tl2730627628_)
                    (let ((___splice2828028281_
                           (gx#syntax-split-splice _tl2730627628_ '0)))
                      (let ((_tl2740127427_
                             (##vector-ref ___splice2828028281_ '1))
                            (_target2739927425_
                             (##vector-ref ___splice2828028281_ '0)))
                        (if (gx#stx-null? _tl2740127427_)
                            (___match2852928530_
                             _e2730427623_
                             _hd2730527626_
                             _tl2730627628_
                             ___splice2828028281_
                             _target2739927425_
                             _tl2740127427_)
                            (_g2729727412_))))
                    (_g2729727412_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2730627628_)
                                                        (let ((___splice2828028281_
                                                               (gx#syntax-split-splice
                                                                _tl2730627628_
                                                                '0)))
                                                          (let ((_tl2740127427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2828028281_ '1))
                        (_target2739927425_
                         (##vector-ref ___splice2828028281_ '0)))
                    (if (gx#stx-null? _tl2740127427_)
                        (___match2852928530_
                         _e2730427623_
                         _hd2730527626_
                         _tl2730627628_
                         ___splice2828028281_
                         _target2739927425_
                         _tl2740127427_)
                        (_g2729727412_))))
                (_g2729727412_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2730627628_)
                                                (let ((___splice2828028281_
                                                       (gx#syntax-split-splice
                                                        _tl2730627628_
                                                        '0)))
                                                  (let ((_tl2740127427_
                                                         (##vector-ref
                                                          ___splice2828028281_
                                                          '1))
                                                        (_target2739927425_
                                                         (##vector-ref
                                                          ___splice2828028281_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2740127427_)
                                                        (___match2852928530_
                                                         _e2730427623_
                                                         _hd2730527626_
                                                         _tl2730627628_
                                                         ___splice2828028281_
                                                         _target2739927425_
                                                         _tl2740127427_)
                                                        (_g2729727412_))))
                                                (_g2729727412_)))
                                        (if (gx#stx-pair/null? _tl2730627628_)
                                            (let ((___splice2828028281_
                                                   (gx#syntax-split-splice
                                                    _tl2730627628_
                                                    '0)))
                                              (let ((_tl2740127427_
                                                     (##vector-ref
                                                      ___splice2828028281_
                                                      '1))
                                                    (_target2739927425_
                                                     (##vector-ref
                                                      ___splice2828028281_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2740127427_)
                                                    (___match2852928530_
                                                     _e2730427623_
                                                     _hd2730527626_
                                                     _tl2730627628_
                                                     ___splice2828028281_
                                                     _target2739927425_
                                                     _tl2740127427_)
                                                    (_g2729727412_))))
                                            (_g2729727412_)))
                                    (if (gx#stx-pair/null? _tl2730627628_)
                                        (let ((___splice2828028281_
                                               (gx#syntax-split-splice
                                                _tl2730627628_
                                                '0)))
                                          (let ((_tl2740127427_
                                                 (##vector-ref
                                                  ___splice2828028281_
                                                  '1))
                                                (_target2739927425_
                                                 (##vector-ref
                                                  ___splice2828028281_
                                                  '0)))
                                            (if (gx#stx-null? _tl2740127427_)
                                                (___match2852928530_
                                                 _e2730427623_
                                                 _hd2730527626_
                                                 _tl2730627628_
                                                 ___splice2828028281_
                                                 _target2739927425_
                                                 _tl2740127427_)
                                                (_g2729727412_))))
                                        (_g2729727412_)))))
                            (if (gx#stx-pair/null? _tl2730627628_)
                                (let ((___splice2828028281_
                                       (gx#syntax-split-splice
                                        _tl2730627628_
                                        '0)))
                                  (let ((_tl2740127427_
                                         (##vector-ref
                                          ___splice2828028281_
                                          '1))
                                        (_target2739927425_
                                         (##vector-ref
                                          ___splice2828028281_
                                          '0)))
                                    (if (gx#stx-null? _tl2740127427_)
                                        (___match2852928530_
                                         _e2730427623_
                                         _hd2730527626_
                                         _tl2730627628_
                                         ___splice2828028281_
                                         _target2739927425_
                                         _tl2740127427_)
                                        (_g2729727412_))))
                                (_g2729727412_)))))
                    (if (gx#stx-pair/null? _tl2730627628_)
                        (let ((___splice2828028281_
                               (gx#syntax-split-splice _tl2730627628_ '0)))
                          (let ((_tl2740127427_
                                 (##vector-ref ___splice2828028281_ '1))
                                (_target2739927425_
                                 (##vector-ref ___splice2828028281_ '0)))
                            (if (gx#stx-null? _tl2740127427_)
                                (___match2852928530_
                                 _e2730427623_
                                 _hd2730527626_
                                 _tl2730627628_
                                 ___splice2828028281_
                                 _target2739927425_
                                 _tl2740127427_)
                                (_g2729727412_))))
                        (_g2729727412_)))
                (if (gx#stx-pair/null? _tl2730627628_)
                    (let ((___splice2828028281_
                           (gx#syntax-split-splice _tl2730627628_ '0)))
                      (let ((_tl2740127427_
                             (##vector-ref ___splice2828028281_ '1))
                            (_target2739927425_
                             (##vector-ref ___splice2828028281_ '0)))
                        (if (gx#stx-null? _tl2740127427_)
                            (___match2852928530_
                             _e2730427623_
                             _hd2730527626_
                             _tl2730627628_
                             ___splice2828028281_
                             _target2739927425_
                             _tl2740127427_)
                            (_g2729727412_))))
                    (_g2729727412_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2730627628_)
                                                    (let ((___splice2828028281_
                                                           (gx#syntax-split-splice
                                                            _tl2730627628_
                                                            '0)))
                                                      (let ((_tl2740127427_
                                                             (##vector-ref
                                                              ___splice2828028281_
                                                              '1))
                                                            (_target2739927425_
                                                             (##vector-ref
                                                              ___splice2828028281_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2740127427_)
                                                            (___match2852928530_
                                                             _e2730427623_
                                                             _hd2730527626_
                                                             _tl2730627628_
                                                             ___splice2828028281_
                                                             _target2739927425_
                                                             _tl2740127427_)
                                                            (_g2729727412_))))
                                                    (_g2729727412_)))
                                            (if (gx#stx-pair/null?
                                                 _tl2730627628_)
                                                (let ((___splice2828028281_
                                                       (gx#syntax-split-splice
                                                        _tl2730627628_
                                                        '0)))
                                                  (let ((_tl2740127427_
                                                         (##vector-ref
                                                          ___splice2828028281_
                                                          '1))
                                                        (_target2739927425_
                                                         (##vector-ref
                                                          ___splice2828028281_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2740127427_)
                                                        (___match2852928530_
                                                         _e2730427623_
                                                         _hd2730527626_
                                                         _tl2730627628_
                                                         ___splice2828028281_
                                                         _target2739927425_
                                                         _tl2740127427_)
                                                        (_g2729727412_))))
                                                (_g2729727412_)))
                                        (if (gx#stx-pair/null? _tl2730627628_)
                                            (let ((___splice2828028281_
                                                   (gx#syntax-split-splice
                                                    _tl2730627628_
                                                    '0)))
                                              (let ((_tl2740127427_
                                                     (##vector-ref
                                                      ___splice2828028281_
                                                      '1))
                                                    (_target2739927425_
                                                     (##vector-ref
                                                      ___splice2828028281_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2740127427_)
                                                    (___match2852928530_
                                                     _e2730427623_
                                                     _hd2730527626_
                                                     _tl2730627628_
                                                     ___splice2828028281_
                                                     _target2739927425_
                                                     _tl2740127427_)
                                                    (_g2729727412_))))
                                            (_g2729727412_)))))
                                (if (gx#stx-pair/null? _tl2730627628_)
                                    (let ((___splice2828028281_
                                           (gx#syntax-split-splice
                                            _tl2730627628_
                                            '0)))
                                      (let ((_tl2740127427_
                                             (##vector-ref
                                              ___splice2828028281_
                                              '1))
                                            (_target2739927425_
                                             (##vector-ref
                                              ___splice2828028281_
                                              '0)))
                                        (if (gx#stx-null? _tl2740127427_)
                                            (___match2852928530_
                                             _e2730427623_
                                             _hd2730527626_
                                             _tl2730627628_
                                             ___splice2828028281_
                                             _target2739927425_
                                             _tl2740127427_)
                                            (_g2729727412_))))
                                    (_g2729727412_)))))
                        (if (gx#stx-pair/null? _tl2730627628_)
                            (let ((___splice2828028281_
                                   (gx#syntax-split-splice _tl2730627628_ '0)))
                              (let ((_tl2740127427_
                                     (##vector-ref ___splice2828028281_ '1))
                                    (_target2739927425_
                                     (##vector-ref ___splice2828028281_ '0)))
                                (if (gx#stx-null? _tl2740127427_)
                                    (___match2852928530_
                                     _e2730427623_
                                     _hd2730527626_
                                     _tl2730627628_
                                     ___splice2828028281_
                                     _target2739927425_
                                     _tl2740127427_)
                                    (_g2729727412_))))
                            (_g2729727412_)))))
                (_g2729727412_)))))))
  (define gxc#current-compile-type-closure (make-parameter '#f))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx27233_)
      (let* ((___stx2853228533_ _stx27233_)
             (_g2723627249_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2853228533_))))
        (let ((___kont2853428535_ (lambda (_L27277_) (gxc#compile-e _L27277_)))
              (___kont2853628537_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2853228533_)
              (let ((_e2723927261_ (gx#stx-e ___stx2853228533_)))
                (let ((_tl2724127266_ (##cdr _e2723927261_))
                      (_hd2724027264_ (##car _e2723927261_)))
                  (if (gx#stx-pair? _tl2724127266_)
                      (let ((_e2724227269_ (gx#stx-e _tl2724127266_)))
                        (let ((_tl2724427274_ (##cdr _e2724227269_))
                              (_hd2724327272_ (##car _e2724227269_)))
                          (if (gx#stx-null? _tl2724427274_)
                              (___kont2853428535_ _hd2724327272_)
                              (___kont2853628537_))))
                      (___kont2853628537_))))
              (___kont2853628537_))))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx27166_)
      (let* ((_g2716827185_
              (lambda (_g2716927182_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2716927182_)))
             (_g2716727230_
              (lambda (_g2716927188_)
                (if (gx#stx-pair? _g2716927188_)
                    (let ((_e2717227190_ (gx#stx-e _g2716927188_)))
                      (let ((_hd2717327193_ (##car _e2717227190_))
                            (_tl2717427195_ (##cdr _e2717227190_)))
                        (if (gx#stx-pair? _tl2717427195_)
                            (let ((_e2717527198_ (gx#stx-e _tl2717427195_)))
                              (let ((_hd2717627201_ (##car _e2717527198_))
                                    (_tl2717727203_ (##cdr _e2717527198_)))
                                (if (gx#stx-pair? _tl2717727203_)
                                    (let ((_e2717827206_
                                           (gx#stx-e _tl2717727203_)))
                                      (let ((_hd2717927209_
                                             (##car _e2717827206_))
                                            (_tl2718027211_
                                             (##cdr _e2717827206_)))
                                        (if (gx#stx-null? _tl2718027211_)
                                            ((lambda (_L27214_ _L27215_)
                                               (gxc#compile-e _L27214_))
                                             _hd2717927209_
                                             _hd2717627201_)
                                            (_g2716827185_ _g2716927188_))))
                                    (_g2716827185_ _g2716927188_))))
                            (_g2716827185_ _g2716927188_))))
                    (_g2716827185_ _g2716927188_)))))
        (_g2716727230_ _stx27166_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx25758_)
      (let* ((___stx2855428555_ _stx25758_)
             (_g2576626073_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2855428555_))))
        (let ((___kont2855628557_
               (lambda (_L27154_)
                 (let ((__obj30797 (make-object gxc#!lambda::t '5)))
                   (gxc#!lambda:::init!__0
                    __obj30797
                    'lambda
                    (gxc#lambda-form-arity _L27154_)
                    '#f)
                   __obj30797)))
              (___kont2855828559_
               (lambda (_L27089_ _L27090_ _L27091_ _L27092_ _L27093_)
                 (let* ((_type-t27136_ (gxc#identifier-symbol _L27090_))
                        (_type27138_
                         (gxc#optimizer-resolve-type _type-t27136_)))
                   (if (##structure-instance-of?
                        _type27138_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t27136_)
                       '#f))))
              (___kont2856028561_
               (lambda (_L26875_ _L26876_ _L26877_ _L26878_)
                 (let* ((_type-t26951_ (gxc#identifier-symbol _L26876_))
                        (_type26953_
                         (gxc#optimizer-resolve-type _type-t26951_)))
                   (if (##structure-instance-of?
                        _type26953_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t26951_)
                       '#f))))
              (___kont2856628567_
               (lambda (_L26666_ _L26667_ _L26668_ _L26669_ _L26670_ _L26671_)
                 (let* ((_tab26721_ (gx#stx-e _L26668_))
                        (_keys26723_
                         (if _tab26721_
                             (filter values (vector->list _tab26721_))
                             '#f)))
                   (##structure
                    gxc#!kw-lambda::t
                    'kw-lambda
                    _keys26723_
                    (gxc#identifier-symbol _L26667_)))))
              (___kont2856828569_
               (lambda (_L26399_
                        _L26400_
                        _L26401_
                        _L26402_
                        _L26403_
                        _L26404_
                        _L26405_
                        _L26406_
                        _L26407_
                        _L26408_)
                 (##structure
                  gxc#!kw-lambda-primary::t
                  'kw-lambda-dispatch
                  (map gx#stx-e
                       (foldr1 (lambda (_g2650126504_ _g2650226506_)
                                 (cons _g2650126504_ _g2650226506_))
                               '()
                               _L26401_))
                  (gxc#identifier-symbol _L26405_))))
              (___kont2857228573_
               (lambda (_L26109_)
                 (let ((__obj30798 (make-object gxc#!lambda::t '5)))
                   (gxc#!lambda:::init!__0
                    __obj30798
                    'lambda
                    (gxc#lambda-form-arity _L26109_)
                    (gxc#dispatch-lambda-form-delegate _L26109_))
                   __obj30798)))
              (___kont2857428575_
               (lambda (_L26086_)
                 (let ((__obj30799 (make-object gxc#!lambda::t '5)))
                   (gxc#!lambda:::init!__0
                    __obj30799
                    'lambda
                    (gxc#lambda-form-arity _L26086_)
                    '#f)
                   __obj30799))))
          (let* ((___match2902929030_
                  (lambda (_e2606226101_ _hd2606326104_ _tl2606426106_)
                    (let ((_L26109_ _tl2606426106_))
                      (if (gxc#dispatch-lambda-form? _L26109_)
                          (___kont2857228573_ _L26109_)
                          (___kont2857428575_ _tl2606426106_)))))
                 (___match2902329024_
                  (lambda (_e2595626123_
                           _hd2595726126_
                           _tl2595826128_
                           _e2595926131_
                           _hd2596026134_
                           _tl2596126136_
                           _e2596226139_
                           _hd2596326142_
                           _tl2596426144_
                           _e2596526147_
                           _hd2596626150_
                           _tl2596726152_
                           _e2596826155_
                           _hd2596926158_
                           _tl2597026160_
                           _e2597126163_
                           _hd2597226166_
                           _tl2597326168_
                           _e2597426171_
                           _hd2597526174_
                           _tl2597626176_
                           _e2597726179_
                           _hd2597826182_
                           _tl2597926184_
                           _e2598026187_
                           _hd2598126190_
                           _tl2598226192_
                           _e2598326195_
                           _hd2598426198_
                           _tl2598526200_
                           _e2598626203_
                           _hd2598726206_
                           _tl2598826208_
                           _e2598926211_
                           _hd2599026214_
                           _tl2599126216_
                           _e2599226219_
                           _hd2599326222_
                           _tl2599426224_
                           _e2599526227_
                           _hd2599626230_
                           _tl2599726232_
                           ___splice2857028571_
                           _target2599826235_
                           _tl2600026237_
                           _e2601326240_
                           _hd2601426243_
                           _tl2601526245_
                           _e2601626248_
                           _hd2601726251_
                           _tl2601826253_
                           _e2601926256_
                           _hd2602026259_
                           _tl2602126261_)
                    (letrec ((_loop2600126264_
                              (lambda (_hd2599926267_
                                       _-absent-value2600526269_
                                       _key2600626271_
                                       _-xkwvar2600726273_
                                       _-hash-ref2600826275_)
                                (if (gx#stx-pair? _hd2599926267_)
                                    (let ((_e2600226278_
                                           (gx#stx-e _hd2599926267_)))
                                      (let ((_lp-tl2600426283_
                                             (##cdr _e2600226278_))
                                            (_lp-hd2600326281_
                                             (##car _e2600226278_)))
                                        (if (gx#stx-pair? _lp-hd2600326281_)
                                            (let ((_e2602226286_
                                                   (gx#stx-e
                                                    _lp-hd2600326281_)))
                                              (let ((_tl2602426291_
                                                     (##cdr _e2602226286_))
                                                    (_hd2602326289_
                                                     (##car _e2602226286_)))
                                                (if (gx#identifier?
                                                     _hd2602326289_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2602326289_)
                                                        (if (gx#stx-pair?
                                                             _tl2602426291_)
                                                            (let ((_e2602526294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2602426291_)))
                      (let ((_tl2602726299_ (##cdr _e2602526294_))
                            (_hd2602626297_ (##car _e2602526294_)))
                        (if (gx#stx-pair? _hd2602626297_)
                            (let ((_e2602826302_ (gx#stx-e _hd2602626297_)))
                              (let ((_tl2603026307_ (##cdr _e2602826302_))
                                    (_hd2602926305_ (##car _e2602826302_)))
                                (if (gx#identifier? _hd2602926305_)
                                    (if (gx#stx-eq? '%#ref _hd2602926305_)
                                        (if (gx#stx-pair? _tl2603026307_)
                                            (let ((_e2603126310_
                                                   (gx#stx-e _tl2603026307_)))
                                              (let ((_tl2603326315_
                                                     (##cdr _e2603126310_))
                                                    (_hd2603226313_
                                                     (##car _e2603126310_)))
                                                (if (gx#stx-null?
                                                     _tl2603326315_)
                                                    (if (gx#stx-pair?
                                                         _tl2602726299_)
                                                        (let ((_e2603426318_
                                                               (gx#stx-e
                                                                _tl2602726299_)))
                                                          (let ((_tl2603626323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2603426318_))
                        (_hd2603526321_ (##car _e2603426318_)))
                    (if (gx#stx-pair? _hd2603526321_)
                        (let ((_e2603726326_ (gx#stx-e _hd2603526321_)))
                          (let ((_tl2603926331_ (##cdr _e2603726326_))
                                (_hd2603826329_ (##car _e2603726326_)))
                            (if (gx#identifier? _hd2603826329_)
                                (if (gx#stx-eq? '%#ref _hd2603826329_)
                                    (if (gx#stx-pair? _tl2603926331_)
                                        (let ((_e2604026334_
                                               (gx#stx-e _tl2603926331_)))
                                          (let ((_tl2604226339_
                                                 (##cdr _e2604026334_))
                                                (_hd2604126337_
                                                 (##car _e2604026334_)))
                                            (if (gx#stx-null? _tl2604226339_)
                                                (if (gx#stx-pair?
                                                     _tl2603626323_)
                                                    (let ((_e2604326342_
                                                           (gx#stx-e
                                                            _tl2603626323_)))
                                                      (let ((_tl2604526347_
                                                             (##cdr _e2604326342_))
                                                            (_hd2604426345_
                                                             (##car _e2604326342_)))
                                                        (if (gx#stx-pair?
                                                             _hd2604426345_)
                                                            (let ((_e2604626350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2604426345_)))
                      (let ((_tl2604826355_ (##cdr _e2604626350_))
                            (_hd2604726353_ (##car _e2604626350_)))
                        (if (gx#identifier? _hd2604726353_)
                            (if (gx#stx-eq? '%#quote _hd2604726353_)
                                (if (gx#stx-pair? _tl2604826355_)
                                    (let ((_e2604926358_
                                           (gx#stx-e _tl2604826355_)))
                                      (let ((_tl2605126363_
                                             (##cdr _e2604926358_))
                                            (_hd2605026361_
                                             (##car _e2604926358_)))
                                        (if (gx#stx-null? _tl2605126363_)
                                            (if (gx#stx-pair? _tl2604526347_)
                                                (let ((_e2605226366_
                                                       (gx#stx-e
                                                        _tl2604526347_)))
                                                  (let ((_tl2605426371_
                                                         (##cdr _e2605226366_))
                                                        (_hd2605326369_
                                                         (##car _e2605226366_)))
                                                    (if (gx#stx-pair?
                                                         _hd2605326369_)
                                                        (let ((_e2605526374_
                                                               (gx#stx-e
                                                                _hd2605326369_)))
                                                          (let ((_tl2605726379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2605526374_))
                        (_hd2605626377_ (##car _e2605526374_)))
                    (if (gx#identifier? _hd2605626377_)
                        (if (gx#stx-eq? '%#ref _hd2605626377_)
                            (if (gx#stx-pair? _tl2605726379_)
                                (let ((_e2605826382_
                                       (gx#stx-e _tl2605726379_)))
                                  (let ((_tl2606026387_ (##cdr _e2605826382_))
                                        (_hd2605926385_ (##car _e2605826382_)))
                                    (if (gx#stx-null? _tl2606026387_)
                                        (if (gx#stx-null? _tl2605426371_)
                                            (_loop2600126264_
                                             _lp-tl2600426283_
                                             (cons _hd2605926385_
                                                   _-absent-value2600526269_)
                                             (cons _hd2605026361_
                                                   _key2600626271_)
                                             (cons _hd2604126337_
                                                   _-xkwvar2600726273_)
                                             (cons _hd2603226313_
                                                   _-hash-ref2600826275_))
                                            (___match2902929030_
                                             _e2595626123_
                                             _hd2595726126_
                                             _tl2595826128_))
                                        (___match2902929030_
                                         _e2595626123_
                                         _hd2595726126_
                                         _tl2595826128_))))
                                (___match2902929030_
                                 _e2595626123_
                                 _hd2595726126_
                                 _tl2595826128_))
                            (___match2902929030_
                             _e2595626123_
                             _hd2595726126_
                             _tl2595826128_))
                        (___match2902929030_
                         _e2595626123_
                         _hd2595726126_
                         _tl2595826128_))))
                (___match2902929030_
                 _e2595626123_
                 _hd2595726126_
                 _tl2595826128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2902929030_
                                                 _e2595626123_
                                                 _hd2595726126_
                                                 _tl2595826128_))
                                            (___match2902929030_
                                             _e2595626123_
                                             _hd2595726126_
                                             _tl2595826128_))))
                                    (___match2902929030_
                                     _e2595626123_
                                     _hd2595726126_
                                     _tl2595826128_))
                                (___match2902929030_
                                 _e2595626123_
                                 _hd2595726126_
                                 _tl2595826128_))
                            (___match2902929030_
                             _e2595626123_
                             _hd2595726126_
                             _tl2595826128_))))
                    (___match2902929030_
                     _e2595626123_
                     _hd2595726126_
                     _tl2595826128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2902929030_
                                                     _e2595626123_
                                                     _hd2595726126_
                                                     _tl2595826128_))
                                                (___match2902929030_
                                                 _e2595626123_
                                                 _hd2595726126_
                                                 _tl2595826128_))))
                                        (___match2902929030_
                                         _e2595626123_
                                         _hd2595726126_
                                         _tl2595826128_))
                                    (___match2902929030_
                                     _e2595626123_
                                     _hd2595726126_
                                     _tl2595826128_))
                                (___match2902929030_
                                 _e2595626123_
                                 _hd2595726126_
                                 _tl2595826128_))))
                        (___match2902929030_
                         _e2595626123_
                         _hd2595726126_
                         _tl2595826128_))))
                (___match2902929030_
                 _e2595626123_
                 _hd2595726126_
                 _tl2595826128_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2902929030_
                                                     _e2595626123_
                                                     _hd2595726126_
                                                     _tl2595826128_))))
                                            (___match2902929030_
                                             _e2595626123_
                                             _hd2595726126_
                                             _tl2595826128_))
                                        (___match2902929030_
                                         _e2595626123_
                                         _hd2595726126_
                                         _tl2595826128_))
                                    (___match2902929030_
                                     _e2595626123_
                                     _hd2595726126_
                                     _tl2595826128_))))
                            (___match2902929030_
                             _e2595626123_
                             _hd2595726126_
                             _tl2595826128_))))
                    (___match2902929030_
                     _e2595626123_
                     _hd2595726126_
                     _tl2595826128_))
                (___match2902929030_
                 _e2595626123_
                 _hd2595726126_
                 _tl2595826128_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2902929030_
                                                     _e2595626123_
                                                     _hd2595726126_
                                                     _tl2595826128_))))
                                            (___match2902929030_
                                             _e2595626123_
                                             _hd2595726126_
                                             _tl2595826128_))))
                                    (let ((_-hash-ref2601226396_
                                           (reverse _-hash-ref2600826275_))
                                          (_-xkwvar2601126394_
                                           (reverse _-xkwvar2600726273_))
                                          (_key2601026392_
                                           (reverse _key2600626271_))
                                          (_-absent-value2600926390_
                                           (reverse _-absent-value2600526269_)))
                                      (if (gx#stx-null? _tl2596726152_)
                                          (let ((_L26399_ _hd2602026259_)
                                                (_L26400_
                                                 _-absent-value2600926390_)
                                                (_L26401_ _key2601026392_)
                                                (_L26402_ _-xkwvar2601126394_)
                                                (_L26403_
                                                 _-hash-ref2601226396_)
                                                (_L26404_ _hd2599626230_)
                                                (_L26405_ _hd2598726206_)
                                                (_L26406_ _hd2597826182_)
                                                (_L26407_ _tl2596426144_)
                                                (_L26408_ _hd2596326142_))
                                            (if (and (gx#identifier? _L26408_)
                                                     (gx#identifier? _L26407_)
                                                     (gxc#runtime-identifier=?
                                                      _L26406_
                                                      'apply)
                                                     (gx#free-identifier=?
                                                      _L26408_
                                                      _L26404_)
                                                     (andmap1 gx#stx-keyword?
                                                              (foldr1 (lambda (_g2646126464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2646226466_)
                                (cons _g2646126464_ _g2646226466_))
                              '()
                              _L26401_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (andmap1 (lambda (_g2646826470_)
                                                                (gxc#runtime-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2646826470_
                         'hash-ref))
                      (foldr1 (lambda (_g2647226475_ _g2647326477_)
                                (cons _g2647226475_ _g2647326477_))
                              '()
                              _L26403_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (andmap1 (lambda (_g2647926481_)
                                                                (gxc#runtime-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2647926481_
                         'absent-value))
                      (foldr1 (lambda (_g2648326486_ _g2648426488_)
                                (cons _g2648326486_ _g2648426488_))
                              '()
                              _L26400_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (andmap1 (lambda (_g2649026492_)
                                                                (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2649026492_
                         _L26408_))
                      (foldr1 (lambda (_g2649426497_ _g2649526499_)
                                (cons _g2649426497_ _g2649526499_))
                              '()
                              _L26402_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2856828569_
                                                 _L26399_
                                                 _L26400_
                                                 _L26401_
                                                 _L26402_
                                                 _L26403_
                                                 _L26404_
                                                 _L26405_
                                                 _L26406_
                                                 _L26407_
                                                 _L26408_)
                                                (___match2902929030_
                                                 _e2595626123_
                                                 _hd2595726126_
                                                 _tl2595826128_)))
                                          (___match2902929030_
                                           _e2595626123_
                                           _hd2595726126_
                                           _tl2595826128_)))))))
                      (_loop2600126264_ _target2599826235_ '() '() '() '()))))
                 (___match2889528896_
                  (lambda (_e2595626123_
                           _hd2595726126_
                           _tl2595826128_
                           _e2595926131_
                           _hd2596026134_
                           _tl2596126136_)
                    (if (gx#stx-pair? _hd2596026134_)
                        (let ((_e2596226139_ (gx#stx-e _hd2596026134_)))
                          (let ((_tl2596426144_ (##cdr _e2596226139_))
                                (_hd2596326142_ (##car _e2596226139_)))
                            (if (gx#stx-pair? _tl2596126136_)
                                (let ((_e2596526147_
                                       (gx#stx-e _tl2596126136_)))
                                  (let ((_tl2596726152_ (##cdr _e2596526147_))
                                        (_hd2596626150_ (##car _e2596526147_)))
                                    (if (gx#stx-pair? _hd2596626150_)
                                        (let ((_e2596826155_
                                               (gx#stx-e _hd2596626150_)))
                                          (let ((_tl2597026160_
                                                 (##cdr _e2596826155_))
                                                (_hd2596926158_
                                                 (##car _e2596826155_)))
                                            (if (gx#identifier? _hd2596926158_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2596926158_)
                                                    (if (gx#stx-pair?
                                                         _tl2597026160_)
                                                        (let ((_e2597126163_
                                                               (gx#stx-e
                                                                _tl2597026160_)))
                                                          (let ((_tl2597326168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2597126163_))
                        (_hd2597226166_ (##car _e2597126163_)))
                    (if (gx#stx-pair? _hd2597226166_)
                        (let ((_e2597426171_ (gx#stx-e _hd2597226166_)))
                          (let ((_tl2597626176_ (##cdr _e2597426171_))
                                (_hd2597526174_ (##car _e2597426171_)))
                            (if (gx#identifier? _hd2597526174_)
                                (if (gx#stx-eq? '%#ref _hd2597526174_)
                                    (if (gx#stx-pair? _tl2597626176_)
                                        (let ((_e2597726179_
                                               (gx#stx-e _tl2597626176_)))
                                          (let ((_tl2597926184_
                                                 (##cdr _e2597726179_))
                                                (_hd2597826182_
                                                 (##car _e2597726179_)))
                                            (if (gx#stx-null? _tl2597926184_)
                                                (if (gx#stx-pair?
                                                     _tl2597326168_)
                                                    (let ((_e2598026187_
                                                           (gx#stx-e
                                                            _tl2597326168_)))
                                                      (let ((_tl2598226192_
                                                             (##cdr _e2598026187_))
                                                            (_hd2598126190_
                                                             (##car _e2598026187_)))
                                                        (if (gx#stx-pair?
                                                             _hd2598126190_)
                                                            (let ((_e2598326195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2598126190_)))
                      (let ((_tl2598526200_ (##cdr _e2598326195_))
                            (_hd2598426198_ (##car _e2598326195_)))
                        (if (gx#identifier? _hd2598426198_)
                            (if (gx#stx-eq? '%#ref _hd2598426198_)
                                (if (gx#stx-pair? _tl2598526200_)
                                    (let ((_e2598626203_
                                           (gx#stx-e _tl2598526200_)))
                                      (let ((_tl2598826208_
                                             (##cdr _e2598626203_))
                                            (_hd2598726206_
                                             (##car _e2598626203_)))
                                        (if (gx#stx-null? _tl2598826208_)
                                            (if (gx#stx-pair? _tl2598226192_)
                                                (let ((_e2598926211_
                                                       (gx#stx-e
                                                        _tl2598226192_)))
                                                  (let ((_tl2599126216_
                                                         (##cdr _e2598926211_))
                                                        (_hd2599026214_
                                                         (##car _e2598926211_)))
                                                    (if (gx#stx-pair?
                                                         _hd2599026214_)
                                                        (let ((_e2599226219_
                                                               (gx#stx-e
                                                                _hd2599026214_)))
                                                          (let ((_tl2599426224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2599226219_))
                        (_hd2599326222_ (##car _e2599226219_)))
                    (if (gx#identifier? _hd2599326222_)
                        (if (gx#stx-eq? '%#ref _hd2599326222_)
                            (if (gx#stx-pair? _tl2599426224_)
                                (let ((_e2599526227_
                                       (gx#stx-e _tl2599426224_)))
                                  (let ((_tl2599726232_ (##cdr _e2599526227_))
                                        (_hd2599626230_ (##car _e2599526227_)))
                                    (if (gx#stx-null? _tl2599726232_)
                                        (if (gx#stx-pair/null? _tl2599126216_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2599126216_)
                                                      '1)
                                                (let ((___splice2857028571_
                                                       (gx#syntax-split-splice
                                                        _tl2599126216_
                                                        '1)))
                                                  (let ((_tl2600026237_
                                                         (##vector-ref
                                                          ___splice2857028571_
                                                          '1))
                                                        (_target2599826235_
                                                         (##vector-ref
                                                          ___splice2857028571_
                                                          '0)))
                                                    (if (gx#stx-pair?
                                                         _tl2600026237_)
                                                        (let ((_e2601326240_
                                                               (gx#stx-e
                                                                _tl2600026237_)))
                                                          (let ((_tl2601526245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2601326240_))
                        (_hd2601426243_ (##car _e2601326240_)))
                    (if (gx#stx-pair? _hd2601426243_)
                        (let ((_e2601626248_ (gx#stx-e _hd2601426243_)))
                          (let ((_tl2601826253_ (##cdr _e2601626248_))
                                (_hd2601726251_ (##car _e2601626248_)))
                            (if (gx#identifier? _hd2601726251_)
                                (if (gx#stx-eq? '%#ref _hd2601726251_)
                                    (if (gx#stx-pair? _tl2601826253_)
                                        (let ((_e2601926256_
                                               (gx#stx-e _tl2601826253_)))
                                          (let ((_tl2602126261_
                                                 (##cdr _e2601926256_))
                                                (_hd2602026259_
                                                 (##car _e2601926256_)))
                                            (if (gx#stx-null? _tl2602126261_)
                                                (if (gx#stx-null?
                                                     _tl2601526245_)
                                                    (___match2902329024_
                                                     _e2595626123_
                                                     _hd2595726126_
                                                     _tl2595826128_
                                                     _e2595926131_
                                                     _hd2596026134_
                                                     _tl2596126136_
                                                     _e2596226139_
                                                     _hd2596326142_
                                                     _tl2596426144_
                                                     _e2596526147_
                                                     _hd2596626150_
                                                     _tl2596726152_
                                                     _e2596826155_
                                                     _hd2596926158_
                                                     _tl2597026160_
                                                     _e2597126163_
                                                     _hd2597226166_
                                                     _tl2597326168_
                                                     _e2597426171_
                                                     _hd2597526174_
                                                     _tl2597626176_
                                                     _e2597726179_
                                                     _hd2597826182_
                                                     _tl2597926184_
                                                     _e2598026187_
                                                     _hd2598126190_
                                                     _tl2598226192_
                                                     _e2598326195_
                                                     _hd2598426198_
                                                     _tl2598526200_
                                                     _e2598626203_
                                                     _hd2598726206_
                                                     _tl2598826208_
                                                     _e2598926211_
                                                     _hd2599026214_
                                                     _tl2599126216_
                                                     _e2599226219_
                                                     _hd2599326222_
                                                     _tl2599426224_
                                                     _e2599526227_
                                                     _hd2599626230_
                                                     _tl2599726232_
                                                     ___splice2857028571_
                                                     _target2599826235_
                                                     _tl2600026237_
                                                     _e2601326240_
                                                     _hd2601426243_
                                                     _tl2601526245_
                                                     _e2601626248_
                                                     _hd2601726251_
                                                     _tl2601826253_
                                                     _e2601926256_
                                                     _hd2602026259_
                                                     _tl2602126261_)
                                                    (___match2902929030_
                                                     _e2595626123_
                                                     _hd2595726126_
                                                     _tl2595826128_))
                                                (___match2902929030_
                                                 _e2595626123_
                                                 _hd2595726126_
                                                 _tl2595826128_))))
                                        (___match2902929030_
                                         _e2595626123_
                                         _hd2595726126_
                                         _tl2595826128_))
                                    (___match2902929030_
                                     _e2595626123_
                                     _hd2595726126_
                                     _tl2595826128_))
                                (___match2902929030_
                                 _e2595626123_
                                 _hd2595726126_
                                 _tl2595826128_))))
                        (___match2902929030_
                         _e2595626123_
                         _hd2595726126_
                         _tl2595826128_))))
                (___match2902929030_
                 _e2595626123_
                 _hd2595726126_
                 _tl2595826128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2902929030_
                                                 _e2595626123_
                                                 _hd2595726126_
                                                 _tl2595826128_))
                                            (___match2902929030_
                                             _e2595626123_
                                             _hd2595726126_
                                             _tl2595826128_))
                                        (___match2902929030_
                                         _e2595626123_
                                         _hd2595726126_
                                         _tl2595826128_))))
                                (___match2902929030_
                                 _e2595626123_
                                 _hd2595726126_
                                 _tl2595826128_))
                            (___match2902929030_
                             _e2595626123_
                             _hd2595726126_
                             _tl2595826128_))
                        (___match2902929030_
                         _e2595626123_
                         _hd2595726126_
                         _tl2595826128_))))
                (___match2902929030_
                 _e2595626123_
                 _hd2595726126_
                 _tl2595826128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2902929030_
                                                 _e2595626123_
                                                 _hd2595726126_
                                                 _tl2595826128_))
                                            (___match2902929030_
                                             _e2595626123_
                                             _hd2595726126_
                                             _tl2595826128_))))
                                    (___match2902929030_
                                     _e2595626123_
                                     _hd2595726126_
                                     _tl2595826128_))
                                (___match2902929030_
                                 _e2595626123_
                                 _hd2595726126_
                                 _tl2595826128_))
                            (___match2902929030_
                             _e2595626123_
                             _hd2595726126_
                             _tl2595826128_))))
                    (___match2902929030_
                     _e2595626123_
                     _hd2595726126_
                     _tl2595826128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2902929030_
                                                     _e2595626123_
                                                     _hd2595726126_
                                                     _tl2595826128_))
                                                (___match2902929030_
                                                 _e2595626123_
                                                 _hd2595726126_
                                                 _tl2595826128_))))
                                        (___match2902929030_
                                         _e2595626123_
                                         _hd2595726126_
                                         _tl2595826128_))
                                    (___match2902929030_
                                     _e2595626123_
                                     _hd2595726126_
                                     _tl2595826128_))
                                (___match2902929030_
                                 _e2595626123_
                                 _hd2595726126_
                                 _tl2595826128_))))
                        (___match2902929030_
                         _e2595626123_
                         _hd2595726126_
                         _tl2595826128_))))
                (___match2902929030_
                 _e2595626123_
                 _hd2595726126_
                 _tl2595826128_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2902929030_
                                                     _e2595626123_
                                                     _hd2595726126_
                                                     _tl2595826128_))
                                                (___match2902929030_
                                                 _e2595626123_
                                                 _hd2595726126_
                                                 _tl2595826128_))))
                                        (___match2902929030_
                                         _e2595626123_
                                         _hd2595726126_
                                         _tl2595826128_))))
                                (___match2902929030_
                                 _e2595626123_
                                 _hd2595726126_
                                 _tl2595826128_))))
                        (___match2902929030_
                         _e2595626123_
                         _hd2595726126_
                         _tl2595826128_))))
                 (___match2888328884_
                  (lambda (_e2588926514_
                           _hd2589026517_
                           _tl2589126519_
                           _e2589226522_
                           _hd2589326525_
                           _tl2589426527_
                           _e2589526530_
                           _hd2589626533_
                           _tl2589726535_
                           _e2589826538_
                           _hd2589926541_
                           _tl2590026543_
                           _e2590126546_
                           _hd2590226549_
                           _tl2590326551_
                           _e2590426554_
                           _hd2590526557_
                           _tl2590626559_
                           _e2590726562_
                           _hd2590826565_
                           _tl2590926567_
                           _e2591026570_
                           _hd2591126573_
                           _tl2591226575_
                           _e2591326578_
                           _hd2591426581_
                           _tl2591526583_
                           _e2591626586_
                           _hd2591726589_
                           _tl2591826591_
                           _e2591926594_
                           _hd2592026597_
                           _tl2592126599_
                           _e2592226602_
                           _hd2592326605_
                           _tl2592426607_
                           _e2592526610_
                           _hd2592626613_
                           _tl2592726615_
                           _e2592826618_
                           _hd2592926621_
                           _tl2593026623_
                           _e2593126626_
                           _hd2593226629_
                           _tl2593326631_
                           _e2593426634_
                           _hd2593526637_
                           _tl2593626639_
                           _e2593726642_
                           _hd2593826645_
                           _tl2593926647_
                           _e2594026650_
                           _hd2594126653_
                           _tl2594226655_
                           _e2594326658_
                           _hd2594426661_
                           _tl2594526663_)
                    (let ((_L26666_ _hd2594426661_)
                          (_L26667_ _hd2593526637_)
                          (_L26668_ _hd2592626613_)
                          (_L26669_ _hd2591726589_)
                          (_L26670_ _hd2590826565_)
                          (_L26671_ _hd2589326525_))
                      (if (and (gx#identifier? _L26671_)
                               (gxc#runtime-identifier=? _L26670_ 'apply)
                               (gxc#runtime-identifier=?
                                _L26669_
                                'keyword-dispatch)
                               (gx#free-identifier=? _L26671_ _L26666_))
                          (___kont2856628567_
                           _L26666_
                           _L26667_
                           _L26668_
                           _L26669_
                           _L26670_
                           _L26671_)
                          (___match2889528896_
                           _e2588926514_
                           _hd2589026517_
                           _tl2589126519_
                           _e2589226522_
                           _hd2589326525_
                           _tl2589426527_)))))
                 (___match2880728808_
                  (lambda (_e2588926514_
                           _hd2589026517_
                           _tl2589126519_
                           _e2589226522_
                           _hd2589326525_
                           _tl2589426527_
                           _e2589526530_
                           _hd2589626533_
                           _tl2589726535_
                           _e2589826538_
                           _hd2589926541_
                           _tl2590026543_
                           _e2590126546_
                           _hd2590226549_
                           _tl2590326551_
                           _e2590426554_
                           _hd2590526557_
                           _tl2590626559_
                           _e2590726562_
                           _hd2590826565_
                           _tl2590926567_
                           _e2591026570_
                           _hd2591126573_
                           _tl2591226575_
                           _e2591326578_
                           _hd2591426581_
                           _tl2591526583_
                           _e2591626586_
                           _hd2591726589_
                           _tl2591826591_)
                    (if (gx#stx-pair? _tl2591226575_)
                        (let ((_e2591926594_ (gx#stx-e _tl2591226575_)))
                          (let ((_tl2592126599_ (##cdr _e2591926594_))
                                (_hd2592026597_ (##car _e2591926594_)))
                            (if (gx#stx-pair? _hd2592026597_)
                                (let ((_e2592226602_
                                       (gx#stx-e _hd2592026597_)))
                                  (let ((_tl2592426607_ (##cdr _e2592226602_))
                                        (_hd2592326605_ (##car _e2592226602_)))
                                    (if (gx#identifier? _hd2592326605_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2592326605_)
                                            (if (gx#stx-pair? _tl2592426607_)
                                                (let ((_e2592526610_
                                                       (gx#stx-e
                                                        _tl2592426607_)))
                                                  (let ((_tl2592726615_
                                                         (##cdr _e2592526610_))
                                                        (_hd2592626613_
                                                         (##car _e2592526610_)))
                                                    (if (gx#stx-null?
                                                         _tl2592726615_)
                                                        (if (gx#stx-pair?
                                                             _tl2592126599_)
                                                            (let ((_e2592826618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2592126599_)))
                      (let ((_tl2593026623_ (##cdr _e2592826618_))
                            (_hd2592926621_ (##car _e2592826618_)))
                        (if (gx#stx-pair? _hd2592926621_)
                            (let ((_e2593126626_ (gx#stx-e _hd2592926621_)))
                              (let ((_tl2593326631_ (##cdr _e2593126626_))
                                    (_hd2593226629_ (##car _e2593126626_)))
                                (if (gx#identifier? _hd2593226629_)
                                    (if (gx#stx-eq? '%#ref _hd2593226629_)
                                        (if (gx#stx-pair? _tl2593326631_)
                                            (let ((_e2593426634_
                                                   (gx#stx-e _tl2593326631_)))
                                              (let ((_tl2593626639_
                                                     (##cdr _e2593426634_))
                                                    (_hd2593526637_
                                                     (##car _e2593426634_)))
                                                (if (gx#stx-null?
                                                     _tl2593626639_)
                                                    (if (gx#stx-pair?
                                                         _tl2593026623_)
                                                        (let ((_e2593726642_
                                                               (gx#stx-e
                                                                _tl2593026623_)))
                                                          (let ((_tl2593926647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2593726642_))
                        (_hd2593826645_ (##car _e2593726642_)))
                    (if (gx#stx-pair? _hd2593826645_)
                        (let ((_e2594026650_ (gx#stx-e _hd2593826645_)))
                          (let ((_tl2594226655_ (##cdr _e2594026650_))
                                (_hd2594126653_ (##car _e2594026650_)))
                            (if (gx#identifier? _hd2594126653_)
                                (if (gx#stx-eq? '%#ref _hd2594126653_)
                                    (if (gx#stx-pair? _tl2594226655_)
                                        (let ((_e2594326658_
                                               (gx#stx-e _tl2594226655_)))
                                          (let ((_tl2594526663_
                                                 (##cdr _e2594326658_))
                                                (_hd2594426661_
                                                 (##car _e2594326658_)))
                                            (if (gx#stx-null? _tl2594526663_)
                                                (if (gx#stx-null?
                                                     _tl2593926647_)
                                                    (if (gx#stx-null?
                                                         _tl2589726535_)
                                                        (___match2888328884_
                                                         _e2588926514_
                                                         _hd2589026517_
                                                         _tl2589126519_
                                                         _e2589226522_
                                                         _hd2589326525_
                                                         _tl2589426527_
                                                         _e2589526530_
                                                         _hd2589626533_
                                                         _tl2589726535_
                                                         _e2589826538_
                                                         _hd2589926541_
                                                         _tl2590026543_
                                                         _e2590126546_
                                                         _hd2590226549_
                                                         _tl2590326551_
                                                         _e2590426554_
                                                         _hd2590526557_
                                                         _tl2590626559_
                                                         _e2590726562_
                                                         _hd2590826565_
                                                         _tl2590926567_
                                                         _e2591026570_
                                                         _hd2591126573_
                                                         _tl2591226575_
                                                         _e2591326578_
                                                         _hd2591426581_
                                                         _tl2591526583_
                                                         _e2591626586_
                                                         _hd2591726589_
                                                         _tl2591826591_
                                                         _e2591926594_
                                                         _hd2592026597_
                                                         _tl2592126599_
                                                         _e2592226602_
                                                         _hd2592326605_
                                                         _tl2592426607_
                                                         _e2592526610_
                                                         _hd2592626613_
                                                         _tl2592726615_
                                                         _e2592826618_
                                                         _hd2592926621_
                                                         _tl2593026623_
                                                         _e2593126626_
                                                         _hd2593226629_
                                                         _tl2593326631_
                                                         _e2593426634_
                                                         _hd2593526637_
                                                         _tl2593626639_
                                                         _e2593726642_
                                                         _hd2593826645_
                                                         _tl2593926647_
                                                         _e2594026650_
                                                         _hd2594126653_
                                                         _tl2594226655_
                                                         _e2594326658_
                                                         _hd2594426661_
                                                         _tl2594526663_)
                                                        (___match2889528896_
                                                         _e2588926514_
                                                         _hd2589026517_
                                                         _tl2589126519_
                                                         _e2589226522_
                                                         _hd2589326525_
                                                         _tl2589426527_))
                                                    (___match2889528896_
                                                     _e2588926514_
                                                     _hd2589026517_
                                                     _tl2589126519_
                                                     _e2589226522_
                                                     _hd2589326525_
                                                     _tl2589426527_))
                                                (___match2889528896_
                                                 _e2588926514_
                                                 _hd2589026517_
                                                 _tl2589126519_
                                                 _e2589226522_
                                                 _hd2589326525_
                                                 _tl2589426527_))))
                                        (___match2889528896_
                                         _e2588926514_
                                         _hd2589026517_
                                         _tl2589126519_
                                         _e2589226522_
                                         _hd2589326525_
                                         _tl2589426527_))
                                    (___match2889528896_
                                     _e2588926514_
                                     _hd2589026517_
                                     _tl2589126519_
                                     _e2589226522_
                                     _hd2589326525_
                                     _tl2589426527_))
                                (___match2889528896_
                                 _e2588926514_
                                 _hd2589026517_
                                 _tl2589126519_
                                 _e2589226522_
                                 _hd2589326525_
                                 _tl2589426527_))))
                        (___match2889528896_
                         _e2588926514_
                         _hd2589026517_
                         _tl2589126519_
                         _e2589226522_
                         _hd2589326525_
                         _tl2589426527_))))
                (___match2889528896_
                 _e2588926514_
                 _hd2589026517_
                 _tl2589126519_
                 _e2589226522_
                 _hd2589326525_
                 _tl2589426527_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2889528896_
                                                     _e2588926514_
                                                     _hd2589026517_
                                                     _tl2589126519_
                                                     _e2589226522_
                                                     _hd2589326525_
                                                     _tl2589426527_))))
                                            (___match2889528896_
                                             _e2588926514_
                                             _hd2589026517_
                                             _tl2589126519_
                                             _e2589226522_
                                             _hd2589326525_
                                             _tl2589426527_))
                                        (___match2889528896_
                                         _e2588926514_
                                         _hd2589026517_
                                         _tl2589126519_
                                         _e2589226522_
                                         _hd2589326525_
                                         _tl2589426527_))
                                    (___match2889528896_
                                     _e2588926514_
                                     _hd2589026517_
                                     _tl2589126519_
                                     _e2589226522_
                                     _hd2589326525_
                                     _tl2589426527_))))
                            (___match2889528896_
                             _e2588926514_
                             _hd2589026517_
                             _tl2589126519_
                             _e2589226522_
                             _hd2589326525_
                             _tl2589426527_))))
                    (___match2889528896_
                     _e2588926514_
                     _hd2589026517_
                     _tl2589126519_
                     _e2589226522_
                     _hd2589326525_
                     _tl2589426527_))
                (___match2889528896_
                 _e2588926514_
                 _hd2589026517_
                 _tl2589126519_
                 _e2589226522_
                 _hd2589326525_
                 _tl2589426527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2889528896_
                                                 _e2588926514_
                                                 _hd2589026517_
                                                 _tl2589126519_
                                                 _e2589226522_
                                                 _hd2589326525_
                                                 _tl2589426527_))
                                            (___match2889528896_
                                             _e2588926514_
                                             _hd2589026517_
                                             _tl2589126519_
                                             _e2589226522_
                                             _hd2589326525_
                                             _tl2589426527_))
                                        (___match2889528896_
                                         _e2588926514_
                                         _hd2589026517_
                                         _tl2589126519_
                                         _e2589226522_
                                         _hd2589326525_
                                         _tl2589426527_))))
                                (___match2889528896_
                                 _e2588926514_
                                 _hd2589026517_
                                 _tl2589126519_
                                 _e2589226522_
                                 _hd2589326525_
                                 _tl2589426527_))))
                        (___match2889528896_
                         _e2588926514_
                         _hd2589026517_
                         _tl2589126519_
                         _e2589226522_
                         _hd2589326525_
                         _tl2589426527_))))
                 (___match2874328744_
                  (lambda (_e2588926514_
                           _hd2589026517_
                           _tl2589126519_
                           _e2589226522_
                           _hd2589326525_
                           _tl2589426527_)
                    (if (gx#stx-pair? _tl2589426527_)
                        (let ((_e2589526530_ (gx#stx-e _tl2589426527_)))
                          (let ((_tl2589726535_ (##cdr _e2589526530_))
                                (_hd2589626533_ (##car _e2589526530_)))
                            (if (gx#stx-pair? _hd2589626533_)
                                (let ((_e2589826538_
                                       (gx#stx-e _hd2589626533_)))
                                  (let ((_tl2590026543_ (##cdr _e2589826538_))
                                        (_hd2589926541_ (##car _e2589826538_)))
                                    (if (gx#identifier? _hd2589926541_)
                                        (if (gx#stx-eq? '%#call _hd2589926541_)
                                            (if (gx#stx-pair? _tl2590026543_)
                                                (let ((_e2590126546_
                                                       (gx#stx-e
                                                        _tl2590026543_)))
                                                  (let ((_tl2590326551_
                                                         (##cdr _e2590126546_))
                                                        (_hd2590226549_
                                                         (##car _e2590126546_)))
                                                    (if (gx#stx-pair?
                                                         _hd2590226549_)
                                                        (let ((_e2590426554_
                                                               (gx#stx-e
                                                                _hd2590226549_)))
                                                          (let ((_tl2590626559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2590426554_))
                        (_hd2590526557_ (##car _e2590426554_)))
                    (if (gx#identifier? _hd2590526557_)
                        (if (gx#stx-eq? '%#ref _hd2590526557_)
                            (if (gx#stx-pair? _tl2590626559_)
                                (let ((_e2590726562_
                                       (gx#stx-e _tl2590626559_)))
                                  (let ((_tl2590926567_ (##cdr _e2590726562_))
                                        (_hd2590826565_ (##car _e2590726562_)))
                                    (if (gx#stx-null? _tl2590926567_)
                                        (if (gx#stx-pair? _tl2590326551_)
                                            (let ((_e2591026570_
                                                   (gx#stx-e _tl2590326551_)))
                                              (let ((_tl2591226575_
                                                     (##cdr _e2591026570_))
                                                    (_hd2591126573_
                                                     (##car _e2591026570_)))
                                                (if (gx#stx-pair?
                                                     _hd2591126573_)
                                                    (let ((_e2591326578_
                                                           (gx#stx-e
                                                            _hd2591126573_)))
                                                      (let ((_tl2591526583_
                                                             (##cdr _e2591326578_))
                                                            (_hd2591426581_
                                                             (##car _e2591326578_)))
                                                        (if (gx#identifier?
                                                             _hd2591426581_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2591426581_)
                        (if (gx#stx-pair? _tl2591526583_)
                            (let ((_e2591626586_ (gx#stx-e _tl2591526583_)))
                              (let ((_tl2591826591_ (##cdr _e2591626586_))
                                    (_hd2591726589_ (##car _e2591626586_)))
                                (if (gx#stx-null? _tl2591826591_)
                                    (if (gx#stx-pair? _tl2591226575_)
                                        (let ((_e2591926594_
                                               (gx#stx-e _tl2591226575_)))
                                          (let ((_tl2592126599_
                                                 (##cdr _e2591926594_))
                                                (_hd2592026597_
                                                 (##car _e2591926594_)))
                                            (if (gx#stx-pair? _hd2592026597_)
                                                (let ((_e2592226602_
                                                       (gx#stx-e
                                                        _hd2592026597_)))
                                                  (let ((_tl2592426607_
                                                         (##cdr _e2592226602_))
                                                        (_hd2592326605_
                                                         (##car _e2592226602_)))
                                                    (if (gx#identifier?
                                                         _hd2592326605_)
                                                        (if (gx#stx-eq?
                                                             '%#quote
                                                             _hd2592326605_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2592426607_)
                        (let ((_e2592526610_ (gx#stx-e _tl2592426607_)))
                          (let ((_tl2592726615_ (##cdr _e2592526610_))
                                (_hd2592626613_ (##car _e2592526610_)))
                            (if (gx#stx-null? _tl2592726615_)
                                (if (gx#stx-pair? _tl2592126599_)
                                    (let ((_e2592826618_
                                           (gx#stx-e _tl2592126599_)))
                                      (let ((_tl2593026623_
                                             (##cdr _e2592826618_))
                                            (_hd2592926621_
                                             (##car _e2592826618_)))
                                        (if (gx#stx-pair? _hd2592926621_)
                                            (let ((_e2593126626_
                                                   (gx#stx-e _hd2592926621_)))
                                              (let ((_tl2593326631_
                                                     (##cdr _e2593126626_))
                                                    (_hd2593226629_
                                                     (##car _e2593126626_)))
                                                (if (gx#identifier?
                                                     _hd2593226629_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd2593226629_)
                                                        (if (gx#stx-pair?
                                                             _tl2593326631_)
                                                            (let ((_e2593426634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2593326631_)))
                      (let ((_tl2593626639_ (##cdr _e2593426634_))
                            (_hd2593526637_ (##car _e2593426634_)))
                        (if (gx#stx-null? _tl2593626639_)
                            (if (gx#stx-pair? _tl2593026623_)
                                (let ((_e2593726642_
                                       (gx#stx-e _tl2593026623_)))
                                  (let ((_tl2593926647_ (##cdr _e2593726642_))
                                        (_hd2593826645_ (##car _e2593726642_)))
                                    (if (gx#stx-pair? _hd2593826645_)
                                        (let ((_e2594026650_
                                               (gx#stx-e _hd2593826645_)))
                                          (let ((_tl2594226655_
                                                 (##cdr _e2594026650_))
                                                (_hd2594126653_
                                                 (##car _e2594026650_)))
                                            (if (gx#identifier? _hd2594126653_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2594126653_)
                                                    (if (gx#stx-pair?
                                                         _tl2594226655_)
                                                        (let ((_e2594326658_
                                                               (gx#stx-e
                                                                _tl2594226655_)))
                                                          (let ((_tl2594526663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2594326658_))
                        (_hd2594426661_ (##car _e2594326658_)))
                    (if (gx#stx-null? _tl2594526663_)
                        (if (gx#stx-null? _tl2593926647_)
                            (if (gx#stx-null? _tl2589726535_)
                                (___match2888328884_
                                 _e2588926514_
                                 _hd2589026517_
                                 _tl2589126519_
                                 _e2589226522_
                                 _hd2589326525_
                                 _tl2589426527_
                                 _e2589526530_
                                 _hd2589626533_
                                 _tl2589726535_
                                 _e2589826538_
                                 _hd2589926541_
                                 _tl2590026543_
                                 _e2590126546_
                                 _hd2590226549_
                                 _tl2590326551_
                                 _e2590426554_
                                 _hd2590526557_
                                 _tl2590626559_
                                 _e2590726562_
                                 _hd2590826565_
                                 _tl2590926567_
                                 _e2591026570_
                                 _hd2591126573_
                                 _tl2591226575_
                                 _e2591326578_
                                 _hd2591426581_
                                 _tl2591526583_
                                 _e2591626586_
                                 _hd2591726589_
                                 _tl2591826591_
                                 _e2591926594_
                                 _hd2592026597_
                                 _tl2592126599_
                                 _e2592226602_
                                 _hd2592326605_
                                 _tl2592426607_
                                 _e2592526610_
                                 _hd2592626613_
                                 _tl2592726615_
                                 _e2592826618_
                                 _hd2592926621_
                                 _tl2593026623_
                                 _e2593126626_
                                 _hd2593226629_
                                 _tl2593326631_
                                 _e2593426634_
                                 _hd2593526637_
                                 _tl2593626639_
                                 _e2593726642_
                                 _hd2593826645_
                                 _tl2593926647_
                                 _e2594026650_
                                 _hd2594126653_
                                 _tl2594226655_
                                 _e2594326658_
                                 _hd2594426661_
                                 _tl2594526663_)
                                (___match2889528896_
                                 _e2588926514_
                                 _hd2589026517_
                                 _tl2589126519_
                                 _e2589226522_
                                 _hd2589326525_
                                 _tl2589426527_))
                            (___match2889528896_
                             _e2588926514_
                             _hd2589026517_
                             _tl2589126519_
                             _e2589226522_
                             _hd2589326525_
                             _tl2589426527_))
                        (___match2889528896_
                         _e2588926514_
                         _hd2589026517_
                         _tl2589126519_
                         _e2589226522_
                         _hd2589326525_
                         _tl2589426527_))))
                (___match2889528896_
                 _e2588926514_
                 _hd2589026517_
                 _tl2589126519_
                 _e2589226522_
                 _hd2589326525_
                 _tl2589426527_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2889528896_
                                                     _e2588926514_
                                                     _hd2589026517_
                                                     _tl2589126519_
                                                     _e2589226522_
                                                     _hd2589326525_
                                                     _tl2589426527_))
                                                (___match2889528896_
                                                 _e2588926514_
                                                 _hd2589026517_
                                                 _tl2589126519_
                                                 _e2589226522_
                                                 _hd2589326525_
                                                 _tl2589426527_))))
                                        (___match2889528896_
                                         _e2588926514_
                                         _hd2589026517_
                                         _tl2589126519_
                                         _e2589226522_
                                         _hd2589326525_
                                         _tl2589426527_))))
                                (___match2889528896_
                                 _e2588926514_
                                 _hd2589026517_
                                 _tl2589126519_
                                 _e2589226522_
                                 _hd2589326525_
                                 _tl2589426527_))
                            (___match2889528896_
                             _e2588926514_
                             _hd2589026517_
                             _tl2589126519_
                             _e2589226522_
                             _hd2589326525_
                             _tl2589426527_))))
                    (___match2889528896_
                     _e2588926514_
                     _hd2589026517_
                     _tl2589126519_
                     _e2589226522_
                     _hd2589326525_
                     _tl2589426527_))
                (___match2889528896_
                 _e2588926514_
                 _hd2589026517_
                 _tl2589126519_
                 _e2589226522_
                 _hd2589326525_
                 _tl2589426527_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2889528896_
                                                     _e2588926514_
                                                     _hd2589026517_
                                                     _tl2589126519_
                                                     _e2589226522_
                                                     _hd2589326525_
                                                     _tl2589426527_))))
                                            (___match2889528896_
                                             _e2588926514_
                                             _hd2589026517_
                                             _tl2589126519_
                                             _e2589226522_
                                             _hd2589326525_
                                             _tl2589426527_))))
                                    (___match2889528896_
                                     _e2588926514_
                                     _hd2589026517_
                                     _tl2589126519_
                                     _e2589226522_
                                     _hd2589326525_
                                     _tl2589426527_))
                                (___match2889528896_
                                 _e2588926514_
                                 _hd2589026517_
                                 _tl2589126519_
                                 _e2589226522_
                                 _hd2589326525_
                                 _tl2589426527_))))
                        (___match2889528896_
                         _e2588926514_
                         _hd2589026517_
                         _tl2589126519_
                         _e2589226522_
                         _hd2589326525_
                         _tl2589426527_))
                    (___match2889528896_
                     _e2588926514_
                     _hd2589026517_
                     _tl2589126519_
                     _e2589226522_
                     _hd2589326525_
                     _tl2589426527_))
                (___match2889528896_
                 _e2588926514_
                 _hd2589026517_
                 _tl2589126519_
                 _e2589226522_
                 _hd2589326525_
                 _tl2589426527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2889528896_
                                                 _e2588926514_
                                                 _hd2589026517_
                                                 _tl2589126519_
                                                 _e2589226522_
                                                 _hd2589326525_
                                                 _tl2589426527_))))
                                        (___match2889528896_
                                         _e2588926514_
                                         _hd2589026517_
                                         _tl2589126519_
                                         _e2589226522_
                                         _hd2589326525_
                                         _tl2589426527_))
                                    (___match2889528896_
                                     _e2588926514_
                                     _hd2589026517_
                                     _tl2589126519_
                                     _e2589226522_
                                     _hd2589326525_
                                     _tl2589426527_))))
                            (___match2889528896_
                             _e2588926514_
                             _hd2589026517_
                             _tl2589126519_
                             _e2589226522_
                             _hd2589326525_
                             _tl2589426527_))
                        (___match2889528896_
                         _e2588926514_
                         _hd2589026517_
                         _tl2589126519_
                         _e2589226522_
                         _hd2589326525_
                         _tl2589426527_))
                    (___match2889528896_
                     _e2588926514_
                     _hd2589026517_
                     _tl2589126519_
                     _e2589226522_
                     _hd2589326525_
                     _tl2589426527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2889528896_
                                                     _e2588926514_
                                                     _hd2589026517_
                                                     _tl2589126519_
                                                     _e2589226522_
                                                     _hd2589326525_
                                                     _tl2589426527_))))
                                            (___match2889528896_
                                             _e2588926514_
                                             _hd2589026517_
                                             _tl2589126519_
                                             _e2589226522_
                                             _hd2589326525_
                                             _tl2589426527_))
                                        (___match2889528896_
                                         _e2588926514_
                                         _hd2589026517_
                                         _tl2589126519_
                                         _e2589226522_
                                         _hd2589326525_
                                         _tl2589426527_))))
                                (___match2889528896_
                                 _e2588926514_
                                 _hd2589026517_
                                 _tl2589126519_
                                 _e2589226522_
                                 _hd2589326525_
                                 _tl2589426527_))
                            (___match2889528896_
                             _e2588926514_
                             _hd2589026517_
                             _tl2589126519_
                             _e2589226522_
                             _hd2589326525_
                             _tl2589426527_))
                        (___match2889528896_
                         _e2588926514_
                         _hd2589026517_
                         _tl2589126519_
                         _e2589226522_
                         _hd2589326525_
                         _tl2589426527_))))
                (___match2889528896_
                 _e2588926514_
                 _hd2589026517_
                 _tl2589126519_
                 _e2589226522_
                 _hd2589326525_
                 _tl2589426527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2889528896_
                                                 _e2588926514_
                                                 _hd2589026517_
                                                 _tl2589126519_
                                                 _e2589226522_
                                                 _hd2589326525_
                                                 _tl2589426527_))
                                            (___match2889528896_
                                             _e2588926514_
                                             _hd2589026517_
                                             _tl2589126519_
                                             _e2589226522_
                                             _hd2589326525_
                                             _tl2589426527_))
                                        (___match2889528896_
                                         _e2588926514_
                                         _hd2589026517_
                                         _tl2589126519_
                                         _e2589226522_
                                         _hd2589326525_
                                         _tl2589426527_))))
                                (___match2889528896_
                                 _e2588926514_
                                 _hd2589026517_
                                 _tl2589126519_
                                 _e2589226522_
                                 _hd2589326525_
                                 _tl2589426527_))))
                        (___match2889528896_
                         _e2588926514_
                         _hd2589026517_
                         _tl2589126519_
                         _e2589226522_
                         _hd2589326525_
                         _tl2589426527_))))
                 (___match2873128732_
                  (lambda (_e2582926731_
                           _hd2583026734_
                           _tl2583126736_
                           _e2583226739_
                           _hd2583326742_
                           _tl2583426744_
                           ___splice2856228563_
                           _target2583526747_
                           _tl2583726749_)
                    (letrec ((_loop2583826752_
                              (lambda (_hd2583626755_ _arg2584226757_)
                                (if (gx#stx-pair? _hd2583626755_)
                                    (let ((_e2583926760_
                                           (gx#stx-e _hd2583626755_)))
                                      (let ((_lp-tl2584126765_
                                             (##cdr _e2583926760_))
                                            (_lp-hd2584026763_
                                             (##car _e2583926760_)))
                                        (_loop2583826752_
                                         _lp-tl2584126765_
                                         (cons _lp-hd2584026763_
                                               _arg2584226757_))))
                                    (let ((_arg2584326768_
                                           (reverse _arg2584226757_)))
                                      (if (gx#stx-pair? _tl2583426744_)
                                          (let ((_e2584426771_
                                                 (gx#stx-e _tl2583426744_)))
                                            (let ((_tl2584626776_
                                                   (##cdr _e2584426771_))
                                                  (_hd2584526774_
                                                   (##car _e2584426771_)))
                                              (if (gx#stx-pair? _hd2584526774_)
                                                  (let ((_e2584726779_
                                                         (gx#stx-e
                                                          _hd2584526774_)))
                                                    (let ((_tl2584926784_
                                                           (##cdr _e2584726779_))
                                                          (_hd2584826782_
                                                           (##car _e2584726779_)))
                                                      (if (gx#identifier?
                                                           _hd2584826782_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2584826782_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2584926784_)
                          (let ((_e2585026787_ (gx#stx-e _tl2584926784_)))
                            (let ((_tl2585226792_ (##cdr _e2585026787_))
                                  (_hd2585126790_ (##car _e2585026787_)))
                              (if (gx#stx-pair? _hd2585126790_)
                                  (let ((_e2585326795_
                                         (gx#stx-e _hd2585126790_)))
                                    (let ((_tl2585526800_
                                           (##cdr _e2585326795_))
                                          (_hd2585426798_
                                           (##car _e2585326795_)))
                                      (if (gx#identifier? _hd2585426798_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2585426798_)
                                              (if (gx#stx-pair? _tl2585526800_)
                                                  (let ((_e2585626803_
                                                         (gx#stx-e
                                                          _tl2585526800_)))
                                                    (let ((_tl2585826808_
                                                           (##cdr _e2585626803_))
                                                          (_hd2585726806_
                                                           (##car _e2585626803_)))
                                                      (if (gx#stx-null?
                                                           _tl2585826808_)
                                                          (if (gx#stx-pair?
                                                               _tl2585226792_)
                                                              (let ((_e2585926811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2585226792_)))
                        (let ((_tl2586126816_ (##cdr _e2585926811_))
                              (_hd2586026814_ (##car _e2585926811_)))
                          (if (gx#stx-pair? _hd2586026814_)
                              (let ((_e2586226819_ (gx#stx-e _hd2586026814_)))
                                (let ((_tl2586426824_ (##cdr _e2586226819_))
                                      (_hd2586326822_ (##car _e2586226819_)))
                                  (if (gx#identifier? _hd2586326822_)
                                      (if (gx#stx-eq? '%#ref _hd2586326822_)
                                          (if (gx#stx-pair? _tl2586426824_)
                                              (let ((_e2586526827_
                                                     (gx#stx-e
                                                      _tl2586426824_)))
                                                (let ((_tl2586726832_
                                                       (##cdr _e2586526827_))
                                                      (_hd2586626830_
                                                       (##car _e2586526827_)))
                                                  (if (gx#stx-null?
                                                       _tl2586726832_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2586126816_)
                                                          (let ((___splice2856428565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl2586126816_ '0)))
                    (let ((_tl2587026837_
                           (##vector-ref ___splice2856428565_ '1))
                          (_target2586826835_
                           (##vector-ref ___splice2856428565_ '0)))
                      (if (gx#stx-null? _tl2587026837_)
                          (letrec ((_loop2587126840_
                                    (lambda (_hd2586926843_ _xarg2587526845_)
                                      (if (gx#stx-pair? _hd2586926843_)
                                          (let ((_e2587226848_
                                                 (gx#stx-e _hd2586926843_)))
                                            (let ((_lp-tl2587426853_
                                                   (##cdr _e2587226848_))
                                                  (_lp-hd2587326851_
                                                   (##car _e2587226848_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2587326851_)
                                                  (let ((_e2587726856_
                                                         (gx#stx-e
                                                          _lp-hd2587326851_)))
                                                    (let ((_tl2587926861_
                                                           (##cdr _e2587726856_))
                                                          (_hd2587826859_
                                                           (##car _e2587726856_)))
                                                      (if (gx#identifier?
                                                           _hd2587826859_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2587826859_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2587926861_)
                          (let ((_e2588026864_ (gx#stx-e _tl2587926861_)))
                            (let ((_tl2588226869_ (##cdr _e2588026864_))
                                  (_hd2588126867_ (##car _e2588026864_)))
                              (if (gx#stx-null? _tl2588226869_)
                                  (_loop2587126840_
                                   _lp-tl2587426853_
                                   (cons _hd2588126867_ _xarg2587526845_))
                                  (___match2880728808_
                                   _e2582926731_
                                   _hd2583026734_
                                   _tl2583126736_
                                   _e2583226739_
                                   _hd2583326742_
                                   _tl2583426744_
                                   _e2584426771_
                                   _hd2584526774_
                                   _tl2584626776_
                                   _e2584726779_
                                   _hd2584826782_
                                   _tl2584926784_
                                   _e2585026787_
                                   _hd2585126790_
                                   _tl2585226792_
                                   _e2585326795_
                                   _hd2585426798_
                                   _tl2585526800_
                                   _e2585626803_
                                   _hd2585726806_
                                   _tl2585826808_
                                   _e2585926811_
                                   _hd2586026814_
                                   _tl2586126816_
                                   _e2586226819_
                                   _hd2586326822_
                                   _tl2586426824_
                                   _e2586526827_
                                   _hd2586626830_
                                   _tl2586726832_))))
                          (___match2880728808_
                           _e2582926731_
                           _hd2583026734_
                           _tl2583126736_
                           _e2583226739_
                           _hd2583326742_
                           _tl2583426744_
                           _e2584426771_
                           _hd2584526774_
                           _tl2584626776_
                           _e2584726779_
                           _hd2584826782_
                           _tl2584926784_
                           _e2585026787_
                           _hd2585126790_
                           _tl2585226792_
                           _e2585326795_
                           _hd2585426798_
                           _tl2585526800_
                           _e2585626803_
                           _hd2585726806_
                           _tl2585826808_
                           _e2585926811_
                           _hd2586026814_
                           _tl2586126816_
                           _e2586226819_
                           _hd2586326822_
                           _tl2586426824_
                           _e2586526827_
                           _hd2586626830_
                           _tl2586726832_))
                      (___match2880728808_
                       _e2582926731_
                       _hd2583026734_
                       _tl2583126736_
                       _e2583226739_
                       _hd2583326742_
                       _tl2583426744_
                       _e2584426771_
                       _hd2584526774_
                       _tl2584626776_
                       _e2584726779_
                       _hd2584826782_
                       _tl2584926784_
                       _e2585026787_
                       _hd2585126790_
                       _tl2585226792_
                       _e2585326795_
                       _hd2585426798_
                       _tl2585526800_
                       _e2585626803_
                       _hd2585726806_
                       _tl2585826808_
                       _e2585926811_
                       _hd2586026814_
                       _tl2586126816_
                       _e2586226819_
                       _hd2586326822_
                       _tl2586426824_
                       _e2586526827_
                       _hd2586626830_
                       _tl2586726832_))
                  (___match2880728808_
                   _e2582926731_
                   _hd2583026734_
                   _tl2583126736_
                   _e2583226739_
                   _hd2583326742_
                   _tl2583426744_
                   _e2584426771_
                   _hd2584526774_
                   _tl2584626776_
                   _e2584726779_
                   _hd2584826782_
                   _tl2584926784_
                   _e2585026787_
                   _hd2585126790_
                   _tl2585226792_
                   _e2585326795_
                   _hd2585426798_
                   _tl2585526800_
                   _e2585626803_
                   _hd2585726806_
                   _tl2585826808_
                   _e2585926811_
                   _hd2586026814_
                   _tl2586126816_
                   _e2586226819_
                   _hd2586326822_
                   _tl2586426824_
                   _e2586526827_
                   _hd2586626830_
                   _tl2586726832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2880728808_
                                                   _e2582926731_
                                                   _hd2583026734_
                                                   _tl2583126736_
                                                   _e2583226739_
                                                   _hd2583326742_
                                                   _tl2583426744_
                                                   _e2584426771_
                                                   _hd2584526774_
                                                   _tl2584626776_
                                                   _e2584726779_
                                                   _hd2584826782_
                                                   _tl2584926784_
                                                   _e2585026787_
                                                   _hd2585126790_
                                                   _tl2585226792_
                                                   _e2585326795_
                                                   _hd2585426798_
                                                   _tl2585526800_
                                                   _e2585626803_
                                                   _hd2585726806_
                                                   _tl2585826808_
                                                   _e2585926811_
                                                   _hd2586026814_
                                                   _tl2586126816_
                                                   _e2586226819_
                                                   _hd2586326822_
                                                   _tl2586426824_
                                                   _e2586526827_
                                                   _hd2586626830_
                                                   _tl2586726832_))))
                                          (let ((_xarg2587626872_
                                                 (reverse _xarg2587526845_)))
                                            (if (gx#stx-null? _tl2584626776_)
                                                (let ((_L26875_
                                                       _xarg2587626872_)
                                                      (_L26876_ _hd2586626830_)
                                                      (_L26877_ _hd2585726806_)
                                                      (_L26878_
                                                       _arg2584326768_))
                                                  (if (and (gx#identifier-list?
                                                            (foldr1 (lambda (_g2691526918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2691626920_)
                              (cons _g2691526918_ _g2691626920_))
                            '()
                            _L26878_))
                   (gxc#runtime-identifier=? _L26877_ 'make-struct-instance)
                   (fx= (length (foldr1 (lambda (_g2692226925_ _g2692326927_)
                                          (cons _g2692226925_ _g2692326927_))
                                        '()
                                        _L26878_))
                        (length (foldr1 (lambda (_g2692926932_ _g2693026934_)
                                          (cons _g2692926932_ _g2693026934_))
                                        '()
                                        _L26875_)))
                   (andmap2 gx#free-identifier=?
                            (foldr1 (lambda (_g2693626939_ _g2693726941_)
                                      (cons _g2693626939_ _g2693726941_))
                                    '()
                                    _L26878_)
                            (foldr1 (lambda (_g2694326946_ _g2694426948_)
                                      (cons _g2694326946_ _g2694426948_))
                                    '()
                                    _L26875_)))
              (___kont2856028561_ _L26875_ _L26876_ _L26877_ _L26878_)
              (___match2880728808_
               _e2582926731_
               _hd2583026734_
               _tl2583126736_
               _e2583226739_
               _hd2583326742_
               _tl2583426744_
               _e2584426771_
               _hd2584526774_
               _tl2584626776_
               _e2584726779_
               _hd2584826782_
               _tl2584926784_
               _e2585026787_
               _hd2585126790_
               _tl2585226792_
               _e2585326795_
               _hd2585426798_
               _tl2585526800_
               _e2585626803_
               _hd2585726806_
               _tl2585826808_
               _e2585926811_
               _hd2586026814_
               _tl2586126816_
               _e2586226819_
               _hd2586326822_
               _tl2586426824_
               _e2586526827_
               _hd2586626830_
               _tl2586726832_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2880728808_
                                                 _e2582926731_
                                                 _hd2583026734_
                                                 _tl2583126736_
                                                 _e2583226739_
                                                 _hd2583326742_
                                                 _tl2583426744_
                                                 _e2584426771_
                                                 _hd2584526774_
                                                 _tl2584626776_
                                                 _e2584726779_
                                                 _hd2584826782_
                                                 _tl2584926784_
                                                 _e2585026787_
                                                 _hd2585126790_
                                                 _tl2585226792_
                                                 _e2585326795_
                                                 _hd2585426798_
                                                 _tl2585526800_
                                                 _e2585626803_
                                                 _hd2585726806_
                                                 _tl2585826808_
                                                 _e2585926811_
                                                 _hd2586026814_
                                                 _tl2586126816_
                                                 _e2586226819_
                                                 _hd2586326822_
                                                 _tl2586426824_
                                                 _e2586526827_
                                                 _hd2586626830_
                                                 _tl2586726832_)))))))
                            (_loop2587126840_ _target2586826835_ '()))
                          (___match2880728808_
                           _e2582926731_
                           _hd2583026734_
                           _tl2583126736_
                           _e2583226739_
                           _hd2583326742_
                           _tl2583426744_
                           _e2584426771_
                           _hd2584526774_
                           _tl2584626776_
                           _e2584726779_
                           _hd2584826782_
                           _tl2584926784_
                           _e2585026787_
                           _hd2585126790_
                           _tl2585226792_
                           _e2585326795_
                           _hd2585426798_
                           _tl2585526800_
                           _e2585626803_
                           _hd2585726806_
                           _tl2585826808_
                           _e2585926811_
                           _hd2586026814_
                           _tl2586126816_
                           _e2586226819_
                           _hd2586326822_
                           _tl2586426824_
                           _e2586526827_
                           _hd2586626830_
                           _tl2586726832_))))
                  (___match2880728808_
                   _e2582926731_
                   _hd2583026734_
                   _tl2583126736_
                   _e2583226739_
                   _hd2583326742_
                   _tl2583426744_
                   _e2584426771_
                   _hd2584526774_
                   _tl2584626776_
                   _e2584726779_
                   _hd2584826782_
                   _tl2584926784_
                   _e2585026787_
                   _hd2585126790_
                   _tl2585226792_
                   _e2585326795_
                   _hd2585426798_
                   _tl2585526800_
                   _e2585626803_
                   _hd2585726806_
                   _tl2585826808_
                   _e2585926811_
                   _hd2586026814_
                   _tl2586126816_
                   _e2586226819_
                   _hd2586326822_
                   _tl2586426824_
                   _e2586526827_
                   _hd2586626830_
                   _tl2586726832_))
              (___match2889528896_
               _e2582926731_
               _hd2583026734_
               _tl2583126736_
               _e2583226739_
               _hd2583326742_
               _tl2583426744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2889528896_
                                               _e2582926731_
                                               _hd2583026734_
                                               _tl2583126736_
                                               _e2583226739_
                                               _hd2583326742_
                                               _tl2583426744_))
                                          (___match2889528896_
                                           _e2582926731_
                                           _hd2583026734_
                                           _tl2583126736_
                                           _e2583226739_
                                           _hd2583326742_
                                           _tl2583426744_))
                                      (___match2889528896_
                                       _e2582926731_
                                       _hd2583026734_
                                       _tl2583126736_
                                       _e2583226739_
                                       _hd2583326742_
                                       _tl2583426744_))))
                              (___match2889528896_
                               _e2582926731_
                               _hd2583026734_
                               _tl2583126736_
                               _e2583226739_
                               _hd2583326742_
                               _tl2583426744_))))
                      (___match2889528896_
                       _e2582926731_
                       _hd2583026734_
                       _tl2583126736_
                       _e2583226739_
                       _hd2583326742_
                       _tl2583426744_))
                  (___match2889528896_
                   _e2582926731_
                   _hd2583026734_
                   _tl2583126736_
                   _e2583226739_
                   _hd2583326742_
                   _tl2583426744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2889528896_
                                                   _e2582926731_
                                                   _hd2583026734_
                                                   _tl2583126736_
                                                   _e2583226739_
                                                   _hd2583326742_
                                                   _tl2583426744_))
                                              (___match2889528896_
                                               _e2582926731_
                                               _hd2583026734_
                                               _tl2583126736_
                                               _e2583226739_
                                               _hd2583326742_
                                               _tl2583426744_))
                                          (___match2889528896_
                                           _e2582926731_
                                           _hd2583026734_
                                           _tl2583126736_
                                           _e2583226739_
                                           _hd2583326742_
                                           _tl2583426744_))))
                                  (___match2889528896_
                                   _e2582926731_
                                   _hd2583026734_
                                   _tl2583126736_
                                   _e2583226739_
                                   _hd2583326742_
                                   _tl2583426744_))))
                          (___match2889528896_
                           _e2582926731_
                           _hd2583026734_
                           _tl2583126736_
                           _e2583226739_
                           _hd2583326742_
                           _tl2583426744_))
                      (___match2889528896_
                       _e2582926731_
                       _hd2583026734_
                       _tl2583126736_
                       _e2583226739_
                       _hd2583326742_
                       _tl2583426744_))
                  (___match2889528896_
                   _e2582926731_
                   _hd2583026734_
                   _tl2583126736_
                   _e2583226739_
                   _hd2583326742_
                   _tl2583426744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2889528896_
                                                   _e2582926731_
                                                   _hd2583026734_
                                                   _tl2583126736_
                                                   _e2583226739_
                                                   _hd2583326742_
                                                   _tl2583426744_))))
                                          (___match2889528896_
                                           _e2582926731_
                                           _hd2583026734_
                                           _tl2583126736_
                                           _e2583226739_
                                           _hd2583326742_
                                           _tl2583426744_)))))))
                      (_loop2583826752_ _target2583526747_ '()))))
                 (___match2872328724_
                  (lambda (_e2582926731_
                           _hd2583026734_
                           _tl2583126736_
                           _e2583226739_
                           _hd2583326742_
                           _tl2583426744_)
                    (if (gx#stx-pair/null? _hd2583326742_)
                        (let ((___splice2856228563_
                               (gx#syntax-split-splice _hd2583326742_ '0)))
                          (let ((_tl2583726749_
                                 (##vector-ref ___splice2856228563_ '1))
                                (_target2583526747_
                                 (##vector-ref ___splice2856228563_ '0)))
                            (if (gx#stx-null? _tl2583726749_)
                                (___match2873128732_
                                 _e2582926731_
                                 _hd2583026734_
                                 _tl2583126736_
                                 _e2583226739_
                                 _hd2583326742_
                                 _tl2583426744_
                                 ___splice2856228563_
                                 _target2583526747_
                                 _tl2583726749_)
                                (___match2874328744_
                                 _e2582926731_
                                 _hd2583026734_
                                 _tl2583126736_
                                 _e2583226739_
                                 _hd2583326742_
                                 _tl2583426744_))))
                        (___match2874328744_
                         _e2582926731_
                         _hd2583026734_
                         _tl2583126736_
                         _e2583226739_
                         _hd2583326742_
                         _tl2583426744_))))
                 (___match2871128712_
                  (lambda (_e2577726961_
                           _hd2577826964_
                           _tl2577926966_
                           _e2578026969_
                           _hd2578126972_
                           _tl2578226974_
                           _e2578326977_
                           _hd2578426980_
                           _tl2578526982_
                           _e2578626985_
                           _hd2578726988_
                           _tl2578826990_
                           _e2578926993_
                           _hd2579026996_
                           _tl2579126998_
                           _e2579227001_
                           _hd2579327004_
                           _tl2579427006_
                           _e2579527009_
                           _hd2579627012_
                           _tl2579727014_
                           _e2579827017_
                           _hd2579927020_
                           _tl2580027022_
                           _e2580127025_
                           _hd2580227028_
                           _tl2580327030_
                           _e2580427033_
                           _hd2580527036_
                           _tl2580627038_
                           _e2580727041_
                           _hd2580827044_
                           _tl2580927046_
                           _e2581027049_
                           _hd2581127052_
                           _tl2581227054_
                           _e2581327057_
                           _hd2581427060_
                           _tl2581527062_
                           _e2581627065_
                           _hd2581727068_
                           _tl2581827070_
                           _e2581927073_
                           _hd2582027076_
                           _tl2582127078_
                           _e2582227081_
                           _hd2582327084_
                           _tl2582427086_)
                    (let ((_L27089_ _hd2582327084_)
                          (_L27090_ _hd2581427060_)
                          (_L27091_ _hd2580527036_)
                          (_L27092_ _hd2579627012_)
                          (_L27093_ _hd2578126972_))
                      (if (and (gx#identifier? _L27093_)
                               (gxc#runtime-identifier=? _L27092_ 'apply)
                               (gxc#runtime-identifier=?
                                _L27091_
                                'make-struct-instance)
                               (gx#free-identifier=? _L27093_ _L27089_))
                          (___kont2855828559_
                           _L27089_
                           _L27090_
                           _L27091_
                           _L27092_
                           _L27093_)
                          (___match2872328724_
                           _e2577726961_
                           _hd2577826964_
                           _tl2577926966_
                           _e2578026969_
                           _hd2578126972_
                           _tl2578226974_)))))
                 (___match2858928590_
                  (lambda (_e2577726961_ _hd2577826964_ _tl2577926966_)
                    (if (gx#stx-pair? _tl2577926966_)
                        (let ((_e2578026969_ (gx#stx-e _tl2577926966_)))
                          (let ((_tl2578226974_ (##cdr _e2578026969_))
                                (_hd2578126972_ (##car _e2578026969_)))
                            (if (gx#stx-pair? _tl2578226974_)
                                (let ((_e2578326977_
                                       (gx#stx-e _tl2578226974_)))
                                  (let ((_tl2578526982_ (##cdr _e2578326977_))
                                        (_hd2578426980_ (##car _e2578326977_)))
                                    (if (gx#stx-pair? _hd2578426980_)
                                        (let ((_e2578626985_
                                               (gx#stx-e _hd2578426980_)))
                                          (let ((_tl2578826990_
                                                 (##cdr _e2578626985_))
                                                (_hd2578726988_
                                                 (##car _e2578626985_)))
                                            (if (gx#identifier? _hd2578726988_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2578726988_)
                                                    (if (gx#stx-pair?
                                                         _tl2578826990_)
                                                        (let ((_e2578926993_
                                                               (gx#stx-e
                                                                _tl2578826990_)))
                                                          (let ((_tl2579126998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2578926993_))
                        (_hd2579026996_ (##car _e2578926993_)))
                    (if (gx#stx-pair? _hd2579026996_)
                        (let ((_e2579227001_ (gx#stx-e _hd2579026996_)))
                          (let ((_tl2579427006_ (##cdr _e2579227001_))
                                (_hd2579327004_ (##car _e2579227001_)))
                            (if (gx#identifier? _hd2579327004_)
                                (if (gx#stx-eq? '%#ref _hd2579327004_)
                                    (if (gx#stx-pair? _tl2579427006_)
                                        (let ((_e2579527009_
                                               (gx#stx-e _tl2579427006_)))
                                          (let ((_tl2579727014_
                                                 (##cdr _e2579527009_))
                                                (_hd2579627012_
                                                 (##car _e2579527009_)))
                                            (if (gx#stx-null? _tl2579727014_)
                                                (if (gx#stx-pair?
                                                     _tl2579126998_)
                                                    (let ((_e2579827017_
                                                           (gx#stx-e
                                                            _tl2579126998_)))
                                                      (let ((_tl2580027022_
                                                             (##cdr _e2579827017_))
                                                            (_hd2579927020_
                                                             (##car _e2579827017_)))
                                                        (if (gx#stx-pair?
                                                             _hd2579927020_)
                                                            (let ((_e2580127025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2579927020_)))
                      (let ((_tl2580327030_ (##cdr _e2580127025_))
                            (_hd2580227028_ (##car _e2580127025_)))
                        (if (gx#identifier? _hd2580227028_)
                            (if (gx#stx-eq? '%#ref _hd2580227028_)
                                (if (gx#stx-pair? _tl2580327030_)
                                    (let ((_e2580427033_
                                           (gx#stx-e _tl2580327030_)))
                                      (let ((_tl2580627038_
                                             (##cdr _e2580427033_))
                                            (_hd2580527036_
                                             (##car _e2580427033_)))
                                        (if (gx#stx-null? _tl2580627038_)
                                            (if (gx#stx-pair? _tl2580027022_)
                                                (let ((_e2580727041_
                                                       (gx#stx-e
                                                        _tl2580027022_)))
                                                  (let ((_tl2580927046_
                                                         (##cdr _e2580727041_))
                                                        (_hd2580827044_
                                                         (##car _e2580727041_)))
                                                    (if (gx#stx-pair?
                                                         _hd2580827044_)
                                                        (let ((_e2581027049_
                                                               (gx#stx-e
                                                                _hd2580827044_)))
                                                          (let ((_tl2581227054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2581027049_))
                        (_hd2581127052_ (##car _e2581027049_)))
                    (if (gx#identifier? _hd2581127052_)
                        (if (gx#stx-eq? '%#ref _hd2581127052_)
                            (if (gx#stx-pair? _tl2581227054_)
                                (let ((_e2581327057_
                                       (gx#stx-e _tl2581227054_)))
                                  (let ((_tl2581527062_ (##cdr _e2581327057_))
                                        (_hd2581427060_ (##car _e2581327057_)))
                                    (if (gx#stx-null? _tl2581527062_)
                                        (if (gx#stx-pair? _tl2580927046_)
                                            (let ((_e2581627065_
                                                   (gx#stx-e _tl2580927046_)))
                                              (let ((_tl2581827070_
                                                     (##cdr _e2581627065_))
                                                    (_hd2581727068_
                                                     (##car _e2581627065_)))
                                                (if (gx#stx-pair?
                                                     _hd2581727068_)
                                                    (let ((_e2581927073_
                                                           (gx#stx-e
                                                            _hd2581727068_)))
                                                      (let ((_tl2582127078_
                                                             (##cdr _e2581927073_))
                                                            (_hd2582027076_
                                                             (##car _e2581927073_)))
                                                        (if (gx#identifier?
                                                             _hd2582027076_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2582027076_)
                        (if (gx#stx-pair? _tl2582127078_)
                            (let ((_e2582227081_ (gx#stx-e _tl2582127078_)))
                              (let ((_tl2582427086_ (##cdr _e2582227081_))
                                    (_hd2582327084_ (##car _e2582227081_)))
                                (if (gx#stx-null? _tl2582427086_)
                                    (if (gx#stx-null? _tl2581827070_)
                                        (if (gx#stx-null? _tl2578526982_)
                                            (___match2871128712_
                                             _e2577726961_
                                             _hd2577826964_
                                             _tl2577926966_
                                             _e2578026969_
                                             _hd2578126972_
                                             _tl2578226974_
                                             _e2578326977_
                                             _hd2578426980_
                                             _tl2578526982_
                                             _e2578626985_
                                             _hd2578726988_
                                             _tl2578826990_
                                             _e2578926993_
                                             _hd2579026996_
                                             _tl2579126998_
                                             _e2579227001_
                                             _hd2579327004_
                                             _tl2579427006_
                                             _e2579527009_
                                             _hd2579627012_
                                             _tl2579727014_
                                             _e2579827017_
                                             _hd2579927020_
                                             _tl2580027022_
                                             _e2580127025_
                                             _hd2580227028_
                                             _tl2580327030_
                                             _e2580427033_
                                             _hd2580527036_
                                             _tl2580627038_
                                             _e2580727041_
                                             _hd2580827044_
                                             _tl2580927046_
                                             _e2581027049_
                                             _hd2581127052_
                                             _tl2581227054_
                                             _e2581327057_
                                             _hd2581427060_
                                             _tl2581527062_
                                             _e2581627065_
                                             _hd2581727068_
                                             _tl2581827070_
                                             _e2581927073_
                                             _hd2582027076_
                                             _tl2582127078_
                                             _e2582227081_
                                             _hd2582327084_
                                             _tl2582427086_)
                                            (___match2872328724_
                                             _e2577726961_
                                             _hd2577826964_
                                             _tl2577926966_
                                             _e2578026969_
                                             _hd2578126972_
                                             _tl2578226974_))
                                        (___match2872328724_
                                         _e2577726961_
                                         _hd2577826964_
                                         _tl2577926966_
                                         _e2578026969_
                                         _hd2578126972_
                                         _tl2578226974_))
                                    (___match2872328724_
                                     _e2577726961_
                                     _hd2577826964_
                                     _tl2577926966_
                                     _e2578026969_
                                     _hd2578126972_
                                     _tl2578226974_))))
                            (___match2872328724_
                             _e2577726961_
                             _hd2577826964_
                             _tl2577926966_
                             _e2578026969_
                             _hd2578126972_
                             _tl2578226974_))
                        (___match2872328724_
                         _e2577726961_
                         _hd2577826964_
                         _tl2577926966_
                         _e2578026969_
                         _hd2578126972_
                         _tl2578226974_))
                    (___match2872328724_
                     _e2577726961_
                     _hd2577826964_
                     _tl2577926966_
                     _e2578026969_
                     _hd2578126972_
                     _tl2578226974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2872328724_
                                                     _e2577726961_
                                                     _hd2577826964_
                                                     _tl2577926966_
                                                     _e2578026969_
                                                     _hd2578126972_
                                                     _tl2578226974_))))
                                            (___match2872328724_
                                             _e2577726961_
                                             _hd2577826964_
                                             _tl2577926966_
                                             _e2578026969_
                                             _hd2578126972_
                                             _tl2578226974_))
                                        (___match2872328724_
                                         _e2577726961_
                                         _hd2577826964_
                                         _tl2577926966_
                                         _e2578026969_
                                         _hd2578126972_
                                         _tl2578226974_))))
                                (___match2872328724_
                                 _e2577726961_
                                 _hd2577826964_
                                 _tl2577926966_
                                 _e2578026969_
                                 _hd2578126972_
                                 _tl2578226974_))
                            (___match2872328724_
                             _e2577726961_
                             _hd2577826964_
                             _tl2577926966_
                             _e2578026969_
                             _hd2578126972_
                             _tl2578226974_))
                        (___match2872328724_
                         _e2577726961_
                         _hd2577826964_
                         _tl2577926966_
                         _e2578026969_
                         _hd2578126972_
                         _tl2578226974_))))
                (___match2872328724_
                 _e2577726961_
                 _hd2577826964_
                 _tl2577926966_
                 _e2578026969_
                 _hd2578126972_
                 _tl2578226974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2872328724_
                                                 _e2577726961_
                                                 _hd2577826964_
                                                 _tl2577926966_
                                                 _e2578026969_
                                                 _hd2578126972_
                                                 _tl2578226974_))
                                            (___match2872328724_
                                             _e2577726961_
                                             _hd2577826964_
                                             _tl2577926966_
                                             _e2578026969_
                                             _hd2578126972_
                                             _tl2578226974_))))
                                    (___match2872328724_
                                     _e2577726961_
                                     _hd2577826964_
                                     _tl2577926966_
                                     _e2578026969_
                                     _hd2578126972_
                                     _tl2578226974_))
                                (___match2872328724_
                                 _e2577726961_
                                 _hd2577826964_
                                 _tl2577926966_
                                 _e2578026969_
                                 _hd2578126972_
                                 _tl2578226974_))
                            (___match2872328724_
                             _e2577726961_
                             _hd2577826964_
                             _tl2577926966_
                             _e2578026969_
                             _hd2578126972_
                             _tl2578226974_))))
                    (___match2872328724_
                     _e2577726961_
                     _hd2577826964_
                     _tl2577926966_
                     _e2578026969_
                     _hd2578126972_
                     _tl2578226974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2872328724_
                                                     _e2577726961_
                                                     _hd2577826964_
                                                     _tl2577926966_
                                                     _e2578026969_
                                                     _hd2578126972_
                                                     _tl2578226974_))
                                                (___match2872328724_
                                                 _e2577726961_
                                                 _hd2577826964_
                                                 _tl2577926966_
                                                 _e2578026969_
                                                 _hd2578126972_
                                                 _tl2578226974_))))
                                        (___match2872328724_
                                         _e2577726961_
                                         _hd2577826964_
                                         _tl2577926966_
                                         _e2578026969_
                                         _hd2578126972_
                                         _tl2578226974_))
                                    (___match2872328724_
                                     _e2577726961_
                                     _hd2577826964_
                                     _tl2577926966_
                                     _e2578026969_
                                     _hd2578126972_
                                     _tl2578226974_))
                                (___match2872328724_
                                 _e2577726961_
                                 _hd2577826964_
                                 _tl2577926966_
                                 _e2578026969_
                                 _hd2578126972_
                                 _tl2578226974_))))
                        (___match2872328724_
                         _e2577726961_
                         _hd2577826964_
                         _tl2577926966_
                         _e2578026969_
                         _hd2578126972_
                         _tl2578226974_))))
                (___match2872328724_
                 _e2577726961_
                 _hd2577826964_
                 _tl2577926966_
                 _e2578026969_
                 _hd2578126972_
                 _tl2578226974_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2872328724_
                                                     _e2577726961_
                                                     _hd2577826964_
                                                     _tl2577926966_
                                                     _e2578026969_
                                                     _hd2578126972_
                                                     _tl2578226974_))
                                                (___match2872328724_
                                                 _e2577726961_
                                                 _hd2577826964_
                                                 _tl2577926966_
                                                 _e2578026969_
                                                 _hd2578126972_
                                                 _tl2578226974_))))
                                        (___match2872328724_
                                         _e2577726961_
                                         _hd2577826964_
                                         _tl2577926966_
                                         _e2578026969_
                                         _hd2578126972_
                                         _tl2578226974_))))
                                (___match2872328724_
                                 _e2577726961_
                                 _hd2577826964_
                                 _tl2577926966_
                                 _e2578026969_
                                 _hd2578126972_
                                 _tl2578226974_))))
                        (___match2902929030_
                         _e2577726961_
                         _hd2577826964_
                         _tl2577926966_)))))
            (if (gx#stx-pair? ___stx2855428555_)
                (let ((_e2576927146_ (gx#stx-e ___stx2855428555_)))
                  (let ((_tl2577127151_ (##cdr _e2576927146_))
                        (_hd2577027149_ (##car _e2576927146_)))
                    (if (gxc#current-compile-type-closure)
                        (let ((_L27154_ _tl2577127151_))
                          (___kont2855628557_ _L27154_))
                        (___match2858928590_
                         _e2576927146_
                         _hd2577027149_
                         _tl2577127151_))))
                (_g2576626073_)))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx25713_)
      (letrec ((_clause-e25715_
                (lambda (_form25756_)
                  (let ((__obj30800 (make-object gxc#!lambda::t '5)))
                    (gxc#!lambda:::init!__0
                     __obj30800
                     'case-lambda-clause
                     (gxc#lambda-form-arity _form25756_)
                     (if (not (gxc#current-compile-type-closure))
                         (if (gxc#dispatch-lambda-form? _form25756_)
                             (gxc#dispatch-lambda-form-delegate _form25756_)
                             '#f)
                         '#f))
                    __obj30800))))
        (let* ((_g2571725727_
                (lambda (_g2571825724_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2571825724_)))
               (_g2571625753_
                (lambda (_g2571825730_)
                  (if (gx#stx-pair? _g2571825730_)
                      (let ((_e2572025732_ (gx#stx-e _g2571825730_)))
                        (let ((_hd2572125735_ (##car _e2572025732_))
                              (_tl2572225737_ (##cdr _e2572025732_)))
                          ((lambda (_L25740_)
                             (let ((_clauses25751_
                                    (map _clause-e25715_ _L25740_)))
                               (##structure
                                gxc#!case-lambda::t
                                'case-lambda
                                _clauses25751_)))
                           _tl2572225737_)))
                      (_g2571725727_ _g2571825730_)))))
          (_g2571625753_ _stx25713_)))))
  (define gxc#basic-expression-type-let-values%
    (lambda (_stx25645_)
      (let* ((_g2564725664_
              (lambda (_g2564825661_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2564825661_)))
             (_g2564625710_
              (lambda (_g2564825667_)
                (if (gx#stx-pair? _g2564825667_)
                    (let ((_e2565125669_ (gx#stx-e _g2564825667_)))
                      (let ((_hd2565225672_ (##car _e2565125669_))
                            (_tl2565325674_ (##cdr _e2565125669_)))
                        (if (gx#stx-pair? _tl2565325674_)
                            (let ((_e2565425677_ (gx#stx-e _tl2565325674_)))
                              (let ((_hd2565525680_ (##car _e2565425677_))
                                    (_tl2565625682_ (##cdr _e2565425677_)))
                                (if (gx#stx-pair? _tl2565625682_)
                                    (let ((_e2565725685_
                                           (gx#stx-e _tl2565625682_)))
                                      (let ((_hd2565825688_
                                             (##car _e2565725685_))
                                            (_tl2565925690_
                                             (##cdr _e2565725685_)))
                                        (if (gx#stx-null? _tl2565925690_)
                                            ((lambda (_L25693_ _L25694_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (gxc#compile-e _L25693_))
                                                gxc#current-compile-type-closure
                                                '#t))
                                             _hd2565825688_
                                             _hd2565525680_)
                                            (_g2564725664_ _g2564825667_))))
                                    (_g2564725664_ _g2564825667_))))
                            (_g2564725664_ _g2564825667_))))
                    (_g2564725664_ _g2564825667_)))))
        (_g2564625710_ _stx25645_))))
  (define gxc#basic-expression-type-builtin (make-table 'test: eq?))
  (define gxc#basic-expression-type-call%
    (lambda (_stx25550_)
      (let* ((___stx2903829039_ _stx25550_)
             (_g2555325573_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2903829039_))))
        (let ((___kont2904029041_
               (lambda (_L25617_ _L25618_)
                 (let ((_type-e2563525637_
                        (table-ref
                         gxc#basic-expression-type-builtin
                         (gxc#identifier-symbol _L25618_)
                         '#f)))
                   (if _type-e2563525637_
                       (let ((_type-e25640_ _type-e2563525637_))
                         (_type-e25640_ _stx25550_ _L25617_))
                       '#f))))
              (___kont2904229043_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2903829039_)
              (let ((_e2555725585_ (gx#stx-e ___stx2903829039_)))
                (let ((_tl2555925590_ (##cdr _e2555725585_))
                      (_hd2555825588_ (##car _e2555725585_)))
                  (if (gx#stx-pair? _tl2555925590_)
                      (let ((_e2556025593_ (gx#stx-e _tl2555925590_)))
                        (let ((_tl2556225598_ (##cdr _e2556025593_))
                              (_hd2556125596_ (##car _e2556025593_)))
                          (if (gx#stx-pair? _hd2556125596_)
                              (let ((_e2556325601_ (gx#stx-e _hd2556125596_)))
                                (let ((_tl2556525606_ (##cdr _e2556325601_))
                                      (_hd2556425604_ (##car _e2556325601_)))
                                  (if (gx#identifier? _hd2556425604_)
                                      (if (gx#stx-eq? '%#ref _hd2556425604_)
                                          (if (gx#stx-pair? _tl2556525606_)
                                              (let ((_e2556625609_
                                                     (gx#stx-e
                                                      _tl2556525606_)))
                                                (let ((_tl2556825614_
                                                       (##cdr _e2556625609_))
                                                      (_hd2556725612_
                                                       (##car _e2556625609_)))
                                                  (if (gx#stx-null?
                                                       _tl2556825614_)
                                                      (___kont2904029041_
                                                       _tl2556225598_
                                                       _hd2556725612_)
                                                      (___kont2904229043_))))
                                              (___kont2904229043_))
                                          (___kont2904229043_))
                                      (___kont2904229043_))))
                              (___kont2904229043_))))
                      (___kont2904229043_))))
              (___kont2904229043_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx25030_ _args25031_)
      (let* ((___stx2907629077_ _args25031_)
             (_g2503525149_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2907629077_))))
        (let ((___kont2907829079_
               (lambda (_L25499_ _L25500_ _L25501_ _L25502_ _L25503_)
                 (let ((__obj30801 (make-object gxc#!struct-type::t '7)))
                   (gxc#!struct-type:::init!
                    __obj30801
                    (gx#stx-e _L25503_)
                    '#f
                    (gx#stx-e _L25502_)
                    '0
                    (gx#stx-e _L25499_)
                    (gx#stx-e _L25500_))
                   __obj30801)))
              (___kont2908029081_
               (lambda (_L25289_ _L25290_ _L25291_ _L25292_ _L25293_ _L25294_)
                 (let* ((_super-t25340_
                         (if (gx#stx-e _L25293_)
                             (gxc#identifier-symbol _L25293_)
                             '#f))
                        (_super-type25342_
                         (if _super-t25340_
                             (gxc#optimizer-resolve-type _super-t25340_)
                             '#f)))
                   (if (and _super-type25342_
                            (not (##structure-instance-of?
                                  _super-type25342_
                                  'gxc#!struct-type::t)))
                       (gxc#raise-compile-error
                        '"Illegal struct-type construction; invalid super type"
                        _stx25030_
                        _L25293_)
                       '#!void)
                   (let ((_fields25358_ (gx#stx-e _L25292_))
                         (_xfields25359_
                          (if _super-type25342_
                              (let ((_super-fields2534425347_
                                     (##structure-ref
                                      _super-type25342_
                                      '3
                                      gxc#!struct-type::t
                                      '#f))
                                    (_super-xfields2534525349_
                                     (##structure-ref
                                      _super-type25342_
                                      '4
                                      gxc#!struct-type::t
                                      '#f)))
                                (if _super-fields2534425347_
                                    (if _super-xfields2534525349_
                                        (let ((_super-fields25352_
                                               _super-fields2534425347_)
                                              (_super-xfields25353_
                                               _super-xfields2534525349_))
                                          (fx+ _super-fields25352_
                                               _super-xfields25353_))
                                        '#f)
                                    '#f))
                              '#f))
                         (_plist25360_ (gx#stx-e _L25290_))
                         (_ctor25361_
                          (let ((_$e25355_ (gx#stx-e _L25289_)))
                            (if _$e25355_
                                (values _$e25355_)
                                (if _super-type25342_
                                    (##structure-ref
                                     _super-type25342_
                                     '5
                                     gxc#!struct-type::t
                                     '#f)
                                    (if _super-t25340_ '#!void '#f))))))
                     (let ((__obj30802 (make-object gxc#!struct-type::t '7)))
                       (gxc#!struct-type:::init!
                        __obj30802
                        (gx#stx-e _L25294_)
                        _super-t25340_
                        _fields25358_
                        _xfields25359_
                        _ctor25361_
                        _plist25360_)
                       __obj30802)))))
              (___kont2908229083_
               (lambda ()
                 (gxc#verbose
                  '"make-struct-type: can't infer type "
                  (gx#syntax->datum _stx25030_))
                 '#f)))
          (if (gx#stx-pair? ___stx2907629077_)
              (let ((_e2504225368_ (gx#stx-e ___stx2907629077_)))
                (let ((_tl2504425373_ (##cdr _e2504225368_))
                      (_hd2504325371_ (##car _e2504225368_)))
                  (if (gx#stx-pair? _hd2504325371_)
                      (let ((_e2504525376_ (gx#stx-e _hd2504325371_)))
                        (let ((_tl2504725381_ (##cdr _e2504525376_))
                              (_hd2504625379_ (##car _e2504525376_)))
                          (if (gx#identifier? _hd2504625379_)
                              (if (gx#stx-eq? '%#quote _hd2504625379_)
                                  (if (gx#stx-pair? _tl2504725381_)
                                      (let ((_e2504825384_
                                             (gx#stx-e _tl2504725381_)))
                                        (let ((_tl2505025389_
                                               (##cdr _e2504825384_))
                                              (_hd2504925387_
                                               (##car _e2504825384_)))
                                          (if (gx#stx-null? _tl2505025389_)
                                              (if (gx#stx-pair? _tl2504425373_)
                                                  (let ((_e2505125392_
                                                         (gx#stx-e
                                                          _tl2504425373_)))
                                                    (let ((_tl2505325397_
                                                           (##cdr _e2505125392_))
                                                          (_hd2505225395_
                                                           (##car _e2505125392_)))
                                                      (if (gx#stx-pair?
                                                           _hd2505225395_)
                                                          (let ((_e2505425400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2505225395_)))
                    (let ((_tl2505625405_ (##cdr _e2505425400_))
                          (_hd2505525403_ (##car _e2505425400_)))
                      (if (gx#identifier? _hd2505525403_)
                          (if (gx#stx-eq? '%#quote _hd2505525403_)
                              (if (gx#stx-pair? _tl2505625405_)
                                  (let ((_e2505725408_
                                         (gx#stx-e _tl2505625405_)))
                                    (let ((_tl2505925413_
                                           (##cdr _e2505725408_))
                                          (_hd2505825411_
                                           (##car _e2505725408_)))
                                      (if (gx#stx-datum? _hd2505825411_)
                                          (let ((_e2506025416_
                                                 (gx#stx-e _hd2505825411_)))
                                            (if (equal? _e2506025416_ '#f)
                                                (if (gx#stx-null?
                                                     _tl2505925413_)
                                                    (if (gx#stx-pair?
                                                         _tl2505325397_)
                                                        (let ((_e2506125419_
                                                               (gx#stx-e
                                                                _tl2505325397_)))
                                                          (let ((_tl2506325424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2506125419_))
                        (_hd2506225422_ (##car _e2506125419_)))
                    (if (gx#stx-pair? _hd2506225422_)
                        (let ((_e2506425427_ (gx#stx-e _hd2506225422_)))
                          (let ((_tl2506625432_ (##cdr _e2506425427_))
                                (_hd2506525430_ (##car _e2506425427_)))
                            (if (gx#identifier? _hd2506525430_)
                                (if (gx#stx-eq? '%#quote _hd2506525430_)
                                    (if (gx#stx-pair? _tl2506625432_)
                                        (let ((_e2506725435_
                                               (gx#stx-e _tl2506625432_)))
                                          (let ((_tl2506925440_
                                                 (##cdr _e2506725435_))
                                                (_hd2506825438_
                                                 (##car _e2506725435_)))
                                            (if (gx#stx-null? _tl2506925440_)
                                                (if (gx#stx-pair?
                                                     _tl2506325424_)
                                                    (let ((_e2507025443_
                                                           (gx#stx-e
                                                            _tl2506325424_)))
                                                      (let ((_tl2507225448_
                                                             (##cdr _e2507025443_))
                                                            (_hd2507125446_
                                                             (##car _e2507025443_)))
                                                        (if (gx#stx-pair?
                                                             _tl2507225448_)
                                                            (let ((_e2507325451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2507225448_)))
                      (let ((_tl2507525456_ (##cdr _e2507325451_))
                            (_hd2507425454_ (##car _e2507325451_)))
                        (if (gx#stx-pair? _hd2507425454_)
                            (let ((_e2507625459_ (gx#stx-e _hd2507425454_)))
                              (let ((_tl2507825464_ (##cdr _e2507625459_))
                                    (_hd2507725462_ (##car _e2507625459_)))
                                (if (gx#identifier? _hd2507725462_)
                                    (if (gx#stx-eq? '%#quote _hd2507725462_)
                                        (if (gx#stx-pair? _tl2507825464_)
                                            (let ((_e2507925467_
                                                   (gx#stx-e _tl2507825464_)))
                                              (let ((_tl2508125472_
                                                     (##cdr _e2507925467_))
                                                    (_hd2508025470_
                                                     (##car _e2507925467_)))
                                                (if (gx#stx-null?
                                                     _tl2508125472_)
                                                    (if (gx#stx-pair?
                                                         _tl2507525456_)
                                                        (let ((_e2508225475_
                                                               (gx#stx-e
                                                                _tl2507525456_)))
                                                          (let ((_tl2508425480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2508225475_))
                        (_hd2508325478_ (##car _e2508225475_)))
                    (if (gx#stx-pair? _hd2508325478_)
                        (let ((_e2508525483_ (gx#stx-e _hd2508325478_)))
                          (let ((_tl2508725488_ (##cdr _e2508525483_))
                                (_hd2508625486_ (##car _e2508525483_)))
                            (if (gx#identifier? _hd2508625486_)
                                (if (gx#stx-eq? '%#quote _hd2508625486_)
                                    (if (gx#stx-pair? _tl2508725488_)
                                        (let ((_e2508825491_
                                               (gx#stx-e _tl2508725488_)))
                                          (let ((_tl2509025496_
                                                 (##cdr _e2508825491_))
                                                (_hd2508925494_
                                                 (##car _e2508825491_)))
                                            (if (gx#stx-null? _tl2509025496_)
                                                (___kont2907829079_
                                                 _hd2508925494_
                                                 _hd2508025470_
                                                 _hd2507125446_
                                                 _hd2506825438_
                                                 _hd2504925387_)
                                                (___kont2908229083_))))
                                        (___kont2908229083_))
                                    (___kont2908229083_))
                                (___kont2908229083_))))
                        (___kont2908229083_))))
                (___kont2908229083_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2908229083_))))
                                            (___kont2908229083_))
                                        (___kont2908229083_))
                                    (___kont2908229083_))))
                            (___kont2908229083_))))
                    (___kont2908229083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2908229083_))
                                                (___kont2908229083_))))
                                        (___kont2908229083_))
                                    (___kont2908229083_))
                                (___kont2908229083_))))
                        (___kont2908229083_))))
                (___kont2908229083_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2908229083_))
                                                (___kont2908229083_)))
                                          (___kont2908229083_))))
                                  (___kont2908229083_))
                              (if (gx#stx-eq? '%#ref _hd2505525403_)
                                  (if (gx#stx-pair? _tl2505625405_)
                                      (let ((_e2511225201_
                                             (gx#stx-e _tl2505625405_)))
                                        (let ((_tl2511425206_
                                               (##cdr _e2511225201_))
                                              (_hd2511325204_
                                               (##car _e2511225201_)))
                                          (if (gx#stx-null? _tl2511425206_)
                                              (if (gx#stx-pair? _tl2505325397_)
                                                  (let ((_e2511525209_
                                                         (gx#stx-e
                                                          _tl2505325397_)))
                                                    (let ((_tl2511725214_
                                                           (##cdr _e2511525209_))
                                                          (_hd2511625212_
                                                           (##car _e2511525209_)))
                                                      (if (gx#stx-pair?
                                                           _hd2511625212_)
                                                          (let ((_e2511825217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2511625212_)))
                    (let ((_tl2512025222_ (##cdr _e2511825217_))
                          (_hd2511925220_ (##car _e2511825217_)))
                      (if (gx#identifier? _hd2511925220_)
                          (if (gx#stx-eq? '%#quote _hd2511925220_)
                              (if (gx#stx-pair? _tl2512025222_)
                                  (let ((_e2512125225_
                                         (gx#stx-e _tl2512025222_)))
                                    (let ((_tl2512325230_
                                           (##cdr _e2512125225_))
                                          (_hd2512225228_
                                           (##car _e2512125225_)))
                                      (if (gx#stx-null? _tl2512325230_)
                                          (if (gx#stx-pair? _tl2511725214_)
                                              (let ((_e2512425233_
                                                     (gx#stx-e
                                                      _tl2511725214_)))
                                                (let ((_tl2512625238_
                                                       (##cdr _e2512425233_))
                                                      (_hd2512525236_
                                                       (##car _e2512425233_)))
                                                  (if (gx#stx-pair?
                                                       _tl2512625238_)
                                                      (let ((_e2512725241_
                                                             (gx#stx-e
                                                              _tl2512625238_)))
                                                        (let ((_tl2512925246_
                                                               (##cdr _e2512725241_))
                                                              (_hd2512825244_
                                                               (##car _e2512725241_)))
                                                          (if (gx#stx-pair?
                                                               _hd2512825244_)
                                                              (let ((_e2513025249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2512825244_)))
                        (let ((_tl2513225254_ (##cdr _e2513025249_))
                              (_hd2513125252_ (##car _e2513025249_)))
                          (if (gx#identifier? _hd2513125252_)
                              (if (gx#stx-eq? '%#quote _hd2513125252_)
                                  (if (gx#stx-pair? _tl2513225254_)
                                      (let ((_e2513325257_
                                             (gx#stx-e _tl2513225254_)))
                                        (let ((_tl2513525262_
                                               (##cdr _e2513325257_))
                                              (_hd2513425260_
                                               (##car _e2513325257_)))
                                          (if (gx#stx-null? _tl2513525262_)
                                              (if (gx#stx-pair? _tl2512925246_)
                                                  (let ((_e2513625265_
                                                         (gx#stx-e
                                                          _tl2512925246_)))
                                                    (let ((_tl2513825270_
                                                           (##cdr _e2513625265_))
                                                          (_hd2513725268_
                                                           (##car _e2513625265_)))
                                                      (if (gx#stx-pair?
                                                           _hd2513725268_)
                                                          (let ((_e2513925273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2513725268_)))
                    (let ((_tl2514125278_ (##cdr _e2513925273_))
                          (_hd2514025276_ (##car _e2513925273_)))
                      (if (gx#identifier? _hd2514025276_)
                          (if (gx#stx-eq? '%#quote _hd2514025276_)
                              (if (gx#stx-pair? _tl2514125278_)
                                  (let ((_e2514225281_
                                         (gx#stx-e _tl2514125278_)))
                                    (let ((_tl2514425286_
                                           (##cdr _e2514225281_))
                                          (_hd2514325284_
                                           (##car _e2514225281_)))
                                      (if (gx#stx-null? _tl2514425286_)
                                          (___kont2908029081_
                                           _hd2514325284_
                                           _hd2513425260_
                                           _hd2512525236_
                                           _hd2512225228_
                                           _hd2511325204_
                                           _hd2504925387_)
                                          (___kont2908229083_))))
                                  (___kont2908229083_))
                              (___kont2908229083_))
                          (___kont2908229083_))))
                  (___kont2908229083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2908229083_))
                                              (___kont2908229083_))))
                                      (___kont2908229083_))
                                  (___kont2908229083_))
                              (___kont2908229083_))))
                      (___kont2908229083_))))
              (___kont2908229083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2908229083_))
                                          (___kont2908229083_))))
                                  (___kont2908229083_))
                              (___kont2908229083_))
                          (___kont2908229083_))))
                  (___kont2908229083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2908229083_))
                                              (___kont2908229083_))))
                                      (___kont2908229083_))
                                  (___kont2908229083_)))
                          (___kont2908229083_))))
                  (___kont2908229083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2908229083_))
                                              (___kont2908229083_))))
                                      (___kont2908229083_))
                                  (___kont2908229083_))
                              (___kont2908229083_))))
                      (___kont2908229083_))))
              (___kont2908229083_))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx24956_ _args24957_)
      (let* ((___stx2934429345_ _args24957_)
             (_g2496024976_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2934429345_))))
        (let ((___kont2934629347_
               (lambda (_L25012_)
                 (##structure
                  gxc#!struct-pred::t
                  (gxc#identifier-symbol _L25012_))))
              (___kont2934829349_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2934429345_)
              (let ((_e2496324988_ (gx#stx-e ___stx2934429345_)))
                (let ((_tl2496524993_ (##cdr _e2496324988_))
                      (_hd2496424991_ (##car _e2496324988_)))
                  (if (gx#stx-pair? _hd2496424991_)
                      (let ((_e2496624996_ (gx#stx-e _hd2496424991_)))
                        (let ((_tl2496825001_ (##cdr _e2496624996_))
                              (_hd2496724999_ (##car _e2496624996_)))
                          (if (gx#identifier? _hd2496724999_)
                              (if (gx#stx-eq? '%#ref _hd2496724999_)
                                  (if (gx#stx-pair? _tl2496825001_)
                                      (let ((_e2496925004_
                                             (gx#stx-e _tl2496825001_)))
                                        (let ((_tl2497125009_
                                               (##cdr _e2496925004_))
                                              (_hd2497025007_
                                               (##car _e2496925004_)))
                                          (if (gx#stx-null? _tl2497125009_)
                                              (if (gx#stx-null? _tl2496524993_)
                                                  (___kont2934629347_
                                                   _hd2497025007_)
                                                  (___kont2934829349_))
                                              (___kont2934829349_))))
                                      (___kont2934829349_))
                                  (___kont2934829349_))
                              (___kont2934829349_))))
                      (___kont2934829349_))))
              (___kont2934829349_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor__%
    (lambda (_stx24827_ _args24828_ _unchecked?24829_)
      (let* ((___stx2937829379_ _args24828_)
             (_g2483224858_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2937829379_))))
        (let ((___kont2938029381_
               (lambda (_L24918_ _L24919_)
                 (##structure
                  gxc#!struct-getf::t
                  (gxc#identifier-symbol _L24919_)
                  (gx#stx-e _L24918_)
                  _unchecked?24829_)))
              (___kont2938229383_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2937829379_)
              (let ((_e2483624870_ (gx#stx-e ___stx2937829379_)))
                (let ((_tl2483824875_ (##cdr _e2483624870_))
                      (_hd2483724873_ (##car _e2483624870_)))
                  (if (gx#stx-pair? _hd2483724873_)
                      (let ((_e2483924878_ (gx#stx-e _hd2483724873_)))
                        (let ((_tl2484124883_ (##cdr _e2483924878_))
                              (_hd2484024881_ (##car _e2483924878_)))
                          (if (gx#identifier? _hd2484024881_)
                              (if (gx#stx-eq? '%#ref _hd2484024881_)
                                  (if (gx#stx-pair? _tl2484124883_)
                                      (let ((_e2484224886_
                                             (gx#stx-e _tl2484124883_)))
                                        (let ((_tl2484424891_
                                               (##cdr _e2484224886_))
                                              (_hd2484324889_
                                               (##car _e2484224886_)))
                                          (if (gx#stx-null? _tl2484424891_)
                                              (if (gx#stx-pair? _tl2483824875_)
                                                  (let ((_e2484524894_
                                                         (gx#stx-e
                                                          _tl2483824875_)))
                                                    (let ((_tl2484724899_
                                                           (##cdr _e2484524894_))
                                                          (_hd2484624897_
                                                           (##car _e2484524894_)))
                                                      (if (gx#stx-pair?
                                                           _hd2484624897_)
                                                          (let ((_e2484824902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2484624897_)))
                    (let ((_tl2485024907_ (##cdr _e2484824902_))
                          (_hd2484924905_ (##car _e2484824902_)))
                      (if (gx#identifier? _hd2484924905_)
                          (if (gx#stx-eq? '%#quote _hd2484924905_)
                              (if (gx#stx-pair? _tl2485024907_)
                                  (let ((_e2485124910_
                                         (gx#stx-e _tl2485024907_)))
                                    (let ((_tl2485324915_
                                           (##cdr _e2485124910_))
                                          (_hd2485224913_
                                           (##car _e2485124910_)))
                                      (if (gx#stx-null? _tl2485324915_)
                                          (if (gx#stx-null? _tl2484724899_)
                                              (___kont2938029381_
                                               _hd2485224913_
                                               _hd2484324889_)
                                              (___kont2938229383_))
                                          (___kont2938229383_))))
                                  (___kont2938229383_))
                              (___kont2938229383_))
                          (___kont2938229383_))))
                  (___kont2938229383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2938229383_))
                                              (___kont2938229383_))))
                                      (___kont2938229383_))
                                  (___kont2938229383_))
                              (___kont2938229383_))))
                      (___kont2938229383_))))
              (___kont2938229383_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor__0
    (lambda (_stx24947_ _args24948_)
      (let ((_unchecked?24950_ '#f))
        (gxc#basic-expression-type-make-struct-field-accessor__%
         _stx24947_
         _args24948_
         _unchecked?24950_))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda _g30808_
      (let ((_g30807_ (length _g30808_)))
        (cond ((##fx= _g30807_ 2)
               (apply gxc#basic-expression-type-make-struct-field-accessor__0
                      _g30808_))
              ((##fx= _g30807_ 3)
               (apply gxc#basic-expression-type-make-struct-field-accessor__%
                      _g30808_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#basic-expression-type-make-struct-field-accessor
                _g30808_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator__%
    (lambda (_stx24697_ _args24698_ _unchecked?24699_)
      (let* ((___stx2943629437_ _args24698_)
             (_g2470224728_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2943629437_))))
        (let ((___kont2943829439_
               (lambda (_L24788_ _L24789_)
                 (##structure
                  gxc#!struct-setf::t
                  (gxc#identifier-symbol _L24789_)
                  (gx#stx-e _L24788_)
                  _unchecked?24699_)))
              (___kont2944029441_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2943629437_)
              (let ((_e2470624740_ (gx#stx-e ___stx2943629437_)))
                (let ((_tl2470824745_ (##cdr _e2470624740_))
                      (_hd2470724743_ (##car _e2470624740_)))
                  (if (gx#stx-pair? _hd2470724743_)
                      (let ((_e2470924748_ (gx#stx-e _hd2470724743_)))
                        (let ((_tl2471124753_ (##cdr _e2470924748_))
                              (_hd2471024751_ (##car _e2470924748_)))
                          (if (gx#identifier? _hd2471024751_)
                              (if (gx#stx-eq? '%#ref _hd2471024751_)
                                  (if (gx#stx-pair? _tl2471124753_)
                                      (let ((_e2471224756_
                                             (gx#stx-e _tl2471124753_)))
                                        (let ((_tl2471424761_
                                               (##cdr _e2471224756_))
                                              (_hd2471324759_
                                               (##car _e2471224756_)))
                                          (if (gx#stx-null? _tl2471424761_)
                                              (if (gx#stx-pair? _tl2470824745_)
                                                  (let ((_e2471524764_
                                                         (gx#stx-e
                                                          _tl2470824745_)))
                                                    (let ((_tl2471724769_
                                                           (##cdr _e2471524764_))
                                                          (_hd2471624767_
                                                           (##car _e2471524764_)))
                                                      (if (gx#stx-pair?
                                                           _hd2471624767_)
                                                          (let ((_e2471824772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2471624767_)))
                    (let ((_tl2472024777_ (##cdr _e2471824772_))
                          (_hd2471924775_ (##car _e2471824772_)))
                      (if (gx#identifier? _hd2471924775_)
                          (if (gx#stx-eq? '%#quote _hd2471924775_)
                              (if (gx#stx-pair? _tl2472024777_)
                                  (let ((_e2472124780_
                                         (gx#stx-e _tl2472024777_)))
                                    (let ((_tl2472324785_
                                           (##cdr _e2472124780_))
                                          (_hd2472224783_
                                           (##car _e2472124780_)))
                                      (if (gx#stx-null? _tl2472324785_)
                                          (if (gx#stx-null? _tl2471724769_)
                                              (___kont2943829439_
                                               _hd2472224783_
                                               _hd2471324759_)
                                              (___kont2944029441_))
                                          (___kont2944029441_))))
                                  (___kont2944029441_))
                              (___kont2944029441_))
                          (___kont2944029441_))))
                  (___kont2944029441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2944029441_))
                                              (___kont2944029441_))))
                                      (___kont2944029441_))
                                  (___kont2944029441_))
                              (___kont2944029441_))))
                      (___kont2944029441_))))
              (___kont2944029441_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator__0
    (lambda (_stx24817_ _args24818_)
      (let ((_unchecked?24820_ '#f))
        (gxc#basic-expression-type-make-struct-field-mutator__%
         _stx24817_
         _args24818_
         _unchecked?24820_))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda _g30810_
      (let ((_g30809_ (length _g30810_)))
        (cond ((##fx= _g30809_ 2)
               (apply gxc#basic-expression-type-make-struct-field-mutator__0
                      _g30810_))
              ((##fx= _g30809_ 3)
               (apply gxc#basic-expression-type-make-struct-field-mutator__%
                      _g30810_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#basic-expression-type-make-struct-field-mutator
                _g30810_))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx24693_ _args24694_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx24693_
       _args24694_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx24690_ _args24691_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx24690_
       _args24691_
       '#t)))
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-type
   gxc#basic-expression-type-make-struct-type)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-predicate
   gxc#basic-expression-type-make-struct-predicate)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-accessor
   gxc#basic-expression-type-make-struct-field-accessor)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-mutator
   gxc#basic-expression-type-make-struct-field-mutator)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-unchecked-accessor
   gxc#basic-expression-type-make-struct-field-unchecked-accessor)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-unchecked-mutator
   gxc#basic-expression-type-make-struct-field-unchecked-mutator)
  (define gxc#basic-expression-type-ref%
    (lambda (_stx24639_)
      (let* ((_g2464124654_
              (lambda (_g2464224651_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2464224651_)))
             (_g2464024687_
              (lambda (_g2464224657_)
                (if (gx#stx-pair? _g2464224657_)
                    (let ((_e2464424659_ (gx#stx-e _g2464224657_)))
                      (let ((_hd2464524662_ (##car _e2464424659_))
                            (_tl2464624664_ (##cdr _e2464424659_)))
                        (if (gx#stx-pair? _tl2464624664_)
                            (let ((_e2464724667_ (gx#stx-e _tl2464624664_)))
                              (let ((_hd2464824670_ (##car _e2464724667_))
                                    (_tl2464924672_ (##cdr _e2464724667_)))
                                (if (gx#stx-null? _tl2464924672_)
                                    ((lambda (_L24675_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L24675_)))
                                     _hd2464824670_)
                                    (_g2464124654_ _g2464224657_))))
                            (_g2464124654_ _g2464224657_))))
                    (_g2464124654_ _g2464224657_)))))
        (_g2464024687_ _stx24639_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form23873_)
      (let* ((___stx2949429495_ _form23873_)
             (_g2387824035_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2949429495_))))
        (let ((___kont2949629497_ (lambda (_L24559_ _L24560_ _L24561_) '#t))
              (___kont2950229503_
               (lambda (_L24347_ _L24348_ _L24349_ _L24350_ _L24351_ _L24352_)
                 '#t))
              (___kont2950829509_
               (lambda (_L24143_ _L24144_ _L24145_ _L24146_) '#t))
              (___kont2951029511_ (lambda () '#f)))
          (let* ((___match2963529636_
                  (lambda (_e2399524047_
                           _hd2399624050_
                           _tl2399724052_
                           _e2399824055_
                           _hd2399924058_
                           _tl2400024060_
                           _e2400124063_
                           _hd2400224066_
                           _tl2400324068_
                           _e2400424071_
                           _hd2400524074_
                           _tl2400624076_
                           _e2400724079_
                           _hd2400824082_
                           _tl2400924084_
                           _e2401024087_
                           _hd2401124090_
                           _tl2401224092_
                           _e2401324095_
                           _hd2401424098_
                           _tl2401524100_
                           _e2401624103_
                           _hd2401724106_
                           _tl2401824108_
                           _e2401924111_
                           _hd2402024114_
                           _tl2402124116_
                           _e2402224119_
                           _hd2402324122_
                           _tl2402424124_
                           _e2402524127_
                           _hd2402624130_
                           _tl2402724132_
                           _e2402824135_
                           _hd2402924138_
                           _tl2403024140_)
                    (let ((_L24143_ _hd2402924138_)
                          (_L24144_ _hd2402024114_)
                          (_L24145_ _hd2401124090_)
                          (_L24146_ _hd2399624050_))
                      (if (and (gx#identifier? _L24146_)
                               (gxc#runtime-identifier=? _L24145_ 'apply)
                               (gx#free-identifier=? _L24146_ _L24143_)
                               (not (gx#free-identifier=? _L24144_ _L24146_)))
                          (___kont2950829509_
                           _L24143_
                           _L24144_
                           _L24145_
                           _L24146_)
                          (___kont2951029511_)))))
                 (___match2960729608_
                  (lambda (_e2399524047_
                           _hd2399624050_
                           _tl2399724052_
                           _e2399824055_
                           _hd2399924058_
                           _tl2400024060_
                           _e2400124063_
                           _hd2400224066_
                           _tl2400324068_
                           _e2400424071_
                           _hd2400524074_
                           _tl2400624076_
                           _e2400724079_
                           _hd2400824082_
                           _tl2400924084_
                           _e2401024087_
                           _hd2401124090_
                           _tl2401224092_
                           _e2401324095_
                           _hd2401424098_
                           _tl2401524100_
                           _e2401624103_
                           _hd2401724106_
                           _tl2401824108_
                           _e2401924111_
                           _hd2402024114_
                           _tl2402124116_)
                    (if (gx#stx-pair? _tl2401524100_)
                        (let ((_e2402224119_ (gx#stx-e _tl2401524100_)))
                          (let ((_tl2402424124_ (##cdr _e2402224119_))
                                (_hd2402324122_ (##car _e2402224119_)))
                            (if (gx#stx-pair? _hd2402324122_)
                                (let ((_e2402524127_
                                       (gx#stx-e _hd2402324122_)))
                                  (let ((_tl2402724132_ (##cdr _e2402524127_))
                                        (_hd2402624130_ (##car _e2402524127_)))
                                    (if (gx#identifier? _hd2402624130_)
                                        (if (gx#stx-eq? '%#ref _hd2402624130_)
                                            (if (gx#stx-pair? _tl2402724132_)
                                                (let ((_e2402824135_
                                                       (gx#stx-e
                                                        _tl2402724132_)))
                                                  (let ((_tl2403024140_
                                                         (##cdr _e2402824135_))
                                                        (_hd2402924138_
                                                         (##car _e2402824135_)))
                                                    (if (gx#stx-null?
                                                         _tl2403024140_)
                                                        (if (gx#stx-null?
                                                             _tl2402424124_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2400024060_)
                        (___match2963529636_
                         _e2399524047_
                         _hd2399624050_
                         _tl2399724052_
                         _e2399824055_
                         _hd2399924058_
                         _tl2400024060_
                         _e2400124063_
                         _hd2400224066_
                         _tl2400324068_
                         _e2400424071_
                         _hd2400524074_
                         _tl2400624076_
                         _e2400724079_
                         _hd2400824082_
                         _tl2400924084_
                         _e2401024087_
                         _hd2401124090_
                         _tl2401224092_
                         _e2401324095_
                         _hd2401424098_
                         _tl2401524100_
                         _e2401624103_
                         _hd2401724106_
                         _tl2401824108_
                         _e2401924111_
                         _hd2402024114_
                         _tl2402124116_
                         _e2402224119_
                         _hd2402324122_
                         _tl2402424124_
                         _e2402524127_
                         _hd2402624130_
                         _tl2402724132_
                         _e2402824135_
                         _hd2402924138_
                         _tl2403024140_)
                        (___kont2951029511_))
                    (___kont2951029511_))
                (___kont2951029511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2951029511_))
                                            (___kont2951029511_))
                                        (___kont2951029511_))))
                                (___kont2951029511_))))
                        (___kont2951029511_))))
                 (___match2953729538_
                  (lambda (_e2393124187_
                           _hd2393224190_
                           _tl2393324192_
                           ___splice2950429505_
                           _target2393424195_
                           _tl2393624197_)
                    (letrec ((_loop2393724200_
                              (lambda (_hd2393524203_ _arg2394124205_)
                                (if (gx#stx-pair? _hd2393524203_)
                                    (let ((_e2393824208_
                                           (gx#stx-e _hd2393524203_)))
                                      (let ((_lp-tl2394024213_
                                             (##cdr _e2393824208_))
                                            (_lp-hd2393924211_
                                             (##car _e2393824208_)))
                                        (_loop2393724200_
                                         _lp-tl2394024213_
                                         (cons _lp-hd2393924211_
                                               _arg2394124205_))))
                                    (let ((_arg2394224216_
                                           (reverse _arg2394124205_)))
                                      (if (gx#stx-pair? _tl2393324192_)
                                          (let ((_e2394324219_
                                                 (gx#stx-e _tl2393324192_)))
                                            (let ((_tl2394524224_
                                                   (##cdr _e2394324219_))
                                                  (_hd2394424222_
                                                   (##car _e2394324219_)))
                                              (if (gx#stx-pair? _hd2394424222_)
                                                  (let ((_e2394624227_
                                                         (gx#stx-e
                                                          _hd2394424222_)))
                                                    (let ((_tl2394824232_
                                                           (##cdr _e2394624227_))
                                                          (_hd2394724230_
                                                           (##car _e2394624227_)))
                                                      (if (gx#identifier?
                                                           _hd2394724230_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2394724230_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2394824232_)
                          (let ((_e2394924235_ (gx#stx-e _tl2394824232_)))
                            (let ((_tl2395124240_ (##cdr _e2394924235_))
                                  (_hd2395024238_ (##car _e2394924235_)))
                              (if (gx#stx-pair? _hd2395024238_)
                                  (let ((_e2395224243_
                                         (gx#stx-e _hd2395024238_)))
                                    (let ((_tl2395424248_
                                           (##cdr _e2395224243_))
                                          (_hd2395324246_
                                           (##car _e2395224243_)))
                                      (if (gx#identifier? _hd2395324246_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2395324246_)
                                              (if (gx#stx-pair? _tl2395424248_)
                                                  (let ((_e2395524251_
                                                         (gx#stx-e
                                                          _tl2395424248_)))
                                                    (let ((_tl2395724256_
                                                           (##cdr _e2395524251_))
                                                          (_hd2395624254_
                                                           (##car _e2395524251_)))
                                                      (if (gx#stx-null?
                                                           _tl2395724256_)
                                                          (if (gx#stx-pair?
                                                               _tl2395124240_)
                                                              (let ((_e2395824259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2395124240_)))
                        (let ((_tl2396024264_ (##cdr _e2395824259_))
                              (_hd2395924262_ (##car _e2395824259_)))
                          (if (gx#stx-pair? _hd2395924262_)
                              (let ((_e2396124267_ (gx#stx-e _hd2395924262_)))
                                (let ((_tl2396324272_ (##cdr _e2396124267_))
                                      (_hd2396224270_ (##car _e2396124267_)))
                                  (if (gx#identifier? _hd2396224270_)
                                      (if (gx#stx-eq? '%#ref _hd2396224270_)
                                          (if (gx#stx-pair? _tl2396324272_)
                                              (let ((_e2396424275_
                                                     (gx#stx-e
                                                      _tl2396324272_)))
                                                (let ((_tl2396624280_
                                                       (##cdr _e2396424275_))
                                                      (_hd2396524278_
                                                       (##car _e2396424275_)))
                                                  (if (gx#stx-null?
                                                       _tl2396624280_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2396024264_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2396024264_)
                            '1)
                      (let ((___splice2950629507_
                             (gx#syntax-split-splice _tl2396024264_ '1)))
                        (let ((_tl2396924285_
                               (##vector-ref ___splice2950629507_ '1))
                              (_target2396724283_
                               (##vector-ref ___splice2950629507_ '0)))
                          (if (gx#stx-pair? _tl2396924285_)
                              (let ((_e2397624288_ (gx#stx-e _tl2396924285_)))
                                (let ((_tl2397824293_ (##cdr _e2397624288_))
                                      (_hd2397724291_ (##car _e2397624288_)))
                                  (if (gx#stx-pair? _hd2397724291_)
                                      (let ((_e2397924296_
                                             (gx#stx-e _hd2397724291_)))
                                        (let ((_tl2398124301_
                                               (##cdr _e2397924296_))
                                              (_hd2398024299_
                                               (##car _e2397924296_)))
                                          (if (gx#identifier? _hd2398024299_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd2398024299_)
                                                  (if (gx#stx-pair?
                                                       _tl2398124301_)
                                                      (let ((_e2398224304_
                                                             (gx#stx-e
                                                              _tl2398124301_)))
                                                        (let ((_tl2398424309_
                                                               (##cdr _e2398224304_))
                                                              (_hd2398324307_
                                                               (##car _e2398224304_)))
                                                          (if (gx#stx-null?
                                                               _tl2398424309_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2397824293_)
                          (letrec ((_loop2397024312_
                                    (lambda (_hd2396824315_ _xarg2397424317_)
                                      (if (gx#stx-pair? _hd2396824315_)
                                          (let ((_e2397124320_
                                                 (gx#stx-e _hd2396824315_)))
                                            (let ((_lp-tl2397324325_
                                                   (##cdr _e2397124320_))
                                                  (_lp-hd2397224323_
                                                   (##car _e2397124320_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2397224323_)
                                                  (let ((_e2398524328_
                                                         (gx#stx-e
                                                          _lp-hd2397224323_)))
                                                    (let ((_tl2398724333_
                                                           (##cdr _e2398524328_))
                                                          (_hd2398624331_
                                                           (##car _e2398524328_)))
                                                      (if (gx#identifier?
                                                           _hd2398624331_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2398624331_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2398724333_)
                          (let ((_e2398824336_ (gx#stx-e _tl2398724333_)))
                            (let ((_tl2399024341_ (##cdr _e2398824336_))
                                  (_hd2398924339_ (##car _e2398824336_)))
                              (if (gx#stx-null? _tl2399024341_)
                                  (_loop2397024312_
                                   _lp-tl2397324325_
                                   (cons _hd2398924339_ _xarg2397424317_))
                                  (___match2960729608_
                                   _e2393124187_
                                   _hd2393224190_
                                   _tl2393324192_
                                   _e2394324219_
                                   _hd2394424222_
                                   _tl2394524224_
                                   _e2394624227_
                                   _hd2394724230_
                                   _tl2394824232_
                                   _e2394924235_
                                   _hd2395024238_
                                   _tl2395124240_
                                   _e2395224243_
                                   _hd2395324246_
                                   _tl2395424248_
                                   _e2395524251_
                                   _hd2395624254_
                                   _tl2395724256_
                                   _e2395824259_
                                   _hd2395924262_
                                   _tl2396024264_
                                   _e2396124267_
                                   _hd2396224270_
                                   _tl2396324272_
                                   _e2396424275_
                                   _hd2396524278_
                                   _tl2396624280_))))
                          (___match2960729608_
                           _e2393124187_
                           _hd2393224190_
                           _tl2393324192_
                           _e2394324219_
                           _hd2394424222_
                           _tl2394524224_
                           _e2394624227_
                           _hd2394724230_
                           _tl2394824232_
                           _e2394924235_
                           _hd2395024238_
                           _tl2395124240_
                           _e2395224243_
                           _hd2395324246_
                           _tl2395424248_
                           _e2395524251_
                           _hd2395624254_
                           _tl2395724256_
                           _e2395824259_
                           _hd2395924262_
                           _tl2396024264_
                           _e2396124267_
                           _hd2396224270_
                           _tl2396324272_
                           _e2396424275_
                           _hd2396524278_
                           _tl2396624280_))
                      (___match2960729608_
                       _e2393124187_
                       _hd2393224190_
                       _tl2393324192_
                       _e2394324219_
                       _hd2394424222_
                       _tl2394524224_
                       _e2394624227_
                       _hd2394724230_
                       _tl2394824232_
                       _e2394924235_
                       _hd2395024238_
                       _tl2395124240_
                       _e2395224243_
                       _hd2395324246_
                       _tl2395424248_
                       _e2395524251_
                       _hd2395624254_
                       _tl2395724256_
                       _e2395824259_
                       _hd2395924262_
                       _tl2396024264_
                       _e2396124267_
                       _hd2396224270_
                       _tl2396324272_
                       _e2396424275_
                       _hd2396524278_
                       _tl2396624280_))
                  (___match2960729608_
                   _e2393124187_
                   _hd2393224190_
                   _tl2393324192_
                   _e2394324219_
                   _hd2394424222_
                   _tl2394524224_
                   _e2394624227_
                   _hd2394724230_
                   _tl2394824232_
                   _e2394924235_
                   _hd2395024238_
                   _tl2395124240_
                   _e2395224243_
                   _hd2395324246_
                   _tl2395424248_
                   _e2395524251_
                   _hd2395624254_
                   _tl2395724256_
                   _e2395824259_
                   _hd2395924262_
                   _tl2396024264_
                   _e2396124267_
                   _hd2396224270_
                   _tl2396324272_
                   _e2396424275_
                   _hd2396524278_
                   _tl2396624280_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2960729608_
                                                   _e2393124187_
                                                   _hd2393224190_
                                                   _tl2393324192_
                                                   _e2394324219_
                                                   _hd2394424222_
                                                   _tl2394524224_
                                                   _e2394624227_
                                                   _hd2394724230_
                                                   _tl2394824232_
                                                   _e2394924235_
                                                   _hd2395024238_
                                                   _tl2395124240_
                                                   _e2395224243_
                                                   _hd2395324246_
                                                   _tl2395424248_
                                                   _e2395524251_
                                                   _hd2395624254_
                                                   _tl2395724256_
                                                   _e2395824259_
                                                   _hd2395924262_
                                                   _tl2396024264_
                                                   _e2396124267_
                                                   _hd2396224270_
                                                   _tl2396324272_
                                                   _e2396424275_
                                                   _hd2396524278_
                                                   _tl2396624280_))))
                                          (let ((_xarg2397524344_
                                                 (reverse _xarg2397424317_)))
                                            (if (gx#stx-null? _tl2394524224_)
                                                (let ((_L24347_ _hd2398324307_)
                                                      (_L24348_
                                                       _xarg2397524344_)
                                                      (_L24349_ _hd2396524278_)
                                                      (_L24350_ _hd2395624254_)
                                                      (_L24351_ _tl2393624197_)
                                                      (_L24352_
                                                       _arg2394224216_))
                                                  (if (and (gx#identifier-list?
                                                            (foldr1 (lambda (_g2439524398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2439624400_)
                              (cons _g2439524398_ _g2439624400_))
                            '()
                            _L24352_))
                   (gx#identifier? _L24351_)
                   (gxc#runtime-identifier=? _L24350_ 'apply)
                   (fx= (length (foldr1 (lambda (_g2440224405_ _g2440324407_)
                                          (cons _g2440224405_ _g2440324407_))
                                        '()
                                        _L24352_))
                        (length (foldr1 (lambda (_g2440924412_ _g2441024414_)
                                          (cons _g2440924412_ _g2441024414_))
                                        '()
                                        _L24348_)))
                   (andmap2 gx#free-identifier=?
                            (foldr1 (lambda (_g2441624419_ _g2441724421_)
                                      (cons _g2441624419_ _g2441724421_))
                                    '()
                                    _L24352_)
                            (foldr1 (lambda (_g2442324426_ _g2442424428_)
                                      (cons _g2442324426_ _g2442424428_))
                                    '()
                                    _L24348_))
                   (gx#free-identifier=? _L24351_ _L24347_)
                   (not (find (lambda (_g2443024432_)
                                (gx#free-identifier=? _g2443024432_ _L24349_))
                              (foldr1 (lambda (_g2443424437_ _g2443524439_)
                                        (cons _g2443424437_ _g2443524439_))
                                      (cons _L24351_ '())
                                      _L24352_))))
              (___kont2950229503_
               _L24347_
               _L24348_
               _L24349_
               _L24350_
               _L24351_
               _L24352_)
              (___match2960729608_
               _e2393124187_
               _hd2393224190_
               _tl2393324192_
               _e2394324219_
               _hd2394424222_
               _tl2394524224_
               _e2394624227_
               _hd2394724230_
               _tl2394824232_
               _e2394924235_
               _hd2395024238_
               _tl2395124240_
               _e2395224243_
               _hd2395324246_
               _tl2395424248_
               _e2395524251_
               _hd2395624254_
               _tl2395724256_
               _e2395824259_
               _hd2395924262_
               _tl2396024264_
               _e2396124267_
               _hd2396224270_
               _tl2396324272_
               _e2396424275_
               _hd2396524278_
               _tl2396624280_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2960729608_
                                                 _e2393124187_
                                                 _hd2393224190_
                                                 _tl2393324192_
                                                 _e2394324219_
                                                 _hd2394424222_
                                                 _tl2394524224_
                                                 _e2394624227_
                                                 _hd2394724230_
                                                 _tl2394824232_
                                                 _e2394924235_
                                                 _hd2395024238_
                                                 _tl2395124240_
                                                 _e2395224243_
                                                 _hd2395324246_
                                                 _tl2395424248_
                                                 _e2395524251_
                                                 _hd2395624254_
                                                 _tl2395724256_
                                                 _e2395824259_
                                                 _hd2395924262_
                                                 _tl2396024264_
                                                 _e2396124267_
                                                 _hd2396224270_
                                                 _tl2396324272_
                                                 _e2396424275_
                                                 _hd2396524278_
                                                 _tl2396624280_)))))))
                            (_loop2397024312_ _target2396724283_ '()))
                          (___match2960729608_
                           _e2393124187_
                           _hd2393224190_
                           _tl2393324192_
                           _e2394324219_
                           _hd2394424222_
                           _tl2394524224_
                           _e2394624227_
                           _hd2394724230_
                           _tl2394824232_
                           _e2394924235_
                           _hd2395024238_
                           _tl2395124240_
                           _e2395224243_
                           _hd2395324246_
                           _tl2395424248_
                           _e2395524251_
                           _hd2395624254_
                           _tl2395724256_
                           _e2395824259_
                           _hd2395924262_
                           _tl2396024264_
                           _e2396124267_
                           _hd2396224270_
                           _tl2396324272_
                           _e2396424275_
                           _hd2396524278_
                           _tl2396624280_))
                      (___match2960729608_
                       _e2393124187_
                       _hd2393224190_
                       _tl2393324192_
                       _e2394324219_
                       _hd2394424222_
                       _tl2394524224_
                       _e2394624227_
                       _hd2394724230_
                       _tl2394824232_
                       _e2394924235_
                       _hd2395024238_
                       _tl2395124240_
                       _e2395224243_
                       _hd2395324246_
                       _tl2395424248_
                       _e2395524251_
                       _hd2395624254_
                       _tl2395724256_
                       _e2395824259_
                       _hd2395924262_
                       _tl2396024264_
                       _e2396124267_
                       _hd2396224270_
                       _tl2396324272_
                       _e2396424275_
                       _hd2396524278_
                       _tl2396624280_))))
              (___match2960729608_
               _e2393124187_
               _hd2393224190_
               _tl2393324192_
               _e2394324219_
               _hd2394424222_
               _tl2394524224_
               _e2394624227_
               _hd2394724230_
               _tl2394824232_
               _e2394924235_
               _hd2395024238_
               _tl2395124240_
               _e2395224243_
               _hd2395324246_
               _tl2395424248_
               _e2395524251_
               _hd2395624254_
               _tl2395724256_
               _e2395824259_
               _hd2395924262_
               _tl2396024264_
               _e2396124267_
               _hd2396224270_
               _tl2396324272_
               _e2396424275_
               _hd2396524278_
               _tl2396624280_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2960729608_
                                                   _e2393124187_
                                                   _hd2393224190_
                                                   _tl2393324192_
                                                   _e2394324219_
                                                   _hd2394424222_
                                                   _tl2394524224_
                                                   _e2394624227_
                                                   _hd2394724230_
                                                   _tl2394824232_
                                                   _e2394924235_
                                                   _hd2395024238_
                                                   _tl2395124240_
                                                   _e2395224243_
                                                   _hd2395324246_
                                                   _tl2395424248_
                                                   _e2395524251_
                                                   _hd2395624254_
                                                   _tl2395724256_
                                                   _e2395824259_
                                                   _hd2395924262_
                                                   _tl2396024264_
                                                   _e2396124267_
                                                   _hd2396224270_
                                                   _tl2396324272_
                                                   _e2396424275_
                                                   _hd2396524278_
                                                   _tl2396624280_))
                                              (___match2960729608_
                                               _e2393124187_
                                               _hd2393224190_
                                               _tl2393324192_
                                               _e2394324219_
                                               _hd2394424222_
                                               _tl2394524224_
                                               _e2394624227_
                                               _hd2394724230_
                                               _tl2394824232_
                                               _e2394924235_
                                               _hd2395024238_
                                               _tl2395124240_
                                               _e2395224243_
                                               _hd2395324246_
                                               _tl2395424248_
                                               _e2395524251_
                                               _hd2395624254_
                                               _tl2395724256_
                                               _e2395824259_
                                               _hd2395924262_
                                               _tl2396024264_
                                               _e2396124267_
                                               _hd2396224270_
                                               _tl2396324272_
                                               _e2396424275_
                                               _hd2396524278_
                                               _tl2396624280_))))
                                      (___match2960729608_
                                       _e2393124187_
                                       _hd2393224190_
                                       _tl2393324192_
                                       _e2394324219_
                                       _hd2394424222_
                                       _tl2394524224_
                                       _e2394624227_
                                       _hd2394724230_
                                       _tl2394824232_
                                       _e2394924235_
                                       _hd2395024238_
                                       _tl2395124240_
                                       _e2395224243_
                                       _hd2395324246_
                                       _tl2395424248_
                                       _e2395524251_
                                       _hd2395624254_
                                       _tl2395724256_
                                       _e2395824259_
                                       _hd2395924262_
                                       _tl2396024264_
                                       _e2396124267_
                                       _hd2396224270_
                                       _tl2396324272_
                                       _e2396424275_
                                       _hd2396524278_
                                       _tl2396624280_))))
                              (___match2960729608_
                               _e2393124187_
                               _hd2393224190_
                               _tl2393324192_
                               _e2394324219_
                               _hd2394424222_
                               _tl2394524224_
                               _e2394624227_
                               _hd2394724230_
                               _tl2394824232_
                               _e2394924235_
                               _hd2395024238_
                               _tl2395124240_
                               _e2395224243_
                               _hd2395324246_
                               _tl2395424248_
                               _e2395524251_
                               _hd2395624254_
                               _tl2395724256_
                               _e2395824259_
                               _hd2395924262_
                               _tl2396024264_
                               _e2396124267_
                               _hd2396224270_
                               _tl2396324272_
                               _e2396424275_
                               _hd2396524278_
                               _tl2396624280_))))
                      (___match2960729608_
                       _e2393124187_
                       _hd2393224190_
                       _tl2393324192_
                       _e2394324219_
                       _hd2394424222_
                       _tl2394524224_
                       _e2394624227_
                       _hd2394724230_
                       _tl2394824232_
                       _e2394924235_
                       _hd2395024238_
                       _tl2395124240_
                       _e2395224243_
                       _hd2395324246_
                       _tl2395424248_
                       _e2395524251_
                       _hd2395624254_
                       _tl2395724256_
                       _e2395824259_
                       _hd2395924262_
                       _tl2396024264_
                       _e2396124267_
                       _hd2396224270_
                       _tl2396324272_
                       _e2396424275_
                       _hd2396524278_
                       _tl2396624280_))
                  (___match2960729608_
                   _e2393124187_
                   _hd2393224190_
                   _tl2393324192_
                   _e2394324219_
                   _hd2394424222_
                   _tl2394524224_
                   _e2394624227_
                   _hd2394724230_
                   _tl2394824232_
                   _e2394924235_
                   _hd2395024238_
                   _tl2395124240_
                   _e2395224243_
                   _hd2395324246_
                   _tl2395424248_
                   _e2395524251_
                   _hd2395624254_
                   _tl2395724256_
                   _e2395824259_
                   _hd2395924262_
                   _tl2396024264_
                   _e2396124267_
                   _hd2396224270_
                   _tl2396324272_
                   _e2396424275_
                   _hd2396524278_
                   _tl2396624280_))
              (___kont2951029511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2951029511_))
                                          (___kont2951029511_))
                                      (___kont2951029511_))))
                              (___kont2951029511_))))
                      (___kont2951029511_))
                  (___kont2951029511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2951029511_))
                                              (___kont2951029511_))
                                          (___kont2951029511_))))
                                  (___kont2951029511_))))
                          (___kont2951029511_))
                      (___kont2951029511_))
                  (___kont2951029511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2951029511_))))
                                          (___kont2951029511_)))))))
                      (_loop2393724200_ _target2393424195_ '()))))
                 (___match2952529526_
                  (lambda (_e2388324447_
                           _hd2388424450_
                           _tl2388524452_
                           ___splice2949829499_
                           _target2388624455_
                           _tl2388824457_)
                    (letrec ((_loop2388924460_
                              (lambda (_hd2388724463_ _arg2389324465_)
                                (if (gx#stx-pair? _hd2388724463_)
                                    (let ((_e2389024468_
                                           (gx#stx-e _hd2388724463_)))
                                      (let ((_lp-tl2389224473_
                                             (##cdr _e2389024468_))
                                            (_lp-hd2389124471_
                                             (##car _e2389024468_)))
                                        (_loop2388924460_
                                         _lp-tl2389224473_
                                         (cons _lp-hd2389124471_
                                               _arg2389324465_))))
                                    (let ((_arg2389424476_
                                           (reverse _arg2389324465_)))
                                      (if (gx#stx-pair? _tl2388524452_)
                                          (let ((_e2389524479_
                                                 (gx#stx-e _tl2388524452_)))
                                            (let ((_tl2389724484_
                                                   (##cdr _e2389524479_))
                                                  (_hd2389624482_
                                                   (##car _e2389524479_)))
                                              (if (gx#stx-pair? _hd2389624482_)
                                                  (let ((_e2389824487_
                                                         (gx#stx-e
                                                          _hd2389624482_)))
                                                    (let ((_tl2390024492_
                                                           (##cdr _e2389824487_))
                                                          (_hd2389924490_
                                                           (##car _e2389824487_)))
                                                      (if (gx#identifier?
                                                           _hd2389924490_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2389924490_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2390024492_)
                          (let ((_e2390124495_ (gx#stx-e _tl2390024492_)))
                            (let ((_tl2390324500_ (##cdr _e2390124495_))
                                  (_hd2390224498_ (##car _e2390124495_)))
                              (if (gx#stx-pair? _hd2390224498_)
                                  (let ((_e2390424503_
                                         (gx#stx-e _hd2390224498_)))
                                    (let ((_tl2390624508_
                                           (##cdr _e2390424503_))
                                          (_hd2390524506_
                                           (##car _e2390424503_)))
                                      (if (gx#identifier? _hd2390524506_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2390524506_)
                                              (if (gx#stx-pair? _tl2390624508_)
                                                  (let ((_e2390724511_
                                                         (gx#stx-e
                                                          _tl2390624508_)))
                                                    (let ((_tl2390924516_
                                                           (##cdr _e2390724511_))
                                                          (_hd2390824514_
                                                           (##car _e2390724511_)))
                                                      (if (gx#stx-null?
                                                           _tl2390924516_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2390324500_)
                                                              (let ((___splice2950029501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2390324500_ '0)))
                        (let ((_tl2391224521_
                               (##vector-ref ___splice2950029501_ '1))
                              (_target2391024519_
                               (##vector-ref ___splice2950029501_ '0)))
                          (if (gx#stx-null? _tl2391224521_)
                              (letrec ((_loop2391324524_
                                        (lambda (_hd2391124527_
                                                 _xarg2391724529_)
                                          (if (gx#stx-pair? _hd2391124527_)
                                              (let ((_e2391424532_
                                                     (gx#stx-e
                                                      _hd2391124527_)))
                                                (let ((_lp-tl2391624537_
                                                       (##cdr _e2391424532_))
                                                      (_lp-hd2391524535_
                                                       (##car _e2391424532_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2391524535_)
                                                      (let ((_e2391924540_
                                                             (gx#stx-e
                                                              _lp-hd2391524535_)))
                                                        (let ((_tl2392124545_
                                                               (##cdr _e2391924540_))
                                                              (_hd2392024543_
                                                               (##car _e2391924540_)))
                                                          (if (gx#identifier?
                                                               _hd2392024543_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2392024543_)
                          (if (gx#stx-pair? _tl2392124545_)
                              (let ((_e2392224548_ (gx#stx-e _tl2392124545_)))
                                (let ((_tl2392424553_ (##cdr _e2392224548_))
                                      (_hd2392324551_ (##car _e2392224548_)))
                                  (if (gx#stx-null? _tl2392424553_)
                                      (_loop2391324524_
                                       _lp-tl2391624537_
                                       (cons _hd2392324551_ _xarg2391724529_))
                                      (___match2953729538_
                                       _e2388324447_
                                       _hd2388424450_
                                       _tl2388524452_
                                       ___splice2949829499_
                                       _target2388624455_
                                       _tl2388824457_))))
                              (___match2953729538_
                               _e2388324447_
                               _hd2388424450_
                               _tl2388524452_
                               ___splice2949829499_
                               _target2388624455_
                               _tl2388824457_))
                          (___match2953729538_
                           _e2388324447_
                           _hd2388424450_
                           _tl2388524452_
                           ___splice2949829499_
                           _target2388624455_
                           _tl2388824457_))
                      (___match2953729538_
                       _e2388324447_
                       _hd2388424450_
                       _tl2388524452_
                       ___splice2949829499_
                       _target2388624455_
                       _tl2388824457_))))
              (___match2953729538_
               _e2388324447_
               _hd2388424450_
               _tl2388524452_
               ___splice2949829499_
               _target2388624455_
               _tl2388824457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2391824556_
                                                     (reverse _xarg2391724529_)))
                                                (if (gx#stx-null?
                                                     _tl2389724484_)
                                                    (let ((_L24559_
                                                           _xarg2391824556_)
                                                          (_L24560_
                                                           _hd2390824514_)
                                                          (_L24561_
                                                           _arg2389424476_))
                                                      (if (and (gx#identifier-list?
                                                                (foldr1 (lambda (_g2458924592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g2459024594_)
                                  (cons _g2458924592_ _g2459024594_))
                                '()
                                _L24561_))
                       (fx= (length (foldr1 (lambda (_g2459624599_
                                                     _g2459724601_)
                                              (cons _g2459624599_
                                                    _g2459724601_))
                                            '()
                                            _L24561_))
                            (length (foldr1 (lambda (_g2460324606_
                                                     _g2460424608_)
                                              (cons _g2460324606_
                                                    _g2460424608_))
                                            '()
                                            _L24559_)))
                       (andmap2 gx#free-identifier=?
                                (foldr1 (lambda (_g2461024613_ _g2461124615_)
                                          (cons _g2461024613_ _g2461124615_))
                                        '()
                                        _L24561_)
                                (foldr1 (lambda (_g2461724620_ _g2461824622_)
                                          (cons _g2461724620_ _g2461824622_))
                                        '()
                                        _L24559_))
                       (not (find (lambda (_g2462424626_)
                                    (gx#free-identifier=?
                                     _g2462424626_
                                     _L24560_))
                                  (foldr1 (lambda (_g2462824631_ _g2462924633_)
                                            (cons _g2462824631_ _g2462924633_))
                                          '()
                                          _L24561_))))
                  (___kont2949629497_ _L24559_ _L24560_ _L24561_)
                  (___match2953729538_
                   _e2388324447_
                   _hd2388424450_
                   _tl2388524452_
                   ___splice2949829499_
                   _target2388624455_
                   _tl2388824457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2953729538_
                                                     _e2388324447_
                                                     _hd2388424450_
                                                     _tl2388524452_
                                                     ___splice2949829499_
                                                     _target2388624455_
                                                     _tl2388824457_)))))))
                                (_loop2391324524_ _target2391024519_ '()))
                              (___match2953729538_
                               _e2388324447_
                               _hd2388424450_
                               _tl2388524452_
                               ___splice2949829499_
                               _target2388624455_
                               _tl2388824457_))))
                      (___match2953729538_
                       _e2388324447_
                       _hd2388424450_
                       _tl2388524452_
                       ___splice2949829499_
                       _target2388624455_
                       _tl2388824457_))
                  (___match2953729538_
                   _e2388324447_
                   _hd2388424450_
                   _tl2388524452_
                   ___splice2949829499_
                   _target2388624455_
                   _tl2388824457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2953729538_
                                                   _e2388324447_
                                                   _hd2388424450_
                                                   _tl2388524452_
                                                   ___splice2949829499_
                                                   _target2388624455_
                                                   _tl2388824457_))
                                              (___match2953729538_
                                               _e2388324447_
                                               _hd2388424450_
                                               _tl2388524452_
                                               ___splice2949829499_
                                               _target2388624455_
                                               _tl2388824457_))
                                          (___match2953729538_
                                           _e2388324447_
                                           _hd2388424450_
                                           _tl2388524452_
                                           ___splice2949829499_
                                           _target2388624455_
                                           _tl2388824457_))))
                                  (___match2953729538_
                                   _e2388324447_
                                   _hd2388424450_
                                   _tl2388524452_
                                   ___splice2949829499_
                                   _target2388624455_
                                   _tl2388824457_))))
                          (___match2953729538_
                           _e2388324447_
                           _hd2388424450_
                           _tl2388524452_
                           ___splice2949829499_
                           _target2388624455_
                           _tl2388824457_))
                      (___match2953729538_
                       _e2388324447_
                       _hd2388424450_
                       _tl2388524452_
                       ___splice2949829499_
                       _target2388624455_
                       _tl2388824457_))
                  (___match2953729538_
                   _e2388324447_
                   _hd2388424450_
                   _tl2388524452_
                   ___splice2949829499_
                   _target2388624455_
                   _tl2388824457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2953729538_
                                                   _e2388324447_
                                                   _hd2388424450_
                                                   _tl2388524452_
                                                   ___splice2949829499_
                                                   _target2388624455_
                                                   _tl2388824457_))))
                                          (___match2953729538_
                                           _e2388324447_
                                           _hd2388424450_
                                           _tl2388524452_
                                           ___splice2949829499_
                                           _target2388624455_
                                           _tl2388824457_)))))))
                      (_loop2388924460_ _target2388624455_ '())))))
            (if (gx#stx-pair? ___stx2949429495_)
                (let ((_e2388324447_ (gx#stx-e ___stx2949429495_)))
                  (let ((_tl2388524452_ (##cdr _e2388324447_))
                        (_hd2388424450_ (##car _e2388324447_)))
                    (if (gx#stx-pair/null? _hd2388424450_)
                        (let ((___splice2949829499_
                               (gx#syntax-split-splice _hd2388424450_ '0)))
                          (let ((_tl2388824457_
                                 (##vector-ref ___splice2949829499_ '1))
                                (_target2388624455_
                                 (##vector-ref ___splice2949829499_ '0)))
                            (if (gx#stx-null? _tl2388824457_)
                                (___match2952529526_
                                 _e2388324447_
                                 _hd2388424450_
                                 _tl2388524452_
                                 ___splice2949829499_
                                 _target2388624455_
                                 _tl2388824457_)
                                (___match2953729538_
                                 _e2388324447_
                                 _hd2388424450_
                                 _tl2388524452_
                                 ___splice2949829499_
                                 _target2388624455_
                                 _tl2388824457_))))
                        (if (gx#stx-pair? _tl2388524452_)
                            (let ((_e2399824055_ (gx#stx-e _tl2388524452_)))
                              (let ((_tl2400024060_ (##cdr _e2399824055_))
                                    (_hd2399924058_ (##car _e2399824055_)))
                                (if (gx#stx-pair? _hd2399924058_)
                                    (let ((_e2400124063_
                                           (gx#stx-e _hd2399924058_)))
                                      (let ((_tl2400324068_
                                             (##cdr _e2400124063_))
                                            (_hd2400224066_
                                             (##car _e2400124063_)))
                                        (if (gx#identifier? _hd2400224066_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2400224066_)
                                                (if (gx#stx-pair?
                                                     _tl2400324068_)
                                                    (let ((_e2400424071_
                                                           (gx#stx-e
                                                            _tl2400324068_)))
                                                      (let ((_tl2400624076_
                                                             (##cdr _e2400424071_))
                                                            (_hd2400524074_
                                                             (##car _e2400424071_)))
                                                        (if (gx#stx-pair?
                                                             _hd2400524074_)
                                                            (let ((_e2400724079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2400524074_)))
                      (let ((_tl2400924084_ (##cdr _e2400724079_))
                            (_hd2400824082_ (##car _e2400724079_)))
                        (if (gx#identifier? _hd2400824082_)
                            (if (gx#stx-eq? '%#ref _hd2400824082_)
                                (if (gx#stx-pair? _tl2400924084_)
                                    (let ((_e2401024087_
                                           (gx#stx-e _tl2400924084_)))
                                      (let ((_tl2401224092_
                                             (##cdr _e2401024087_))
                                            (_hd2401124090_
                                             (##car _e2401024087_)))
                                        (if (gx#stx-null? _tl2401224092_)
                                            (if (gx#stx-pair? _tl2400624076_)
                                                (let ((_e2401324095_
                                                       (gx#stx-e
                                                        _tl2400624076_)))
                                                  (let ((_tl2401524100_
                                                         (##cdr _e2401324095_))
                                                        (_hd2401424098_
                                                         (##car _e2401324095_)))
                                                    (if (gx#stx-pair?
                                                         _hd2401424098_)
                                                        (let ((_e2401624103_
                                                               (gx#stx-e
                                                                _hd2401424098_)))
                                                          (let ((_tl2401824108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2401624103_))
                        (_hd2401724106_ (##car _e2401624103_)))
                    (if (gx#identifier? _hd2401724106_)
                        (if (gx#stx-eq? '%#ref _hd2401724106_)
                            (if (gx#stx-pair? _tl2401824108_)
                                (let ((_e2401924111_
                                       (gx#stx-e _tl2401824108_)))
                                  (let ((_tl2402124116_ (##cdr _e2401924111_))
                                        (_hd2402024114_ (##car _e2401924111_)))
                                    (if (gx#stx-null? _tl2402124116_)
                                        (if (gx#stx-pair? _tl2401524100_)
                                            (let ((_e2402224119_
                                                   (gx#stx-e _tl2401524100_)))
                                              (let ((_tl2402424124_
                                                     (##cdr _e2402224119_))
                                                    (_hd2402324122_
                                                     (##car _e2402224119_)))
                                                (if (gx#stx-pair?
                                                     _hd2402324122_)
                                                    (let ((_e2402524127_
                                                           (gx#stx-e
                                                            _hd2402324122_)))
                                                      (let ((_tl2402724132_
                                                             (##cdr _e2402524127_))
                                                            (_hd2402624130_
                                                             (##car _e2402524127_)))
                                                        (if (gx#identifier?
                                                             _hd2402624130_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2402624130_)
                        (if (gx#stx-pair? _tl2402724132_)
                            (let ((_e2402824135_ (gx#stx-e _tl2402724132_)))
                              (let ((_tl2403024140_ (##cdr _e2402824135_))
                                    (_hd2402924138_ (##car _e2402824135_)))
                                (if (gx#stx-null? _tl2403024140_)
                                    (if (gx#stx-null? _tl2402424124_)
                                        (if (gx#stx-null? _tl2400024060_)
                                            (___match2963529636_
                                             _e2388324447_
                                             _hd2388424450_
                                             _tl2388524452_
                                             _e2399824055_
                                             _hd2399924058_
                                             _tl2400024060_
                                             _e2400124063_
                                             _hd2400224066_
                                             _tl2400324068_
                                             _e2400424071_
                                             _hd2400524074_
                                             _tl2400624076_
                                             _e2400724079_
                                             _hd2400824082_
                                             _tl2400924084_
                                             _e2401024087_
                                             _hd2401124090_
                                             _tl2401224092_
                                             _e2401324095_
                                             _hd2401424098_
                                             _tl2401524100_
                                             _e2401624103_
                                             _hd2401724106_
                                             _tl2401824108_
                                             _e2401924111_
                                             _hd2402024114_
                                             _tl2402124116_
                                             _e2402224119_
                                             _hd2402324122_
                                             _tl2402424124_
                                             _e2402524127_
                                             _hd2402624130_
                                             _tl2402724132_
                                             _e2402824135_
                                             _hd2402924138_
                                             _tl2403024140_)
                                            (___kont2951029511_))
                                        (___kont2951029511_))
                                    (___kont2951029511_))))
                            (___kont2951029511_))
                        (___kont2951029511_))
                    (___kont2951029511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2951029511_))))
                                            (___kont2951029511_))
                                        (___kont2951029511_))))
                                (___kont2951029511_))
                            (___kont2951029511_))
                        (___kont2951029511_))))
                (___kont2951029511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2951029511_))
                                            (___kont2951029511_))))
                                    (___kont2951029511_))
                                (___kont2951029511_))
                            (___kont2951029511_))))
                    (___kont2951029511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2951029511_))
                                                (___kont2951029511_))
                                            (___kont2951029511_))))
                                    (___kont2951029511_))))
                            (___kont2951029511_)))))
                (___kont2951029511_)))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form23341_)
      (let* ((___stx2963829639_ _form23341_)
             (_g2334523469_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2963829639_))))
        (let ((___kont2964029641_
               (lambda (_L23839_ _L23840_ _L23841_)
                 (gxc#identifier-symbol _L23840_)))
              (___kont2964629647_
               (lambda (_L23687_ _L23688_ _L23689_ _L23690_)
                 (gxc#identifier-symbol _L23687_)))
              (___kont2965029651_
               (lambda (_L23554_ _L23555_ _L23556_)
                 (gxc#identifier-symbol _L23554_))))
          (let* ((___match2974729748_
                  (lambda (_e2343523474_
                           _hd2343623477_
                           _tl2343723479_
                           _e2343823482_
                           _hd2343923485_
                           _tl2344023487_
                           _e2344123490_
                           _hd2344223493_
                           _tl2344323495_
                           _e2344423498_
                           _hd2344523501_
                           _tl2344623503_
                           _e2344723506_
                           _hd2344823509_
                           _tl2344923511_
                           _e2345023514_
                           _hd2345123517_
                           _tl2345223519_
                           _e2345323522_
                           _hd2345423525_
                           _tl2345523527_
                           _e2345623530_
                           _hd2345723533_
                           _tl2345823535_
                           _e2345923538_
                           _hd2346023541_
                           _tl2346123543_)
                    (if (gx#stx-pair? _tl2345523527_)
                        (let ((_e2346223546_ (gx#stx-e _tl2345523527_)))
                          (let ((_tl2346423551_ (##cdr _e2346223546_))
                                (_hd2346323549_ (##car _e2346223546_)))
                            (if (gx#stx-null? _tl2346423551_)
                                (if (gx#stx-null? _tl2344023487_)
                                    (___kont2965029651_
                                     _hd2346023541_
                                     _hd2345123517_
                                     _hd2343623477_)
                                    (_g2334523469_))
                                (_g2334523469_))))
                        (_g2334523469_))))
                 (___match2967729678_
                  (lambda (_e2339623591_
                           _hd2339723594_
                           _tl2339823596_
                           ___splice2964829649_
                           _target2339923599_
                           _tl2340123601_)
                    (letrec ((_loop2340223604_
                              (lambda (_hd2340023607_ _arg2340623609_)
                                (if (gx#stx-pair? _hd2340023607_)
                                    (let ((_e2340323612_
                                           (gx#stx-e _hd2340023607_)))
                                      (let ((_lp-tl2340523617_
                                             (##cdr _e2340323612_))
                                            (_lp-hd2340423615_
                                             (##car _e2340323612_)))
                                        (_loop2340223604_
                                         _lp-tl2340523617_
                                         (cons _lp-hd2340423615_
                                               _arg2340623609_))))
                                    (let ((_arg2340723620_
                                           (reverse _arg2340623609_)))
                                      (if (gx#stx-pair? _tl2339823596_)
                                          (let ((_e2340823623_
                                                 (gx#stx-e _tl2339823596_)))
                                            (let ((_tl2341023628_
                                                   (##cdr _e2340823623_))
                                                  (_hd2340923626_
                                                   (##car _e2340823623_)))
                                              (if (gx#stx-pair? _hd2340923626_)
                                                  (let ((_e2341123631_
                                                         (gx#stx-e
                                                          _hd2340923626_)))
                                                    (let ((_tl2341323636_
                                                           (##cdr _e2341123631_))
                                                          (_hd2341223634_
                                                           (##car _e2341123631_)))
                                                      (if (gx#identifier?
                                                           _hd2341223634_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2341223634_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2341323636_)
                          (let ((_e2341423639_ (gx#stx-e _tl2341323636_)))
                            (let ((_tl2341623644_ (##cdr _e2341423639_))
                                  (_hd2341523642_ (##car _e2341423639_)))
                              (if (gx#stx-pair? _hd2341523642_)
                                  (let ((_e2341723647_
                                         (gx#stx-e _hd2341523642_)))
                                    (let ((_tl2341923652_
                                           (##cdr _e2341723647_))
                                          (_hd2341823650_
                                           (##car _e2341723647_)))
                                      (if (gx#identifier? _hd2341823650_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2341823650_)
                                              (if (gx#stx-pair? _tl2341923652_)
                                                  (let ((_e2342023655_
                                                         (gx#stx-e
                                                          _tl2341923652_)))
                                                    (let ((_tl2342223660_
                                                           (##cdr _e2342023655_))
                                                          (_hd2342123658_
                                                           (##car _e2342023655_)))
                                                      (if (gx#stx-null?
                                                           _tl2342223660_)
                                                          (if (gx#stx-pair?
                                                               _tl2341623644_)
                                                              (let ((_e2342323663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2341623644_)))
                        (let ((_tl2342523668_ (##cdr _e2342323663_))
                              (_hd2342423666_ (##car _e2342323663_)))
                          (if (gx#stx-pair? _hd2342423666_)
                              (let ((_e2342623671_ (gx#stx-e _hd2342423666_)))
                                (let ((_tl2342823676_ (##cdr _e2342623671_))
                                      (_hd2342723674_ (##car _e2342623671_)))
                                  (if (gx#identifier? _hd2342723674_)
                                      (if (gx#stx-eq? '%#ref _hd2342723674_)
                                          (if (gx#stx-pair? _tl2342823676_)
                                              (let ((_e2342923679_
                                                     (gx#stx-e
                                                      _tl2342823676_)))
                                                (let ((_tl2343123684_
                                                       (##cdr _e2342923679_))
                                                      (_hd2343023682_
                                                       (##car _e2342923679_)))
                                                  (if (gx#stx-null?
                                                       _tl2343123684_)
                                                      (if (gx#stx-null?
                                                           _tl2341023628_)
                                                          (___kont2964629647_
                                                           _hd2343023682_
                                                           _hd2342123658_
                                                           _tl2340123601_
                                                           _arg2340723620_)
                                                          (___match2974729748_
                                                           _e2339623591_
                                                           _hd2339723594_
                                                           _tl2339823596_
                                                           _e2340823623_
                                                           _hd2340923626_
                                                           _tl2341023628_
                                                           _e2341123631_
                                                           _hd2341223634_
                                                           _tl2341323636_
                                                           _e2341423639_
                                                           _hd2341523642_
                                                           _tl2341623644_
                                                           _e2341723647_
                                                           _hd2341823650_
                                                           _tl2341923652_
                                                           _e2342023655_
                                                           _hd2342123658_
                                                           _tl2342223660_
                                                           _e2342323663_
                                                           _hd2342423666_
                                                           _tl2342523668_
                                                           _e2342623671_
                                                           _hd2342723674_
                                                           _tl2342823676_
                                                           _e2342923679_
                                                           _hd2343023682_
                                                           _tl2343123684_))
                                                      (_g2334523469_))))
                                              (_g2334523469_))
                                          (_g2334523469_))
                                      (_g2334523469_))))
                              (_g2334523469_))))
                      (_g2334523469_))
                  (_g2334523469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2334523469_))
                                              (_g2334523469_))
                                          (_g2334523469_))))
                                  (_g2334523469_))))
                          (_g2334523469_))
                      (_g2334523469_))
                  (_g2334523469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2334523469_))))
                                          (_g2334523469_)))))))
                      (_loop2340223604_ _target2339923599_ '()))))
                 (___match2966529666_
                  (lambda (_e2335023727_
                           _hd2335123730_
                           _tl2335223732_
                           ___splice2964229643_
                           _target2335323735_
                           _tl2335523737_)
                    (letrec ((_loop2335623740_
                              (lambda (_hd2335423743_ _arg2336023745_)
                                (if (gx#stx-pair? _hd2335423743_)
                                    (let ((_e2335723748_
                                           (gx#stx-e _hd2335423743_)))
                                      (let ((_lp-tl2335923753_
                                             (##cdr _e2335723748_))
                                            (_lp-hd2335823751_
                                             (##car _e2335723748_)))
                                        (_loop2335623740_
                                         _lp-tl2335923753_
                                         (cons _lp-hd2335823751_
                                               _arg2336023745_))))
                                    (let ((_arg2336123756_
                                           (reverse _arg2336023745_)))
                                      (if (gx#stx-pair? _tl2335223732_)
                                          (let ((_e2336223759_
                                                 (gx#stx-e _tl2335223732_)))
                                            (let ((_tl2336423764_
                                                   (##cdr _e2336223759_))
                                                  (_hd2336323762_
                                                   (##car _e2336223759_)))
                                              (if (gx#stx-pair? _hd2336323762_)
                                                  (let ((_e2336523767_
                                                         (gx#stx-e
                                                          _hd2336323762_)))
                                                    (let ((_tl2336723772_
                                                           (##cdr _e2336523767_))
                                                          (_hd2336623770_
                                                           (##car _e2336523767_)))
                                                      (if (gx#identifier?
                                                           _hd2336623770_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2336623770_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2336723772_)
                          (let ((_e2336823775_ (gx#stx-e _tl2336723772_)))
                            (let ((_tl2337023780_ (##cdr _e2336823775_))
                                  (_hd2336923778_ (##car _e2336823775_)))
                              (if (gx#stx-pair? _hd2336923778_)
                                  (let ((_e2337123783_
                                         (gx#stx-e _hd2336923778_)))
                                    (let ((_tl2337323788_
                                           (##cdr _e2337123783_))
                                          (_hd2337223786_
                                           (##car _e2337123783_)))
                                      (if (gx#identifier? _hd2337223786_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2337223786_)
                                              (if (gx#stx-pair? _tl2337323788_)
                                                  (let ((_e2337423791_
                                                         (gx#stx-e
                                                          _tl2337323788_)))
                                                    (let ((_tl2337623796_
                                                           (##cdr _e2337423791_))
                                                          (_hd2337523794_
                                                           (##car _e2337423791_)))
                                                      (if (gx#stx-null?
                                                           _tl2337623796_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2337023780_)
                                                              (let ((___splice2964429645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2337023780_ '0)))
                        (let ((_tl2337923801_
                               (##vector-ref ___splice2964429645_ '1))
                              (_target2337723799_
                               (##vector-ref ___splice2964429645_ '0)))
                          (if (gx#stx-null? _tl2337923801_)
                              (letrec ((_loop2338023804_
                                        (lambda (_hd2337823807_
                                                 _xarg2338423809_)
                                          (if (gx#stx-pair? _hd2337823807_)
                                              (let ((_e2338123812_
                                                     (gx#stx-e
                                                      _hd2337823807_)))
                                                (let ((_lp-tl2338323817_
                                                       (##cdr _e2338123812_))
                                                      (_lp-hd2338223815_
                                                       (##car _e2338123812_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2338223815_)
                                                      (let ((_e2338623820_
                                                             (gx#stx-e
                                                              _lp-hd2338223815_)))
                                                        (let ((_tl2338823825_
                                                               (##cdr _e2338623820_))
                                                              (_hd2338723823_
                                                               (##car _e2338623820_)))
                                                          (if (gx#identifier?
                                                               _hd2338723823_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2338723823_)
                          (if (gx#stx-pair? _tl2338823825_)
                              (let ((_e2338923828_ (gx#stx-e _tl2338823825_)))
                                (let ((_tl2339123833_ (##cdr _e2338923828_))
                                      (_hd2339023831_ (##car _e2338923828_)))
                                  (if (gx#stx-null? _tl2339123833_)
                                      (_loop2338023804_
                                       _lp-tl2338323817_
                                       (cons _hd2339023831_ _xarg2338423809_))
                                      (___match2967729678_
                                       _e2335023727_
                                       _hd2335123730_
                                       _tl2335223732_
                                       ___splice2964229643_
                                       _target2335323735_
                                       _tl2335523737_))))
                              (___match2967729678_
                               _e2335023727_
                               _hd2335123730_
                               _tl2335223732_
                               ___splice2964229643_
                               _target2335323735_
                               _tl2335523737_))
                          (___match2967729678_
                           _e2335023727_
                           _hd2335123730_
                           _tl2335223732_
                           ___splice2964229643_
                           _target2335323735_
                           _tl2335523737_))
                      (___match2967729678_
                       _e2335023727_
                       _hd2335123730_
                       _tl2335223732_
                       ___splice2964229643_
                       _target2335323735_
                       _tl2335523737_))))
              (___match2967729678_
               _e2335023727_
               _hd2335123730_
               _tl2335223732_
               ___splice2964229643_
               _target2335323735_
               _tl2335523737_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2338523836_
                                                     (reverse _xarg2338423809_)))
                                                (if (gx#stx-null?
                                                     _tl2336423764_)
                                                    (___kont2964029641_
                                                     _xarg2338523836_
                                                     _hd2337523794_
                                                     _arg2336123756_)
                                                    (___match2967729678_
                                                     _e2335023727_
                                                     _hd2335123730_
                                                     _tl2335223732_
                                                     ___splice2964229643_
                                                     _target2335323735_
                                                     _tl2335523737_)))))))
                                (_loop2338023804_ _target2337723799_ '()))
                              (___match2967729678_
                               _e2335023727_
                               _hd2335123730_
                               _tl2335223732_
                               ___splice2964229643_
                               _target2335323735_
                               _tl2335523737_))))
                      (___match2967729678_
                       _e2335023727_
                       _hd2335123730_
                       _tl2335223732_
                       ___splice2964229643_
                       _target2335323735_
                       _tl2335523737_))
                  (___match2967729678_
                   _e2335023727_
                   _hd2335123730_
                   _tl2335223732_
                   ___splice2964229643_
                   _target2335323735_
                   _tl2335523737_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2967729678_
                                                   _e2335023727_
                                                   _hd2335123730_
                                                   _tl2335223732_
                                                   ___splice2964229643_
                                                   _target2335323735_
                                                   _tl2335523737_))
                                              (___match2967729678_
                                               _e2335023727_
                                               _hd2335123730_
                                               _tl2335223732_
                                               ___splice2964229643_
                                               _target2335323735_
                                               _tl2335523737_))
                                          (___match2967729678_
                                           _e2335023727_
                                           _hd2335123730_
                                           _tl2335223732_
                                           ___splice2964229643_
                                           _target2335323735_
                                           _tl2335523737_))))
                                  (___match2967729678_
                                   _e2335023727_
                                   _hd2335123730_
                                   _tl2335223732_
                                   ___splice2964229643_
                                   _target2335323735_
                                   _tl2335523737_))))
                          (___match2967729678_
                           _e2335023727_
                           _hd2335123730_
                           _tl2335223732_
                           ___splice2964229643_
                           _target2335323735_
                           _tl2335523737_))
                      (___match2967729678_
                       _e2335023727_
                       _hd2335123730_
                       _tl2335223732_
                       ___splice2964229643_
                       _target2335323735_
                       _tl2335523737_))
                  (___match2967729678_
                   _e2335023727_
                   _hd2335123730_
                   _tl2335223732_
                   ___splice2964229643_
                   _target2335323735_
                   _tl2335523737_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2967729678_
                                                   _e2335023727_
                                                   _hd2335123730_
                                                   _tl2335223732_
                                                   ___splice2964229643_
                                                   _target2335323735_
                                                   _tl2335523737_))))
                                          (___match2967729678_
                                           _e2335023727_
                                           _hd2335123730_
                                           _tl2335223732_
                                           ___splice2964229643_
                                           _target2335323735_
                                           _tl2335523737_)))))))
                      (_loop2335623740_ _target2335323735_ '())))))
            (if (gx#stx-pair? ___stx2963829639_)
                (let ((_e2335023727_ (gx#stx-e ___stx2963829639_)))
                  (let ((_tl2335223732_ (##cdr _e2335023727_))
                        (_hd2335123730_ (##car _e2335023727_)))
                    (if (gx#stx-pair/null? _hd2335123730_)
                        (let ((___splice2964229643_
                               (gx#syntax-split-splice _hd2335123730_ '0)))
                          (let ((_tl2335523737_
                                 (##vector-ref ___splice2964229643_ '1))
                                (_target2335323735_
                                 (##vector-ref ___splice2964229643_ '0)))
                            (if (gx#stx-null? _tl2335523737_)
                                (___match2966529666_
                                 _e2335023727_
                                 _hd2335123730_
                                 _tl2335223732_
                                 ___splice2964229643_
                                 _target2335323735_
                                 _tl2335523737_)
                                (___match2967729678_
                                 _e2335023727_
                                 _hd2335123730_
                                 _tl2335223732_
                                 ___splice2964229643_
                                 _target2335323735_
                                 _tl2335523737_))))
                        (if (gx#stx-pair? _tl2335223732_)
                            (let ((_e2343823482_ (gx#stx-e _tl2335223732_)))
                              (let ((_tl2344023487_ (##cdr _e2343823482_))
                                    (_hd2343923485_ (##car _e2343823482_)))
                                (if (gx#stx-pair? _hd2343923485_)
                                    (let ((_e2344123490_
                                           (gx#stx-e _hd2343923485_)))
                                      (let ((_tl2344323495_
                                             (##cdr _e2344123490_))
                                            (_hd2344223493_
                                             (##car _e2344123490_)))
                                        (if (gx#identifier? _hd2344223493_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2344223493_)
                                                (if (gx#stx-pair?
                                                     _tl2344323495_)
                                                    (let ((_e2344423498_
                                                           (gx#stx-e
                                                            _tl2344323495_)))
                                                      (let ((_tl2344623503_
                                                             (##cdr _e2344423498_))
                                                            (_hd2344523501_
                                                             (##car _e2344423498_)))
                                                        (if (gx#stx-pair?
                                                             _hd2344523501_)
                                                            (let ((_e2344723506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2344523501_)))
                      (let ((_tl2344923511_ (##cdr _e2344723506_))
                            (_hd2344823509_ (##car _e2344723506_)))
                        (if (gx#identifier? _hd2344823509_)
                            (if (gx#stx-eq? '%#ref _hd2344823509_)
                                (if (gx#stx-pair? _tl2344923511_)
                                    (let ((_e2345023514_
                                           (gx#stx-e _tl2344923511_)))
                                      (let ((_tl2345223519_
                                             (##cdr _e2345023514_))
                                            (_hd2345123517_
                                             (##car _e2345023514_)))
                                        (if (gx#stx-null? _tl2345223519_)
                                            (if (gx#stx-pair? _tl2344623503_)
                                                (let ((_e2345323522_
                                                       (gx#stx-e
                                                        _tl2344623503_)))
                                                  (let ((_tl2345523527_
                                                         (##cdr _e2345323522_))
                                                        (_hd2345423525_
                                                         (##car _e2345323522_)))
                                                    (if (gx#stx-pair?
                                                         _hd2345423525_)
                                                        (let ((_e2345623530_
                                                               (gx#stx-e
                                                                _hd2345423525_)))
                                                          (let ((_tl2345823535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2345623530_))
                        (_hd2345723533_ (##car _e2345623530_)))
                    (if (gx#identifier? _hd2345723533_)
                        (if (gx#stx-eq? '%#ref _hd2345723533_)
                            (if (gx#stx-pair? _tl2345823535_)
                                (let ((_e2345923538_
                                       (gx#stx-e _tl2345823535_)))
                                  (let ((_tl2346123543_ (##cdr _e2345923538_))
                                        (_hd2346023541_ (##car _e2345923538_)))
                                    (if (gx#stx-null? _tl2346123543_)
                                        (if (gx#stx-pair? _tl2345523527_)
                                            (let ((_e2346223546_
                                                   (gx#stx-e _tl2345523527_)))
                                              (let ((_tl2346423551_
                                                     (##cdr _e2346223546_))
                                                    (_hd2346323549_
                                                     (##car _e2346223546_)))
                                                (if (gx#stx-null?
                                                     _tl2346423551_)
                                                    (if (gx#stx-null?
                                                         _tl2344023487_)
                                                        (___kont2965029651_
                                                         _hd2346023541_
                                                         _hd2345123517_
                                                         _hd2335123730_)
                                                        (_g2334523469_))
                                                    (_g2334523469_))))
                                            (_g2334523469_))
                                        (_g2334523469_))))
                                (_g2334523469_))
                            (_g2334523469_))
                        (_g2334523469_))))
                (_g2334523469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2334523469_))
                                            (_g2334523469_))))
                                    (_g2334523469_))
                                (_g2334523469_))
                            (_g2334523469_))))
                    (_g2334523469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2334523469_))
                                                (_g2334523469_))
                                            (_g2334523469_))))
                                    (_g2334523469_))))
                            (_g2334523469_)))))
                (_g2334523469_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form23145_)
      (let* ((_g2314723161_
              (lambda (_g2314823158_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2314823158_)))
             (_g2314623338_
              (lambda (_g2314823164_)
                (if (gx#stx-pair? _g2314823164_)
                    (let ((_e2315123166_ (gx#stx-e _g2314823164_)))
                      (let ((_hd2315223169_ (##car _e2315123166_))
                            (_tl2315323171_ (##cdr _e2315123166_)))
                        (if (gx#stx-pair? _tl2315323171_)
                            (let ((_e2315423174_ (gx#stx-e _tl2315323171_)))
                              (let ((_hd2315523177_ (##car _e2315423174_))
                                    (_tl2315623179_ (##cdr _e2315423174_)))
                                (if (gx#stx-null? _tl2315623179_)
                                    ((lambda (_L23182_ _L23183_)
                                       (let* ((___stx2976029761_ _L23183_)
                                              (_g2319823226_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx2976029761_))))
                                         (let ((___kont2976229763_
                                                (lambda (_L23317_)
                                                  (length (foldr1 (lambda (_g2332723330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2332823332_)
                            (cons _g2332723330_ _g2332823332_))
                          '()
                          _L23317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2976629767_
                                                (lambda (_L23268_ _L23269_)
                                                  (cons (length (foldr1 (lambda (_g2328023283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g2328123285_)
                                  (cons _g2328023283_ _g2328123285_))
                                '()
                                _L23269_))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2977029771_
                                                (lambda (_L23231_)
                                                  (cons '0 '()))))
                                           (let* ((___match2978529786_
                                                   (lambda (___splice2976829769_
                                                            _target2321223244_
                                                            _tl2321423246_)
                                                     (letrec ((_loop2321523249_
                                                               (lambda (_hd2321323252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2321923254_)
                         (if (gx#stx-pair? _hd2321323252_)
                             (let ((_e2321623257_ (gx#stx-e _hd2321323252_)))
                               (let ((_lp-tl2321823262_ (##cdr _e2321623257_))
                                     (_lp-hd2321723260_ (##car _e2321623257_)))
                                 (_loop2321523249_
                                  _lp-tl2321823262_
                                  (cons _lp-hd2321723260_ _arg2321923254_))))
                             (let ((_arg2322023265_ (reverse _arg2321923254_)))
                               (___kont2976629767_
                                _tl2321423246_
                                _arg2322023265_))))))
               (_loop2321523249_ _target2321223244_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2977929780_
                                                   (lambda (___splice2976429765_
                                                            _target2320123293_
                                                            _tl2320323295_)
                                                     (letrec ((_loop2320423298_
                                                               (lambda (_hd2320223301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2320823303_)
                         (if (gx#stx-pair? _hd2320223301_)
                             (let ((_e2320523306_ (gx#stx-e _hd2320223301_)))
                               (let ((_lp-tl2320723311_ (##cdr _e2320523306_))
                                     (_lp-hd2320623309_ (##car _e2320523306_)))
                                 (_loop2320423298_
                                  _lp-tl2320723311_
                                  (cons _lp-hd2320623309_ _arg2320823303_))))
                             (let ((_arg2320923314_ (reverse _arg2320823303_)))
                               (___kont2976229763_ _arg2320923314_))))))
               (_loop2320423298_ _target2320123293_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  ___stx2976029761_)
                                                 (let ((___splice2976429765_
                                                        (gx#syntax-split-splice
                                                         ___stx2976029761_
                                                         '0)))
                                                   (let ((_tl2320323295_
                                                          (##vector-ref
                                                           ___splice2976429765_
                                                           '1))
                                                         (_target2320123293_
                                                          (##vector-ref
                                                           ___splice2976429765_
                                                           '0)))
                                                     (if (gx#stx-null?
                                                          _tl2320323295_)
                                                         (___match2977929780_
                                                          ___splice2976429765_
                                                          _target2320123293_
                                                          _tl2320323295_)
                                                         (___match2978529786_
                                                          ___splice2976429765_
                                                          _target2320123293_
                                                          _tl2320323295_))))
                                                 (___kont2977029771_
                                                  ___stx2976029761_))))))
                                     _hd2315523177_
                                     _hd2315223169_)
                                    (_g2314723161_ _g2314823164_))))
                            (_g2314723161_ _g2314823164_))))
                    (_g2314723161_ _g2314823164_)))))
        (_g2314623338_ _form23145_))))
  (define gxc#lambda-expr?
    (lambda (_expr23098_)
      (let* ((___stx2978829789_ _expr23098_)
             (_g2310123111_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2978829789_))))
        (let ((___kont2979029791_ (lambda (_L23131_) '#t))
              (___kont2979229793_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2978829789_)
              (let ((_e2310423123_ (gx#stx-e ___stx2978829789_)))
                (let ((_tl2310623128_ (##cdr _e2310423123_))
                      (_hd2310523126_ (##car _e2310423123_)))
                  (if (gx#identifier? _hd2310523126_)
                      (if (gx#stx-eq? '%#lambda _hd2310523126_)
                          (___kont2979029791_ _tl2310623128_)
                          (___kont2979229793_))
                      (___kont2979229793_))))
              (___kont2979229793_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr23051_)
      (let* ((___stx2980629807_ _expr23051_)
             (_g2305423064_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2980629807_))))
        (let ((___kont2980829809_ (lambda (_L23084_) '#t))
              (___kont2981029811_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2980629807_)
              (let ((_e2305723076_ (gx#stx-e ___stx2980629807_)))
                (let ((_tl2305923081_ (##cdr _e2305723076_))
                      (_hd2305823079_ (##car _e2305723076_)))
                  (if (gx#identifier? _hd2305823079_)
                      (if (gx#stx-eq? '%#case-lambda _hd2305823079_)
                          (___kont2980829809_ _tl2305923081_)
                          (___kont2981029811_))
                      (___kont2981029811_))))
              (___kont2981029811_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr22920_)
      (let* ((___stx2982429825_ _expr22920_)
             (_g2292322953_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2982429825_))))
        (let ((___kont2982629827_
               (lambda (_L23021_ _L23022_ _L23023_)
                 (if (gx#identifier? _L23023_)
                     (if (gxc#lambda-expr? _L23022_)
                         (gxc#case-lambda-expr? _L23021_)
                         '#f)
                     '#f)))
              (___kont2982829829_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2982429825_)
              (let ((_e2292822965_ (gx#stx-e ___stx2982429825_)))
                (let ((_tl2293022970_ (##cdr _e2292822965_))
                      (_hd2292922968_ (##car _e2292822965_)))
                  (if (gx#identifier? _hd2292922968_)
                      (if (gx#stx-eq? '%#let-values _hd2292922968_)
                          (if (gx#stx-pair? _tl2293022970_)
                              (let ((_e2293122973_ (gx#stx-e _tl2293022970_)))
                                (let ((_tl2293322978_ (##cdr _e2293122973_))
                                      (_hd2293222976_ (##car _e2293122973_)))
                                  (if (gx#stx-pair? _hd2293222976_)
                                      (let ((_e2293422981_
                                             (gx#stx-e _hd2293222976_)))
                                        (let ((_tl2293622986_
                                               (##cdr _e2293422981_))
                                              (_hd2293522984_
                                               (##car _e2293422981_)))
                                          (if (gx#stx-pair? _hd2293522984_)
                                              (let ((_e2293722989_
                                                     (gx#stx-e
                                                      _hd2293522984_)))
                                                (let ((_tl2293922994_
                                                       (##cdr _e2293722989_))
                                                      (_hd2293822992_
                                                       (##car _e2293722989_)))
                                                  (if (gx#stx-pair?
                                                       _hd2293822992_)
                                                      (let ((_e2294022997_
                                                             (gx#stx-e
                                                              _hd2293822992_)))
                                                        (let ((_tl2294223002_
                                                               (##cdr _e2294022997_))
                                                              (_hd2294123000_
                                                               (##car _e2294022997_)))
                                                          (if (gx#stx-null?
                                                               _tl2294223002_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2293922994_)
                          (let ((_e2294323005_ (gx#stx-e _tl2293922994_)))
                            (let ((_tl2294523010_ (##cdr _e2294323005_))
                                  (_hd2294423008_ (##car _e2294323005_)))
                              (if (gx#stx-null? _tl2294523010_)
                                  (if (gx#stx-null? _tl2293622986_)
                                      (if (gx#stx-pair? _tl2293322978_)
                                          (let ((_e2294623013_
                                                 (gx#stx-e _tl2293322978_)))
                                            (let ((_tl2294823018_
                                                   (##cdr _e2294623013_))
                                                  (_hd2294723016_
                                                   (##car _e2294623013_)))
                                              (if (gx#stx-null? _tl2294823018_)
                                                  (___kont2982629827_
                                                   _hd2294723016_
                                                   _hd2294423008_
                                                   _hd2294123000_)
                                                  (___kont2982829829_))))
                                          (___kont2982829829_))
                                      (___kont2982829829_))
                                  (___kont2982829829_))))
                          (___kont2982829829_))
                      (___kont2982829829_))))
              (___kont2982829829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2982829829_))))
                                      (___kont2982829829_))))
                              (___kont2982829829_))
                          (___kont2982829829_))
                      (___kont2982829829_))))
              (___kont2982829829_))))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr22245_)
      (let* ((___stx2988629887_ _expr22245_)
             (_g2224822406_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2988629887_))))
        (let ((___kont2988829889_
               (lambda (_L22794_
                        _L22795_
                        _L22796_
                        _L22797_
                        _L22798_
                        _L22799_
                        _L22800_
                        _L22801_
                        _L22802_
                        _L22803_
                        _L22804_)
                 (if (gxc#runtime-identifier=? _L22801_ 'apply)
                     (if (gxc#runtime-identifier=? _L22797_ 'apply)
                         (if (gxc#runtime-identifier=?
                              _L22796_
                              'keyword-dispatch)
                             (if (gx#free-identifier=? _L22804_ _L22795_)
                                 (if (gx#free-identifier=? _L22803_ _L22800_)
                                     (if (gx#free-identifier=?
                                          _L22798_
                                          _L22794_)
                                         (gx#free-identifier=?
                                          _L22802_
                                          _L22799_)
                                         '#f)
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)))
              (___kont2989029891_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2988629887_)
              (let ((_e2226122418_ (gx#stx-e ___stx2988629887_)))
                (let ((_tl2226322423_ (##cdr _e2226122418_))
                      (_hd2226222421_ (##car _e2226122418_)))
                  (if (gx#identifier? _hd2226222421_)
                      (if (gx#stx-eq? '%#let-values _hd2226222421_)
                          (if (gx#stx-pair? _tl2226322423_)
                              (let ((_e2226422426_ (gx#stx-e _tl2226322423_)))
                                (let ((_tl2226622431_ (##cdr _e2226422426_))
                                      (_hd2226522429_ (##car _e2226422426_)))
                                  (if (gx#stx-pair? _hd2226522429_)
                                      (let ((_e2226722434_
                                             (gx#stx-e _hd2226522429_)))
                                        (let ((_tl2226922439_
                                               (##cdr _e2226722434_))
                                              (_hd2226822437_
                                               (##car _e2226722434_)))
                                          (if (gx#stx-pair? _hd2226822437_)
                                              (let ((_e2227022442_
                                                     (gx#stx-e
                                                      _hd2226822437_)))
                                                (let ((_tl2227222447_
                                                       (##cdr _e2227022442_))
                                                      (_hd2227122445_
                                                       (##car _e2227022442_)))
                                                  (if (gx#stx-pair?
                                                       _hd2227122445_)
                                                      (let ((_e2227322450_
                                                             (gx#stx-e
                                                              _hd2227122445_)))
                                                        (let ((_tl2227522455_
                                                               (##cdr _e2227322450_))
                                                              (_hd2227422453_
                                                               (##car _e2227322450_)))
                                                          (if (gx#stx-null?
                                                               _tl2227522455_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2227222447_)
                          (let ((_e2227622458_ (gx#stx-e _tl2227222447_)))
                            (let ((_tl2227822463_ (##cdr _e2227622458_))
                                  (_hd2227722461_ (##car _e2227622458_)))
                              (if (gx#stx-pair? _hd2227722461_)
                                  (let ((_e2227922466_
                                         (gx#stx-e _hd2227722461_)))
                                    (let ((_tl2228122471_
                                           (##cdr _e2227922466_))
                                          (_hd2228022469_
                                           (##car _e2227922466_)))
                                      (if (gx#identifier? _hd2228022469_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd2228022469_)
                                              (if (gx#stx-pair? _tl2228122471_)
                                                  (let ((_e2228222474_
                                                         (gx#stx-e
                                                          _tl2228122471_)))
                                                    (let ((_tl2228422479_
                                                           (##cdr _e2228222474_))
                                                          (_hd2228322477_
                                                           (##car _e2228222474_)))
                                                      (if (gx#stx-pair?
                                                           _hd2228322477_)
                                                          (let ((_e2228522482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2228322477_)))
                    (let ((_tl2228722487_ (##cdr _e2228522482_))
                          (_hd2228622485_ (##car _e2228522482_)))
                      (if (gx#stx-pair? _hd2228622485_)
                          (let ((_e2228822490_ (gx#stx-e _hd2228622485_)))
                            (let ((_tl2229022495_ (##cdr _e2228822490_))
                                  (_hd2228922493_ (##car _e2228822490_)))
                              (if (gx#stx-pair? _hd2228922493_)
                                  (let ((_e2229122498_
                                         (gx#stx-e _hd2228922493_)))
                                    (let ((_tl2229322503_
                                           (##cdr _e2229122498_))
                                          (_hd2229222501_
                                           (##car _e2229122498_)))
                                      (if (gx#stx-null? _tl2229322503_)
                                          (if (gx#stx-pair? _tl2229022495_)
                                              (let ((_e2229422506_
                                                     (gx#stx-e
                                                      _tl2229022495_)))
                                                (let ((_tl2229622511_
                                                       (##cdr _e2229422506_))
                                                      (_hd2229522509_
                                                       (##car _e2229422506_)))
                                                  (if (gx#stx-null?
                                                       _tl2229622511_)
                                                      (if (gx#stx-null?
                                                           _tl2228722487_)
                                                          (if (gx#stx-pair?
                                                               _tl2228422479_)
                                                              (let ((_e2229722514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2228422479_)))
                        (let ((_tl2229922519_ (##cdr _e2229722514_))
                              (_hd2229822517_ (##car _e2229722514_)))
                          (if (gx#stx-pair? _hd2229822517_)
                              (let ((_e2230022522_ (gx#stx-e _hd2229822517_)))
                                (let ((_tl2230222527_ (##cdr _e2230022522_))
                                      (_hd2230122525_ (##car _e2230022522_)))
                                  (if (gx#identifier? _hd2230122525_)
                                      (if (gx#stx-eq? '%#lambda _hd2230122525_)
                                          (if (gx#stx-pair? _tl2230222527_)
                                              (let ((_e2230322530_
                                                     (gx#stx-e
                                                      _tl2230222527_)))
                                                (let ((_tl2230522535_
                                                       (##cdr _e2230322530_))
                                                      (_hd2230422533_
                                                       (##car _e2230322530_)))
                                                  (if (gx#stx-pair?
                                                       _hd2230422533_)
                                                      (let ((_e2230622538_
                                                             (gx#stx-e
                                                              _hd2230422533_)))
                                                        (let ((_tl2230822543_
                                                               (##cdr _e2230622538_))
                                                              (_hd2230722541_
                                                               (##car _e2230622538_)))
                                                          (if (gx#stx-pair?
                                                               _tl2230522535_)
                                                              (let ((_e2230922546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2230522535_)))
                        (let ((_tl2231122551_ (##cdr _e2230922546_))
                              (_hd2231022549_ (##car _e2230922546_)))
                          (if (gx#stx-pair? _hd2231022549_)
                              (let ((_e2231222554_ (gx#stx-e _hd2231022549_)))
                                (let ((_tl2231422559_ (##cdr _e2231222554_))
                                      (_hd2231322557_ (##car _e2231222554_)))
                                  (if (gx#identifier? _hd2231322557_)
                                      (if (gx#stx-eq? '%#call _hd2231322557_)
                                          (if (gx#stx-pair? _tl2231422559_)
                                              (let ((_e2231522562_
                                                     (gx#stx-e
                                                      _tl2231422559_)))
                                                (let ((_tl2231722567_
                                                       (##cdr _e2231522562_))
                                                      (_hd2231622565_
                                                       (##car _e2231522562_)))
                                                  (if (gx#stx-pair?
                                                       _hd2231622565_)
                                                      (let ((_e2231822570_
                                                             (gx#stx-e
                                                              _hd2231622565_)))
                                                        (let ((_tl2232022575_
                                                               (##cdr _e2231822570_))
                                                              (_hd2231922573_
                                                               (##car _e2231822570_)))
                                                          (if (gx#identifier?
                                                               _hd2231922573_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2231922573_)
                          (if (gx#stx-pair? _tl2232022575_)
                              (let ((_e2232122578_ (gx#stx-e _tl2232022575_)))
                                (let ((_tl2232322583_ (##cdr _e2232122578_))
                                      (_hd2232222581_ (##car _e2232122578_)))
                                  (if (gx#stx-null? _tl2232322583_)
                                      (if (gx#stx-pair? _tl2231722567_)
                                          (let ((_e2232422586_
                                                 (gx#stx-e _tl2231722567_)))
                                            (let ((_tl2232622591_
                                                   (##cdr _e2232422586_))
                                                  (_hd2232522589_
                                                   (##car _e2232422586_)))
                                              (if (gx#stx-pair? _hd2232522589_)
                                                  (let ((_e2232722594_
                                                         (gx#stx-e
                                                          _hd2232522589_)))
                                                    (let ((_tl2232922599_
                                                           (##cdr _e2232722594_))
                                                          (_hd2232822597_
                                                           (##car _e2232722594_)))
                                                      (if (gx#identifier?
                                                           _hd2232822597_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2232822597_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2232922599_)
                          (let ((_e2233022602_ (gx#stx-e _tl2232922599_)))
                            (let ((_tl2233222607_ (##cdr _e2233022602_))
                                  (_hd2233122605_ (##car _e2233022602_)))
                              (if (gx#stx-null? _tl2233222607_)
                                  (if (gx#stx-pair? _tl2232622591_)
                                      (let ((_e2233322610_
                                             (gx#stx-e _tl2232622591_)))
                                        (let ((_tl2233522615_
                                               (##cdr _e2233322610_))
                                              (_hd2233422613_
                                               (##car _e2233322610_)))
                                          (if (gx#stx-pair? _hd2233422613_)
                                              (let ((_e2233622618_
                                                     (gx#stx-e
                                                      _hd2233422613_)))
                                                (let ((_tl2233822623_
                                                       (##cdr _e2233622618_))
                                                      (_hd2233722621_
                                                       (##car _e2233622618_)))
                                                  (if (gx#identifier?
                                                       _hd2233722621_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2233722621_)
                                                          (if (gx#stx-pair?
                                                               _tl2233822623_)
                                                              (let ((_e2233922626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2233822623_)))
                        (let ((_tl2234122631_ (##cdr _e2233922626_))
                              (_hd2234022629_ (##car _e2233922626_)))
                          (if (gx#stx-null? _tl2234122631_)
                              (if (gx#stx-null? _tl2231122551_)
                                  (if (gx#stx-null? _tl2229922519_)
                                      (if (gx#stx-null? _tl2227822463_)
                                          (if (gx#stx-null? _tl2226922439_)
                                              (if (gx#stx-pair? _tl2226622431_)
                                                  (let ((_e2234222634_
                                                         (gx#stx-e
                                                          _tl2226622431_)))
                                                    (let ((_tl2234422639_
                                                           (##cdr _e2234222634_))
                                                          (_hd2234322637_
                                                           (##car _e2234222634_)))
                                                      (if (gx#stx-pair?
                                                           _hd2234322637_)
                                                          (let ((_e2234522642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2234322637_)))
                    (let ((_tl2234722647_ (##cdr _e2234522642_))
                          (_hd2234622645_ (##car _e2234522642_)))
                      (if (gx#identifier? _hd2234622645_)
                          (if (gx#stx-eq? '%#lambda _hd2234622645_)
                              (if (gx#stx-pair? _tl2234722647_)
                                  (let ((_e2234822650_
                                         (gx#stx-e _tl2234722647_)))
                                    (let ((_tl2235022655_
                                           (##cdr _e2234822650_))
                                          (_hd2234922653_
                                           (##car _e2234822650_)))
                                      (if (gx#stx-pair? _tl2235022655_)
                                          (let ((_e2235122658_
                                                 (gx#stx-e _tl2235022655_)))
                                            (let ((_tl2235322663_
                                                   (##cdr _e2235122658_))
                                                  (_hd2235222661_
                                                   (##car _e2235122658_)))
                                              (if (gx#stx-pair? _hd2235222661_)
                                                  (let ((_e2235422666_
                                                         (gx#stx-e
                                                          _hd2235222661_)))
                                                    (let ((_tl2235622671_
                                                           (##cdr _e2235422666_))
                                                          (_hd2235522669_
                                                           (##car _e2235422666_)))
                                                      (if (gx#identifier?
                                                           _hd2235522669_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2235522669_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2235622671_)
                          (let ((_e2235722674_ (gx#stx-e _tl2235622671_)))
                            (let ((_tl2235922679_ (##cdr _e2235722674_))
                                  (_hd2235822677_ (##car _e2235722674_)))
                              (if (gx#stx-pair? _hd2235822677_)
                                  (let ((_e2236022682_
                                         (gx#stx-e _hd2235822677_)))
                                    (let ((_tl2236222687_
                                           (##cdr _e2236022682_))
                                          (_hd2236122685_
                                           (##car _e2236022682_)))
                                      (if (gx#identifier? _hd2236122685_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2236122685_)
                                              (if (gx#stx-pair? _tl2236222687_)
                                                  (let ((_e2236322690_
                                                         (gx#stx-e
                                                          _tl2236222687_)))
                                                    (let ((_tl2236522695_
                                                           (##cdr _e2236322690_))
                                                          (_hd2236422693_
                                                           (##car _e2236322690_)))
                                                      (if (gx#stx-null?
                                                           _tl2236522695_)
                                                          (if (gx#stx-pair?
                                                               _tl2235922679_)
                                                              (let ((_e2236622698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2235922679_)))
                        (let ((_tl2236822703_ (##cdr _e2236622698_))
                              (_hd2236722701_ (##car _e2236622698_)))
                          (if (gx#stx-pair? _hd2236722701_)
                              (let ((_e2236922706_ (gx#stx-e _hd2236722701_)))
                                (let ((_tl2237122711_ (##cdr _e2236922706_))
                                      (_hd2237022709_ (##car _e2236922706_)))
                                  (if (gx#identifier? _hd2237022709_)
                                      (if (gx#stx-eq? '%#ref _hd2237022709_)
                                          (if (gx#stx-pair? _tl2237122711_)
                                              (let ((_e2237222714_
                                                     (gx#stx-e
                                                      _tl2237122711_)))
                                                (let ((_tl2237422719_
                                                       (##cdr _e2237222714_))
                                                      (_hd2237322717_
                                                       (##car _e2237222714_)))
                                                  (if (gx#stx-null?
                                                       _tl2237422719_)
                                                      (if (gx#stx-pair?
                                                           _tl2236822703_)
                                                          (let ((_e2237522722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2236822703_)))
                    (let ((_tl2237722727_ (##cdr _e2237522722_))
                          (_hd2237622725_ (##car _e2237522722_)))
                      (if (gx#stx-pair? _hd2237622725_)
                          (let ((_e2237822730_ (gx#stx-e _hd2237622725_)))
                            (let ((_tl2238022735_ (##cdr _e2237822730_))
                                  (_hd2237922733_ (##car _e2237822730_)))
                              (if (gx#identifier? _hd2237922733_)
                                  (if (gx#stx-eq? '%#quote _hd2237922733_)
                                      (if (gx#stx-pair? _tl2238022735_)
                                          (let ((_e2238122738_
                                                 (gx#stx-e _tl2238022735_)))
                                            (let ((_tl2238322743_
                                                   (##cdr _e2238122738_))
                                                  (_hd2238222741_
                                                   (##car _e2238122738_)))
                                              (if (gx#stx-null? _tl2238322743_)
                                                  (if (gx#stx-pair?
                                                       _tl2237722727_)
                                                      (let ((_e2238422746_
                                                             (gx#stx-e
                                                              _tl2237722727_)))
                                                        (let ((_tl2238622751_
                                                               (##cdr _e2238422746_))
                                                              (_hd2238522749_
                                                               (##car _e2238422746_)))
                                                          (if (gx#stx-pair?
                                                               _hd2238522749_)
                                                              (let ((_e2238722754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2238522749_)))
                        (let ((_tl2238922759_ (##cdr _e2238722754_))
                              (_hd2238822757_ (##car _e2238722754_)))
                          (if (gx#identifier? _hd2238822757_)
                              (if (gx#stx-eq? '%#ref _hd2238822757_)
                                  (if (gx#stx-pair? _tl2238922759_)
                                      (let ((_e2239022762_
                                             (gx#stx-e _tl2238922759_)))
                                        (let ((_tl2239222767_
                                               (##cdr _e2239022762_))
                                              (_hd2239122765_
                                               (##car _e2239022762_)))
                                          (if (gx#stx-null? _tl2239222767_)
                                              (if (gx#stx-pair? _tl2238622751_)
                                                  (let ((_e2239322770_
                                                         (gx#stx-e
                                                          _tl2238622751_)))
                                                    (let ((_tl2239522775_
                                                           (##cdr _e2239322770_))
                                                          (_hd2239422773_
                                                           (##car _e2239322770_)))
                                                      (if (gx#stx-pair?
                                                           _hd2239422773_)
                                                          (let ((_e2239622778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2239422773_)))
                    (let ((_tl2239822783_ (##cdr _e2239622778_))
                          (_hd2239722781_ (##car _e2239622778_)))
                      (if (gx#identifier? _hd2239722781_)
                          (if (gx#stx-eq? '%#ref _hd2239722781_)
                              (if (gx#stx-pair? _tl2239822783_)
                                  (let ((_e2239922786_
                                         (gx#stx-e _tl2239822783_)))
                                    (let ((_tl2240122791_
                                           (##cdr _e2239922786_))
                                          (_hd2240022789_
                                           (##car _e2239922786_)))
                                      (if (gx#stx-null? _tl2240122791_)
                                          (if (gx#stx-null? _tl2239522775_)
                                              (if (gx#stx-null? _tl2235322663_)
                                                  (if (gx#stx-null?
                                                       _tl2234422639_)
                                                      (___kont2988829889_
                                                       _hd2240022789_
                                                       _hd2239122765_
                                                       _hd2237322717_
                                                       _hd2236422693_
                                                       _hd2234922653_
                                                       _hd2234022629_
                                                       _hd2233122605_
                                                       _hd2232222581_
                                                       _hd2230722541_
                                                       _hd2229222501_
                                                       _hd2227422453_)
                                                      (___kont2989029891_))
                                                  (___kont2989029891_))
                                              (___kont2989029891_))
                                          (___kont2989029891_))))
                                  (___kont2989029891_))
                              (___kont2989029891_))
                          (___kont2989029891_))))
                  (___kont2989029891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2989029891_))
                                              (___kont2989029891_))))
                                      (___kont2989029891_))
                                  (___kont2989029891_))
                              (___kont2989029891_))))
                      (___kont2989029891_))))
              (___kont2989029891_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2989029891_))))
                                          (___kont2989029891_))
                                      (___kont2989029891_))
                                  (___kont2989029891_))))
                          (___kont2989029891_))))
                  (___kont2989029891_))
              (___kont2989029891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2989029891_))
                                          (___kont2989029891_))
                                      (___kont2989029891_))))
                              (___kont2989029891_))))
                      (___kont2989029891_))
                  (___kont2989029891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2989029891_))
                                              (___kont2989029891_))
                                          (___kont2989029891_))))
                                  (___kont2989029891_))))
                          (___kont2989029891_))
                      (___kont2989029891_))
                  (___kont2989029891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2989029891_))))
                                          (___kont2989029891_))))
                                  (___kont2989029891_))
                              (___kont2989029891_))
                          (___kont2989029891_))))
                  (___kont2989029891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2989029891_))
                                              (___kont2989029891_))
                                          (___kont2989029891_))
                                      (___kont2989029891_))
                                  (___kont2989029891_))
                              (___kont2989029891_))))
                      (___kont2989029891_))
                  (___kont2989029891_))
              (___kont2989029891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2989029891_))))
                                      (___kont2989029891_))
                                  (___kont2989029891_))))
                          (___kont2989029891_))
                      (___kont2989029891_))
                  (___kont2989029891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2989029891_))))
                                          (___kont2989029891_))
                                      (___kont2989029891_))))
                              (___kont2989029891_))
                          (___kont2989029891_))
                      (___kont2989029891_))))
              (___kont2989029891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2989029891_))
                                          (___kont2989029891_))
                                      (___kont2989029891_))))
                              (___kont2989029891_))))
                      (___kont2989029891_))))
              (___kont2989029891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2989029891_))
                                          (___kont2989029891_))
                                      (___kont2989029891_))))
                              (___kont2989029891_))))
                      (___kont2989029891_))
                  (___kont2989029891_))
              (___kont2989029891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2989029891_))
                                          (___kont2989029891_))))
                                  (___kont2989029891_))))
                          (___kont2989029891_))))
                  (___kont2989029891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2989029891_))
                                              (___kont2989029891_))
                                          (___kont2989029891_))))
                                  (___kont2989029891_))))
                          (___kont2989029891_))
                      (___kont2989029891_))))
              (___kont2989029891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2989029891_))))
                                      (___kont2989029891_))))
                              (___kont2989029891_))
                          (___kont2989029891_))
                      (___kont2989029891_))))
              (___kont2989029891_))))))
  (define gxc#lift-case-lambda-clauses__%
    (lambda (_stx21987_ _id21988_ _clauses21989_ _gensym?21990_)
      (let _lp21992_ ((_rest21994_ _clauses21989_)
                      (_ids21995_ '())
                      (_impls21996_ '())
                      (_clauses21997_ '()))
        (let* ((_rest2199822006_ _rest21994_)
               (_else2200022014_
                (lambda ()
                  (values (reverse _ids21995_)
                          (reverse _impls21996_)
                          (reverse _clauses21997_))))
               (_K2200222219_
                (lambda (_rest22017_ _clause22018_)
                  (if (gxc#dispatch-lambda-form? _clause22018_)
                      (_lp21992_
                       _rest22017_
                       _ids21995_
                       _impls21996_
                       (cons _clause22018_ _clauses21997_))
                      (let* ((_g2202022031_
                              (lambda (_g2202122028_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2202122028_)))
                             (_g2201922216_
                              (lambda (_g2202122034_)
                                (if (gx#stx-pair? _g2202122034_)
                                    (let ((_e2202422036_
                                           (gx#stx-e _g2202122034_)))
                                      (let ((_hd2202522039_
                                             (##car _e2202422036_))
                                            (_tl2202622041_
                                             (##cdr _e2202422036_)))
                                        ((lambda (_L22044_ _L22045_)
                                           (let* ((_id22062_
                                                   (make-symbol
                                                    (gx#stx-e _id21988_)
                                                    '"__"
                                                    (length _clauses21997_)
                                                    (if _gensym?21990_
                                                        (gensym '__)
                                                        '"")))
                                                  (_id22064_
                                                   (gx#core-quote-syntax__1
                                                    _id22062_
                                                    (gx#stx-source
                                                     _stx21987_)))
                                                  (_impl22066_
                                                   (gxc#xform-wrap-source
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#lambda)
                                                          (cons _L22045_
                                                                _L22044_))
                                                    _stx21987_))
                                                  (_clause22213_
                                                   (let* ((___stx3027030271_
                                                           _L22045_)
                                                          (_g2207022098_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx3027030271_))))
                                                     (let ((___kont3027230273_
                                                            (lambda (_L22192_)
                                                              (cons _L22045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id22064_ '()))
                                               (foldr1 (lambda (_g2220222205_
                                                                _g2220322207_)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _g2220222205_ '()))
                       _g2220322207_))
               '()
               _L22192_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx21987_)
                                  '()))))
                   (___kont3027630277_
                    (lambda (_L22143_ _L22144_)
                      (cons _L22045_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref (cons 'apply '()))
                                               (cons (cons '%#ref
                                                           (cons _id22064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (foldr1 cons
                                                             (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '%#ref)
                                 (cons _L22143_ '()))
                           '())
                     (foldr1 (lambda (_g2215522158_ _g2215622160_)
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g2215522158_ '()))
                                     _g2215622160_))
                             '()
                             _L22144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx21987_)
                                  '()))))
                   (___kont3028030281_
                    (lambda (_L22103_)
                      (cons _L22045_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref (cons 'apply '()))
                                               (cons (cons '%#ref
                                                           (cons _id22064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%#ref)
                         (cons _L22103_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx21987_)
                                  '())))))
               (let* ((___match3029530296_
                       (lambda (___splice3027830279_
                                _target2208422119_
                                _tl2208622121_)
                         (letrec ((_loop2208722124_
                                   (lambda (_hd2208522127_ _arg2209122129_)
                                     (if (gx#stx-pair? _hd2208522127_)
                                         (let ((_e2208822132_
                                                (gx#stx-e _hd2208522127_)))
                                           (let ((_lp-tl2209022137_
                                                  (##cdr _e2208822132_))
                                                 (_lp-hd2208922135_
                                                  (##car _e2208822132_)))
                                             (_loop2208722124_
                                              _lp-tl2209022137_
                                              (cons _lp-hd2208922135_
                                                    _arg2209122129_))))
                                         (let ((_arg2209222140_
                                                (reverse _arg2209122129_)))
                                           (___kont3027630277_
                                            _tl2208622121_
                                            _arg2209222140_))))))
                           (_loop2208722124_ _target2208422119_ '()))))
                      (___match3028930290_
                       (lambda (___splice3027430275_
                                _target2207322168_
                                _tl2207522170_)
                         (letrec ((_loop2207622173_
                                   (lambda (_hd2207422176_ _arg2208022178_)
                                     (if (gx#stx-pair? _hd2207422176_)
                                         (let ((_e2207722181_
                                                (gx#stx-e _hd2207422176_)))
                                           (let ((_lp-tl2207922186_
                                                  (##cdr _e2207722181_))
                                                 (_lp-hd2207822184_
                                                  (##car _e2207722181_)))
                                             (_loop2207622173_
                                              _lp-tl2207922186_
                                              (cons _lp-hd2207822184_
                                                    _arg2208022178_))))
                                         (let ((_arg2208122189_
                                                (reverse _arg2208022178_)))
                                           (___kont3027230273_
                                            _arg2208122189_))))))
                           (_loop2207622173_ _target2207322168_ '())))))
                 (if (gx#stx-pair/null? ___stx3027030271_)
                     (let ((___splice3027430275_
                            (gx#syntax-split-splice ___stx3027030271_ '0)))
                       (let ((_tl2207522170_
                              (##vector-ref ___splice3027430275_ '1))
                             (_target2207322168_
                              (##vector-ref ___splice3027430275_ '0)))
                         (if (gx#stx-null? _tl2207522170_)
                             (___match3028930290_
                              ___splice3027430275_
                              _target2207322168_
                              _tl2207522170_)
                             (___match3029530296_
                              ___splice3027430275_
                              _target2207322168_
                              _tl2207522170_))))
                     (___kont3028030281_ ___stx3027030271_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp21992_
                                              _rest22017_
                                              (cons _id22064_ _ids21995_)
                                              (cons _impl22066_ _impls21996_)
                                              (cons _clause22213_
                                                    _clauses21997_))))
                                         _tl2202622041_
                                         _hd2202522039_)))
                                    (_g2202022031_ _g2202122034_)))))
                        (_g2201922216_ _clause22018_))))))
          (if (##pair? _rest2199822006_)
              (let ((_hd2200322222_ (##car _rest2199822006_))
                    (_tl2200422224_ (##cdr _rest2199822006_)))
                (let* ((_clause22227_ _hd2200322222_)
                       (_rest22229_ _tl2200422224_))
                  (_K2200222219_ _rest22229_ _clause22227_)))
              (_else2200022014_))))))
  (define gxc#lift-case-lambda-clauses__0
    (lambda (_stx22234_ _id22235_ _clauses22236_)
      (let ((_gensym?22238_ '#f))
        (gxc#lift-case-lambda-clauses__%
         _stx22234_
         _id22235_
         _clauses22236_
         _gensym?22238_))))
  (define gxc#lift-case-lambda-clauses
    (lambda _g30812_
      (let ((_g30811_ (length _g30812_)))
        (cond ((##fx= _g30811_ 3)
               (apply gxc#lift-case-lambda-clauses__0 _g30812_))
              ((##fx= _g30811_ 4)
               (apply gxc#lift-case-lambda-clauses__% _g30812_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#lift-case-lambda-clauses
                _g30812_))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx21264_)
      (letrec ((_case-lambda-clause-def21266_
                (lambda (_id21983_ _impl21984_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id21983_ '())
                               (cons (gxc#compile-e _impl21984_) '())))
                   _stx21264_)))
               (_opt-lambda-dispatch-name21267_
                (lambda (_id21979_)
                  (if (uninterned-symbol? _id21979_)
                      (let ((_str21981_ (symbol->string _id21979_)))
                        (if (string-prefix? _str21981_ '"opt-lambda")
                            '"%"
                            _id21979_))
                      _id21979_)))
               (_kw-lambda-dispatch-name21268_
                (lambda (_id21974_ _name21975_)
                  (if (uninterned-symbol? _id21974_)
                      (let ((_str21977_ (symbol->string _id21974_)))
                        (if (string-prefix? _str21977_ '"kw-lambda")
                            _name21975_
                            _id21974_))
                      _id21974_))))
        (let* ((___stx3031830319_ _stx21264_)
               (_g2127321332_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3031830319_))))
          (let ((___kont3032030321_
                 (lambda (_L21883_ _L21884_)
                   (let* ((___stx3029830299_ _L21883_)
                          (_g2190121915_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx3029830299_))))
                     (let ((___kont3030030301_ (lambda (_L21959_) _stx21264_))
                           (___kont3030230303_
                            (lambda (_L21928_)
                              (let ((_g30813_
                                     (gxc#lift-case-lambda-clauses__0
                                      _stx21264_
                                      _L21884_
                                      _L21928_)))
                                (begin
                                  (let ((_g30814_
                                         (if (##values? _g30813_)
                                             (##vector-length _g30813_)
                                             1)))
                                    (if (not (##fx= _g30814_ 3))
                                        (error "Context expects 3 values"
                                               _g30814_)))
                                  (let ((_ids21938_ (##vector-ref _g30813_ 0))
                                        (_impls21939_
                                         (##vector-ref _g30813_ 1))
                                        (_clauses21940_
                                         (##vector-ref _g30813_ 2)))
                                    (let* ((_g30815_
                                            (for-each
                                             gx#core-bind-runtime!
                                             _ids21938_))
                                           (_defs21943_
                                            (map _case-lambda-clause-def21266_
                                                 _ids21938_
                                                 _impls21939_)))
                                      (gxc#verbose
                                       '"lift case-lambda clauses "
                                       (gxc#identifier-symbol _L21884_)
                                       '" => "
                                       (map gxc#identifier-symbol _ids21938_))
                                      (gxc#xform-wrap-source
                                       (cons '%#begin
                                             (foldr1 cons
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L21884_ '())
                                (cons (gxc#xform-wrap-source
                                       (cons '%#case-lambda _clauses21940_)
                                       (gx#datum->syntax__0
                                        '#f
                                        'case-lambda-expr))
                                      '())))
                    _stx21264_)
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _defs21943_))
                                       _stx21264_))))))))
                       (let ((___match3030930310_
                              (lambda (_e2190421951_
                                       _hd2190521954_
                                       _tl2190621956_)
                                (let ((_L21959_ _tl2190621956_))
                                  (if (andmap1 gxc#dispatch-lambda-form?
                                               _L21959_)
                                      (___kont3030030301_ _L21959_)
                                      (___kont3030230303_ _tl2190621956_))))))
                         (if (gx#stx-pair? ___stx3029830299_)
                             (let ((_e2190421951_
                                    (gx#stx-e ___stx3029830299_)))
                               (let ((_tl2190621956_ (##cdr _e2190421951_))
                                     (_hd2190521954_ (##car _e2190421951_)))
                                 (___match3030930310_
                                  _e2190421951_
                                  _hd2190521954_
                                  _tl2190621956_)))
                             (_g2190121915_)))))))
                (___kont3032230323_
                 (lambda (_L21701_ _L21702_)
                   (let* ((_g2171821748_
                           (lambda (_g2171921745_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2171921745_)))
                          (_g2171721843_
                           (lambda (_g2171921751_)
                             (if (gx#stx-pair? _g2171921751_)
                                 (let ((_e2172321753_
                                        (gx#stx-e _g2171921751_)))
                                   (let ((_hd2172421756_ (##car _e2172321753_))
                                         (_tl2172521758_
                                          (##cdr _e2172321753_)))
                                     (if (gx#stx-pair? _tl2172521758_)
                                         (let ((_e2172621761_
                                                (gx#stx-e _tl2172521758_)))
                                           (let ((_hd2172721764_
                                                  (##car _e2172621761_))
                                                 (_tl2172821766_
                                                  (##cdr _e2172621761_)))
                                             (if (gx#stx-pair? _hd2172721764_)
                                                 (let ((_e2172921769_
                                                        (gx#stx-e
                                                         _hd2172721764_)))
                                                   (let ((_hd2173021772_
                                                          (##car _e2172921769_))
                                                         (_tl2173121774_
                                                          (##cdr _e2172921769_)))
                                                     (if (gx#stx-pair?
                                                          _hd2173021772_)
                                                         (let ((_e2173221777_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2173021772_)))
                   (let ((_hd2173321780_ (##car _e2173221777_))
                         (_tl2173421782_ (##cdr _e2173221777_)))
                     (if (gx#stx-pair? _hd2173321780_)
                         (let ((_e2173521785_ (gx#stx-e _hd2173321780_)))
                           (let ((_hd2173621788_ (##car _e2173521785_))
                                 (_tl2173721790_ (##cdr _e2173521785_)))
                             (if (gx#stx-null? _tl2173721790_)
                                 (if (gx#stx-pair? _tl2173421782_)
                                     (let ((_e2173821793_
                                            (gx#stx-e _tl2173421782_)))
                                       (let ((_hd2173921796_
                                              (##car _e2173821793_))
                                             (_tl2174021798_
                                              (##cdr _e2173821793_)))
                                         (if (gx#stx-null? _tl2174021798_)
                                             (if (gx#stx-null? _tl2173121774_)
                                                 (if (gx#stx-pair?
                                                      _tl2172821766_)
                                                     (let ((_e2174121801_
                                                            (gx#stx-e
                                                             _tl2172821766_)))
                                                       (let ((_hd2174221804_
                                                              (##car _e2174121801_))
                                                             (_tl2174321806_
                                                              (##cdr _e2174121801_)))
                                                         (if (gx#stx-null?
                                                              _tl2174321806_)
                                                             ((lambda (_L21809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21810_
                               _L21811_)
                        (let* ((_lambda-id21835_
                                (make-symbol
                                 (gx#stx-e _L21702_)
                                 '"__"
                                 (_opt-lambda-dispatch-name21267_
                                  (gx#stx-e _L21811_))))
                               (_lambda-id21837_
                                (gx#core-quote-syntax__1
                                 _lambda-id21835_
                                 (gx#stx-source _stx21264_)))
                               (_g30816_
                                (gx#core-bind-runtime!__0 _lambda-id21837_))
                               (_new-case-lambda-expr21840_
                                (gxc#apply-expression-subst
                                 _L21809_
                                 _L21811_
                                 _lambda-id21837_)))
                          (gxc#verbose
                           '"lift opt-lambda dispatch "
                           (gxc#identifier-symbol _L21702_)
                           '" => "
                           (gxc#identifier-symbol _lambda-id21837_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _lambda-id21837_ '())
                                                    (cons (gxc#compile-e
                                                           _L21810_)
                                                          '())))
                                        _stx21264_)
                                       (cons (gxc#lift-top-lambda-define-values%
                                              (gxc#xform-wrap-source
                                               (cons '%#define-values
                                                     (cons (cons _L21702_ '())
                                                           (cons _new-case-lambda-expr21840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx21264_))
                                             '())))
                           _stx21264_)))
                      _hd2174221804_
                      _hd2173921796_
                      _hd2173621788_)
                     (_g2171821748_ _g2171921751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2171821748_
                                                      _g2171921751_))
                                                 (_g2171821748_ _g2171921751_))
                                             (_g2171821748_ _g2171921751_))))
                                     (_g2171821748_ _g2171921751_))
                                 (_g2171821748_ _g2171921751_))))
                         (_g2171821748_ _g2171921751_))))
                 (_g2171821748_ _g2171921751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2171821748_
                                                  _g2171921751_))))
                                         (_g2171821748_ _g2171921751_))))
                                 (_g2171821748_ _g2171921751_)))))
                     (_g2171721843_ _L21701_))))
                (___kont3032430325_
                 (lambda (_L21415_ _L21416_)
                   (let* ((_g2143221485_
                           (lambda (_g2143321482_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2143321482_)))
                          (_g2143121661_
                           (lambda (_g2143321488_)
                             (if (gx#stx-pair? _g2143321488_)
                                 (let ((_e2143921490_
                                        (gx#stx-e _g2143321488_)))
                                   (let ((_hd2144021493_ (##car _e2143921490_))
                                         (_tl2144121495_
                                          (##cdr _e2143921490_)))
                                     (if (gx#stx-pair? _tl2144121495_)
                                         (let ((_e2144221498_
                                                (gx#stx-e _tl2144121495_)))
                                           (let ((_hd2144321501_
                                                  (##car _e2144221498_))
                                                 (_tl2144421503_
                                                  (##cdr _e2144221498_)))
                                             (if (gx#stx-pair? _hd2144321501_)
                                                 (let ((_e2144521506_
                                                        (gx#stx-e
                                                         _hd2144321501_)))
                                                   (let ((_hd2144621509_
                                                          (##car _e2144521506_))
                                                         (_tl2144721511_
                                                          (##cdr _e2144521506_)))
                                                     (if (gx#stx-pair?
                                                          _hd2144621509_)
                                                         (let ((_e2144821514_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2144621509_)))
                   (let ((_hd2144921517_ (##car _e2144821514_))
                         (_tl2145021519_ (##cdr _e2144821514_)))
                     (if (gx#stx-pair? _hd2144921517_)
                         (let ((_e2145121522_ (gx#stx-e _hd2144921517_)))
                           (let ((_hd2145221525_ (##car _e2145121522_))
                                 (_tl2145321527_ (##cdr _e2145121522_)))
                             (if (gx#stx-null? _tl2145321527_)
                                 (if (gx#stx-pair? _tl2145021519_)
                                     (let ((_e2145421530_
                                            (gx#stx-e _tl2145021519_)))
                                       (let ((_hd2145521533_
                                              (##car _e2145421530_))
                                             (_tl2145621535_
                                              (##cdr _e2145421530_)))
                                         (if (gx#stx-pair? _hd2145521533_)
                                             (let ((_e2145721538_
                                                    (gx#stx-e _hd2145521533_)))
                                               (let ((_hd2145821541_
                                                      (##car _e2145721538_))
                                                     (_tl2145921543_
                                                      (##cdr _e2145721538_)))
                                                 (if (gx#stx-pair?
                                                      _tl2145921543_)
                                                     (let ((_e2146021546_
                                                            (gx#stx-e
                                                             _tl2145921543_)))
                                                       (let ((_hd2146121549_
                                                              (##car _e2146021546_))
                                                             (_tl2146221551_
                                                              (##cdr _e2146021546_)))
                                                         (if (gx#stx-pair?
                                                              _hd2146121549_)
                                                             (let ((_e2146321554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd2146121549_)))
                       (let ((_hd2146421557_ (##car _e2146321554_))
                             (_tl2146521559_ (##cdr _e2146321554_)))
                         (if (gx#stx-pair? _hd2146421557_)
                             (let ((_e2146621562_ (gx#stx-e _hd2146421557_)))
                               (let ((_hd2146721565_ (##car _e2146621562_))
                                     (_tl2146821567_ (##cdr _e2146621562_)))
                                 (if (gx#stx-pair? _hd2146721565_)
                                     (let ((_e2146921570_
                                            (gx#stx-e _hd2146721565_)))
                                       (let ((_hd2147021573_
                                              (##car _e2146921570_))
                                             (_tl2147121575_
                                              (##cdr _e2146921570_)))
                                         (if (gx#stx-null? _tl2147121575_)
                                             (if (gx#stx-pair? _tl2146821567_)
                                                 (let ((_e2147221578_
                                                        (gx#stx-e
                                                         _tl2146821567_)))
                                                   (let ((_hd2147321581_
                                                          (##car _e2147221578_))
                                                         (_tl2147421583_
                                                          (##cdr _e2147221578_)))
                                                     (if (gx#stx-null?
                                                          _tl2147421583_)
                                                         (if (gx#stx-null?
                                                              _tl2146521559_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2146221551_)
                         (let ((_e2147521586_ (gx#stx-e _tl2146221551_)))
                           (let ((_hd2147621589_ (##car _e2147521586_))
                                 (_tl2147721591_ (##cdr _e2147521586_)))
                             (if (gx#stx-null? _tl2147721591_)
                                 (if (gx#stx-null? _tl2145621535_)
                                     (if (gx#stx-null? _tl2144721511_)
                                         (if (gx#stx-pair? _tl2144421503_)
                                             (let ((_e2147821594_
                                                    (gx#stx-e _tl2144421503_)))
                                               (let ((_hd2147921597_
                                                      (##car _e2147821594_))
                                                     (_tl2148021599_
                                                      (##cdr _e2147821594_)))
                                                 (if (gx#stx-null?
                                                      _tl2148021599_)
                                                     ((lambda (_L21602_
                                                               _L21603_
                                                               _L21604_
                                                               _L21605_
                                                               _L21606_)
                                                        (let* ((_get-kws-id21646_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L21416_)
                         '"__"
                         (_kw-lambda-dispatch-name21268_
                          (gx#stx-e _L21606_)
                          '"@")))
                       (_get-kws-id21648_
                        (gx#core-quote-syntax__1
                         _get-kws-id21646_
                         (gx#stx-source _stx21264_)))
                       (_main-id21650_
                        (make-symbol
                         (gx#stx-e _L21416_)
                         '"__"
                         (_kw-lambda-dispatch-name21268_
                          (gx#stx-e _L21605_)
                          '"%")))
                       (_main-id21652_
                        (gx#core-quote-syntax__1
                         _main-id21650_
                         (gx#stx-source _stx21264_)))
                       (_g30817_ (gx#core-bind-runtime!__0 _get-kws-id21648_))
                       (_g30818_ (gx#core-bind-runtime!__0 _main-id21652_))
                       (_new-kw-dispatch21656_
                        (gxc#apply-expression-subst
                         _L21602_
                         _L21606_
                         _get-kws-id21648_))
                       (_new-get-kws21658_
                        (gxc#apply-expression-subst
                         _L21603_
                         _L21605_
                         _main-id21652_)))
                  (gxc#verbose
                   '"lift kw-lambda dispatch "
                   (gxc#identifier-symbol _L21416_)
                   '" => "
                   (gxc#identifier-symbol _get-kws-id21648_)
                   '" => "
                   (gxc#identifier-symbol _main-id21652_))
                  (gxc#xform-wrap-source
                   (cons '%#begin
                         (cons (gxc#lift-top-lambda-define-values%
                                (gxc#xform-wrap-source
                                 (cons '%#define-values
                                       (cons (cons _main-id21652_ '())
                                             (cons _L21604_ '())))
                                 _stx21264_))
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _get-kws-id21648_ '())
                                                  (cons _new-get-kws21658_
                                                        '())))
                                      _stx21264_)
                                     (cons (gxc#xform-wrap-source
                                            (cons '%#define-values
                                                  (cons (cons _L21416_ '())
                                                        (cons _new-kw-dispatch21656_
                                                              '())))
                                            _stx21264_)
                                           '()))))
                   _stx21264_)))
              _hd2147921597_
              _hd2147621589_
              _hd2147321581_
              _hd2147021573_
              _hd2145221525_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2143221485_
                                                      _g2143321488_))))
                                             (_g2143221485_ _g2143321488_))
                                         (_g2143221485_ _g2143321488_))
                                     (_g2143221485_ _g2143321488_))
                                 (_g2143221485_ _g2143321488_))))
                         (_g2143221485_ _g2143321488_))
                     (_g2143221485_ _g2143321488_))
                 (_g2143221485_ _g2143321488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2143221485_ _g2143321488_))
                                             (_g2143221485_ _g2143321488_))))
                                     (_g2143221485_ _g2143321488_))))
                             (_g2143221485_ _g2143321488_))))
                     (_g2143221485_ _g2143321488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2143221485_
                                                      _g2143321488_))))
                                             (_g2143221485_ _g2143321488_))))
                                     (_g2143221485_ _g2143321488_))
                                 (_g2143221485_ _g2143321488_))))
                         (_g2143221485_ _g2143321488_))))
                 (_g2143221485_ _g2143321488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2143221485_
                                                  _g2143321488_))))
                                         (_g2143221485_ _g2143321488_))))
                                 (_g2143221485_ _g2143321488_)))))
                     (_g2143121661_ _L21415_))))
                (___kont3032630327_
                 (lambda (_L21361_ _L21362_)
                   (gxc#xform-wrap-source
                    (cons '%#define-values
                          (cons _L21362_ (cons (gxc#compile-e _L21361_) '())))
                    _stx21264_))))
            (let* ((___match3041130412_
                    (lambda (_e2130521383_
                             _hd2130621386_
                             _tl2130721388_
                             _e2130821391_
                             _hd2130921394_
                             _tl2131021396_
                             _e2131121399_
                             _hd2131221402_
                             _tl2131321404_
                             _e2131421407_
                             _hd2131521410_
                             _tl2131621412_)
                      (let ((_L21415_ _hd2131521410_)
                            (_L21416_ _hd2131221402_))
                        (if (and (gx#identifier? _L21416_)
                                 (gxc#kw-lambda-expr? _L21415_))
                            (___kont3032430325_ _L21415_ _L21416_)
                            (___kont3032630327_
                             _hd2131521410_
                             _hd2130921394_)))))
                   (___match3038330384_
                    (lambda (_e2129121669_
                             _hd2129221672_
                             _tl2129321674_
                             _e2129421677_
                             _hd2129521680_
                             _tl2129621682_
                             _e2129721685_
                             _hd2129821688_
                             _tl2129921690_
                             _e2130021693_
                             _hd2130121696_
                             _tl2130221698_)
                      (let ((_L21701_ _hd2130121696_)
                            (_L21702_ _hd2129821688_))
                        (if (and (gx#identifier? _L21702_)
                                 (gxc#opt-lambda-expr? _L21701_))
                            (___kont3032230323_ _L21701_ _L21702_)
                            (___match3041130412_
                             _e2129121669_
                             _hd2129221672_
                             _tl2129321674_
                             _e2129421677_
                             _hd2129521680_
                             _tl2129621682_
                             _e2129721685_
                             _hd2129821688_
                             _tl2129921690_
                             _e2130021693_
                             _hd2130121696_
                             _tl2130221698_)))))
                   (___match3035530356_
                    (lambda (_e2127721851_
                             _hd2127821854_
                             _tl2127921856_
                             _e2128021859_
                             _hd2128121862_
                             _tl2128221864_
                             _e2128321867_
                             _hd2128421870_
                             _tl2128521872_
                             _e2128621875_
                             _hd2128721878_
                             _tl2128821880_)
                      (let ((_L21883_ _hd2128721878_)
                            (_L21884_ _hd2128421870_))
                        (if (and (gx#identifier? _L21884_)
                                 (gxc#case-lambda-expr? _L21883_))
                            (___kont3032030321_ _L21883_ _L21884_)
                            (___match3038330384_
                             _e2127721851_
                             _hd2127821854_
                             _tl2127921856_
                             _e2128021859_
                             _hd2128121862_
                             _tl2128221864_
                             _e2128321867_
                             _hd2128421870_
                             _tl2128521872_
                             _e2128621875_
                             _hd2128721878_
                             _tl2128821880_))))))
              (if (gx#stx-pair? ___stx3031830319_)
                  (let ((_e2127721851_ (gx#stx-e ___stx3031830319_)))
                    (let ((_tl2127921856_ (##cdr _e2127721851_))
                          (_hd2127821854_ (##car _e2127721851_)))
                      (if (gx#stx-pair? _tl2127921856_)
                          (let ((_e2128021859_ (gx#stx-e _tl2127921856_)))
                            (let ((_tl2128221864_ (##cdr _e2128021859_))
                                  (_hd2128121862_ (##car _e2128021859_)))
                              (if (gx#stx-pair? _hd2128121862_)
                                  (let ((_e2128321867_
                                         (gx#stx-e _hd2128121862_)))
                                    (let ((_tl2128521872_
                                           (##cdr _e2128321867_))
                                          (_hd2128421870_
                                           (##car _e2128321867_)))
                                      (if (gx#stx-null? _tl2128521872_)
                                          (if (gx#stx-pair? _tl2128221864_)
                                              (let ((_e2128621875_
                                                     (gx#stx-e
                                                      _tl2128221864_)))
                                                (let ((_tl2128821880_
                                                       (##cdr _e2128621875_))
                                                      (_hd2128721878_
                                                       (##car _e2128621875_)))
                                                  (if (gx#stx-null?
                                                       _tl2128821880_)
                                                      (___match3035530356_
                                                       _e2127721851_
                                                       _hd2127821854_
                                                       _tl2127921856_
                                                       _e2128021859_
                                                       _hd2128121862_
                                                       _tl2128221864_
                                                       _e2128321867_
                                                       _hd2128421870_
                                                       _tl2128521872_
                                                       _e2128621875_
                                                       _hd2128721878_
                                                       _tl2128821880_)
                                                      (_g2127321332_))))
                                              (_g2127321332_))
                                          (if (gx#stx-pair? _tl2128221864_)
                                              (let ((_e2132521353_
                                                     (gx#stx-e
                                                      _tl2128221864_)))
                                                (let ((_tl2132721358_
                                                       (##cdr _e2132521353_))
                                                      (_hd2132621356_
                                                       (##car _e2132521353_)))
                                                  (if (gx#stx-null?
                                                       _tl2132721358_)
                                                      (___kont3032630327_
                                                       _hd2132621356_
                                                       _hd2128121862_)
                                                      (_g2127321332_))))
                                              (_g2127321332_)))))
                                  (if (gx#stx-pair? _tl2128221864_)
                                      (let ((_e2132521353_
                                             (gx#stx-e _tl2128221864_)))
                                        (let ((_tl2132721358_
                                               (##cdr _e2132521353_))
                                              (_hd2132621356_
                                               (##car _e2132521353_)))
                                          (if (gx#stx-null? _tl2132721358_)
                                              (___kont3032630327_
                                               _hd2132621356_
                                               _hd2128121862_)
                                              (_g2127321332_))))
                                      (_g2127321332_)))))
                          (_g2127321332_))))
                  (_g2127321332_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx20196_)
      (letrec* ((_bind-e__2819028191_
                 (lambda (_id21248_ _expr21249_ _compile?21250_)
                   (cons (cons _id21248_ '())
                         (cons (if _compile?21250_
                                   (gxc#compile-e _expr21249_)
                                   _expr21249_)
                               '()))))
                (_bind-e__0__2819228193_
                 (lambda (_id21255_ _expr21256_)
                   (let ((_compile?21258_ '#t))
                     (_bind-e__2819028191_
                      _id21255_
                      _expr21256_
                      _compile?21258_))))
                (_bind-e20198_
                 (lambda _g30820_
                   (let ((_g30819_ (length _g30820_)))
                     (cond ((##fx= _g30819_ 2)
                            (apply _bind-e__0__2819228193_ _g30820_))
                           ((##fx= _g30819_ 3)
                            (apply _bind-e__2819028191_ _g30820_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g30820_))))))
                (_compile-bindings20199_
                 (lambda (_bindings20832_)
                   (let _lp20834_ ((_rest20836_ _bindings20832_)
                                   (_lift120837_ '())
                                   (_lift220838_ '())
                                   (_bind20839_ '()))
                     (let* ((_rest2084020848_ _rest20836_)
                            (_else2084220856_
                             (lambda ()
                               (values (reverse _lift120837_)
                                       (reverse _lift220838_)
                                       (reverse _bind20839_))))
                            (_K2084421235_
                             (lambda (_rest20859_ _hd20860_)
                               (let* ((___stx3045430455_ _hd20860_)
                                      (_g2086420900_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3045430455_))))
                                 (let ((___kont3045630457_
                                        (lambda (_L21142_ _L21143_)
                                          (let* ((___stx3043430435_ _L21142_)
                                                 (_g2115821172_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx3043430435_))))
                                            (let ((___kont3043630437_
                                                   (lambda (_L21220_)
                                                     (_lp20834_
                                                      _rest20859_
                                                      _lift120837_
                                                      _lift220838_
                                                      (cons (_bind-e__2819028191_
                                                             _L21143_
                                                             _L21142_
                                                             '#f)
                                                            _bind20839_))))
                                                  (___kont3043830439_
                                                   (lambda (_L21185_)
                                                     (let ((_g30821_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx20196_
                                                             _L21143_
                                                             _L21185_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g30822_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g30821_)
                            (##vector-length _g30821_)
                            1)))
                   (if (not (##fx= _g30822_ 3))
                       (error "Context expects 3 values" _g30822_)))
                 (let ((_ids21195_ (##vector-ref _g30821_ 0))
                       (_impls21196_ (##vector-ref _g30821_ 1))
                       (_clauses21197_ (##vector-ref _g30821_ 2)))
                   (let* ((_g30823_
                           (for-each gx#core-bind-runtime! _ids21195_))
                          (_xbind21200_
                           (map _bind-e20198_ _ids21195_ _impls21196_))
                          (_expr*21202_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses21197_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*21204_
                           (_bind-e__2819028191_ _L21143_ _expr*21202_ '#f)))
                     (gxc#verbose
                      '"lift case-lambda clauses "
                      (gxc#identifier-symbol _L21143_)
                      '" => "
                      (map gxc#identifier-symbol _ids21195_))
                     (_lp20834_
                      _rest20859_
                      _lift120837_
                      (foldl1 cons _lift220838_ _xbind21200_)
                      (cons _bind*21204_ _bind20839_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match3044530446_
                                                     (lambda (_e2116121212_
                                                              _hd2116221215_
                                                              _tl2116321217_)
                                                       (let ((_L21220_
                                                              _tl2116321217_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L21220_)
                     (___kont3043630437_ _L21220_)
                     (___kont3043830439_ _tl2116321217_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx3043430435_)
                                                    (let ((_e2116121212_
                                                           (gx#stx-e
                                                            ___stx3043430435_)))
                                                      (let ((_tl2116321217_
                                                             (##cdr _e2116121212_))
                                                            (_hd2116221215_
                                                             (##car _e2116121212_)))
                                                        (___match3044530446_
                                                         _e2116121212_
                                                         _hd2116221215_
                                                         _tl2116321217_)))
                                                    (_g2115821172_)))))))
                                       (___kont3045830459_
                                        (lambda (_L20970_ _L20971_)
                                          (let* ((_g2098521015_
                                                  (lambda (_g2098621012_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2098621012_)))
                                                 (_g2098421110_
                                                  (lambda (_g2098621018_)
                                                    (if (gx#stx-pair?
                                                         _g2098621018_)
                                                        (let ((_e2099021020_
                                                               (gx#stx-e
                                                                _g2098621018_)))
                                                          (let ((_hd2099121023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2099021020_))
                        (_tl2099221025_ (##cdr _e2099021020_)))
                    (if (gx#stx-pair? _tl2099221025_)
                        (let ((_e2099321028_ (gx#stx-e _tl2099221025_)))
                          (let ((_hd2099421031_ (##car _e2099321028_))
                                (_tl2099521033_ (##cdr _e2099321028_)))
                            (if (gx#stx-pair? _hd2099421031_)
                                (let ((_e2099621036_
                                       (gx#stx-e _hd2099421031_)))
                                  (let ((_hd2099721039_ (##car _e2099621036_))
                                        (_tl2099821041_ (##cdr _e2099621036_)))
                                    (if (gx#stx-pair? _hd2099721039_)
                                        (let ((_e2099921044_
                                               (gx#stx-e _hd2099721039_)))
                                          (let ((_hd2100021047_
                                                 (##car _e2099921044_))
                                                (_tl2100121049_
                                                 (##cdr _e2099921044_)))
                                            (if (gx#stx-pair? _hd2100021047_)
                                                (let ((_e2100221052_
                                                       (gx#stx-e
                                                        _hd2100021047_)))
                                                  (let ((_hd2100321055_
                                                         (##car _e2100221052_))
                                                        (_tl2100421057_
                                                         (##cdr _e2100221052_)))
                                                    (if (gx#stx-null?
                                                         _tl2100421057_)
                                                        (if (gx#stx-pair?
                                                             _tl2100121049_)
                                                            (let ((_e2100521060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2100121049_)))
                      (let ((_hd2100621063_ (##car _e2100521060_))
                            (_tl2100721065_ (##cdr _e2100521060_)))
                        (if (gx#stx-null? _tl2100721065_)
                            (if (gx#stx-null? _tl2099821041_)
                                (if (gx#stx-pair? _tl2099521033_)
                                    (let ((_e2100821068_
                                           (gx#stx-e _tl2099521033_)))
                                      (let ((_hd2100921071_
                                             (##car _e2100821068_))
                                            (_tl2101021073_
                                             (##cdr _e2100821068_)))
                                        (if (gx#stx-null? _tl2101021073_)
                                            ((lambda (_L21076_
                                                      _L21077_
                                                      _L21078_)
                                               (let* ((_lambda-id21102_
                                                       (make-symbol
                                                        (gx#stx-e _L20971_)
                                                        (gensym '__)))
                                                      (_lambda-id21104_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id21102_
                                                        (gx#stx-source
                                                         _stx20196_)))
                                                      (_g30824_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id21104_))
                                                      (_new-case-lambda-expr21107_
                                                       (gxc#apply-expression-subst
                                                        _L21076_
                                                        _L21078_
                                                        _lambda-id21104_)))
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L20971_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id21104_))
                                                 (_lp20834_
                                                  (cons (_bind-e__2819028191_
                                                         _L20971_
                                                         _new-case-lambda-expr21107_
                                                         '#f)
                                                        _rest20859_)
                                                  (cons (_bind-e__0__2819228193_
                                                         _lambda-id21104_
                                                         _L21077_)
                                                        _lift120837_)
                                                  _lift220838_
                                                  _bind20839_)))
                                             _hd2100921071_
                                             _hd2100621063_
                                             _hd2100321055_)
                                            (_g2098521015_ _g2098621018_))))
                                    (_g2098521015_ _g2098621018_))
                                (_g2098521015_ _g2098621018_))
                            (_g2098521015_ _g2098621018_))))
                    (_g2098521015_ _g2098621018_))
                (_g2098521015_ _g2098621018_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2098521015_
                                                 _g2098621018_))))
                                        (_g2098521015_ _g2098621018_))))
                                (_g2098521015_ _g2098621018_))))
                        (_g2098521015_ _g2098621018_))))
                (_g2098521015_ _g2098621018_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2098421110_ _L20970_))))
                                       (___kont3046030461_
                                        (lambda (_L20921_ _L20922_)
                                          (_lp20834_
                                           _rest20859_
                                           _lift120837_
                                           _lift220838_
                                           (cons (cons _L20922_
                                                       (cons (gxc#compile-e
                                                              _L20921_)
                                                             '()))
                                                 _bind20839_)))))
                                   (let* ((___match3050530506_
                                           (lambda (_e2087920946_
                                                    _hd2088020949_
                                                    _tl2088120951_
                                                    _e2088220954_
                                                    _hd2088320957_
                                                    _tl2088420959_
                                                    _e2088520962_
                                                    _hd2088620965_
                                                    _tl2088720967_)
                                             (let ((_L20970_ _hd2088620965_)
                                                   (_L20971_ _hd2088320957_))
                                               (if (and (gx#identifier?
                                                         _L20971_)
                                                        (gxc#opt-lambda-expr?
                                                         _L20970_))
                                                   (___kont3045830459_
                                                    _L20970_
                                                    _L20971_)
                                                   (___kont3046030461_
                                                    _hd2088620965_
                                                    _hd2088020949_)))))
                                          (___match3048330484_
                                           (lambda (_e2086821118_
                                                    _hd2086921121_
                                                    _tl2087021123_
                                                    _e2087121126_
                                                    _hd2087221129_
                                                    _tl2087321131_
                                                    _e2087421134_
                                                    _hd2087521137_
                                                    _tl2087621139_)
                                             (let ((_L21142_ _hd2087521137_)
                                                   (_L21143_ _hd2087221129_))
                                               (if (and (gx#identifier?
                                                         _L21143_)
                                                        (gxc#case-lambda-expr?
                                                         _L21142_))
                                                   (___kont3045630457_
                                                    _L21142_
                                                    _L21143_)
                                                   (___match3050530506_
                                                    _e2086821118_
                                                    _hd2086921121_
                                                    _tl2087021123_
                                                    _e2087121126_
                                                    _hd2087221129_
                                                    _tl2087321131_
                                                    _e2087421134_
                                                    _hd2087521137_
                                                    _tl2087621139_))))))
                                     (if (gx#stx-pair? ___stx3045430455_)
                                         (let ((_e2086821118_
                                                (gx#stx-e ___stx3045430455_)))
                                           (let ((_tl2087021123_
                                                  (##cdr _e2086821118_))
                                                 (_hd2086921121_
                                                  (##car _e2086821118_)))
                                             (if (gx#stx-pair? _hd2086921121_)
                                                 (let ((_e2087121126_
                                                        (gx#stx-e
                                                         _hd2086921121_)))
                                                   (let ((_tl2087321131_
                                                          (##cdr _e2087121126_))
                                                         (_hd2087221129_
                                                          (##car _e2087121126_)))
                                                     (if (gx#stx-null?
                                                          _tl2087321131_)
                                                         (if (gx#stx-pair?
                                                              _tl2087021123_)
                                                             (let ((_e2087421134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl2087021123_)))
                       (let ((_tl2087621139_ (##cdr _e2087421134_))
                             (_hd2087521137_ (##car _e2087421134_)))
                         (if (gx#stx-null? _tl2087621139_)
                             (___match3048330484_
                              _e2086821118_
                              _hd2086921121_
                              _tl2087021123_
                              _e2087121126_
                              _hd2087221129_
                              _tl2087321131_
                              _e2087421134_
                              _hd2087521137_
                              _tl2087621139_)
                             (_g2086420900_))))
                     (_g2086420900_))
                 (if (gx#stx-pair? _tl2087021123_)
                     (let ((_e2089320913_ (gx#stx-e _tl2087021123_)))
                       (let ((_tl2089520918_ (##cdr _e2089320913_))
                             (_hd2089420916_ (##car _e2089320913_)))
                         (if (gx#stx-null? _tl2089520918_)
                             (___kont3046030461_ _hd2089420916_ _hd2086921121_)
                             (_g2086420900_))))
                     (_g2086420900_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl2087021123_)
                                                     (let ((_e2089320913_
                                                            (gx#stx-e
                                                             _tl2087021123_)))
                                                       (let ((_tl2089520918_
                                                              (##cdr _e2089320913_))
                                                             (_hd2089420916_
                                                              (##car _e2089320913_)))
                                                         (if (gx#stx-null?
                                                              _tl2089520918_)
                                                             (___kont3046030461_
                                                              _hd2089420916_
                                                              _hd2086921121_)
                                                             (_g2086420900_))))
                                                     (_g2086420900_)))))
                                         (_g2086420900_))))))))
                       (if (##pair? _rest2084020848_)
                           (let ((_hd2084521238_ (##car _rest2084020848_))
                                 (_tl2084621240_ (##cdr _rest2084020848_)))
                             (let* ((_hd21243_ _hd2084521238_)
                                    (_rest21245_ _tl2084621240_))
                               (_K2084421235_ _rest21245_ _hd21243_)))
                           (_else2084220856_))))))
                (_lift-kw-lambda?20200_
                 (lambda (_bind20756_)
                   (let* ((___stx3052230523_ _bind20756_)
                          (_g2075920776_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx3052230523_))))
                     (let ((___kont3052430525_
                            (lambda (_L20812_ _L20813_)
                              (if (gx#identifier? _L20813_)
                                  (gxc#kw-lambda-expr? _L20812_)
                                  '#f)))
                           (___kont3052630527_ (lambda () '#f)))
                       (if (gx#stx-pair? ___stx3052230523_)
                           (let ((_e2076320788_ (gx#stx-e ___stx3052230523_)))
                             (let ((_tl2076520793_ (##cdr _e2076320788_))
                                   (_hd2076420791_ (##car _e2076320788_)))
                               (if (gx#stx-pair? _hd2076420791_)
                                   (let ((_e2076620796_
                                          (gx#stx-e _hd2076420791_)))
                                     (let ((_tl2076820801_
                                            (##cdr _e2076620796_))
                                           (_hd2076720799_
                                            (##car _e2076620796_)))
                                       (if (gx#stx-null? _tl2076820801_)
                                           (if (gx#stx-pair? _tl2076520793_)
                                               (let ((_e2076920804_
                                                      (gx#stx-e
                                                       _tl2076520793_)))
                                                 (let ((_tl2077120809_
                                                        (##cdr _e2076920804_))
                                                       (_hd2077020807_
                                                        (##car _e2076920804_)))
                                                   (if (gx#stx-null?
                                                        _tl2077120809_)
                                                       (___kont3052430525_
                                                        _hd2077020807_
                                                        _hd2076720799_)
                                                       (___kont3052630527_))))
                                               (___kont3052630527_))
                                           (___kont3052630527_))))
                                   (___kont3052630527_))))
                           (___kont3052630527_))))))
                (_lift-kw-lambda-bindings20201_
                 (lambda (_bindings20368_)
                   (let _lp20370_ ((_rest20372_ _bindings20368_)
                                   (_lift120373_ '())
                                   (_lift220374_ '())
                                   (_bind20375_ '()))
                     (let* ((_rest2037620384_ _rest20372_)
                            (_else2037820392_
                             (lambda ()
                               (values (reverse _lift120373_)
                                       (reverse _lift220374_)
                                       (reverse _bind20375_))))
                            (_K2038020744_
                             (lambda (_rest20395_ _hd20396_)
                               (let* ((___stx3055230553_ _hd20396_)
                                      (_g2039920424_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3055230553_))))
                                 (let ((___kont3055430555_
                                        (lambda (_L20494_ _L20495_)
                                          (let* ((_g2050920562_
                                                  (lambda (_g2051020559_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2051020559_)))
                                                 (_g2050820738_
                                                  (lambda (_g2051020565_)
                                                    (if (gx#stx-pair?
                                                         _g2051020565_)
                                                        (let ((_e2051620567_
                                                               (gx#stx-e
                                                                _g2051020565_)))
                                                          (let ((_hd2051720570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2051620567_))
                        (_tl2051820572_ (##cdr _e2051620567_)))
                    (if (gx#stx-pair? _tl2051820572_)
                        (let ((_e2051920575_ (gx#stx-e _tl2051820572_)))
                          (let ((_hd2052020578_ (##car _e2051920575_))
                                (_tl2052120580_ (##cdr _e2051920575_)))
                            (if (gx#stx-pair? _hd2052020578_)
                                (let ((_e2052220583_
                                       (gx#stx-e _hd2052020578_)))
                                  (let ((_hd2052320586_ (##car _e2052220583_))
                                        (_tl2052420588_ (##cdr _e2052220583_)))
                                    (if (gx#stx-pair? _hd2052320586_)
                                        (let ((_e2052520591_
                                               (gx#stx-e _hd2052320586_)))
                                          (let ((_hd2052620594_
                                                 (##car _e2052520591_))
                                                (_tl2052720596_
                                                 (##cdr _e2052520591_)))
                                            (if (gx#stx-pair? _hd2052620594_)
                                                (let ((_e2052820599_
                                                       (gx#stx-e
                                                        _hd2052620594_)))
                                                  (let ((_hd2052920602_
                                                         (##car _e2052820599_))
                                                        (_tl2053020604_
                                                         (##cdr _e2052820599_)))
                                                    (if (gx#stx-null?
                                                         _tl2053020604_)
                                                        (if (gx#stx-pair?
                                                             _tl2052720596_)
                                                            (let ((_e2053120607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2052720596_)))
                      (let ((_hd2053220610_ (##car _e2053120607_))
                            (_tl2053320612_ (##cdr _e2053120607_)))
                        (if (gx#stx-pair? _hd2053220610_)
                            (let ((_e2053420615_ (gx#stx-e _hd2053220610_)))
                              (let ((_hd2053520618_ (##car _e2053420615_))
                                    (_tl2053620620_ (##cdr _e2053420615_)))
                                (if (gx#stx-pair? _tl2053620620_)
                                    (let ((_e2053720623_
                                           (gx#stx-e _tl2053620620_)))
                                      (let ((_hd2053820626_
                                             (##car _e2053720623_))
                                            (_tl2053920628_
                                             (##cdr _e2053720623_)))
                                        (if (gx#stx-pair? _hd2053820626_)
                                            (let ((_e2054020631_
                                                   (gx#stx-e _hd2053820626_)))
                                              (let ((_hd2054120634_
                                                     (##car _e2054020631_))
                                                    (_tl2054220636_
                                                     (##cdr _e2054020631_)))
                                                (if (gx#stx-pair?
                                                     _hd2054120634_)
                                                    (let ((_e2054320639_
                                                           (gx#stx-e
                                                            _hd2054120634_)))
                                                      (let ((_hd2054420642_
                                                             (##car _e2054320639_))
                                                            (_tl2054520644_
                                                             (##cdr _e2054320639_)))
                                                        (if (gx#stx-pair?
                                                             _hd2054420642_)
                                                            (let ((_e2054620647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2054420642_)))
                      (let ((_hd2054720650_ (##car _e2054620647_))
                            (_tl2054820652_ (##cdr _e2054620647_)))
                        (if (gx#stx-null? _tl2054820652_)
                            (if (gx#stx-pair? _tl2054520644_)
                                (let ((_e2054920655_
                                       (gx#stx-e _tl2054520644_)))
                                  (let ((_hd2055020658_ (##car _e2054920655_))
                                        (_tl2055120660_ (##cdr _e2054920655_)))
                                    (if (gx#stx-null? _tl2055120660_)
                                        (if (gx#stx-null? _tl2054220636_)
                                            (if (gx#stx-pair? _tl2053920628_)
                                                (let ((_e2055220663_
                                                       (gx#stx-e
                                                        _tl2053920628_)))
                                                  (let ((_hd2055320666_
                                                         (##car _e2055220663_))
                                                        (_tl2055420668_
                                                         (##cdr _e2055220663_)))
                                                    (if (gx#stx-null?
                                                         _tl2055420668_)
                                                        (if (gx#stx-null?
                                                             _tl2053320612_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2052420588_)
                        (if (gx#stx-pair? _tl2052120580_)
                            (let ((_e2055520671_ (gx#stx-e _tl2052120580_)))
                              (let ((_hd2055620674_ (##car _e2055520671_))
                                    (_tl2055720676_ (##cdr _e2055520671_)))
                                (if (gx#stx-null? _tl2055720676_)
                                    ((lambda (_L20679_
                                              _L20680_
                                              _L20681_
                                              _L20682_
                                              _L20683_)
                                       (let* ((_get-kws-id20723_
                                               (make-symbol
                                                (gx#stx-e _L20495_)
                                                (gensym '__)))
                                              (_get-kws-id20725_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id20723_
                                                (gx#stx-source _stx20196_)))
                                              (_main-id20727_
                                               (make-symbol
                                                (gx#stx-e _L20495_)
                                                (gensym '__)))
                                              (_main-id20729_
                                               (gx#core-quote-syntax__1
                                                _main-id20727_
                                                (gx#stx-source _stx20196_)))
                                              (_g30825_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id20725_))
                                              (_g30826_
                                               (gx#core-bind-runtime!__0
                                                _main-id20729_))
                                              (_new-kw-dispatch20733_
                                               (gxc#apply-expression-subst
                                                _L20679_
                                                _L20683_
                                                _get-kws-id20725_))
                                              (_new-get-kws20735_
                                               (gxc#apply-expression-subst
                                                _L20680_
                                                _L20682_
                                                _main-id20729_)))
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L20495_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id20725_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id20729_))
                                         (_lp20370_
                                          _rest20395_
                                          (cons (_bind-e__2819028191_
                                                 _main-id20729_
                                                 _L20681_
                                                 '#f)
                                                _lift120373_)
                                          (cons (_bind-e__2819028191_
                                                 _get-kws-id20725_
                                                 _new-get-kws20735_
                                                 '#f)
                                                _lift220374_)
                                          (cons (_bind-e__2819028191_
                                                 _L20495_
                                                 _new-kw-dispatch20733_
                                                 '#f)
                                                _bind20375_))))
                                     _hd2055620674_
                                     _hd2055320666_
                                     _hd2055020658_
                                     _hd2054720650_
                                     _hd2052920602_)
                                    (_g2050920562_ _g2051020565_))))
                            (_g2050920562_ _g2051020565_))
                        (_g2050920562_ _g2051020565_))
                    (_g2050920562_ _g2051020565_))
                (_g2050920562_ _g2051020565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2050920562_ _g2051020565_))
                                            (_g2050920562_ _g2051020565_))
                                        (_g2050920562_ _g2051020565_))))
                                (_g2050920562_ _g2051020565_))
                            (_g2050920562_ _g2051020565_))))
                    (_g2050920562_ _g2051020565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2050920562_
                                                     _g2051020565_))))
                                            (_g2050920562_ _g2051020565_))))
                                    (_g2050920562_ _g2051020565_))))
                            (_g2050920562_ _g2051020565_))))
                    (_g2050920562_ _g2051020565_))
                (_g2050920562_ _g2051020565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2050920562_
                                                 _g2051020565_))))
                                        (_g2050920562_ _g2051020565_))))
                                (_g2050920562_ _g2051020565_))))
                        (_g2050920562_ _g2051020565_))))
                (_g2050920562_ _g2051020565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2050820738_ _L20494_))))
                                       (___kont3055630557_
                                        (lambda (_L20445_ _L20446_)
                                          (_lp20370_
                                           _rest20395_
                                           _lift120373_
                                           _lift220374_
                                           (cons (cons _L20446_
                                                       (cons _L20445_ '()))
                                                 _bind20375_)))))
                                   (let ((___match3057930580_
                                          (lambda (_e2040320470_
                                                   _hd2040420473_
                                                   _tl2040520475_
                                                   _e2040620478_
                                                   _hd2040720481_
                                                   _tl2040820483_
                                                   _e2040920486_
                                                   _hd2041020489_
                                                   _tl2041120491_)
                                            (let ((_L20494_ _hd2041020489_)
                                                  (_L20495_ _hd2040720481_))
                                              (if (and (gx#identifier?
                                                        _L20495_)
                                                       (gxc#kw-lambda-expr?
                                                        _L20494_))
                                                  (___kont3055430555_
                                                   _L20494_
                                                   _L20495_)
                                                  (___kont3055630557_
                                                   _hd2041020489_
                                                   _hd2040420473_))))))
                                     (if (gx#stx-pair? ___stx3055230553_)
                                         (let ((_e2040320470_
                                                (gx#stx-e ___stx3055230553_)))
                                           (let ((_tl2040520475_
                                                  (##cdr _e2040320470_))
                                                 (_hd2040420473_
                                                  (##car _e2040320470_)))
                                             (if (gx#stx-pair? _hd2040420473_)
                                                 (let ((_e2040620478_
                                                        (gx#stx-e
                                                         _hd2040420473_)))
                                                   (let ((_tl2040820483_
                                                          (##cdr _e2040620478_))
                                                         (_hd2040720481_
                                                          (##car _e2040620478_)))
                                                     (if (gx#stx-null?
                                                          _tl2040820483_)
                                                         (if (gx#stx-pair?
                                                              _tl2040520475_)
                                                             (let ((_e2040920486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl2040520475_)))
                       (let ((_tl2041120491_ (##cdr _e2040920486_))
                             (_hd2041020489_ (##car _e2040920486_)))
                         (if (gx#stx-null? _tl2041120491_)
                             (___match3057930580_
                              _e2040320470_
                              _hd2040420473_
                              _tl2040520475_
                              _e2040620478_
                              _hd2040720481_
                              _tl2040820483_
                              _e2040920486_
                              _hd2041020489_
                              _tl2041120491_)
                             (_g2039920424_))))
                     (_g2039920424_))
                 (if (gx#stx-pair? _tl2040520475_)
                     (let ((_e2041720437_ (gx#stx-e _tl2040520475_)))
                       (let ((_tl2041920442_ (##cdr _e2041720437_))
                             (_hd2041820440_ (##car _e2041720437_)))
                         (if (gx#stx-null? _tl2041920442_)
                             (___kont3055630557_ _hd2041820440_ _hd2040420473_)
                             (_g2039920424_))))
                     (_g2039920424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl2040520475_)
                                                     (let ((_e2041720437_
                                                            (gx#stx-e
                                                             _tl2040520475_)))
                                                       (let ((_tl2041920442_
                                                              (##cdr _e2041720437_))
                                                             (_hd2041820440_
                                                              (##car _e2041720437_)))
                                                         (if (gx#stx-null?
                                                              _tl2041920442_)
                                                             (___kont3055630557_
                                                              _hd2041820440_
                                                              _hd2040420473_)
                                                             (_g2039920424_))))
                                                     (_g2039920424_)))))
                                         (_g2039920424_))))))))
                       (if (##pair? _rest2037620384_)
                           (let ((_hd2038120747_ (##car _rest2037620384_))
                                 (_tl2038220749_ (##cdr _rest2037620384_)))
                             (let* ((_hd20752_ _hd2038120747_)
                                    (_rest20754_ _tl2038220749_))
                               (_K2038020744_ _rest20754_ _hd20752_)))
                           (_else2037820392_)))))))
        (let* ((___stx3059630597_ _stx20196_)
               (_g2020420230_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3059630597_))))
          (let ((___kont3059830599_
                 (lambda (_L20290_ _L20291_)
                   (call-with-parameters
                    (lambda ()
                      (if (ormap1 _lift-kw-lambda?20200_
                                  (foldr1 (lambda (_g2031920322_ _g2032020324_)
                                            (cons _g2031920322_ _g2032020324_))
                                          '()
                                          _L20291_))
                          (let ((_g30827_
                                 (_lift-kw-lambda-bindings20201_
                                  (foldr1 (lambda (_g2032620329_ _g2032720331_)
                                            (cons _g2032620329_ _g2032720331_))
                                          '()
                                          _L20291_))))
                            (begin
                              (let ((_g30828_
                                     (if (##values? _g30827_)
                                         (##vector-length _g30827_)
                                         1)))
                                (if (not (##fx= _g30828_ 3))
                                    (error "Context expects 3 values"
                                           _g30828_)))
                              (let ((_lift120334_ (##vector-ref _g30827_ 0))
                                    (_lift220335_ (##vector-ref _g30827_ 1))
                                    (_hd20336_ (##vector-ref _g30827_ 2)))
                                (let* ((_expr20338_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd20336_
                                                     (cons _L20290_ '())))
                                         _stx20196_))
                                       (_expr20340_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift220335_
                                                     (cons _expr20338_ '())))
                                         _stx20196_))
                                       (_expr20342_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift120334_
                                                     (cons _expr20340_ '())))
                                         _stx20196_)))
                                  (gxc#lift-top-lambda-let-values%
                                   _expr20342_)))))
                          (let ((_g30829_
                                 (_compile-bindings20199_
                                  (foldr1 (lambda (_g2034420347_ _g2034520349_)
                                            (cons _g2034420347_ _g2034520349_))
                                          '()
                                          _L20291_))))
                            (begin
                              (let ((_g30830_
                                     (if (##values? _g30829_)
                                         (##vector-length _g30829_)
                                         1)))
                                (if (not (##fx= _g30830_ 3))
                                    (error "Context expects 3 values"
                                           _g30830_)))
                              (let ((_lift120352_ (##vector-ref _g30829_ 0))
                                    (_lift220353_ (##vector-ref _g30829_ 1))
                                    (_hd20354_ (##vector-ref _g30829_ 2)))
                                (let* ((_body20356_ (gxc#compile-e _L20290_))
                                       (_expr20358_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd20354_
                                                     (cons _body20356_ '())))
                                         _stx20196_))
                                       (_expr20360_
                                        (if (null? _lift220353_)
                                            _expr20358_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift220353_
                                                         (cons _expr20358_
                                                               '())))
                                             _stx20196_)))
                                       (_expr20362_
                                        (if (null? _lift120352_)
                                            _expr20360_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift120352_
                                                         (cons _expr20360_
                                                               '())))
                                             _stx20196_))))
                                  _expr20362_))))))
                    gx#current-expander-context
                    (let ((__obj30803 (make-object gx#local-context::t '5)))
                      (gx#local-context:::init!__0 __obj30803)
                      __obj30803))))
                (___kont3060230603_
                 (lambda () (gxc#xform-let-values% _stx20196_))))
            (let ((___match3062330624_
                   (lambda (_e2020820242_
                            _hd2020920245_
                            _tl2021020247_
                            _e2021120250_
                            _hd2021220253_
                            _tl2021320255_
                            ___splice3060030601_
                            _target2021420258_
                            _tl2021620260_)
                     (letrec ((_loop2021720263_
                               (lambda (_hd2021520266_ _bind2022120268_)
                                 (if (gx#stx-pair? _hd2021520266_)
                                     (let ((_e2021820271_
                                            (gx#stx-e _hd2021520266_)))
                                       (let ((_lp-tl2022020276_
                                              (##cdr _e2021820271_))
                                             (_lp-hd2021920274_
                                              (##car _e2021820271_)))
                                         (_loop2021720263_
                                          _lp-tl2022020276_
                                          (cons _lp-hd2021920274_
                                                _bind2022120268_))))
                                     (let ((_bind2022220279_
                                            (reverse _bind2022120268_)))
                                       (if (gx#stx-pair? _tl2021320255_)
                                           (let ((_e2022320282_
                                                  (gx#stx-e _tl2021320255_)))
                                             (let ((_tl2022520287_
                                                    (##cdr _e2022320282_))
                                                   (_hd2022420285_
                                                    (##car _e2022320282_)))
                                               (if (gx#stx-null?
                                                    _tl2022520287_)
                                                   (let ((_L20290_
                                                          _hd2022420285_)
                                                         (_L20291_
                                                          _bind2022220279_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr1 (lambda (_g2031120314_ _g2031220316_)
                                   (cons _g2031120314_ _g2031220316_))
                                 '()
                                 _L20291_))
                 (___kont3059830599_ _L20290_ _L20291_)
                 (___kont3060230603_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3060230603_))))
                                           (___kont3060230603_)))))))
                       (_loop2021720263_ _target2021420258_ '())))))
              (if (gx#stx-pair? ___stx3059630597_)
                  (let ((_e2020820242_ (gx#stx-e ___stx3059630597_)))
                    (let ((_tl2021020247_ (##cdr _e2020820242_))
                          (_hd2020920245_ (##car _e2020820242_)))
                      (if (gx#stx-pair? _tl2021020247_)
                          (let ((_e2021120250_ (gx#stx-e _tl2021020247_)))
                            (let ((_tl2021320255_ (##cdr _e2021120250_))
                                  (_hd2021220253_ (##car _e2021120250_)))
                              (if (gx#stx-pair/null? _hd2021220253_)
                                  (let ((___splice3060030601_
                                         (gx#syntax-split-splice
                                          _hd2021220253_
                                          '0)))
                                    (let ((_tl2021620260_
                                           (##vector-ref
                                            ___splice3060030601_
                                            '1))
                                          (_target2021420258_
                                           (##vector-ref
                                            ___splice3060030601_
                                            '0)))
                                      (if (gx#stx-null? _tl2021620260_)
                                          (___match3062330624_
                                           _e2020820242_
                                           _hd2020920245_
                                           _tl2021020247_
                                           _e2021120250_
                                           _hd2021220253_
                                           _tl2021320255_
                                           ___splice3060030601_
                                           _target2021420258_
                                           _tl2021620260_)
                                          (___kont3060230603_))))
                                  (___kont3060230603_))))
                          (___kont3060230603_))))
                  (___kont3060230603_))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx19340_)
      (letrec* ((_bind-e__2819528196_
                 (lambda (_id20180_ _expr20181_ _compile?20182_)
                   (cons (cons _id20180_ '())
                         (cons (if _compile?20182_
                                   (gxc#compile-e _expr20181_)
                                   _expr20181_)
                               '()))))
                (_bind-e__0__2819728198_
                 (lambda (_id20187_ _expr20188_)
                   (let ((_compile?20190_ '#t))
                     (_bind-e__2819528196_
                      _id20187_
                      _expr20188_
                      _compile?20190_))))
                (_bind-e19342_
                 (lambda _g30832_
                   (let ((_g30831_ (length _g30832_)))
                     (cond ((##fx= _g30831_ 2)
                            (apply _bind-e__0__2819728198_ _g30832_))
                           ((##fx= _g30831_ 3)
                            (apply _bind-e__2819528196_ _g30832_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g30832_))))))
                (_compile-bindings19343_
                 (lambda (_rest19478_)
                   (let _lp19480_ ((_rest19482_ _rest19478_) (_bind19483_ '()))
                     (let* ((_rest1948419492_ _rest19482_)
                            (_else1948619500_
                             (lambda () (reverse _bind19483_)))
                            (_K1948820167_
                             (lambda (_rest19503_ _hd19504_)
                               (let* ((___stx3064630647_ _hd19504_)
                                      (_g1950919556_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3064630647_))))
                                 (let ((___kont3064830649_
                                        (lambda (_L20074_ _L20075_)
                                          (let* ((___stx3062630627_ _L20074_)
                                                 (_g2009020104_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx3062630627_))))
                                            (let ((___kont3062830629_
                                                   (lambda (_L20152_)
                                                     (_lp19480_
                                                      _rest19503_
                                                      (cons (_bind-e__2819528196_
                                                             _L20075_
                                                             _L20074_
                                                             '#f)
                                                            _bind19483_))))
                                                  (___kont3063030631_
                                                   (lambda (_L20117_)
                                                     (let ((_g30833_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx19340_
                                                             _L20075_
                                                             _L20117_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g30834_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g30833_)
                            (##vector-length _g30833_)
                            1)))
                   (if (not (##fx= _g30834_ 3))
                       (error "Context expects 3 values" _g30834_)))
                 (let ((_ids20127_ (##vector-ref _g30833_ 0))
                       (_impls20128_ (##vector-ref _g30833_ 1))
                       (_clauses20129_ (##vector-ref _g30833_ 2)))
                   (let* ((_g30835_
                           (for-each gx#core-bind-runtime! _ids20127_))
                          (_xbind20132_
                           (map _bind-e19342_ _ids20127_ _impls20128_))
                          (_expr*20134_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses20129_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*20136_
                           (_bind-e__2819528196_ _L20075_ _expr*20134_ '#f)))
                     (gxc#verbose
                      '"lift case-lambda clauses "
                      (gxc#identifier-symbol _L20075_)
                      '" => "
                      (map gxc#identifier-symbol _ids20127_))
                     (_lp19480_
                      _rest19503_
                      (cons _bind*20136_
                            (foldl1 cons _bind19483_ _xbind20132_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match3063730638_
                                                     (lambda (_e2009320144_
                                                              _hd2009420147_
                                                              _tl2009520149_)
                                                       (let ((_L20152_
                                                              _tl2009520149_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L20152_)
                     (___kont3062830629_ _L20152_)
                     (___kont3063030631_ _tl2009520149_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx3062630627_)
                                                    (let ((_e2009320144_
                                                           (gx#stx-e
                                                            ___stx3062630627_)))
                                                      (let ((_tl2009520149_
                                                             (##cdr _e2009320144_))
                                                            (_hd2009420147_
                                                             (##car _e2009320144_)))
                                                        (___match3063730638_
                                                         _e2009320144_
                                                         _hd2009420147_
                                                         _tl2009520149_)))
                                                    (_g2009020104_)))))))
                                       (___kont3065030651_
                                        (lambda (_L19902_ _L19903_)
                                          (let* ((_g1991719947_
                                                  (lambda (_g1991819944_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1991819944_)))
                                                 (_g1991620042_
                                                  (lambda (_g1991819950_)
                                                    (if (gx#stx-pair?
                                                         _g1991819950_)
                                                        (let ((_e1992219952_
                                                               (gx#stx-e
                                                                _g1991819950_)))
                                                          (let ((_hd1992319955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1992219952_))
                        (_tl1992419957_ (##cdr _e1992219952_)))
                    (if (gx#stx-pair? _tl1992419957_)
                        (let ((_e1992519960_ (gx#stx-e _tl1992419957_)))
                          (let ((_hd1992619963_ (##car _e1992519960_))
                                (_tl1992719965_ (##cdr _e1992519960_)))
                            (if (gx#stx-pair? _hd1992619963_)
                                (let ((_e1992819968_
                                       (gx#stx-e _hd1992619963_)))
                                  (let ((_hd1992919971_ (##car _e1992819968_))
                                        (_tl1993019973_ (##cdr _e1992819968_)))
                                    (if (gx#stx-pair? _hd1992919971_)
                                        (let ((_e1993119976_
                                               (gx#stx-e _hd1992919971_)))
                                          (let ((_hd1993219979_
                                                 (##car _e1993119976_))
                                                (_tl1993319981_
                                                 (##cdr _e1993119976_)))
                                            (if (gx#stx-pair? _hd1993219979_)
                                                (let ((_e1993419984_
                                                       (gx#stx-e
                                                        _hd1993219979_)))
                                                  (let ((_hd1993519987_
                                                         (##car _e1993419984_))
                                                        (_tl1993619989_
                                                         (##cdr _e1993419984_)))
                                                    (if (gx#stx-null?
                                                         _tl1993619989_)
                                                        (if (gx#stx-pair?
                                                             _tl1993319981_)
                                                            (let ((_e1993719992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1993319981_)))
                      (let ((_hd1993819995_ (##car _e1993719992_))
                            (_tl1993919997_ (##cdr _e1993719992_)))
                        (if (gx#stx-null? _tl1993919997_)
                            (if (gx#stx-null? _tl1993019973_)
                                (if (gx#stx-pair? _tl1992719965_)
                                    (let ((_e1994020000_
                                           (gx#stx-e _tl1992719965_)))
                                      (let ((_hd1994120003_
                                             (##car _e1994020000_))
                                            (_tl1994220005_
                                             (##cdr _e1994020000_)))
                                        (if (gx#stx-null? _tl1994220005_)
                                            ((lambda (_L20008_
                                                      _L20009_
                                                      _L20010_)
                                               (let* ((_lambda-id20034_
                                                       (make-symbol
                                                        (gx#stx-e _L19903_)
                                                        (gensym '__)))
                                                      (_lambda-id20036_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id20034_
                                                        (gx#stx-source
                                                         _stx19340_)))
                                                      (_g30836_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id20036_))
                                                      (_new-case-lambda-expr20039_
                                                       (gxc#apply-expression-subst
                                                        _L20008_
                                                        _L20010_
                                                        _lambda-id20036_)))
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L19903_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id20036_))
                                                 (_lp19480_
                                                  (cons (_bind-e__2819528196_
                                                         _L19903_
                                                         _new-case-lambda-expr20039_
                                                         '#f)
                                                        _rest19503_)
                                                  (cons (_bind-e__0__2819728198_
                                                         _lambda-id20036_
                                                         _L20009_)
                                                        _bind19483_))))
                                             _hd1994120003_
                                             _hd1993819995_
                                             _hd1993519987_)
                                            (_g1991719947_ _g1991819950_))))
                                    (_g1991719947_ _g1991819950_))
                                (_g1991719947_ _g1991819950_))
                            (_g1991719947_ _g1991819950_))))
                    (_g1991719947_ _g1991819950_))
                (_g1991719947_ _g1991819950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1991719947_
                                                 _g1991819950_))))
                                        (_g1991719947_ _g1991819950_))))
                                (_g1991719947_ _g1991819950_))))
                        (_g1991719947_ _g1991819950_))))
                (_g1991719947_ _g1991819950_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1991620042_ _L19902_))))
                                       (___kont3065230653_
                                        (lambda (_L19626_ _L19627_)
                                          (let* ((_g1964119694_
                                                  (lambda (_g1964219691_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1964219691_)))
                                                 (_g1964019870_
                                                  (lambda (_g1964219697_)
                                                    (if (gx#stx-pair?
                                                         _g1964219697_)
                                                        (let ((_e1964819699_
                                                               (gx#stx-e
                                                                _g1964219697_)))
                                                          (let ((_hd1964919702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1964819699_))
                        (_tl1965019704_ (##cdr _e1964819699_)))
                    (if (gx#stx-pair? _tl1965019704_)
                        (let ((_e1965119707_ (gx#stx-e _tl1965019704_)))
                          (let ((_hd1965219710_ (##car _e1965119707_))
                                (_tl1965319712_ (##cdr _e1965119707_)))
                            (if (gx#stx-pair? _hd1965219710_)
                                (let ((_e1965419715_
                                       (gx#stx-e _hd1965219710_)))
                                  (let ((_hd1965519718_ (##car _e1965419715_))
                                        (_tl1965619720_ (##cdr _e1965419715_)))
                                    (if (gx#stx-pair? _hd1965519718_)
                                        (let ((_e1965719723_
                                               (gx#stx-e _hd1965519718_)))
                                          (let ((_hd1965819726_
                                                 (##car _e1965719723_))
                                                (_tl1965919728_
                                                 (##cdr _e1965719723_)))
                                            (if (gx#stx-pair? _hd1965819726_)
                                                (let ((_e1966019731_
                                                       (gx#stx-e
                                                        _hd1965819726_)))
                                                  (let ((_hd1966119734_
                                                         (##car _e1966019731_))
                                                        (_tl1966219736_
                                                         (##cdr _e1966019731_)))
                                                    (if (gx#stx-null?
                                                         _tl1966219736_)
                                                        (if (gx#stx-pair?
                                                             _tl1965919728_)
                                                            (let ((_e1966319739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1965919728_)))
                      (let ((_hd1966419742_ (##car _e1966319739_))
                            (_tl1966519744_ (##cdr _e1966319739_)))
                        (if (gx#stx-pair? _hd1966419742_)
                            (let ((_e1966619747_ (gx#stx-e _hd1966419742_)))
                              (let ((_hd1966719750_ (##car _e1966619747_))
                                    (_tl1966819752_ (##cdr _e1966619747_)))
                                (if (gx#stx-pair? _tl1966819752_)
                                    (let ((_e1966919755_
                                           (gx#stx-e _tl1966819752_)))
                                      (let ((_hd1967019758_
                                             (##car _e1966919755_))
                                            (_tl1967119760_
                                             (##cdr _e1966919755_)))
                                        (if (gx#stx-pair? _hd1967019758_)
                                            (let ((_e1967219763_
                                                   (gx#stx-e _hd1967019758_)))
                                              (let ((_hd1967319766_
                                                     (##car _e1967219763_))
                                                    (_tl1967419768_
                                                     (##cdr _e1967219763_)))
                                                (if (gx#stx-pair?
                                                     _hd1967319766_)
                                                    (let ((_e1967519771_
                                                           (gx#stx-e
                                                            _hd1967319766_)))
                                                      (let ((_hd1967619774_
                                                             (##car _e1967519771_))
                                                            (_tl1967719776_
                                                             (##cdr _e1967519771_)))
                                                        (if (gx#stx-pair?
                                                             _hd1967619774_)
                                                            (let ((_e1967819779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1967619774_)))
                      (let ((_hd1967919782_ (##car _e1967819779_))
                            (_tl1968019784_ (##cdr _e1967819779_)))
                        (if (gx#stx-null? _tl1968019784_)
                            (if (gx#stx-pair? _tl1967719776_)
                                (let ((_e1968119787_
                                       (gx#stx-e _tl1967719776_)))
                                  (let ((_hd1968219790_ (##car _e1968119787_))
                                        (_tl1968319792_ (##cdr _e1968119787_)))
                                    (if (gx#stx-null? _tl1968319792_)
                                        (if (gx#stx-null? _tl1967419768_)
                                            (if (gx#stx-pair? _tl1967119760_)
                                                (let ((_e1968419795_
                                                       (gx#stx-e
                                                        _tl1967119760_)))
                                                  (let ((_hd1968519798_
                                                         (##car _e1968419795_))
                                                        (_tl1968619800_
                                                         (##cdr _e1968419795_)))
                                                    (if (gx#stx-null?
                                                         _tl1968619800_)
                                                        (if (gx#stx-null?
                                                             _tl1966519744_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1965619720_)
                        (if (gx#stx-pair? _tl1965319712_)
                            (let ((_e1968719803_ (gx#stx-e _tl1965319712_)))
                              (let ((_hd1968819806_ (##car _e1968719803_))
                                    (_tl1968919808_ (##cdr _e1968719803_)))
                                (if (gx#stx-null? _tl1968919808_)
                                    ((lambda (_L19811_
                                              _L19812_
                                              _L19813_
                                              _L19814_
                                              _L19815_)
                                       (let* ((_get-kws-id19855_
                                               (make-symbol
                                                (gx#stx-e _L19627_)
                                                (gensym '__)))
                                              (_get-kws-id19857_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id19855_
                                                (gx#stx-source _stx19340_)))
                                              (_main-id19859_
                                               (make-symbol
                                                (gx#stx-e _L19627_)
                                                (gensym '__)))
                                              (_main-id19861_
                                               (gx#core-quote-syntax__1
                                                _main-id19859_
                                                (gx#stx-source _stx19340_)))
                                              (_g30837_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id19857_))
                                              (_g30838_
                                               (gx#core-bind-runtime!__0
                                                _main-id19861_))
                                              (_new-kw-dispatch19865_
                                               (gxc#apply-expression-subst
                                                _L19811_
                                                _L19815_
                                                _get-kws-id19857_))
                                              (_new-get-kws19867_
                                               (gxc#apply-expression-subst
                                                _L19812_
                                                _L19814_
                                                _main-id19861_)))
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L19627_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id19857_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id19861_))
                                         (_lp19480_
                                          (cons (_bind-e__2819528196_
                                                 _main-id19861_
                                                 _L19813_
                                                 '#f)
                                                (cons (_bind-e__2819528196_
                                                       _get-kws-id19857_
                                                       _new-get-kws19867_
                                                       '#f)
                                                      (cons (_bind-e__2819528196_
                                                             _L19627_
                                                             _new-kw-dispatch19865_
                                                             '#f)
                                                            _rest19503_)))
                                          _bind19483_)))
                                     _hd1968819806_
                                     _hd1968519798_
                                     _hd1968219790_
                                     _hd1967919782_
                                     _hd1966119734_)
                                    (_g1964119694_ _g1964219697_))))
                            (_g1964119694_ _g1964219697_))
                        (_g1964119694_ _g1964219697_))
                    (_g1964119694_ _g1964219697_))
                (_g1964119694_ _g1964219697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1964119694_ _g1964219697_))
                                            (_g1964119694_ _g1964219697_))
                                        (_g1964119694_ _g1964219697_))))
                                (_g1964119694_ _g1964219697_))
                            (_g1964119694_ _g1964219697_))))
                    (_g1964119694_ _g1964219697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1964119694_
                                                     _g1964219697_))))
                                            (_g1964119694_ _g1964219697_))))
                                    (_g1964119694_ _g1964219697_))))
                            (_g1964119694_ _g1964219697_))))
                    (_g1964119694_ _g1964219697_))
                (_g1964119694_ _g1964219697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1964119694_
                                                 _g1964219697_))))
                                        (_g1964119694_ _g1964219697_))))
                                (_g1964119694_ _g1964219697_))))
                        (_g1964119694_ _g1964219697_))))
                (_g1964119694_ _g1964219697_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1964019870_ _L19626_))))
                                       (___kont3065430655_
                                        (lambda (_L19577_ _L19578_)
                                          (_lp19480_
                                           _rest19503_
                                           (cons (cons _L19578_
                                                       (cons (gxc#compile-e
                                                              _L19577_)
                                                             '()))
                                                 _bind19483_)))))
                                   (let* ((___match3072130722_
                                           (lambda (_e1953519602_
                                                    _hd1953619605_
                                                    _tl1953719607_
                                                    _e1953819610_
                                                    _hd1953919613_
                                                    _tl1954019615_
                                                    _e1954119618_
                                                    _hd1954219621_
                                                    _tl1954319623_)
                                             (let ((_L19626_ _hd1954219621_)
                                                   (_L19627_ _hd1953919613_))
                                               (if (and (gx#identifier?
                                                         _L19627_)
                                                        (gxc#kw-lambda-expr?
                                                         _L19626_))
                                                   (___kont3065230653_
                                                    _L19626_
                                                    _L19627_)
                                                   (___kont3065430655_
                                                    _hd1954219621_
                                                    _hd1953619605_)))))
                                          (___match3069930700_
                                           (lambda (_e1952419878_
                                                    _hd1952519881_
                                                    _tl1952619883_
                                                    _e1952719886_
                                                    _hd1952819889_
                                                    _tl1952919891_
                                                    _e1953019894_
                                                    _hd1953119897_
                                                    _tl1953219899_)
                                             (let ((_L19902_ _hd1953119897_)
                                                   (_L19903_ _hd1952819889_))
                                               (if (and (gx#identifier?
                                                         _L19903_)
                                                        (gxc#opt-lambda-expr?
                                                         _L19902_))
                                                   (___kont3065030651_
                                                    _L19902_
                                                    _L19903_)
                                                   (___match3072130722_
                                                    _e1952419878_
                                                    _hd1952519881_
                                                    _tl1952619883_
                                                    _e1952719886_
                                                    _hd1952819889_
                                                    _tl1952919891_
                                                    _e1953019894_
                                                    _hd1953119897_
                                                    _tl1953219899_)))))
                                          (___match3067730678_
                                           (lambda (_e1951320050_
                                                    _hd1951420053_
                                                    _tl1951520055_
                                                    _e1951620058_
                                                    _hd1951720061_
                                                    _tl1951820063_
                                                    _e1951920066_
                                                    _hd1952020069_
                                                    _tl1952120071_)
                                             (let ((_L20074_ _hd1952020069_)
                                                   (_L20075_ _hd1951720061_))
                                               (if (and (gx#identifier?
                                                         _L20075_)
                                                        (gxc#case-lambda-expr?
                                                         _L20074_))
                                                   (___kont3064830649_
                                                    _L20074_
                                                    _L20075_)
                                                   (___match3069930700_
                                                    _e1951320050_
                                                    _hd1951420053_
                                                    _tl1951520055_
                                                    _e1951620058_
                                                    _hd1951720061_
                                                    _tl1951820063_
                                                    _e1951920066_
                                                    _hd1952020069_
                                                    _tl1952120071_))))))
                                     (if (gx#stx-pair? ___stx3064630647_)
                                         (let ((_e1951320050_
                                                (gx#stx-e ___stx3064630647_)))
                                           (let ((_tl1951520055_
                                                  (##cdr _e1951320050_))
                                                 (_hd1951420053_
                                                  (##car _e1951320050_)))
                                             (if (gx#stx-pair? _hd1951420053_)
                                                 (let ((_e1951620058_
                                                        (gx#stx-e
                                                         _hd1951420053_)))
                                                   (let ((_tl1951820063_
                                                          (##cdr _e1951620058_))
                                                         (_hd1951720061_
                                                          (##car _e1951620058_)))
                                                     (if (gx#stx-null?
                                                          _tl1951820063_)
                                                         (if (gx#stx-pair?
                                                              _tl1951520055_)
                                                             (let ((_e1951920066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1951520055_)))
                       (let ((_tl1952120071_ (##cdr _e1951920066_))
                             (_hd1952020069_ (##car _e1951920066_)))
                         (if (gx#stx-null? _tl1952120071_)
                             (___match3067730678_
                              _e1951320050_
                              _hd1951420053_
                              _tl1951520055_
                              _e1951620058_
                              _hd1951720061_
                              _tl1951820063_
                              _e1951920066_
                              _hd1952020069_
                              _tl1952120071_)
                             (_g1950919556_))))
                     (_g1950919556_))
                 (if (gx#stx-pair? _tl1951520055_)
                     (let ((_e1954919569_ (gx#stx-e _tl1951520055_)))
                       (let ((_tl1955119574_ (##cdr _e1954919569_))
                             (_hd1955019572_ (##car _e1954919569_)))
                         (if (gx#stx-null? _tl1955119574_)
                             (___kont3065430655_ _hd1955019572_ _hd1951420053_)
                             (_g1950919556_))))
                     (_g1950919556_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1951520055_)
                                                     (let ((_e1954919569_
                                                            (gx#stx-e
                                                             _tl1951520055_)))
                                                       (let ((_tl1955119574_
                                                              (##cdr _e1954919569_))
                                                             (_hd1955019572_
                                                              (##car _e1954919569_)))
                                                         (if (gx#stx-null?
                                                              _tl1955119574_)
                                                             (___kont3065430655_
                                                              _hd1955019572_
                                                              _hd1951420053_)
                                                             (_g1950919556_))))
                                                     (_g1950919556_)))))
                                         (_g1950919556_))))))))
                       (if (##pair? _rest1948419492_)
                           (let ((_hd1948920170_ (##car _rest1948419492_))
                                 (_tl1949020172_ (##cdr _rest1948419492_)))
                             (let* ((_hd20175_ _hd1948920170_)
                                    (_rest20177_ _tl1949020172_))
                               (_K1948820167_ _rest20177_ _hd20175_)))
                           (_else1948619500_)))))))
        (let* ((___stx3073830739_ _stx19340_)
               (_g1934619373_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3073830739_))))
          (let ((___kont3074030741_
                 (lambda (_L19433_ _L19434_ _L19435_)
                   (call-with-parameters
                    (lambda ()
                      (let ((_hd19472_
                             (_compile-bindings19343_
                              (foldr1 (lambda (_g1946419467_ _g1946519469_)
                                        (cons _g1946419467_ _g1946519469_))
                                      '()
                                      _L19434_)))
                            (_body19473_ (gxc#compile-e _L19433_)))
                        (gxc#xform-wrap-source
                         (cons _L19435_
                               (cons _hd19472_ (cons _body19473_ '())))
                         _stx19340_)))
                    gx#current-expander-context
                    (let ((__obj30804 (make-object gx#local-context::t '5)))
                      (gx#local-context:::init!__0 __obj30804)
                      __obj30804))))
                (___kont3074430745_
                 (lambda () (gxc#xform-let-values% _stx19340_))))
            (let ((___match3076530766_
                   (lambda (_e1935119385_
                            _hd1935219388_
                            _tl1935319390_
                            _e1935419393_
                            _hd1935519396_
                            _tl1935619398_
                            ___splice3074230743_
                            _target1935719401_
                            _tl1935919403_)
                     (letrec ((_loop1936019406_
                               (lambda (_hd1935819409_ _bind1936419411_)
                                 (if (gx#stx-pair? _hd1935819409_)
                                     (let ((_e1936119414_
                                            (gx#stx-e _hd1935819409_)))
                                       (let ((_lp-tl1936319419_
                                              (##cdr _e1936119414_))
                                             (_lp-hd1936219417_
                                              (##car _e1936119414_)))
                                         (_loop1936019406_
                                          _lp-tl1936319419_
                                          (cons _lp-hd1936219417_
                                                _bind1936419411_))))
                                     (let ((_bind1936519422_
                                            (reverse _bind1936419411_)))
                                       (if (gx#stx-pair? _tl1935619398_)
                                           (let ((_e1936619425_
                                                  (gx#stx-e _tl1935619398_)))
                                             (let ((_tl1936819430_
                                                    (##cdr _e1936619425_))
                                                   (_hd1936719428_
                                                    (##car _e1936619425_)))
                                               (if (gx#stx-null?
                                                    _tl1936819430_)
                                                   (let ((_L19433_
                                                          _hd1936719428_)
                                                         (_L19434_
                                                          _bind1936519422_)
                                                         (_L19435_
                                                          _hd1935219388_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr1 (lambda (_g1945619459_ _g1945719461_)
                                   (cons _g1945619459_ _g1945719461_))
                                 '()
                                 _L19434_))
                 (___kont3074030741_ _L19433_ _L19434_ _L19435_)
                 (___kont3074430745_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3074430745_))))
                                           (___kont3074430745_)))))))
                       (_loop1936019406_ _target1935719401_ '())))))
              (if (gx#stx-pair? ___stx3073830739_)
                  (let ((_e1935119385_ (gx#stx-e ___stx3073830739_)))
                    (let ((_tl1935319390_ (##cdr _e1935119385_))
                          (_hd1935219388_ (##car _e1935119385_)))
                      (if (gx#stx-pair? _tl1935319390_)
                          (let ((_e1935419393_ (gx#stx-e _tl1935319390_)))
                            (let ((_tl1935619398_ (##cdr _e1935419393_))
                                  (_hd1935519396_ (##car _e1935419393_)))
                              (if (gx#stx-pair/null? _hd1935519396_)
                                  (let ((___splice3074230743_
                                         (gx#syntax-split-splice
                                          _hd1935519396_
                                          '0)))
                                    (let ((_tl1935919403_
                                           (##vector-ref
                                            ___splice3074230743_
                                            '1))
                                          (_target1935719401_
                                           (##vector-ref
                                            ___splice3074230743_
                                            '0)))
                                      (if (gx#stx-null? _tl1935919403_)
                                          (___match3076530766_
                                           _e1935119385_
                                           _hd1935219388_
                                           _tl1935319390_
                                           _e1935419393_
                                           _hd1935519396_
                                           _tl1935619398_
                                           ___splice3074230743_
                                           _target1935719401_
                                           _tl1935919403_)
                                          (___kont3074430745_))))
                                  (___kont3074430745_))))
                          (___kont3074430745_))))
                  (___kont3074430745_))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind19258_)
      (let* ((___stx3076830769_ _bind19258_)
             (_g1926119278_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx3076830769_))))
        (let ((___kont3077030771_
               (lambda (_L19314_ _L19315_)
                 (if (gx#identifier? _L19315_)
                     (let ((_$e19331_ (gxc#case-lambda-expr? _L19314_)))
                       (if _$e19331_
                           _$e19331_
                           (let ((_$e19334_ (gxc#opt-lambda-expr? _L19314_)))
                             (if _$e19334_
                                 _$e19334_
                                 (gxc#kw-lambda-expr? _L19314_)))))
                     '#f)))
              (___kont3077230773_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx3076830769_)
              (let ((_e1926519290_ (gx#stx-e ___stx3076830769_)))
                (let ((_tl1926719295_ (##cdr _e1926519290_))
                      (_hd1926619293_ (##car _e1926519290_)))
                  (if (gx#stx-pair? _hd1926619293_)
                      (let ((_e1926819298_ (gx#stx-e _hd1926619293_)))
                        (let ((_tl1927019303_ (##cdr _e1926819298_))
                              (_hd1926919301_ (##car _e1926819298_)))
                          (if (gx#stx-null? _tl1927019303_)
                              (if (gx#stx-pair? _tl1926719295_)
                                  (let ((_e1927119306_
                                         (gx#stx-e _tl1926719295_)))
                                    (let ((_tl1927319311_
                                           (##cdr _e1927119306_))
                                          (_hd1927219309_
                                           (##car _e1927119306_)))
                                      (if (gx#stx-null? _tl1927319311_)
                                          (___kont3077030771_
                                           _hd1927219309_
                                           _hd1926919301_)
                                          (___kont3077230773_))))
                                  (___kont3077230773_))
                              (___kont3077230773_))))
                      (___kont3077230773_))))
              (___kont3077230773_)))))))
