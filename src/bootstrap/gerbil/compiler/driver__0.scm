(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda19939
      (lambda (_srcpath19941_ _opts19942_)
        (begin
          (if (string? _srcpath19941_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath19941_))
          (let ((_outdir19944_ (pgetq 'output-dir: _opts19942_))
                (_invoke-gsc?19945_ (pgetq 'invoke-gsc: _opts19942_))
                (_gsc-options19946_ (pgetq 'gsc-options: _opts19942_))
                (_keep-scm?19947_ (pgetq 'keep-scm: _opts19942_))
                (_verbosity19948_ (pgetq 'verbose: _opts19942_))
                (_optimize19949_ (pgetq 'optimize: _opts19942_))
                (_gen-ssxi19950_ (pgetq 'generate-ssxi: _opts19942_))
                (_static19951_ (pgetq 'static: _opts19942_)))
            (begin
              (if _outdir19944_ (create-directory* _outdir19944_) '#!void)
              (if _optimize19949_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath19941_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath19941_))))
               gxc#current-compile-output-dir
               _outdir19944_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?19945_
               gxc#current-compile-gsc-options
               _gsc-options19946_
               gxc#current-compile-keep-scm
               _keep-scm?19947_
               gxc#current-compile-verbose
               _verbosity19948_
               gxc#current-compile-optimize
               _optimize19949_
               gxc#current-compile-generate-ssxi
               _gen-ssxi19950_
               gxc#current-compile-static
               _static19951_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath19957_)
          (let ((_opts19959_ '()))
            (gxc#compile-file__opt-lambda19939 _srcpath19957_ _opts19959_))))
      (define gxc#compile-file
        (lambda _g19967_
          (let ((_g19966_ (length _g19967_)))
            (cond ((fx= _g19966_ 1) (apply gxc#compile-file__0 _g19967_))
                  ((fx= _g19966_ 2)
                   (apply gxc#compile-file__opt-lambda19939 _g19967_))
                  (else (error "No clause matching arguments" _g19967_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda19925
      (lambda (_srcpath19927_ _opts19928_)
        (gxc#do-compile-exe
         _srcpath19927_
         _opts19928_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath19933_)
          (let ((_opts19935_ '()))
            (gxc#compile-exe-stub__opt-lambda19925
             _srcpath19933_
             _opts19935_))))
      (define gxc#compile-exe-stub
        (lambda _g19969_
          (let ((_g19968_ (length _g19969_)))
            (cond ((fx= _g19968_ 1) (apply gxc#compile-exe-stub__0 _g19969_))
                  ((fx= _g19968_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda19925 _g19969_))
                  (else (error "No clause matching arguments" _g19969_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda19911
      (lambda (_srcpath19913_ _opts19914_)
        (gxc#do-compile-exe
         _srcpath19913_
         _opts19914_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath19919_)
          (let ((_opts19921_ '()))
            (gxc#compile-static-exe__opt-lambda19911
             _srcpath19919_
             _opts19921_))))
      (define gxc#compile-static-exe
        (lambda _g19971_
          (let ((_g19970_ (length _g19971_)))
            (cond ((fx= _g19970_ 1) (apply gxc#compile-static-exe__0 _g19971_))
                  ((fx= _g19970_ 2)
                   (apply gxc#compile-static-exe__opt-lambda19911 _g19971_))
                  (else (error "No clause matching arguments" _g19971_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath19901_ _opts19902_ _compile-e19903_)
      (begin
        (if (string? _srcpath19901_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath19901_))
        (let ((_outdir19905_ (pgetq 'output-dir: _opts19902_))
              (_invoke-gsc?19906_ (pgetq 'invoke-gsc: _opts19902_))
              (_gsc-options19907_ (pgetq 'gsc-options: _opts19902_))
              (_keep-scm?19908_ (pgetq 'keep-scm: _opts19902_))
              (_verbosity19909_ (pgetq 'verbose: _opts19902_)))
          (begin
            (if _outdir19905_ (create-directory* _outdir19905_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath19901_)
                 (_compile-e19903_
                  (gx#import-module__0 _srcpath19901_)
                  _opts19902_)))
             gxc#current-compile-output-dir
             _outdir19905_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?19906_
             gxc#current-compile-gsc-options
             _gsc-options19907_
             gxc#current-compile-keep-scm
             _keep-scm?19908_
             gxc#current-compile-verbose
             _verbosity19909_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx19869_ _opts19870_)
      (let ((_generate-stub19872_
             (lambda ()
               (let ((_mod-str19894_
                      (symbol->string
                       (##structure-ref
                        _ctx19869_
                        '1
                        gx#expander-context::t
                        '#f))))
                 (let ((_mod-rt19896_ (string-append _mod-str19894_ '"__rt")))
                   (let ((_mod-main19898_
                          (gxc#find-runtime-symbol _ctx19869_ 'main)))
                     (let ()
                       (begin
                         (write '(##namespace ("")))
                         (newline)
                         (write (cons '_gx#start!
                                      (cons _mod-rt19896_
                                            (cons (cons 'quote
                                                        (cons _mod-main19898_
                                                              '()))
                                                  '()))))
                         (newline)))))))))
        (let ((_compile-stub19873_
               (lambda (_output-scm19880_ _output-bin19881_)
                 (let ((_init-stub19883_
                        (path-expand
                         '"lib/gx-init-exe.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gsc-args19885_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin19881_
                                            (cons _init-stub19883_
                                                  (cons _output-scm19880_
                                                        '())))))))
                     (let ((_g19972_
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args19885_))))
                       (let ((_proc19888_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args19885_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status19890_ (process-status _proc19888_)))
                           (let ()
                             (if (zero? _status19890_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm19880_
                                  _output-bin19881_
                                  _status19890_)))))))))))
          (let ((_output-bin19875_
                 (gxc#compile-exe-output-file _ctx19869_ _opts19870_)))
            (let ((_output-scm19877_
                   (string-append _output-bin19875_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm19877_ _generate-stub19872_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub19873_ _output-scm19877_ _output-bin19875_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm19877_))))))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx19827_ _opts19828_)
      (let ((_generate-stub19830_
             (lambda ()
               (let ((_mod-main19867_
                      (gxc#find-runtime-symbol _ctx19827_ 'main)))
                 (begin
                   (write '(##namespace ("")))
                   (newline)
                   (write (cons 'apply
                                (cons _mod-main19867_
                                      (cons (cons 'cdr
                                                  (cons (cons 'command-line
                                                              '())
                                                        '()))
                                            '()))))
                   (newline))))))
        (let ((_compile-stub19831_
               (lambda (_output-scm19838_ _output-bin19839_)
                 (let ((_gx-gambc019841_
                        (path-expand
                         '"lib/static/gx-gambc0.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gx-gambc-macros19843_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_include-gx-gambc-macros19845_
                            (string-append
                             '"(include \""
                             _gx-gambc-macros19843_
                             '"\")")))
                       (let ((_bin-scm19847_
                              (gxc#find-static-module-file _ctx19827_)))
                         (let ((_deps19849_
                                (gxc#find-runtime-module-deps _ctx19827_)))
                           (let ((_deps19851_
                                  (map gxc#find-static-module-file
                                       _deps19849_)))
                             (let ((_deps19856_
                                    (filter (lambda (_$obj19853_)
                                              (not (gxc#file-empty?
                                                    _$obj19853_)))
                                            _deps19851_)))
                               (let ((_gsc-args19858_
                                      (cons '"-exe"
                                            (cons '"-o"
                                                  (cons _output-bin19839_
                                                        (cons '"-e"
                                                              (cons _include-gx-gambc-macros19845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _gx-gambc019841_
                                  (foldr1 cons
                                          (cons _bin-scm19847_
                                                (cons _output-scm19838_ '()))
                                          _deps19856_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_g19973_
                                        (gxc#verbose
                                         '"invoke gsc "
                                         (cons 'gsc _gsc-args19858_))))
                                   (let ((_proc19861_
                                          (open-process
                                           (cons 'path:
                                                 (cons '"gsc"
                                                       (cons 'arguments:
                                                             (cons _gsc-args19858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'stdout-redirection: (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((_status19863_
                                            (process-status _proc19861_)))
                                       (let ()
                                         (if (zero? _status19863_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Compilation error; gsc exit with nonzero status"
                                              _output-scm19838_
                                              _output-bin19839_
                                              _status19863_)))))))))))))))))
          (let ((_output-bin19833_
                 (gxc#compile-exe-output-file _ctx19827_ _opts19828_)))
            (let ((_output-scm19835_
                   (string-append _output-bin19833_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm19835_ _generate-stub19830_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub19831_ _output-scm19835_ _output-bin19833_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm19835_))))))))))
  (define gxc#find-export-binding
    (lambda (_ctx19777_ _id19778_)
      (let ((_$e19824_
             (find (lambda (_e1977919781_)
                     (let ((_g1978319793_ _e1977919781_))
                       (let ((_E1978619797_
                              (lambda ()
                                (error '"No clause matching" _g1978319793_))))
                         (let ((_else1978519801_ (lambda () '#f)))
                           (let ((_K1978719805_ (lambda () '#t)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _g1978319793_)
                                 (let ((_e1978819808_
                                        (##vector-ref _g1978319793_ '1)))
                                   (let ((_e1978919811_
                                          (##vector-ref _g1978319793_ '2)))
                                     (let ((_e1979019814_
                                            (##vector-ref _g1978319793_ '3)))
                                       (if (##eq? _e1979019814_ '0)
                                           (let ((_e1979119817_
                                                  (##vector-ref
                                                   _g1978319793_
                                                   '4)))
                                             (if ((lambda (_g1981919821_)
                                                    (eq? _g1981919821_
                                                         _id19778_))
                                                  _e1979119817_)
                                                 (_K1978719805_)
                                                 (_else1978519801_)))
                                           (_else1978519801_)))))
                                 (_else1978519801_)))))))
                   (##structure-ref _ctx19777_ '9 gx#module-context::t '#f))))
        (if _$e19824_ (gx#core-resolve-module-export _$e19824_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx19769_ _id19770_)
      (let ((_$e19772_ (gxc#find-export-binding _ctx19769_ _id19770_)))
        (if _$e19772_
            ((lambda (_bind19775_)
               (begin
                 (if (##structure-instance-of?
                      _bind19775_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id19770_))
                 (##structure-ref _bind19775_ '1 gx#binding::t '#f)))
             _$e19772_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx19769_ '1 gx#expander-context::t '#f)
             _id19770_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx19707_)
      (let ((_ht19709_ (make-hash-table-eq)))
        (letrec ((_find-deps19710_
                  (lambda (_rest19717_ _deps19718_)
                    (let ((_rest1971919727_ _rest19717_))
                      (let ((_E1972219731_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest1971919727_))))
                        (let ((_else1972119735_ (lambda () _deps19718_)))
                          (let ((_K1972319757_
                                 (lambda (_rest19738_ _hd19739_)
                                   (if (##structure-instance-of?
                                        _hd19739_
                                        'gx#module-context::t)
                                       (let ((_id19741_
                                              (##structure-ref
                                               _hd19739_
                                               '1
                                               gx#expander-context::t
                                               '#f))
                                             (_imports19742_
                                              (##structure-ref
                                               _hd19739_
                                               '8
                                               gx#module-context::t
                                               '#f)))
                                         (if (table-ref
                                              _ht19709_
                                              _id19741_
                                              '#f)
                                             (_find-deps19710_
                                              _rest19738_
                                              _deps19718_)
                                             (let ((_$e19744_
                                                    (gx#core-context-prelude__opt-lambda11015
                                                     _hd19739_)))
                                               (if _$e19744_
                                                   ((lambda (_pre19747_)
                                                      (let ((_xdeps19749_
                                                             (_find-deps19710_
                                                              (cons _pre19747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _imports19742_)
                      _deps19718_)))
                (begin
                  (table-set! _ht19709_ _id19741_ _hd19739_)
                  (_find-deps19710_
                   _rest19738_
                   (cons _hd19739_ _xdeps19749_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e19744_)
                                                   (let ((_xdeps19751_
                                                          (_find-deps19710_
                                                           _imports19742_
                                                           _deps19718_)))
                                                     (begin
                                                       (table-set!
                                                        _ht19709_
                                                        _id19741_
                                                        _hd19739_)
                                                       (_find-deps19710_
                                                        _rest19738_
                                                        (cons _hd19739_
                                                              _xdeps19751_))))))))
                                       (if (##structure-instance-of?
                                            _hd19739_
                                            'gx#prelude-context::t)
                                           (let ((_id19753_
                                                  (##structure-ref
                                                   _hd19739_
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)))
                                             (if (table-ref
                                                  _ht19709_
                                                  _id19753_
                                                  '#f)
                                                 (_find-deps19710_
                                                  _rest19738_
                                                  _deps19718_)
                                                 (let ((_xdeps19755_
                                                        (_find-deps19710_
                                                         (##structure-ref
                                                          _hd19739_
                                                          '7
                                                          gx#prelude-context::t
                                                          '#f)
                                                         _deps19718_)))
                                                   (if (table-ref
                                                        _ht19709_
                                                        _id19753_
                                                        '#f)
                                                       (_find-deps19710_
                                                        _rest19738_
                                                        _xdeps19755_)
                                                       (begin
                                                         (table-set!
                                                          _ht19709_
                                                          _id19753_
                                                          _hd19739_)
                                                         (_find-deps19710_
                                                          _rest19738_
                                                          (cons _hd19739_
                                                                _xdeps19755_)))))))
                                           (if (##structure-direct-instance-of?
                                                _hd19739_
                                                'gx#module-import::t)
                                               (if (fxzero? (##structure-ref
                                                             _hd19739_
                                                             '3
                                                             gx#module-import::t
                                                             '#f))
                                                   (_find-deps19710_
                                                    (cons (##structure-ref
                                                           _hd19739_
                                                           '1
                                                           gx#module-import::t
                                                           '#f)
                                                          _rest19738_)
                                                    _deps19718_)
                                                   (_find-deps19710_
                                                    _rest19738_
                                                    _deps19718_))
                                               (if (##structure-direct-instance-of?
                                                    _hd19739_
                                                    'gx#module-export::t)
                                                   (_find-deps19710_
                                                    (cons (##structure-ref
                                                           _hd19739_
                                                           '1
                                                           gx#module-export::t
                                                           '#f)
                                                          _rest19738_)
                                                    _deps19718_)
                                                   (if (##structure-direct-instance-of?
                                                        _hd19739_
                                                        'gx#import-set::t)
                                                       (if (fxzero? (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd19739_
                             '3
                             gx#module-import::t
                             '#f))
                   (_find-deps19710_
                    (cons (##structure-ref _hd19739_ '1 gx#import-set::t '#f)
                          _rest19738_)
                    _deps19718_)
                   (_find-deps19710_ _rest19738_ _deps19718_))
               (error '"Unexpected module import" _hd19739_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (##pair? _rest1971919727_)
                                (let ((_hd1972419760_ (##car _rest1971919727_))
                                      (_tl1972519762_
                                       (##cdr _rest1971919727_)))
                                  (let ((_hd19765_ _hd1972419760_))
                                    (let ((_rest19767_ _tl1972519762_))
                                      (_K1972319757_ _rest19767_ _hd19765_))))
                                (_else1972119735_)))))))))
          (reverse (filter gx#expander-context-id
                           (_find-deps19710_
                            (let ((_$e19712_
                                   (gx#core-context-prelude__opt-lambda11015
                                    _ctx19707_)))
                              (if _$e19712_
                                  ((lambda (_pre19715_)
                                     (cons _pre19715_
                                           (##structure-ref
                                            _ctx19707_
                                            '8
                                            gx#module-context::t
                                            '#f)))
                                   _$e19712_)
                                  (##structure-ref
                                   _ctx19707_
                                   '8
                                   gx#module-context::t
                                   '#f)))
                            '())))))))
  (define gxc#find-static-module-file
    (lambda (_ctx19646_)
      (let ((_scm19648_
             (string-append
              (gxc#static-module-name
               (##structure-ref _ctx19646_ '1 gx#expander-context::t '#f))
              '".scm")))
        (let ((_dirs19650_ (gx#current-expander-module-library-path)))
          (let ((_dirs19659_
                 (let ((_$e19652_ (gxc#current-compile-output-dir)))
                   (if _$e19652_
                       ((lambda (_g1965419656_)
                          (cons _g1965419656_ _dirs19650_))
                        _$e19652_)
                       _dirs19650_))))
            (let ((_dirs19665_
                   (map (lambda (_g1966019662_)
                          (path-expand '"static" _g1966019662_))
                        _dirs19659_)))
              (let ()
                ((letrec ((_lp19668_
                           (lambda (_rest19670_)
                             (let ((_rest1967119679_ _rest19670_))
                               (let ((_E1967419683_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _rest1967119679_))))
                                 (let ((_else1967319687_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"cannot find static module"
                                           (##structure-ref
                                            _ctx19646_
                                            '1
                                            gx#expander-context::t
                                            '#f)
                                           _scm19648_))))
                                   (let ((_K1967519695_
                                          (lambda (_rest19690_ _dir19691_)
                                            (let ((_path19693_
                                                   (path-expand
                                                    _scm19648_
                                                    _dir19691_)))
                                              (if (file-exists? _path19693_)
                                                  _path19693_
                                                  (_lp19668_ _rest19690_))))))
                                     (if (##pair? _rest1967119679_)
                                         (let ((_hd1967619698_
                                                (##car _rest1967119679_))
                                               (_tl1967719700_
                                                (##cdr _rest1967119679_)))
                                           (let ((_dir19703_ _hd1967619698_))
                                             (let ((_rest19705_
                                                    _tl1967719700_))
                                               (_K1967519695_
                                                _rest19705_
                                                _dir19703_))))
                                         (_else1967319687_)))))))))
                   _lp19668_)
                 _dirs19665_))))))))
  (define gxc#file-empty?
    (lambda (_path19644_)
      (zero? (file-info-size (file-info _path19644_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx19641_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx19641_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx19641_)
               '#!void)
           (gxc#collect-bindings _ctx19641_)
           (gxc#compile-runtime-code _ctx19641_)
           (gxc#compile-meta-code _ctx19641_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx19641_)
               '#!void)))
       gx#current-expander-context
       _ctx19641_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj19964 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj19964) __obj19964))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx19639_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx19639_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx19598_)
      (let ((_generate-runtime-code19601_
             (lambda (_ctx19616_ _code19617_)
               (let ((_runtime-code19620_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code19617_))
                       gx#current-expander-context
                       _ctx19616_)))
                 (let ((_scm019622_
                        (gxc#compile-output-file _ctx19616_ '0 '".scm")))
                   (let ()
                     (if (gxc#current-compile-static)
                         (let ((_scms19625_
                                (gxc#compile-static-output-file _ctx19616_)))
                           (begin
                             (call-with-parameters
                              (lambda ()
                                (gxc#compile-scm-file
                                 _scm019622_
                                 _runtime-code19620_))
                              gxc#current-compile-keep-scm
                              '#t)
                             (if (file-exists? _scms19625_)
                                 (delete-file _scms19625_)
                                 '#!void)
                             (gxc#verbose
                              '"copy static module "
                              _scm019622_
                              '" => "
                              _scms19625_)
                             (copy-file _scm019622_ _scms19625_)
                             (if (gxc#current-compile-keep-scm)
                                 '#!void
                                 (delete-file _scm019622_))))
                         (gxc#compile-scm-file
                          _scm019622_
                          _runtime-code19620_))))))))
        (let ((_generate-loader-code19602_
               (lambda (_ctx19606_ _code19607_ _rt19608_)
                 (let ((_loader-code19611_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code19607_))
                         gx#current-expander-context
                         _ctx19606_)))
                   (let ((_loader-code19613_
                          (if _rt19608_
                              (cons 'begin
                                    (cons _loader-code19611_
                                          (cons (cons 'load-module
                                                      (cons _rt19608_ '()))
                                                '())))
                              _loader-code19611_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx19606_ 'rt '".scm")
                        _loader-code19613_)))))))
          (let ((_compile119600_
                 (lambda (_ctx19628_)
                   (let ((_code19630_
                          (##structure-ref
                           _ctx19628_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt19634_
                            (if (gxc#apply-find-runtime-code _code19630_)
                                (let ((_idstr19632_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx19628_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr19632_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt19634_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx19628_
                                  _rt19634_)
                                 (_generate-runtime-code19601_
                                  _ctx19628_
                                  _code19630_))
                               (if (gxc#current-compile-static)
                                   (let ((_path19637_
                                          (gxc#compile-static-output-file
                                           _ctx19628_)))
                                     (with-output-to-file
                                      (cons 'path:
                                            (cons _path19637_
                                                  (cons 'permissions:
                                                        (cons '420 '()))))
                                      void))
                                   '#!void))
                           (_generate-loader-code19602_
                            _ctx19628_
                            _code19630_
                            _rt19634_))))))))
            (let ((_all-modules19604_
                   (cons _ctx19598_ (gxc#lift-nested-modules _ctx19598_))))
              (for-each _compile119600_ _all-modules19604_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx19500_)
      (let ((_compile-ssi19502_
             (lambda (_code19568_)
               (let ((_path19570_
                      (gxc#compile-output-file _ctx19500_ '#f '".ssi")))
                 (let ((_prelude19581_
                        (let ((_super19572_
                               (##structure-ref
                                _ctx19500_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e19574_
                                 (##structure-ref
                                  _super19572_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e19574_
                                ((lambda (_g1957619578_)
                                   (make-symbol '":" _g1957619578_))
                                 _$e19574_)
                                ':<root>)))))
                   (let ((_ns19583_
                          (##structure-ref
                           _ctx19500_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr19585_
                            (symbol->string
                             (##structure-ref
                              _ctx19500_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg19592_
                              (let ((_$e19587_
                                     (string-rindex _idstr19585_ '#\/)))
                                (if _$e19587_
                                    ((lambda (_x19590_)
                                       (string->symbol
                                        (substring _idstr19585_ '0 _x19590_)))
                                     _$e19587_)
                                    '#f))))
                         (let ((_rt19594_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx19500_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path19570_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path19570_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude19581_)
                                    (if _pkg19592_
                                        (displayln '"package:" '" " _pkg19592_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns19583_)
                                    (newline)
                                    (pretty-print _code19568_)
                                    (if _rt19594_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt19594_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi19503_
               (lambda (_part19508_)
                 (let ((_part1950919522_ _part19508_))
                   (let ((_E1951119526_
                          (lambda ()
                            (error '"No clause matching" _part1950919522_))))
                     (let ((_K1951219537_
                            (lambda (_code19529_
                                     _n19530_
                                     _phi19531_
                                     _phi-ctx19532_)
                              (let ((_code19535_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code19529_))
                                      gx#current-expander-context
                                      _phi-ctx19532_
                                      gx#current-expander-phi
                                      _phi19531_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx19500_
                                  _n19530_
                                  '".scm")
                                 _code19535_)))))
                       (if (##pair? _part1950919522_)
                           (let ((_hd1951319540_ (##car _part1950919522_))
                                 (_tl1951419542_ (##cdr _part1950919522_)))
                             (let ((_phi-ctx19545_ _hd1951319540_))
                               (if (##pair? _tl1951419542_)
                                   (let ((_hd1951519547_
                                          (##car _tl1951419542_))
                                         (_tl1951619549_
                                          (##cdr _tl1951419542_)))
                                     (let ((_phi19552_ _hd1951519547_))
                                       (if (##pair? _tl1951619549_)
                                           (let ((_hd1951719554_
                                                  (##car _tl1951619549_))
                                                 (_tl1951819556_
                                                  (##cdr _tl1951619549_)))
                                             (let ((_n19559_ _hd1951719554_))
                                               (if (##pair? _tl1951819556_)
                                                   (let ((_hd1951919561_
                                                          (##car _tl1951819556_))
                                                         (_tl1952019563_
                                                          (##cdr _tl1951819556_)))
                                                     (let ((_code19566_
                                                            _hd1951919561_))
                                                       (if (##null? _tl1952019563_)
                                                           (_K1951219537_
                                                            _code19566_
                                                            _n19559_
                                                            _phi19552_
                                                            _phi-ctx19545_)
                                                           (_E1951119526_))))
                                                   (_E1951119526_))))
                                           (_E1951119526_))))
                                   (_E1951119526_))))
                           (_E1951119526_))))))))
          (let ((_g19974_ (gxc#generate-meta-code _ctx19500_)))
            (begin
              (let ((_g19975_ (values-count _g19974_)))
                (if (not (fx= _g19975_ 2))
                    (error "Context expects 2 values" _g19975_)))
              (let ((_ssi-code19505_ (values-ref _g19974_ 0))
                    (_phi-code19506_ (values-ref _g19974_ 1)))
                (begin
                  (_compile-ssi19502_ _ssi-code19505_)
                  (for-each _compile-phi19503_ _phi-code19506_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx19483_)
      (let ((_path19485_ (gxc#compile-output-file _ctx19483_ '#f '".ssxi.ss")))
        (let ((_code19487_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx19483_ '11 gx#module-context::t '#f))))
          (let ((_idstr19489_
                 (symbol->string
                  (##structure-ref _ctx19483_ '1 gx#expander-context::t '#f))))
            (let ((_pkg19496_
                   (let ((_$e19491_ (string-rindex _idstr19489_ '#\/)))
                     (if _$e19491_
                         ((lambda (_x19494_)
                            (string->symbol
                             (substring _idstr19489_ '0 _x19494_)))
                          _$e19491_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path19485_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path19485_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg19496_
                           (displayln '"package: " _pkg19496_)
                           '#!void)
                       (newline)
                       (pretty-print _code19487_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx19476_)
      (let ((_state19478_
             (let ((__obj19965 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj19965 _ctx19476_)
                 __obj19965))))
        (let ((_ssi-code19480_
               (gxc#apply-generate-meta
                (##structure-ref _ctx19476_ '11 gx#module-context::t '#f)
                _state19478_)))
          (let ()
            (values _ssi-code19480_ (gxc#meta-state-end! _state19478_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx19469_)
      (let ((_lifts19471_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code19474_ (gxc#apply-generate-runtime-phi _stx19469_)))
             (if (null? (unbox _lifts19471_))
                 _code19474_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code19474_ '())
                               (reverse (unbox _lifts19471_)))))))
         gxc#current-compile-lift
         _lifts19471_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx19465_)
      (let ((_modules19467_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx19465_ '11 gx#module-context::t '#f)
           _modules19467_)
          (reverse (unbox _modules19467_))))))
  (define gxc#compile-scm-file
    (lambda (_path19461_ _code19462_)
      (begin
        (gxc#verbose '"compile " _path19461_)
        (with-output-to-file
         (cons 'path: (cons _path19461_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code19462_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path19461_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path19461_)))))
  (define gxc#gsc-compile-file
    (lambda (_path19447_)
      (let ((_gsc-args19454_
             (let ((_$e19449_ (gxc#current-compile-gsc-options)))
               (if _$e19449_
                   ((lambda (_opts19452_)
                      (foldr1 cons (cons _path19447_ '()) _opts19452_))
                    _$e19449_)
                   (cons _path19447_ '())))))
        (let ((_proc19456_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args19454_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status19458_ (process-status _proc19456_)))
            (let ()
              (if (zero? _status19458_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path19447_
                   _status19458_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx19419_ _n19420_ _ext19421_)
      (let ((_module-relative-path19423_
             (lambda (_ctx19445_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx19445_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory19424_
               (lambda (_ctx19441_)
                 (path-directory
                  (let ((_mpath19443_
                         (##structure-ref
                          _ctx19441_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath19443_)
                        _mpath19443_
                        (last _mpath19443_)))))))
          (let ((_section-string19425_
                 (lambda (_n19439_)
                   (if (number? _n19439_)
                       (number->string _n19439_)
                       (if (symbol? _n19439_)
                           (symbol->string _n19439_)
                           (if (string? _n19439_)
                               _n19439_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n19439_)))))))
            (let ((_file-name19426_
                   (lambda (_path19437_)
                     (if _n19420_
                         (string-append
                          _path19437_
                          '"__"
                          (_section-string19425_ _n19420_)
                          _ext19421_)
                         (string-append _path19437_ _ext19421_)))))
              (let ((_file-path19427_
                     (lambda ()
                       (let ((_$e19432_ (gxc#current-compile-output-dir)))
                         (if _$e19432_
                             ((lambda (_outdir19435_)
                                (path-expand
                                 (_file-name19426_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx19419_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir19435_))
                              _$e19432_)
                             (path-expand
                              (_file-name19426_
                               (_module-relative-path19423_ _ctx19419_))
                              (_module-source-directory19424_ _ctx19419_)))))))
                (let ((_path19429_ (_file-path19427_)))
                  (begin
                    (create-directory* (path-directory _path19429_))
                    _path19429_)))))))))
  (define gxc#compile-static-output-file
    (lambda (_ctx19402_)
      (let ((_file-name19404_
             (lambda (_idstr19417_)
               (string-append (gxc#static-module-name _idstr19417_) '".scm"))))
        (let ((_file-path19405_
               (lambda ()
                 (let ((_file19410_
                        (_file-name19404_
                         (symbol->string
                          (##structure-ref
                           _ctx19402_
                           '1
                           gx#expander-context::t
                           '#f)))))
                   (let ((_$e19412_ (gxc#current-compile-output-dir)))
                     (if _$e19412_
                         ((lambda (_outdir19415_)
                            (path-expand
                             _file19410_
                             (path-expand '"static" _outdir19415_)))
                          _$e19412_)
                         (path-expand _file19410_ '"static")))))))
          (let ((_path19407_ (_file-path19405_)))
            (begin
              (create-directory* (path-directory _path19407_))
              _path19407_))))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx19389_ _opts19390_)
      (let ((_$e19392_ (pgetq 'output-file: _opts19390_)))
        (if _$e19392_
            (values _$e19392_)
            (let ((_mod-str19395_
                   (symbol->string
                    (##structure-ref
                     _ctx19389_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let ((_$e19397_ (string-rindex _mod-str19395_ '#\/)))
                (if _$e19397_
                    ((lambda (_ix19400_)
                       (substring
                        _mod-str19395_
                        (fx+ _ix19400_ '1)
                        (string-length _mod-str19395_)))
                     _$e19397_)
                    _mod-str19395_)))))))
  (define gxc#static-module-name
    (lambda (_idstr19385_)
      (if (string? _idstr19385_)
          (let ((_strs19387_ (string-split _idstr19385_ '#\/)))
            (string-join _strs19387_ '"__"))
          (if (symbol? _idstr19385_)
              (gxc#static-module-name (symbol->string _idstr19385_))
              (error '"Bad module id" _idstr19385_))))))
