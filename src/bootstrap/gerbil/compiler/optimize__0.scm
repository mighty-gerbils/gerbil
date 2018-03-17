(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj35086 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj35086) __obj35086))))))
  (define gxc#optimize!
    (lambda (_ctx35081_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx35081_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx35081_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code35084_
                  (gxc#optimize-source
                   (##structure-ref _ctx35081_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx35081_
              _code35084_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx35026_)
      (letrec* ((_deps35028_
                 (let* ((_imports35072_
                         (##structure-ref
                          _ctx35026_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e35074_ (gx#core-context-prelude__% _ctx35026_)))
                   (if _$e35074_
                       ((lambda (_g3507635078_)
                          (cons _g3507635078_ _imports35072_))
                        _$e35074_)
                       _imports35072_))))
        (let _lp35030_ ((_rest35032_ _deps35028_))
          (let* ((_rest3503335041_ _rest35032_)
                 (_else3503535049_ (lambda () '#!void))
                 (_K3503735060_
                  (lambda (_rest35052_ _hd35053_)
                    (if (##structure-instance-of?
                         _hd35053_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd35053_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e35055_
                                       (gx#core-context-prelude__% _hd35053_)))
                                  (if _$e35055_
                                      ((lambda (_pre35058_)
                                         (_lp35030_
                                          (cons _pre35058_
                                                (##structure-ref
                                                 _hd35053_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e35055_)
                                      (_lp35030_
                                       (##structure-ref
                                        _hd35053_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd35053_)))
                          (_lp35030_ _rest35052_))
                        (if (##structure-instance-of?
                             _hd35053_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd35053_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp35030_
                                     (##structure-ref
                                      _hd35053_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd35053_)))
                              (_lp35030_ _rest35052_))
                            (if (##structure-direct-instance-of?
                                 _hd35053_
                                 'gx#module-import::t)
                                (_lp35030_
                                 (cons (##direct-structure-ref
                                        _hd35053_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest35052_))
                                (if (##structure-direct-instance-of?
                                     _hd35053_
                                     'gx#module-export::t)
                                    (_lp35030_
                                     (cons (##direct-structure-ref
                                            _hd35053_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest35052_))
                                    (if (##structure-direct-instance-of?
                                         _hd35053_
                                         'gx#import-set::t)
                                        (_lp35030_
                                         (cons (##direct-structure-ref
                                                _hd35053_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest35052_))
                                        (error '"Unexpected module import"
                                               _hd35053_)))))))))
            (if (##pair? _rest3503335041_)
                (let ((_hd3503835063_ (##car _rest3503335041_))
                      (_tl3503935065_ (##cdr _rest3503335041_)))
                  (let* ((_hd35068_ _hd3503835063_)
                         (_rest35070_ _tl3503935065_))
                    (_K3503735060_ _rest35070_ _hd35068_)))
                (_else3503535049_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx35006_)
      (if (if (##structure-instance-of? _ctx35006_ 'gx#module-context::t)
              (list? (##structure-ref _ctx35006_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht35008_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id35010_
                  (##structure-ref _ctx35006_ '1 gx#expander-context::t '#f))
                 (_mod35012_ (table-ref _ht35008_ _id35010_ '#f)))
            (let ((_$e35015_ _mod35012_))
              (if _$e35015_
                  _$e35015_
                  (let* ((_mod35018_ (gxc#optimizer-import-ssxi _ctx35006_))
                         (_val35023_
                          (let ((_$e35020_ _mod35018_))
                            (if _$e35020_ _$e35020_ '#!void))))
                    (begin
                      (table-set! _ht35008_ _id35010_ _val35023_)
                      _val35023_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx34983_)
      (letrec ((_catch-e34985_
                (lambda (_exn35004_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx34983_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn35004_))
                        '#!void)
                    '#f)))
               (_import-e34986_
                (lambda ()
                  (let* ((_str-id34989_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx34983_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path34997_
                          (let ((_odir3499034992_
                                 (gxc#current-compile-output-dir)))
                            (if _odir3499034992_
                                (let ((_odir34995_ _odir3499034992_))
                                  (path-expand
                                   (string-append _str-id34989_ '".ss")
                                   _odir34995_))
                                '#f)))
                         (_library-path34999_
                          (string->symbol
                           (string-append '":" _str-id34989_ '".ss")))
                         (_ssxi-path35001_
                          (if (if _artefact-path34997_
                                  (file-exists? _artefact-path34997_)
                                  '#f)
                              _artefact-path34997_
                              _library-path34999_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path35001_)
                      (gx#import-module__% _ssxi-path35001_ '#t '#t))))))
        (if (##structure-ref _ctx34983_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e34985_ _import-e34986_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx34977_)
      (begin
        (gxc#apply-collect-mutators _stx34977_)
        (let ((_stx34979_ (gxc#apply-lift-top-lambdas _stx34977_)))
          (begin
            (gxc#apply-collect-type-info _stx34979_)
            (let ((_stx34981_ (gxc#apply-optimize-annotated _stx34979_)))
              (gxc#apply-optimize-call _stx34981_)))))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl34974_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34974_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl34974_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl34974_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl34974_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl34974_ '%#call gxc#generate-ssxi-call%)
           _tbl34974_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx34967_ . _args34969_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx34967_ _args34969_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx34907_)
      (let* ((_g3490934923_
              (lambda (_g3491034920_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3491034920_)))
             (_g3490834964_
              (lambda (_g3491034926_)
                (if (gx#stx-pair? _g3491034926_)
                    (let ((_e3491334928_ (gx#stx-e _g3491034926_)))
                      (let ((_hd3491434931_ (##car _e3491334928_))
                            (_tl3491534933_ (##cdr _e3491334928_)))
                        (if (gx#stx-pair? _tl3491534933_)
                            (let ((_e3491634936_ (gx#stx-e _tl3491534933_)))
                              (let ((_hd3491734939_ (##car _e3491634936_))
                                    (_tl3491834941_ (##cdr _e3491634936_)))
                                ((lambda (_L34944_ _L34945_)
                                   (let* ((_ctx34958_
                                           (gx#syntax-local-e__0 _L34945_))
                                          (_code34960_
                                           (##structure-ref
                                            _ctx34958_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code34960_))
                                      gx#current-expander-context
                                      _ctx34958_)))
                                 _tl3491834941_
                                 _hd3491734939_)))
                            (_g3490934923_ _g3491034926_))))
                    (_g3490934923_ _g3491034926_)))))
        (_g3490834964_ _stx34907_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx34717_)
      (letrec ((_generate-e34719_
                (lambda (_id34896_)
                  (let* ((_sym34898_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id34896_)
                              '#f))
                         (_$e34900_
                          (if _sym34898_
                              (gxc#optimizer-lookup-type _sym34898_)
                              '#f)))
                    (if _$e34900_
                        ((lambda (_type34903_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym34898_)
                             (let ((_typedecl34905_
                                    (call-method _type34903_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym34898_
                                           (cons _typedecl34905_ '()))))))
                         _$e34900_)
                        '(begin))))))
        (let* ((_g3472234760_
                (lambda (_g3472334757_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3472334757_)))
               (_g3472134841_
                (lambda (_g3472334763_)
                  (if (gx#stx-pair? _g3472334763_)
                      (let ((_e3473834765_ (gx#stx-e _g3472334763_)))
                        (let ((_hd3473934768_ (##car _e3473834765_))
                              (_tl3474034770_ (##cdr _e3473834765_)))
                          (if (gx#stx-pair? _tl3474034770_)
                              (let ((_e3474134773_ (gx#stx-e _tl3474034770_)))
                                (let ((_hd3474234776_ (##car _e3474134773_))
                                      (_tl3474334778_ (##cdr _e3474134773_)))
                                  (if (gx#stx-pair/null? _hd3474234776_)
                                      (if (fx>= (gx#stx-length _hd3474234776_)
                                                '0)
                                          (let ((_g35087_
                                                 (gx#syntax-split-splice
                                                  _hd3474234776_
                                                  '0)))
                                            (begin
                                              (let ((_g35088_
                                                     (if (##values? _g35087_)
                                                         (##vector-length
                                                          _g35087_)
                                                         1)))
                                                (if (not (##fx= _g35088_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35088_)))
                                              (let ((_target3474434781_
                                                     (##vector-ref _g35087_ 0))
                                                    (_tl3474634783_
                                                     (##vector-ref
                                                      _g35087_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl3474634783_)
                                                    (letrec ((_loop3474734786_
                                                              (lambda (_hd3474534789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id3475134791_)
                        (if (gx#stx-pair? _hd3474534789_)
                            (let ((_e3474834794_ (gx#stx-e _hd3474534789_)))
                              (let ((_lp-hd3474934797_ (##car _e3474834794_))
                                    (_lp-tl3475034799_ (##cdr _e3474834794_)))
                                (_loop3474734786_
                                 _lp-tl3475034799_
                                 (cons _lp-hd3474934797_ _id3475134791_))))
                            (let ((_id3475234802_ (reverse _id3475134791_)))
                              (if (gx#stx-pair? _tl3474334778_)
                                  (let ((_e3475334805_
                                         (gx#stx-e _tl3474334778_)))
                                    (let ((_hd3475434808_
                                           (##car _e3475334805_))
                                          (_tl3475534810_
                                           (##cdr _e3475334805_)))
                                      (if (gx#stx-null? _tl3475534810_)
                                          ((lambda (_L34813_)
                                             (let ((_types34839_
                                                    (map _generate-e34719_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g3483134834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3483234836_)
                             (cons _g3483134834_ _g3483234836_))
                           '()
                           _L34813_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types34839_)))
                                           _id3475234802_)
                                          (_g3472234760_ _g3472334763_))))
                                  (_g3472234760_ _g3472334763_)))))))
              (_loop3474734786_ _target3474434781_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3472234760_
                                                     _g3472334763_)))))
                                          (_g3472234760_ _g3472334763_))
                                      (_g3472234760_ _g3472334763_))))
                              (_g3472234760_ _g3472334763_))))
                      (_g3472234760_ _g3472334763_))))
               (_g3472034893_
                (lambda (_g3472334844_)
                  (if (gx#stx-pair? _g3472334844_)
                      (let ((_e3472534846_ (gx#stx-e _g3472334844_)))
                        (let ((_hd3472634849_ (##car _e3472534846_))
                              (_tl3472734851_ (##cdr _e3472534846_)))
                          (if (gx#stx-pair? _tl3472734851_)
                              (let ((_e3472834854_ (gx#stx-e _tl3472734851_)))
                                (let ((_hd3472934857_ (##car _e3472834854_))
                                      (_tl3473034859_ (##cdr _e3472834854_)))
                                  (if (gx#stx-pair? _hd3472934857_)
                                      (let ((_e3473134862_
                                             (gx#stx-e _hd3472934857_)))
                                        (let ((_hd3473234865_
                                               (##car _e3473134862_))
                                              (_tl3473334867_
                                               (##cdr _e3473134862_)))
                                          (if (gx#stx-null? _tl3473334867_)
                                              (if (gx#stx-pair? _tl3473034859_)
                                                  (let ((_e3473434870_
                                                         (gx#stx-e
                                                          _tl3473034859_)))
                                                    (let ((_hd3473534873_
                                                           (##car _e3473434870_))
                                                          (_tl3473634875_
                                                           (##cdr _e3473434870_)))
                                                      (if (gx#stx-null?
                                                           _tl3473634875_)
                                                          ((lambda (_L34878_)
                                                             (_generate-e34719_
                                                              _L34878_))
                                                           _hd3473234865_)
                                                          (_g3472134841_
                                                           _g3472334844_))))
                                                  (_g3472134841_
                                                   _g3472334844_))
                                              (_g3472134841_ _g3472334844_))))
                                      (_g3472134841_ _g3472334844_))))
                              (_g3472134841_ _g3472334844_))))
                      (_g3472134841_ _g3472334844_)))))
          (_g3472034893_ _stx34717_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx34271_)
      (let* ((_g3427534377_
              (lambda (_g3427634374_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3427634374_)))
             (_g3427434384_ (lambda (_g3427634380_) ((lambda () '(begin)))))
             (_g3427334534_
              (lambda (_g3427634387_)
                (if (gx#stx-pair? _g3427634387_)
                    (let ((_e3433434389_ (gx#stx-e _g3427634387_)))
                      (let ((_hd3433534392_ (##car _e3433434389_))
                            (_tl3433634394_ (##cdr _e3433434389_)))
                        (if (gx#stx-pair? _tl3433634394_)
                            (let ((_e3433734397_ (gx#stx-e _tl3433634394_)))
                              (let ((_hd3433834400_ (##car _e3433734397_))
                                    (_tl3433934402_ (##cdr _e3433734397_)))
                                (if (gx#stx-pair? _hd3433834400_)
                                    (let ((_e3434034405_
                                           (gx#stx-e _hd3433834400_)))
                                      (let ((_hd3434134408_
                                             (##car _e3434034405_))
                                            (_tl3434234410_
                                             (##cdr _e3434034405_)))
                                        (if (gx#identifier? _hd3434134408_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3434134408_)
                                                (if (gx#stx-pair?
                                                     _tl3434234410_)
                                                    (let ((_e3434334413_
                                                           (gx#stx-e
                                                            _tl3434234410_)))
                                                      (let ((_hd3434434416_
                                                             (##car _e3434334413_))
                                                            (_tl3434534418_
                                                             (##cdr _e3434334413_)))
                                                        (if (gx#stx-null?
                                                             _tl3434534418_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3433934402_)
                        (let ((_e3434634421_ (gx#stx-e _tl3433934402_)))
                          (let ((_hd3434734424_ (##car _e3434634421_))
                                (_tl3434834426_ (##cdr _e3434634421_)))
                            (if (gx#stx-pair? _hd3434734424_)
                                (let ((_e3434934429_
                                       (gx#stx-e _hd3434734424_)))
                                  (let ((_hd3435034432_ (##car _e3434934429_))
                                        (_tl3435134434_ (##cdr _e3434934429_)))
                                    (if (gx#identifier? _hd3435034432_)
                                        (if (gx#stx-eq? '%#ref _hd3435034432_)
                                            (if (gx#stx-pair? _tl3435134434_)
                                                (let ((_e3435234437_
                                                       (gx#stx-e
                                                        _tl3435134434_)))
                                                  (let ((_hd3435334440_
                                                         (##car _e3435234437_))
                                                        (_tl3435434442_
                                                         (##cdr _e3435234437_)))
                                                    (if (gx#stx-null?
                                                         _tl3435434442_)
                                                        (if (gx#stx-pair?
                                                             _tl3434834426_)
                                                            (let ((_e3435534445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3434834426_)))
                      (let ((_hd3435634448_ (##car _e3435534445_))
                            (_tl3435734450_ (##cdr _e3435534445_)))
                        (if (gx#stx-pair? _hd3435634448_)
                            (let ((_e3435834453_ (gx#stx-e _hd3435634448_)))
                              (let ((_hd3435934456_ (##car _e3435834453_))
                                    (_tl3436034458_ (##cdr _e3435834453_)))
                                (if (gx#identifier? _hd3435934456_)
                                    (if (gx#stx-eq? '%#quote _hd3435934456_)
                                        (if (gx#stx-pair? _tl3436034458_)
                                            (let ((_e3436134461_
                                                   (gx#stx-e _tl3436034458_)))
                                              (let ((_hd3436234464_
                                                     (##car _e3436134461_))
                                                    (_tl3436334466_
                                                     (##cdr _e3436134461_)))
                                                (if (gx#stx-null?
                                                     _tl3436334466_)
                                                    (if (gx#stx-pair?
                                                         _tl3435734450_)
                                                        (let ((_e3436434469_
                                                               (gx#stx-e
                                                                _tl3435734450_)))
                                                          (let ((_hd3436534472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3436434469_))
                        (_tl3436634474_ (##cdr _e3436434469_)))
                    (if (gx#stx-pair? _hd3436534472_)
                        (let ((_e3436734477_ (gx#stx-e _hd3436534472_)))
                          (let ((_hd3436834480_ (##car _e3436734477_))
                                (_tl3436934482_ (##cdr _e3436734477_)))
                            (if (gx#identifier? _hd3436834480_)
                                (if (gx#stx-eq? '%#ref _hd3436834480_)
                                    (if (gx#stx-pair? _tl3436934482_)
                                        (let ((_e3437034485_
                                               (gx#stx-e _tl3436934482_)))
                                          (let ((_hd3437134488_
                                                 (##car _e3437034485_))
                                                (_tl3437234490_
                                                 (##cdr _e3437034485_)))
                                            (if (gx#stx-null? _tl3437234490_)
                                                (if (gx#stx-null?
                                                     _tl3436634474_)
                                                    ((lambda (_L34493_
                                                              _L34494_
                                                              _L34495_
                                                              _L34496_)
                                                       (if (gxc#runtime-identifier=?
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '-bind-method)
                                                            'bind-method!)
                                                           (cons 'declare-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gxc#identifier-symbol _L34495_)
                               (cons (gx#stx-e _L34494_)
                                     (cons (gxc#identifier-symbol _L34493_)
                                           (cons '#f '())))))
                   (_g3427434384_ _g3427634387_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd3437134488_
                                                     _hd3436234464_
                                                     _hd3435334440_
                                                     _hd3434434416_)
                                                    (_g3427434384_
                                                     _g3427634387_))
                                                (_g3427434384_
                                                 _g3427634387_))))
                                        (_g3427434384_ _g3427634387_))
                                    (_g3427434384_ _g3427634387_))
                                (_g3427434384_ _g3427634387_))))
                        (_g3427434384_ _g3427634387_))))
                (_g3427434384_ _g3427634387_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3427434384_
                                                     _g3427634387_))))
                                            (_g3427434384_ _g3427634387_))
                                        (_g3427434384_ _g3427634387_))
                                    (_g3427434384_ _g3427634387_))))
                            (_g3427434384_ _g3427634387_))))
                    (_g3427434384_ _g3427634387_))
                (_g3427434384_ _g3427634387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3427434384_ _g3427634387_))
                                            (_g3427434384_ _g3427634387_))
                                        (_g3427434384_ _g3427634387_))))
                                (_g3427434384_ _g3427634387_))))
                        (_g3427434384_ _g3427634387_))
                    (_g3427434384_ _g3427634387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3427434384_
                                                     _g3427634387_))
                                                (_g3427434384_ _g3427634387_))
                                            (_g3427434384_ _g3427634387_))))
                                    (_g3427434384_ _g3427634387_))))
                            (_g3427434384_ _g3427634387_))))
                    (_g3427434384_ _g3427634387_))))
             (_g3427234714_
              (lambda (_g3427634537_)
                (if (gx#stx-pair? _g3427634537_)
                    (let ((_e3428234539_ (gx#stx-e _g3427634537_)))
                      (let ((_hd3428334542_ (##car _e3428234539_))
                            (_tl3428434544_ (##cdr _e3428234539_)))
                        (if (gx#stx-pair? _tl3428434544_)
                            (let ((_e3428534547_ (gx#stx-e _tl3428434544_)))
                              (let ((_hd3428634550_ (##car _e3428534547_))
                                    (_tl3428734552_ (##cdr _e3428534547_)))
                                (if (gx#stx-pair? _hd3428634550_)
                                    (let ((_e3428834555_
                                           (gx#stx-e _hd3428634550_)))
                                      (let ((_hd3428934558_
                                             (##car _e3428834555_))
                                            (_tl3429034560_
                                             (##cdr _e3428834555_)))
                                        (if (gx#identifier? _hd3428934558_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3428934558_)
                                                (if (gx#stx-pair?
                                                     _tl3429034560_)
                                                    (let ((_e3429134563_
                                                           (gx#stx-e
                                                            _tl3429034560_)))
                                                      (let ((_hd3429234566_
                                                             (##car _e3429134563_))
                                                            (_tl3429334568_
                                                             (##cdr _e3429134563_)))
                                                        (if (gx#stx-null?
                                                             _tl3429334568_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3428734552_)
                        (let ((_e3429434571_ (gx#stx-e _tl3428734552_)))
                          (let ((_hd3429534574_ (##car _e3429434571_))
                                (_tl3429634576_ (##cdr _e3429434571_)))
                            (if (gx#stx-pair? _hd3429534574_)
                                (let ((_e3429734579_
                                       (gx#stx-e _hd3429534574_)))
                                  (let ((_hd3429834582_ (##car _e3429734579_))
                                        (_tl3429934584_ (##cdr _e3429734579_)))
                                    (if (gx#identifier? _hd3429834582_)
                                        (if (gx#stx-eq? '%#ref _hd3429834582_)
                                            (if (gx#stx-pair? _tl3429934584_)
                                                (let ((_e3430034587_
                                                       (gx#stx-e
                                                        _tl3429934584_)))
                                                  (let ((_hd3430134590_
                                                         (##car _e3430034587_))
                                                        (_tl3430234592_
                                                         (##cdr _e3430034587_)))
                                                    (if (gx#stx-null?
                                                         _tl3430234592_)
                                                        (if (gx#stx-pair?
                                                             _tl3429634576_)
                                                            (let ((_e3430334595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3429634576_)))
                      (let ((_hd3430434598_ (##car _e3430334595_))
                            (_tl3430534600_ (##cdr _e3430334595_)))
                        (if (gx#stx-pair? _hd3430434598_)
                            (let ((_e3430634603_ (gx#stx-e _hd3430434598_)))
                              (let ((_hd3430734606_ (##car _e3430634603_))
                                    (_tl3430834608_ (##cdr _e3430634603_)))
                                (if (gx#identifier? _hd3430734606_)
                                    (if (gx#stx-eq? '%#quote _hd3430734606_)
                                        (if (gx#stx-pair? _tl3430834608_)
                                            (let ((_e3430934611_
                                                   (gx#stx-e _tl3430834608_)))
                                              (let ((_hd3431034614_
                                                     (##car _e3430934611_))
                                                    (_tl3431134616_
                                                     (##cdr _e3430934611_)))
                                                (if (gx#stx-null?
                                                     _tl3431134616_)
                                                    (if (gx#stx-pair?
                                                         _tl3430534600_)
                                                        (let ((_e3431234619_
                                                               (gx#stx-e
                                                                _tl3430534600_)))
                                                          (let ((_hd3431334622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3431234619_))
                        (_tl3431434624_ (##cdr _e3431234619_)))
                    (if (gx#stx-pair? _hd3431334622_)
                        (let ((_e3431534627_ (gx#stx-e _hd3431334622_)))
                          (let ((_hd3431634630_ (##car _e3431534627_))
                                (_tl3431734632_ (##cdr _e3431534627_)))
                            (if (gx#identifier? _hd3431634630_)
                                (if (gx#stx-eq? '%#ref _hd3431634630_)
                                    (if (gx#stx-pair? _tl3431734632_)
                                        (let ((_e3431834635_
                                               (gx#stx-e _tl3431734632_)))
                                          (let ((_hd3431934638_
                                                 (##car _e3431834635_))
                                                (_tl3432034640_
                                                 (##cdr _e3431834635_)))
                                            (if (gx#stx-null? _tl3432034640_)
                                                (if (gx#stx-pair?
                                                     _tl3431434624_)
                                                    (let ((_e3432134643_
                                                           (gx#stx-e
                                                            _tl3431434624_)))
                                                      (let ((_hd3432234646_
                                                             (##car _e3432134643_))
                                                            (_tl3432334648_
                                                             (##cdr _e3432134643_)))
                                                        (if (gx#stx-pair?
                                                             _hd3432234646_)
                                                            (let ((_e3432434651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3432234646_)))
                      (let ((_hd3432534654_ (##car _e3432434651_))
                            (_tl3432634656_ (##cdr _e3432434651_)))
                        (if (gx#identifier? _hd3432534654_)
                            (if (gx#stx-eq? '%#quote _hd3432534654_)
                                (if (gx#stx-pair? _tl3432634656_)
                                    (let ((_e3432734659_
                                           (gx#stx-e _tl3432634656_)))
                                      (let ((_hd3432834662_
                                             (##car _e3432734659_))
                                            (_tl3432934664_
                                             (##cdr _e3432734659_)))
                                        (if (gx#stx-null? _tl3432934664_)
                                            (if (gx#stx-null? _tl3432334648_)
                                                ((lambda (_L34667_
                                                          _L34668_
                                                          _L34669_
                                                          _L34670_
                                                          _L34671_)
                                                   (if (gxc#runtime-identifier=?
                                                        _L34671_
                                                        'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L34670_)
                           (cons (gx#stx-e _L34669_)
                                 (cons (gxc#identifier-symbol _L34668_)
                                       (cons (gx#stx-e _L34667_) '())))))
               (_g3427334534_ _g3427634537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd3432834662_
                                                 _hd3431934638_
                                                 _hd3431034614_
                                                 _hd3430134590_
                                                 _hd3429234566_)
                                                (_g3427334534_ _g3427634537_))
                                            (_g3427334534_ _g3427634537_))))
                                    (_g3427334534_ _g3427634537_))
                                (_g3427334534_ _g3427634537_))
                            (_g3427334534_ _g3427634537_))))
                    (_g3427334534_ _g3427634537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3427334534_
                                                     _g3427634537_))
                                                (_g3427334534_
                                                 _g3427634537_))))
                                        (_g3427334534_ _g3427634537_))
                                    (_g3427334534_ _g3427634537_))
                                (_g3427334534_ _g3427634537_))))
                        (_g3427334534_ _g3427634537_))))
                (_g3427334534_ _g3427634537_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3427334534_
                                                     _g3427634537_))))
                                            (_g3427334534_ _g3427634537_))
                                        (_g3427334534_ _g3427634537_))
                                    (_g3427334534_ _g3427634537_))))
                            (_g3427334534_ _g3427634537_))))
                    (_g3427334534_ _g3427634537_))
                (_g3427334534_ _g3427634537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3427334534_ _g3427634537_))
                                            (_g3427334534_ _g3427634537_))
                                        (_g3427334534_ _g3427634537_))))
                                (_g3427334534_ _g3427634537_))))
                        (_g3427334534_ _g3427634537_))
                    (_g3427334534_ _g3427634537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3427334534_
                                                     _g3427634537_))
                                                (_g3427334534_ _g3427634537_))
                                            (_g3427334534_ _g3427634537_))))
                                    (_g3427334534_ _g3427634537_))))
                            (_g3427334534_ _g3427634537_))))
                    (_g3427334534_ _g3427634537_)))))
        (_g3427234714_ _stx34271_))))
  (define gxc#!alias::typedecl
    (lambda (_self34247_)
      (let* ((_self3424834254_ _self34247_)
             (_E3425034258_
              (lambda () (error '"No clause matching" _self3424834254_)))
             (_K3425134263_
              (lambda (_alias-id34261_)
                (cons '@alias (cons _alias-id34261_ '())))))
        (if (##structure-instance-of? _self3424834254_ 'gxc#!alias::t)
            (let* ((_e3425234266_ (##vector-ref _self3424834254_ '1))
                   (_alias-id34269_ _e3425234266_))
              (_K3425134263_ _alias-id34269_))
            (_E3425034258_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self34069_)
      (let* ((_self3407034081_ _self34069_)
             (_E3407234085_
              (lambda () (error '"No clause matching" _self3407034081_)))
             (_K3407334094_
              (lambda (_plist34088_
                       _ctor34089_
                       _fields34090_
                       _super34091_
                       _type-id34092_)
                (cons '@struct-type
                      (cons _type-id34092_
                            (cons _super34091_
                                  (cons _fields34090_
                                        (cons _ctor34089_
                                              (cons _plist34088_ '())))))))))
        (if (##structure-instance-of? _self3407034081_ 'gxc#!struct-type::t)
            (let* ((_e3407434097_ (##vector-ref _self3407034081_ '1))
                   (_type-id34100_ _e3407434097_)
                   (_e3407534102_ (##vector-ref _self3407034081_ '2))
                   (_super34105_ _e3407534102_)
                   (_e3407634107_ (##vector-ref _self3407034081_ '3))
                   (_fields34110_ _e3407634107_)
                   (_e3407734112_ (##vector-ref _self3407034081_ '4))
                   (_e3407834115_ (##vector-ref _self3407034081_ '5))
                   (_ctor34118_ _e3407834115_)
                   (_e3407934120_ (##vector-ref _self3407034081_ '6))
                   (_plist34123_ _e3407934120_))
              (_K3407334094_
               _plist34123_
               _ctor34118_
               _fields34110_
               _super34105_
               _type-id34100_))
            (_E3407234085_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self33923_)
      (let* ((_self3392433930_ _self33923_)
             (_E3392633934_
              (lambda () (error '"No clause matching" _self3392433930_)))
             (_K3392733939_
              (lambda (_struct-t33937_)
                (cons '@struct-pred (cons _struct-t33937_ '())))))
        (if (##structure-instance-of? _self3392433930_ 'gxc#!struct-pred::t)
            (let* ((_e3392833942_ (##vector-ref _self3392433930_ '1))
                   (_struct-t33945_ _e3392833942_))
              (_K3392733939_ _struct-t33945_))
            (_E3392633934_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self33777_)
      (let* ((_self3377833784_ _self33777_)
             (_E3378033788_
              (lambda () (error '"No clause matching" _self3377833784_)))
             (_K3378133793_
              (lambda (_struct-t33791_)
                (cons '@struct-cons (cons _struct-t33791_ '())))))
        (if (##structure-instance-of? _self3377833784_ 'gxc#!struct-cons::t)
            (let* ((_e3378233796_ (##vector-ref _self3377833784_ '1))
                   (_struct-t33799_ _e3378233796_))
              (_K3378133793_ _struct-t33799_))
            (_E3378033788_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self33617_)
      (let* ((_self3361833626_ _self33617_)
             (_E3362033630_
              (lambda () (error '"No clause matching" _self3361833626_)))
             (_K3362133637_
              (lambda (_unchecked?33633_ _off33634_ _struct-t33635_)
                (cons '@struct-getf
                      (cons _struct-t33635_
                            (cons _off33634_ (cons _unchecked?33633_ '())))))))
        (if (##structure-instance-of? _self3361833626_ 'gxc#!struct-getf::t)
            (let* ((_e3362233640_ (##vector-ref _self3361833626_ '1))
                   (_struct-t33643_ _e3362233640_)
                   (_e3362333645_ (##vector-ref _self3361833626_ '2))
                   (_off33648_ _e3362333645_)
                   (_e3362433650_ (##vector-ref _self3361833626_ '3))
                   (_unchecked?33653_ _e3362433650_))
              (_K3362133637_ _unchecked?33653_ _off33648_ _struct-t33643_))
            (_E3362033630_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self33457_)
      (let* ((_self3345833466_ _self33457_)
             (_E3346033470_
              (lambda () (error '"No clause matching" _self3345833466_)))
             (_K3346133477_
              (lambda (_unchecked?33473_ _off33474_ _struct-t33475_)
                (cons '@struct-setf
                      (cons _struct-t33475_
                            (cons _off33474_ (cons _unchecked?33473_ '())))))))
        (if (##structure-instance-of? _self3345833466_ 'gxc#!struct-setf::t)
            (let* ((_e3346233480_ (##vector-ref _self3345833466_ '1))
                   (_struct-t33483_ _e3346233480_)
                   (_e3346333485_ (##vector-ref _self3345833466_ '2))
                   (_off33488_ _e3346333485_)
                   (_e3346433490_ (##vector-ref _self3345833466_ '3))
                   (_unchecked?33493_ _e3346433490_))
              (_K3346133477_ _unchecked?33493_ _off33488_ _struct-t33483_))
            (_E3346033470_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self33283_)
      (let* ((_self3328433294_ _self33283_)
             (_E3328633298_
              (lambda () (error '"No clause matching" _self3328433294_)))
             (_K3328733309_
              (lambda (_typedecl33301_
                       _inline33302_
                       _dispatch33303_
                       _arity33304_)
                (if _inline33302_
                    (let ((_$e33306_ _typedecl33301_))
                      (if _$e33306_
                          _$e33306_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity33304_ (cons _dispatch33303_ '())))))))
        (if (##structure-instance-of? _self3328433294_ 'gxc#!lambda::t)
            (let* ((_e3328833312_ (##vector-ref _self3328433294_ '1))
                   (_e3328933315_ (##vector-ref _self3328433294_ '2))
                   (_arity33318_ _e3328933315_)
                   (_e3329033320_ (##vector-ref _self3328433294_ '3))
                   (_dispatch33323_ _e3329033320_)
                   (_e3329133325_ (##vector-ref _self3328433294_ '4))
                   (_inline33328_ _e3329133325_)
                   (_e3329233330_ (##vector-ref _self3328433294_ '5))
                   (_typedecl33333_ _e3329233330_))
              (_K3328733309_
               _typedecl33333_
               _inline33328_
               _dispatch33323_
               _arity33318_))
            (_E3328633298_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self33094_)
      (letrec ((_clause-e33096_
                (lambda (_clause33126_)
                  (let* ((_clause3312733135_ _clause33126_)
                         (_E3312933139_
                          (lambda ()
                            (error '"No clause matching" _clause3312733135_)))
                         (_K3313033145_
                          (lambda (_dispatch33142_ _arity33143_)
                            (cons _arity33143_ (cons _dispatch33142_ '())))))
                    (if (##structure-instance-of?
                         _clause3312733135_
                         'gxc#!lambda::t)
                        (let* ((_e3313133148_
                                (##vector-ref _clause3312733135_ '1))
                               (_e3313233151_
                                (##vector-ref _clause3312733135_ '2))
                               (_arity33154_ _e3313233151_)
                               (_e3313333156_
                                (##vector-ref _clause3312733135_ '3))
                               (_dispatch33159_ _e3313333156_))
                          (_K3313033145_ _dispatch33159_ _arity33154_))
                        (_E3312933139_))))))
        (let* ((_self3309733104_ _self33094_)
               (_E3309933108_
                (lambda () (error '"No clause matching" _self3309733104_)))
               (_K3310033115_
                (lambda (_clauses33111_)
                  (let ((_clauses33113_ (map _clause-e33096_ _clauses33111_)))
                    (cons '@case-lambda _clauses33113_)))))
          (if (##structure-instance-of? _self3309733104_ 'gxc#!case-lambda::t)
              (let* ((_e3310133118_ (##vector-ref _self3309733104_ '1))
                     (_e3310233121_ (##vector-ref _self3309733104_ '2))
                     (_clauses33124_ _e3310233121_))
                (_K3310033115_ _clauses33124_))
              (_E3309933108_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self32937_)
      (let* ((_self3293832946_ _self32937_)
             (_E3294032950_
              (lambda () (error '"No clause matching" _self3293832946_)))
             (_K3294132956_
              (lambda (_dispatch32953_ _table32954_)
                (cons '@kw-lambda
                      (cons _table32954_ (cons _dispatch32953_ '()))))))
        (if (##structure-instance-of? _self3293832946_ 'gxc#!kw-lambda::t)
            (let* ((_e3294232959_ (##vector-ref _self3293832946_ '1))
                   (_e3294332962_ (##vector-ref _self3293832946_ '2))
                   (_table32965_ _e3294332962_)
                   (_e3294432967_ (##vector-ref _self3293832946_ '3))
                   (_dispatch32970_ _e3294432967_))
              (_K3294132956_ _dispatch32970_ _table32965_))
            (_E3294032950_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self32780_)
      (let* ((_self3278132789_ _self32780_)
             (_E3278332793_
              (lambda () (error '"No clause matching" _self3278132789_)))
             (_K3278432799_
              (lambda (_main32796_ _keys32797_)
                (cons '@kw-lambda-dispatch
                      (cons _keys32797_ (cons _main32796_ '()))))))
        (if (##structure-instance-of?
             _self3278132789_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e3278532802_ (##vector-ref _self3278132789_ '1))
                   (_e3278632805_ (##vector-ref _self3278132789_ '2))
                   (_keys32808_ _e3278632805_)
                   (_e3278732810_ (##vector-ref _self3278132789_ '3))
                   (_main32813_ _e3278732810_))
              (_K3278432799_ _main32813_ _keys32808_))
            (_E3278332793_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
