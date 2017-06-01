(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda20111
      (lambda (_srcpath20113_ _opts20114_)
        (begin
          (if (string? _srcpath20113_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath20113_))
          (let ((_outdir20116_ (pgetq 'output-dir: _opts20114_))
                (_invoke-gsc?20117_ (pgetq 'invoke-gsc: _opts20114_))
                (_gsc-options20118_ (pgetq 'gsc-options: _opts20114_))
                (_keep-scm?20119_ (pgetq 'keep-scm: _opts20114_))
                (_verbosity20120_ (pgetq 'verbose: _opts20114_))
                (_optimize20121_ (pgetq 'optimize: _opts20114_))
                (_gen-ssxi20122_ (pgetq 'generate-ssxi: _opts20114_))
                (_static20123_ (pgetq 'static: _opts20114_)))
            (begin
              (if _outdir20116_ (create-directory* _outdir20116_) '#!void)
              (if _optimize20121_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath20113_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath20113_))))
               gxc#current-compile-output-dir
               _outdir20116_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?20117_
               gxc#current-compile-gsc-options
               _gsc-options20118_
               gxc#current-compile-keep-scm
               _keep-scm?20119_
               gxc#current-compile-verbose
               _verbosity20120_
               gxc#current-compile-optimize
               _optimize20121_
               gxc#current-compile-generate-ssxi
               _gen-ssxi20122_
               gxc#current-compile-static
               _static20123_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath20129_)
          (let ((_opts20131_ '()))
            (gxc#compile-file__opt-lambda20111 _srcpath20129_ _opts20131_))))
      (define gxc#compile-file
        (lambda _g20139_
          (let ((_g20138_ (length _g20139_)))
            (cond ((fx= _g20138_ 1) (apply gxc#compile-file__0 _g20139_))
                  ((fx= _g20138_ 2)
                   (apply gxc#compile-file__opt-lambda20111 _g20139_))
                  (else (error "No clause matching arguments" _g20139_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda20097
      (lambda (_srcpath20099_ _opts20100_)
        (gxc#do-compile-exe
         _srcpath20099_
         _opts20100_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath20105_)
          (let ((_opts20107_ '()))
            (gxc#compile-exe-stub__opt-lambda20097
             _srcpath20105_
             _opts20107_))))
      (define gxc#compile-exe-stub
        (lambda _g20141_
          (let ((_g20140_ (length _g20141_)))
            (cond ((fx= _g20140_ 1) (apply gxc#compile-exe-stub__0 _g20141_))
                  ((fx= _g20140_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda20097 _g20141_))
                  (else (error "No clause matching arguments" _g20141_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda20083
      (lambda (_srcpath20085_ _opts20086_)
        (gxc#do-compile-exe
         _srcpath20085_
         _opts20086_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath20091_)
          (let ((_opts20093_ '()))
            (gxc#compile-static-exe__opt-lambda20083
             _srcpath20091_
             _opts20093_))))
      (define gxc#compile-static-exe
        (lambda _g20143_
          (let ((_g20142_ (length _g20143_)))
            (cond ((fx= _g20142_ 1) (apply gxc#compile-static-exe__0 _g20143_))
                  ((fx= _g20142_ 2)
                   (apply gxc#compile-static-exe__opt-lambda20083 _g20143_))
                  (else (error "No clause matching arguments" _g20143_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath20073_ _opts20074_ _compile-e20075_)
      (begin
        (if (string? _srcpath20073_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath20073_))
        (let ((_outdir20077_ (pgetq 'output-dir: _opts20074_))
              (_invoke-gsc?20078_ (pgetq 'invoke-gsc: _opts20074_))
              (_gsc-options20079_ (pgetq 'gsc-options: _opts20074_))
              (_keep-scm?20080_ (pgetq 'keep-scm: _opts20074_))
              (_verbosity20081_ (pgetq 'verbose: _opts20074_)))
          (begin
            (if _outdir20077_ (create-directory* _outdir20077_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath20073_)
                 (_compile-e20075_
                  (gx#import-module__0 _srcpath20073_)
                  _opts20074_)))
             gxc#current-compile-output-dir
             _outdir20077_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?20078_
             gxc#current-compile-gsc-options
             _gsc-options20079_
             gxc#current-compile-keep-scm
             _keep-scm?20080_
             gxc#current-compile-verbose
             _verbosity20081_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx20041_ _opts20042_)
      (let ((_generate-stub20044_
             (lambda ()
               (let ((_mod-str20066_
                      (symbol->string
                       (##structure-ref
                        _ctx20041_
                        '1
                        gx#expander-context::t
                        '#f))))
                 (let ((_mod-rt20068_ (string-append _mod-str20066_ '"__rt")))
                   (let ((_mod-main20070_
                          (gxc#find-runtime-symbol _ctx20041_ 'main)))
                     (let ()
                       (begin
                         (write '(##namespace ("")))
                         (newline)
                         (write (cons '_gx#start!
                                      (cons _mod-rt20068_
                                            (cons (cons 'quote
                                                        (cons _mod-main20070_
                                                              '()))
                                                  '()))))
                         (newline)))))))))
        (let ((_compile-stub20045_
               (lambda (_output-scm20052_ _output-bin20053_)
                 (let ((_init-stub20055_
                        (path-expand
                         '"lib/gx-init-exe.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gsc-args20057_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin20053_
                                            (cons _init-stub20055_
                                                  (cons _output-scm20052_
                                                        '())))))))
                     (let ((_g20144_
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args20057_))))
                       (let ((_proc20060_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args20057_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status20062_ (process-status _proc20060_)))
                           (let ()
                             (if (zero? _status20062_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm20052_
                                  _output-bin20053_
                                  _status20062_)))))))))))
          (let ((_output-bin20047_
                 (gxc#compile-exe-output-file _ctx20041_ _opts20042_)))
            (let ((_output-scm20049_
                   (string-append _output-bin20047_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20049_ _generate-stub20044_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20045_ _output-scm20049_ _output-bin20047_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20049_))))))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx19990_ _opts19991_)
      (let ((_generate-stub19993_
             (lambda ()
               (let ((_mod-main20039_
                      (gxc#find-runtime-symbol _ctx19990_ 'main)))
                 (begin
                   (write '(##namespace ("")))
                   (newline)
                   (write (cons 'apply
                                (cons _mod-main20039_
                                      (cons (cons 'cdr
                                                  (cons (cons 'command-line
                                                              '())
                                                        '()))
                                            '()))))
                   (newline))))))
        (let ((_compile-stub19994_
               (lambda (_output-scm20001_ _output-bin20002_)
                 (let ((_gerbil-home20004_ (getenv '"GERBIL_HOME")))
                   (let ((_gx-gambc020006_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home20004_)))
                     (let ((_gx-gambc-init20008_
                            (path-expand
                             '"lib/gx-init-static-exe.scm"
                             _gerbil-home20004_)))
                       (let ((_gx-gambc-macros20010_
                              (path-expand
                               '"lib/static/gx-gambc#.scm"
                               _gerbil-home20004_)))
                         (let ((_include-gx-gambc-macros20012_
                                (string-append
                                 '"(include \""
                                 _gx-gambc-macros20010_
                                 '"\")")))
                           (let ((_bin-scm20014_
                                  (gxc#find-static-module-file _ctx19990_)))
                             (let ((_deps20016_
                                    (gxc#find-runtime-module-deps _ctx19990_)))
                               (let ((_deps20018_
                                      (map gxc#find-static-module-file
                                           _deps20016_)))
                                 (let ((_deps20023_
                                        (filter (lambda (_$obj20020_)
                                                  (not (gxc#file-empty?
                                                        _$obj20020_)))
                                                _deps20018_)))
                                   (let ((_gsc-opts20028_
                                          (let ((_$e20025_
                                                 (pgetq 'gsc-options:
                                                        _opts19991_)))
                                            (if _$e20025_ _$e20025_ '()))))
                                     (let ((_gsc-args20030_
                                            (cons '"-exe"
                                                  (cons '"-o"
                                                        (cons _output-bin20002_
                                                              (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros20012_
                                          (cons _gx-gambc020006_
                                                (cons _gx-gambc-init20008_
                                                      (foldr1 cons
                                                              (cons _bin-scm20014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm20001_ '()))
                      _deps20023_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _gsc-opts20028_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_g20145_
                                              (gxc#verbose
                                               '"invoke gsc "
                                               (cons 'gsc _gsc-args20030_))))
                                         (let ((_proc20033_
                                                (open-process
                                                 (cons 'path:
                                                       (cons '"gsc"
                                                             (cons 'arguments:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _gsc-args20030_
                                 (cons 'stdout-redirection:
                                       (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_status20035_
                                                  (process-status
                                                   _proc20033_)))
                                             (let ()
                                               (if (zero? _status20035_)
                                                   '#!void
                                                   (gxc#raise-compile-error
                                                    '"Compilation error; gsc exit with nonzero status"
                                                    _output-scm20001_
                                                    _output-bin20002_
                                                    _status20035_))))))))))))))))))))
          (let ((_output-bin19996_
                 (gxc#compile-exe-output-file _ctx19990_ _opts19991_)))
            (let ((_output-scm19998_
                   (string-append _output-bin19996_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm19998_ _generate-stub19993_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub19994_ _output-scm19998_ _output-bin19996_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm19998_))))))))))
  (define gxc#find-export-binding
    (lambda (_ctx19940_ _id19941_)
      (let ((_$e19987_
             (find (lambda (_e1994219944_)
                     (let ((_g1994619956_ _e1994219944_))
                       (let ((_E1994919960_
                              (lambda ()
                                (error '"No clause matching" _g1994619956_))))
                         (let ((_else1994819964_ (lambda () '#f)))
                           (let ((_K1995019968_ (lambda () '#t)))
                             (if (##structure-direct-instance-of?
                                  _g1994619956_
                                  (##type-id gx#module-export::t))
                                 (let ((_e1995119971_
                                        (##vector-ref _g1994619956_ '1)))
                                   (let ((_e1995219974_
                                          (##vector-ref _g1994619956_ '2)))
                                     (let ((_e1995319977_
                                            (##vector-ref _g1994619956_ '3)))
                                       (if (##eq? _e1995319977_ '0)
                                           (let ((_e1995419980_
                                                  (##vector-ref
                                                   _g1994619956_
                                                   '4)))
                                             (if ((lambda (_g1998219984_)
                                                    (eq? _g1998219984_
                                                         _id19941_))
                                                  _e1995419980_)
                                                 (_K1995019968_)
                                                 (_else1994819964_)))
                                           (_else1994819964_)))))
                                 (_else1994819964_)))))))
                   (##structure-ref _ctx19940_ '9 gx#module-context::t '#f))))
        (if _$e19987_ (gx#core-resolve-module-export _$e19987_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx19932_ _id19933_)
      (let ((_$e19935_ (gxc#find-export-binding _ctx19932_ _id19933_)))
        (if _$e19935_
            ((lambda (_bind19938_)
               (begin
                 (if (##structure-instance-of?
                      _bind19938_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id19933_))
                 (##structure-ref _bind19938_ '1 gx#binding::t '#f)))
             _$e19935_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx19932_ '1 gx#expander-context::t '#f)
             _id19933_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx19870_)
      (let ((_ht19872_ (make-hash-table-eq)))
        (letrec ((_find-deps19873_
                  (lambda (_rest19880_ _deps19881_)
                    (let ((_rest1988219890_ _rest19880_))
                      (let ((_E1988519894_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest1988219890_))))
                        (let ((_else1988419898_ (lambda () _deps19881_)))
                          (let ((_K1988619920_
                                 (lambda (_rest19901_ _hd19902_)
                                   (if (##structure-instance-of?
                                        _hd19902_
                                        'gx#module-context::t)
                                       (let ((_id19904_
                                              (##structure-ref
                                               _hd19902_
                                               '1
                                               gx#expander-context::t
                                               '#f))
                                             (_imports19905_
                                              (##structure-ref
                                               _hd19902_
                                               '8
                                               gx#module-context::t
                                               '#f)))
                                         (if (table-ref
                                              _ht19872_
                                              _id19904_
                                              '#f)
                                             (_find-deps19873_
                                              _rest19901_
                                              _deps19881_)
                                             (let ((_$e19907_
                                                    (gx#core-context-prelude__opt-lambda11346
                                                     _hd19902_)))
                                               (if _$e19907_
                                                   ((lambda (_pre19910_)
                                                      (let ((_xdeps19912_
                                                             (_find-deps19873_
                                                              (cons _pre19910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _imports19905_)
                      _deps19881_)))
                (begin
                  (table-set! _ht19872_ _id19904_ _hd19902_)
                  (_find-deps19873_
                   _rest19901_
                   (cons _hd19902_ _xdeps19912_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e19907_)
                                                   (let ((_xdeps19914_
                                                          (_find-deps19873_
                                                           _imports19905_
                                                           _deps19881_)))
                                                     (begin
                                                       (table-set!
                                                        _ht19872_
                                                        _id19904_
                                                        _hd19902_)
                                                       (_find-deps19873_
                                                        _rest19901_
                                                        (cons _hd19902_
                                                              _xdeps19914_))))))))
                                       (if (##structure-instance-of?
                                            _hd19902_
                                            'gx#prelude-context::t)
                                           (let ((_id19916_
                                                  (##structure-ref
                                                   _hd19902_
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)))
                                             (if (table-ref
                                                  _ht19872_
                                                  _id19916_
                                                  '#f)
                                                 (_find-deps19873_
                                                  _rest19901_
                                                  _deps19881_)
                                                 (let ((_xdeps19918_
                                                        (_find-deps19873_
                                                         (##structure-ref
                                                          _hd19902_
                                                          '7
                                                          gx#prelude-context::t
                                                          '#f)
                                                         _deps19881_)))
                                                   (if (table-ref
                                                        _ht19872_
                                                        _id19916_
                                                        '#f)
                                                       (_find-deps19873_
                                                        _rest19901_
                                                        _xdeps19918_)
                                                       (begin
                                                         (table-set!
                                                          _ht19872_
                                                          _id19916_
                                                          _hd19902_)
                                                         (_find-deps19873_
                                                          _rest19901_
                                                          (cons _hd19902_
                                                                _xdeps19918_)))))))
                                           (if (##structure-direct-instance-of?
                                                _hd19902_
                                                'gx#module-import::t)
                                               (if (fxzero? (##structure-ref
                                                             _hd19902_
                                                             '3
                                                             gx#module-import::t
                                                             '#f))
                                                   (_find-deps19873_
                                                    (cons (##structure-ref
                                                           _hd19902_
                                                           '1
                                                           gx#module-import::t
                                                           '#f)
                                                          _rest19901_)
                                                    _deps19881_)
                                                   (_find-deps19873_
                                                    _rest19901_
                                                    _deps19881_))
                                               (if (##structure-direct-instance-of?
                                                    _hd19902_
                                                    'gx#module-export::t)
                                                   (_find-deps19873_
                                                    (cons (##structure-ref
                                                           _hd19902_
                                                           '1
                                                           gx#module-export::t
                                                           '#f)
                                                          _rest19901_)
                                                    _deps19881_)
                                                   (if (##structure-direct-instance-of?
                                                        _hd19902_
                                                        'gx#import-set::t)
                                                       (if (fxzero? (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd19902_
                             '3
                             gx#module-import::t
                             '#f))
                   (_find-deps19873_
                    (cons (##structure-ref _hd19902_ '1 gx#import-set::t '#f)
                          _rest19901_)
                    _deps19881_)
                   (_find-deps19873_ _rest19901_ _deps19881_))
               (error '"Unexpected module import" _hd19902_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (##pair? _rest1988219890_)
                                (let ((_hd1988719923_ (##car _rest1988219890_))
                                      (_tl1988819925_
                                       (##cdr _rest1988219890_)))
                                  (let ((_hd19928_ _hd1988719923_))
                                    (let ((_rest19930_ _tl1988819925_))
                                      (_K1988619920_ _rest19930_ _hd19928_))))
                                (_else1988419898_)))))))))
          (reverse (filter gx#expander-context-id
                           (_find-deps19873_
                            (let ((_$e19875_
                                   (gx#core-context-prelude__opt-lambda11346
                                    _ctx19870_)))
                              (if _$e19875_
                                  ((lambda (_pre19878_)
                                     (cons _pre19878_
                                           (##structure-ref
                                            _ctx19870_
                                            '8
                                            gx#module-context::t
                                            '#f)))
                                   _$e19875_)
                                  (##structure-ref
                                   _ctx19870_
                                   '8
                                   gx#module-context::t
                                   '#f)))
                            '())))))))
  (define gxc#find-static-module-file
    (lambda (_ctx19809_)
      (let ((_scm19811_
             (string-append
              (gxc#static-module-name
               (##structure-ref _ctx19809_ '1 gx#expander-context::t '#f))
              '".scm")))
        (let ((_dirs19813_ (gx#current-expander-module-library-path)))
          (let ((_dirs19822_
                 (let ((_$e19815_ (gxc#current-compile-output-dir)))
                   (if _$e19815_
                       ((lambda (_g1981719819_)
                          (cons _g1981719819_ _dirs19813_))
                        _$e19815_)
                       _dirs19813_))))
            (let ((_dirs19828_
                   (map (lambda (_g1982319825_)
                          (path-expand '"static" _g1982319825_))
                        _dirs19822_)))
              (let ()
                ((letrec ((_lp19831_
                           (lambda (_rest19833_)
                             (let ((_rest1983419842_ _rest19833_))
                               (let ((_E1983719846_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _rest1983419842_))))
                                 (let ((_else1983619850_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"cannot find static module"
                                           (##structure-ref
                                            _ctx19809_
                                            '1
                                            gx#expander-context::t
                                            '#f)
                                           _scm19811_))))
                                   (let ((_K1983819858_
                                          (lambda (_rest19853_ _dir19854_)
                                            (let ((_path19856_
                                                   (path-expand
                                                    _scm19811_
                                                    _dir19854_)))
                                              (if (file-exists? _path19856_)
                                                  _path19856_
                                                  (_lp19831_ _rest19853_))))))
                                     (if (##pair? _rest1983419842_)
                                         (let ((_hd1983919861_
                                                (##car _rest1983419842_))
                                               (_tl1984019863_
                                                (##cdr _rest1983419842_)))
                                           (let ((_dir19866_ _hd1983919861_))
                                             (let ((_rest19868_
                                                    _tl1984019863_))
                                               (_K1983819858_
                                                _rest19868_
                                                _dir19866_))))
                                         (_else1983619850_)))))))))
                   _lp19831_)
                 _dirs19828_))))))))
  (define gxc#file-empty?
    (lambda (_path19807_)
      (zero? (file-info-size (file-info _path19807_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx19804_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx19804_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx19804_)
               '#!void)
           (gxc#collect-bindings _ctx19804_)
           (gxc#compile-runtime-code _ctx19804_)
           (gxc#compile-meta-code _ctx19804_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx19804_)
               '#!void)))
       gx#current-expander-context
       _ctx19804_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj20136 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj20136) __obj20136))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx19802_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx19802_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx19761_)
      (let ((_generate-runtime-code19764_
             (lambda (_ctx19779_ _code19780_)
               (let ((_runtime-code19783_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code19780_))
                       gx#current-expander-context
                       _ctx19779_)))
                 (let ((_scm019785_
                        (gxc#compile-output-file _ctx19779_ '0 '".scm")))
                   (let ()
                     (if (gxc#current-compile-static)
                         (let ((_scms19788_
                                (gxc#compile-static-output-file _ctx19779_)))
                           (begin
                             (call-with-parameters
                              (lambda ()
                                (gxc#compile-scm-file
                                 _scm019785_
                                 _runtime-code19783_))
                              gxc#current-compile-keep-scm
                              '#t)
                             (if (file-exists? _scms19788_)
                                 (delete-file _scms19788_)
                                 '#!void)
                             (gxc#verbose
                              '"copy static module "
                              _scm019785_
                              '" => "
                              _scms19788_)
                             (copy-file _scm019785_ _scms19788_)
                             (if (gxc#current-compile-keep-scm)
                                 '#!void
                                 (delete-file _scm019785_))))
                         (gxc#compile-scm-file
                          _scm019785_
                          _runtime-code19783_))))))))
        (let ((_generate-loader-code19765_
               (lambda (_ctx19769_ _code19770_ _rt19771_)
                 (let ((_loader-code19774_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code19770_))
                         gx#current-expander-context
                         _ctx19769_)))
                   (let ((_loader-code19776_
                          (if _rt19771_
                              (cons 'begin
                                    (cons _loader-code19774_
                                          (cons (cons 'load-module
                                                      (cons _rt19771_ '()))
                                                '())))
                              _loader-code19774_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx19769_ 'rt '".scm")
                        _loader-code19776_)))))))
          (let ((_compile119763_
                 (lambda (_ctx19791_)
                   (let ((_code19793_
                          (##structure-ref
                           _ctx19791_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt19797_
                            (if (gxc#apply-find-runtime-code _code19793_)
                                (let ((_idstr19795_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx19791_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr19795_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt19797_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx19791_
                                  _rt19797_)
                                 (_generate-runtime-code19764_
                                  _ctx19791_
                                  _code19793_))
                               (if (gxc#current-compile-static)
                                   (let ((_path19800_
                                          (gxc#compile-static-output-file
                                           _ctx19791_)))
                                     (with-output-to-file
                                      (cons 'path:
                                            (cons _path19800_
                                                  (cons 'permissions:
                                                        (cons '420 '()))))
                                      void))
                                   '#!void))
                           (_generate-loader-code19765_
                            _ctx19791_
                            _code19793_
                            _rt19797_))))))))
            (let ((_all-modules19767_
                   (cons _ctx19761_ (gxc#lift-nested-modules _ctx19761_))))
              (for-each _compile119763_ _all-modules19767_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx19663_)
      (let ((_compile-ssi19665_
             (lambda (_code19731_)
               (let ((_path19733_
                      (gxc#compile-output-file _ctx19663_ '#f '".ssi")))
                 (let ((_prelude19744_
                        (let ((_super19735_
                               (##structure-ref
                                _ctx19663_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e19737_
                                 (##structure-ref
                                  _super19735_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e19737_
                                ((lambda (_g1973919741_)
                                   (make-symbol '":" _g1973919741_))
                                 _$e19737_)
                                ':<root>)))))
                   (let ((_ns19746_
                          (##structure-ref
                           _ctx19663_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr19748_
                            (symbol->string
                             (##structure-ref
                              _ctx19663_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg19755_
                              (let ((_$e19750_
                                     (string-rindex _idstr19748_ '#\/)))
                                (if _$e19750_
                                    ((lambda (_x19753_)
                                       (string->symbol
                                        (substring _idstr19748_ '0 _x19753_)))
                                     _$e19750_)
                                    '#f))))
                         (let ((_rt19757_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx19663_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path19733_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path19733_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude19744_)
                                    (if _pkg19755_
                                        (displayln '"package:" '" " _pkg19755_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns19746_)
                                    (newline)
                                    (pretty-print _code19731_)
                                    (if _rt19757_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt19757_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi19666_
               (lambda (_part19671_)
                 (let ((_part1967219685_ _part19671_))
                   (let ((_E1967419689_
                          (lambda ()
                            (error '"No clause matching" _part1967219685_))))
                     (let ((_K1967519700_
                            (lambda (_code19692_
                                     _n19693_
                                     _phi19694_
                                     _phi-ctx19695_)
                              (let ((_code19698_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code19692_))
                                      gx#current-expander-context
                                      _phi-ctx19695_
                                      gx#current-expander-phi
                                      _phi19694_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx19663_
                                  _n19693_
                                  '".scm")
                                 _code19698_)))))
                       (if (##pair? _part1967219685_)
                           (let ((_hd1967619703_ (##car _part1967219685_))
                                 (_tl1967719705_ (##cdr _part1967219685_)))
                             (let ((_phi-ctx19708_ _hd1967619703_))
                               (if (##pair? _tl1967719705_)
                                   (let ((_hd1967819710_
                                          (##car _tl1967719705_))
                                         (_tl1967919712_
                                          (##cdr _tl1967719705_)))
                                     (let ((_phi19715_ _hd1967819710_))
                                       (if (##pair? _tl1967919712_)
                                           (let ((_hd1968019717_
                                                  (##car _tl1967919712_))
                                                 (_tl1968119719_
                                                  (##cdr _tl1967919712_)))
                                             (let ((_n19722_ _hd1968019717_))
                                               (if (##pair? _tl1968119719_)
                                                   (let ((_hd1968219724_
                                                          (##car _tl1968119719_))
                                                         (_tl1968319726_
                                                          (##cdr _tl1968119719_)))
                                                     (let ((_code19729_
                                                            _hd1968219724_))
                                                       (if (##null? _tl1968319726_)
                                                           (_K1967519700_
                                                            _code19729_
                                                            _n19722_
                                                            _phi19715_
                                                            _phi-ctx19708_)
                                                           (_E1967419689_))))
                                                   (_E1967419689_))))
                                           (_E1967419689_))))
                                   (_E1967419689_))))
                           (_E1967419689_))))))))
          (let ((_g20146_ (gxc#generate-meta-code _ctx19663_)))
            (begin
              (let ((_g20147_ (values-count _g20146_)))
                (if (not (fx= _g20147_ 2))
                    (error "Context expects 2 values" _g20147_)))
              (let ((_ssi-code19668_ (values-ref _g20146_ 0))
                    (_phi-code19669_ (values-ref _g20146_ 1)))
                (begin
                  (_compile-ssi19665_ _ssi-code19668_)
                  (for-each _compile-phi19666_ _phi-code19669_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx19646_)
      (let ((_path19648_ (gxc#compile-output-file _ctx19646_ '#f '".ssxi.ss")))
        (let ((_code19650_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx19646_ '11 gx#module-context::t '#f))))
          (let ((_idstr19652_
                 (symbol->string
                  (##structure-ref _ctx19646_ '1 gx#expander-context::t '#f))))
            (let ((_pkg19659_
                   (let ((_$e19654_ (string-rindex _idstr19652_ '#\/)))
                     (if _$e19654_
                         ((lambda (_x19657_)
                            (string->symbol
                             (substring _idstr19652_ '0 _x19657_)))
                          _$e19654_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path19648_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path19648_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg19659_
                           (displayln '"package: " _pkg19659_)
                           '#!void)
                       (newline)
                       (pretty-print _code19650_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx19639_)
      (let ((_state19641_
             (let ((__obj20137 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj20137 _ctx19639_)
                 __obj20137))))
        (let ((_ssi-code19643_
               (gxc#apply-generate-meta
                (##structure-ref _ctx19639_ '11 gx#module-context::t '#f)
                _state19641_)))
          (let ()
            (values _ssi-code19643_ (gxc#meta-state-end! _state19641_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx19632_)
      (let ((_lifts19634_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code19637_ (gxc#apply-generate-runtime-phi _stx19632_)))
             (if (null? (unbox _lifts19634_))
                 _code19637_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code19637_ '())
                               (reverse (unbox _lifts19634_)))))))
         gxc#current-compile-lift
         _lifts19634_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx19628_)
      (let ((_modules19630_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx19628_ '11 gx#module-context::t '#f)
           _modules19630_)
          (reverse (unbox _modules19630_))))))
  (define gxc#compile-scm-file
    (lambda (_path19624_ _code19625_)
      (begin
        (gxc#verbose '"compile " _path19624_)
        (with-output-to-file
         (cons 'path: (cons _path19624_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code19625_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path19624_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path19624_)))))
  (define gxc#gsc-compile-file
    (lambda (_path19610_)
      (let ((_gsc-args19617_
             (let ((_$e19612_ (gxc#current-compile-gsc-options)))
               (if _$e19612_
                   ((lambda (_opts19615_)
                      (foldr1 cons (cons _path19610_ '()) _opts19615_))
                    _$e19612_)
                   (cons _path19610_ '())))))
        (let ((_proc19619_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args19617_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status19621_ (process-status _proc19619_)))
            (let ()
              (if (zero? _status19621_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path19610_
                   _status19621_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx19582_ _n19583_ _ext19584_)
      (let ((_module-relative-path19586_
             (lambda (_ctx19608_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx19608_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory19587_
               (lambda (_ctx19604_)
                 (path-directory
                  (let ((_mpath19606_
                         (##structure-ref
                          _ctx19604_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath19606_)
                        _mpath19606_
                        (last _mpath19606_)))))))
          (let ((_section-string19588_
                 (lambda (_n19602_)
                   (if (number? _n19602_)
                       (number->string _n19602_)
                       (if (symbol? _n19602_)
                           (symbol->string _n19602_)
                           (if (string? _n19602_)
                               _n19602_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n19602_)))))))
            (let ((_file-name19589_
                   (lambda (_path19600_)
                     (if _n19583_
                         (string-append
                          _path19600_
                          '"__"
                          (_section-string19588_ _n19583_)
                          _ext19584_)
                         (string-append _path19600_ _ext19584_)))))
              (let ((_file-path19590_
                     (lambda ()
                       (let ((_$e19595_ (gxc#current-compile-output-dir)))
                         (if _$e19595_
                             ((lambda (_outdir19598_)
                                (path-expand
                                 (_file-name19589_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx19582_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir19598_))
                              _$e19595_)
                             (path-expand
                              (_file-name19589_
                               (_module-relative-path19586_ _ctx19582_))
                              (_module-source-directory19587_ _ctx19582_)))))))
                (let ((_path19592_ (_file-path19590_)))
                  (begin
                    (create-directory* (path-directory _path19592_))
                    _path19592_)))))))))
  (define gxc#compile-static-output-file
    (lambda (_ctx19565_)
      (let ((_file-name19567_
             (lambda (_idstr19580_)
               (string-append (gxc#static-module-name _idstr19580_) '".scm"))))
        (let ((_file-path19568_
               (lambda ()
                 (let ((_file19573_
                        (_file-name19567_
                         (symbol->string
                          (##structure-ref
                           _ctx19565_
                           '1
                           gx#expander-context::t
                           '#f)))))
                   (let ((_$e19575_ (gxc#current-compile-output-dir)))
                     (if _$e19575_
                         ((lambda (_outdir19578_)
                            (path-expand
                             _file19573_
                             (path-expand '"static" _outdir19578_)))
                          _$e19575_)
                         (path-expand _file19573_ '"static")))))))
          (let ((_path19570_ (_file-path19568_)))
            (begin
              (create-directory* (path-directory _path19570_))
              _path19570_))))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx19552_ _opts19553_)
      (let ((_$e19555_ (pgetq 'output-file: _opts19553_)))
        (if _$e19555_
            (values _$e19555_)
            (let ((_mod-str19558_
                   (symbol->string
                    (##structure-ref
                     _ctx19552_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let ((_$e19560_ (string-rindex _mod-str19558_ '#\/)))
                (if _$e19560_
                    ((lambda (_ix19563_)
                       (substring
                        _mod-str19558_
                        (fx+ _ix19563_ '1)
                        (string-length _mod-str19558_)))
                     _$e19560_)
                    _mod-str19558_)))))))
  (define gxc#static-module-name
    (lambda (_idstr19548_)
      (if (string? _idstr19548_)
          (let ((_strs19550_ (string-split _idstr19548_ '#\/)))
            (string-join _strs19550_ '"__"))
          (if (symbol? _idstr19548_)
              (gxc#static-module-name (symbol->string _idstr19548_))
              (error '"Bad module id" _idstr19548_))))))
