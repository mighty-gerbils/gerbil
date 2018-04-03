(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath49026_ _opts49027_)
        (begin
          (if (string? _srcpath49026_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath49026_))
          (let ((_outdir49029_ (pgetq 'output-dir: _opts49027_))
                (_invoke-gsc?49030_ (pgetq 'invoke-gsc: _opts49027_))
                (_gsc-options49031_ (pgetq 'gsc-options: _opts49027_))
                (_keep-scm?49032_ (pgetq 'keep-scm: _opts49027_))
                (_verbosity49033_ (pgetq 'verbose: _opts49027_))
                (_optimize49034_ (pgetq 'optimize: _opts49027_))
                (_debug49035_ (pgetq 'debug: _opts49027_))
                (_gen-ssxi49036_ (pgetq 'generate-ssxi: _opts49027_))
                (_static49037_ (pgetq 'static: _opts49027_)))
            (begin
              (if _outdir49029_ (create-directory* _outdir49029_) '#!void)
              (if _optimize49034_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath49026_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath49026_))))
               gxc#current-compile-output-dir
               _outdir49029_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?49030_
               gxc#current-compile-gsc-options
               _gsc-options49031_
               gxc#current-compile-keep-scm
               _keep-scm?49032_
               gxc#current-compile-verbose
               _verbosity49033_
               gxc#current-compile-optimize
               _optimize49034_
               gxc#current-compile-debug
               _debug49035_
               gxc#current-compile-generate-ssxi
               _gen-ssxi49036_
               gxc#current-compile-static
               _static49037_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath49043_)
          (let ((_opts49045_ '()))
            (gxc#compile-file__% _srcpath49043_ _opts49045_))))
      (define gxc#compile-file
        (lambda _g49066_
          (let ((_g49065_ (length _g49066_)))
            (cond ((##fx= _g49065_ 1) (apply gxc#compile-file__0 _g49066_))
                  ((##fx= _g49065_ 2) (apply gxc#compile-file__% _g49066_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g49066_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath49012_ _opts49013_)
        (gxc#do-compile-exe
         _srcpath49012_
         _opts49013_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath49018_)
          (let ((_opts49020_ '()))
            (gxc#compile-exe-stub__% _srcpath49018_ _opts49020_))))
      (define gxc#compile-exe-stub
        (lambda _g49068_
          (let ((_g49067_ (length _g49068_)))
            (cond ((##fx= _g49067_ 1) (apply gxc#compile-exe-stub__0 _g49068_))
                  ((##fx= _g49067_ 2) (apply gxc#compile-exe-stub__% _g49068_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g49068_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath48998_ _opts48999_)
        (gxc#do-compile-exe
         _srcpath48998_
         _opts48999_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath49004_)
          (let ((_opts49006_ '()))
            (gxc#compile-static-exe__% _srcpath49004_ _opts49006_))))
      (define gxc#compile-static-exe
        (lambda _g49070_
          (let ((_g49069_ (length _g49070_)))
            (cond ((##fx= _g49069_ 1)
                   (apply gxc#compile-static-exe__0 _g49070_))
                  ((##fx= _g49069_ 2)
                   (apply gxc#compile-static-exe__% _g49070_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g49070_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath48986_ _opts48987_ _compile-e48988_)
      (begin
        (if (string? _srcpath48986_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath48986_))
        (let ((_outdir48990_ (pgetq 'output-dir: _opts48987_))
              (_invoke-gsc?48991_ (pgetq 'invoke-gsc: _opts48987_))
              (_gsc-options48992_ (pgetq 'gsc-options: _opts48987_))
              (_keep-scm?48993_ (pgetq 'keep-scm: _opts48987_))
              (_verbosity48994_ (pgetq 'verbose: _opts48987_)))
          (begin
            (if _outdir48990_ (create-directory* _outdir48990_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath48986_)
                 (_compile-e48988_
                  (gx#import-module__0 _srcpath48986_)
                  _opts48987_)))
             gxc#current-compile-output-dir
             _outdir48990_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?48991_
             gxc#current-compile-gsc-options
             _gsc-options48992_
             gxc#current-compile-keep-scm
             _keep-scm?48993_
             gxc#current-compile-verbose
             _verbosity48994_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx48952_ _opts48953_)
      (letrec ((_generate-stub48955_
                (lambda (_gx-init-stub48977_)
                  (let* ((_mod-str48979_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx48952_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt48981_ (string-append _mod-str48979_ '"__rt"))
                         (_mod-main48983_
                          (gxc#find-runtime-symbol _ctx48952_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub48977_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt48981_
                                         (cons (cons 'quote
                                                     (cons _mod-main48983_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub48956_
                (lambda (_output-scm48963_ _output-bin48964_)
                  (let* ((_init-stub48966_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args48968_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48964_
                                            (cons _output-scm48963_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm48963_
                       (lambda () (_generate-stub48955_ _init-stub48966_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48968_))
                            (let* ((_proc48972_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48968_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48974_
                                    (process-status _proc48972_)))
                              (if (zero? _status48974_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48963_
                                   _output-bin48964_
                                   _status48974_))))
                          '#!void))))))
        (let* ((_output-bin48958_
                (gxc#compile-exe-output-file _ctx48952_ _opts48953_))
               (_output-scm48960_ (string-append _output-bin48958_ '".scm")))
          (begin
            (_compile-stub48956_ _output-scm48960_ _output-bin48958_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48960_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx48813_ _opts48814_)
      (letrec ((_reset-declare48816_
                (lambda ()
                  '(declare
                     (gambit-scheme)
                     (block)
                     (core)
                     (inline)
                     (inline-primitives)
                     (inlining-limit 350)
                     (constant-fold)
                     (lambda-lift)
                     (standard-bindings)
                     (extended-bindings)
                     (run-time-bindings)
                     (safe)
                     (interrupts-enabled)
                     (proper-tail-calls)
                     (not generative-lambda)
                     (optimize-dead-local-variables)
                     (optimize-dead-definitions)
                     (generic)
                     (mostly-fixnum-flonum))))
               (_user-declare48817_
                (lambda ()
                  (let* ((_gsc-opts48895_ (pgetq 'gsc-options: _opts48814_))
                         (_gsc-prelude48897_
                          (if _gsc-opts48895_
                              (member '"-prelude" _gsc-opts48895_)
                              '#f))
                         (_gsc-prelude48899_
                          (if _gsc-prelude48897_
                              (read (open-input-string
                                     (cadr _gsc-prelude48897_)))
                              '#f)))
                    (let _lift48902_ ((_expr48904_ _gsc-prelude48899_))
                      (let* ((_expr4890548917_ _expr48904_)
                             (_else4890848925_ (lambda () '#f)))
                        (let ((_K4891348945_ (lambda () _expr48904_))
                              (_K4891048931_
                               (lambda (_exprs48929_)
                                 (ormap1 _lift48902_ _exprs48929_))))
                          (if (##pair? _expr4890548917_)
                              (let ((_hd4891448948_ (##car _expr4890548917_)))
                                (if (##eq? _hd4891448948_ 'declare)
                                    (_K4891348945_)
                                    (let ((_tl4891248936_
                                           (##cdr _expr4890548917_)))
                                      (if (##eq? _hd4891448948_ 'begin)
                                          (let ((_exprs48939_ _tl4891248936_))
                                            (_K4891048931_ _exprs48939_))
                                          (_else4890848925_)))))
                              (_else4890848925_))))))))
               (_generate-stub48818_
                (lambda (_deps48886_)
                  (let ((_mod-main48888_
                         (gxc#find-runtime-symbol _ctx48813_ 'main))
                        (_reset-decl48889_ (_reset-declare48816_))
                        (_user-decl48890_ (_user-declare48817_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep48892_)
                         (begin
                           (write (cons 'include (cons _dep48892_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl48889_)
                           (if _user-decl48890_
                               (write _user-decl48890_)
                               '#!void)
                           (newline)))
                       _deps48886_)
                      (write (cons 'apply
                                   (cons _mod-main48888_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include48819_
                (lambda (_gsc-opts48869_ _home48870_)
                  (letrec* ((_static-dir48872_
                             (path-expand '"lib/static" _home48870_))
                            (_user-static-dir48873_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags48874_
                             (string-append
                              '"-I "
                              _static-dir48872_
                              '" -I "
                              _user-static-dir48873_)))
                    (let ((_$e48876_ (member '"-cc-options" _gsc-opts48869_)))
                      (if _$e48876_
                          ((lambda (_rest48879_)
                             (let* ((_cell48881_ (cdr _rest48879_))
                                    (_opt48883_ (car _cell48881_)))
                               (begin
                                 (set-car!
                                  _cell48881_
                                  (string-append
                                   _opt48883_
                                   '" "
                                   _cppflags48874_))
                                 _gsc-opts48869_)))
                           _$e48876_)
                          (cons '"-cc-options"
                                (cons _cppflags48874_ _gsc-opts48869_)))))))
               (_compile-stub48820_
                (lambda (_output-scm48827_ _output-bin48828_)
                  (let* ((_gerbil-home48830_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc048832_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home48830_))
                         (_gx-gambc-init48834_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home48830_))
                         (_gx-gambc-macros48836_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home48830_))
                         (_include-gx-gambc-macros48838_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros48836_
                           '"\")"))
                         (_bin-scm48840_
                          (gxc#find-static-module-file _ctx48813_))
                         (_deps48842_
                          (gxc#find-runtime-module-deps _ctx48813_))
                         (_deps48844_
                          (map gxc#find-static-module-file _deps48842_))
                         (_deps48849_
                          (filter (lambda (_$obj48846_)
                                    (not (gxc#file-empty? _$obj48846_)))
                                  _deps48844_))
                         (_gsc-opts48854_
                          (let ((_$e48851_ (pgetq 'gsc-options: _opts48814_)))
                            (if _$e48851_ _$e48851_ '())))
                         (_gsc-opts48856_
                          (_static-include48819_
                           _gsc-opts48854_
                           _gerbil-home48830_))
                         (_gsc-gx-macros48858_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros48838_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros48838_
                                          '()))))
                         (_gsc-args48860_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48828_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm48827_ '())
                            _gsc-gx-macros48858_)
                    _gsc-opts48856_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options__0)))))))
                    (begin
                      (with-output-to-file
                       _output-scm48827_
                       (lambda ()
                         (_generate-stub48818_
                          (cons _gx-gambc048832_
                                (cons _gx-gambc-init48834_
                                      (foldr1 cons
                                              (cons _bin-scm48840_ '())
                                              _deps48849_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48860_))
                            (let* ((_proc48864_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48860_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48866_
                                    (process-status _proc48864_)))
                              (if (zero? _status48866_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48827_
                                   _output-bin48828_
                                   _status48866_))))
                          '#!void))))))
        (let* ((_output-bin48822_
                (gxc#compile-exe-output-file _ctx48813_ _opts48814_))
               (_output-scm48824_ (string-append _output-bin48822_ '".scm")))
          (begin
            (_compile-stub48820_ _output-scm48824_ _output-bin48822_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48824_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx48763_ _id48764_)
      (let ((_$e48810_
             (find (lambda (_e4876548767_)
                     (let* ((_g4876948779_ _e4876548767_)
                            (_else4877148787_ (lambda () '#f))
                            (_K4877348791_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g4876948779_
                            'gx#module-export::t)
                           (let* ((_e4877448794_
                                   (##vector-ref _g4876948779_ '1))
                                  (_e4877548797_
                                   (##vector-ref _g4876948779_ '2))
                                  (_e4877648800_
                                   (##vector-ref _g4876948779_ '3)))
                             (if (##eq? _e4877648800_ '0)
                                 (let ((_e4877748803_
                                        (##vector-ref _g4876948779_ '4)))
                                   (if ((lambda (_g4880548807_)
                                          (eq? _g4880548807_ _id48764_))
                                        _e4877748803_)
                                       (_K4877348791_)
                                       (_else4877148787_)))
                                 (_else4877148787_)))
                           (_else4877148787_))))
                   (##structure-ref _ctx48763_ '9 gx#module-context::t '#f))))
        (if _$e48810_ (gx#core-resolve-module-export _$e48810_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx48755_ _id48756_)
      (let ((_$e48758_ (gxc#find-export-binding _ctx48755_ _id48756_)))
        (if _$e48758_
            ((lambda (_bind48761_)
               (begin
                 (if (##structure-instance-of?
                      _bind48761_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id48756_))
                 (##structure-ref _bind48761_ '1 gx#binding::t '#f)))
             _$e48758_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx48755_ '1 gx#expander-context::t '#f)
             _id48756_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx48642_)
      (letrec* ((_ht48644_ (make-hash-table-eq))
                (_import-set-template48645_
                 (lambda (_in48707_ _phi48708_)
                   (let ((_iphi48710_
                          (fx+ _phi48708_
                               (##direct-structure-ref
                                _in48707_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports48711_
                          (##structure-ref
                           (##direct-structure-ref
                            _in48707_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp48713_ ((_rest48715_ _imports48711_)
                                     (_r48716_ '()))
                       (let* ((_rest4871748725_ _rest48715_)
                              (_else4871948733_ (lambda () _r48716_))
                              (_K4872148743_
                               (lambda (_rest48736_ _in48737_)
                                 (if (##structure-instance-of?
                                      _in48737_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi48710_)
                                         (_lp48713_
                                          _rest48736_
                                          (cons _in48737_ _r48716_))
                                         (_lp48713_ _rest48736_ _r48716_))
                                     (if (##structure-direct-instance-of?
                                          _in48737_
                                          'gx#module-import::t)
                                         (let ((_iphi48739_
                                                (fx+ _phi48708_
                                                     (##direct-structure-ref
                                                      _in48737_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi48739_)
                                               (_lp48713_
                                                _rest48736_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in48737_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r48716_))
                                               (_lp48713_
                                                _rest48736_
                                                _r48716_)))
                                         (if (##structure-direct-instance-of?
                                              _in48737_
                                              'gx#import-set::t)
                                             (let ((_xphi48741_
                                                    (fx+ _iphi48710_
                                                         (##direct-structure-ref
                                                          _in48737_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi48741_)
                                                   (_lp48713_
                                                    _rest48736_
                                                    (cons (##direct-structure-ref
                                                           _in48737_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r48716_))
                                                   (if (fxpositive?
                                                        _xphi48741_)
                                                       (_lp48713_
                                                        _rest48736_
                                                        (foldl1 cons
                                                                _r48716_
                                                                (_import-set-template48645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in48737_
                         _iphi48710_)))
               (_lp48713_ _rest48736_ _r48716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp48713_
                                              _rest48736_
                                              _r48716_)))))))
                         (if (##pair? _rest4871748725_)
                             (let ((_hd4872248746_ (##car _rest4871748725_))
                                   (_tl4872348748_ (##cdr _rest4871748725_)))
                               (let* ((_in48751_ _hd4872248746_)
                                      (_rest48753_ _tl4872348748_))
                                 (_K4872148743_ _rest48753_ _in48751_)))
                             (_else4871948733_)))))))
                (_find-deps48646_
                 (lambda (_rest48653_ _deps48654_)
                   (let* ((_rest4865548663_ _rest48653_)
                          (_else4865748671_ (lambda () _deps48654_))
                          (_K4865948695_
                           (lambda (_rest48674_ _hd48675_)
                             (if (##structure-instance-of?
                                  _hd48675_
                                  'gx#module-context::t)
                                 (let ((_id48677_
                                        (##structure-ref
                                         _hd48675_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports48678_
                                        (##structure-ref
                                         _hd48675_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht48644_ _id48677_ '#f)
                                       (_find-deps48646_
                                        _rest48674_
                                        _deps48654_)
                                       (let ((_$e48680_
                                              (gx#core-context-prelude__%
                                               _hd48675_)))
                                         (if _$e48680_
                                             ((lambda (_pre48683_)
                                                (let ((_xdeps48685_
                                                       (_find-deps48646_
                                                        (cons _pre48683_
                                                              _imports48678_)
                                                        _deps48654_)))
                                                  (begin
                                                    (table-set!
                                                     _ht48644_
                                                     _id48677_
                                                     _hd48675_)
                                                    (_find-deps48646_
                                                     _rest48674_
                                                     (cons _hd48675_
                                                           _xdeps48685_)))))
                                              _$e48680_)
                                             (let ((_xdeps48687_
                                                    (_find-deps48646_
                                                     _imports48678_
                                                     _deps48654_)))
                                               (begin
                                                 (table-set!
                                                  _ht48644_
                                                  _id48677_
                                                  _hd48675_)
                                                 (_find-deps48646_
                                                  _rest48674_
                                                  (cons _hd48675_
                                                        _xdeps48687_))))))))
                                 (if (##structure-instance-of?
                                      _hd48675_
                                      'gx#prelude-context::t)
                                     (let ((_id48689_
                                            (##structure-ref
                                             _hd48675_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht48644_ _id48689_ '#f)
                                           (_find-deps48646_
                                            _rest48674_
                                            _deps48654_)
                                           (let ((_xdeps48691_
                                                  (_find-deps48646_
                                                   (##structure-ref
                                                    _hd48675_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps48654_)))
                                             (if (table-ref
                                                  _ht48644_
                                                  _id48689_
                                                  '#f)
                                                 (_find-deps48646_
                                                  _rest48674_
                                                  _xdeps48691_)
                                                 (begin
                                                   (table-set!
                                                    _ht48644_
                                                    _id48689_
                                                    _hd48675_)
                                                   (_find-deps48646_
                                                    _rest48674_
                                                    (cons _hd48675_
                                                          _xdeps48691_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd48675_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd48675_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps48646_
                                              (cons (##direct-structure-ref
                                                     _hd48675_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest48674_)
                                              _deps48654_)
                                             (_find-deps48646_
                                              _rest48674_
                                              _deps48654_))
                                         (if (##structure-direct-instance-of?
                                              _hd48675_
                                              'gx#module-export::t)
                                             (_find-deps48646_
                                              (cons (##direct-structure-ref
                                                     _hd48675_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest48674_)
                                              _deps48654_)
                                             (if (##structure-direct-instance-of?
                                                  _hd48675_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd48675_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps48646_
                                                      (cons (##direct-structure-ref
                                                             _hd48675_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest48674_)
                                                      _deps48654_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd48675_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps48693_
                                                                (_import-set-template48645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd48675_
                         '0)))
                   (_find-deps48646_
                    (foldl1 cons _rest48674_ _xdeps48693_)
                    _deps48654_))
                 (_find-deps48646_ _rest48674_ _deps48654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd48675_)))))))))
                     (if (##pair? _rest4865548663_)
                         (let ((_hd4866048698_ (##car _rest4865548663_))
                               (_tl4866148700_ (##cdr _rest4865548663_)))
                           (let* ((_hd48703_ _hd4866048698_)
                                  (_rest48705_ _tl4866148700_))
                             (_K4865948695_ _rest48705_ _hd48703_)))
                         (_else4865748671_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps48646_
                          (let ((_$e48648_
                                 (gx#core-context-prelude__% _ctx48642_)))
                            (if _$e48648_
                                ((lambda (_pre48651_)
                                   (cons _pre48651_
                                         (##structure-ref
                                          _ctx48642_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e48648_)
                                (##structure-ref
                                 _ctx48642_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx48581_)
      (let* ((_scm48583_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx48581_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs48585_ (gx#current-expander-module-library-path))
             (_dirs48594_
              (let ((_$e48587_ (gxc#current-compile-output-dir)))
                (if _$e48587_
                    ((lambda (_g4858948591_) (cons _g4858948591_ _dirs48585_))
                     _$e48587_)
                    _dirs48585_)))
             (_dirs48600_
              (map (lambda (_g4859548597_)
                     (path-expand '"static" _g4859548597_))
                   _dirs48594_)))
        (let _lp48603_ ((_rest48605_ _dirs48600_))
          (let* ((_rest4860648614_ _rest48605_)
                 (_else4860848622_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx48581_ '1 gx#expander-context::t '#f)
                     _scm48583_)))
                 (_K4861048630_
                  (lambda (_rest48625_ _dir48626_)
                    (let ((_path48628_ (path-expand _scm48583_ _dir48626_)))
                      (if (file-exists? _path48628_)
                          _path48628_
                          (_lp48603_ _rest48625_))))))
            (if (##pair? _rest4860648614_)
                (let ((_hd4861148633_ (##car _rest4860648614_))
                      (_tl4861248635_ (##cdr _rest4860648614_)))
                  (let* ((_dir48638_ _hd4861148633_)
                         (_rest48640_ _tl4861248635_))
                    (_K4861048630_ _rest48640_ _dir48638_)))
                (_else4860848622_)))))))
  (define gxc#file-empty?
    (lambda (_path48579_)
      (zero? (file-info-size (file-info _path48579_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx48576_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx48576_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx48576_)
               '#!void)
           (gxc#collect-bindings _ctx48576_)
           (gxc#compile-runtime-code _ctx48576_)
           (gxc#compile-meta-code _ctx48576_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx48576_)
               '#!void)))
       gx#current-expander-context
       _ctx48576_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj49063 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj49063) __obj49063))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx48574_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx48574_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx48528_)
      (letrec ((_compile148530_
                (lambda (_ctx48563_)
                  (let* ((_code48565_
                          (##structure-ref
                           _ctx48563_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt48569_
                          (if (gxc#apply-find-runtime-code _code48565_)
                              (let ((_idstr48567_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx48563_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr48567_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt48569_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx48563_
                             _rt48569_)
                            (_generate-runtime-code48531_
                             _ctx48563_
                             _code48565_))
                          (if (gxc#current-compile-static)
                              (let ((_path48572_
                                     (gxc#compile-static-output-file
                                      _ctx48563_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path48572_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code48532_
                       _ctx48563_
                       _code48565_
                       _rt48569_)))))
               (_generate-runtime-code48531_
                (lambda (_ctx48547_ _code48548_)
                  (let* ((_lifts48550_ (box '()))
                         (_runtime-code48553_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code48548_))
                           gx#current-expander-context
                           _ctx48547_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts48550_
                           gxc#current-compile-marks
                           (make-hash-table-eq)
                           gxc#current-compile-identifiers
                           (gxc#make-bound-identifier-table)))
                         (_runtime-code48555_
                          (if (null? (unbox _lifts48550_))
                              _runtime-code48553_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code48553_ '())
                                            (reverse (unbox _lifts48550_))))))
                         (_scm048557_
                          (gxc#compile-output-file _ctx48547_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms48560_
                               (gxc#compile-static-output-file _ctx48547_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _scm048557_
                                _runtime-code48555_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms48560_)
                                (delete-file _scms48560_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm048557_
                             '" => "
                             _scms48560_)
                            (copy-file _scm048557_ _scms48560_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm048557_))))
                        (gxc#compile-scm-file__0
                         _scm048557_
                         _runtime-code48555_)))))
               (_generate-loader-code48532_
                (lambda (_ctx48536_ _code48537_ _rt48538_)
                  (let* ((_loader-code48541_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code48537_))
                           gx#current-expander-context
                           _ctx48536_))
                         (_loader-code48543_
                          (if _rt48538_
                              (cons 'begin
                                    (cons _loader-code48541_
                                          (cons (cons 'load-module
                                                      (cons _rt48538_ '()))
                                                '())))
                              _loader-code48541_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx48536_ 'rt '".scm")
                        _loader-code48543_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules48534_
               (cons _ctx48528_ (gxc#lift-nested-modules _ctx48528_))))
          (for-each _compile148530_ _all-modules48534_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx48430_)
      (letrec ((_compile-ssi48432_
                (lambda (_code48498_)
                  (let* ((_path48500_
                          (gxc#compile-output-file _ctx48430_ '#f '".ssi"))
                         (_prelude48511_
                          (let* ((_super48502_
                                  (##structure-ref
                                   _ctx48430_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e48504_
                                  (##structure-ref
                                   _super48502_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e48504_
                                ((lambda (_g4850648508_)
                                   (make-symbol '":" _g4850648508_))
                                 _$e48504_)
                                ':<root>)))
                         (_ns48513_
                          (##structure-ref
                           _ctx48430_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr48515_
                          (symbol->string
                           (##structure-ref
                            _ctx48430_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg48522_
                          (let ((_$e48517_ (string-rindex _idstr48515_ '#\/)))
                            (if _$e48517_
                                ((lambda (_x48520_)
                                   (string->symbol
                                    (substring _idstr48515_ '0 _x48520_)))
                                 _$e48517_)
                                '#f)))
                         (_rt48524_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx48430_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path48500_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path48500_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude48511_)
                           (if _pkg48522_
                               (displayln '"package:" '" " _pkg48522_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns48513_)
                           (newline)
                           (pretty-print _code48498_)
                           (if _rt48524_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt48524_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi48433_
                (lambda (_part48438_)
                  (let* ((_part4843948452_ _part48438_)
                         (_E4844148456_
                          (lambda ()
                            (error '"No clause matching" _part4843948452_)))
                         (_K4844248467_
                          (lambda (_code48459_
                                   _n48460_
                                   _phi48461_
                                   _phi-ctx48462_)
                            (let ((_code48465_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code48459_))
                                    gx#current-expander-context
                                    _phi-ctx48462_
                                    gx#current-expander-phi
                                    _phi48461_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx48430_
                                _n48460_
                                '".scm")
                               _code48465_
                               '#t)))))
                    (if (##pair? _part4843948452_)
                        (let ((_hd4844348470_ (##car _part4843948452_))
                              (_tl4844448472_ (##cdr _part4843948452_)))
                          (let ((_phi-ctx48475_ _hd4844348470_))
                            (if (##pair? _tl4844448472_)
                                (let ((_hd4844548477_ (##car _tl4844448472_))
                                      (_tl4844648479_ (##cdr _tl4844448472_)))
                                  (let ((_phi48482_ _hd4844548477_))
                                    (if (##pair? _tl4844648479_)
                                        (let ((_hd4844748484_
                                               (##car _tl4844648479_))
                                              (_tl4844848486_
                                               (##cdr _tl4844648479_)))
                                          (let ((_n48489_ _hd4844748484_))
                                            (if (##pair? _tl4844848486_)
                                                (let ((_hd4844948491_
                                                       (##car _tl4844848486_))
                                                      (_tl4845048493_
                                                       (##cdr _tl4844848486_)))
                                                  (let ((_code48496_
                                                         _hd4844948491_))
                                                    (if (##null? _tl4845048493_)
                                                        (_K4844248467_
                                                         _code48496_
                                                         _n48489_
                                                         _phi48482_
                                                         _phi-ctx48475_)
                                                        (_E4844148456_))))
                                                (_E4844148456_))))
                                        (_E4844148456_))))
                                (_E4844148456_))))
                        (_E4844148456_))))))
        (let ((_g49071_ (gxc#generate-meta-code _ctx48430_)))
          (begin
            (let ((_g49072_
                   (if (##values? _g49071_) (##vector-length _g49071_) 1)))
              (if (not (##fx= _g49072_ 2))
                  (error "Context expects 2 values" _g49072_)))
            (let ((_ssi-code48435_ (##vector-ref _g49071_ 0))
                  (_phi-code48436_ (##vector-ref _g49071_ 1)))
              (begin
                (_compile-ssi48432_ _ssi-code48435_)
                (for-each _compile-phi48433_ _phi-code48436_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx48413_)
      (let* ((_path48415_ (gxc#compile-output-file _ctx48413_ '#f '".ssxi.ss"))
             (_code48417_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx48413_ '11 gx#module-context::t '#f)))
             (_idstr48419_
              (symbol->string
               (##structure-ref _ctx48413_ '1 gx#expander-context::t '#f)))
             (_pkg48426_
              (let ((_$e48421_ (string-rindex _idstr48419_ '#\/)))
                (if _$e48421_
                    ((lambda (_x48424_)
                       (string->symbol (substring _idstr48419_ '0 _x48424_)))
                     _$e48421_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path48415_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48415_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg48426_ (displayln '"package: " _pkg48426_) '#!void)
               (newline)
               (pretty-print _code48417_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx48406_)
      (let* ((_state48408_
              (let ((__obj49064 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj49064 _ctx48406_)
                  __obj49064)))
             (_ssi-code48410_
              (gxc#apply-generate-meta
               (##structure-ref _ctx48406_ '11 gx#module-context::t '#f)
               _state48408_)))
        (values _ssi-code48410_ (gxc#meta-state-end! _state48408_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx48399_)
      (let ((_lifts48401_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code48404_ (gxc#apply-generate-runtime-phi _stx48399_)))
             (if (null? (unbox _lifts48401_))
                 _code48404_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code48404_ '())
                               (reverse (unbox _lifts48401_)))))))
         gxc#current-compile-lift
         _lifts48401_
         gxc#current-compile-marks
         (make-hash-table-eq)
         gxc#current-compile-identifiers
         (gxc#make-bound-identifier-table)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx48395_)
      (let ((_modules48397_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx48395_ '11 gx#module-context::t '#f)
           _modules48397_)
          (reverse (unbox _modules48397_))))))
  (begin
    (define gxc#compile-scm-file__%
      (lambda (_path48378_ _code48379_ _phi?48380_)
        (begin
          (gxc#verbose '"compile " _path48378_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48378_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (pretty-print
                (cons 'declare
                      (cons (cons 'block '())
                            (cons (cons 'standard-bindings '())
                                  (cons (cons 'extended-bindings '())
                                        (foldr1 cons
                                                '()
                                                (if _phi?48380_
                                                    '((inlining-limit 200))
                                                    '())))))))
               (pretty-print _code48379_))))
          (if (gxc#current-compile-invoke-gsc)
              (gxc#gsc-compile-file _path48378_ _phi?48380_)
              '#!void)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _path48378_)))))
    (begin
      (define gxc#compile-scm-file__0
        (lambda (_path48386_ _code48387_)
          (let ((_phi?48389_ '#f))
            (gxc#compile-scm-file__% _path48386_ _code48387_ _phi?48389_))))
      (define gxc#compile-scm-file
        (lambda _g49074_
          (let ((_g49073_ (length _g49074_)))
            (cond ((##fx= _g49073_ 2) (apply gxc#compile-scm-file__0 _g49074_))
                  ((##fx= _g49073_ 3) (apply gxc#compile-scm-file__% _g49074_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-scm-file
                    _g49074_))))))))
  (begin
    (define gxc#gsc-debug-options__%
      (lambda (_phi?48285_)
        (let ((_$e48358_ (gxc#current-compile-debug)))
          (if _$e48358_
              ((lambda (_debug48361_)
                 (let ((_$e48363_ _debug48361_))
                   (if (eq? 'env _$e48363_)
                       (if _phi?48285_ '() (cons '"-debug-environments" '()))
                       (if (eq? 'env/phi _$e48363_)
                           (cons '"-debug-environments" '())
                           (if (eq? 'src _$e48363_)
                               (if _phi?48285_
                                   '()
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '())))
                               (if (eq? 'src/phi _$e48363_)
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '()))
                                   (if (eq? 'all _$e48363_)
                                       (if _phi?48285_
                                           '()
                                           (cons '"-debug" '()))
                                       (if (let ((_$e48366_
                                                  (eq? 'all/phi _$e48363_)))
                                             (if _$e48366_
                                                 _$e48366_
                                                 (eq? '#t _$e48363_)))
                                           (cons '"-debug" '())
                                           (gxc#raise-compile-error
                                            '"unknown debug option"
                                            _debug48361_)))))))))
               _$e48358_)
              '()))))
    (begin
      (define gxc#gsc-debug-options__0
        (lambda ()
          (let ((_phi?48373_ '#f)) (gxc#gsc-debug-options__% _phi?48373_))))
      (define gxc#gsc-debug-options
        (lambda _g49076_
          (let ((_g49075_ (length _g49076_)))
            (cond ((##fx= _g49075_ 0)
                   (apply gxc#gsc-debug-options__0 _g49076_))
                  ((##fx= _g49075_ 1)
                   (apply gxc#gsc-debug-options__% _g49076_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#gsc-debug-options
                    _g49076_))))))))
  (define gxc#gsc-compile-file
    (lambda (_path48266_ _phi?48267_)
      (let* ((_gsc-args48274_
              (let ((_$e48269_ (gxc#current-compile-gsc-options)))
                (if _$e48269_
                    ((lambda (_opts48272_)
                       (foldr1 cons (cons _path48266_ '()) _opts48272_))
                     _$e48269_)
                    (cons _path48266_ '()))))
             (_gsc-args48276_
              (foldr1 cons
                      _gsc-args48274_
                      (gxc#gsc-debug-options__% _phi?48267_)))
             (_g49077_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args48276_)))
             (_proc48279_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args48276_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status48281_ (process-status _proc48279_)))
        (if (zero? _status48281_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path48266_
             _status48281_)))))
  (define gxc#compile-output-file
    (lambda (_ctx48238_ _n48239_ _ext48240_)
      (letrec ((_module-relative-path48242_
                (lambda (_ctx48264_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx48264_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory48243_
                (lambda (_ctx48260_)
                  (path-directory
                   (let ((_mpath48262_
                          (##structure-ref
                           _ctx48260_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath48262_)
                         _mpath48262_
                         (last _mpath48262_))))))
               (_section-string48244_
                (lambda (_n48258_)
                  (if (number? _n48258_)
                      (number->string _n48258_)
                      (if (symbol? _n48258_)
                          (symbol->string _n48258_)
                          (if (string? _n48258_)
                              _n48258_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n48258_))))))
               (_file-name48245_
                (lambda (_path48256_)
                  (if _n48239_
                      (string-append
                       _path48256_
                       '"__"
                       (_section-string48244_ _n48239_)
                       _ext48240_)
                      (string-append _path48256_ _ext48240_))))
               (_file-path48246_
                (lambda ()
                  (let ((_$e48251_ (gxc#current-compile-output-dir)))
                    (if _$e48251_
                        ((lambda (_outdir48254_)
                           (path-expand
                            (_file-name48245_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx48238_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir48254_))
                         _$e48251_)
                        (path-expand
                         (_file-name48245_
                          (_module-relative-path48242_ _ctx48238_))
                         (_module-source-directory48243_ _ctx48238_)))))))
        (let ((_path48248_ (_file-path48246_)))
          (begin
            (create-directory* (path-directory _path48248_))
            _path48248_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx48221_)
      (letrec ((_file-name48223_
                (lambda (_id48236_)
                  (string-append (gxc#static-module-name _id48236_) '".scm")))
               (_file-path48224_
                (lambda ()
                  (let* ((_file48229_
                          (_file-name48223_
                           (##structure-ref
                            _ctx48221_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e48231_ (gxc#current-compile-output-dir)))
                    (if _$e48231_
                        ((lambda (_outdir48234_)
                           (path-expand
                            _file48229_
                            (path-expand '"static" _outdir48234_)))
                         _$e48231_)
                        (path-expand _file48229_ '"static"))))))
        (let ((_path48226_ (_file-path48224_)))
          (begin
            (create-directory* (path-directory _path48226_))
            _path48226_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx48208_ _opts48209_)
      (let ((_$e48211_ (pgetq 'output-file: _opts48209_)))
        (if _$e48211_
            (values _$e48211_)
            (let* ((_mod-str48214_
                    (symbol->string
                     (##structure-ref
                      _ctx48208_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e48216_ (string-rindex _mod-str48214_ '#\/)))
              (if _$e48216_
                  ((lambda (_ix48219_)
                     (substring
                      _mod-str48214_
                      (fx+ _ix48219_ '1)
                      (string-length _mod-str48214_)))
                   _$e48216_)
                  _mod-str48214_))))))
  (define gxc#static-module-name
    (lambda (_idstr48201_)
      (if (string? _idstr48201_)
          (let* ((_str48203_ (gxc#module-id->path-string _idstr48201_))
                 (_strs48205_ (string-split _str48203_ '#\/)))
            (string-join _strs48205_ '"__"))
          (if (symbol? _idstr48201_)
              (gxc#static-module-name (symbol->string _idstr48201_))
              (error '"Bad module id" _idstr48201_))))))
