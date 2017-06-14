(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda20115
      (lambda (_srcpath20117_ _opts20118_)
        (begin
          (if (string? _srcpath20117_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath20117_))
          (let ((_outdir20120_ (pgetq 'output-dir: _opts20118_))
                (_invoke-gsc?20121_ (pgetq 'invoke-gsc: _opts20118_))
                (_gsc-options20122_ (pgetq 'gsc-options: _opts20118_))
                (_keep-scm?20123_ (pgetq 'keep-scm: _opts20118_))
                (_verbosity20124_ (pgetq 'verbose: _opts20118_))
                (_optimize20125_ (pgetq 'optimize: _opts20118_))
                (_gen-ssxi20126_ (pgetq 'generate-ssxi: _opts20118_))
                (_static20127_ (pgetq 'static: _opts20118_)))
            (begin
              (if _outdir20120_ (create-directory* _outdir20120_) '#!void)
              (if _optimize20125_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath20117_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath20117_))))
               gxc#current-compile-output-dir
               _outdir20120_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?20121_
               gxc#current-compile-gsc-options
               _gsc-options20122_
               gxc#current-compile-keep-scm
               _keep-scm?20123_
               gxc#current-compile-verbose
               _verbosity20124_
               gxc#current-compile-optimize
               _optimize20125_
               gxc#current-compile-generate-ssxi
               _gen-ssxi20126_
               gxc#current-compile-static
               _static20127_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath20133_)
          (let ((_opts20135_ '()))
            (gxc#compile-file__opt-lambda20115 _srcpath20133_ _opts20135_))))
      (define gxc#compile-file
        (lambda _g20143_
          (let ((_g20142_ (length _g20143_)))
            (cond ((fx= _g20142_ 1) (apply gxc#compile-file__0 _g20143_))
                  ((fx= _g20142_ 2)
                   (apply gxc#compile-file__opt-lambda20115 _g20143_))
                  (else (error "No clause matching arguments" _g20143_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda20101
      (lambda (_srcpath20103_ _opts20104_)
        (gxc#do-compile-exe
         _srcpath20103_
         _opts20104_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath20109_)
          (let ((_opts20111_ '()))
            (gxc#compile-exe-stub__opt-lambda20101
             _srcpath20109_
             _opts20111_))))
      (define gxc#compile-exe-stub
        (lambda _g20145_
          (let ((_g20144_ (length _g20145_)))
            (cond ((fx= _g20144_ 1) (apply gxc#compile-exe-stub__0 _g20145_))
                  ((fx= _g20144_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda20101 _g20145_))
                  (else (error "No clause matching arguments" _g20145_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda20087
      (lambda (_srcpath20089_ _opts20090_)
        (gxc#do-compile-exe
         _srcpath20089_
         _opts20090_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath20095_)
          (let ((_opts20097_ '()))
            (gxc#compile-static-exe__opt-lambda20087
             _srcpath20095_
             _opts20097_))))
      (define gxc#compile-static-exe
        (lambda _g20147_
          (let ((_g20146_ (length _g20147_)))
            (cond ((fx= _g20146_ 1) (apply gxc#compile-static-exe__0 _g20147_))
                  ((fx= _g20146_ 2)
                   (apply gxc#compile-static-exe__opt-lambda20087 _g20147_))
                  (else (error "No clause matching arguments" _g20147_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath20077_ _opts20078_ _compile-e20079_)
      (begin
        (if (string? _srcpath20077_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath20077_))
        (let ((_outdir20081_ (pgetq 'output-dir: _opts20078_))
              (_invoke-gsc?20082_ (pgetq 'invoke-gsc: _opts20078_))
              (_gsc-options20083_ (pgetq 'gsc-options: _opts20078_))
              (_keep-scm?20084_ (pgetq 'keep-scm: _opts20078_))
              (_verbosity20085_ (pgetq 'verbose: _opts20078_)))
          (begin
            (if _outdir20081_ (create-directory* _outdir20081_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath20077_)
                 (_compile-e20079_
                  (gx#import-module__0 _srcpath20077_)
                  _opts20078_)))
             gxc#current-compile-output-dir
             _outdir20081_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?20082_
             gxc#current-compile-gsc-options
             _gsc-options20083_
             gxc#current-compile-keep-scm
             _keep-scm?20084_
             gxc#current-compile-verbose
             _verbosity20085_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx20045_ _opts20046_)
      (let ((_generate-stub20048_
             (lambda ()
               (let ((_mod-str20070_
                      (symbol->string
                       (##structure-ref
                        _ctx20045_
                        '1
                        gx#expander-context::t
                        '#f))))
                 (let ((_mod-rt20072_ (string-append _mod-str20070_ '"__rt")))
                   (let ((_mod-main20074_
                          (gxc#find-runtime-symbol _ctx20045_ 'main)))
                     (let ()
                       (begin
                         (write '(##namespace ("")))
                         (newline)
                         (write (cons '_gx#start!
                                      (cons _mod-rt20072_
                                            (cons (cons 'quote
                                                        (cons _mod-main20074_
                                                              '()))
                                                  '()))))
                         (newline)))))))))
        (let ((_compile-stub20049_
               (lambda (_output-scm20056_ _output-bin20057_)
                 (let ((_init-stub20059_
                        (path-expand
                         '"lib/gx-init-exe.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gsc-args20061_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin20057_
                                            (cons _init-stub20059_
                                                  (cons _output-scm20056_
                                                        '())))))))
                     (let ((_g20148_
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args20061_))))
                       (let ((_proc20064_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args20061_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status20066_ (process-status _proc20064_)))
                           (let ()
                             (if (zero? _status20066_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm20056_
                                  _output-bin20057_
                                  _status20066_)))))))))))
          (let ((_output-bin20051_
                 (gxc#compile-exe-output-file _ctx20045_ _opts20046_)))
            (let ((_output-scm20053_
                   (string-append _output-bin20051_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20053_ _generate-stub20048_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20049_ _output-scm20053_ _output-bin20051_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20053_))))))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx19994_ _opts19995_)
      (let ((_generate-stub19997_
             (lambda ()
               (let ((_mod-main20043_
                      (gxc#find-runtime-symbol _ctx19994_ 'main)))
                 (begin
                   (write '(##namespace ("")))
                   (newline)
                   (write (cons 'apply
                                (cons _mod-main20043_
                                      (cons (cons 'cdr
                                                  (cons (cons 'command-line
                                                              '())
                                                        '()))
                                            '()))))
                   (newline))))))
        (let ((_compile-stub19998_
               (lambda (_output-scm20005_ _output-bin20006_)
                 (let ((_gerbil-home20008_ (getenv '"GERBIL_HOME")))
                   (let ((_gx-gambc020010_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home20008_)))
                     (let ((_gx-gambc-init20012_
                            (path-expand
                             '"lib/gx-init-static-exe.scm"
                             _gerbil-home20008_)))
                       (let ((_gx-gambc-macros20014_
                              (path-expand
                               '"lib/static/gx-gambc#.scm"
                               _gerbil-home20008_)))
                         (let ((_include-gx-gambc-macros20016_
                                (string-append
                                 '"(include \""
                                 _gx-gambc-macros20014_
                                 '"\")")))
                           (let ((_bin-scm20018_
                                  (gxc#find-static-module-file _ctx19994_)))
                             (let ((_deps20020_
                                    (gxc#find-runtime-module-deps _ctx19994_)))
                               (let ((_deps20022_
                                      (map gxc#find-static-module-file
                                           _deps20020_)))
                                 (let ((_deps20027_
                                        (filter (lambda (_$obj20024_)
                                                  (not (gxc#file-empty?
                                                        _$obj20024_)))
                                                _deps20022_)))
                                   (let ((_gsc-opts20032_
                                          (let ((_$e20029_
                                                 (pgetq 'gsc-options:
                                                        _opts19995_)))
                                            (if _$e20029_ _$e20029_ '()))))
                                     (let ((_gsc-args20034_
                                            (cons '"-exe"
                                                  (cons '"-o"
                                                        (cons _output-bin20006_
                                                              (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros20016_
                                          (cons _gx-gambc020010_
                                                (cons _gx-gambc-init20012_
                                                      (foldr1 cons
                                                              (cons _bin-scm20018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm20005_ '()))
                      _deps20027_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _gsc-opts20032_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_g20149_
                                              (gxc#verbose
                                               '"invoke gsc "
                                               (cons 'gsc _gsc-args20034_))))
                                         (let ((_proc20037_
                                                (open-process
                                                 (cons 'path:
                                                       (cons '"gsc"
                                                             (cons 'arguments:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _gsc-args20034_
                                 (cons 'stdout-redirection:
                                       (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_status20039_
                                                  (process-status
                                                   _proc20037_)))
                                             (let ()
                                               (if (zero? _status20039_)
                                                   '#!void
                                                   (gxc#raise-compile-error
                                                    '"Compilation error; gsc exit with nonzero status"
                                                    _output-scm20005_
                                                    _output-bin20006_
                                                    _status20039_))))))))))))))))))))
          (let ((_output-bin20000_
                 (gxc#compile-exe-output-file _ctx19994_ _opts19995_)))
            (let ((_output-scm20002_
                   (string-append _output-bin20000_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20002_ _generate-stub19997_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub19998_ _output-scm20002_ _output-bin20000_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20002_))))))))))
  (define gxc#find-export-binding
    (lambda (_ctx19944_ _id19945_)
      (let ((_$e19991_
             (find (lambda (_e1994619948_)
                     (let ((_g1995019960_ _e1994619948_))
                       (let ((_E1995319964_
                              (lambda ()
                                (error '"No clause matching" _g1995019960_))))
                         (let ((_else1995219968_ (lambda () '#f)))
                           (let ((_K1995419972_ (lambda () '#t)))
                             (if (##structure-direct-instance-of?
                                  _g1995019960_
                                  (##type-id gx#module-export::t))
                                 (let ((_e1995519975_
                                        (##vector-ref _g1995019960_ '1)))
                                   (let ((_e1995619978_
                                          (##vector-ref _g1995019960_ '2)))
                                     (let ((_e1995719981_
                                            (##vector-ref _g1995019960_ '3)))
                                       (if (##eq? _e1995719981_ '0)
                                           (let ((_e1995819984_
                                                  (##vector-ref
                                                   _g1995019960_
                                                   '4)))
                                             (if ((lambda (_g1998619988_)
                                                    (eq? _g1998619988_
                                                         _id19945_))
                                                  _e1995819984_)
                                                 (_K1995419972_)
                                                 (_else1995219968_)))
                                           (_else1995219968_)))))
                                 (_else1995219968_)))))))
                   (##structure-ref _ctx19944_ '9 gx#module-context::t '#f))))
        (if _$e19991_ (gx#core-resolve-module-export _$e19991_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx19936_ _id19937_)
      (let ((_$e19939_ (gxc#find-export-binding _ctx19936_ _id19937_)))
        (if _$e19939_
            ((lambda (_bind19942_)
               (begin
                 (if (##structure-instance-of?
                      _bind19942_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id19937_))
                 (##structure-ref _bind19942_ '1 gx#binding::t '#f)))
             _$e19939_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx19936_ '1 gx#expander-context::t '#f)
             _id19937_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx19874_)
      (let ((_ht19876_ (make-hash-table-eq)))
        (letrec ((_find-deps19877_
                  (lambda (_rest19884_ _deps19885_)
                    (let ((_rest1988619894_ _rest19884_))
                      (let ((_E1988919898_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest1988619894_))))
                        (let ((_else1988819902_ (lambda () _deps19885_)))
                          (let ((_K1989019924_
                                 (lambda (_rest19905_ _hd19906_)
                                   (if (##structure-instance-of?
                                        _hd19906_
                                        'gx#module-context::t)
                                       (let ((_id19908_
                                              (##structure-ref
                                               _hd19906_
                                               '1
                                               gx#expander-context::t
                                               '#f))
                                             (_imports19909_
                                              (##structure-ref
                                               _hd19906_
                                               '8
                                               gx#module-context::t
                                               '#f)))
                                         (if (table-ref
                                              _ht19876_
                                              _id19908_
                                              '#f)
                                             (_find-deps19877_
                                              _rest19905_
                                              _deps19885_)
                                             (let ((_$e19911_
                                                    (gx#core-context-prelude__opt-lambda11357
                                                     _hd19906_)))
                                               (if _$e19911_
                                                   ((lambda (_pre19914_)
                                                      (let ((_xdeps19916_
                                                             (_find-deps19877_
                                                              (cons _pre19914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _imports19909_)
                      _deps19885_)))
                (begin
                  (table-set! _ht19876_ _id19908_ _hd19906_)
                  (_find-deps19877_
                   _rest19905_
                   (cons _hd19906_ _xdeps19916_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e19911_)
                                                   (let ((_xdeps19918_
                                                          (_find-deps19877_
                                                           _imports19909_
                                                           _deps19885_)))
                                                     (begin
                                                       (table-set!
                                                        _ht19876_
                                                        _id19908_
                                                        _hd19906_)
                                                       (_find-deps19877_
                                                        _rest19905_
                                                        (cons _hd19906_
                                                              _xdeps19918_))))))))
                                       (if (##structure-instance-of?
                                            _hd19906_
                                            'gx#prelude-context::t)
                                           (let ((_id19920_
                                                  (##structure-ref
                                                   _hd19906_
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)))
                                             (if (table-ref
                                                  _ht19876_
                                                  _id19920_
                                                  '#f)
                                                 (_find-deps19877_
                                                  _rest19905_
                                                  _deps19885_)
                                                 (let ((_xdeps19922_
                                                        (_find-deps19877_
                                                         (##structure-ref
                                                          _hd19906_
                                                          '7
                                                          gx#prelude-context::t
                                                          '#f)
                                                         _deps19885_)))
                                                   (if (table-ref
                                                        _ht19876_
                                                        _id19920_
                                                        '#f)
                                                       (_find-deps19877_
                                                        _rest19905_
                                                        _xdeps19922_)
                                                       (begin
                                                         (table-set!
                                                          _ht19876_
                                                          _id19920_
                                                          _hd19906_)
                                                         (_find-deps19877_
                                                          _rest19905_
                                                          (cons _hd19906_
                                                                _xdeps19922_)))))))
                                           (if (##structure-direct-instance-of?
                                                _hd19906_
                                                'gx#module-import::t)
                                               (if (fxzero? (##structure-ref
                                                             _hd19906_
                                                             '3
                                                             gx#module-import::t
                                                             '#f))
                                                   (_find-deps19877_
                                                    (cons (##structure-ref
                                                           _hd19906_
                                                           '1
                                                           gx#module-import::t
                                                           '#f)
                                                          _rest19905_)
                                                    _deps19885_)
                                                   (_find-deps19877_
                                                    _rest19905_
                                                    _deps19885_))
                                               (if (##structure-direct-instance-of?
                                                    _hd19906_
                                                    'gx#module-export::t)
                                                   (_find-deps19877_
                                                    (cons (##structure-ref
                                                           _hd19906_
                                                           '1
                                                           gx#module-export::t
                                                           '#f)
                                                          _rest19905_)
                                                    _deps19885_)
                                                   (if (##structure-direct-instance-of?
                                                        _hd19906_
                                                        'gx#import-set::t)
                                                       (if (fxzero? (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd19906_
                             '3
                             gx#module-import::t
                             '#f))
                   (_find-deps19877_
                    (cons (##structure-ref _hd19906_ '1 gx#import-set::t '#f)
                          _rest19905_)
                    _deps19885_)
                   (_find-deps19877_ _rest19905_ _deps19885_))
               (error '"Unexpected module import" _hd19906_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (##pair? _rest1988619894_)
                                (let ((_hd1989119927_ (##car _rest1988619894_))
                                      (_tl1989219929_
                                       (##cdr _rest1988619894_)))
                                  (let ((_hd19932_ _hd1989119927_))
                                    (let ((_rest19934_ _tl1989219929_))
                                      (_K1989019924_ _rest19934_ _hd19932_))))
                                (_else1988819902_)))))))))
          (reverse (filter gx#expander-context-id
                           (_find-deps19877_
                            (let ((_$e19879_
                                   (gx#core-context-prelude__opt-lambda11357
                                    _ctx19874_)))
                              (if _$e19879_
                                  ((lambda (_pre19882_)
                                     (cons _pre19882_
                                           (##structure-ref
                                            _ctx19874_
                                            '8
                                            gx#module-context::t
                                            '#f)))
                                   _$e19879_)
                                  (##structure-ref
                                   _ctx19874_
                                   '8
                                   gx#module-context::t
                                   '#f)))
                            '())))))))
  (define gxc#find-static-module-file
    (lambda (_ctx19813_)
      (let ((_scm19815_
             (string-append
              (gxc#static-module-name
               (##structure-ref _ctx19813_ '1 gx#expander-context::t '#f))
              '".scm")))
        (let ((_dirs19817_ (gx#current-expander-module-library-path)))
          (let ((_dirs19826_
                 (let ((_$e19819_ (gxc#current-compile-output-dir)))
                   (if _$e19819_
                       ((lambda (_g1982119823_)
                          (cons _g1982119823_ _dirs19817_))
                        _$e19819_)
                       _dirs19817_))))
            (let ((_dirs19832_
                   (map (lambda (_g1982719829_)
                          (path-expand '"static" _g1982719829_))
                        _dirs19826_)))
              (let ()
                ((letrec ((_lp19835_
                           (lambda (_rest19837_)
                             (let ((_rest1983819846_ _rest19837_))
                               (let ((_E1984119850_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _rest1983819846_))))
                                 (let ((_else1984019854_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"cannot find static module"
                                           (##structure-ref
                                            _ctx19813_
                                            '1
                                            gx#expander-context::t
                                            '#f)
                                           _scm19815_))))
                                   (let ((_K1984219862_
                                          (lambda (_rest19857_ _dir19858_)
                                            (let ((_path19860_
                                                   (path-expand
                                                    _scm19815_
                                                    _dir19858_)))
                                              (if (file-exists? _path19860_)
                                                  _path19860_
                                                  (_lp19835_ _rest19857_))))))
                                     (if (##pair? _rest1983819846_)
                                         (let ((_hd1984319865_
                                                (##car _rest1983819846_))
                                               (_tl1984419867_
                                                (##cdr _rest1983819846_)))
                                           (let ((_dir19870_ _hd1984319865_))
                                             (let ((_rest19872_
                                                    _tl1984419867_))
                                               (_K1984219862_
                                                _rest19872_
                                                _dir19870_))))
                                         (_else1984019854_)))))))))
                   _lp19835_)
                 _dirs19832_))))))))
  (define gxc#file-empty?
    (lambda (_path19811_)
      (zero? (file-info-size (file-info _path19811_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx19808_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx19808_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx19808_)
               '#!void)
           (gxc#collect-bindings _ctx19808_)
           (gxc#compile-runtime-code _ctx19808_)
           (gxc#compile-meta-code _ctx19808_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx19808_)
               '#!void)))
       gx#current-expander-context
       _ctx19808_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj20140 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj20140) __obj20140))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx19806_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx19806_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx19765_)
      (let ((_generate-runtime-code19768_
             (lambda (_ctx19783_ _code19784_)
               (let ((_runtime-code19787_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code19784_))
                       gx#current-expander-context
                       _ctx19783_)))
                 (let ((_scm019789_
                        (gxc#compile-output-file _ctx19783_ '0 '".scm")))
                   (let ()
                     (if (gxc#current-compile-static)
                         (let ((_scms19792_
                                (gxc#compile-static-output-file _ctx19783_)))
                           (begin
                             (call-with-parameters
                              (lambda ()
                                (gxc#compile-scm-file
                                 _scm019789_
                                 _runtime-code19787_))
                              gxc#current-compile-keep-scm
                              '#t)
                             (if (file-exists? _scms19792_)
                                 (delete-file _scms19792_)
                                 '#!void)
                             (gxc#verbose
                              '"copy static module "
                              _scm019789_
                              '" => "
                              _scms19792_)
                             (copy-file _scm019789_ _scms19792_)
                             (if (gxc#current-compile-keep-scm)
                                 '#!void
                                 (delete-file _scm019789_))))
                         (gxc#compile-scm-file
                          _scm019789_
                          _runtime-code19787_))))))))
        (let ((_generate-loader-code19769_
               (lambda (_ctx19773_ _code19774_ _rt19775_)
                 (let ((_loader-code19778_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code19774_))
                         gx#current-expander-context
                         _ctx19773_)))
                   (let ((_loader-code19780_
                          (if _rt19775_
                              (cons 'begin
                                    (cons _loader-code19778_
                                          (cons (cons 'load-module
                                                      (cons _rt19775_ '()))
                                                '())))
                              _loader-code19778_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx19773_ 'rt '".scm")
                        _loader-code19780_)))))))
          (let ((_compile119767_
                 (lambda (_ctx19795_)
                   (let ((_code19797_
                          (##structure-ref
                           _ctx19795_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt19801_
                            (if (gxc#apply-find-runtime-code _code19797_)
                                (let ((_idstr19799_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx19795_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr19799_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt19801_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx19795_
                                  _rt19801_)
                                 (_generate-runtime-code19768_
                                  _ctx19795_
                                  _code19797_))
                               (if (gxc#current-compile-static)
                                   (let ((_path19804_
                                          (gxc#compile-static-output-file
                                           _ctx19795_)))
                                     (with-output-to-file
                                      (cons 'path:
                                            (cons _path19804_
                                                  (cons 'permissions:
                                                        (cons '420 '()))))
                                      void))
                                   '#!void))
                           (_generate-loader-code19769_
                            _ctx19795_
                            _code19797_
                            _rt19801_))))))))
            (let ((_all-modules19771_
                   (cons _ctx19765_ (gxc#lift-nested-modules _ctx19765_))))
              (for-each _compile119767_ _all-modules19771_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx19667_)
      (let ((_compile-ssi19669_
             (lambda (_code19735_)
               (let ((_path19737_
                      (gxc#compile-output-file _ctx19667_ '#f '".ssi")))
                 (let ((_prelude19748_
                        (let ((_super19739_
                               (##structure-ref
                                _ctx19667_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e19741_
                                 (##structure-ref
                                  _super19739_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e19741_
                                ((lambda (_g1974319745_)
                                   (make-symbol '":" _g1974319745_))
                                 _$e19741_)
                                ':<root>)))))
                   (let ((_ns19750_
                          (##structure-ref
                           _ctx19667_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr19752_
                            (symbol->string
                             (##structure-ref
                              _ctx19667_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg19759_
                              (let ((_$e19754_
                                     (string-rindex _idstr19752_ '#\/)))
                                (if _$e19754_
                                    ((lambda (_x19757_)
                                       (string->symbol
                                        (substring _idstr19752_ '0 _x19757_)))
                                     _$e19754_)
                                    '#f))))
                         (let ((_rt19761_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx19667_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path19737_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path19737_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude19748_)
                                    (if _pkg19759_
                                        (displayln '"package:" '" " _pkg19759_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns19750_)
                                    (newline)
                                    (pretty-print _code19735_)
                                    (if _rt19761_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt19761_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi19670_
               (lambda (_part19675_)
                 (let ((_part1967619689_ _part19675_))
                   (let ((_E1967819693_
                          (lambda ()
                            (error '"No clause matching" _part1967619689_))))
                     (let ((_K1967919704_
                            (lambda (_code19696_
                                     _n19697_
                                     _phi19698_
                                     _phi-ctx19699_)
                              (let ((_code19702_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code19696_))
                                      gx#current-expander-context
                                      _phi-ctx19699_
                                      gx#current-expander-phi
                                      _phi19698_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx19667_
                                  _n19697_
                                  '".scm")
                                 _code19702_)))))
                       (if (##pair? _part1967619689_)
                           (let ((_hd1968019707_ (##car _part1967619689_))
                                 (_tl1968119709_ (##cdr _part1967619689_)))
                             (let ((_phi-ctx19712_ _hd1968019707_))
                               (if (##pair? _tl1968119709_)
                                   (let ((_hd1968219714_
                                          (##car _tl1968119709_))
                                         (_tl1968319716_
                                          (##cdr _tl1968119709_)))
                                     (let ((_phi19719_ _hd1968219714_))
                                       (if (##pair? _tl1968319716_)
                                           (let ((_hd1968419721_
                                                  (##car _tl1968319716_))
                                                 (_tl1968519723_
                                                  (##cdr _tl1968319716_)))
                                             (let ((_n19726_ _hd1968419721_))
                                               (if (##pair? _tl1968519723_)
                                                   (let ((_hd1968619728_
                                                          (##car _tl1968519723_))
                                                         (_tl1968719730_
                                                          (##cdr _tl1968519723_)))
                                                     (let ((_code19733_
                                                            _hd1968619728_))
                                                       (if (##null? _tl1968719730_)
                                                           (_K1967919704_
                                                            _code19733_
                                                            _n19726_
                                                            _phi19719_
                                                            _phi-ctx19712_)
                                                           (_E1967819693_))))
                                                   (_E1967819693_))))
                                           (_E1967819693_))))
                                   (_E1967819693_))))
                           (_E1967819693_))))))))
          (let ((_g20150_ (gxc#generate-meta-code _ctx19667_)))
            (begin
              (let ((_g20151_ (values-count _g20150_)))
                (if (not (fx= _g20151_ 2))
                    (error "Context expects 2 values" _g20151_)))
              (let ((_ssi-code19672_ (values-ref _g20150_ 0))
                    (_phi-code19673_ (values-ref _g20150_ 1)))
                (begin
                  (_compile-ssi19669_ _ssi-code19672_)
                  (for-each _compile-phi19670_ _phi-code19673_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx19650_)
      (let ((_path19652_ (gxc#compile-output-file _ctx19650_ '#f '".ssxi.ss")))
        (let ((_code19654_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx19650_ '11 gx#module-context::t '#f))))
          (let ((_idstr19656_
                 (symbol->string
                  (##structure-ref _ctx19650_ '1 gx#expander-context::t '#f))))
            (let ((_pkg19663_
                   (let ((_$e19658_ (string-rindex _idstr19656_ '#\/)))
                     (if _$e19658_
                         ((lambda (_x19661_)
                            (string->symbol
                             (substring _idstr19656_ '0 _x19661_)))
                          _$e19658_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path19652_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path19652_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg19663_
                           (displayln '"package: " _pkg19663_)
                           '#!void)
                       (newline)
                       (pretty-print _code19654_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx19643_)
      (let ((_state19645_
             (let ((__obj20141 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj20141 _ctx19643_)
                 __obj20141))))
        (let ((_ssi-code19647_
               (gxc#apply-generate-meta
                (##structure-ref _ctx19643_ '11 gx#module-context::t '#f)
                _state19645_)))
          (let ()
            (values _ssi-code19647_ (gxc#meta-state-end! _state19645_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx19636_)
      (let ((_lifts19638_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code19641_ (gxc#apply-generate-runtime-phi _stx19636_)))
             (if (null? (unbox _lifts19638_))
                 _code19641_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code19641_ '())
                               (reverse (unbox _lifts19638_)))))))
         gxc#current-compile-lift
         _lifts19638_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx19632_)
      (let ((_modules19634_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx19632_ '11 gx#module-context::t '#f)
           _modules19634_)
          (reverse (unbox _modules19634_))))))
  (define gxc#compile-scm-file
    (lambda (_path19628_ _code19629_)
      (begin
        (gxc#verbose '"compile " _path19628_)
        (with-output-to-file
         (cons 'path: (cons _path19628_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code19629_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path19628_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path19628_)))))
  (define gxc#gsc-compile-file
    (lambda (_path19614_)
      (let ((_gsc-args19621_
             (let ((_$e19616_ (gxc#current-compile-gsc-options)))
               (if _$e19616_
                   ((lambda (_opts19619_)
                      (foldr1 cons (cons _path19614_ '()) _opts19619_))
                    _$e19616_)
                   (cons _path19614_ '())))))
        (let ((_proc19623_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args19621_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status19625_ (process-status _proc19623_)))
            (let ()
              (if (zero? _status19625_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path19614_
                   _status19625_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx19586_ _n19587_ _ext19588_)
      (let ((_module-relative-path19590_
             (lambda (_ctx19612_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx19612_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory19591_
               (lambda (_ctx19608_)
                 (path-directory
                  (let ((_mpath19610_
                         (##structure-ref
                          _ctx19608_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath19610_)
                        _mpath19610_
                        (last _mpath19610_)))))))
          (let ((_section-string19592_
                 (lambda (_n19606_)
                   (if (number? _n19606_)
                       (number->string _n19606_)
                       (if (symbol? _n19606_)
                           (symbol->string _n19606_)
                           (if (string? _n19606_)
                               _n19606_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n19606_)))))))
            (let ((_file-name19593_
                   (lambda (_path19604_)
                     (if _n19587_
                         (string-append
                          _path19604_
                          '"__"
                          (_section-string19592_ _n19587_)
                          _ext19588_)
                         (string-append _path19604_ _ext19588_)))))
              (let ((_file-path19594_
                     (lambda ()
                       (let ((_$e19599_ (gxc#current-compile-output-dir)))
                         (if _$e19599_
                             ((lambda (_outdir19602_)
                                (path-expand
                                 (_file-name19593_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx19586_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir19602_))
                              _$e19599_)
                             (path-expand
                              (_file-name19593_
                               (_module-relative-path19590_ _ctx19586_))
                              (_module-source-directory19591_ _ctx19586_)))))))
                (let ((_path19596_ (_file-path19594_)))
                  (begin
                    (create-directory* (path-directory _path19596_))
                    _path19596_)))))))))
  (define gxc#compile-static-output-file
    (lambda (_ctx19569_)
      (let ((_file-name19571_
             (lambda (_idstr19584_)
               (string-append (gxc#static-module-name _idstr19584_) '".scm"))))
        (let ((_file-path19572_
               (lambda ()
                 (let ((_file19577_
                        (_file-name19571_
                         (symbol->string
                          (##structure-ref
                           _ctx19569_
                           '1
                           gx#expander-context::t
                           '#f)))))
                   (let ((_$e19579_ (gxc#current-compile-output-dir)))
                     (if _$e19579_
                         ((lambda (_outdir19582_)
                            (path-expand
                             _file19577_
                             (path-expand '"static" _outdir19582_)))
                          _$e19579_)
                         (path-expand _file19577_ '"static")))))))
          (let ((_path19574_ (_file-path19572_)))
            (begin
              (create-directory* (path-directory _path19574_))
              _path19574_))))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx19556_ _opts19557_)
      (let ((_$e19559_ (pgetq 'output-file: _opts19557_)))
        (if _$e19559_
            (values _$e19559_)
            (let ((_mod-str19562_
                   (symbol->string
                    (##structure-ref
                     _ctx19556_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let ((_$e19564_ (string-rindex _mod-str19562_ '#\/)))
                (if _$e19564_
                    ((lambda (_ix19567_)
                       (substring
                        _mod-str19562_
                        (fx+ _ix19567_ '1)
                        (string-length _mod-str19562_)))
                     _$e19564_)
                    _mod-str19562_)))))))
  (define gxc#static-module-name
    (lambda (_idstr19552_)
      (if (string? _idstr19552_)
          (let ((_strs19554_ (string-split _idstr19552_ '#\/)))
            (string-join _strs19554_ '"__"))
          (if (symbol? _idstr19552_)
              (gxc#static-module-name (symbol->string _idstr19552_))
              (error '"Bad module id" _idstr19552_))))))
