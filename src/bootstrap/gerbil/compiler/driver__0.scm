(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda20728
      (lambda (_srcpath20730_ _opts20731_)
        (begin
          (if (string? _srcpath20730_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath20730_))
          (let ((_outdir20733_ (pgetq 'output-dir: _opts20731_))
                (_invoke-gsc?20734_ (pgetq 'invoke-gsc: _opts20731_))
                (_gsc-options20735_ (pgetq 'gsc-options: _opts20731_))
                (_keep-scm?20736_ (pgetq 'keep-scm: _opts20731_))
                (_verbosity20737_ (pgetq 'verbose: _opts20731_))
                (_optimize20738_ (pgetq 'optimize: _opts20731_))
                (_gen-ssxi20739_ (pgetq 'generate-ssxi: _opts20731_))
                (_static20740_ (pgetq 'static: _opts20731_)))
            (begin
              (if _outdir20733_ (create-directory* _outdir20733_) '#!void)
              (if _optimize20738_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath20730_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath20730_))))
               gxc#current-compile-output-dir
               _outdir20733_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?20734_
               gxc#current-compile-gsc-options
               _gsc-options20735_
               gxc#current-compile-keep-scm
               _keep-scm?20736_
               gxc#current-compile-verbose
               _verbosity20737_
               gxc#current-compile-optimize
               _optimize20738_
               gxc#current-compile-generate-ssxi
               _gen-ssxi20739_
               gxc#current-compile-static
               _static20740_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath20746_)
          (let ((_opts20748_ '()))
            (gxc#compile-file__opt-lambda20728 _srcpath20746_ _opts20748_))))
      (define gxc#compile-file
        (lambda _g20756_
          (let ((_g20755_ (length _g20756_)))
            (cond ((fx= _g20755_ 1) (apply gxc#compile-file__0 _g20756_))
                  ((fx= _g20755_ 2)
                   (apply gxc#compile-file__opt-lambda20728 _g20756_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g20756_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda20714
      (lambda (_srcpath20716_ _opts20717_)
        (gxc#do-compile-exe
         _srcpath20716_
         _opts20717_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath20722_)
          (let ((_opts20724_ '()))
            (gxc#compile-exe-stub__opt-lambda20714
             _srcpath20722_
             _opts20724_))))
      (define gxc#compile-exe-stub
        (lambda _g20758_
          (let ((_g20757_ (length _g20758_)))
            (cond ((fx= _g20757_ 1) (apply gxc#compile-exe-stub__0 _g20758_))
                  ((fx= _g20757_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda20714 _g20758_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g20758_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda20700
      (lambda (_srcpath20702_ _opts20703_)
        (gxc#do-compile-exe
         _srcpath20702_
         _opts20703_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath20708_)
          (let ((_opts20710_ '()))
            (gxc#compile-static-exe__opt-lambda20700
             _srcpath20708_
             _opts20710_))))
      (define gxc#compile-static-exe
        (lambda _g20760_
          (let ((_g20759_ (length _g20760_)))
            (cond ((fx= _g20759_ 1) (apply gxc#compile-static-exe__0 _g20760_))
                  ((fx= _g20759_ 2)
                   (apply gxc#compile-static-exe__opt-lambda20700 _g20760_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g20760_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath20690_ _opts20691_ _compile-e20692_)
      (begin
        (if (string? _srcpath20690_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath20690_))
        (let ((_outdir20694_ (pgetq 'output-dir: _opts20691_))
              (_invoke-gsc?20695_ (pgetq 'invoke-gsc: _opts20691_))
              (_gsc-options20696_ (pgetq 'gsc-options: _opts20691_))
              (_keep-scm?20697_ (pgetq 'keep-scm: _opts20691_))
              (_verbosity20698_ (pgetq 'verbose: _opts20691_)))
          (begin
            (if _outdir20694_ (create-directory* _outdir20694_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath20690_)
                 (_compile-e20692_
                  (gx#import-module__0 _srcpath20690_)
                  _opts20691_)))
             gxc#current-compile-output-dir
             _outdir20694_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?20695_
             gxc#current-compile-gsc-options
             _gsc-options20696_
             gxc#current-compile-keep-scm
             _keep-scm?20697_
             gxc#current-compile-verbose
             _verbosity20698_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx20654_ _opts20655_)
      (let ((_generate-stub20657_
             (lambda ()
               (let ((_mod-str20683_
                      (symbol->string
                       (##structure-ref
                        _ctx20654_
                        '1
                        gx#expander-context::t
                        '#f))))
                 (let ((_mod-rt20685_ (string-append _mod-str20683_ '"__rt")))
                   (let ((_mod-main20687_
                          (gxc#find-runtime-symbol _ctx20654_ 'main)))
                     (let ()
                       (begin
                         (write '(##namespace ("")))
                         (newline)
                         (write (cons '_gx#start!
                                      (cons _mod-rt20685_
                                            (cons (cons 'quote
                                                        (cons _mod-main20687_
                                                              '()))
                                                  '()))))
                         (newline)))))))))
        (let ((_compile-stub20658_
               (lambda (_output-scm20665_ _output-bin20666_)
                 (let ((_init-stub20668_
                        (path-expand
                         '"lib/gx-init-exe.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gxc-cache20670_ (gxc#compile-cache-directory)))
                     (let ((_init-stub20672_
                            (gxc#compile-cache
                             _init-stub20668_
                             _gxc-cache20670_)))
                       (let ((_gsc-args20674_
                              (cons '"-exe"
                                    (cons '"-o"
                                          (cons _output-bin20666_
                                                (cons _init-stub20672_
                                                      (cons _output-scm20665_
                                                            '())))))))
                         (let ((_g20761_
                                (gxc#verbose
                                 '"invoke gsc "
                                 (cons 'gsc _gsc-args20674_))))
                           (let ((_proc20677_
                                  (open-process
                                   (cons 'path:
                                         (cons '"gsc"
                                               (cons 'arguments:
                                                     (cons _gsc-args20674_
                                                           (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (let ((_status20679_
                                    (process-status _proc20677_)))
                               (let ()
                                 (if (zero? _status20679_)
                                     '#!void
                                     (gxc#raise-compile-error
                                      '"Compilation error; gsc exit with nonzero status"
                                      _output-scm20665_
                                      _output-bin20666_
                                      _status20679_)))))))))))))
          (let ((_output-bin20660_
                 (gxc#compile-exe-output-file _ctx20654_ _opts20655_)))
            (let ((_output-scm20662_
                   (string-append _output-bin20660_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20662_ _generate-stub20657_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20658_ _output-scm20662_ _output-bin20660_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20662_))))))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx20589_ _opts20590_)
      (let ((_generate-stub20592_
             (lambda ()
               (let ((_mod-main20652_
                      (gxc#find-runtime-symbol _ctx20589_ 'main)))
                 (begin
                   (write '(##namespace ("")))
                   (newline)
                   (write (cons 'apply
                                (cons _mod-main20652_
                                      (cons (cons 'cdr
                                                  (cons (cons 'command-line
                                                              '())
                                                        '()))
                                            '()))))
                   (newline))))))
        (let ((_compile-stub20593_
               (lambda (_output-scm20600_ _output-bin20601_)
                 (let ((_gerbil-home20603_ (getenv '"GERBIL_HOME")))
                   (let ((_gx-gambc020605_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home20603_)))
                     (let ((_gx-gambc-init20607_
                            (path-expand
                             '"lib/gx-init-static-exe.scm"
                             _gerbil-home20603_)))
                       (let ((_gx-gambc-macros20609_
                              (path-expand
                               '"lib/static/gx-gambc#.scm"
                               _gerbil-home20603_)))
                         (let ((_include-gx-gambc-macros20611_
                                (string-append
                                 '"(include \""
                                 _gx-gambc-macros20609_
                                 '"\")")))
                           (let ((_bin-scm20613_
                                  (gxc#find-static-module-file _ctx20589_)))
                             (let ((_deps20615_
                                    (gxc#find-runtime-module-deps _ctx20589_)))
                               (let ((_deps20617_
                                      (map gxc#find-static-module-file
                                           _deps20615_)))
                                 (let ((_deps20622_
                                        (filter (lambda (_$obj20619_)
                                                  (not (gxc#file-empty?
                                                        _$obj20619_)))
                                                _deps20617_)))
                                   (let ((_gxc-cache20624_
                                          (gxc#compile-cache-directory)))
                                     (let ((_gx-gambc020626_
                                            (gxc#compile-cache
                                             _gx-gambc020605_
                                             _gxc-cache20624_)))
                                       (let ((_gx-gambc-init20628_
                                              (gxc#compile-cache
                                               _gx-gambc-init20607_
                                               _gxc-cache20624_)))
                                         (let ((_deps20634_
                                                (map (lambda (_g2062920631_)
                                                       (gxc#compile-cache
                                                        _g2062920631_
                                                        _gxc-cache20624_))
                                                     _deps20622_)))
                                           (let ((_bin-scm20636_
                                                  (gxc#compile-cache
                                                   _bin-scm20613_
                                                   _gxc-cache20624_)))
                                             (let ((_gsc-opts20641_
                                                    (let ((_$e20638_
                                                           (pgetq 'gsc-options:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opts20590_)))
              (if _$e20638_ _$e20638_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_gsc-args20643_
                                                      (cons '"-exe"
                                                            (cons '"-o"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _output-bin20601_
                                (foldr1 cons
                                        (cons '"-e"
                                              (cons _include-gx-gambc-macros20611_
                                                    (cons _gx-gambc020626_
                                                          (cons _gx-gambc-init20628_
                                                                (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _bin-scm20636_
                                      (cons _output-scm20600_ '()))
                                _deps20634_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _gsc-opts20641_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g20762_
                                                        (gxc#verbose
                                                         '"invoke gsc "
                                                         (cons 'gsc
                                                               _gsc-args20643_))))
                                                   (let ((_proc20646_
                                                          (open-process
                                                           (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '"gsc"
                               (cons 'arguments:
                                     (cons _gsc-args20643_
                                           (cons 'stdout-redirection:
                                                 (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_status20648_
                                                            (process-status
                                                             _proc20646_)))
                                                       (let ()
                                                         (if (zero? _status20648_)
                                                             '#!void
                                                             (gxc#raise-compile-error
                                                              '"Compilation error; gsc exit with nonzero status"
                                                              _output-scm20600_
                                                              _output-bin20601_
                                                              _status20648_)))))))))))))))))))))))))
          (let ((_output-bin20595_
                 (gxc#compile-exe-output-file _ctx20589_ _opts20590_)))
            (let ((_output-scm20597_
                   (string-append _output-bin20595_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20597_ _generate-stub20592_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20593_ _output-scm20597_ _output-bin20595_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20597_))))))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let ((_cachedir20584_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil")))
        (let ((_gxc-cache20586_ (path-expand '"gxc" _cachedir20584_)))
          (let ()
            (begin
              (create-directory* _gxc-cache20586_)
              (path-normalize _gxc-cache20586_)))))))
  (define gxc#compile-cache
    (lambda (_file20578_ _gxc-cache20579_)
      (let ((_cachefile20581_
             (path-expand
              (path-strip-directory _file20578_)
              _gxc-cache20579_)))
        (begin
          (if (file-exists? _cachefile20581_)
              (if (file-newer? _file20578_ _cachefile20581_)
                  (begin
                    (delete-file _cachefile20581_)
                    (copy-file _file20578_ _cachefile20581_))
                  '#!void)
              (copy-file _file20578_ _cachefile20581_))
          _cachefile20581_))))
  (define gxc#find-export-binding
    (lambda (_ctx20528_ _id20529_)
      (let ((_$e20575_
             (find (lambda (_e2053020532_)
                     (let ((_g2053420544_ _e2053020532_))
                       (let ((_E2053720548_
                              (lambda ()
                                (error '"No clause matching" _g2053420544_))))
                         (let ((_else2053620552_ (lambda () '#f)))
                           (let ((_K2053820556_ (lambda () '#t)))
                             (if (##structure-direct-instance-of?
                                  _g2053420544_
                                  (##type-id gx#module-export::t))
                                 (let ((_e2053920559_
                                        (##vector-ref _g2053420544_ '1)))
                                   (let ((_e2054020562_
                                          (##vector-ref _g2053420544_ '2)))
                                     (let ((_e2054120565_
                                            (##vector-ref _g2053420544_ '3)))
                                       (if (##eq? _e2054120565_ '0)
                                           (let ((_e2054220568_
                                                  (##vector-ref
                                                   _g2053420544_
                                                   '4)))
                                             (if ((lambda (_g2057020572_)
                                                    (eq? _g2057020572_
                                                         _id20529_))
                                                  _e2054220568_)
                                                 (_K2053820556_)
                                                 (_else2053620552_)))
                                           (_else2053620552_)))))
                                 (_else2053620552_)))))))
                   (##structure-ref _ctx20528_ '9 gx#module-context::t '#f))))
        (if _$e20575_ (gx#core-resolve-module-export _$e20575_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx20520_ _id20521_)
      (let ((_$e20523_ (gxc#find-export-binding _ctx20520_ _id20521_)))
        (if _$e20523_
            ((lambda (_bind20526_)
               (begin
                 (if (##structure-instance-of?
                      _bind20526_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id20521_))
                 (##structure-ref _bind20526_ '1 gx#binding::t '#f)))
             _$e20523_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx20520_ '1 gx#expander-context::t '#f)
             _id20521_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx20458_)
      (let ((_ht20460_ (make-hash-table-eq)))
        (letrec ((_find-deps20461_
                  (lambda (_rest20468_ _deps20469_)
                    (let ((_rest2047020478_ _rest20468_))
                      (let ((_E2047320482_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest2047020478_))))
                        (let ((_else2047220486_ (lambda () _deps20469_)))
                          (let ((_K2047420508_
                                 (lambda (_rest20489_ _hd20490_)
                                   (if (##structure-instance-of?
                                        _hd20490_
                                        'gx#module-context::t)
                                       (let ((_id20492_
                                              (##structure-ref
                                               _hd20490_
                                               '1
                                               gx#expander-context::t
                                               '#f))
                                             (_imports20493_
                                              (##structure-ref
                                               _hd20490_
                                               '8
                                               gx#module-context::t
                                               '#f)))
                                         (if (table-ref
                                              _ht20460_
                                              _id20492_
                                              '#f)
                                             (_find-deps20461_
                                              _rest20489_
                                              _deps20469_)
                                             (let ((_$e20495_
                                                    (gx#core-context-prelude__opt-lambda11357
                                                     _hd20490_)))
                                               (if _$e20495_
                                                   ((lambda (_pre20498_)
                                                      (let ((_xdeps20500_
                                                             (_find-deps20461_
                                                              (cons _pre20498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _imports20493_)
                      _deps20469_)))
                (begin
                  (table-set! _ht20460_ _id20492_ _hd20490_)
                  (_find-deps20461_
                   _rest20489_
                   (cons _hd20490_ _xdeps20500_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e20495_)
                                                   (let ((_xdeps20502_
                                                          (_find-deps20461_
                                                           _imports20493_
                                                           _deps20469_)))
                                                     (begin
                                                       (table-set!
                                                        _ht20460_
                                                        _id20492_
                                                        _hd20490_)
                                                       (_find-deps20461_
                                                        _rest20489_
                                                        (cons _hd20490_
                                                              _xdeps20502_))))))))
                                       (if (##structure-instance-of?
                                            _hd20490_
                                            'gx#prelude-context::t)
                                           (let ((_id20504_
                                                  (##structure-ref
                                                   _hd20490_
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)))
                                             (if (table-ref
                                                  _ht20460_
                                                  _id20504_
                                                  '#f)
                                                 (_find-deps20461_
                                                  _rest20489_
                                                  _deps20469_)
                                                 (let ((_xdeps20506_
                                                        (_find-deps20461_
                                                         (##structure-ref
                                                          _hd20490_
                                                          '7
                                                          gx#prelude-context::t
                                                          '#f)
                                                         _deps20469_)))
                                                   (if (table-ref
                                                        _ht20460_
                                                        _id20504_
                                                        '#f)
                                                       (_find-deps20461_
                                                        _rest20489_
                                                        _xdeps20506_)
                                                       (begin
                                                         (table-set!
                                                          _ht20460_
                                                          _id20504_
                                                          _hd20490_)
                                                         (_find-deps20461_
                                                          _rest20489_
                                                          (cons _hd20490_
                                                                _xdeps20506_)))))))
                                           (if (##structure-direct-instance-of?
                                                _hd20490_
                                                'gx#module-import::t)
                                               (if (fxzero? (##direct-structure-ref
                                                             _hd20490_
                                                             '3
                                                             gx#module-import::t
                                                             '#f))
                                                   (_find-deps20461_
                                                    (cons (##direct-structure-ref
                                                           _hd20490_
                                                           '1
                                                           gx#module-import::t
                                                           '#f)
                                                          _rest20489_)
                                                    _deps20469_)
                                                   (_find-deps20461_
                                                    _rest20489_
                                                    _deps20469_))
                                               (if (##structure-direct-instance-of?
                                                    _hd20490_
                                                    'gx#module-export::t)
                                                   (_find-deps20461_
                                                    (cons (##direct-structure-ref
                                                           _hd20490_
                                                           '1
                                                           gx#module-export::t
                                                           '#f)
                                                          _rest20489_)
                                                    _deps20469_)
                                                   (if (##structure-direct-instance-of?
                                                        _hd20490_
                                                        'gx#import-set::t)
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd20490_
                             '3
                             gx#module-import::t
                             '#f))
                   (_find-deps20461_
                    (cons (##direct-structure-ref
                           _hd20490_
                           '1
                           gx#import-set::t
                           '#f)
                          _rest20489_)
                    _deps20469_)
                   (_find-deps20461_ _rest20489_ _deps20469_))
               (error '"Unexpected module import" _hd20490_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (##pair? _rest2047020478_)
                                (let ((_hd2047520511_ (##car _rest2047020478_))
                                      (_tl2047620513_
                                       (##cdr _rest2047020478_)))
                                  (let ((_hd20516_ _hd2047520511_))
                                    (let ((_rest20518_ _tl2047620513_))
                                      (_K2047420508_ _rest20518_ _hd20516_))))
                                (_else2047220486_)))))))))
          (reverse (filter gx#expander-context-id
                           (_find-deps20461_
                            (let ((_$e20463_
                                   (gx#core-context-prelude__opt-lambda11357
                                    _ctx20458_)))
                              (if _$e20463_
                                  ((lambda (_pre20466_)
                                     (cons _pre20466_
                                           (##structure-ref
                                            _ctx20458_
                                            '8
                                            gx#module-context::t
                                            '#f)))
                                   _$e20463_)
                                  (##structure-ref
                                   _ctx20458_
                                   '8
                                   gx#module-context::t
                                   '#f)))
                            '())))))))
  (define gxc#find-static-module-file
    (lambda (_ctx20397_)
      (let ((_scm20399_
             (string-append
              (gxc#static-module-name
               (##structure-ref _ctx20397_ '1 gx#expander-context::t '#f))
              '".scm")))
        (let ((_dirs20401_ (gx#current-expander-module-library-path)))
          (let ((_dirs20410_
                 (let ((_$e20403_ (gxc#current-compile-output-dir)))
                   (if _$e20403_
                       ((lambda (_g2040520407_)
                          (cons _g2040520407_ _dirs20401_))
                        _$e20403_)
                       _dirs20401_))))
            (let ((_dirs20416_
                   (map (lambda (_g2041120413_)
                          (path-expand '"static" _g2041120413_))
                        _dirs20410_)))
              (let ()
                ((letrec ((_lp20419_
                           (lambda (_rest20421_)
                             (let ((_rest2042220430_ _rest20421_))
                               (let ((_E2042520434_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _rest2042220430_))))
                                 (let ((_else2042420438_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"cannot find static module"
                                           (##structure-ref
                                            _ctx20397_
                                            '1
                                            gx#expander-context::t
                                            '#f)
                                           _scm20399_))))
                                   (let ((_K2042620446_
                                          (lambda (_rest20441_ _dir20442_)
                                            (let ((_path20444_
                                                   (path-expand
                                                    _scm20399_
                                                    _dir20442_)))
                                              (if (file-exists? _path20444_)
                                                  _path20444_
                                                  (_lp20419_ _rest20441_))))))
                                     (if (##pair? _rest2042220430_)
                                         (let ((_hd2042720449_
                                                (##car _rest2042220430_))
                                               (_tl2042820451_
                                                (##cdr _rest2042220430_)))
                                           (let ((_dir20454_ _hd2042720449_))
                                             (let ((_rest20456_
                                                    _tl2042820451_))
                                               (_K2042620446_
                                                _rest20456_
                                                _dir20454_))))
                                         (_else2042420438_)))))))))
                   _lp20419_)
                 _dirs20416_))))))))
  (define gxc#file-empty?
    (lambda (_path20395_)
      (zero? (file-info-size (file-info _path20395_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx20392_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx20392_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx20392_)
               '#!void)
           (gxc#collect-bindings _ctx20392_)
           (gxc#compile-runtime-code _ctx20392_)
           (gxc#compile-meta-code _ctx20392_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx20392_)
               '#!void)))
       gx#current-expander-context
       _ctx20392_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj20753 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj20753) __obj20753))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx20390_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx20390_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx20349_)
      (let ((_generate-runtime-code20352_
             (lambda (_ctx20367_ _code20368_)
               (let ((_runtime-code20371_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code20368_))
                       gx#current-expander-context
                       _ctx20367_)))
                 (let ((_scm020373_
                        (gxc#compile-output-file _ctx20367_ '0 '".scm")))
                   (let ()
                     (if (gxc#current-compile-static)
                         (let ((_scms20376_
                                (gxc#compile-static-output-file _ctx20367_)))
                           (begin
                             (call-with-parameters
                              (lambda ()
                                (gxc#compile-scm-file
                                 _scm020373_
                                 _runtime-code20371_))
                              gxc#current-compile-keep-scm
                              '#t)
                             (if (file-exists? _scms20376_)
                                 (delete-file _scms20376_)
                                 '#!void)
                             (gxc#verbose
                              '"copy static module "
                              _scm020373_
                              '" => "
                              _scms20376_)
                             (copy-file _scm020373_ _scms20376_)
                             (if (gxc#current-compile-keep-scm)
                                 '#!void
                                 (delete-file _scm020373_))))
                         (gxc#compile-scm-file
                          _scm020373_
                          _runtime-code20371_))))))))
        (let ((_generate-loader-code20353_
               (lambda (_ctx20357_ _code20358_ _rt20359_)
                 (let ((_loader-code20362_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code20358_))
                         gx#current-expander-context
                         _ctx20357_)))
                   (let ((_loader-code20364_
                          (if _rt20359_
                              (cons 'begin
                                    (cons _loader-code20362_
                                          (cons (cons 'load-module
                                                      (cons _rt20359_ '()))
                                                '())))
                              _loader-code20362_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx20357_ 'rt '".scm")
                        _loader-code20364_)))))))
          (let ((_compile120351_
                 (lambda (_ctx20379_)
                   (let ((_code20381_
                          (##structure-ref
                           _ctx20379_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt20385_
                            (if (gxc#apply-find-runtime-code _code20381_)
                                (let ((_idstr20383_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx20379_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr20383_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt20385_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx20379_
                                  _rt20385_)
                                 (_generate-runtime-code20352_
                                  _ctx20379_
                                  _code20381_))
                               (if (gxc#current-compile-static)
                                   (let ((_path20388_
                                          (gxc#compile-static-output-file
                                           _ctx20379_)))
                                     (with-output-to-file
                                      (cons 'path:
                                            (cons _path20388_
                                                  (cons 'permissions:
                                                        (cons '420 '()))))
                                      void))
                                   '#!void))
                           (_generate-loader-code20353_
                            _ctx20379_
                            _code20381_
                            _rt20385_))))))))
            (let ((_all-modules20355_
                   (cons _ctx20349_ (gxc#lift-nested-modules _ctx20349_))))
              (for-each _compile120351_ _all-modules20355_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx20251_)
      (let ((_compile-ssi20253_
             (lambda (_code20319_)
               (let ((_path20321_
                      (gxc#compile-output-file _ctx20251_ '#f '".ssi")))
                 (let ((_prelude20332_
                        (let ((_super20323_
                               (##structure-ref
                                _ctx20251_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e20325_
                                 (##structure-ref
                                  _super20323_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e20325_
                                ((lambda (_g2032720329_)
                                   (make-symbol '":" _g2032720329_))
                                 _$e20325_)
                                ':<root>)))))
                   (let ((_ns20334_
                          (##structure-ref
                           _ctx20251_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr20336_
                            (symbol->string
                             (##structure-ref
                              _ctx20251_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg20343_
                              (let ((_$e20338_
                                     (string-rindex _idstr20336_ '#\/)))
                                (if _$e20338_
                                    ((lambda (_x20341_)
                                       (string->symbol
                                        (substring _idstr20336_ '0 _x20341_)))
                                     _$e20338_)
                                    '#f))))
                         (let ((_rt20345_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx20251_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path20321_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path20321_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude20332_)
                                    (if _pkg20343_
                                        (displayln '"package:" '" " _pkg20343_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns20334_)
                                    (newline)
                                    (pretty-print _code20319_)
                                    (if _rt20345_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt20345_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi20254_
               (lambda (_part20259_)
                 (let ((_part2026020273_ _part20259_))
                   (let ((_E2026220277_
                          (lambda ()
                            (error '"No clause matching" _part2026020273_))))
                     (let ((_K2026320288_
                            (lambda (_code20280_
                                     _n20281_
                                     _phi20282_
                                     _phi-ctx20283_)
                              (let ((_code20286_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code20280_))
                                      gx#current-expander-context
                                      _phi-ctx20283_
                                      gx#current-expander-phi
                                      _phi20282_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx20251_
                                  _n20281_
                                  '".scm")
                                 _code20286_)))))
                       (if (##pair? _part2026020273_)
                           (let ((_hd2026420291_ (##car _part2026020273_))
                                 (_tl2026520293_ (##cdr _part2026020273_)))
                             (let ((_phi-ctx20296_ _hd2026420291_))
                               (if (##pair? _tl2026520293_)
                                   (let ((_hd2026620298_
                                          (##car _tl2026520293_))
                                         (_tl2026720300_
                                          (##cdr _tl2026520293_)))
                                     (let ((_phi20303_ _hd2026620298_))
                                       (if (##pair? _tl2026720300_)
                                           (let ((_hd2026820305_
                                                  (##car _tl2026720300_))
                                                 (_tl2026920307_
                                                  (##cdr _tl2026720300_)))
                                             (let ((_n20310_ _hd2026820305_))
                                               (if (##pair? _tl2026920307_)
                                                   (let ((_hd2027020312_
                                                          (##car _tl2026920307_))
                                                         (_tl2027120314_
                                                          (##cdr _tl2026920307_)))
                                                     (let ((_code20317_
                                                            _hd2027020312_))
                                                       (if (##null? _tl2027120314_)
                                                           (_K2026320288_
                                                            _code20317_
                                                            _n20310_
                                                            _phi20303_
                                                            _phi-ctx20296_)
                                                           (_E2026220277_))))
                                                   (_E2026220277_))))
                                           (_E2026220277_))))
                                   (_E2026220277_))))
                           (_E2026220277_))))))))
          (let ((_g20763_ (gxc#generate-meta-code _ctx20251_)))
            (begin
              (let ((_g20764_ (values-count _g20763_)))
                (if (not (fx= _g20764_ 2))
                    (error "Context expects 2 values" _g20764_)))
              (let ((_ssi-code20256_ (values-ref _g20763_ 0))
                    (_phi-code20257_ (values-ref _g20763_ 1)))
                (begin
                  (_compile-ssi20253_ _ssi-code20256_)
                  (for-each _compile-phi20254_ _phi-code20257_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx20234_)
      (let ((_path20236_ (gxc#compile-output-file _ctx20234_ '#f '".ssxi.ss")))
        (let ((_code20238_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx20234_ '11 gx#module-context::t '#f))))
          (let ((_idstr20240_
                 (symbol->string
                  (##structure-ref _ctx20234_ '1 gx#expander-context::t '#f))))
            (let ((_pkg20247_
                   (let ((_$e20242_ (string-rindex _idstr20240_ '#\/)))
                     (if _$e20242_
                         ((lambda (_x20245_)
                            (string->symbol
                             (substring _idstr20240_ '0 _x20245_)))
                          _$e20242_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path20236_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path20236_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg20247_
                           (displayln '"package: " _pkg20247_)
                           '#!void)
                       (newline)
                       (pretty-print _code20238_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx20227_)
      (let ((_state20229_
             (let ((__obj20754 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj20754 _ctx20227_)
                 __obj20754))))
        (let ((_ssi-code20231_
               (gxc#apply-generate-meta
                (##structure-ref _ctx20227_ '11 gx#module-context::t '#f)
                _state20229_)))
          (let ()
            (values _ssi-code20231_ (gxc#meta-state-end! _state20229_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx20220_)
      (let ((_lifts20222_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code20225_ (gxc#apply-generate-runtime-phi _stx20220_)))
             (if (null? (unbox _lifts20222_))
                 _code20225_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code20225_ '())
                               (reverse (unbox _lifts20222_)))))))
         gxc#current-compile-lift
         _lifts20222_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx20216_)
      (let ((_modules20218_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx20216_ '11 gx#module-context::t '#f)
           _modules20218_)
          (reverse (unbox _modules20218_))))))
  (define gxc#compile-scm-file
    (lambda (_path20212_ _code20213_)
      (begin
        (gxc#verbose '"compile " _path20212_)
        (with-output-to-file
         (cons 'path: (cons _path20212_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code20213_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path20212_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path20212_)))))
  (define gxc#gsc-compile-file
    (lambda (_path20198_)
      (let ((_gsc-args20205_
             (let ((_$e20200_ (gxc#current-compile-gsc-options)))
               (if _$e20200_
                   ((lambda (_opts20203_)
                      (foldr1 cons (cons _path20198_ '()) _opts20203_))
                    _$e20200_)
                   (cons _path20198_ '())))))
        (let ((_proc20207_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args20205_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status20209_ (process-status _proc20207_)))
            (let ()
              (if (zero? _status20209_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path20198_
                   _status20209_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx20170_ _n20171_ _ext20172_)
      (let ((_module-relative-path20174_
             (lambda (_ctx20196_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx20196_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory20175_
               (lambda (_ctx20192_)
                 (path-directory
                  (let ((_mpath20194_
                         (##structure-ref
                          _ctx20192_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath20194_)
                        _mpath20194_
                        (last _mpath20194_)))))))
          (let ((_section-string20176_
                 (lambda (_n20190_)
                   (if (number? _n20190_)
                       (number->string _n20190_)
                       (if (symbol? _n20190_)
                           (symbol->string _n20190_)
                           (if (string? _n20190_)
                               _n20190_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n20190_)))))))
            (let ((_file-name20177_
                   (lambda (_path20188_)
                     (if _n20171_
                         (string-append
                          _path20188_
                          '"__"
                          (_section-string20176_ _n20171_)
                          _ext20172_)
                         (string-append _path20188_ _ext20172_)))))
              (let ((_file-path20178_
                     (lambda ()
                       (let ((_$e20183_ (gxc#current-compile-output-dir)))
                         (if _$e20183_
                             ((lambda (_outdir20186_)
                                (path-expand
                                 (_file-name20177_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx20170_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir20186_))
                              _$e20183_)
                             (path-expand
                              (_file-name20177_
                               (_module-relative-path20174_ _ctx20170_))
                              (_module-source-directory20175_ _ctx20170_)))))))
                (let ((_path20180_ (_file-path20178_)))
                  (begin
                    (create-directory* (path-directory _path20180_))
                    _path20180_)))))))))
  (define gxc#compile-static-output-file
    (lambda (_ctx20153_)
      (let ((_file-name20155_
             (lambda (_idstr20168_)
               (string-append (gxc#static-module-name _idstr20168_) '".scm"))))
        (let ((_file-path20156_
               (lambda ()
                 (let ((_file20161_
                        (_file-name20155_
                         (symbol->string
                          (##structure-ref
                           _ctx20153_
                           '1
                           gx#expander-context::t
                           '#f)))))
                   (let ((_$e20163_ (gxc#current-compile-output-dir)))
                     (if _$e20163_
                         ((lambda (_outdir20166_)
                            (path-expand
                             _file20161_
                             (path-expand '"static" _outdir20166_)))
                          _$e20163_)
                         (path-expand _file20161_ '"static")))))))
          (let ((_path20158_ (_file-path20156_)))
            (begin
              (create-directory* (path-directory _path20158_))
              _path20158_))))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx20140_ _opts20141_)
      (let ((_$e20143_ (pgetq 'output-file: _opts20141_)))
        (if _$e20143_
            (values _$e20143_)
            (let ((_mod-str20146_
                   (symbol->string
                    (##structure-ref
                     _ctx20140_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let ((_$e20148_ (string-rindex _mod-str20146_ '#\/)))
                (if _$e20148_
                    ((lambda (_ix20151_)
                       (substring
                        _mod-str20146_
                        (fx+ _ix20151_ '1)
                        (string-length _mod-str20146_)))
                     _$e20148_)
                    _mod-str20146_)))))))
  (define gxc#static-module-name
    (lambda (_idstr20136_)
      (if (string? _idstr20136_)
          (let ((_strs20138_ (string-split _idstr20136_ '#\/)))
            (string-join _strs20138_ '"__"))
          (if (symbol? _idstr20136_)
              (gxc#static-module-name (symbol->string _idstr20136_))
              (error '"Bad module id" _idstr20136_))))))
