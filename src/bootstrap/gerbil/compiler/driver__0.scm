(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath28802_ _opts28803_)
        (begin
          (if (string? _srcpath28802_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath28802_))
          (let ((_outdir28805_ (pgetq 'output-dir: _opts28803_))
                (_invoke-gsc?28806_ (pgetq 'invoke-gsc: _opts28803_))
                (_gsc-options28807_ (pgetq 'gsc-options: _opts28803_))
                (_keep-scm?28808_ (pgetq 'keep-scm: _opts28803_))
                (_verbosity28809_ (pgetq 'verbose: _opts28803_))
                (_optimize28810_ (pgetq 'optimize: _opts28803_))
                (_debug28811_ (pgetq 'debug: _opts28803_))
                (_gen-ssxi28812_ (pgetq 'generate-ssxi: _opts28803_))
                (_static28813_ (pgetq 'static: _opts28803_)))
            (begin
              (if _outdir28805_ (create-directory* _outdir28805_) '#!void)
              (if _optimize28810_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath28802_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath28802_))))
               gxc#current-compile-output-dir
               _outdir28805_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?28806_
               gxc#current-compile-gsc-options
               _gsc-options28807_
               gxc#current-compile-keep-scm
               _keep-scm?28808_
               gxc#current-compile-verbose
               _verbosity28809_
               gxc#current-compile-optimize
               _optimize28810_
               gxc#current-compile-debug
               _debug28811_
               gxc#current-compile-generate-ssxi
               _gen-ssxi28812_
               gxc#current-compile-static
               _static28813_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath28819_)
          (let ((_opts28821_ '()))
            (gxc#compile-file__% _srcpath28819_ _opts28821_))))
      (define gxc#compile-file
        (lambda _g28829_
          (let ((_g28828_ (length _g28829_)))
            (cond ((##fx= _g28828_ 1) (apply gxc#compile-file__0 _g28829_))
                  ((##fx= _g28828_ 2) (apply gxc#compile-file__% _g28829_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g28829_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath28788_ _opts28789_)
        (gxc#do-compile-exe
         _srcpath28788_
         _opts28789_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath28794_)
          (let ((_opts28796_ '()))
            (gxc#compile-exe-stub__% _srcpath28794_ _opts28796_))))
      (define gxc#compile-exe-stub
        (lambda _g28831_
          (let ((_g28830_ (length _g28831_)))
            (cond ((##fx= _g28830_ 1) (apply gxc#compile-exe-stub__0 _g28831_))
                  ((##fx= _g28830_ 2) (apply gxc#compile-exe-stub__% _g28831_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g28831_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath28774_ _opts28775_)
        (gxc#do-compile-exe
         _srcpath28774_
         _opts28775_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath28780_)
          (let ((_opts28782_ '()))
            (gxc#compile-static-exe__% _srcpath28780_ _opts28782_))))
      (define gxc#compile-static-exe
        (lambda _g28833_
          (let ((_g28832_ (length _g28833_)))
            (cond ((##fx= _g28832_ 1)
                   (apply gxc#compile-static-exe__0 _g28833_))
                  ((##fx= _g28832_ 2)
                   (apply gxc#compile-static-exe__% _g28833_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g28833_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath28762_ _opts28763_ _compile-e28764_)
      (begin
        (if (string? _srcpath28762_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath28762_))
        (let ((_outdir28766_ (pgetq 'output-dir: _opts28763_))
              (_invoke-gsc?28767_ (pgetq 'invoke-gsc: _opts28763_))
              (_gsc-options28768_ (pgetq 'gsc-options: _opts28763_))
              (_keep-scm?28769_ (pgetq 'keep-scm: _opts28763_))
              (_verbosity28770_ (pgetq 'verbose: _opts28763_)))
          (begin
            (if _outdir28766_ (create-directory* _outdir28766_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath28762_)
                 (_compile-e28764_
                  (gx#import-module__0 _srcpath28762_)
                  _opts28763_)))
             gxc#current-compile-output-dir
             _outdir28766_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?28767_
             gxc#current-compile-gsc-options
             _gsc-options28768_
             gxc#current-compile-keep-scm
             _keep-scm?28769_
             gxc#current-compile-verbose
             _verbosity28770_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx28728_ _opts28729_)
      (letrec ((_generate-stub28731_
                (lambda (_gx-init-stub28753_)
                  (let* ((_mod-str28755_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx28728_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt28757_ (string-append _mod-str28755_ '"__rt"))
                         (_mod-main28759_
                          (gxc#find-runtime-symbol _ctx28728_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub28753_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt28757_
                                         (cons (cons 'quote
                                                     (cons _mod-main28759_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub28732_
                (lambda (_output-scm28739_ _output-bin28740_)
                  (let* ((_init-stub28742_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args28744_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28740_
                                            (cons _output-scm28739_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm28739_
                       (lambda () (_generate-stub28731_ _init-stub28742_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28744_))
                            (let* ((_proc28748_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28744_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28750_
                                    (process-status _proc28748_)))
                              (if (zero? _status28750_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28739_
                                   _output-bin28740_
                                   _status28750_))))
                          '#!void))))))
        (let* ((_output-bin28734_
                (gxc#compile-exe-output-file _ctx28728_ _opts28729_))
               (_output-scm28736_ (string-append _output-bin28734_ '".scm")))
          (begin
            (_compile-stub28732_ _output-scm28736_ _output-bin28734_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28736_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx28587_ _opts28588_)
      (letrec ((_reset-declare28590_
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
               (_user-declare28591_
                (lambda ()
                  (let* ((_gsc-opts28669_ (pgetq 'gsc-options: _opts28588_))
                         (_gsc-prelude28671_
                          (if _gsc-opts28669_
                              (member '"-prelude" _gsc-opts28669_)
                              '#f))
                         (_gsc-prelude28673_
                          (if _gsc-prelude28671_
                              (read (open-input-string
                                     (cadr _gsc-prelude28671_)))
                              '#f)))
                    (let _lift28676_ ((_expr28678_ _gsc-prelude28673_))
                      (let* ((_expr2867928691_ _expr28678_)
                             (_E2868328695_
                              (lambda ()
                                (error '"No clause matching"
                                       _expr2867928691_)))
                             (_else2868228699_ (lambda () '#f))
                             (_try-match2868128715_
                              (lambda ()
                                (let ((_K2868428705_
                                       (lambda (_exprs28703_)
                                         (ormap1 _lift28676_ _exprs28703_))))
                                  (if (##pair? _expr2867928691_)
                                      (let ((_hd2868528708_
                                             (##car _expr2867928691_))
                                            (_tl2868628710_
                                             (##cdr _expr2867928691_)))
                                        (if (##eq? _hd2868528708_ 'begin)
                                            (let ((_exprs28713_
                                                   _tl2868628710_))
                                              (_K2868428705_ _exprs28713_))
                                            (_else2868228699_)))
                                      (_else2868228699_)))))
                             (_K2868728719_ (lambda () _expr28678_)))
                        (if (##pair? _expr2867928691_)
                            (let ((_hd2868828722_ (##car _expr2867928691_))
                                  (_tl2868928724_ (##cdr _expr2867928691_)))
                              (if (##eq? _hd2868828722_ 'declare)
                                  (_K2868728719_)
                                  (_try-match2868128715_)))
                            (_try-match2868128715_)))))))
               (_generate-stub28592_
                (lambda (_deps28660_)
                  (let ((_mod-main28662_
                         (gxc#find-runtime-symbol _ctx28587_ 'main))
                        (_reset-decl28663_ (_reset-declare28590_))
                        (_user-decl28664_ (_user-declare28591_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep28666_)
                         (begin
                           (write (cons 'include (cons _dep28666_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl28663_)
                           (if _user-decl28664_
                               (write _user-decl28664_)
                               '#!void)
                           (newline)))
                       _deps28660_)
                      (write (cons 'apply
                                   (cons _mod-main28662_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include28593_
                (lambda (_gsc-opts28643_ _home28644_)
                  (letrec* ((_static-dir28646_
                             (path-expand '"lib/static" _home28644_))
                            (_user-static-dir28647_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags28648_
                             (string-append
                              '"-I "
                              _static-dir28646_
                              '" -I "
                              _user-static-dir28647_)))
                    (let ((_$e28650_ (member '"-cc-options" _gsc-opts28643_)))
                      (if _$e28650_
                          ((lambda (_rest28653_)
                             (let* ((_cell28655_ (cdr _rest28653_))
                                    (_opt28657_ (car _cell28655_)))
                               (begin
                                 (set-car!
                                  _cell28655_
                                  (string-append
                                   _opt28657_
                                   '" "
                                   _cppflags28648_))
                                 _gsc-opts28643_)))
                           _$e28650_)
                          (cons '"-cc-options"
                                (cons _cppflags28648_ _gsc-opts28643_)))))))
               (_compile-stub28594_
                (lambda (_output-scm28601_ _output-bin28602_)
                  (let* ((_gerbil-home28604_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc028606_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home28604_))
                         (_gx-gambc-init28608_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home28604_))
                         (_gx-gambc-macros28610_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home28604_))
                         (_include-gx-gambc-macros28612_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros28610_
                           '"\")"))
                         (_bin-scm28614_
                          (gxc#find-static-module-file _ctx28587_))
                         (_deps28616_
                          (gxc#find-runtime-module-deps _ctx28587_))
                         (_deps28618_
                          (map gxc#find-static-module-file _deps28616_))
                         (_deps28623_
                          (filter (lambda (_$obj28620_)
                                    (not (gxc#file-empty? _$obj28620_)))
                                  _deps28618_))
                         (_gsc-opts28628_
                          (let ((_$e28625_ (pgetq 'gsc-options: _opts28588_)))
                            (if _$e28625_ _$e28625_ '())))
                         (_gsc-opts28630_
                          (_static-include28593_
                           _gsc-opts28628_
                           _gerbil-home28604_))
                         (_gsc-gx-macros28632_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros28612_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros28612_
                                          '()))))
                         (_gsc-args28634_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28602_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm28601_ '())
                            _gsc-gx-macros28632_)
                    _gsc-opts28630_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm28601_
                       (lambda ()
                         (_generate-stub28592_
                          (cons _gx-gambc028606_
                                (cons _gx-gambc-init28608_
                                      (foldr1 cons
                                              (cons _bin-scm28614_ '())
                                              _deps28623_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28634_))
                            (let* ((_proc28638_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28634_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28640_
                                    (process-status _proc28638_)))
                              (if (zero? _status28640_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28601_
                                   _output-bin28602_
                                   _status28640_))))
                          '#!void))))))
        (let* ((_output-bin28596_
                (gxc#compile-exe-output-file _ctx28587_ _opts28588_))
               (_output-scm28598_ (string-append _output-bin28596_ '".scm")))
          (begin
            (_compile-stub28594_ _output-scm28598_ _output-bin28596_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28598_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx28537_ _id28538_)
      (let ((_$e28584_
             (find (lambda (_e2853928541_)
                     (let* ((_g2854328553_ _e2853928541_)
                            (_E2854628557_
                             (lambda ()
                               (error '"No clause matching" _g2854328553_)))
                            (_else2854528561_ (lambda () '#f))
                            (_K2854728565_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2854328553_
                            (##type-id gx#module-export::t))
                           (let* ((_e2854828568_
                                   (##vector-ref _g2854328553_ '1))
                                  (_e2854928571_
                                   (##vector-ref _g2854328553_ '2))
                                  (_e2855028574_
                                   (##vector-ref _g2854328553_ '3)))
                             (if (##eq? _e2855028574_ '0)
                                 (let ((_e2855128577_
                                        (##vector-ref _g2854328553_ '4)))
                                   (if ((lambda (_g2857928581_)
                                          (eq? _g2857928581_ _id28538_))
                                        _e2855128577_)
                                       (_K2854728565_)
                                       (_else2854528561_)))
                                 (_else2854528561_)))
                           (_else2854528561_))))
                   (##structure-ref _ctx28537_ '9 gx#module-context::t '#f))))
        (if _$e28584_ (gx#core-resolve-module-export _$e28584_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx28529_ _id28530_)
      (let ((_$e28532_ (gxc#find-export-binding _ctx28529_ _id28530_)))
        (if _$e28532_
            ((lambda (_bind28535_)
               (begin
                 (if (##structure-instance-of?
                      _bind28535_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id28530_))
                 (##structure-ref _bind28535_ '1 gx#binding::t '#f)))
             _$e28532_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx28529_ '1 gx#expander-context::t '#f)
             _id28530_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx28416_)
      (letrec* ((_ht28418_ (make-hash-table-eq))
                (_import-set-template28419_
                 (lambda (_in28481_ _phi28482_)
                   (let ((_iphi28484_
                          (fx+ _phi28482_
                               (##direct-structure-ref
                                _in28481_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports28485_
                          (##structure-ref
                           (##direct-structure-ref
                            _in28481_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp28487_ ((_rest28489_ _imports28485_)
                                     (_r28490_ '()))
                       (let* ((_rest2849128499_ _rest28489_)
                              (_E2849428503_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2849128499_)))
                              (_else2849328507_ (lambda () _r28490_))
                              (_K2849528517_
                               (lambda (_rest28510_ _in28511_)
                                 (if (##structure-instance-of?
                                      _in28511_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi28484_)
                                         (_lp28487_
                                          _rest28510_
                                          (cons _in28511_ _r28490_))
                                         (_lp28487_ _rest28510_ _r28490_))
                                     (if (##structure-direct-instance-of?
                                          _in28511_
                                          'gx#module-import::t)
                                         (let ((_iphi28513_
                                                (fx+ _phi28482_
                                                     (##direct-structure-ref
                                                      _in28511_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi28513_)
                                               (_lp28487_
                                                _rest28510_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in28511_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r28490_))
                                               (_lp28487_
                                                _rest28510_
                                                _r28490_)))
                                         (if (##structure-direct-instance-of?
                                              _in28511_
                                              'gx#import-set::t)
                                             (let ((_xphi28515_
                                                    (fx+ _iphi28484_
                                                         (##direct-structure-ref
                                                          _in28511_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi28515_)
                                                   (_lp28487_
                                                    _rest28510_
                                                    (cons (##direct-structure-ref
                                                           _in28511_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r28490_))
                                                   (if (fxpositive?
                                                        _xphi28515_)
                                                       (_lp28487_
                                                        _rest28510_
                                                        (foldl1 cons
                                                                _r28490_
                                                                (_import-set-template28419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in28511_
                         _iphi28484_)))
               (_lp28487_ _rest28510_ _r28490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp28487_
                                              _rest28510_
                                              _r28490_)))))))
                         (if (##pair? _rest2849128499_)
                             (let ((_hd2849628520_ (##car _rest2849128499_))
                                   (_tl2849728522_ (##cdr _rest2849128499_)))
                               (let* ((_in28525_ _hd2849628520_)
                                      (_rest28527_ _tl2849728522_))
                                 (_K2849528517_ _rest28527_ _in28525_)))
                             (_else2849328507_)))))))
                (_find-deps28420_
                 (lambda (_rest28427_ _deps28428_)
                   (let* ((_rest2842928437_ _rest28427_)
                          (_E2843228441_
                           (lambda ()
                             (error '"No clause matching" _rest2842928437_)))
                          (_else2843128445_ (lambda () _deps28428_))
                          (_K2843328469_
                           (lambda (_rest28448_ _hd28449_)
                             (if (##structure-instance-of?
                                  _hd28449_
                                  'gx#module-context::t)
                                 (let ((_id28451_
                                        (##structure-ref
                                         _hd28449_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports28452_
                                        (##structure-ref
                                         _hd28449_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht28418_ _id28451_ '#f)
                                       (_find-deps28420_
                                        _rest28448_
                                        _deps28428_)
                                       (let ((_$e28454_
                                              (gx#core-context-prelude__%
                                               _hd28449_)))
                                         (if _$e28454_
                                             ((lambda (_pre28457_)
                                                (let ((_xdeps28459_
                                                       (_find-deps28420_
                                                        (cons _pre28457_
                                                              _imports28452_)
                                                        _deps28428_)))
                                                  (begin
                                                    (table-set!
                                                     _ht28418_
                                                     _id28451_
                                                     _hd28449_)
                                                    (_find-deps28420_
                                                     _rest28448_
                                                     (cons _hd28449_
                                                           _xdeps28459_)))))
                                              _$e28454_)
                                             (let ((_xdeps28461_
                                                    (_find-deps28420_
                                                     _imports28452_
                                                     _deps28428_)))
                                               (begin
                                                 (table-set!
                                                  _ht28418_
                                                  _id28451_
                                                  _hd28449_)
                                                 (_find-deps28420_
                                                  _rest28448_
                                                  (cons _hd28449_
                                                        _xdeps28461_))))))))
                                 (if (##structure-instance-of?
                                      _hd28449_
                                      'gx#prelude-context::t)
                                     (let ((_id28463_
                                            (##structure-ref
                                             _hd28449_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht28418_ _id28463_ '#f)
                                           (_find-deps28420_
                                            _rest28448_
                                            _deps28428_)
                                           (let ((_xdeps28465_
                                                  (_find-deps28420_
                                                   (##structure-ref
                                                    _hd28449_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps28428_)))
                                             (if (table-ref
                                                  _ht28418_
                                                  _id28463_
                                                  '#f)
                                                 (_find-deps28420_
                                                  _rest28448_
                                                  _xdeps28465_)
                                                 (begin
                                                   (table-set!
                                                    _ht28418_
                                                    _id28463_
                                                    _hd28449_)
                                                   (_find-deps28420_
                                                    _rest28448_
                                                    (cons _hd28449_
                                                          _xdeps28465_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd28449_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd28449_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps28420_
                                              (cons (##direct-structure-ref
                                                     _hd28449_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest28448_)
                                              _deps28428_)
                                             (_find-deps28420_
                                              _rest28448_
                                              _deps28428_))
                                         (if (##structure-direct-instance-of?
                                              _hd28449_
                                              'gx#module-export::t)
                                             (_find-deps28420_
                                              (cons (##direct-structure-ref
                                                     _hd28449_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest28448_)
                                              _deps28428_)
                                             (if (##structure-direct-instance-of?
                                                  _hd28449_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd28449_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps28420_
                                                      (cons (##direct-structure-ref
                                                             _hd28449_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest28448_)
                                                      _deps28428_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd28449_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps28467_
                                                                (_import-set-template28419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd28449_
                         '0)))
                   (_find-deps28420_
                    (foldl1 cons _rest28448_ _xdeps28467_)
                    _deps28428_))
                 (_find-deps28420_ _rest28448_ _deps28428_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd28449_)))))))))
                     (if (##pair? _rest2842928437_)
                         (let ((_hd2843428472_ (##car _rest2842928437_))
                               (_tl2843528474_ (##cdr _rest2842928437_)))
                           (let* ((_hd28477_ _hd2843428472_)
                                  (_rest28479_ _tl2843528474_))
                             (_K2843328469_ _rest28479_ _hd28477_)))
                         (_else2843128445_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps28420_
                          (let ((_$e28422_
                                 (gx#core-context-prelude__% _ctx28416_)))
                            (if _$e28422_
                                ((lambda (_pre28425_)
                                   (cons _pre28425_
                                         (##structure-ref
                                          _ctx28416_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e28422_)
                                (##structure-ref
                                 _ctx28416_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx28355_)
      (let* ((_scm28357_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx28355_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs28359_ (gx#current-expander-module-library-path))
             (_dirs28368_
              (let ((_$e28361_ (gxc#current-compile-output-dir)))
                (if _$e28361_
                    ((lambda (_g2836328365_) (cons _g2836328365_ _dirs28359_))
                     _$e28361_)
                    _dirs28359_)))
             (_dirs28374_
              (map (lambda (_g2836928371_)
                     (path-expand '"static" _g2836928371_))
                   _dirs28368_)))
        (let _lp28377_ ((_rest28379_ _dirs28374_))
          (let* ((_rest2838028388_ _rest28379_)
                 (_E2838328392_
                  (lambda () (error '"No clause matching" _rest2838028388_)))
                 (_else2838228396_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx28355_ '1 gx#expander-context::t '#f)
                     _scm28357_)))
                 (_K2838428404_
                  (lambda (_rest28399_ _dir28400_)
                    (let ((_path28402_ (path-expand _scm28357_ _dir28400_)))
                      (if (file-exists? _path28402_)
                          _path28402_
                          (_lp28377_ _rest28399_))))))
            (if (##pair? _rest2838028388_)
                (let ((_hd2838528407_ (##car _rest2838028388_))
                      (_tl2838628409_ (##cdr _rest2838028388_)))
                  (let* ((_dir28412_ _hd2838528407_)
                         (_rest28414_ _tl2838628409_))
                    (_K2838428404_ _rest28414_ _dir28412_)))
                (_else2838228396_)))))))
  (define gxc#file-empty?
    (lambda (_path28353_)
      (zero? (file-info-size (file-info _path28353_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx28350_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx28350_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx28350_)
               '#!void)
           (gxc#collect-bindings _ctx28350_)
           (gxc#compile-runtime-code _ctx28350_)
           (gxc#compile-meta-code _ctx28350_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx28350_)
               '#!void)))
       gx#current-expander-context
       _ctx28350_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj28826 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj28826) __obj28826))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx28348_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx28348_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx28302_)
      (letrec ((_compile128304_
                (lambda (_ctx28337_)
                  (let* ((_code28339_
                          (##structure-ref
                           _ctx28337_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt28343_
                          (if (gxc#apply-find-runtime-code _code28339_)
                              (let ((_idstr28341_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx28337_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr28341_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt28343_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx28337_
                             _rt28343_)
                            (_generate-runtime-code28305_
                             _ctx28337_
                             _code28339_))
                          (if (gxc#current-compile-static)
                              (let ((_path28346_
                                     (gxc#compile-static-output-file
                                      _ctx28337_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path28346_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code28306_
                       _ctx28337_
                       _code28339_
                       _rt28343_)))))
               (_generate-runtime-code28305_
                (lambda (_ctx28321_ _code28322_)
                  (let* ((_lifts28324_ (box '()))
                         (_runtime-code28327_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code28322_))
                           gx#current-expander-context
                           _ctx28321_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts28324_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code28329_
                          (if (null? (unbox _lifts28324_))
                              _runtime-code28327_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code28327_ '())
                                            (reverse (unbox _lifts28324_))))))
                         (_scm028331_
                          (gxc#compile-output-file _ctx28321_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms28334_
                               (gxc#compile-static-output-file _ctx28321_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm028331_
                                _runtime-code28329_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms28334_)
                                (delete-file _scms28334_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm028331_
                             '" => "
                             _scms28334_)
                            (copy-file _scm028331_ _scms28334_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm028331_))))
                        (gxc#compile-scm-file
                         _scm028331_
                         _runtime-code28329_)))))
               (_generate-loader-code28306_
                (lambda (_ctx28310_ _code28311_ _rt28312_)
                  (let* ((_loader-code28315_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code28311_))
                           gx#current-expander-context
                           _ctx28310_))
                         (_loader-code28317_
                          (if _rt28312_
                              (cons 'begin
                                    (cons _loader-code28315_
                                          (cons (cons 'load-module
                                                      (cons _rt28312_ '()))
                                                '())))
                              _loader-code28315_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx28310_ 'rt '".scm")
                        _loader-code28317_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules28308_
               (cons _ctx28302_ (gxc#lift-nested-modules _ctx28302_))))
          (for-each _compile128304_ _all-modules28308_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx28204_)
      (letrec ((_compile-ssi28206_
                (lambda (_code28272_)
                  (let* ((_path28274_
                          (gxc#compile-output-file _ctx28204_ '#f '".ssi"))
                         (_prelude28285_
                          (let* ((_super28276_
                                  (##structure-ref
                                   _ctx28204_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e28278_
                                  (##structure-ref
                                   _super28276_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e28278_
                                ((lambda (_g2828028282_)
                                   (make-symbol '":" _g2828028282_))
                                 _$e28278_)
                                ':<root>)))
                         (_ns28287_
                          (##structure-ref
                           _ctx28204_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr28289_
                          (symbol->string
                           (##structure-ref
                            _ctx28204_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg28296_
                          (let ((_$e28291_ (string-rindex _idstr28289_ '#\/)))
                            (if _$e28291_
                                ((lambda (_x28294_)
                                   (string->symbol
                                    (substring _idstr28289_ '0 _x28294_)))
                                 _$e28291_)
                                '#f)))
                         (_rt28298_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx28204_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path28274_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path28274_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude28285_)
                           (if _pkg28296_
                               (displayln '"package:" '" " _pkg28296_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns28287_)
                           (newline)
                           (pretty-print _code28272_)
                           (if _rt28298_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt28298_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi28207_
                (lambda (_part28212_)
                  (let* ((_part2821328226_ _part28212_)
                         (_E2821528230_
                          (lambda ()
                            (error '"No clause matching" _part2821328226_)))
                         (_K2821628241_
                          (lambda (_code28233_
                                   _n28234_
                                   _phi28235_
                                   _phi-ctx28236_)
                            (let ((_code28239_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code28233_))
                                    gx#current-expander-context
                                    _phi-ctx28236_
                                    gx#current-expander-phi
                                    _phi28235_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx28204_
                                _n28234_
                                '".scm")
                               _code28239_)))))
                    (if (##pair? _part2821328226_)
                        (let ((_hd2821728244_ (##car _part2821328226_))
                              (_tl2821828246_ (##cdr _part2821328226_)))
                          (let ((_phi-ctx28249_ _hd2821728244_))
                            (if (##pair? _tl2821828246_)
                                (let ((_hd2821928251_ (##car _tl2821828246_))
                                      (_tl2822028253_ (##cdr _tl2821828246_)))
                                  (let ((_phi28256_ _hd2821928251_))
                                    (if (##pair? _tl2822028253_)
                                        (let ((_hd2822128258_
                                               (##car _tl2822028253_))
                                              (_tl2822228260_
                                               (##cdr _tl2822028253_)))
                                          (let ((_n28263_ _hd2822128258_))
                                            (if (##pair? _tl2822228260_)
                                                (let ((_hd2822328265_
                                                       (##car _tl2822228260_))
                                                      (_tl2822428267_
                                                       (##cdr _tl2822228260_)))
                                                  (let ((_code28270_
                                                         _hd2822328265_))
                                                    (if (##null? _tl2822428267_)
                                                        (_K2821628241_
                                                         _code28270_
                                                         _n28263_
                                                         _phi28256_
                                                         _phi-ctx28249_)
                                                        (_E2821528230_))))
                                                (_E2821528230_))))
                                        (_E2821528230_))))
                                (_E2821528230_))))
                        (_E2821528230_))))))
        (let ((_g28834_ (gxc#generate-meta-code _ctx28204_)))
          (begin
            (let ((_g28835_
                   (if (##values? _g28834_) (##vector-length _g28834_) 1)))
              (if (not (##fx= _g28835_ 2))
                  (error "Context expects 2 values" _g28835_)))
            (let ((_ssi-code28209_ (##vector-ref _g28834_ 0))
                  (_phi-code28210_ (##vector-ref _g28834_ 1)))
              (begin
                (_compile-ssi28206_ _ssi-code28209_)
                (for-each _compile-phi28207_ _phi-code28210_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx28187_)
      (let* ((_path28189_ (gxc#compile-output-file _ctx28187_ '#f '".ssxi.ss"))
             (_code28191_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx28187_ '11 gx#module-context::t '#f)))
             (_idstr28193_
              (symbol->string
               (##structure-ref _ctx28187_ '1 gx#expander-context::t '#f)))
             (_pkg28200_
              (let ((_$e28195_ (string-rindex _idstr28193_ '#\/)))
                (if _$e28195_
                    ((lambda (_x28198_)
                       (string->symbol (substring _idstr28193_ '0 _x28198_)))
                     _$e28195_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path28189_)
          (with-output-to-file
           (cons 'path:
                 (cons _path28189_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg28200_ (displayln '"package: " _pkg28200_) '#!void)
               (newline)
               (pretty-print _code28191_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx28180_)
      (let* ((_state28182_
              (let ((__obj28827 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj28827 _ctx28180_)
                  __obj28827)))
             (_ssi-code28184_
              (gxc#apply-generate-meta
               (##structure-ref _ctx28180_ '11 gx#module-context::t '#f)
               _state28182_)))
        (values _ssi-code28184_ (gxc#meta-state-end! _state28182_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx28173_)
      (let ((_lifts28175_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code28178_ (gxc#apply-generate-runtime-phi _stx28173_)))
             (if (null? (unbox _lifts28175_))
                 _code28178_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code28178_ '())
                               (reverse (unbox _lifts28175_)))))))
         gxc#current-compile-lift
         _lifts28175_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx28169_)
      (let ((_modules28171_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx28169_ '11 gx#module-context::t '#f)
           _modules28171_)
          (reverse (unbox _modules28171_))))))
  (define gxc#compile-scm-file
    (lambda (_path28165_ _code28166_)
      (begin
        (gxc#verbose '"compile " _path28165_)
        (with-output-to-file
         (cons 'path: (cons _path28165_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code28166_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path28165_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path28165_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e28154_ (gxc#current-compile-debug)))
        (if _$e28154_
            ((lambda (_debug28157_)
               (let ((_$e28159_ _debug28157_))
                 (if (eq? 'env _$e28159_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e28159_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e28162_ (eq? 'all _$e28159_)))
                               (if _$e28162_ _$e28162_ (eq? '#t _$e28159_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug28157_))))))
             _$e28154_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path28136_)
      (let* ((_gsc-args28143_
              (let ((_$e28138_ (gxc#current-compile-gsc-options)))
                (if _$e28138_
                    ((lambda (_opts28141_)
                       (foldr1 cons (cons _path28136_ '()) _opts28141_))
                     _$e28138_)
                    (cons _path28136_ '()))))
             (_gsc-args28145_
              (foldr1 cons _gsc-args28143_ (gxc#gsc-debug-options)))
             (_g28836_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args28145_)))
             (_proc28148_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args28145_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status28150_ (process-status _proc28148_)))
        (if (zero? _status28150_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path28136_
             _status28150_)))))
  (define gxc#compile-output-file
    (lambda (_ctx28108_ _n28109_ _ext28110_)
      (letrec ((_module-relative-path28112_
                (lambda (_ctx28134_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx28134_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory28113_
                (lambda (_ctx28130_)
                  (path-directory
                   (let ((_mpath28132_
                          (##structure-ref
                           _ctx28130_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath28132_)
                         _mpath28132_
                         (last _mpath28132_))))))
               (_section-string28114_
                (lambda (_n28128_)
                  (if (number? _n28128_)
                      (number->string _n28128_)
                      (if (symbol? _n28128_)
                          (symbol->string _n28128_)
                          (if (string? _n28128_)
                              _n28128_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n28128_))))))
               (_file-name28115_
                (lambda (_path28126_)
                  (if _n28109_
                      (string-append
                       _path28126_
                       '"__"
                       (_section-string28114_ _n28109_)
                       _ext28110_)
                      (string-append _path28126_ _ext28110_))))
               (_file-path28116_
                (lambda ()
                  (let ((_$e28121_ (gxc#current-compile-output-dir)))
                    (if _$e28121_
                        ((lambda (_outdir28124_)
                           (path-expand
                            (_file-name28115_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx28108_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir28124_))
                         _$e28121_)
                        (path-expand
                         (_file-name28115_
                          (_module-relative-path28112_ _ctx28108_))
                         (_module-source-directory28113_ _ctx28108_)))))))
        (let ((_path28118_ (_file-path28116_)))
          (begin
            (create-directory* (path-directory _path28118_))
            _path28118_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx28091_)
      (letrec ((_file-name28093_
                (lambda (_id28106_)
                  (string-append (gxc#static-module-name _id28106_) '".scm")))
               (_file-path28094_
                (lambda ()
                  (let* ((_file28099_
                          (_file-name28093_
                           (##structure-ref
                            _ctx28091_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e28101_ (gxc#current-compile-output-dir)))
                    (if _$e28101_
                        ((lambda (_outdir28104_)
                           (path-expand
                            _file28099_
                            (path-expand '"static" _outdir28104_)))
                         _$e28101_)
                        (path-expand _file28099_ '"static"))))))
        (let ((_path28096_ (_file-path28094_)))
          (begin
            (create-directory* (path-directory _path28096_))
            _path28096_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx28078_ _opts28079_)
      (let ((_$e28081_ (pgetq 'output-file: _opts28079_)))
        (if _$e28081_
            (values _$e28081_)
            (let* ((_mod-str28084_
                    (symbol->string
                     (##structure-ref
                      _ctx28078_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e28086_ (string-rindex _mod-str28084_ '#\/)))
              (if _$e28086_
                  ((lambda (_ix28089_)
                     (substring
                      _mod-str28084_
                      (fx+ _ix28089_ '1)
                      (string-length _mod-str28084_)))
                   _$e28086_)
                  _mod-str28084_))))))
  (define gxc#static-module-name
    (lambda (_idstr28071_)
      (if (string? _idstr28071_)
          (let* ((_str28073_ (gxc#module-id->path-string _idstr28071_))
                 (_strs28075_ (string-split _str28073_ '#\/)))
            (string-join _strs28075_ '"__"))
          (if (symbol? _idstr28071_)
              (gxc#static-module-name (symbol->string _idstr28071_))
              (error '"Bad module id" _idstr28071_))))))
