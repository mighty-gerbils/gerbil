(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda19940
      (lambda (_srcpath19942_ _opts19943_)
        (begin
          (if (string? _srcpath19942_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath19942_))
          (let ((_outdir19945_ (pgetq 'output-dir: _opts19943_))
                (_invoke-gsc?19946_ (pgetq 'invoke-gsc: _opts19943_))
                (_gsc-options19947_ (pgetq 'gsc-options: _opts19943_))
                (_keep-scm?19948_ (pgetq 'keep-scm: _opts19943_))
                (_verbosity19949_ (pgetq 'verbose: _opts19943_))
                (_optimize19950_ (pgetq 'optimize: _opts19943_))
                (_gen-ssxi19951_ (pgetq 'generate-ssxi: _opts19943_))
                (_static19952_ (pgetq 'static: _opts19943_)))
            (begin
              (if _outdir19945_ (create-directory* _outdir19945_) '#!void)
              (if _optimize19950_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath19942_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath19942_))))
               gxc#current-compile-output-dir
               _outdir19945_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?19946_
               gxc#current-compile-gsc-options
               _gsc-options19947_
               gxc#current-compile-keep-scm
               _keep-scm?19948_
               gxc#current-compile-verbose
               _verbosity19949_
               gxc#current-compile-optimize
               _optimize19950_
               gxc#current-compile-generate-ssxi
               _gen-ssxi19951_
               gxc#current-compile-static
               _static19952_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath19958_)
          (let ((_opts19960_ '()))
            (gxc#compile-file__opt-lambda19940 _srcpath19958_ _opts19960_))))
      (define gxc#compile-file
        (lambda _g19968_
          (let ((_g19967_ (length _g19968_)))
            (cond ((fx= _g19967_ 1) (apply gxc#compile-file__0 _g19968_))
                  ((fx= _g19967_ 2)
                   (apply gxc#compile-file__opt-lambda19940 _g19968_))
                  (else (error "No clause matching arguments" _g19968_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda19926
      (lambda (_srcpath19928_ _opts19929_)
        (gxc#do-compile-exe
         _srcpath19928_
         _opts19929_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath19934_)
          (let ((_opts19936_ '()))
            (gxc#compile-exe-stub__opt-lambda19926
             _srcpath19934_
             _opts19936_))))
      (define gxc#compile-exe-stub
        (lambda _g19970_
          (let ((_g19969_ (length _g19970_)))
            (cond ((fx= _g19969_ 1) (apply gxc#compile-exe-stub__0 _g19970_))
                  ((fx= _g19969_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda19926 _g19970_))
                  (else (error "No clause matching arguments" _g19970_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda19912
      (lambda (_srcpath19914_ _opts19915_)
        (gxc#do-compile-exe
         _srcpath19914_
         _opts19915_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath19920_)
          (let ((_opts19922_ '()))
            (gxc#compile-static-exe__opt-lambda19912
             _srcpath19920_
             _opts19922_))))
      (define gxc#compile-static-exe
        (lambda _g19972_
          (let ((_g19971_ (length _g19972_)))
            (cond ((fx= _g19971_ 1) (apply gxc#compile-static-exe__0 _g19972_))
                  ((fx= _g19971_ 2)
                   (apply gxc#compile-static-exe__opt-lambda19912 _g19972_))
                  (else (error "No clause matching arguments" _g19972_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath19902_ _opts19903_ _compile-e19904_)
      (begin
        (if (string? _srcpath19902_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath19902_))
        (let ((_outdir19906_ (pgetq 'output-dir: _opts19903_))
              (_invoke-gsc?19907_ (pgetq 'invoke-gsc: _opts19903_))
              (_gsc-options19908_ (pgetq 'gsc-options: _opts19903_))
              (_keep-scm?19909_ (pgetq 'keep-scm: _opts19903_))
              (_verbosity19910_ (pgetq 'verbose: _opts19903_)))
          (begin
            (if _outdir19906_ (create-directory* _outdir19906_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath19902_)
                 (_compile-e19904_
                  (gx#import-module__0 _srcpath19902_)
                  _opts19903_)))
             gxc#current-compile-output-dir
             _outdir19906_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?19907_
             gxc#current-compile-gsc-options
             _gsc-options19908_
             gxc#current-compile-keep-scm
             _keep-scm?19909_
             gxc#current-compile-verbose
             _verbosity19910_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx19870_ _opts19871_)
      (let ((_generate-stub19873_
             (lambda ()
               (let ((_mod-str19895_
                      (symbol->string
                       (##structure-ref
                        _ctx19870_
                        '1
                        gx#expander-context::t
                        '#f))))
                 (let ((_mod-rt19897_ (string-append _mod-str19895_ '"__rt")))
                   (let ((_mod-main19899_
                          (gxc#find-runtime-symbol _ctx19870_ 'main)))
                     (let ()
                       (begin
                         (write '(##namespace ("")))
                         (newline)
                         (write (cons '_gx#start!
                                      (cons _mod-rt19897_
                                            (cons (cons 'quote
                                                        (cons _mod-main19899_
                                                              '()))
                                                  '()))))
                         (newline)))))))))
        (let ((_compile-stub19874_
               (lambda (_output-scm19881_ _output-bin19882_)
                 (let ((_init-stub19884_
                        (path-expand
                         '"lib/gx-init-exe.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gsc-args19886_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin19882_
                                            (cons _init-stub19884_
                                                  (cons _output-scm19881_
                                                        '())))))))
                     (let ((_g19973_
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args19886_))))
                       (let ((_proc19889_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args19886_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status19891_ (process-status _proc19889_)))
                           (let ()
                             (if (zero? _status19891_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm19881_
                                  _output-bin19882_
                                  _status19891_)))))))))))
          (let ((_output-bin19876_
                 (gxc#compile-exe-output-file _ctx19870_ _opts19871_)))
            (let ((_output-scm19878_
                   (string-append _output-bin19876_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm19878_ _generate-stub19873_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub19874_ _output-scm19878_ _output-bin19876_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm19878_))))))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx19828_ _opts19829_)
      (let ((_generate-stub19831_
             (lambda ()
               (let ((_mod-main19868_
                      (gxc#find-runtime-symbol _ctx19828_ 'main)))
                 (begin
                   (write '(##namespace ("")))
                   (newline)
                   (write (cons 'apply
                                (cons _mod-main19868_
                                      (cons (cons 'cdr
                                                  (cons (cons 'command-line
                                                              '())
                                                        '()))
                                            '()))))
                   (newline))))))
        (let ((_compile-stub19832_
               (lambda (_output-scm19839_ _output-bin19840_)
                 (let ((_gx-gambc019842_
                        (path-expand
                         '"lib/static/gx-gambc0.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gx-gambc-macros19844_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_include-gx-gambc-macros19846_
                            (string-append
                             '"(include \""
                             _gx-gambc-macros19844_
                             '"\")")))
                       (let ((_bin-scm19848_
                              (gxc#find-static-module-file _ctx19828_)))
                         (let ((_deps19850_
                                (gxc#find-runtime-module-deps _ctx19828_)))
                           (let ((_deps19852_
                                  (map gxc#find-static-module-file
                                       _deps19850_)))
                             (let ((_deps19857_
                                    (filter (lambda (_$obj19854_)
                                              (not (gxc#file-empty?
                                                    _$obj19854_)))
                                            _deps19852_)))
                               (let ((_gsc-args19859_
                                      (cons '"-exe"
                                            (cons '"-o"
                                                  (cons _output-bin19840_
                                                        (cons '"-e"
                                                              (cons _include-gx-gambc-macros19846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _gx-gambc019842_
                                  (foldr1 cons
                                          (cons _bin-scm19848_
                                                (cons _output-scm19839_ '()))
                                          _deps19857_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_g19974_
                                        (gxc#verbose
                                         '"invoke gsc "
                                         (cons 'gsc _gsc-args19859_))))
                                   (let ((_proc19862_
                                          (open-process
                                           (cons 'path:
                                                 (cons '"gsc"
                                                       (cons 'arguments:
                                                             (cons _gsc-args19859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'stdout-redirection: (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((_status19864_
                                            (process-status _proc19862_)))
                                       (let ()
                                         (if (zero? _status19864_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Compilation error; gsc exit with nonzero status"
                                              _output-scm19839_
                                              _output-bin19840_
                                              _status19864_)))))))))))))))))
          (let ((_output-bin19834_
                 (gxc#compile-exe-output-file _ctx19828_ _opts19829_)))
            (let ((_output-scm19836_
                   (string-append _output-bin19834_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm19836_ _generate-stub19831_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub19832_ _output-scm19836_ _output-bin19834_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm19836_))))))))))
  (define gxc#find-export-binding
    (lambda (_ctx19778_ _id19779_)
      (let ((_$e19825_
             (find (lambda (_e1978019782_)
                     (let ((_g1978419794_ _e1978019782_))
                       (let ((_E1978719798_
                              (lambda ()
                                (error '"No clause matching" _g1978419794_))))
                         (let ((_else1978619802_ (lambda () '#f)))
                           (let ((_K1978819806_ (lambda () '#t)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _g1978419794_)
                                 (let ((_e1978919809_
                                        (##vector-ref _g1978419794_ '1)))
                                   (let ((_e1979019812_
                                          (##vector-ref _g1978419794_ '2)))
                                     (let ((_e1979119815_
                                            (##vector-ref _g1978419794_ '3)))
                                       (if (##eq? _e1979119815_ '0)
                                           (let ((_e1979219818_
                                                  (##vector-ref
                                                   _g1978419794_
                                                   '4)))
                                             (if ((lambda (_g1982019822_)
                                                    (eq? _g1982019822_
                                                         _id19779_))
                                                  _e1979219818_)
                                                 (_K1978819806_)
                                                 (_else1978619802_)))
                                           (_else1978619802_)))))
                                 (_else1978619802_)))))))
                   (##structure-ref _ctx19778_ '9 gx#module-context::t '#f))))
        (if _$e19825_ (gx#core-resolve-module-export _$e19825_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx19770_ _id19771_)
      (let ((_$e19773_ (gxc#find-export-binding _ctx19770_ _id19771_)))
        (if _$e19773_
            ((lambda (_bind19776_)
               (begin
                 (if (##structure-instance-of?
                      _bind19776_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id19771_))
                 (##structure-ref _bind19776_ '1 gx#binding::t '#f)))
             _$e19773_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx19770_ '1 gx#expander-context::t '#f)
             _id19771_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx19708_)
      (let ((_ht19710_ (make-hash-table-eq)))
        (letrec ((_find-deps19711_
                  (lambda (_rest19718_ _deps19719_)
                    (let ((_rest1972019728_ _rest19718_))
                      (let ((_E1972319732_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest1972019728_))))
                        (let ((_else1972219736_ (lambda () _deps19719_)))
                          (let ((_K1972419758_
                                 (lambda (_rest19739_ _hd19740_)
                                   (if (##structure-instance-of?
                                        _hd19740_
                                        'gx#module-context::t)
                                       (let ((_id19742_
                                              (##structure-ref
                                               _hd19740_
                                               '1
                                               gx#expander-context::t
                                               '#f))
                                             (_imports19743_
                                              (##structure-ref
                                               _hd19740_
                                               '8
                                               gx#module-context::t
                                               '#f)))
                                         (if (table-ref
                                              _ht19710_
                                              _id19742_
                                              '#f)
                                             (_find-deps19711_
                                              _rest19739_
                                              _deps19719_)
                                             (let ((_$e19745_
                                                    (gx#core-context-prelude__opt-lambda11249
                                                     _hd19740_)))
                                               (if _$e19745_
                                                   ((lambda (_pre19748_)
                                                      (let ((_xdeps19750_
                                                             (_find-deps19711_
                                                              (cons _pre19748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _imports19743_)
                      _deps19719_)))
                (begin
                  (table-set! _ht19710_ _id19742_ _hd19740_)
                  (_find-deps19711_
                   _rest19739_
                   (cons _hd19740_ _xdeps19750_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e19745_)
                                                   (let ((_xdeps19752_
                                                          (_find-deps19711_
                                                           _imports19743_
                                                           _deps19719_)))
                                                     (begin
                                                       (table-set!
                                                        _ht19710_
                                                        _id19742_
                                                        _hd19740_)
                                                       (_find-deps19711_
                                                        _rest19739_
                                                        (cons _hd19740_
                                                              _xdeps19752_))))))))
                                       (if (##structure-instance-of?
                                            _hd19740_
                                            'gx#prelude-context::t)
                                           (let ((_id19754_
                                                  (##structure-ref
                                                   _hd19740_
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)))
                                             (if (table-ref
                                                  _ht19710_
                                                  _id19754_
                                                  '#f)
                                                 (_find-deps19711_
                                                  _rest19739_
                                                  _deps19719_)
                                                 (let ((_xdeps19756_
                                                        (_find-deps19711_
                                                         (##structure-ref
                                                          _hd19740_
                                                          '7
                                                          gx#prelude-context::t
                                                          '#f)
                                                         _deps19719_)))
                                                   (if (table-ref
                                                        _ht19710_
                                                        _id19754_
                                                        '#f)
                                                       (_find-deps19711_
                                                        _rest19739_
                                                        _xdeps19756_)
                                                       (begin
                                                         (table-set!
                                                          _ht19710_
                                                          _id19754_
                                                          _hd19740_)
                                                         (_find-deps19711_
                                                          _rest19739_
                                                          (cons _hd19740_
                                                                _xdeps19756_)))))))
                                           (if (##structure-direct-instance-of?
                                                _hd19740_
                                                'gx#module-import::t)
                                               (if (fxzero? (##structure-ref
                                                             _hd19740_
                                                             '3
                                                             gx#module-import::t
                                                             '#f))
                                                   (_find-deps19711_
                                                    (cons (##structure-ref
                                                           _hd19740_
                                                           '1
                                                           gx#module-import::t
                                                           '#f)
                                                          _rest19739_)
                                                    _deps19719_)
                                                   (_find-deps19711_
                                                    _rest19739_
                                                    _deps19719_))
                                               (if (##structure-direct-instance-of?
                                                    _hd19740_
                                                    'gx#module-export::t)
                                                   (_find-deps19711_
                                                    (cons (##structure-ref
                                                           _hd19740_
                                                           '1
                                                           gx#module-export::t
                                                           '#f)
                                                          _rest19739_)
                                                    _deps19719_)
                                                   (if (##structure-direct-instance-of?
                                                        _hd19740_
                                                        'gx#import-set::t)
                                                       (if (fxzero? (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd19740_
                             '3
                             gx#module-import::t
                             '#f))
                   (_find-deps19711_
                    (cons (##structure-ref _hd19740_ '1 gx#import-set::t '#f)
                          _rest19739_)
                    _deps19719_)
                   (_find-deps19711_ _rest19739_ _deps19719_))
               (error '"Unexpected module import" _hd19740_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (##pair? _rest1972019728_)
                                (let ((_hd1972519761_ (##car _rest1972019728_))
                                      (_tl1972619763_
                                       (##cdr _rest1972019728_)))
                                  (let ((_hd19766_ _hd1972519761_))
                                    (let ((_rest19768_ _tl1972619763_))
                                      (_K1972419758_ _rest19768_ _hd19766_))))
                                (_else1972219736_)))))))))
          (reverse (filter gx#expander-context-id
                           (_find-deps19711_
                            (let ((_$e19713_
                                   (gx#core-context-prelude__opt-lambda11249
                                    _ctx19708_)))
                              (if _$e19713_
                                  ((lambda (_pre19716_)
                                     (cons _pre19716_
                                           (##structure-ref
                                            _ctx19708_
                                            '8
                                            gx#module-context::t
                                            '#f)))
                                   _$e19713_)
                                  (##structure-ref
                                   _ctx19708_
                                   '8
                                   gx#module-context::t
                                   '#f)))
                            '())))))))
  (define gxc#find-static-module-file
    (lambda (_ctx19647_)
      (let ((_scm19649_
             (string-append
              (gxc#static-module-name
               (##structure-ref _ctx19647_ '1 gx#expander-context::t '#f))
              '".scm")))
        (let ((_dirs19651_ (gx#current-expander-module-library-path)))
          (let ((_dirs19660_
                 (let ((_$e19653_ (gxc#current-compile-output-dir)))
                   (if _$e19653_
                       ((lambda (_g1965519657_)
                          (cons _g1965519657_ _dirs19651_))
                        _$e19653_)
                       _dirs19651_))))
            (let ((_dirs19666_
                   (map (lambda (_g1966119663_)
                          (path-expand '"static" _g1966119663_))
                        _dirs19660_)))
              (let ()
                ((letrec ((_lp19669_
                           (lambda (_rest19671_)
                             (let ((_rest1967219680_ _rest19671_))
                               (let ((_E1967519684_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _rest1967219680_))))
                                 (let ((_else1967419688_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"cannot find static module"
                                           (##structure-ref
                                            _ctx19647_
                                            '1
                                            gx#expander-context::t
                                            '#f)
                                           _scm19649_))))
                                   (let ((_K1967619696_
                                          (lambda (_rest19691_ _dir19692_)
                                            (let ((_path19694_
                                                   (path-expand
                                                    _scm19649_
                                                    _dir19692_)))
                                              (if (file-exists? _path19694_)
                                                  _path19694_
                                                  (_lp19669_ _rest19691_))))))
                                     (if (##pair? _rest1967219680_)
                                         (let ((_hd1967719699_
                                                (##car _rest1967219680_))
                                               (_tl1967819701_
                                                (##cdr _rest1967219680_)))
                                           (let ((_dir19704_ _hd1967719699_))
                                             (let ((_rest19706_
                                                    _tl1967819701_))
                                               (_K1967619696_
                                                _rest19706_
                                                _dir19704_))))
                                         (_else1967419688_)))))))))
                   _lp19669_)
                 _dirs19666_))))))))
  (define gxc#file-empty?
    (lambda (_path19645_)
      (zero? (file-info-size (file-info _path19645_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx19642_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx19642_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx19642_)
               '#!void)
           (gxc#collect-bindings _ctx19642_)
           (gxc#compile-runtime-code _ctx19642_)
           (gxc#compile-meta-code _ctx19642_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx19642_)
               '#!void)))
       gx#current-expander-context
       _ctx19642_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj19965 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj19965) __obj19965))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx19640_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx19640_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx19599_)
      (let ((_generate-runtime-code19602_
             (lambda (_ctx19617_ _code19618_)
               (let ((_runtime-code19621_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code19618_))
                       gx#current-expander-context
                       _ctx19617_)))
                 (let ((_scm019623_
                        (gxc#compile-output-file _ctx19617_ '0 '".scm")))
                   (let ()
                     (if (gxc#current-compile-static)
                         (let ((_scms19626_
                                (gxc#compile-static-output-file _ctx19617_)))
                           (begin
                             (call-with-parameters
                              (lambda ()
                                (gxc#compile-scm-file
                                 _scm019623_
                                 _runtime-code19621_))
                              gxc#current-compile-keep-scm
                              '#t)
                             (if (file-exists? _scms19626_)
                                 (delete-file _scms19626_)
                                 '#!void)
                             (gxc#verbose
                              '"copy static module "
                              _scm019623_
                              '" => "
                              _scms19626_)
                             (copy-file _scm019623_ _scms19626_)
                             (if (gxc#current-compile-keep-scm)
                                 '#!void
                                 (delete-file _scm019623_))))
                         (gxc#compile-scm-file
                          _scm019623_
                          _runtime-code19621_))))))))
        (let ((_generate-loader-code19603_
               (lambda (_ctx19607_ _code19608_ _rt19609_)
                 (let ((_loader-code19612_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code19608_))
                         gx#current-expander-context
                         _ctx19607_)))
                   (let ((_loader-code19614_
                          (if _rt19609_
                              (cons 'begin
                                    (cons _loader-code19612_
                                          (cons (cons 'load-module
                                                      (cons _rt19609_ '()))
                                                '())))
                              _loader-code19612_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx19607_ 'rt '".scm")
                        _loader-code19614_)))))))
          (let ((_compile119601_
                 (lambda (_ctx19629_)
                   (let ((_code19631_
                          (##structure-ref
                           _ctx19629_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt19635_
                            (if (gxc#apply-find-runtime-code _code19631_)
                                (let ((_idstr19633_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx19629_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr19633_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt19635_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx19629_
                                  _rt19635_)
                                 (_generate-runtime-code19602_
                                  _ctx19629_
                                  _code19631_))
                               (if (gxc#current-compile-static)
                                   (let ((_path19638_
                                          (gxc#compile-static-output-file
                                           _ctx19629_)))
                                     (with-output-to-file
                                      (cons 'path:
                                            (cons _path19638_
                                                  (cons 'permissions:
                                                        (cons '420 '()))))
                                      void))
                                   '#!void))
                           (_generate-loader-code19603_
                            _ctx19629_
                            _code19631_
                            _rt19635_))))))))
            (let ((_all-modules19605_
                   (cons _ctx19599_ (gxc#lift-nested-modules _ctx19599_))))
              (for-each _compile119601_ _all-modules19605_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx19501_)
      (let ((_compile-ssi19503_
             (lambda (_code19569_)
               (let ((_path19571_
                      (gxc#compile-output-file _ctx19501_ '#f '".ssi")))
                 (let ((_prelude19582_
                        (let ((_super19573_
                               (##structure-ref
                                _ctx19501_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e19575_
                                 (##structure-ref
                                  _super19573_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e19575_
                                ((lambda (_g1957719579_)
                                   (make-symbol '":" _g1957719579_))
                                 _$e19575_)
                                ':<root>)))))
                   (let ((_ns19584_
                          (##structure-ref
                           _ctx19501_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr19586_
                            (symbol->string
                             (##structure-ref
                              _ctx19501_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg19593_
                              (let ((_$e19588_
                                     (string-rindex _idstr19586_ '#\/)))
                                (if _$e19588_
                                    ((lambda (_x19591_)
                                       (string->symbol
                                        (substring _idstr19586_ '0 _x19591_)))
                                     _$e19588_)
                                    '#f))))
                         (let ((_rt19595_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx19501_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path19571_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path19571_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude19582_)
                                    (if _pkg19593_
                                        (displayln '"package:" '" " _pkg19593_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns19584_)
                                    (newline)
                                    (pretty-print _code19569_)
                                    (if _rt19595_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt19595_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi19504_
               (lambda (_part19509_)
                 (let ((_part1951019523_ _part19509_))
                   (let ((_E1951219527_
                          (lambda ()
                            (error '"No clause matching" _part1951019523_))))
                     (let ((_K1951319538_
                            (lambda (_code19530_
                                     _n19531_
                                     _phi19532_
                                     _phi-ctx19533_)
                              (let ((_code19536_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code19530_))
                                      gx#current-expander-context
                                      _phi-ctx19533_
                                      gx#current-expander-phi
                                      _phi19532_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx19501_
                                  _n19531_
                                  '".scm")
                                 _code19536_)))))
                       (if (##pair? _part1951019523_)
                           (let ((_hd1951419541_ (##car _part1951019523_))
                                 (_tl1951519543_ (##cdr _part1951019523_)))
                             (let ((_phi-ctx19546_ _hd1951419541_))
                               (if (##pair? _tl1951519543_)
                                   (let ((_hd1951619548_
                                          (##car _tl1951519543_))
                                         (_tl1951719550_
                                          (##cdr _tl1951519543_)))
                                     (let ((_phi19553_ _hd1951619548_))
                                       (if (##pair? _tl1951719550_)
                                           (let ((_hd1951819555_
                                                  (##car _tl1951719550_))
                                                 (_tl1951919557_
                                                  (##cdr _tl1951719550_)))
                                             (let ((_n19560_ _hd1951819555_))
                                               (if (##pair? _tl1951919557_)
                                                   (let ((_hd1952019562_
                                                          (##car _tl1951919557_))
                                                         (_tl1952119564_
                                                          (##cdr _tl1951919557_)))
                                                     (let ((_code19567_
                                                            _hd1952019562_))
                                                       (if (##null? _tl1952119564_)
                                                           (_K1951319538_
                                                            _code19567_
                                                            _n19560_
                                                            _phi19553_
                                                            _phi-ctx19546_)
                                                           (_E1951219527_))))
                                                   (_E1951219527_))))
                                           (_E1951219527_))))
                                   (_E1951219527_))))
                           (_E1951219527_))))))))
          (let ((_g19975_ (gxc#generate-meta-code _ctx19501_)))
            (begin
              (let ((_g19976_ (values-count _g19975_)))
                (if (not (fx= _g19976_ 2))
                    (error "Context expects 2 values" _g19976_)))
              (let ((_ssi-code19506_ (values-ref _g19975_ 0))
                    (_phi-code19507_ (values-ref _g19975_ 1)))
                (begin
                  (_compile-ssi19503_ _ssi-code19506_)
                  (for-each _compile-phi19504_ _phi-code19507_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx19484_)
      (let ((_path19486_ (gxc#compile-output-file _ctx19484_ '#f '".ssxi.ss")))
        (let ((_code19488_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx19484_ '11 gx#module-context::t '#f))))
          (let ((_idstr19490_
                 (symbol->string
                  (##structure-ref _ctx19484_ '1 gx#expander-context::t '#f))))
            (let ((_pkg19497_
                   (let ((_$e19492_ (string-rindex _idstr19490_ '#\/)))
                     (if _$e19492_
                         ((lambda (_x19495_)
                            (string->symbol
                             (substring _idstr19490_ '0 _x19495_)))
                          _$e19492_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path19486_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path19486_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg19497_
                           (displayln '"package: " _pkg19497_)
                           '#!void)
                       (newline)
                       (pretty-print _code19488_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx19477_)
      (let ((_state19479_
             (let ((__obj19966 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj19966 _ctx19477_)
                 __obj19966))))
        (let ((_ssi-code19481_
               (gxc#apply-generate-meta
                (##structure-ref _ctx19477_ '11 gx#module-context::t '#f)
                _state19479_)))
          (let ()
            (values _ssi-code19481_ (gxc#meta-state-end! _state19479_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx19470_)
      (let ((_lifts19472_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code19475_ (gxc#apply-generate-runtime-phi _stx19470_)))
             (if (null? (unbox _lifts19472_))
                 _code19475_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code19475_ '())
                               (reverse (unbox _lifts19472_)))))))
         gxc#current-compile-lift
         _lifts19472_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx19466_)
      (let ((_modules19468_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx19466_ '11 gx#module-context::t '#f)
           _modules19468_)
          (reverse (unbox _modules19468_))))))
  (define gxc#compile-scm-file
    (lambda (_path19462_ _code19463_)
      (begin
        (gxc#verbose '"compile " _path19462_)
        (with-output-to-file
         (cons 'path: (cons _path19462_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code19463_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path19462_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path19462_)))))
  (define gxc#gsc-compile-file
    (lambda (_path19448_)
      (let ((_gsc-args19455_
             (let ((_$e19450_ (gxc#current-compile-gsc-options)))
               (if _$e19450_
                   ((lambda (_opts19453_)
                      (foldr1 cons (cons _path19448_ '()) _opts19453_))
                    _$e19450_)
                   (cons _path19448_ '())))))
        (let ((_proc19457_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args19455_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status19459_ (process-status _proc19457_)))
            (let ()
              (if (zero? _status19459_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path19448_
                   _status19459_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx19420_ _n19421_ _ext19422_)
      (let ((_module-relative-path19424_
             (lambda (_ctx19446_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx19446_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory19425_
               (lambda (_ctx19442_)
                 (path-directory
                  (let ((_mpath19444_
                         (##structure-ref
                          _ctx19442_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath19444_)
                        _mpath19444_
                        (last _mpath19444_)))))))
          (let ((_section-string19426_
                 (lambda (_n19440_)
                   (if (number? _n19440_)
                       (number->string _n19440_)
                       (if (symbol? _n19440_)
                           (symbol->string _n19440_)
                           (if (string? _n19440_)
                               _n19440_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n19440_)))))))
            (let ((_file-name19427_
                   (lambda (_path19438_)
                     (if _n19421_
                         (string-append
                          _path19438_
                          '"__"
                          (_section-string19426_ _n19421_)
                          _ext19422_)
                         (string-append _path19438_ _ext19422_)))))
              (let ((_file-path19428_
                     (lambda ()
                       (let ((_$e19433_ (gxc#current-compile-output-dir)))
                         (if _$e19433_
                             ((lambda (_outdir19436_)
                                (path-expand
                                 (_file-name19427_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx19420_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir19436_))
                              _$e19433_)
                             (path-expand
                              (_file-name19427_
                               (_module-relative-path19424_ _ctx19420_))
                              (_module-source-directory19425_ _ctx19420_)))))))
                (let ((_path19430_ (_file-path19428_)))
                  (begin
                    (create-directory* (path-directory _path19430_))
                    _path19430_)))))))))
  (define gxc#compile-static-output-file
    (lambda (_ctx19403_)
      (let ((_file-name19405_
             (lambda (_idstr19418_)
               (string-append (gxc#static-module-name _idstr19418_) '".scm"))))
        (let ((_file-path19406_
               (lambda ()
                 (let ((_file19411_
                        (_file-name19405_
                         (symbol->string
                          (##structure-ref
                           _ctx19403_
                           '1
                           gx#expander-context::t
                           '#f)))))
                   (let ((_$e19413_ (gxc#current-compile-output-dir)))
                     (if _$e19413_
                         ((lambda (_outdir19416_)
                            (path-expand
                             _file19411_
                             (path-expand '"static" _outdir19416_)))
                          _$e19413_)
                         (path-expand _file19411_ '"static")))))))
          (let ((_path19408_ (_file-path19406_)))
            (begin
              (create-directory* (path-directory _path19408_))
              _path19408_))))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx19390_ _opts19391_)
      (let ((_$e19393_ (pgetq 'output-file: _opts19391_)))
        (if _$e19393_
            (values _$e19393_)
            (let ((_mod-str19396_
                   (symbol->string
                    (##structure-ref
                     _ctx19390_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let ((_$e19398_ (string-rindex _mod-str19396_ '#\/)))
                (if _$e19398_
                    ((lambda (_ix19401_)
                       (substring
                        _mod-str19396_
                        (fx+ _ix19401_ '1)
                        (string-length _mod-str19396_)))
                     _$e19398_)
                    _mod-str19396_)))))))
  (define gxc#static-module-name
    (lambda (_idstr19386_)
      (if (string? _idstr19386_)
          (let ((_strs19388_ (string-split _idstr19386_ '#\/)))
            (string-join _strs19388_ '"__"))
          (if (symbol? _idstr19386_)
              (gxc#static-module-name (symbol->string _idstr19386_))
              (error '"Bad module id" _idstr19386_))))))
