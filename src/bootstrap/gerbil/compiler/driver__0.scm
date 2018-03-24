(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath48769_ _opts48770_)
        (begin
          (if (string? _srcpath48769_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath48769_))
          (let ((_outdir48772_ (pgetq 'output-dir: _opts48770_))
                (_invoke-gsc?48773_ (pgetq 'invoke-gsc: _opts48770_))
                (_gsc-options48774_ (pgetq 'gsc-options: _opts48770_))
                (_keep-scm?48775_ (pgetq 'keep-scm: _opts48770_))
                (_verbosity48776_ (pgetq 'verbose: _opts48770_))
                (_optimize48777_ (pgetq 'optimize: _opts48770_))
                (_debug48778_ (pgetq 'debug: _opts48770_))
                (_gen-ssxi48779_ (pgetq 'generate-ssxi: _opts48770_))
                (_static48780_ (pgetq 'static: _opts48770_)))
            (begin
              (if _outdir48772_ (create-directory* _outdir48772_) '#!void)
              (if _optimize48777_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath48769_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath48769_))))
               gxc#current-compile-output-dir
               _outdir48772_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?48773_
               gxc#current-compile-gsc-options
               _gsc-options48774_
               gxc#current-compile-keep-scm
               _keep-scm?48775_
               gxc#current-compile-verbose
               _verbosity48776_
               gxc#current-compile-optimize
               _optimize48777_
               gxc#current-compile-debug
               _debug48778_
               gxc#current-compile-generate-ssxi
               _gen-ssxi48779_
               gxc#current-compile-static
               _static48780_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath48786_)
          (let ((_opts48788_ '()))
            (gxc#compile-file__% _srcpath48786_ _opts48788_))))
      (define gxc#compile-file
        (lambda _g48809_
          (let ((_g48808_ (length _g48809_)))
            (cond ((##fx= _g48808_ 1) (apply gxc#compile-file__0 _g48809_))
                  ((##fx= _g48808_ 2) (apply gxc#compile-file__% _g48809_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g48809_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath48755_ _opts48756_)
        (gxc#do-compile-exe
         _srcpath48755_
         _opts48756_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath48761_)
          (let ((_opts48763_ '()))
            (gxc#compile-exe-stub__% _srcpath48761_ _opts48763_))))
      (define gxc#compile-exe-stub
        (lambda _g48811_
          (let ((_g48810_ (length _g48811_)))
            (cond ((##fx= _g48810_ 1) (apply gxc#compile-exe-stub__0 _g48811_))
                  ((##fx= _g48810_ 2) (apply gxc#compile-exe-stub__% _g48811_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g48811_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath48741_ _opts48742_)
        (gxc#do-compile-exe
         _srcpath48741_
         _opts48742_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath48747_)
          (let ((_opts48749_ '()))
            (gxc#compile-static-exe__% _srcpath48747_ _opts48749_))))
      (define gxc#compile-static-exe
        (lambda _g48813_
          (let ((_g48812_ (length _g48813_)))
            (cond ((##fx= _g48812_ 1)
                   (apply gxc#compile-static-exe__0 _g48813_))
                  ((##fx= _g48812_ 2)
                   (apply gxc#compile-static-exe__% _g48813_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g48813_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath48729_ _opts48730_ _compile-e48731_)
      (begin
        (if (string? _srcpath48729_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath48729_))
        (let ((_outdir48733_ (pgetq 'output-dir: _opts48730_))
              (_invoke-gsc?48734_ (pgetq 'invoke-gsc: _opts48730_))
              (_gsc-options48735_ (pgetq 'gsc-options: _opts48730_))
              (_keep-scm?48736_ (pgetq 'keep-scm: _opts48730_))
              (_verbosity48737_ (pgetq 'verbose: _opts48730_)))
          (begin
            (if _outdir48733_ (create-directory* _outdir48733_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath48729_)
                 (_compile-e48731_
                  (gx#import-module__0 _srcpath48729_)
                  _opts48730_)))
             gxc#current-compile-output-dir
             _outdir48733_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?48734_
             gxc#current-compile-gsc-options
             _gsc-options48735_
             gxc#current-compile-keep-scm
             _keep-scm?48736_
             gxc#current-compile-verbose
             _verbosity48737_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx48695_ _opts48696_)
      (letrec ((_generate-stub48698_
                (lambda (_gx-init-stub48720_)
                  (let* ((_mod-str48722_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx48695_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt48724_ (string-append _mod-str48722_ '"__rt"))
                         (_mod-main48726_
                          (gxc#find-runtime-symbol _ctx48695_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub48720_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt48724_
                                         (cons (cons 'quote
                                                     (cons _mod-main48726_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub48699_
                (lambda (_output-scm48706_ _output-bin48707_)
                  (let* ((_init-stub48709_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args48711_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48707_
                                            (cons _output-scm48706_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm48706_
                       (lambda () (_generate-stub48698_ _init-stub48709_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48711_))
                            (let* ((_proc48715_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48711_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48717_
                                    (process-status _proc48715_)))
                              (if (zero? _status48717_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48706_
                                   _output-bin48707_
                                   _status48717_))))
                          '#!void))))))
        (let* ((_output-bin48701_
                (gxc#compile-exe-output-file _ctx48695_ _opts48696_))
               (_output-scm48703_ (string-append _output-bin48701_ '".scm")))
          (begin
            (_compile-stub48699_ _output-scm48703_ _output-bin48701_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48703_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx48556_ _opts48557_)
      (letrec ((_reset-declare48559_
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
               (_user-declare48560_
                (lambda ()
                  (let* ((_gsc-opts48638_ (pgetq 'gsc-options: _opts48557_))
                         (_gsc-prelude48640_
                          (if _gsc-opts48638_
                              (member '"-prelude" _gsc-opts48638_)
                              '#f))
                         (_gsc-prelude48642_
                          (if _gsc-prelude48640_
                              (read (open-input-string
                                     (cadr _gsc-prelude48640_)))
                              '#f)))
                    (let _lift48645_ ((_expr48647_ _gsc-prelude48642_))
                      (let* ((_expr4864848660_ _expr48647_)
                             (_else4865148668_ (lambda () '#f)))
                        (let ((_K4865648688_ (lambda () _expr48647_))
                              (_K4865348674_
                               (lambda (_exprs48672_)
                                 (ormap1 _lift48645_ _exprs48672_))))
                          (if (##pair? _expr4864848660_)
                              (let ((_hd4865748691_ (##car _expr4864848660_)))
                                (if (##eq? _hd4865748691_ 'declare)
                                    (_K4865648688_)
                                    (let ((_tl4865548679_
                                           (##cdr _expr4864848660_)))
                                      (if (##eq? _hd4865748691_ 'begin)
                                          (let ((_exprs48682_ _tl4865548679_))
                                            (_K4865348674_ _exprs48682_))
                                          (_else4865148668_)))))
                              (_else4865148668_))))))))
               (_generate-stub48561_
                (lambda (_deps48629_)
                  (let ((_mod-main48631_
                         (gxc#find-runtime-symbol _ctx48556_ 'main))
                        (_reset-decl48632_ (_reset-declare48559_))
                        (_user-decl48633_ (_user-declare48560_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep48635_)
                         (begin
                           (write (cons 'include (cons _dep48635_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl48632_)
                           (if _user-decl48633_
                               (write _user-decl48633_)
                               '#!void)
                           (newline)))
                       _deps48629_)
                      (write (cons 'apply
                                   (cons _mod-main48631_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include48562_
                (lambda (_gsc-opts48612_ _home48613_)
                  (letrec* ((_static-dir48615_
                             (path-expand '"lib/static" _home48613_))
                            (_user-static-dir48616_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags48617_
                             (string-append
                              '"-I "
                              _static-dir48615_
                              '" -I "
                              _user-static-dir48616_)))
                    (let ((_$e48619_ (member '"-cc-options" _gsc-opts48612_)))
                      (if _$e48619_
                          ((lambda (_rest48622_)
                             (let* ((_cell48624_ (cdr _rest48622_))
                                    (_opt48626_ (car _cell48624_)))
                               (begin
                                 (set-car!
                                  _cell48624_
                                  (string-append
                                   _opt48626_
                                   '" "
                                   _cppflags48617_))
                                 _gsc-opts48612_)))
                           _$e48619_)
                          (cons '"-cc-options"
                                (cons _cppflags48617_ _gsc-opts48612_)))))))
               (_compile-stub48563_
                (lambda (_output-scm48570_ _output-bin48571_)
                  (let* ((_gerbil-home48573_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc048575_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home48573_))
                         (_gx-gambc-init48577_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home48573_))
                         (_gx-gambc-macros48579_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home48573_))
                         (_include-gx-gambc-macros48581_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros48579_
                           '"\")"))
                         (_bin-scm48583_
                          (gxc#find-static-module-file _ctx48556_))
                         (_deps48585_
                          (gxc#find-runtime-module-deps _ctx48556_))
                         (_deps48587_
                          (map gxc#find-static-module-file _deps48585_))
                         (_deps48592_
                          (filter (lambda (_$obj48589_)
                                    (not (gxc#file-empty? _$obj48589_)))
                                  _deps48587_))
                         (_gsc-opts48597_
                          (let ((_$e48594_ (pgetq 'gsc-options: _opts48557_)))
                            (if _$e48594_ _$e48594_ '())))
                         (_gsc-opts48599_
                          (_static-include48562_
                           _gsc-opts48597_
                           _gerbil-home48573_))
                         (_gsc-gx-macros48601_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros48581_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros48581_
                                          '()))))
                         (_gsc-args48603_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48571_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm48570_ '())
                            _gsc-gx-macros48601_)
                    _gsc-opts48599_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm48570_
                       (lambda ()
                         (_generate-stub48561_
                          (cons _gx-gambc048575_
                                (cons _gx-gambc-init48577_
                                      (foldr1 cons
                                              (cons _bin-scm48583_ '())
                                              _deps48592_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48603_))
                            (let* ((_proc48607_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48603_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48609_
                                    (process-status _proc48607_)))
                              (if (zero? _status48609_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48570_
                                   _output-bin48571_
                                   _status48609_))))
                          '#!void))))))
        (let* ((_output-bin48565_
                (gxc#compile-exe-output-file _ctx48556_ _opts48557_))
               (_output-scm48567_ (string-append _output-bin48565_ '".scm")))
          (begin
            (_compile-stub48563_ _output-scm48567_ _output-bin48565_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48567_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx48506_ _id48507_)
      (let ((_$e48553_
             (find (lambda (_e4850848510_)
                     (let* ((_g4851248522_ _e4850848510_)
                            (_else4851448530_ (lambda () '#f))
                            (_K4851648534_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g4851248522_
                            'gx#module-export::t)
                           (let* ((_e4851748537_
                                   (##vector-ref _g4851248522_ '1))
                                  (_e4851848540_
                                   (##vector-ref _g4851248522_ '2))
                                  (_e4851948543_
                                   (##vector-ref _g4851248522_ '3)))
                             (if (##eq? _e4851948543_ '0)
                                 (let ((_e4852048546_
                                        (##vector-ref _g4851248522_ '4)))
                                   (if ((lambda (_g4854848550_)
                                          (eq? _g4854848550_ _id48507_))
                                        _e4852048546_)
                                       (_K4851648534_)
                                       (_else4851448530_)))
                                 (_else4851448530_)))
                           (_else4851448530_))))
                   (##structure-ref _ctx48506_ '9 gx#module-context::t '#f))))
        (if _$e48553_ (gx#core-resolve-module-export _$e48553_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx48498_ _id48499_)
      (let ((_$e48501_ (gxc#find-export-binding _ctx48498_ _id48499_)))
        (if _$e48501_
            ((lambda (_bind48504_)
               (begin
                 (if (##structure-instance-of?
                      _bind48504_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id48499_))
                 (##structure-ref _bind48504_ '1 gx#binding::t '#f)))
             _$e48501_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx48498_ '1 gx#expander-context::t '#f)
             _id48499_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx48385_)
      (letrec* ((_ht48387_ (make-hash-table-eq))
                (_import-set-template48388_
                 (lambda (_in48450_ _phi48451_)
                   (let ((_iphi48453_
                          (fx+ _phi48451_
                               (##direct-structure-ref
                                _in48450_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports48454_
                          (##structure-ref
                           (##direct-structure-ref
                            _in48450_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp48456_ ((_rest48458_ _imports48454_)
                                     (_r48459_ '()))
                       (let* ((_rest4846048468_ _rest48458_)
                              (_else4846248476_ (lambda () _r48459_))
                              (_K4846448486_
                               (lambda (_rest48479_ _in48480_)
                                 (if (##structure-instance-of?
                                      _in48480_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi48453_)
                                         (_lp48456_
                                          _rest48479_
                                          (cons _in48480_ _r48459_))
                                         (_lp48456_ _rest48479_ _r48459_))
                                     (if (##structure-direct-instance-of?
                                          _in48480_
                                          'gx#module-import::t)
                                         (let ((_iphi48482_
                                                (fx+ _phi48451_
                                                     (##direct-structure-ref
                                                      _in48480_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi48482_)
                                               (_lp48456_
                                                _rest48479_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in48480_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r48459_))
                                               (_lp48456_
                                                _rest48479_
                                                _r48459_)))
                                         (if (##structure-direct-instance-of?
                                              _in48480_
                                              'gx#import-set::t)
                                             (let ((_xphi48484_
                                                    (fx+ _iphi48453_
                                                         (##direct-structure-ref
                                                          _in48480_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi48484_)
                                                   (_lp48456_
                                                    _rest48479_
                                                    (cons (##direct-structure-ref
                                                           _in48480_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r48459_))
                                                   (if (fxpositive?
                                                        _xphi48484_)
                                                       (_lp48456_
                                                        _rest48479_
                                                        (foldl1 cons
                                                                _r48459_
                                                                (_import-set-template48388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in48480_
                         _iphi48453_)))
               (_lp48456_ _rest48479_ _r48459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp48456_
                                              _rest48479_
                                              _r48459_)))))))
                         (if (##pair? _rest4846048468_)
                             (let ((_hd4846548489_ (##car _rest4846048468_))
                                   (_tl4846648491_ (##cdr _rest4846048468_)))
                               (let* ((_in48494_ _hd4846548489_)
                                      (_rest48496_ _tl4846648491_))
                                 (_K4846448486_ _rest48496_ _in48494_)))
                             (_else4846248476_)))))))
                (_find-deps48389_
                 (lambda (_rest48396_ _deps48397_)
                   (let* ((_rest4839848406_ _rest48396_)
                          (_else4840048414_ (lambda () _deps48397_))
                          (_K4840248438_
                           (lambda (_rest48417_ _hd48418_)
                             (if (##structure-instance-of?
                                  _hd48418_
                                  'gx#module-context::t)
                                 (let ((_id48420_
                                        (##structure-ref
                                         _hd48418_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports48421_
                                        (##structure-ref
                                         _hd48418_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht48387_ _id48420_ '#f)
                                       (_find-deps48389_
                                        _rest48417_
                                        _deps48397_)
                                       (let ((_$e48423_
                                              (gx#core-context-prelude__%
                                               _hd48418_)))
                                         (if _$e48423_
                                             ((lambda (_pre48426_)
                                                (let ((_xdeps48428_
                                                       (_find-deps48389_
                                                        (cons _pre48426_
                                                              _imports48421_)
                                                        _deps48397_)))
                                                  (begin
                                                    (table-set!
                                                     _ht48387_
                                                     _id48420_
                                                     _hd48418_)
                                                    (_find-deps48389_
                                                     _rest48417_
                                                     (cons _hd48418_
                                                           _xdeps48428_)))))
                                              _$e48423_)
                                             (let ((_xdeps48430_
                                                    (_find-deps48389_
                                                     _imports48421_
                                                     _deps48397_)))
                                               (begin
                                                 (table-set!
                                                  _ht48387_
                                                  _id48420_
                                                  _hd48418_)
                                                 (_find-deps48389_
                                                  _rest48417_
                                                  (cons _hd48418_
                                                        _xdeps48430_))))))))
                                 (if (##structure-instance-of?
                                      _hd48418_
                                      'gx#prelude-context::t)
                                     (let ((_id48432_
                                            (##structure-ref
                                             _hd48418_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht48387_ _id48432_ '#f)
                                           (_find-deps48389_
                                            _rest48417_
                                            _deps48397_)
                                           (let ((_xdeps48434_
                                                  (_find-deps48389_
                                                   (##structure-ref
                                                    _hd48418_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps48397_)))
                                             (if (table-ref
                                                  _ht48387_
                                                  _id48432_
                                                  '#f)
                                                 (_find-deps48389_
                                                  _rest48417_
                                                  _xdeps48434_)
                                                 (begin
                                                   (table-set!
                                                    _ht48387_
                                                    _id48432_
                                                    _hd48418_)
                                                   (_find-deps48389_
                                                    _rest48417_
                                                    (cons _hd48418_
                                                          _xdeps48434_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd48418_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd48418_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps48389_
                                              (cons (##direct-structure-ref
                                                     _hd48418_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest48417_)
                                              _deps48397_)
                                             (_find-deps48389_
                                              _rest48417_
                                              _deps48397_))
                                         (if (##structure-direct-instance-of?
                                              _hd48418_
                                              'gx#module-export::t)
                                             (_find-deps48389_
                                              (cons (##direct-structure-ref
                                                     _hd48418_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest48417_)
                                              _deps48397_)
                                             (if (##structure-direct-instance-of?
                                                  _hd48418_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd48418_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps48389_
                                                      (cons (##direct-structure-ref
                                                             _hd48418_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest48417_)
                                                      _deps48397_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd48418_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps48436_
                                                                (_import-set-template48388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd48418_
                         '0)))
                   (_find-deps48389_
                    (foldl1 cons _rest48417_ _xdeps48436_)
                    _deps48397_))
                 (_find-deps48389_ _rest48417_ _deps48397_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd48418_)))))))))
                     (if (##pair? _rest4839848406_)
                         (let ((_hd4840348441_ (##car _rest4839848406_))
                               (_tl4840448443_ (##cdr _rest4839848406_)))
                           (let* ((_hd48446_ _hd4840348441_)
                                  (_rest48448_ _tl4840448443_))
                             (_K4840248438_ _rest48448_ _hd48446_)))
                         (_else4840048414_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps48389_
                          (let ((_$e48391_
                                 (gx#core-context-prelude__% _ctx48385_)))
                            (if _$e48391_
                                ((lambda (_pre48394_)
                                   (cons _pre48394_
                                         (##structure-ref
                                          _ctx48385_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e48391_)
                                (##structure-ref
                                 _ctx48385_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx48324_)
      (let* ((_scm48326_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx48324_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs48328_ (gx#current-expander-module-library-path))
             (_dirs48337_
              (let ((_$e48330_ (gxc#current-compile-output-dir)))
                (if _$e48330_
                    ((lambda (_g4833248334_) (cons _g4833248334_ _dirs48328_))
                     _$e48330_)
                    _dirs48328_)))
             (_dirs48343_
              (map (lambda (_g4833848340_)
                     (path-expand '"static" _g4833848340_))
                   _dirs48337_)))
        (let _lp48346_ ((_rest48348_ _dirs48343_))
          (let* ((_rest4834948357_ _rest48348_)
                 (_else4835148365_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx48324_ '1 gx#expander-context::t '#f)
                     _scm48326_)))
                 (_K4835348373_
                  (lambda (_rest48368_ _dir48369_)
                    (let ((_path48371_ (path-expand _scm48326_ _dir48369_)))
                      (if (file-exists? _path48371_)
                          _path48371_
                          (_lp48346_ _rest48368_))))))
            (if (##pair? _rest4834948357_)
                (let ((_hd4835448376_ (##car _rest4834948357_))
                      (_tl4835548378_ (##cdr _rest4834948357_)))
                  (let* ((_dir48381_ _hd4835448376_)
                         (_rest48383_ _tl4835548378_))
                    (_K4835348373_ _rest48383_ _dir48381_)))
                (_else4835148365_)))))))
  (define gxc#file-empty?
    (lambda (_path48322_)
      (zero? (file-info-size (file-info _path48322_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx48319_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx48319_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx48319_)
               '#!void)
           (gxc#collect-bindings _ctx48319_)
           (gxc#compile-runtime-code _ctx48319_)
           (gxc#compile-meta-code _ctx48319_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx48319_)
               '#!void)))
       gx#current-expander-context
       _ctx48319_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj48806 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj48806) __obj48806))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx48317_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx48317_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx48271_)
      (letrec ((_compile148273_
                (lambda (_ctx48306_)
                  (let* ((_code48308_
                          (##structure-ref
                           _ctx48306_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt48312_
                          (if (gxc#apply-find-runtime-code _code48308_)
                              (let ((_idstr48310_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx48306_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr48310_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt48312_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx48306_
                             _rt48312_)
                            (_generate-runtime-code48274_
                             _ctx48306_
                             _code48308_))
                          (if (gxc#current-compile-static)
                              (let ((_path48315_
                                     (gxc#compile-static-output-file
                                      _ctx48306_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path48315_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code48275_
                       _ctx48306_
                       _code48308_
                       _rt48312_)))))
               (_generate-runtime-code48274_
                (lambda (_ctx48290_ _code48291_)
                  (let* ((_lifts48293_ (box '()))
                         (_runtime-code48296_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code48291_))
                           gx#current-expander-context
                           _ctx48290_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts48293_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code48298_
                          (if (null? (unbox _lifts48293_))
                              _runtime-code48296_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code48296_ '())
                                            (reverse (unbox _lifts48293_))))))
                         (_scm048300_
                          (gxc#compile-output-file _ctx48290_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms48303_
                               (gxc#compile-static-output-file _ctx48290_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _scm048300_
                                _runtime-code48298_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms48303_)
                                (delete-file _scms48303_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm048300_
                             '" => "
                             _scms48303_)
                            (copy-file _scm048300_ _scms48303_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm048300_))))
                        (gxc#compile-scm-file__0
                         _scm048300_
                         _runtime-code48298_)))))
               (_generate-loader-code48275_
                (lambda (_ctx48279_ _code48280_ _rt48281_)
                  (let* ((_loader-code48284_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code48280_))
                           gx#current-expander-context
                           _ctx48279_))
                         (_loader-code48286_
                          (if _rt48281_
                              (cons 'begin
                                    (cons _loader-code48284_
                                          (cons (cons 'load-module
                                                      (cons _rt48281_ '()))
                                                '())))
                              _loader-code48284_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx48279_ 'rt '".scm")
                        _loader-code48286_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules48277_
               (cons _ctx48271_ (gxc#lift-nested-modules _ctx48271_))))
          (for-each _compile148273_ _all-modules48277_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx48173_)
      (letrec ((_compile-ssi48175_
                (lambda (_code48241_)
                  (let* ((_path48243_
                          (gxc#compile-output-file _ctx48173_ '#f '".ssi"))
                         (_prelude48254_
                          (let* ((_super48245_
                                  (##structure-ref
                                   _ctx48173_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e48247_
                                  (##structure-ref
                                   _super48245_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e48247_
                                ((lambda (_g4824948251_)
                                   (make-symbol '":" _g4824948251_))
                                 _$e48247_)
                                ':<root>)))
                         (_ns48256_
                          (##structure-ref
                           _ctx48173_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr48258_
                          (symbol->string
                           (##structure-ref
                            _ctx48173_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg48265_
                          (let ((_$e48260_ (string-rindex _idstr48258_ '#\/)))
                            (if _$e48260_
                                ((lambda (_x48263_)
                                   (string->symbol
                                    (substring _idstr48258_ '0 _x48263_)))
                                 _$e48260_)
                                '#f)))
                         (_rt48267_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx48173_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path48243_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path48243_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude48254_)
                           (if _pkg48265_
                               (displayln '"package:" '" " _pkg48265_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns48256_)
                           (newline)
                           (pretty-print _code48241_)
                           (if _rt48267_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt48267_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi48176_
                (lambda (_part48181_)
                  (let* ((_part4818248195_ _part48181_)
                         (_E4818448199_
                          (lambda ()
                            (error '"No clause matching" _part4818248195_)))
                         (_K4818548210_
                          (lambda (_code48202_
                                   _n48203_
                                   _phi48204_
                                   _phi-ctx48205_)
                            (let ((_code48208_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code48202_))
                                    gx#current-expander-context
                                    _phi-ctx48205_
                                    gx#current-expander-phi
                                    _phi48204_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx48173_
                                _n48203_
                                '".scm")
                               _code48208_
                               '#t)))))
                    (if (##pair? _part4818248195_)
                        (let ((_hd4818648213_ (##car _part4818248195_))
                              (_tl4818748215_ (##cdr _part4818248195_)))
                          (let ((_phi-ctx48218_ _hd4818648213_))
                            (if (##pair? _tl4818748215_)
                                (let ((_hd4818848220_ (##car _tl4818748215_))
                                      (_tl4818948222_ (##cdr _tl4818748215_)))
                                  (let ((_phi48225_ _hd4818848220_))
                                    (if (##pair? _tl4818948222_)
                                        (let ((_hd4819048227_
                                               (##car _tl4818948222_))
                                              (_tl4819148229_
                                               (##cdr _tl4818948222_)))
                                          (let ((_n48232_ _hd4819048227_))
                                            (if (##pair? _tl4819148229_)
                                                (let ((_hd4819248234_
                                                       (##car _tl4819148229_))
                                                      (_tl4819348236_
                                                       (##cdr _tl4819148229_)))
                                                  (let ((_code48239_
                                                         _hd4819248234_))
                                                    (if (##null? _tl4819348236_)
                                                        (_K4818548210_
                                                         _code48239_
                                                         _n48232_
                                                         _phi48225_
                                                         _phi-ctx48218_)
                                                        (_E4818448199_))))
                                                (_E4818448199_))))
                                        (_E4818448199_))))
                                (_E4818448199_))))
                        (_E4818448199_))))))
        (let ((_g48814_ (gxc#generate-meta-code _ctx48173_)))
          (begin
            (let ((_g48815_
                   (if (##values? _g48814_) (##vector-length _g48814_) 1)))
              (if (not (##fx= _g48815_ 2))
                  (error "Context expects 2 values" _g48815_)))
            (let ((_ssi-code48178_ (##vector-ref _g48814_ 0))
                  (_phi-code48179_ (##vector-ref _g48814_ 1)))
              (begin
                (_compile-ssi48175_ _ssi-code48178_)
                (for-each _compile-phi48176_ _phi-code48179_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx48156_)
      (let* ((_path48158_ (gxc#compile-output-file _ctx48156_ '#f '".ssxi.ss"))
             (_code48160_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx48156_ '11 gx#module-context::t '#f)))
             (_idstr48162_
              (symbol->string
               (##structure-ref _ctx48156_ '1 gx#expander-context::t '#f)))
             (_pkg48169_
              (let ((_$e48164_ (string-rindex _idstr48162_ '#\/)))
                (if _$e48164_
                    ((lambda (_x48167_)
                       (string->symbol (substring _idstr48162_ '0 _x48167_)))
                     _$e48164_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path48158_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48158_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg48169_ (displayln '"package: " _pkg48169_) '#!void)
               (newline)
               (pretty-print _code48160_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx48149_)
      (let* ((_state48151_
              (let ((__obj48807 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj48807 _ctx48149_)
                  __obj48807)))
             (_ssi-code48153_
              (gxc#apply-generate-meta
               (##structure-ref _ctx48149_ '11 gx#module-context::t '#f)
               _state48151_)))
        (values _ssi-code48153_ (gxc#meta-state-end! _state48151_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx48142_)
      (let ((_lifts48144_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code48147_ (gxc#apply-generate-runtime-phi _stx48142_)))
             (if (null? (unbox _lifts48144_))
                 _code48147_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code48147_ '())
                               (reverse (unbox _lifts48144_)))))))
         gxc#current-compile-lift
         _lifts48144_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx48138_)
      (let ((_modules48140_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx48138_ '11 gx#module-context::t '#f)
           _modules48140_)
          (reverse (unbox _modules48140_))))))
  (begin
    (define gxc#compile-scm-file__%
      (lambda (_path48121_ _code48122_ _phi?48123_)
        (begin
          (gxc#verbose '"compile " _path48121_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48121_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (pretty-print
                (cons 'declare
                      (cons (cons 'block '())
                            (cons (cons 'standard-bindings '())
                                  (cons (cons 'extended-bindings '())
                                        (foldr1 cons
                                                '()
                                                (if _phi?48123_
                                                    '((inlining-limit 200))
                                                    '())))))))
               (pretty-print _code48122_))))
          (if (gxc#current-compile-invoke-gsc)
              (gxc#gsc-compile-file _path48121_)
              '#!void)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _path48121_)))))
    (begin
      (define gxc#compile-scm-file__0
        (lambda (_path48129_ _code48130_)
          (let ((_phi?48132_ '#f))
            (gxc#compile-scm-file__% _path48129_ _code48130_ _phi?48132_))))
      (define gxc#compile-scm-file
        (lambda _g48817_
          (let ((_g48816_ (length _g48817_)))
            (cond ((##fx= _g48816_ 2) (apply gxc#compile-scm-file__0 _g48817_))
                  ((##fx= _g48816_ 3) (apply gxc#compile-scm-file__% _g48817_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-scm-file
                    _g48817_))))))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e48109_ (gxc#current-compile-debug)))
        (if _$e48109_
            ((lambda (_debug48112_)
               (let ((_$e48114_ _debug48112_))
                 (if (eq? 'env _$e48114_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e48114_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e48117_ (eq? 'all _$e48114_)))
                               (if _$e48117_ _$e48117_ (eq? '#t _$e48114_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug48112_))))))
             _$e48109_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path48091_)
      (let* ((_gsc-args48098_
              (let ((_$e48093_ (gxc#current-compile-gsc-options)))
                (if _$e48093_
                    ((lambda (_opts48096_)
                       (foldr1 cons (cons _path48091_ '()) _opts48096_))
                     _$e48093_)
                    (cons _path48091_ '()))))
             (_gsc-args48100_
              (foldr1 cons _gsc-args48098_ (gxc#gsc-debug-options)))
             (_g48818_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args48100_)))
             (_proc48103_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args48100_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status48105_ (process-status _proc48103_)))
        (if (zero? _status48105_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path48091_
             _status48105_)))))
  (define gxc#compile-output-file
    (lambda (_ctx48063_ _n48064_ _ext48065_)
      (letrec ((_module-relative-path48067_
                (lambda (_ctx48089_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx48089_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory48068_
                (lambda (_ctx48085_)
                  (path-directory
                   (let ((_mpath48087_
                          (##structure-ref
                           _ctx48085_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath48087_)
                         _mpath48087_
                         (last _mpath48087_))))))
               (_section-string48069_
                (lambda (_n48083_)
                  (if (number? _n48083_)
                      (number->string _n48083_)
                      (if (symbol? _n48083_)
                          (symbol->string _n48083_)
                          (if (string? _n48083_)
                              _n48083_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n48083_))))))
               (_file-name48070_
                (lambda (_path48081_)
                  (if _n48064_
                      (string-append
                       _path48081_
                       '"__"
                       (_section-string48069_ _n48064_)
                       _ext48065_)
                      (string-append _path48081_ _ext48065_))))
               (_file-path48071_
                (lambda ()
                  (let ((_$e48076_ (gxc#current-compile-output-dir)))
                    (if _$e48076_
                        ((lambda (_outdir48079_)
                           (path-expand
                            (_file-name48070_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx48063_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir48079_))
                         _$e48076_)
                        (path-expand
                         (_file-name48070_
                          (_module-relative-path48067_ _ctx48063_))
                         (_module-source-directory48068_ _ctx48063_)))))))
        (let ((_path48073_ (_file-path48071_)))
          (begin
            (create-directory* (path-directory _path48073_))
            _path48073_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx48046_)
      (letrec ((_file-name48048_
                (lambda (_id48061_)
                  (string-append (gxc#static-module-name _id48061_) '".scm")))
               (_file-path48049_
                (lambda ()
                  (let* ((_file48054_
                          (_file-name48048_
                           (##structure-ref
                            _ctx48046_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e48056_ (gxc#current-compile-output-dir)))
                    (if _$e48056_
                        ((lambda (_outdir48059_)
                           (path-expand
                            _file48054_
                            (path-expand '"static" _outdir48059_)))
                         _$e48056_)
                        (path-expand _file48054_ '"static"))))))
        (let ((_path48051_ (_file-path48049_)))
          (begin
            (create-directory* (path-directory _path48051_))
            _path48051_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx48033_ _opts48034_)
      (let ((_$e48036_ (pgetq 'output-file: _opts48034_)))
        (if _$e48036_
            (values _$e48036_)
            (let* ((_mod-str48039_
                    (symbol->string
                     (##structure-ref
                      _ctx48033_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e48041_ (string-rindex _mod-str48039_ '#\/)))
              (if _$e48041_
                  ((lambda (_ix48044_)
                     (substring
                      _mod-str48039_
                      (fx+ _ix48044_ '1)
                      (string-length _mod-str48039_)))
                   _$e48041_)
                  _mod-str48039_))))))
  (define gxc#static-module-name
    (lambda (_idstr48026_)
      (if (string? _idstr48026_)
          (let* ((_str48028_ (gxc#module-id->path-string _idstr48026_))
                 (_strs48030_ (string-split _str48028_ '#\/)))
            (string-join _strs48030_ '"__"))
          (if (symbol? _idstr48026_)
              (gxc#static-module-name (symbol->string _idstr48026_))
              (error '"Bad module id" _idstr48026_))))))
