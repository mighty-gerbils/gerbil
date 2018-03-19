(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj47980 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj47980) __obj47980))))))
  (define gxc#optimize!
    (lambda (_ctx47673_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx47673_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx47673_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code47676_
                  (gxc#optimize-source
                   (##structure-ref _ctx47673_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx47673_
              _code47676_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx47618_)
      (letrec* ((_deps47620_
                 (let* ((_imports47664_
                         (##structure-ref
                          _ctx47618_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e47666_ (gx#core-context-prelude__% _ctx47618_)))
                   (if _$e47666_
                       ((lambda (_g4766847670_)
                          (cons _g4766847670_ _imports47664_))
                        _$e47666_)
                       _imports47664_))))
        (let _lp47622_ ((_rest47624_ _deps47620_))
          (let* ((_rest4762547633_ _rest47624_)
                 (_else4762747641_ (lambda () '#!void))
                 (_K4762947652_
                  (lambda (_rest47644_ _hd47645_)
                    (if (##structure-instance-of?
                         _hd47645_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd47645_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e47647_
                                       (gx#core-context-prelude__% _hd47645_)))
                                  (if _$e47647_
                                      ((lambda (_pre47650_)
                                         (_lp47622_
                                          (cons _pre47650_
                                                (##structure-ref
                                                 _hd47645_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e47647_)
                                      (_lp47622_
                                       (##structure-ref
                                        _hd47645_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd47645_)))
                          (_lp47622_ _rest47644_))
                        (if (##structure-instance-of?
                             _hd47645_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd47645_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp47622_
                                     (##structure-ref
                                      _hd47645_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd47645_)))
                              (_lp47622_ _rest47644_))
                            (if (##structure-direct-instance-of?
                                 _hd47645_
                                 'gx#module-import::t)
                                (_lp47622_
                                 (cons (##direct-structure-ref
                                        _hd47645_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest47644_))
                                (if (##structure-direct-instance-of?
                                     _hd47645_
                                     'gx#module-export::t)
                                    (_lp47622_
                                     (cons (##direct-structure-ref
                                            _hd47645_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest47644_))
                                    (if (##structure-direct-instance-of?
                                         _hd47645_
                                         'gx#import-set::t)
                                        (_lp47622_
                                         (cons (##direct-structure-ref
                                                _hd47645_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest47644_))
                                        (error '"Unexpected module import"
                                               _hd47645_)))))))))
            (if (##pair? _rest4762547633_)
                (let ((_hd4763047655_ (##car _rest4762547633_))
                      (_tl4763147657_ (##cdr _rest4762547633_)))
                  (let* ((_hd47660_ _hd4763047655_)
                         (_rest47662_ _tl4763147657_))
                    (_K4762947652_ _rest47662_ _hd47660_)))
                (_else4762747641_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx47598_)
      (if (if (##structure-instance-of? _ctx47598_ 'gx#module-context::t)
              (list? (##structure-ref _ctx47598_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht47600_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id47602_
                  (##structure-ref _ctx47598_ '1 gx#expander-context::t '#f))
                 (_mod47604_ (table-ref _ht47600_ _id47602_ '#f)))
            (let ((_$e47607_ _mod47604_))
              (if _$e47607_
                  _$e47607_
                  (let* ((_mod47610_ (gxc#optimizer-import-ssxi _ctx47598_))
                         (_val47615_
                          (let ((_$e47612_ _mod47610_))
                            (if _$e47612_ _$e47612_ '#!void))))
                    (begin
                      (table-set! _ht47600_ _id47602_ _val47615_)
                      _val47615_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx47575_)
      (letrec ((_catch-e47577_
                (lambda (_exn47596_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx47575_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn47596_))
                        '#!void)
                    '#f)))
               (_import-e47578_
                (lambda ()
                  (let* ((_str-id47581_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx47575_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path47589_
                          (let ((_odir4758247584_
                                 (gxc#current-compile-output-dir)))
                            (if _odir4758247584_
                                (let ((_odir47587_ _odir4758247584_))
                                  (path-expand
                                   (string-append _str-id47581_ '".ss")
                                   _odir47587_))
                                '#f)))
                         (_library-path47591_
                          (string->symbol
                           (string-append '":" _str-id47581_ '".ss")))
                         (_ssxi-path47593_
                          (if (if _artefact-path47589_
                                  (file-exists? _artefact-path47589_)
                                  '#f)
                              _artefact-path47589_
                              _library-path47591_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path47593_)
                      (gx#import-module__% _ssxi-path47593_ '#t '#t))))))
        (if (##structure-ref _ctx47575_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e47577_ _import-e47578_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx47569_)
      (begin
        (gxc#apply-collect-mutators _stx47569_)
        (let ((_stx47571_ (gxc#apply-lift-top-lambdas _stx47569_)))
          (begin
            (gxc#apply-collect-type-info _stx47571_)
            (let ((_stx47573_ (gxc#apply-optimize-annotated _stx47571_)))
              (gxc#apply-optimize-call _stx47573_)))))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl47566_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl47566_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl47566_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl47566_
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%)
           (table-set! _tbl47566_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl47566_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl47566_ '%#call gxc#generate-ssxi-call%)
           _tbl47566_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx47559_ . _args47561_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx47559_ _args47561_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-begin-syntax%
    (lambda (_stx47520_)
      (let* ((_g4752247532_
              (lambda (_g4752347529_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4752347529_)))
             (_g4752147556_
              (lambda (_g4752347535_)
                (if (gx#stx-pair? _g4752347535_)
                    (let ((_e4752547537_ (gx#stx-e _g4752347535_)))
                      (let ((_hd4752647540_ (##car _e4752547537_))
                            (_tl4752747542_ (##cdr _e4752547537_)))
                        ((lambda (_L47545_)
                           (call-with-parameters
                            (lambda ()
                              (gxc#generate-runtime-begin% _stx47520_))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl4752747542_)))
                    (_g4752247532_ _g4752347535_)))))
        (_g4752147556_ _stx47520_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx47460_)
      (let* ((_g4746247476_
              (lambda (_g4746347473_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4746347473_)))
             (_g4746147517_
              (lambda (_g4746347479_)
                (if (gx#stx-pair? _g4746347479_)
                    (let ((_e4746647481_ (gx#stx-e _g4746347479_)))
                      (let ((_hd4746747484_ (##car _e4746647481_))
                            (_tl4746847486_ (##cdr _e4746647481_)))
                        (if (gx#stx-pair? _tl4746847486_)
                            (let ((_e4746947489_ (gx#stx-e _tl4746847486_)))
                              (let ((_hd4747047492_ (##car _e4746947489_))
                                    (_tl4747147494_ (##cdr _e4746947489_)))
                                ((lambda (_L47497_ _L47498_)
                                   (let* ((_ctx47511_
                                           (gx#syntax-local-e__0 _L47498_))
                                          (_code47513_
                                           (##structure-ref
                                            _ctx47511_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code47513_))
                                      gx#current-expander-context
                                      _ctx47511_)))
                                 _tl4747147494_
                                 _hd4747047492_)))
                            (_g4746247476_ _g4746347479_))))
                    (_g4746247476_ _g4746347479_)))))
        (_g4746147517_ _stx47460_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx47270_)
      (letrec ((_generate-e47272_
                (lambda (_id47449_)
                  (let* ((_sym47451_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id47449_)
                              '#f))
                         (_$e47453_
                          (if _sym47451_
                              (gxc#optimizer-lookup-type _sym47451_)
                              '#f)))
                    (if _$e47453_
                        ((lambda (_type47456_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym47451_)
                             (let ((_typedecl47458_
                                    (call-method _type47456_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym47451_
                                           (cons _typedecl47458_ '()))))))
                         _$e47453_)
                        '(begin))))))
        (let* ((___stx4767947680_ _stx47270_)
               (_g4727547313_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4767947680_))))
          (let ((___kont4768147682_
                 (lambda (_L47431_) (_generate-e47272_ _L47431_)))
                (___kont4768347684_
                 (lambda (_L47366_)
                   (let ((_types47392_
                          (map _generate-e47272_
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g4738447387_ _g4738547389_)
                                           (cons _g4738447387_ _g4738547389_))
                                         '()
                                         _L47366_)))))
                     (cons 'begin _types47392_)))))
            (let ((___match4773447735_
                   (lambda (_e4729147318_
                            _hd4729247321_
                            _tl4729347323_
                            _e4729447326_
                            _hd4729547329_
                            _tl4729647331_
                            ___splice4768547686_
                            _target4729747334_
                            _tl4729947336_)
                     (letrec ((_loop4730047339_
                               (lambda (_hd4729847342_ _id4730447344_)
                                 (if (gx#stx-pair? _hd4729847342_)
                                     (let ((_e4730147347_
                                            (gx#stx-e _hd4729847342_)))
                                       (let ((_lp-tl4730347352_
                                              (##cdr _e4730147347_))
                                             (_lp-hd4730247350_
                                              (##car _e4730147347_)))
                                         (_loop4730047339_
                                          _lp-tl4730347352_
                                          (cons _lp-hd4730247350_
                                                _id4730447344_))))
                                     (let ((_id4730547355_
                                            (reverse _id4730447344_)))
                                       (if (gx#stx-pair? _tl4729647331_)
                                           (let ((_e4730647358_
                                                  (gx#stx-e _tl4729647331_)))
                                             (let ((_tl4730847363_
                                                    (##cdr _e4730647358_))
                                                   (_hd4730747361_
                                                    (##car _e4730647358_)))
                                               (if (gx#stx-null?
                                                    _tl4730847363_)
                                                   (___kont4768347684_
                                                    _id4730547355_)
                                                   (_g4727547313_))))
                                           (_g4727547313_)))))))
                       (_loop4730047339_ _target4729747334_ '())))))
              (if (gx#stx-pair? ___stx4767947680_)
                  (let ((_e4727847399_ (gx#stx-e ___stx4767947680_)))
                    (let ((_tl4728047404_ (##cdr _e4727847399_))
                          (_hd4727947402_ (##car _e4727847399_)))
                      (if (gx#stx-pair? _tl4728047404_)
                          (let ((_e4728147407_ (gx#stx-e _tl4728047404_)))
                            (let ((_tl4728347412_ (##cdr _e4728147407_))
                                  (_hd4728247410_ (##car _e4728147407_)))
                              (if (gx#stx-pair? _hd4728247410_)
                                  (let ((_e4728447415_
                                         (gx#stx-e _hd4728247410_)))
                                    (let ((_tl4728647420_
                                           (##cdr _e4728447415_))
                                          (_hd4728547418_
                                           (##car _e4728447415_)))
                                      (if (gx#stx-null? _tl4728647420_)
                                          (if (gx#stx-pair? _tl4728347412_)
                                              (let ((_e4728747423_
                                                     (gx#stx-e
                                                      _tl4728347412_)))
                                                (let ((_tl4728947428_
                                                       (##cdr _e4728747423_))
                                                      (_hd4728847426_
                                                       (##car _e4728747423_)))
                                                  (if (gx#stx-null?
                                                       _tl4728947428_)
                                                      (___kont4768147682_
                                                       _hd4728547418_)
                                                      (if (gx#stx-pair/null?
                                                           _hd4728247410_)
                                                          (let ((___splice4768547686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4728247410_ '0)))
                    (let ((_tl4729947336_
                           (##vector-ref ___splice4768547686_ '1))
                          (_target4729747334_
                           (##vector-ref ___splice4768547686_ '0)))
                      (if (gx#stx-null? _tl4729947336_)
                          (___match4773447735_
                           _e4727847399_
                           _hd4727947402_
                           _tl4728047404_
                           _e4728147407_
                           _hd4728247410_
                           _tl4728347412_
                           ___splice4768547686_
                           _target4729747334_
                           _tl4729947336_)
                          (_g4727547313_))))
                  (_g4727547313_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4728247410_)
                                                  (let ((___splice4768547686_
                                                         (gx#syntax-split-splice
                                                          _hd4728247410_
                                                          '0)))
                                                    (let ((_tl4729947336_
                                                           (##vector-ref
                                                            ___splice4768547686_
                                                            '1))
                                                          (_target4729747334_
                                                           (##vector-ref
                                                            ___splice4768547686_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl4729947336_)
                                                          (___match4773447735_
                                                           _e4727847399_
                                                           _hd4727947402_
                                                           _tl4728047404_
                                                           _e4728147407_
                                                           _hd4728247410_
                                                           _tl4728347412_
                                                           ___splice4768547686_
                                                           _target4729747334_
                                                           _tl4729947336_)
                                                          (_g4727547313_))))
                                                  (_g4727547313_)))
                                          (if (gx#stx-pair/null?
                                               _hd4728247410_)
                                              (let ((___splice4768547686_
                                                     (gx#syntax-split-splice
                                                      _hd4728247410_
                                                      '0)))
                                                (let ((_tl4729947336_
                                                       (##vector-ref
                                                        ___splice4768547686_
                                                        '1))
                                                      (_target4729747334_
                                                       (##vector-ref
                                                        ___splice4768547686_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl4729947336_)
                                                      (___match4773447735_
                                                       _e4727847399_
                                                       _hd4727947402_
                                                       _tl4728047404_
                                                       _e4728147407_
                                                       _hd4728247410_
                                                       _tl4728347412_
                                                       ___splice4768547686_
                                                       _target4729747334_
                                                       _tl4729947336_)
                                                      (_g4727547313_))))
                                              (_g4727547313_)))))
                                  (if (gx#stx-pair/null? _hd4728247410_)
                                      (let ((___splice4768547686_
                                             (gx#syntax-split-splice
                                              _hd4728247410_
                                              '0)))
                                        (let ((_tl4729947336_
                                               (##vector-ref
                                                ___splice4768547686_
                                                '1))
                                              (_target4729747334_
                                               (##vector-ref
                                                ___splice4768547686_
                                                '0)))
                                          (if (gx#stx-null? _tl4729947336_)
                                              (___match4773447735_
                                               _e4727847399_
                                               _hd4727947402_
                                               _tl4728047404_
                                               _e4728147407_
                                               _hd4728247410_
                                               _tl4728347412_
                                               ___splice4768547686_
                                               _target4729747334_
                                               _tl4729947336_)
                                              (_g4727547313_))))
                                      (_g4727547313_)))))
                          (_g4727547313_))))
                  (_g4727547313_))))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx46824_)
      (let* ((___stx4773747738_ _stx46824_)
             (_g4682846930_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4773747738_))))
        (let ((___kont4773947740_
               (lambda (_L47220_ _L47221_ _L47222_ _L47223_ _L47224_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47223_)
                             (cons (gx#stx-e _L47222_)
                                   (cons (gxc#identifier-symbol _L47221_)
                                         (cons (gx#stx-e _L47220_) '())))))))
              (___kont4774147742_
               (lambda (_L47046_ _L47047_ _L47048_ _L47049_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47048_)
                             (cons (gx#stx-e _L47047_)
                                   (cons (gxc#identifier-symbol _L47046_)
                                         (cons '#f '())))))))
              (___kont4774347744_ (lambda () '(begin))))
          (let ((___match4787247873_
                 (lambda (_e4683547092_
                          _hd4683647095_
                          _tl4683747097_
                          _e4683847100_
                          _hd4683947103_
                          _tl4684047105_
                          _e4684147108_
                          _hd4684247111_
                          _tl4684347113_
                          _e4684447116_
                          _hd4684547119_
                          _tl4684647121_
                          _e4684747124_
                          _hd4684847127_
                          _tl4684947129_
                          _e4685047132_
                          _hd4685147135_
                          _tl4685247137_
                          _e4685347140_
                          _hd4685447143_
                          _tl4685547145_
                          _e4685647148_
                          _hd4685747151_
                          _tl4685847153_
                          _e4685947156_
                          _hd4686047159_
                          _tl4686147161_
                          _e4686247164_
                          _hd4686347167_
                          _tl4686447169_
                          _e4686547172_
                          _hd4686647175_
                          _tl4686747177_
                          _e4686847180_
                          _hd4686947183_
                          _tl4687047185_
                          _e4687147188_
                          _hd4687247191_
                          _tl4687347193_
                          _e4687447196_
                          _hd4687547199_
                          _tl4687647201_
                          _e4687747204_
                          _hd4687847207_
                          _tl4687947209_
                          _e4688047212_
                          _hd4688147215_
                          _tl4688247217_)
                   (let ((_L47220_ _hd4688147215_)
                         (_L47221_ _hd4687247191_)
                         (_L47222_ _hd4686347167_)
                         (_L47223_ _hd4685447143_)
                         (_L47224_ _hd4684547119_))
                     (if (gxc#runtime-identifier=? _L47224_ 'bind-method!)
                         (___kont4773947740_
                          _L47220_
                          _L47221_
                          _L47222_
                          _L47223_
                          _L47224_)
                         (___kont4774347744_))))))
            (if (gx#stx-pair? ___stx4773747738_)
                (let ((_e4683547092_ (gx#stx-e ___stx4773747738_)))
                  (let ((_tl4683747097_ (##cdr _e4683547092_))
                        (_hd4683647095_ (##car _e4683547092_)))
                    (if (gx#stx-pair? _tl4683747097_)
                        (let ((_e4683847100_ (gx#stx-e _tl4683747097_)))
                          (let ((_tl4684047105_ (##cdr _e4683847100_))
                                (_hd4683947103_ (##car _e4683847100_)))
                            (if (gx#stx-pair? _hd4683947103_)
                                (let ((_e4684147108_
                                       (gx#stx-e _hd4683947103_)))
                                  (let ((_tl4684347113_ (##cdr _e4684147108_))
                                        (_hd4684247111_ (##car _e4684147108_)))
                                    (if (gx#identifier? _hd4684247111_)
                                        (if (gx#stx-eq? '%#ref _hd4684247111_)
                                            (if (gx#stx-pair? _tl4684347113_)
                                                (let ((_e4684447116_
                                                       (gx#stx-e
                                                        _tl4684347113_)))
                                                  (let ((_tl4684647121_
                                                         (##cdr _e4684447116_))
                                                        (_hd4684547119_
                                                         (##car _e4684447116_)))
                                                    (if (gx#stx-null?
                                                         _tl4684647121_)
                                                        (if (gx#stx-pair?
                                                             _tl4684047105_)
                                                            (let ((_e4684747124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4684047105_)))
                      (let ((_tl4684947129_ (##cdr _e4684747124_))
                            (_hd4684847127_ (##car _e4684747124_)))
                        (if (gx#stx-pair? _hd4684847127_)
                            (let ((_e4685047132_ (gx#stx-e _hd4684847127_)))
                              (let ((_tl4685247137_ (##cdr _e4685047132_))
                                    (_hd4685147135_ (##car _e4685047132_)))
                                (if (gx#identifier? _hd4685147135_)
                                    (if (gx#stx-eq? '%#ref _hd4685147135_)
                                        (if (gx#stx-pair? _tl4685247137_)
                                            (let ((_e4685347140_
                                                   (gx#stx-e _tl4685247137_)))
                                              (let ((_tl4685547145_
                                                     (##cdr _e4685347140_))
                                                    (_hd4685447143_
                                                     (##car _e4685347140_)))
                                                (if (gx#stx-null?
                                                     _tl4685547145_)
                                                    (if (gx#stx-pair?
                                                         _tl4684947129_)
                                                        (let ((_e4685647148_
                                                               (gx#stx-e
                                                                _tl4684947129_)))
                                                          (let ((_tl4685847153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4685647148_))
                        (_hd4685747151_ (##car _e4685647148_)))
                    (if (gx#stx-pair? _hd4685747151_)
                        (let ((_e4685947156_ (gx#stx-e _hd4685747151_)))
                          (let ((_tl4686147161_ (##cdr _e4685947156_))
                                (_hd4686047159_ (##car _e4685947156_)))
                            (if (gx#identifier? _hd4686047159_)
                                (if (gx#stx-eq? '%#quote _hd4686047159_)
                                    (if (gx#stx-pair? _tl4686147161_)
                                        (let ((_e4686247164_
                                               (gx#stx-e _tl4686147161_)))
                                          (let ((_tl4686447169_
                                                 (##cdr _e4686247164_))
                                                (_hd4686347167_
                                                 (##car _e4686247164_)))
                                            (if (gx#stx-null? _tl4686447169_)
                                                (if (gx#stx-pair?
                                                     _tl4685847153_)
                                                    (let ((_e4686547172_
                                                           (gx#stx-e
                                                            _tl4685847153_)))
                                                      (let ((_tl4686747177_
                                                             (##cdr _e4686547172_))
                                                            (_hd4686647175_
                                                             (##car _e4686547172_)))
                                                        (if (gx#stx-pair?
                                                             _hd4686647175_)
                                                            (let ((_e4686847180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4686647175_)))
                      (let ((_tl4687047185_ (##cdr _e4686847180_))
                            (_hd4686947183_ (##car _e4686847180_)))
                        (if (gx#identifier? _hd4686947183_)
                            (if (gx#stx-eq? '%#ref _hd4686947183_)
                                (if (gx#stx-pair? _tl4687047185_)
                                    (let ((_e4687147188_
                                           (gx#stx-e _tl4687047185_)))
                                      (let ((_tl4687347193_
                                             (##cdr _e4687147188_))
                                            (_hd4687247191_
                                             (##car _e4687147188_)))
                                        (if (gx#stx-null? _tl4687347193_)
                                            (if (gx#stx-pair? _tl4686747177_)
                                                (let ((_e4687447196_
                                                       (gx#stx-e
                                                        _tl4686747177_)))
                                                  (let ((_tl4687647201_
                                                         (##cdr _e4687447196_))
                                                        (_hd4687547199_
                                                         (##car _e4687447196_)))
                                                    (if (gx#stx-pair?
                                                         _hd4687547199_)
                                                        (let ((_e4687747204_
                                                               (gx#stx-e
                                                                _hd4687547199_)))
                                                          (let ((_tl4687947209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4687747204_))
                        (_hd4687847207_ (##car _e4687747204_)))
                    (if (gx#identifier? _hd4687847207_)
                        (if (gx#stx-eq? '%#quote _hd4687847207_)
                            (if (gx#stx-pair? _tl4687947209_)
                                (let ((_e4688047212_
                                       (gx#stx-e _tl4687947209_)))
                                  (let ((_tl4688247217_ (##cdr _e4688047212_))
                                        (_hd4688147215_ (##car _e4688047212_)))
                                    (if (gx#stx-null? _tl4688247217_)
                                        (if (gx#stx-null? _tl4687647201_)
                                            (___match4787247873_
                                             _e4683547092_
                                             _hd4683647095_
                                             _tl4683747097_
                                             _e4683847100_
                                             _hd4683947103_
                                             _tl4684047105_
                                             _e4684147108_
                                             _hd4684247111_
                                             _tl4684347113_
                                             _e4684447116_
                                             _hd4684547119_
                                             _tl4684647121_
                                             _e4684747124_
                                             _hd4684847127_
                                             _tl4684947129_
                                             _e4685047132_
                                             _hd4685147135_
                                             _tl4685247137_
                                             _e4685347140_
                                             _hd4685447143_
                                             _tl4685547145_
                                             _e4685647148_
                                             _hd4685747151_
                                             _tl4685847153_
                                             _e4685947156_
                                             _hd4686047159_
                                             _tl4686147161_
                                             _e4686247164_
                                             _hd4686347167_
                                             _tl4686447169_
                                             _e4686547172_
                                             _hd4686647175_
                                             _tl4686747177_
                                             _e4686847180_
                                             _hd4686947183_
                                             _tl4687047185_
                                             _e4687147188_
                                             _hd4687247191_
                                             _tl4687347193_
                                             _e4687447196_
                                             _hd4687547199_
                                             _tl4687647201_
                                             _e4687747204_
                                             _hd4687847207_
                                             _tl4687947209_
                                             _e4688047212_
                                             _hd4688147215_
                                             _tl4688247217_)
                                            (___kont4774347744_))
                                        (___kont4774347744_))))
                                (___kont4774347744_))
                            (___kont4774347744_))
                        (___kont4774347744_))))
                (___kont4774347744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl4686747177_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L47046_
                                                               _hd4687247191_)
                                                              (_L47047_
                                                               _hd4686347167_)
                                                              (_L47048_
                                                               _hd4685447143_)
                                                              (_L47049_
                                                               _hd4684547119_))
                                                          (___kont4774147742_
                                                           _L47046_
                                                           _L47047_
                                                           _L47048_
                                                           _L47049_))
                                                        (___kont4774347744_))
                                                    (___kont4774347744_)))
                                            (___kont4774347744_))))
                                    (___kont4774347744_))
                                (___kont4774347744_))
                            (___kont4774347744_))))
                    (___kont4774347744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4774347744_))
                                                (___kont4774347744_))))
                                        (___kont4774347744_))
                                    (___kont4774347744_))
                                (___kont4774347744_))))
                        (___kont4774347744_))))
                (___kont4774347744_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4774347744_))))
                                            (___kont4774347744_))
                                        (___kont4774347744_))
                                    (___kont4774347744_))))
                            (___kont4774347744_))))
                    (___kont4774347744_))
                (___kont4774347744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4774347744_))
                                            (___kont4774347744_))
                                        (___kont4774347744_))))
                                (___kont4774347744_))))
                        (___kont4774347744_))))
                (___kont4774347744_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self46800_)
      (let* ((_self4680146807_ _self46800_)
             (_E4680346811_
              (lambda () (error '"No clause matching" _self4680146807_)))
             (_K4680446816_
              (lambda (_alias-id46814_)
                (cons '@alias (cons _alias-id46814_ '())))))
        (if (##structure-instance-of? _self4680146807_ 'gxc#!alias::t)
            (let* ((_e4680546819_ (##vector-ref _self4680146807_ '1))
                   (_alias-id46822_ _e4680546819_))
              (_K4680446816_ _alias-id46822_))
            (_E4680346811_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self46622_)
      (let* ((_self4662346634_ _self46622_)
             (_E4662546638_
              (lambda () (error '"No clause matching" _self4662346634_)))
             (_K4662646647_
              (lambda (_plist46641_
                       _ctor46642_
                       _fields46643_
                       _super46644_
                       _type-id46645_)
                (cons '@struct-type
                      (cons _type-id46645_
                            (cons _super46644_
                                  (cons _fields46643_
                                        (cons _ctor46642_
                                              (cons _plist46641_ '())))))))))
        (if (##structure-instance-of? _self4662346634_ 'gxc#!struct-type::t)
            (let* ((_e4662746650_ (##vector-ref _self4662346634_ '1))
                   (_type-id46653_ _e4662746650_)
                   (_e4662846655_ (##vector-ref _self4662346634_ '2))
                   (_super46658_ _e4662846655_)
                   (_e4662946660_ (##vector-ref _self4662346634_ '3))
                   (_fields46663_ _e4662946660_)
                   (_e4663046665_ (##vector-ref _self4662346634_ '4))
                   (_e4663146668_ (##vector-ref _self4662346634_ '5))
                   (_ctor46671_ _e4663146668_)
                   (_e4663246673_ (##vector-ref _self4662346634_ '6))
                   (_plist46676_ _e4663246673_))
              (_K4662646647_
               _plist46676_
               _ctor46671_
               _fields46663_
               _super46658_
               _type-id46653_))
            (_E4662546638_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self46476_)
      (let* ((_self4647746483_ _self46476_)
             (_E4647946487_
              (lambda () (error '"No clause matching" _self4647746483_)))
             (_K4648046492_
              (lambda (_struct-t46490_)
                (cons '@struct-pred (cons _struct-t46490_ '())))))
        (if (##structure-instance-of? _self4647746483_ 'gxc#!struct-pred::t)
            (let* ((_e4648146495_ (##vector-ref _self4647746483_ '1))
                   (_struct-t46498_ _e4648146495_))
              (_K4648046492_ _struct-t46498_))
            (_E4647946487_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self46330_)
      (let* ((_self4633146337_ _self46330_)
             (_E4633346341_
              (lambda () (error '"No clause matching" _self4633146337_)))
             (_K4633446346_
              (lambda (_struct-t46344_)
                (cons '@struct-cons (cons _struct-t46344_ '())))))
        (if (##structure-instance-of? _self4633146337_ 'gxc#!struct-cons::t)
            (let* ((_e4633546349_ (##vector-ref _self4633146337_ '1))
                   (_struct-t46352_ _e4633546349_))
              (_K4633446346_ _struct-t46352_))
            (_E4633346341_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self46170_)
      (let* ((_self4617146179_ _self46170_)
             (_E4617346183_
              (lambda () (error '"No clause matching" _self4617146179_)))
             (_K4617446190_
              (lambda (_unchecked?46186_ _off46187_ _struct-t46188_)
                (cons '@struct-getf
                      (cons _struct-t46188_
                            (cons _off46187_ (cons _unchecked?46186_ '())))))))
        (if (##structure-instance-of? _self4617146179_ 'gxc#!struct-getf::t)
            (let* ((_e4617546193_ (##vector-ref _self4617146179_ '1))
                   (_struct-t46196_ _e4617546193_)
                   (_e4617646198_ (##vector-ref _self4617146179_ '2))
                   (_off46201_ _e4617646198_)
                   (_e4617746203_ (##vector-ref _self4617146179_ '3))
                   (_unchecked?46206_ _e4617746203_))
              (_K4617446190_ _unchecked?46206_ _off46201_ _struct-t46196_))
            (_E4617346183_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self46010_)
      (let* ((_self4601146019_ _self46010_)
             (_E4601346023_
              (lambda () (error '"No clause matching" _self4601146019_)))
             (_K4601446030_
              (lambda (_unchecked?46026_ _off46027_ _struct-t46028_)
                (cons '@struct-setf
                      (cons _struct-t46028_
                            (cons _off46027_ (cons _unchecked?46026_ '())))))))
        (if (##structure-instance-of? _self4601146019_ 'gxc#!struct-setf::t)
            (let* ((_e4601546033_ (##vector-ref _self4601146019_ '1))
                   (_struct-t46036_ _e4601546033_)
                   (_e4601646038_ (##vector-ref _self4601146019_ '2))
                   (_off46041_ _e4601646038_)
                   (_e4601746043_ (##vector-ref _self4601146019_ '3))
                   (_unchecked?46046_ _e4601746043_))
              (_K4601446030_ _unchecked?46046_ _off46041_ _struct-t46036_))
            (_E4601346023_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self45836_)
      (let* ((_self4583745847_ _self45836_)
             (_E4583945851_
              (lambda () (error '"No clause matching" _self4583745847_)))
             (_K4584045862_
              (lambda (_typedecl45854_
                       _inline45855_
                       _dispatch45856_
                       _arity45857_)
                (if _inline45855_
                    (let ((_$e45859_ _typedecl45854_))
                      (if _$e45859_
                          _$e45859_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity45857_ (cons _dispatch45856_ '())))))))
        (if (##structure-instance-of? _self4583745847_ 'gxc#!lambda::t)
            (let* ((_e4584145865_ (##vector-ref _self4583745847_ '1))
                   (_e4584245868_ (##vector-ref _self4583745847_ '2))
                   (_arity45871_ _e4584245868_)
                   (_e4584345873_ (##vector-ref _self4583745847_ '3))
                   (_dispatch45876_ _e4584345873_)
                   (_e4584445878_ (##vector-ref _self4583745847_ '4))
                   (_inline45881_ _e4584445878_)
                   (_e4584545883_ (##vector-ref _self4583745847_ '5))
                   (_typedecl45886_ _e4584545883_))
              (_K4584045862_
               _typedecl45886_
               _inline45881_
               _dispatch45876_
               _arity45871_))
            (_E4583945851_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self45647_)
      (letrec ((_clause-e45649_
                (lambda (_clause45679_)
                  (let* ((_clause4568045688_ _clause45679_)
                         (_E4568245692_
                          (lambda ()
                            (error '"No clause matching" _clause4568045688_)))
                         (_K4568345698_
                          (lambda (_dispatch45695_ _arity45696_)
                            (cons _arity45696_ (cons _dispatch45695_ '())))))
                    (if (##structure-instance-of?
                         _clause4568045688_
                         'gxc#!lambda::t)
                        (let* ((_e4568445701_
                                (##vector-ref _clause4568045688_ '1))
                               (_e4568545704_
                                (##vector-ref _clause4568045688_ '2))
                               (_arity45707_ _e4568545704_)
                               (_e4568645709_
                                (##vector-ref _clause4568045688_ '3))
                               (_dispatch45712_ _e4568645709_))
                          (_K4568345698_ _dispatch45712_ _arity45707_))
                        (_E4568245692_))))))
        (let* ((_self4565045657_ _self45647_)
               (_E4565245661_
                (lambda () (error '"No clause matching" _self4565045657_)))
               (_K4565345668_
                (lambda (_clauses45664_)
                  (let ((_clauses45666_ (map _clause-e45649_ _clauses45664_)))
                    (cons '@case-lambda _clauses45666_)))))
          (if (##structure-instance-of? _self4565045657_ 'gxc#!case-lambda::t)
              (let* ((_e4565445671_ (##vector-ref _self4565045657_ '1))
                     (_e4565545674_ (##vector-ref _self4565045657_ '2))
                     (_clauses45677_ _e4565545674_))
                (_K4565345668_ _clauses45677_))
              (_E4565245661_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self45490_)
      (let* ((_self4549145499_ _self45490_)
             (_E4549345503_
              (lambda () (error '"No clause matching" _self4549145499_)))
             (_K4549445509_
              (lambda (_dispatch45506_ _table45507_)
                (cons '@kw-lambda
                      (cons _table45507_ (cons _dispatch45506_ '()))))))
        (if (##structure-instance-of? _self4549145499_ 'gxc#!kw-lambda::t)
            (let* ((_e4549545512_ (##vector-ref _self4549145499_ '1))
                   (_e4549645515_ (##vector-ref _self4549145499_ '2))
                   (_table45518_ _e4549645515_)
                   (_e4549745520_ (##vector-ref _self4549145499_ '3))
                   (_dispatch45523_ _e4549745520_))
              (_K4549445509_ _dispatch45523_ _table45518_))
            (_E4549345503_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self45333_)
      (let* ((_self4533445342_ _self45333_)
             (_E4533645346_
              (lambda () (error '"No clause matching" _self4533445342_)))
             (_K4533745352_
              (lambda (_main45349_ _keys45350_)
                (cons '@kw-lambda-dispatch
                      (cons _keys45350_ (cons _main45349_ '()))))))
        (if (##structure-instance-of?
             _self4533445342_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e4533845355_ (##vector-ref _self4533445342_ '1))
                   (_e4533945358_ (##vector-ref _self4533445342_ '2))
                   (_keys45361_ _e4533945358_)
                   (_e4534045363_ (##vector-ref _self4533445342_ '3))
                   (_main45366_ _e4534045363_))
              (_K4533745352_ _main45366_ _keys45361_))
            (_E4533645346_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
