(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda20744
      (lambda (_srcpath20746_ _opts20747_)
        (begin
          (if (string? _srcpath20746_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath20746_))
          (let ((_outdir20749_ (pgetq 'output-dir: _opts20747_))
                (_invoke-gsc?20750_ (pgetq 'invoke-gsc: _opts20747_))
                (_gsc-options20751_ (pgetq 'gsc-options: _opts20747_))
                (_keep-scm?20752_ (pgetq 'keep-scm: _opts20747_))
                (_verbosity20753_ (pgetq 'verbose: _opts20747_))
                (_optimize20754_ (pgetq 'optimize: _opts20747_))
                (_debug20755_ (pgetq 'debug: _opts20747_))
                (_gen-ssxi20756_ (pgetq 'generate-ssxi: _opts20747_))
                (_static20757_ (pgetq 'static: _opts20747_)))
            (begin
              (if _outdir20749_ (create-directory* _outdir20749_) '#!void)
              (if _optimize20754_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath20746_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath20746_))))
               gxc#current-compile-output-dir
               _outdir20749_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?20750_
               gxc#current-compile-gsc-options
               _gsc-options20751_
               gxc#current-compile-keep-scm
               _keep-scm?20752_
               gxc#current-compile-verbose
               _verbosity20753_
               gxc#current-compile-optimize
               _optimize20754_
               gxc#current-compile-debug
               _debug20755_
               gxc#current-compile-generate-ssxi
               _gen-ssxi20756_
               gxc#current-compile-static
               _static20757_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath20763_)
          (let ((_opts20765_ '()))
            (gxc#compile-file__opt-lambda20744 _srcpath20763_ _opts20765_))))
      (define gxc#compile-file
        (lambda _g20773_
          (let ((_g20772_ (length _g20773_)))
            (cond ((fx= _g20772_ 1) (apply gxc#compile-file__0 _g20773_))
                  ((fx= _g20772_ 2)
                   (apply gxc#compile-file__opt-lambda20744 _g20773_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g20773_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda20730
      (lambda (_srcpath20732_ _opts20733_)
        (gxc#do-compile-exe
         _srcpath20732_
         _opts20733_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath20738_)
          (let ((_opts20740_ '()))
            (gxc#compile-exe-stub__opt-lambda20730
             _srcpath20738_
             _opts20740_))))
      (define gxc#compile-exe-stub
        (lambda _g20775_
          (let ((_g20774_ (length _g20775_)))
            (cond ((fx= _g20774_ 1) (apply gxc#compile-exe-stub__0 _g20775_))
                  ((fx= _g20774_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda20730 _g20775_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g20775_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda20716
      (lambda (_srcpath20718_ _opts20719_)
        (gxc#do-compile-exe
         _srcpath20718_
         _opts20719_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath20724_)
          (let ((_opts20726_ '()))
            (gxc#compile-static-exe__opt-lambda20716
             _srcpath20724_
             _opts20726_))))
      (define gxc#compile-static-exe
        (lambda _g20777_
          (let ((_g20776_ (length _g20777_)))
            (cond ((fx= _g20776_ 1) (apply gxc#compile-static-exe__0 _g20777_))
                  ((fx= _g20776_ 2)
                   (apply gxc#compile-static-exe__opt-lambda20716 _g20777_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g20777_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath20706_ _opts20707_ _compile-e20708_)
      (begin
        (if (string? _srcpath20706_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath20706_))
        (let ((_outdir20710_ (pgetq 'output-dir: _opts20707_))
              (_invoke-gsc?20711_ (pgetq 'invoke-gsc: _opts20707_))
              (_gsc-options20712_ (pgetq 'gsc-options: _opts20707_))
              (_keep-scm?20713_ (pgetq 'keep-scm: _opts20707_))
              (_verbosity20714_ (pgetq 'verbose: _opts20707_)))
          (begin
            (if _outdir20710_ (create-directory* _outdir20710_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath20706_)
                 (_compile-e20708_
                  (gx#import-module__0 _srcpath20706_)
                  _opts20707_)))
             gxc#current-compile-output-dir
             _outdir20710_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?20711_
             gxc#current-compile-gsc-options
             _gsc-options20712_
             gxc#current-compile-keep-scm
             _keep-scm?20713_
             gxc#current-compile-verbose
             _verbosity20714_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx20670_ _opts20671_)
      (let ((_generate-stub20673_
             (lambda ()
               (let ((_mod-str20699_
                      (symbol->string
                       (##structure-ref
                        _ctx20670_
                        '1
                        gx#expander-context::t
                        '#f))))
                 (let ((_mod-rt20701_ (string-append _mod-str20699_ '"__rt")))
                   (let ((_mod-main20703_
                          (gxc#find-runtime-symbol _ctx20670_ 'main)))
                     (let ()
                       (begin
                         (write '(##namespace ("")))
                         (newline)
                         (write (cons '_gx#start!
                                      (cons _mod-rt20701_
                                            (cons (cons 'quote
                                                        (cons _mod-main20703_
                                                              '()))
                                                  '()))))
                         (newline)))))))))
        (let ((_compile-stub20674_
               (lambda (_output-scm20681_ _output-bin20682_)
                 (let ((_init-stub20684_
                        (path-expand
                         '"lib/gx-init-exe.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gxc-cache20686_ (gxc#compile-cache-directory)))
                     (let ((_init-stub20688_
                            (gxc#compile-cache
                             _init-stub20684_
                             _gxc-cache20686_)))
                       (let ((_gsc-args20690_
                              (cons '"-exe"
                                    (cons '"-o"
                                          (cons _output-bin20682_
                                                (cons _init-stub20688_
                                                      (cons _output-scm20681_
                                                            '())))))))
                         (let ((_g20778_
                                (gxc#verbose
                                 '"invoke gsc "
                                 (cons 'gsc _gsc-args20690_))))
                           (let ((_proc20693_
                                  (open-process
                                   (cons 'path:
                                         (cons '"gsc"
                                               (cons 'arguments:
                                                     (cons _gsc-args20690_
                                                           (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (let ((_status20695_
                                    (process-status _proc20693_)))
                               (let ()
                                 (if (zero? _status20695_)
                                     '#!void
                                     (gxc#raise-compile-error
                                      '"Compilation error; gsc exit with nonzero status"
                                      _output-scm20681_
                                      _output-bin20682_
                                      _status20695_)))))))))))))
          (let ((_output-bin20676_
                 (gxc#compile-exe-output-file _ctx20670_ _opts20671_)))
            (let ((_output-scm20678_
                   (string-append _output-bin20676_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20678_ _generate-stub20673_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20674_ _output-scm20678_ _output-bin20676_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20678_))))))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx20605_ _opts20606_)
      (let ((_generate-stub20608_
             (lambda ()
               (let ((_mod-main20668_
                      (gxc#find-runtime-symbol _ctx20605_ 'main)))
                 (begin
                   (write '(##namespace ("")))
                   (newline)
                   (write (cons 'apply
                                (cons _mod-main20668_
                                      (cons (cons 'cdr
                                                  (cons (cons 'command-line
                                                              '())
                                                        '()))
                                            '()))))
                   (newline))))))
        (let ((_compile-stub20609_
               (lambda (_output-scm20616_ _output-bin20617_)
                 (let ((_gerbil-home20619_ (getenv '"GERBIL_HOME")))
                   (let ((_gx-gambc020621_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home20619_)))
                     (let ((_gx-gambc-init20623_
                            (path-expand
                             '"lib/gx-init-static-exe.scm"
                             _gerbil-home20619_)))
                       (let ((_gx-gambc-macros20625_
                              (path-expand
                               '"lib/static/gx-gambc#.scm"
                               _gerbil-home20619_)))
                         (let ((_include-gx-gambc-macros20627_
                                (string-append
                                 '"(include \""
                                 _gx-gambc-macros20625_
                                 '"\")")))
                           (let ((_bin-scm20629_
                                  (gxc#find-static-module-file _ctx20605_)))
                             (let ((_deps20631_
                                    (gxc#find-runtime-module-deps _ctx20605_)))
                               (let ((_deps20633_
                                      (map gxc#find-static-module-file
                                           _deps20631_)))
                                 (let ((_deps20638_
                                        (filter (lambda (_$obj20635_)
                                                  (not (gxc#file-empty?
                                                        _$obj20635_)))
                                                _deps20633_)))
                                   (let ((_gxc-cache20640_
                                          (gxc#compile-cache-directory)))
                                     (let ((_gx-gambc020642_
                                            (gxc#compile-cache
                                             _gx-gambc020621_
                                             _gxc-cache20640_)))
                                       (let ((_gx-gambc-init20644_
                                              (gxc#compile-cache
                                               _gx-gambc-init20623_
                                               _gxc-cache20640_)))
                                         (let ((_deps20650_
                                                (map (lambda (_g2064520647_)
                                                       (gxc#compile-cache
                                                        _g2064520647_
                                                        _gxc-cache20640_))
                                                     _deps20638_)))
                                           (let ((_bin-scm20652_
                                                  (gxc#compile-cache
                                                   _bin-scm20629_
                                                   _gxc-cache20640_)))
                                             (let ((_gsc-opts20657_
                                                    (let ((_$e20654_
                                                           (pgetq 'gsc-options:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opts20606_)))
              (if _$e20654_ _$e20654_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_gsc-args20659_
                                                      (cons '"-exe"
                                                            (cons '"-o"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _output-bin20617_
                                (foldr1 cons
                                        (foldr1 cons
                                                (cons '"-e"
                                                      (cons _include-gx-gambc-macros20627_
                                                            (cons _gx-gambc020642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _gx-gambc-init20644_
                                (foldr1 cons
                                        (cons _bin-scm20652_
                                              (cons _output-scm20616_ '()))
                                        _deps20650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _gsc-opts20657_)
                                        (gxc#gsc-debug-options)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g20779_
                                                        (gxc#verbose
                                                         '"invoke gsc "
                                                         (cons 'gsc
                                                               _gsc-args20659_))))
                                                   (let ((_proc20662_
                                                          (open-process
                                                           (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '"gsc"
                               (cons 'arguments:
                                     (cons _gsc-args20659_
                                           (cons 'stdout-redirection:
                                                 (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_status20664_
                                                            (process-status
                                                             _proc20662_)))
                                                       (let ()
                                                         (if (zero? _status20664_)
                                                             '#!void
                                                             (gxc#raise-compile-error
                                                              '"Compilation error; gsc exit with nonzero status"
                                                              _output-scm20616_
                                                              _output-bin20617_
                                                              _status20664_)))))))))))))))))))))))))
          (let ((_output-bin20611_
                 (gxc#compile-exe-output-file _ctx20605_ _opts20606_)))
            (let ((_output-scm20613_
                   (string-append _output-bin20611_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20613_ _generate-stub20608_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20609_ _output-scm20613_ _output-bin20611_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20613_))))))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let ((_cachedir20600_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil")))
        (let ((_gxc-cache20602_ (path-expand '"gxc" _cachedir20600_)))
          (let ()
            (begin
              (create-directory* _gxc-cache20602_)
              (path-normalize _gxc-cache20602_)))))))
  (define gxc#compile-cache
    (lambda (_file20594_ _gxc-cache20595_)
      (let ((_cachefile20597_
             (path-expand
              (path-strip-directory _file20594_)
              _gxc-cache20595_)))
        (begin
          (if (file-exists? _cachefile20597_)
              (if (file-newer? _file20594_ _cachefile20597_)
                  (begin
                    (delete-file _cachefile20597_)
                    (copy-file _file20594_ _cachefile20597_))
                  '#!void)
              (copy-file _file20594_ _cachefile20597_))
          _cachefile20597_))))
  (define gxc#find-export-binding
    (lambda (_ctx20544_ _id20545_)
      (let ((_$e20591_
             (find (lambda (_e2054620548_)
                     (let ((_g2055020560_ _e2054620548_))
                       (let ((_E2055320564_
                              (lambda ()
                                (error '"No clause matching" _g2055020560_))))
                         (let ((_else2055220568_ (lambda () '#f)))
                           (let ((_K2055420572_ (lambda () '#t)))
                             (if (##structure-direct-instance-of?
                                  _g2055020560_
                                  (##type-id gx#module-export::t))
                                 (let ((_e2055520575_
                                        (##vector-ref _g2055020560_ '1)))
                                   (let ((_e2055620578_
                                          (##vector-ref _g2055020560_ '2)))
                                     (let ((_e2055720581_
                                            (##vector-ref _g2055020560_ '3)))
                                       (if (##eq? _e2055720581_ '0)
                                           (let ((_e2055820584_
                                                  (##vector-ref
                                                   _g2055020560_
                                                   '4)))
                                             (if ((lambda (_g2058620588_)
                                                    (eq? _g2058620588_
                                                         _id20545_))
                                                  _e2055820584_)
                                                 (_K2055420572_)
                                                 (_else2055220568_)))
                                           (_else2055220568_)))))
                                 (_else2055220568_)))))))
                   (##structure-ref _ctx20544_ '9 gx#module-context::t '#f))))
        (if _$e20591_ (gx#core-resolve-module-export _$e20591_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx20536_ _id20537_)
      (let ((_$e20539_ (gxc#find-export-binding _ctx20536_ _id20537_)))
        (if _$e20539_
            ((lambda (_bind20542_)
               (begin
                 (if (##structure-instance-of?
                      _bind20542_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id20537_))
                 (##structure-ref _bind20542_ '1 gx#binding::t '#f)))
             _$e20539_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx20536_ '1 gx#expander-context::t '#f)
             _id20537_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx20474_)
      (let ((_ht20476_ (make-hash-table-eq)))
        (letrec ((_find-deps20477_
                  (lambda (_rest20484_ _deps20485_)
                    (let ((_rest2048620494_ _rest20484_))
                      (let ((_E2048920498_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest2048620494_))))
                        (let ((_else2048820502_ (lambda () _deps20485_)))
                          (let ((_K2049020524_
                                 (lambda (_rest20505_ _hd20506_)
                                   (if (##structure-instance-of?
                                        _hd20506_
                                        'gx#module-context::t)
                                       (let ((_id20508_
                                              (##structure-ref
                                               _hd20506_
                                               '1
                                               gx#expander-context::t
                                               '#f))
                                             (_imports20509_
                                              (##structure-ref
                                               _hd20506_
                                               '8
                                               gx#module-context::t
                                               '#f)))
                                         (if (table-ref
                                              _ht20476_
                                              _id20508_
                                              '#f)
                                             (_find-deps20477_
                                              _rest20505_
                                              _deps20485_)
                                             (let ((_$e20511_
                                                    (gx#core-context-prelude__opt-lambda11357
                                                     _hd20506_)))
                                               (if _$e20511_
                                                   ((lambda (_pre20514_)
                                                      (let ((_xdeps20516_
                                                             (_find-deps20477_
                                                              (cons _pre20514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _imports20509_)
                      _deps20485_)))
                (begin
                  (table-set! _ht20476_ _id20508_ _hd20506_)
                  (_find-deps20477_
                   _rest20505_
                   (cons _hd20506_ _xdeps20516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e20511_)
                                                   (let ((_xdeps20518_
                                                          (_find-deps20477_
                                                           _imports20509_
                                                           _deps20485_)))
                                                     (begin
                                                       (table-set!
                                                        _ht20476_
                                                        _id20508_
                                                        _hd20506_)
                                                       (_find-deps20477_
                                                        _rest20505_
                                                        (cons _hd20506_
                                                              _xdeps20518_))))))))
                                       (if (##structure-instance-of?
                                            _hd20506_
                                            'gx#prelude-context::t)
                                           (let ((_id20520_
                                                  (##structure-ref
                                                   _hd20506_
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)))
                                             (if (table-ref
                                                  _ht20476_
                                                  _id20520_
                                                  '#f)
                                                 (_find-deps20477_
                                                  _rest20505_
                                                  _deps20485_)
                                                 (let ((_xdeps20522_
                                                        (_find-deps20477_
                                                         (##structure-ref
                                                          _hd20506_
                                                          '7
                                                          gx#prelude-context::t
                                                          '#f)
                                                         _deps20485_)))
                                                   (if (table-ref
                                                        _ht20476_
                                                        _id20520_
                                                        '#f)
                                                       (_find-deps20477_
                                                        _rest20505_
                                                        _xdeps20522_)
                                                       (begin
                                                         (table-set!
                                                          _ht20476_
                                                          _id20520_
                                                          _hd20506_)
                                                         (_find-deps20477_
                                                          _rest20505_
                                                          (cons _hd20506_
                                                                _xdeps20522_)))))))
                                           (if (##structure-direct-instance-of?
                                                _hd20506_
                                                'gx#module-import::t)
                                               (if (fxzero? (##direct-structure-ref
                                                             _hd20506_
                                                             '3
                                                             gx#module-import::t
                                                             '#f))
                                                   (_find-deps20477_
                                                    (cons (##direct-structure-ref
                                                           _hd20506_
                                                           '1
                                                           gx#module-import::t
                                                           '#f)
                                                          _rest20505_)
                                                    _deps20485_)
                                                   (_find-deps20477_
                                                    _rest20505_
                                                    _deps20485_))
                                               (if (##structure-direct-instance-of?
                                                    _hd20506_
                                                    'gx#module-export::t)
                                                   (_find-deps20477_
                                                    (cons (##direct-structure-ref
                                                           _hd20506_
                                                           '1
                                                           gx#module-export::t
                                                           '#f)
                                                          _rest20505_)
                                                    _deps20485_)
                                                   (if (##structure-direct-instance-of?
                                                        _hd20506_
                                                        'gx#import-set::t)
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd20506_
                             '3
                             gx#module-import::t
                             '#f))
                   (_find-deps20477_
                    (cons (##direct-structure-ref
                           _hd20506_
                           '1
                           gx#import-set::t
                           '#f)
                          _rest20505_)
                    _deps20485_)
                   (_find-deps20477_ _rest20505_ _deps20485_))
               (error '"Unexpected module import" _hd20506_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (##pair? _rest2048620494_)
                                (let ((_hd2049120527_ (##car _rest2048620494_))
                                      (_tl2049220529_
                                       (##cdr _rest2048620494_)))
                                  (let ((_hd20532_ _hd2049120527_))
                                    (let ((_rest20534_ _tl2049220529_))
                                      (_K2049020524_ _rest20534_ _hd20532_))))
                                (_else2048820502_)))))))))
          (reverse (filter gx#expander-context-id
                           (_find-deps20477_
                            (let ((_$e20479_
                                   (gx#core-context-prelude__opt-lambda11357
                                    _ctx20474_)))
                              (if _$e20479_
                                  ((lambda (_pre20482_)
                                     (cons _pre20482_
                                           (##structure-ref
                                            _ctx20474_
                                            '8
                                            gx#module-context::t
                                            '#f)))
                                   _$e20479_)
                                  (##structure-ref
                                   _ctx20474_
                                   '8
                                   gx#module-context::t
                                   '#f)))
                            '())))))))
  (define gxc#find-static-module-file
    (lambda (_ctx20413_)
      (let ((_scm20415_
             (string-append
              (gxc#static-module-name
               (##structure-ref _ctx20413_ '1 gx#expander-context::t '#f))
              '".scm")))
        (let ((_dirs20417_ (gx#current-expander-module-library-path)))
          (let ((_dirs20426_
                 (let ((_$e20419_ (gxc#current-compile-output-dir)))
                   (if _$e20419_
                       ((lambda (_g2042120423_)
                          (cons _g2042120423_ _dirs20417_))
                        _$e20419_)
                       _dirs20417_))))
            (let ((_dirs20432_
                   (map (lambda (_g2042720429_)
                          (path-expand '"static" _g2042720429_))
                        _dirs20426_)))
              (let ()
                ((letrec ((_lp20435_
                           (lambda (_rest20437_)
                             (let ((_rest2043820446_ _rest20437_))
                               (let ((_E2044120450_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _rest2043820446_))))
                                 (let ((_else2044020454_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"cannot find static module"
                                           (##structure-ref
                                            _ctx20413_
                                            '1
                                            gx#expander-context::t
                                            '#f)
                                           _scm20415_))))
                                   (let ((_K2044220462_
                                          (lambda (_rest20457_ _dir20458_)
                                            (let ((_path20460_
                                                   (path-expand
                                                    _scm20415_
                                                    _dir20458_)))
                                              (if (file-exists? _path20460_)
                                                  _path20460_
                                                  (_lp20435_ _rest20457_))))))
                                     (if (##pair? _rest2043820446_)
                                         (let ((_hd2044320465_
                                                (##car _rest2043820446_))
                                               (_tl2044420467_
                                                (##cdr _rest2043820446_)))
                                           (let ((_dir20470_ _hd2044320465_))
                                             (let ((_rest20472_
                                                    _tl2044420467_))
                                               (_K2044220462_
                                                _rest20472_
                                                _dir20470_))))
                                         (_else2044020454_)))))))))
                   _lp20435_)
                 _dirs20432_))))))))
  (define gxc#file-empty?
    (lambda (_path20411_)
      (zero? (file-info-size (file-info _path20411_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx20408_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx20408_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx20408_)
               '#!void)
           (gxc#collect-bindings _ctx20408_)
           (gxc#compile-runtime-code _ctx20408_)
           (gxc#compile-meta-code _ctx20408_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx20408_)
               '#!void)))
       gx#current-expander-context
       _ctx20408_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj20770 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj20770) __obj20770))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx20406_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx20406_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx20365_)
      (let ((_generate-runtime-code20368_
             (lambda (_ctx20383_ _code20384_)
               (let ((_runtime-code20387_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code20384_))
                       gx#current-expander-context
                       _ctx20383_)))
                 (let ((_scm020389_
                        (gxc#compile-output-file _ctx20383_ '0 '".scm")))
                   (let ()
                     (if (gxc#current-compile-static)
                         (let ((_scms20392_
                                (gxc#compile-static-output-file _ctx20383_)))
                           (begin
                             (call-with-parameters
                              (lambda ()
                                (gxc#compile-scm-file
                                 _scm020389_
                                 _runtime-code20387_))
                              gxc#current-compile-keep-scm
                              '#t)
                             (if (file-exists? _scms20392_)
                                 (delete-file _scms20392_)
                                 '#!void)
                             (gxc#verbose
                              '"copy static module "
                              _scm020389_
                              '" => "
                              _scms20392_)
                             (copy-file _scm020389_ _scms20392_)
                             (if (gxc#current-compile-keep-scm)
                                 '#!void
                                 (delete-file _scm020389_))))
                         (gxc#compile-scm-file
                          _scm020389_
                          _runtime-code20387_))))))))
        (let ((_generate-loader-code20369_
               (lambda (_ctx20373_ _code20374_ _rt20375_)
                 (let ((_loader-code20378_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code20374_))
                         gx#current-expander-context
                         _ctx20373_)))
                   (let ((_loader-code20380_
                          (if _rt20375_
                              (cons 'begin
                                    (cons _loader-code20378_
                                          (cons (cons 'load-module
                                                      (cons _rt20375_ '()))
                                                '())))
                              _loader-code20378_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx20373_ 'rt '".scm")
                        _loader-code20380_)))))))
          (let ((_compile120367_
                 (lambda (_ctx20395_)
                   (let ((_code20397_
                          (##structure-ref
                           _ctx20395_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt20401_
                            (if (gxc#apply-find-runtime-code _code20397_)
                                (let ((_idstr20399_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx20395_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr20399_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt20401_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx20395_
                                  _rt20401_)
                                 (_generate-runtime-code20368_
                                  _ctx20395_
                                  _code20397_))
                               (if (gxc#current-compile-static)
                                   (let ((_path20404_
                                          (gxc#compile-static-output-file
                                           _ctx20395_)))
                                     (with-output-to-file
                                      (cons 'path:
                                            (cons _path20404_
                                                  (cons 'permissions:
                                                        (cons '420 '()))))
                                      void))
                                   '#!void))
                           (_generate-loader-code20369_
                            _ctx20395_
                            _code20397_
                            _rt20401_))))))))
            (let ((_all-modules20371_
                   (cons _ctx20365_ (gxc#lift-nested-modules _ctx20365_))))
              (for-each _compile120367_ _all-modules20371_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx20267_)
      (let ((_compile-ssi20269_
             (lambda (_code20335_)
               (let ((_path20337_
                      (gxc#compile-output-file _ctx20267_ '#f '".ssi")))
                 (let ((_prelude20348_
                        (let ((_super20339_
                               (##structure-ref
                                _ctx20267_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e20341_
                                 (##structure-ref
                                  _super20339_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e20341_
                                ((lambda (_g2034320345_)
                                   (make-symbol '":" _g2034320345_))
                                 _$e20341_)
                                ':<root>)))))
                   (let ((_ns20350_
                          (##structure-ref
                           _ctx20267_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr20352_
                            (symbol->string
                             (##structure-ref
                              _ctx20267_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg20359_
                              (let ((_$e20354_
                                     (string-rindex _idstr20352_ '#\/)))
                                (if _$e20354_
                                    ((lambda (_x20357_)
                                       (string->symbol
                                        (substring _idstr20352_ '0 _x20357_)))
                                     _$e20354_)
                                    '#f))))
                         (let ((_rt20361_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx20267_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path20337_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path20337_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude20348_)
                                    (if _pkg20359_
                                        (displayln '"package:" '" " _pkg20359_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns20350_)
                                    (newline)
                                    (pretty-print _code20335_)
                                    (if _rt20361_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt20361_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi20270_
               (lambda (_part20275_)
                 (let ((_part2027620289_ _part20275_))
                   (let ((_E2027820293_
                          (lambda ()
                            (error '"No clause matching" _part2027620289_))))
                     (let ((_K2027920304_
                            (lambda (_code20296_
                                     _n20297_
                                     _phi20298_
                                     _phi-ctx20299_)
                              (let ((_code20302_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code20296_))
                                      gx#current-expander-context
                                      _phi-ctx20299_
                                      gx#current-expander-phi
                                      _phi20298_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx20267_
                                  _n20297_
                                  '".scm")
                                 _code20302_)))))
                       (if (##pair? _part2027620289_)
                           (let ((_hd2028020307_ (##car _part2027620289_))
                                 (_tl2028120309_ (##cdr _part2027620289_)))
                             (let ((_phi-ctx20312_ _hd2028020307_))
                               (if (##pair? _tl2028120309_)
                                   (let ((_hd2028220314_
                                          (##car _tl2028120309_))
                                         (_tl2028320316_
                                          (##cdr _tl2028120309_)))
                                     (let ((_phi20319_ _hd2028220314_))
                                       (if (##pair? _tl2028320316_)
                                           (let ((_hd2028420321_
                                                  (##car _tl2028320316_))
                                                 (_tl2028520323_
                                                  (##cdr _tl2028320316_)))
                                             (let ((_n20326_ _hd2028420321_))
                                               (if (##pair? _tl2028520323_)
                                                   (let ((_hd2028620328_
                                                          (##car _tl2028520323_))
                                                         (_tl2028720330_
                                                          (##cdr _tl2028520323_)))
                                                     (let ((_code20333_
                                                            _hd2028620328_))
                                                       (if (##null? _tl2028720330_)
                                                           (_K2027920304_
                                                            _code20333_
                                                            _n20326_
                                                            _phi20319_
                                                            _phi-ctx20312_)
                                                           (_E2027820293_))))
                                                   (_E2027820293_))))
                                           (_E2027820293_))))
                                   (_E2027820293_))))
                           (_E2027820293_))))))))
          (let ((_g20780_ (gxc#generate-meta-code _ctx20267_)))
            (begin
              (let ((_g20781_ (values-count _g20780_)))
                (if (not (fx= _g20781_ 2))
                    (error "Context expects 2 values" _g20781_)))
              (let ((_ssi-code20272_ (values-ref _g20780_ 0))
                    (_phi-code20273_ (values-ref _g20780_ 1)))
                (begin
                  (_compile-ssi20269_ _ssi-code20272_)
                  (for-each _compile-phi20270_ _phi-code20273_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx20250_)
      (let ((_path20252_ (gxc#compile-output-file _ctx20250_ '#f '".ssxi.ss")))
        (let ((_code20254_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx20250_ '11 gx#module-context::t '#f))))
          (let ((_idstr20256_
                 (symbol->string
                  (##structure-ref _ctx20250_ '1 gx#expander-context::t '#f))))
            (let ((_pkg20263_
                   (let ((_$e20258_ (string-rindex _idstr20256_ '#\/)))
                     (if _$e20258_
                         ((lambda (_x20261_)
                            (string->symbol
                             (substring _idstr20256_ '0 _x20261_)))
                          _$e20258_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path20252_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path20252_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg20263_
                           (displayln '"package: " _pkg20263_)
                           '#!void)
                       (newline)
                       (pretty-print _code20254_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx20243_)
      (let ((_state20245_
             (let ((__obj20771 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj20771 _ctx20243_)
                 __obj20771))))
        (let ((_ssi-code20247_
               (gxc#apply-generate-meta
                (##structure-ref _ctx20243_ '11 gx#module-context::t '#f)
                _state20245_)))
          (let ()
            (values _ssi-code20247_ (gxc#meta-state-end! _state20245_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx20236_)
      (let ((_lifts20238_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code20241_ (gxc#apply-generate-runtime-phi _stx20236_)))
             (if (null? (unbox _lifts20238_))
                 _code20241_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code20241_ '())
                               (reverse (unbox _lifts20238_)))))))
         gxc#current-compile-lift
         _lifts20238_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx20232_)
      (let ((_modules20234_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx20232_ '11 gx#module-context::t '#f)
           _modules20234_)
          (reverse (unbox _modules20234_))))))
  (define gxc#compile-scm-file
    (lambda (_path20228_ _code20229_)
      (begin
        (gxc#verbose '"compile " _path20228_)
        (with-output-to-file
         (cons 'path: (cons _path20228_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code20229_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path20228_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path20228_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e20220_ (gxc#current-compile-debug)))
        (if _$e20220_
            ((lambda (_debug20223_)
               (let ((_$e20225_ _debug20223_))
                 (if (eq? _$e20225_ 'env)
                     (cons '"-debug-environments" '())
                     (if (eq? _$e20225_ 'src)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (memq _$e20225_ '(all #t))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug20223_))))))
             _$e20220_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path20202_)
      (let ((_gsc-args20209_
             (let ((_$e20204_ (gxc#current-compile-gsc-options)))
               (if _$e20204_
                   ((lambda (_opts20207_)
                      (foldr1 cons (cons _path20202_ '()) _opts20207_))
                    _$e20204_)
                   (cons _path20202_ '())))))
        (let ((_gsc-args20211_
               (foldr1 cons _gsc-args20209_ (gxc#gsc-debug-options))))
          (let ((_g20782_
                 (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args20211_))))
            (let ((_proc20214_
                   (open-process
                    (cons 'path:
                          (cons '"gsc"
                                (cons 'arguments:
                                      (cons _gsc-args20211_
                                            (cons 'stdout-redirection:
                                                  (cons '#f '())))))))))
              (let ((_status20216_ (process-status _proc20214_)))
                (let ()
                  (if (zero? _status20216_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Compilation error; gsc exit with nonzero status"
                       _path20202_
                       _status20216_))))))))))
  (define gxc#compile-output-file
    (lambda (_ctx20174_ _n20175_ _ext20176_)
      (let ((_module-relative-path20178_
             (lambda (_ctx20200_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx20200_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory20179_
               (lambda (_ctx20196_)
                 (path-directory
                  (let ((_mpath20198_
                         (##structure-ref
                          _ctx20196_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath20198_)
                        _mpath20198_
                        (last _mpath20198_)))))))
          (let ((_section-string20180_
                 (lambda (_n20194_)
                   (if (number? _n20194_)
                       (number->string _n20194_)
                       (if (symbol? _n20194_)
                           (symbol->string _n20194_)
                           (if (string? _n20194_)
                               _n20194_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n20194_)))))))
            (let ((_file-name20181_
                   (lambda (_path20192_)
                     (if _n20175_
                         (string-append
                          _path20192_
                          '"__"
                          (_section-string20180_ _n20175_)
                          _ext20176_)
                         (string-append _path20192_ _ext20176_)))))
              (let ((_file-path20182_
                     (lambda ()
                       (let ((_$e20187_ (gxc#current-compile-output-dir)))
                         (if _$e20187_
                             ((lambda (_outdir20190_)
                                (path-expand
                                 (_file-name20181_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx20174_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir20190_))
                              _$e20187_)
                             (path-expand
                              (_file-name20181_
                               (_module-relative-path20178_ _ctx20174_))
                              (_module-source-directory20179_ _ctx20174_)))))))
                (let ((_path20184_ (_file-path20182_)))
                  (begin
                    (create-directory* (path-directory _path20184_))
                    _path20184_)))))))))
  (define gxc#compile-static-output-file
    (lambda (_ctx20157_)
      (let ((_file-name20159_
             (lambda (_idstr20172_)
               (string-append (gxc#static-module-name _idstr20172_) '".scm"))))
        (let ((_file-path20160_
               (lambda ()
                 (let ((_file20165_
                        (_file-name20159_
                         (symbol->string
                          (##structure-ref
                           _ctx20157_
                           '1
                           gx#expander-context::t
                           '#f)))))
                   (let ((_$e20167_ (gxc#current-compile-output-dir)))
                     (if _$e20167_
                         ((lambda (_outdir20170_)
                            (path-expand
                             _file20165_
                             (path-expand '"static" _outdir20170_)))
                          _$e20167_)
                         (path-expand _file20165_ '"static")))))))
          (let ((_path20162_ (_file-path20160_)))
            (begin
              (create-directory* (path-directory _path20162_))
              _path20162_))))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx20144_ _opts20145_)
      (let ((_$e20147_ (pgetq 'output-file: _opts20145_)))
        (if _$e20147_
            (values _$e20147_)
            (let ((_mod-str20150_
                   (symbol->string
                    (##structure-ref
                     _ctx20144_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let ((_$e20152_ (string-rindex _mod-str20150_ '#\/)))
                (if _$e20152_
                    ((lambda (_ix20155_)
                       (substring
                        _mod-str20150_
                        (fx+ _ix20155_ '1)
                        (string-length _mod-str20150_)))
                     _$e20152_)
                    _mod-str20150_)))))))
  (define gxc#static-module-name
    (lambda (_idstr20140_)
      (if (string? _idstr20140_)
          (let ((_strs20142_ (string-split _idstr20140_ '#\/)))
            (string-join _strs20142_ '"__"))
          (if (symbol? _idstr20140_)
              (gxc#static-module-name (symbol->string _idstr20140_))
              (error '"Bad module id" _idstr20140_))))))
