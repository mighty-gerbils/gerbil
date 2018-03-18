(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj36727 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj36727) __obj36727))))))
  (define gxc#optimize!
    (lambda (_ctx36722_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx36722_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx36722_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code36725_
                  (gxc#optimize-source
                   (##structure-ref _ctx36722_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx36722_
              _code36725_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx36667_)
      (letrec* ((_deps36669_
                 (let* ((_imports36713_
                         (##structure-ref
                          _ctx36667_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e36715_ (gx#core-context-prelude__% _ctx36667_)))
                   (if _$e36715_
                       ((lambda (_g3671736719_)
                          (cons _g3671736719_ _imports36713_))
                        _$e36715_)
                       _imports36713_))))
        (let _lp36671_ ((_rest36673_ _deps36669_))
          (let* ((_rest3667436682_ _rest36673_)
                 (_else3667636690_ (lambda () '#!void))
                 (_K3667836701_
                  (lambda (_rest36693_ _hd36694_)
                    (if (##structure-instance-of?
                         _hd36694_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd36694_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e36696_
                                       (gx#core-context-prelude__% _hd36694_)))
                                  (if _$e36696_
                                      ((lambda (_pre36699_)
                                         (_lp36671_
                                          (cons _pre36699_
                                                (##structure-ref
                                                 _hd36694_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e36696_)
                                      (_lp36671_
                                       (##structure-ref
                                        _hd36694_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd36694_)))
                          (_lp36671_ _rest36693_))
                        (if (##structure-instance-of?
                             _hd36694_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd36694_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp36671_
                                     (##structure-ref
                                      _hd36694_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd36694_)))
                              (_lp36671_ _rest36693_))
                            (if (##structure-direct-instance-of?
                                 _hd36694_
                                 'gx#module-import::t)
                                (_lp36671_
                                 (cons (##direct-structure-ref
                                        _hd36694_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest36693_))
                                (if (##structure-direct-instance-of?
                                     _hd36694_
                                     'gx#module-export::t)
                                    (_lp36671_
                                     (cons (##direct-structure-ref
                                            _hd36694_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest36693_))
                                    (if (##structure-direct-instance-of?
                                         _hd36694_
                                         'gx#import-set::t)
                                        (_lp36671_
                                         (cons (##direct-structure-ref
                                                _hd36694_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest36693_))
                                        (error '"Unexpected module import"
                                               _hd36694_)))))))))
            (if (##pair? _rest3667436682_)
                (let ((_hd3667936704_ (##car _rest3667436682_))
                      (_tl3668036706_ (##cdr _rest3667436682_)))
                  (let* ((_hd36709_ _hd3667936704_)
                         (_rest36711_ _tl3668036706_))
                    (_K3667836701_ _rest36711_ _hd36709_)))
                (_else3667636690_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx36647_)
      (if (if (##structure-instance-of? _ctx36647_ 'gx#module-context::t)
              (list? (##structure-ref _ctx36647_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht36649_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id36651_
                  (##structure-ref _ctx36647_ '1 gx#expander-context::t '#f))
                 (_mod36653_ (table-ref _ht36649_ _id36651_ '#f)))
            (let ((_$e36656_ _mod36653_))
              (if _$e36656_
                  _$e36656_
                  (let* ((_mod36659_ (gxc#optimizer-import-ssxi _ctx36647_))
                         (_val36664_
                          (let ((_$e36661_ _mod36659_))
                            (if _$e36661_ _$e36661_ '#!void))))
                    (begin
                      (table-set! _ht36649_ _id36651_ _val36664_)
                      _val36664_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx36624_)
      (letrec ((_catch-e36626_
                (lambda (_exn36645_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx36624_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn36645_))
                        '#!void)
                    '#f)))
               (_import-e36627_
                (lambda ()
                  (let* ((_str-id36630_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx36624_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path36638_
                          (let ((_odir3663136633_
                                 (gxc#current-compile-output-dir)))
                            (if _odir3663136633_
                                (let ((_odir36636_ _odir3663136633_))
                                  (path-expand
                                   (string-append _str-id36630_ '".ss")
                                   _odir36636_))
                                '#f)))
                         (_library-path36640_
                          (string->symbol
                           (string-append '":" _str-id36630_ '".ss")))
                         (_ssxi-path36642_
                          (if (if _artefact-path36638_
                                  (file-exists? _artefact-path36638_)
                                  '#f)
                              _artefact-path36638_
                              _library-path36640_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path36642_)
                      (gx#import-module__% _ssxi-path36642_ '#t '#t))))))
        (if (##structure-ref _ctx36624_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e36626_ _import-e36627_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx36618_)
      (begin
        (gxc#apply-collect-mutators _stx36618_)
        (let ((_stx36620_ (gxc#apply-lift-top-lambdas _stx36618_)))
          (begin
            (gxc#apply-collect-type-info _stx36620_)
            (let ((_stx36622_ (gxc#apply-optimize-annotated _stx36620_)))
              (gxc#apply-optimize-call _stx36622_)))))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl36615_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl36615_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl36615_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl36615_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl36615_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl36615_ '%#call gxc#generate-ssxi-call%)
           _tbl36615_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx36608_ . _args36610_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx36608_ _args36610_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx36548_)
      (let* ((_g3655036564_
              (lambda (_g3655136561_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3655136561_)))
             (_g3654936605_
              (lambda (_g3655136567_)
                (if (gx#stx-pair? _g3655136567_)
                    (let ((_e3655436569_ (gx#stx-e _g3655136567_)))
                      (let ((_hd3655536572_ (##car _e3655436569_))
                            (_tl3655636574_ (##cdr _e3655436569_)))
                        (if (gx#stx-pair? _tl3655636574_)
                            (let ((_e3655736577_ (gx#stx-e _tl3655636574_)))
                              (let ((_hd3655836580_ (##car _e3655736577_))
                                    (_tl3655936582_ (##cdr _e3655736577_)))
                                ((lambda (_L36585_ _L36586_)
                                   (let* ((_ctx36599_
                                           (gx#syntax-local-e__0 _L36586_))
                                          (_code36601_
                                           (##structure-ref
                                            _ctx36599_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code36601_))
                                      gx#current-expander-context
                                      _ctx36599_)))
                                 _tl3655936582_
                                 _hd3655836580_)))
                            (_g3655036564_ _g3655136567_))))
                    (_g3655036564_ _g3655136567_)))))
        (_g3654936605_ _stx36548_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx36358_)
      (letrec ((_generate-e36360_
                (lambda (_id36537_)
                  (let* ((_sym36539_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id36537_)
                              '#f))
                         (_$e36541_
                          (if _sym36539_
                              (gxc#optimizer-lookup-type _sym36539_)
                              '#f)))
                    (if _$e36541_
                        ((lambda (_type36544_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym36539_)
                             (let ((_typedecl36546_
                                    (call-method _type36544_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym36539_
                                           (cons _typedecl36546_ '()))))))
                         _$e36541_)
                        '(begin))))))
        (let* ((_g3636336401_
                (lambda (_g3636436398_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3636436398_)))
               (_g3636236482_
                (lambda (_g3636436404_)
                  (if (gx#stx-pair? _g3636436404_)
                      (let ((_e3637936406_ (gx#stx-e _g3636436404_)))
                        (let ((_hd3638036409_ (##car _e3637936406_))
                              (_tl3638136411_ (##cdr _e3637936406_)))
                          (if (gx#stx-pair? _tl3638136411_)
                              (let ((_e3638236414_ (gx#stx-e _tl3638136411_)))
                                (let ((_hd3638336417_ (##car _e3638236414_))
                                      (_tl3638436419_ (##cdr _e3638236414_)))
                                  (if (gx#stx-pair/null? _hd3638336417_)
                                      (if (fx>= (gx#stx-length _hd3638336417_)
                                                '0)
                                          (let ((_g36728_
                                                 (gx#syntax-split-splice
                                                  _hd3638336417_
                                                  '0)))
                                            (begin
                                              (let ((_g36729_
                                                     (if (##values? _g36728_)
                                                         (##vector-length
                                                          _g36728_)
                                                         1)))
                                                (if (not (##fx= _g36729_ 2))
                                                    (error "Context expects 2 values"
                                                           _g36729_)))
                                              (let ((_target3638536422_
                                                     (##vector-ref _g36728_ 0))
                                                    (_tl3638736424_
                                                     (##vector-ref
                                                      _g36728_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl3638736424_)
                                                    (letrec ((_loop3638836427_
                                                              (lambda (_hd3638636430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id3639236432_)
                        (if (gx#stx-pair? _hd3638636430_)
                            (let ((_e3638936435_ (gx#stx-e _hd3638636430_)))
                              (let ((_lp-hd3639036438_ (##car _e3638936435_))
                                    (_lp-tl3639136440_ (##cdr _e3638936435_)))
                                (_loop3638836427_
                                 _lp-tl3639136440_
                                 (cons _lp-hd3639036438_ _id3639236432_))))
                            (let ((_id3639336443_ (reverse _id3639236432_)))
                              (if (gx#stx-pair? _tl3638436419_)
                                  (let ((_e3639436446_
                                         (gx#stx-e _tl3638436419_)))
                                    (let ((_hd3639536449_
                                           (##car _e3639436446_))
                                          (_tl3639636451_
                                           (##cdr _e3639436446_)))
                                      (if (gx#stx-null? _tl3639636451_)
                                          ((lambda (_L36454_)
                                             (let ((_types36480_
                                                    (map _generate-e36360_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g3647236475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3647336477_)
                             (cons _g3647236475_ _g3647336477_))
                           '()
                           _L36454_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types36480_)))
                                           _id3639336443_)
                                          (_g3636336401_ _g3636436404_))))
                                  (_g3636336401_ _g3636436404_)))))))
              (_loop3638836427_ _target3638536422_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3636336401_
                                                     _g3636436404_)))))
                                          (_g3636336401_ _g3636436404_))
                                      (_g3636336401_ _g3636436404_))))
                              (_g3636336401_ _g3636436404_))))
                      (_g3636336401_ _g3636436404_))))
               (_g3636136534_
                (lambda (_g3636436485_)
                  (if (gx#stx-pair? _g3636436485_)
                      (let ((_e3636636487_ (gx#stx-e _g3636436485_)))
                        (let ((_hd3636736490_ (##car _e3636636487_))
                              (_tl3636836492_ (##cdr _e3636636487_)))
                          (if (gx#stx-pair? _tl3636836492_)
                              (let ((_e3636936495_ (gx#stx-e _tl3636836492_)))
                                (let ((_hd3637036498_ (##car _e3636936495_))
                                      (_tl3637136500_ (##cdr _e3636936495_)))
                                  (if (gx#stx-pair? _hd3637036498_)
                                      (let ((_e3637236503_
                                             (gx#stx-e _hd3637036498_)))
                                        (let ((_hd3637336506_
                                               (##car _e3637236503_))
                                              (_tl3637436508_
                                               (##cdr _e3637236503_)))
                                          (if (gx#stx-null? _tl3637436508_)
                                              (if (gx#stx-pair? _tl3637136500_)
                                                  (let ((_e3637536511_
                                                         (gx#stx-e
                                                          _tl3637136500_)))
                                                    (let ((_hd3637636514_
                                                           (##car _e3637536511_))
                                                          (_tl3637736516_
                                                           (##cdr _e3637536511_)))
                                                      (if (gx#stx-null?
                                                           _tl3637736516_)
                                                          ((lambda (_L36519_)
                                                             (_generate-e36360_
                                                              _L36519_))
                                                           _hd3637336506_)
                                                          (_g3636236482_
                                                           _g3636436485_))))
                                                  (_g3636236482_
                                                   _g3636436485_))
                                              (_g3636236482_ _g3636436485_))))
                                      (_g3636236482_ _g3636436485_))))
                              (_g3636236482_ _g3636436485_))))
                      (_g3636236482_ _g3636436485_)))))
          (_g3636136534_ _stx36358_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx35912_)
      (let* ((_g3591636018_
              (lambda (_g3591736015_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3591736015_)))
             (_g3591536025_ (lambda (_g3591736021_) ((lambda () '(begin)))))
             (_g3591436175_
              (lambda (_g3591736028_)
                (if (gx#stx-pair? _g3591736028_)
                    (let ((_e3597536030_ (gx#stx-e _g3591736028_)))
                      (let ((_hd3597636033_ (##car _e3597536030_))
                            (_tl3597736035_ (##cdr _e3597536030_)))
                        (if (gx#stx-pair? _tl3597736035_)
                            (let ((_e3597836038_ (gx#stx-e _tl3597736035_)))
                              (let ((_hd3597936041_ (##car _e3597836038_))
                                    (_tl3598036043_ (##cdr _e3597836038_)))
                                (if (gx#stx-pair? _hd3597936041_)
                                    (let ((_e3598136046_
                                           (gx#stx-e _hd3597936041_)))
                                      (let ((_hd3598236049_
                                             (##car _e3598136046_))
                                            (_tl3598336051_
                                             (##cdr _e3598136046_)))
                                        (if (gx#identifier? _hd3598236049_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3598236049_)
                                                (if (gx#stx-pair?
                                                     _tl3598336051_)
                                                    (let ((_e3598436054_
                                                           (gx#stx-e
                                                            _tl3598336051_)))
                                                      (let ((_hd3598536057_
                                                             (##car _e3598436054_))
                                                            (_tl3598636059_
                                                             (##cdr _e3598436054_)))
                                                        (if (gx#stx-null?
                                                             _tl3598636059_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3598036043_)
                        (let ((_e3598736062_ (gx#stx-e _tl3598036043_)))
                          (let ((_hd3598836065_ (##car _e3598736062_))
                                (_tl3598936067_ (##cdr _e3598736062_)))
                            (if (gx#stx-pair? _hd3598836065_)
                                (let ((_e3599036070_
                                       (gx#stx-e _hd3598836065_)))
                                  (let ((_hd3599136073_ (##car _e3599036070_))
                                        (_tl3599236075_ (##cdr _e3599036070_)))
                                    (if (gx#identifier? _hd3599136073_)
                                        (if (gx#stx-eq? '%#ref _hd3599136073_)
                                            (if (gx#stx-pair? _tl3599236075_)
                                                (let ((_e3599336078_
                                                       (gx#stx-e
                                                        _tl3599236075_)))
                                                  (let ((_hd3599436081_
                                                         (##car _e3599336078_))
                                                        (_tl3599536083_
                                                         (##cdr _e3599336078_)))
                                                    (if (gx#stx-null?
                                                         _tl3599536083_)
                                                        (if (gx#stx-pair?
                                                             _tl3598936067_)
                                                            (let ((_e3599636086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3598936067_)))
                      (let ((_hd3599736089_ (##car _e3599636086_))
                            (_tl3599836091_ (##cdr _e3599636086_)))
                        (if (gx#stx-pair? _hd3599736089_)
                            (let ((_e3599936094_ (gx#stx-e _hd3599736089_)))
                              (let ((_hd3600036097_ (##car _e3599936094_))
                                    (_tl3600136099_ (##cdr _e3599936094_)))
                                (if (gx#identifier? _hd3600036097_)
                                    (if (gx#stx-eq? '%#quote _hd3600036097_)
                                        (if (gx#stx-pair? _tl3600136099_)
                                            (let ((_e3600236102_
                                                   (gx#stx-e _tl3600136099_)))
                                              (let ((_hd3600336105_
                                                     (##car _e3600236102_))
                                                    (_tl3600436107_
                                                     (##cdr _e3600236102_)))
                                                (if (gx#stx-null?
                                                     _tl3600436107_)
                                                    (if (gx#stx-pair?
                                                         _tl3599836091_)
                                                        (let ((_e3600536110_
                                                               (gx#stx-e
                                                                _tl3599836091_)))
                                                          (let ((_hd3600636113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3600536110_))
                        (_tl3600736115_ (##cdr _e3600536110_)))
                    (if (gx#stx-pair? _hd3600636113_)
                        (let ((_e3600836118_ (gx#stx-e _hd3600636113_)))
                          (let ((_hd3600936121_ (##car _e3600836118_))
                                (_tl3601036123_ (##cdr _e3600836118_)))
                            (if (gx#identifier? _hd3600936121_)
                                (if (gx#stx-eq? '%#ref _hd3600936121_)
                                    (if (gx#stx-pair? _tl3601036123_)
                                        (let ((_e3601136126_
                                               (gx#stx-e _tl3601036123_)))
                                          (let ((_hd3601236129_
                                                 (##car _e3601136126_))
                                                (_tl3601336131_
                                                 (##cdr _e3601136126_)))
                                            (if (gx#stx-null? _tl3601336131_)
                                                (if (gx#stx-null?
                                                     _tl3600736115_)
                                                    ((lambda (_L36134_
                                                              _L36135_
                                                              _L36136_
                                                              _L36137_)
                                                       (if (gxc#runtime-identifier=?
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '-bind-method)
                                                            'bind-method!)
                                                           (cons 'declare-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gxc#identifier-symbol _L36136_)
                               (cons (gx#stx-e _L36135_)
                                     (cons (gxc#identifier-symbol _L36134_)
                                           (cons '#f '())))))
                   (_g3591536025_ _g3591736028_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd3601236129_
                                                     _hd3600336105_
                                                     _hd3599436081_
                                                     _hd3598536057_)
                                                    (_g3591536025_
                                                     _g3591736028_))
                                                (_g3591536025_
                                                 _g3591736028_))))
                                        (_g3591536025_ _g3591736028_))
                                    (_g3591536025_ _g3591736028_))
                                (_g3591536025_ _g3591736028_))))
                        (_g3591536025_ _g3591736028_))))
                (_g3591536025_ _g3591736028_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3591536025_
                                                     _g3591736028_))))
                                            (_g3591536025_ _g3591736028_))
                                        (_g3591536025_ _g3591736028_))
                                    (_g3591536025_ _g3591736028_))))
                            (_g3591536025_ _g3591736028_))))
                    (_g3591536025_ _g3591736028_))
                (_g3591536025_ _g3591736028_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3591536025_ _g3591736028_))
                                            (_g3591536025_ _g3591736028_))
                                        (_g3591536025_ _g3591736028_))))
                                (_g3591536025_ _g3591736028_))))
                        (_g3591536025_ _g3591736028_))
                    (_g3591536025_ _g3591736028_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3591536025_
                                                     _g3591736028_))
                                                (_g3591536025_ _g3591736028_))
                                            (_g3591536025_ _g3591736028_))))
                                    (_g3591536025_ _g3591736028_))))
                            (_g3591536025_ _g3591736028_))))
                    (_g3591536025_ _g3591736028_))))
             (_g3591336355_
              (lambda (_g3591736178_)
                (if (gx#stx-pair? _g3591736178_)
                    (let ((_e3592336180_ (gx#stx-e _g3591736178_)))
                      (let ((_hd3592436183_ (##car _e3592336180_))
                            (_tl3592536185_ (##cdr _e3592336180_)))
                        (if (gx#stx-pair? _tl3592536185_)
                            (let ((_e3592636188_ (gx#stx-e _tl3592536185_)))
                              (let ((_hd3592736191_ (##car _e3592636188_))
                                    (_tl3592836193_ (##cdr _e3592636188_)))
                                (if (gx#stx-pair? _hd3592736191_)
                                    (let ((_e3592936196_
                                           (gx#stx-e _hd3592736191_)))
                                      (let ((_hd3593036199_
                                             (##car _e3592936196_))
                                            (_tl3593136201_
                                             (##cdr _e3592936196_)))
                                        (if (gx#identifier? _hd3593036199_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3593036199_)
                                                (if (gx#stx-pair?
                                                     _tl3593136201_)
                                                    (let ((_e3593236204_
                                                           (gx#stx-e
                                                            _tl3593136201_)))
                                                      (let ((_hd3593336207_
                                                             (##car _e3593236204_))
                                                            (_tl3593436209_
                                                             (##cdr _e3593236204_)))
                                                        (if (gx#stx-null?
                                                             _tl3593436209_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3592836193_)
                        (let ((_e3593536212_ (gx#stx-e _tl3592836193_)))
                          (let ((_hd3593636215_ (##car _e3593536212_))
                                (_tl3593736217_ (##cdr _e3593536212_)))
                            (if (gx#stx-pair? _hd3593636215_)
                                (let ((_e3593836220_
                                       (gx#stx-e _hd3593636215_)))
                                  (let ((_hd3593936223_ (##car _e3593836220_))
                                        (_tl3594036225_ (##cdr _e3593836220_)))
                                    (if (gx#identifier? _hd3593936223_)
                                        (if (gx#stx-eq? '%#ref _hd3593936223_)
                                            (if (gx#stx-pair? _tl3594036225_)
                                                (let ((_e3594136228_
                                                       (gx#stx-e
                                                        _tl3594036225_)))
                                                  (let ((_hd3594236231_
                                                         (##car _e3594136228_))
                                                        (_tl3594336233_
                                                         (##cdr _e3594136228_)))
                                                    (if (gx#stx-null?
                                                         _tl3594336233_)
                                                        (if (gx#stx-pair?
                                                             _tl3593736217_)
                                                            (let ((_e3594436236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3593736217_)))
                      (let ((_hd3594536239_ (##car _e3594436236_))
                            (_tl3594636241_ (##cdr _e3594436236_)))
                        (if (gx#stx-pair? _hd3594536239_)
                            (let ((_e3594736244_ (gx#stx-e _hd3594536239_)))
                              (let ((_hd3594836247_ (##car _e3594736244_))
                                    (_tl3594936249_ (##cdr _e3594736244_)))
                                (if (gx#identifier? _hd3594836247_)
                                    (if (gx#stx-eq? '%#quote _hd3594836247_)
                                        (if (gx#stx-pair? _tl3594936249_)
                                            (let ((_e3595036252_
                                                   (gx#stx-e _tl3594936249_)))
                                              (let ((_hd3595136255_
                                                     (##car _e3595036252_))
                                                    (_tl3595236257_
                                                     (##cdr _e3595036252_)))
                                                (if (gx#stx-null?
                                                     _tl3595236257_)
                                                    (if (gx#stx-pair?
                                                         _tl3594636241_)
                                                        (let ((_e3595336260_
                                                               (gx#stx-e
                                                                _tl3594636241_)))
                                                          (let ((_hd3595436263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3595336260_))
                        (_tl3595536265_ (##cdr _e3595336260_)))
                    (if (gx#stx-pair? _hd3595436263_)
                        (let ((_e3595636268_ (gx#stx-e _hd3595436263_)))
                          (let ((_hd3595736271_ (##car _e3595636268_))
                                (_tl3595836273_ (##cdr _e3595636268_)))
                            (if (gx#identifier? _hd3595736271_)
                                (if (gx#stx-eq? '%#ref _hd3595736271_)
                                    (if (gx#stx-pair? _tl3595836273_)
                                        (let ((_e3595936276_
                                               (gx#stx-e _tl3595836273_)))
                                          (let ((_hd3596036279_
                                                 (##car _e3595936276_))
                                                (_tl3596136281_
                                                 (##cdr _e3595936276_)))
                                            (if (gx#stx-null? _tl3596136281_)
                                                (if (gx#stx-pair?
                                                     _tl3595536265_)
                                                    (let ((_e3596236284_
                                                           (gx#stx-e
                                                            _tl3595536265_)))
                                                      (let ((_hd3596336287_
                                                             (##car _e3596236284_))
                                                            (_tl3596436289_
                                                             (##cdr _e3596236284_)))
                                                        (if (gx#stx-pair?
                                                             _hd3596336287_)
                                                            (let ((_e3596536292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3596336287_)))
                      (let ((_hd3596636295_ (##car _e3596536292_))
                            (_tl3596736297_ (##cdr _e3596536292_)))
                        (if (gx#identifier? _hd3596636295_)
                            (if (gx#stx-eq? '%#quote _hd3596636295_)
                                (if (gx#stx-pair? _tl3596736297_)
                                    (let ((_e3596836300_
                                           (gx#stx-e _tl3596736297_)))
                                      (let ((_hd3596936303_
                                             (##car _e3596836300_))
                                            (_tl3597036305_
                                             (##cdr _e3596836300_)))
                                        (if (gx#stx-null? _tl3597036305_)
                                            (if (gx#stx-null? _tl3596436289_)
                                                ((lambda (_L36308_
                                                          _L36309_
                                                          _L36310_
                                                          _L36311_
                                                          _L36312_)
                                                   (if (gxc#runtime-identifier=?
                                                        _L36312_
                                                        'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L36311_)
                           (cons (gx#stx-e _L36310_)
                                 (cons (gxc#identifier-symbol _L36309_)
                                       (cons (gx#stx-e _L36308_) '())))))
               (_g3591436175_ _g3591736178_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd3596936303_
                                                 _hd3596036279_
                                                 _hd3595136255_
                                                 _hd3594236231_
                                                 _hd3593336207_)
                                                (_g3591436175_ _g3591736178_))
                                            (_g3591436175_ _g3591736178_))))
                                    (_g3591436175_ _g3591736178_))
                                (_g3591436175_ _g3591736178_))
                            (_g3591436175_ _g3591736178_))))
                    (_g3591436175_ _g3591736178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3591436175_
                                                     _g3591736178_))
                                                (_g3591436175_
                                                 _g3591736178_))))
                                        (_g3591436175_ _g3591736178_))
                                    (_g3591436175_ _g3591736178_))
                                (_g3591436175_ _g3591736178_))))
                        (_g3591436175_ _g3591736178_))))
                (_g3591436175_ _g3591736178_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3591436175_
                                                     _g3591736178_))))
                                            (_g3591436175_ _g3591736178_))
                                        (_g3591436175_ _g3591736178_))
                                    (_g3591436175_ _g3591736178_))))
                            (_g3591436175_ _g3591736178_))))
                    (_g3591436175_ _g3591736178_))
                (_g3591436175_ _g3591736178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3591436175_ _g3591736178_))
                                            (_g3591436175_ _g3591736178_))
                                        (_g3591436175_ _g3591736178_))))
                                (_g3591436175_ _g3591736178_))))
                        (_g3591436175_ _g3591736178_))
                    (_g3591436175_ _g3591736178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3591436175_
                                                     _g3591736178_))
                                                (_g3591436175_ _g3591736178_))
                                            (_g3591436175_ _g3591736178_))))
                                    (_g3591436175_ _g3591736178_))))
                            (_g3591436175_ _g3591736178_))))
                    (_g3591436175_ _g3591736178_)))))
        (_g3591336355_ _stx35912_))))
  (define gxc#!alias::typedecl
    (lambda (_self35888_)
      (let* ((_self3588935895_ _self35888_)
             (_E3589135899_
              (lambda () (error '"No clause matching" _self3588935895_)))
             (_K3589235904_
              (lambda (_alias-id35902_)
                (cons '@alias (cons _alias-id35902_ '())))))
        (if (##structure-instance-of? _self3588935895_ 'gxc#!alias::t)
            (let* ((_e3589335907_ (##vector-ref _self3588935895_ '1))
                   (_alias-id35910_ _e3589335907_))
              (_K3589235904_ _alias-id35910_))
            (_E3589135899_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self35710_)
      (let* ((_self3571135722_ _self35710_)
             (_E3571335726_
              (lambda () (error '"No clause matching" _self3571135722_)))
             (_K3571435735_
              (lambda (_plist35729_
                       _ctor35730_
                       _fields35731_
                       _super35732_
                       _type-id35733_)
                (cons '@struct-type
                      (cons _type-id35733_
                            (cons _super35732_
                                  (cons _fields35731_
                                        (cons _ctor35730_
                                              (cons _plist35729_ '())))))))))
        (if (##structure-instance-of? _self3571135722_ 'gxc#!struct-type::t)
            (let* ((_e3571535738_ (##vector-ref _self3571135722_ '1))
                   (_type-id35741_ _e3571535738_)
                   (_e3571635743_ (##vector-ref _self3571135722_ '2))
                   (_super35746_ _e3571635743_)
                   (_e3571735748_ (##vector-ref _self3571135722_ '3))
                   (_fields35751_ _e3571735748_)
                   (_e3571835753_ (##vector-ref _self3571135722_ '4))
                   (_e3571935756_ (##vector-ref _self3571135722_ '5))
                   (_ctor35759_ _e3571935756_)
                   (_e3572035761_ (##vector-ref _self3571135722_ '6))
                   (_plist35764_ _e3572035761_))
              (_K3571435735_
               _plist35764_
               _ctor35759_
               _fields35751_
               _super35746_
               _type-id35741_))
            (_E3571335726_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self35564_)
      (let* ((_self3556535571_ _self35564_)
             (_E3556735575_
              (lambda () (error '"No clause matching" _self3556535571_)))
             (_K3556835580_
              (lambda (_struct-t35578_)
                (cons '@struct-pred (cons _struct-t35578_ '())))))
        (if (##structure-instance-of? _self3556535571_ 'gxc#!struct-pred::t)
            (let* ((_e3556935583_ (##vector-ref _self3556535571_ '1))
                   (_struct-t35586_ _e3556935583_))
              (_K3556835580_ _struct-t35586_))
            (_E3556735575_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self35418_)
      (let* ((_self3541935425_ _self35418_)
             (_E3542135429_
              (lambda () (error '"No clause matching" _self3541935425_)))
             (_K3542235434_
              (lambda (_struct-t35432_)
                (cons '@struct-cons (cons _struct-t35432_ '())))))
        (if (##structure-instance-of? _self3541935425_ 'gxc#!struct-cons::t)
            (let* ((_e3542335437_ (##vector-ref _self3541935425_ '1))
                   (_struct-t35440_ _e3542335437_))
              (_K3542235434_ _struct-t35440_))
            (_E3542135429_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self35258_)
      (let* ((_self3525935267_ _self35258_)
             (_E3526135271_
              (lambda () (error '"No clause matching" _self3525935267_)))
             (_K3526235278_
              (lambda (_unchecked?35274_ _off35275_ _struct-t35276_)
                (cons '@struct-getf
                      (cons _struct-t35276_
                            (cons _off35275_ (cons _unchecked?35274_ '())))))))
        (if (##structure-instance-of? _self3525935267_ 'gxc#!struct-getf::t)
            (let* ((_e3526335281_ (##vector-ref _self3525935267_ '1))
                   (_struct-t35284_ _e3526335281_)
                   (_e3526435286_ (##vector-ref _self3525935267_ '2))
                   (_off35289_ _e3526435286_)
                   (_e3526535291_ (##vector-ref _self3525935267_ '3))
                   (_unchecked?35294_ _e3526535291_))
              (_K3526235278_ _unchecked?35294_ _off35289_ _struct-t35284_))
            (_E3526135271_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self35098_)
      (let* ((_self3509935107_ _self35098_)
             (_E3510135111_
              (lambda () (error '"No clause matching" _self3509935107_)))
             (_K3510235118_
              (lambda (_unchecked?35114_ _off35115_ _struct-t35116_)
                (cons '@struct-setf
                      (cons _struct-t35116_
                            (cons _off35115_ (cons _unchecked?35114_ '())))))))
        (if (##structure-instance-of? _self3509935107_ 'gxc#!struct-setf::t)
            (let* ((_e3510335121_ (##vector-ref _self3509935107_ '1))
                   (_struct-t35124_ _e3510335121_)
                   (_e3510435126_ (##vector-ref _self3509935107_ '2))
                   (_off35129_ _e3510435126_)
                   (_e3510535131_ (##vector-ref _self3509935107_ '3))
                   (_unchecked?35134_ _e3510535131_))
              (_K3510235118_ _unchecked?35134_ _off35129_ _struct-t35124_))
            (_E3510135111_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self34924_)
      (let* ((_self3492534935_ _self34924_)
             (_E3492734939_
              (lambda () (error '"No clause matching" _self3492534935_)))
             (_K3492834950_
              (lambda (_typedecl34942_
                       _inline34943_
                       _dispatch34944_
                       _arity34945_)
                (if _inline34943_
                    (let ((_$e34947_ _typedecl34942_))
                      (if _$e34947_
                          _$e34947_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity34945_ (cons _dispatch34944_ '())))))))
        (if (##structure-instance-of? _self3492534935_ 'gxc#!lambda::t)
            (let* ((_e3492934953_ (##vector-ref _self3492534935_ '1))
                   (_e3493034956_ (##vector-ref _self3492534935_ '2))
                   (_arity34959_ _e3493034956_)
                   (_e3493134961_ (##vector-ref _self3492534935_ '3))
                   (_dispatch34964_ _e3493134961_)
                   (_e3493234966_ (##vector-ref _self3492534935_ '4))
                   (_inline34969_ _e3493234966_)
                   (_e3493334971_ (##vector-ref _self3492534935_ '5))
                   (_typedecl34974_ _e3493334971_))
              (_K3492834950_
               _typedecl34974_
               _inline34969_
               _dispatch34964_
               _arity34959_))
            (_E3492734939_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self34735_)
      (letrec ((_clause-e34737_
                (lambda (_clause34767_)
                  (let* ((_clause3476834776_ _clause34767_)
                         (_E3477034780_
                          (lambda ()
                            (error '"No clause matching" _clause3476834776_)))
                         (_K3477134786_
                          (lambda (_dispatch34783_ _arity34784_)
                            (cons _arity34784_ (cons _dispatch34783_ '())))))
                    (if (##structure-instance-of?
                         _clause3476834776_
                         'gxc#!lambda::t)
                        (let* ((_e3477234789_
                                (##vector-ref _clause3476834776_ '1))
                               (_e3477334792_
                                (##vector-ref _clause3476834776_ '2))
                               (_arity34795_ _e3477334792_)
                               (_e3477434797_
                                (##vector-ref _clause3476834776_ '3))
                               (_dispatch34800_ _e3477434797_))
                          (_K3477134786_ _dispatch34800_ _arity34795_))
                        (_E3477034780_))))))
        (let* ((_self3473834745_ _self34735_)
               (_E3474034749_
                (lambda () (error '"No clause matching" _self3473834745_)))
               (_K3474134756_
                (lambda (_clauses34752_)
                  (let ((_clauses34754_ (map _clause-e34737_ _clauses34752_)))
                    (cons '@case-lambda _clauses34754_)))))
          (if (##structure-instance-of? _self3473834745_ 'gxc#!case-lambda::t)
              (let* ((_e3474234759_ (##vector-ref _self3473834745_ '1))
                     (_e3474334762_ (##vector-ref _self3473834745_ '2))
                     (_clauses34765_ _e3474334762_))
                (_K3474134756_ _clauses34765_))
              (_E3474034749_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self34578_)
      (let* ((_self3457934587_ _self34578_)
             (_E3458134591_
              (lambda () (error '"No clause matching" _self3457934587_)))
             (_K3458234597_
              (lambda (_dispatch34594_ _table34595_)
                (cons '@kw-lambda
                      (cons _table34595_ (cons _dispatch34594_ '()))))))
        (if (##structure-instance-of? _self3457934587_ 'gxc#!kw-lambda::t)
            (let* ((_e3458334600_ (##vector-ref _self3457934587_ '1))
                   (_e3458434603_ (##vector-ref _self3457934587_ '2))
                   (_table34606_ _e3458434603_)
                   (_e3458534608_ (##vector-ref _self3457934587_ '3))
                   (_dispatch34611_ _e3458534608_))
              (_K3458234597_ _dispatch34611_ _table34606_))
            (_E3458134591_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self34421_)
      (let* ((_self3442234430_ _self34421_)
             (_E3442434434_
              (lambda () (error '"No clause matching" _self3442234430_)))
             (_K3442534440_
              (lambda (_main34437_ _keys34438_)
                (cons '@kw-lambda-dispatch
                      (cons _keys34438_ (cons _main34437_ '()))))))
        (if (##structure-instance-of?
             _self3442234430_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e3442634443_ (##vector-ref _self3442234430_ '1))
                   (_e3442734446_ (##vector-ref _self3442234430_ '2))
                   (_keys34449_ _e3442734446_)
                   (_e3442834451_ (##vector-ref _self3442234430_ '3))
                   (_main34454_ _e3442834451_))
              (_K3442534440_ _main34454_ _keys34449_))
            (_E3442434434_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
