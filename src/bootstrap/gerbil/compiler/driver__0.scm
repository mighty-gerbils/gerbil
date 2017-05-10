(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (define gxc#compile-file__opt-lambda14942
      (lambda (_srcpath14944_ _opts14945_)
        (begin
          (if (string? _srcpath14944_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath14944_))
          (let ((_outdir14947_ (pgetq 'output-dir: _opts14945_))
                (_invoke-gsc?14948_ (pgetq 'invoke-gsc: _opts14945_))
                (_gsc-options14949_ (pgetq 'gsc-options: _opts14945_))
                (_keep-scm?14950_ (pgetq 'keep-scm: _opts14945_))
                (_verbosity14951_ (pgetq 'verbose: _opts14945_))
                (_optimize14952_ (pgetq 'optimize: _opts14945_))
                (_gen-ssxi14953_ (pgetq 'generate-ssxi: _opts14945_)))
            (begin
              (if _outdir14947_ (create-directory* _outdir14947_) '#!void)
              (if _optimize14952_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile exe " _srcpath14944_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath14944_))))
               gxc#current-compile-output-dir
               _outdir14947_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?14948_
               gxc#current-compile-gsc-options
               _gsc-options14949_
               gxc#current-compile-keep-scm
               _keep-scm?14950_
               gxc#current-compile-verbose
               _verbosity14951_
               gxc#current-compile-optimize
               _optimize14952_
               gxc#current-compile-generate-ssxi
               _gen-ssxi14953_))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath14959_)
          (let ((_opts14961_ '()))
            (gxc#compile-file__opt-lambda14942 _srcpath14959_ _opts14961_))))
      (define gxc#compile-file
        (lambda _g14968_
          (let ((_g14967_ (length _g14968_)))
            (cond ((fx= _g14967_ 1)
                   (apply (lambda (_srcpath14959_)
                            (gxc#compile-file__0 _srcpath14959_))
                          _g14968_))
                  ((fx= _g14967_ 2)
                   (apply (lambda (_srcpath14963_ _opts14964_)
                            (gxc#compile-file__opt-lambda14942
                             _srcpath14963_
                             _opts14964_))
                          _g14968_))
                  (else (error "No clause matching arguments" _g14968_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda14921
      (lambda (_srcpath14923_ _opts14924_)
        (begin
          (if (string? _srcpath14923_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath14923_))
          (let ((_outdir14926_ (pgetq 'output-dir: _opts14924_))
                (_invoke-gsc?14927_ (pgetq 'invoke-gsc: _opts14924_))
                (_gsc-options14928_ (pgetq 'gsc-options: _opts14924_))
                (_keep-scm?14929_ (pgetq 'keep-scm: _opts14924_))
                (_verbosity14930_ (pgetq 'verbose: _opts14924_)))
            (begin
              (if _outdir14926_ (create-directory* _outdir14926_) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath14923_)
                   (gxc#compile-exe-stub-module
                    (gx#import-module__0 _srcpath14923_)
                    _opts14924_)))
               gxc#current-compile-output-dir
               _outdir14926_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?14927_
               gxc#current-compile-gsc-options
               _gsc-options14928_
               gxc#current-compile-keep-scm
               _keep-scm?14929_
               gxc#current-compile-verbose
               _verbosity14930_))))))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath14936_)
          (let ((_opts14938_ '()))
            (gxc#compile-exe-stub__opt-lambda14921
             _srcpath14936_
             _opts14938_))))
      (define gxc#compile-exe-stub
        (lambda _g14970_
          (let ((_g14969_ (length _g14970_)))
            (cond ((fx= _g14969_ 1)
                   (apply (lambda (_srcpath14936_)
                            (gxc#compile-exe-stub__0 _srcpath14936_))
                          _g14970_))
                  ((fx= _g14969_ 2)
                   (apply (lambda (_srcpath14940_ _opts14941_)
                            (gxc#compile-exe-stub__opt-lambda14921
                             _srcpath14940_
                             _opts14941_))
                          _g14970_))
                  (else (error "No clause matching arguments" _g14970_))))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx14815_ _opts14816_)
      (let ((_find-export-binding14818_
             (lambda (_id14872_ _exports14873_)
               (let ((_$e14919_
                      (find (lambda (_e1487414876_)
                              (let ((_g1487814888_ _e1487414876_))
                                (let ((_E1488114892_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _g1487814888_))))
                                  (let ((_else1488014896_ (lambda () '#f)))
                                    (let ((_K1488214900_ (lambda () '#t)))
                                      (if (direct-struct-instance?
                                           gx#module-export::t
                                           _g1487814888_)
                                          (let ((_e1488314903_
                                                 (##vector-ref
                                                  _g1487814888_
                                                  '1)))
                                            (let ((_e1488414906_
                                                   (##vector-ref
                                                    _g1487814888_
                                                    '2)))
                                              (let ((_e1488514909_
                                                     (##vector-ref
                                                      _g1487814888_
                                                      '3)))
                                                (if (##eq? _e1488514909_ '0)
                                                    (let ((_e1488614912_
                                                           (##vector-ref
                                                            _g1487814888_
                                                            '4)))
                                                      (if ((lambda (_g1491414916_)
                                                             (eq? _g1491414916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id14872_))
                   _e1488614912_)
                  (_K1488214900_)
                  (_else1488014896_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1488014896_)))))
                                          (_else1488014896_)))))))
                            _exports14873_)))
                 (if _$e14919_
                     (gx#core-resolve-module-export _$e14919_)
                     '#f)))))
        (let ((_generate-stub14819_
               (lambda ()
                 (let ((_mod-str14860_
                        (symbol->string
                         (##structure-ref
                          _ctx14815_
                          '1
                          gx#expander-context::t
                          '#f))))
                   (let ((_mod-rt14862_
                          (string-append _mod-str14860_ '"__rt")))
                     (let ((_mod-main14869_
                            (let ((_$e14864_
                                   (_find-export-binding14818_
                                    'main
                                    (##structure-ref
                                     _ctx14815_
                                     '9
                                     gx#module-context::t
                                     '#f))))
                              (if _$e14864_
                                  ((lambda (_bind14867_)
                                     (begin
                                       (if (##structure-instance-of?
                                            _bind14867_
                                            'gx#runtime-binding::t)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"main is not a runtime binding"))
                                       (##structure-ref
                                        _bind14867_
                                        '1
                                        gx#binding::t
                                        '#f)))
                                   _$e14864_)
                                  (gxc#raise-compile-error
                                   '"module does not export main"
                                   (##structure-ref
                                    _ctx14815_
                                    '1
                                    gx#expander-context::t
                                    '#f))))))
                       (let ()
                         (begin
                           (write '(##namespace ("")))
                           (newline)
                           (write (cons '_gx#start!
                                        (cons _mod-rt14862_
                                              (cons (cons 'quote
                                                          (cons _mod-main14869_
                                                                '()))
                                                    '()))))
                           (newline)))))))))
          (let ((_compile-stub14820_
                 (lambda (_output-scm14847_ _output-bin14848_)
                   (let ((_init-stub14850_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_gsc-args14852_
                            (cons '"-exe"
                                  (cons '"-o"
                                        (cons _output-bin14848_
                                              (cons _init-stub14850_
                                                    (cons _output-scm14847_
                                                          '())))))))
                       (let ((_proc14854_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args14852_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status14856_ (process-status _proc14854_)))
                           (let ()
                             (if (zero? _status14856_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm14847_
                                  _output-bin14848_
                                  _status14856_))))))))))
            (let ((_output-bin14842_
                   (let ((_$e14822_ (pgetq 'output-file: _opts14816_)))
                     (if _$e14822_
                         (values _$e14822_)
                         (let ((_mod-str14825_
                                (symbol->string
                                 (##structure-ref
                                  _ctx14815_
                                  '1
                                  gx#expander-context::t
                                  '#f))))
                           (let ((_mod-name14832_
                                  (let ((_$e14827_
                                         (string-rindex _mod-str14825_ '#\/)))
                                    (if _$e14827_
                                        ((lambda (_ix14830_)
                                           (substring
                                            _mod-str14825_
                                            (fx1+ _ix14830_)
                                            (string-length _mod-str14825_)))
                                         _$e14827_)
                                        _mod-str14825_))))
                             (let ()
                               (let ((_$e14835_
                                      (gxc#current-compile-output-dir)))
                                 (if _$e14835_
                                     ((lambda (_g1483714839_)
                                        (path-expand
                                         _mod-name14832_
                                         _g1483714839_))
                                      _$e14835_)
                                     _mod-name14832_)))))))))
              (let ((_output-scm14844_
                     (string-append _output-bin14842_ '".scm")))
                (let ()
                  (begin
                    (with-output-to-file
                     _output-scm14844_
                     _generate-stub14819_)
                    (if (gxc#current-compile-invoke-gsc)
                        (_compile-stub14820_
                         _output-scm14844_
                         _output-bin14842_)
                        '#!void)
                    (if (gxc#current-compile-keep-scm)
                        '#!void
                        (delete-file _output-scm14844_)))))))))))
  (define gxc#compile-top-module
    (lambda (_ctx14812_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx14812_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx14812_)
               '#!void)
           (gxc#collect-bindings _ctx14812_)
           (gxc#compile-runtime-code _ctx14812_)
           (gxc#compile-meta-code _ctx14812_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx14812_)
               '#!void)))
       gx#current-expander-context
       _ctx14812_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj14965 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj14965) __obj14965))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx14810_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx14810_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx14777_)
      (let ((_generate-runtime-code14780_
             (lambda (_ctx14795_ _code14796_)
               (let ((_runtime-code14799_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code14796_))
                       gx#current-expander-context
                       _ctx14795_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx14795_ '0 '".scm")
                  _runtime-code14799_)))))
        (let ((_generate-loader-code14781_
               (lambda (_ctx14785_ _code14786_ _rt14787_)
                 (let ((_loader-code14790_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code14786_))
                         gx#current-expander-context
                         _ctx14785_)))
                   (let ((_loader-code14792_
                          (if _rt14787_
                              (cons 'begin
                                    (cons _loader-code14790_
                                          (cons (cons 'load-module
                                                      (cons _rt14787_ '()))
                                                '())))
                              _loader-code14790_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx14785_ 'rt '".scm")
                        _loader-code14792_)))))))
          (let ((_compile114779_
                 (lambda (_ctx14801_)
                   (let ((_code14803_
                          (##structure-ref
                           _ctx14801_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt14807_
                            (if (gxc#apply-find-runtime-code _code14803_)
                                (let ((_idstr14805_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx14801_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr14805_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt14807_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx14801_
                                  _rt14807_)
                                 (_generate-runtime-code14780_
                                  _ctx14801_
                                  _code14803_))
                               '#!void)
                           (_generate-loader-code14781_
                            _ctx14801_
                            _code14803_
                            _rt14807_))))))))
            (let ((_all-modules14783_
                   (cons _ctx14777_ (gxc#lift-nested-modules _ctx14777_))))
              (for-each _compile114779_ _all-modules14783_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx14679_)
      (let ((_compile-ssi14681_
             (lambda (_code14747_)
               (let ((_path14749_
                      (gxc#compile-output-file _ctx14679_ '#f '".ssi")))
                 (let ((_prelude14760_
                        (let ((_super14751_
                               (##structure-ref
                                _ctx14679_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e14753_
                                 (##structure-ref
                                  _super14751_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e14753_
                                ((lambda (_g1475514757_)
                                   (make-symbol '":" _g1475514757_))
                                 _$e14753_)
                                ':<root>)))))
                   (let ((_ns14762_
                          (##structure-ref
                           _ctx14679_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr14764_
                            (symbol->string
                             (##structure-ref
                              _ctx14679_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg14771_
                              (let ((_$e14766_
                                     (string-rindex _idstr14764_ '#\/)))
                                (if _$e14766_
                                    ((lambda (_x14769_)
                                       (string->symbol
                                        (substring _idstr14764_ '0 _x14769_)))
                                     _$e14766_)
                                    '#f))))
                         (let ((_rt14773_
                                (hash-get
                                 (gxc#current-compile-runtime-sections)
                                 _ctx14679_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path14749_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path14749_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude14760_)
                                    (if _pkg14771_
                                        (displayln '"package:" '" " _pkg14771_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns14762_)
                                    (newline)
                                    (pretty-print _code14747_)
                                    (if _rt14773_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt14773_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi14682_
               (lambda (_part14687_)
                 (let ((_part1468814701_ _part14687_))
                   (let ((_E1469014705_
                          (lambda ()
                            (error '"No clause matching" _part1468814701_))))
                     (let ((_K1469114716_
                            (lambda (_code14708_
                                     _n14709_
                                     _phi14710_
                                     _phi-ctx14711_)
                              (let ((_code14714_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code14708_))
                                      gx#current-expander-context
                                      _phi-ctx14711_
                                      gx#current-expander-phi
                                      _phi14710_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx14679_
                                  _n14709_
                                  '".scm")
                                 _code14714_)))))
                       (if (##pair? _part1468814701_)
                           (let ((_hd1469214719_ (##car _part1468814701_))
                                 (_tl1469314721_ (##cdr _part1468814701_)))
                             (let ((_phi-ctx14724_ _hd1469214719_))
                               (if (##pair? _tl1469314721_)
                                   (let ((_hd1469414726_
                                          (##car _tl1469314721_))
                                         (_tl1469514728_
                                          (##cdr _tl1469314721_)))
                                     (let ((_phi14731_ _hd1469414726_))
                                       (if (##pair? _tl1469514728_)
                                           (let ((_hd1469614733_
                                                  (##car _tl1469514728_))
                                                 (_tl1469714735_
                                                  (##cdr _tl1469514728_)))
                                             (let ((_n14738_ _hd1469614733_))
                                               (if (##pair? _tl1469714735_)
                                                   (let ((_hd1469814740_
                                                          (##car _tl1469714735_))
                                                         (_tl1469914742_
                                                          (##cdr _tl1469714735_)))
                                                     (let ((_code14745_
                                                            _hd1469814740_))
                                                       (if (##null? _tl1469914742_)
                                                           (_K1469114716_
                                                            _code14745_
                                                            _n14738_
                                                            _phi14731_
                                                            _phi-ctx14724_)
                                                           (_E1469014705_))))
                                                   (_E1469014705_))))
                                           (_E1469014705_))))
                                   (_E1469014705_))))
                           (_E1469014705_))))))))
          (let ((_g14971_ (gxc#generate-meta-code _ctx14679_)))
            (begin
              (let ((_g14972_ (values-count _g14971_)))
                (if (not (fx= _g14972_ 2))
                    (error "Context expects 2 values" _g14972_)))
              (let ((_ssi-code14684_ (values-ref _g14971_ 0))
                    (_phi-code14685_ (values-ref _g14971_ 1)))
                (begin
                  (_compile-ssi14681_ _ssi-code14684_)
                  (for-each _compile-phi14682_ _phi-code14685_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx14662_)
      (let ((_path14664_ (gxc#compile-output-file _ctx14662_ '#f '".ssxi.ss")))
        (let ((_code14666_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx14662_ '11 gx#module-context::t '#f))))
          (let ((_idstr14668_
                 (symbol->string
                  (##structure-ref _ctx14662_ '1 gx#expander-context::t '#f))))
            (let ((_pkg14675_
                   (let ((_$e14670_ (string-rindex _idstr14668_ '#\/)))
                     (if _$e14670_
                         ((lambda (_x14673_)
                            (string->symbol
                             (substring _idstr14668_ '0 _x14673_)))
                          _$e14670_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path14664_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path14664_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg14675_
                           (displayln '"package: " _pkg14675_)
                           '#!void)
                       (newline)
                       (pretty-print _code14666_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx14655_)
      (let ((_state14657_
             (let ((__obj14966 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj14966 _ctx14655_)
                 __obj14966))))
        (let ((_ssi-code14659_
               (gxc#apply-generate-meta
                (##structure-ref _ctx14655_ '11 gx#module-context::t '#f)
                _state14657_)))
          (let ()
            (values _ssi-code14659_ (gxc#meta-state-end! _state14657_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx14648_)
      (let ((_lifts14650_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code14653_ (gxc#apply-generate-runtime-phi _stx14648_)))
             (if (null? (unbox _lifts14650_))
                 _code14653_
                 (cons 'begin
                       (foldr cons
                              (cons _code14653_ '())
                              (reverse (unbox _lifts14650_)))))))
         gxc#current-compile-lift
         _lifts14650_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx14644_)
      (let ((_modules14646_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx14644_ '11 gx#module-context::t '#f)
           _modules14646_)
          (reverse (unbox _modules14646_))))))
  (define gxc#compile-scm-file
    (lambda (_path14640_ _code14641_)
      (begin
        (gxc#verbose '"compile " _path14640_)
        (with-output-to-file
         (cons 'path: (cons _path14640_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code14641_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path14640_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path14640_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path14626_)
      (let ((_gsc-args14633_
             (let ((_$e14628_ (gxc#current-compile-gsc-options)))
               (if _$e14628_
                   ((lambda (_opts14631_)
                      (foldr cons (cons _path14626_ '()) _opts14631_))
                    _$e14628_)
                   (cons _path14626_ '())))))
        (let ((_proc14635_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args14633_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status14637_ (process-status _proc14635_)))
            (let ()
              (if (zero? _status14637_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path14626_
                   _status14637_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx14598_ _n14599_ _ext14600_)
      (let ((_module-relative-path14602_
             (lambda (_ctx14624_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx14624_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory14603_
               (lambda (_ctx14620_)
                 (path-directory
                  (let ((_mpath14622_
                         (##structure-ref
                          _ctx14620_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath14622_)
                        _mpath14622_
                        (last _mpath14622_)))))))
          (let ((_section-string14604_
                 (lambda (_n14618_)
                   (if (number? _n14618_)
                       (number->string _n14618_)
                       (if (symbol? _n14618_)
                           (symbol->string _n14618_)
                           (if (string? _n14618_)
                               _n14618_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n14618_)))))))
            (let ((_file-name14605_
                   (lambda (_path14616_)
                     (if _n14599_
                         (string-append
                          _path14616_
                          '"__"
                          (_section-string14604_ _n14599_)
                          _ext14600_)
                         (string-append _path14616_ _ext14600_)))))
              (let ((_file-path14606_
                     (lambda ()
                       (let ((_$e14611_ (gxc#current-compile-output-dir)))
                         (if _$e14611_
                             ((lambda (_outdir14614_)
                                (path-expand
                                 (_file-name14605_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx14598_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir14614_))
                              _$e14611_)
                             (path-expand
                              (_file-name14605_
                               (_module-relative-path14602_ _ctx14598_))
                              (_module-source-directory14603_ _ctx14598_)))))))
                (let ((_path14608_ (_file-path14606_)))
                  (begin
                    (create-directory* (path-directory _path14608_))
                    _path14608_))))))))))
