(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda20114
      (lambda (_srcpath20116_ _opts20117_)
        (begin
          (if (string? _srcpath20116_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath20116_))
          (let ((_outdir20119_ (pgetq 'output-dir: _opts20117_))
                (_invoke-gsc?20120_ (pgetq 'invoke-gsc: _opts20117_))
                (_gsc-options20121_ (pgetq 'gsc-options: _opts20117_))
                (_keep-scm?20122_ (pgetq 'keep-scm: _opts20117_))
                (_verbosity20123_ (pgetq 'verbose: _opts20117_))
                (_optimize20124_ (pgetq 'optimize: _opts20117_))
                (_gen-ssxi20125_ (pgetq 'generate-ssxi: _opts20117_))
                (_static20126_ (pgetq 'static: _opts20117_)))
            (begin
              (if _outdir20119_ (create-directory* _outdir20119_) '#!void)
              (if _optimize20124_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath20116_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath20116_))))
               gxc#current-compile-output-dir
               _outdir20119_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?20120_
               gxc#current-compile-gsc-options
               _gsc-options20121_
               gxc#current-compile-keep-scm
               _keep-scm?20122_
               gxc#current-compile-verbose
               _verbosity20123_
               gxc#current-compile-optimize
               _optimize20124_
               gxc#current-compile-generate-ssxi
               _gen-ssxi20125_
               gxc#current-compile-static
               _static20126_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath20132_)
          (let ((_opts20134_ '()))
            (gxc#compile-file__opt-lambda20114 _srcpath20132_ _opts20134_))))
      (define gxc#compile-file
        (lambda _g20142_
          (let ((_g20141_ (length _g20142_)))
            (cond ((fx= _g20141_ 1) (apply gxc#compile-file__0 _g20142_))
                  ((fx= _g20141_ 2)
                   (apply gxc#compile-file__opt-lambda20114 _g20142_))
                  (else (error "No clause matching arguments" _g20142_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda20100
      (lambda (_srcpath20102_ _opts20103_)
        (gxc#do-compile-exe
         _srcpath20102_
         _opts20103_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath20108_)
          (let ((_opts20110_ '()))
            (gxc#compile-exe-stub__opt-lambda20100
             _srcpath20108_
             _opts20110_))))
      (define gxc#compile-exe-stub
        (lambda _g20144_
          (let ((_g20143_ (length _g20144_)))
            (cond ((fx= _g20143_ 1) (apply gxc#compile-exe-stub__0 _g20144_))
                  ((fx= _g20143_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda20100 _g20144_))
                  (else (error "No clause matching arguments" _g20144_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda20086
      (lambda (_srcpath20088_ _opts20089_)
        (gxc#do-compile-exe
         _srcpath20088_
         _opts20089_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath20094_)
          (let ((_opts20096_ '()))
            (gxc#compile-static-exe__opt-lambda20086
             _srcpath20094_
             _opts20096_))))
      (define gxc#compile-static-exe
        (lambda _g20146_
          (let ((_g20145_ (length _g20146_)))
            (cond ((fx= _g20145_ 1) (apply gxc#compile-static-exe__0 _g20146_))
                  ((fx= _g20145_ 2)
                   (apply gxc#compile-static-exe__opt-lambda20086 _g20146_))
                  (else (error "No clause matching arguments" _g20146_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath20076_ _opts20077_ _compile-e20078_)
      (begin
        (if (string? _srcpath20076_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath20076_))
        (let ((_outdir20080_ (pgetq 'output-dir: _opts20077_))
              (_invoke-gsc?20081_ (pgetq 'invoke-gsc: _opts20077_))
              (_gsc-options20082_ (pgetq 'gsc-options: _opts20077_))
              (_keep-scm?20083_ (pgetq 'keep-scm: _opts20077_))
              (_verbosity20084_ (pgetq 'verbose: _opts20077_)))
          (begin
            (if _outdir20080_ (create-directory* _outdir20080_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath20076_)
                 (_compile-e20078_
                  (gx#import-module__0 _srcpath20076_)
                  _opts20077_)))
             gxc#current-compile-output-dir
             _outdir20080_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?20081_
             gxc#current-compile-gsc-options
             _gsc-options20082_
             gxc#current-compile-keep-scm
             _keep-scm?20083_
             gxc#current-compile-verbose
             _verbosity20084_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx20044_ _opts20045_)
      (let ((_generate-stub20047_
             (lambda ()
               (let ((_mod-str20069_
                      (symbol->string
                       (##structure-ref
                        _ctx20044_
                        '1
                        gx#expander-context::t
                        '#f))))
                 (let ((_mod-rt20071_ (string-append _mod-str20069_ '"__rt")))
                   (let ((_mod-main20073_
                          (gxc#find-runtime-symbol _ctx20044_ 'main)))
                     (let ()
                       (begin
                         (write '(##namespace ("")))
                         (newline)
                         (write (cons '_gx#start!
                                      (cons _mod-rt20071_
                                            (cons (cons 'quote
                                                        (cons _mod-main20073_
                                                              '()))
                                                  '()))))
                         (newline)))))))))
        (let ((_compile-stub20048_
               (lambda (_output-scm20055_ _output-bin20056_)
                 (let ((_init-stub20058_
                        (path-expand
                         '"lib/gx-init-exe.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gsc-args20060_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin20056_
                                            (cons _init-stub20058_
                                                  (cons _output-scm20055_
                                                        '())))))))
                     (let ((_g20147_
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args20060_))))
                       (let ((_proc20063_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args20060_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status20065_ (process-status _proc20063_)))
                           (let ()
                             (if (zero? _status20065_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm20055_
                                  _output-bin20056_
                                  _status20065_)))))))))))
          (let ((_output-bin20050_
                 (gxc#compile-exe-output-file _ctx20044_ _opts20045_)))
            (let ((_output-scm20052_
                   (string-append _output-bin20050_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20052_ _generate-stub20047_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub20048_ _output-scm20052_ _output-bin20050_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20052_))))))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx19993_ _opts19994_)
      (let ((_generate-stub19996_
             (lambda ()
               (let ((_mod-main20042_
                      (gxc#find-runtime-symbol _ctx19993_ 'main)))
                 (begin
                   (write '(##namespace ("")))
                   (newline)
                   (write (cons 'apply
                                (cons _mod-main20042_
                                      (cons (cons 'cdr
                                                  (cons (cons 'command-line
                                                              '())
                                                        '()))
                                            '()))))
                   (newline))))))
        (let ((_compile-stub19997_
               (lambda (_output-scm20004_ _output-bin20005_)
                 (let ((_gerbil-home20007_ (getenv '"GERBIL_HOME")))
                   (let ((_gx-gambc020009_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home20007_)))
                     (let ((_gx-gambc-init20011_
                            (path-expand
                             '"lib/gx-init-static-exe.scm"
                             _gerbil-home20007_)))
                       (let ((_gx-gambc-macros20013_
                              (path-expand
                               '"lib/static/gx-gambc#.scm"
                               _gerbil-home20007_)))
                         (let ((_include-gx-gambc-macros20015_
                                (string-append
                                 '"(include \""
                                 _gx-gambc-macros20013_
                                 '"\")")))
                           (let ((_bin-scm20017_
                                  (gxc#find-static-module-file _ctx19993_)))
                             (let ((_deps20019_
                                    (gxc#find-runtime-module-deps _ctx19993_)))
                               (let ((_deps20021_
                                      (map gxc#find-static-module-file
                                           _deps20019_)))
                                 (let ((_deps20026_
                                        (filter (lambda (_$obj20023_)
                                                  (not (gxc#file-empty?
                                                        _$obj20023_)))
                                                _deps20021_)))
                                   (let ((_gsc-opts20031_
                                          (let ((_$e20028_
                                                 (pgetq 'gsc-options:
                                                        _opts19994_)))
                                            (if _$e20028_ _$e20028_ '()))))
                                     (let ((_gsc-args20033_
                                            (cons '"-exe"
                                                  (cons '"-o"
                                                        (cons _output-bin20005_
                                                              (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros20015_
                                          (cons _gx-gambc020009_
                                                (cons _gx-gambc-init20011_
                                                      (foldr1 cons
                                                              (cons _bin-scm20017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm20004_ '()))
                      _deps20026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _gsc-opts20031_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_g20148_
                                              (gxc#verbose
                                               '"invoke gsc "
                                               (cons 'gsc _gsc-args20033_))))
                                         (let ((_proc20036_
                                                (open-process
                                                 (cons 'path:
                                                       (cons '"gsc"
                                                             (cons 'arguments:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _gsc-args20033_
                                 (cons 'stdout-redirection:
                                       (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_status20038_
                                                  (process-status
                                                   _proc20036_)))
                                             (let ()
                                               (if (zero? _status20038_)
                                                   '#!void
                                                   (gxc#raise-compile-error
                                                    '"Compilation error; gsc exit with nonzero status"
                                                    _output-scm20004_
                                                    _output-bin20005_
                                                    _status20038_))))))))))))))))))))
          (let ((_output-bin19999_
                 (gxc#compile-exe-output-file _ctx19993_ _opts19994_)))
            (let ((_output-scm20001_
                   (string-append _output-bin19999_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm20001_ _generate-stub19996_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub19997_ _output-scm20001_ _output-bin19999_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm20001_))))))))))
  (define gxc#find-export-binding
    (lambda (_ctx19943_ _id19944_)
      (let ((_$e19990_
             (find (lambda (_e1994519947_)
                     (let ((_g1994919959_ _e1994519947_))
                       (let ((_E1995219963_
                              (lambda ()
                                (error '"No clause matching" _g1994919959_))))
                         (let ((_else1995119967_ (lambda () '#f)))
                           (let ((_K1995319971_ (lambda () '#t)))
                             (if (##structure-direct-instance-of?
                                  _g1994919959_
                                  (##type-id gx#module-export::t))
                                 (let ((_e1995419974_
                                        (##vector-ref _g1994919959_ '1)))
                                   (let ((_e1995519977_
                                          (##vector-ref _g1994919959_ '2)))
                                     (let ((_e1995619980_
                                            (##vector-ref _g1994919959_ '3)))
                                       (if (##eq? _e1995619980_ '0)
                                           (let ((_e1995719983_
                                                  (##vector-ref
                                                   _g1994919959_
                                                   '4)))
                                             (if ((lambda (_g1998519987_)
                                                    (eq? _g1998519987_
                                                         _id19944_))
                                                  _e1995719983_)
                                                 (_K1995319971_)
                                                 (_else1995119967_)))
                                           (_else1995119967_)))))
                                 (_else1995119967_)))))))
                   (##structure-ref _ctx19943_ '9 gx#module-context::t '#f))))
        (if _$e19990_ (gx#core-resolve-module-export _$e19990_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx19935_ _id19936_)
      (let ((_$e19938_ (gxc#find-export-binding _ctx19935_ _id19936_)))
        (if _$e19938_
            ((lambda (_bind19941_)
               (begin
                 (if (##structure-instance-of?
                      _bind19941_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id19936_))
                 (##structure-ref _bind19941_ '1 gx#binding::t '#f)))
             _$e19938_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx19935_ '1 gx#expander-context::t '#f)
             _id19936_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx19873_)
      (let ((_ht19875_ (make-hash-table-eq)))
        (letrec ((_find-deps19876_
                  (lambda (_rest19883_ _deps19884_)
                    (let ((_rest1988519893_ _rest19883_))
                      (let ((_E1988819897_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest1988519893_))))
                        (let ((_else1988719901_ (lambda () _deps19884_)))
                          (let ((_K1988919923_
                                 (lambda (_rest19904_ _hd19905_)
                                   (if (##structure-instance-of?
                                        _hd19905_
                                        'gx#module-context::t)
                                       (let ((_id19907_
                                              (##structure-ref
                                               _hd19905_
                                               '1
                                               gx#expander-context::t
                                               '#f))
                                             (_imports19908_
                                              (##structure-ref
                                               _hd19905_
                                               '8
                                               gx#module-context::t
                                               '#f)))
                                         (if (table-ref
                                              _ht19875_
                                              _id19907_
                                              '#f)
                                             (_find-deps19876_
                                              _rest19904_
                                              _deps19884_)
                                             (let ((_$e19910_
                                                    (gx#core-context-prelude__opt-lambda11356
                                                     _hd19905_)))
                                               (if _$e19910_
                                                   ((lambda (_pre19913_)
                                                      (let ((_xdeps19915_
                                                             (_find-deps19876_
                                                              (cons _pre19913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _imports19908_)
                      _deps19884_)))
                (begin
                  (table-set! _ht19875_ _id19907_ _hd19905_)
                  (_find-deps19876_
                   _rest19904_
                   (cons _hd19905_ _xdeps19915_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e19910_)
                                                   (let ((_xdeps19917_
                                                          (_find-deps19876_
                                                           _imports19908_
                                                           _deps19884_)))
                                                     (begin
                                                       (table-set!
                                                        _ht19875_
                                                        _id19907_
                                                        _hd19905_)
                                                       (_find-deps19876_
                                                        _rest19904_
                                                        (cons _hd19905_
                                                              _xdeps19917_))))))))
                                       (if (##structure-instance-of?
                                            _hd19905_
                                            'gx#prelude-context::t)
                                           (let ((_id19919_
                                                  (##structure-ref
                                                   _hd19905_
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)))
                                             (if (table-ref
                                                  _ht19875_
                                                  _id19919_
                                                  '#f)
                                                 (_find-deps19876_
                                                  _rest19904_
                                                  _deps19884_)
                                                 (let ((_xdeps19921_
                                                        (_find-deps19876_
                                                         (##structure-ref
                                                          _hd19905_
                                                          '7
                                                          gx#prelude-context::t
                                                          '#f)
                                                         _deps19884_)))
                                                   (if (table-ref
                                                        _ht19875_
                                                        _id19919_
                                                        '#f)
                                                       (_find-deps19876_
                                                        _rest19904_
                                                        _xdeps19921_)
                                                       (begin
                                                         (table-set!
                                                          _ht19875_
                                                          _id19919_
                                                          _hd19905_)
                                                         (_find-deps19876_
                                                          _rest19904_
                                                          (cons _hd19905_
                                                                _xdeps19921_)))))))
                                           (if (##structure-direct-instance-of?
                                                _hd19905_
                                                'gx#module-import::t)
                                               (if (fxzero? (##structure-ref
                                                             _hd19905_
                                                             '3
                                                             gx#module-import::t
                                                             '#f))
                                                   (_find-deps19876_
                                                    (cons (##structure-ref
                                                           _hd19905_
                                                           '1
                                                           gx#module-import::t
                                                           '#f)
                                                          _rest19904_)
                                                    _deps19884_)
                                                   (_find-deps19876_
                                                    _rest19904_
                                                    _deps19884_))
                                               (if (##structure-direct-instance-of?
                                                    _hd19905_
                                                    'gx#module-export::t)
                                                   (_find-deps19876_
                                                    (cons (##structure-ref
                                                           _hd19905_
                                                           '1
                                                           gx#module-export::t
                                                           '#f)
                                                          _rest19904_)
                                                    _deps19884_)
                                                   (if (##structure-direct-instance-of?
                                                        _hd19905_
                                                        'gx#import-set::t)
                                                       (if (fxzero? (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd19905_
                             '3
                             gx#module-import::t
                             '#f))
                   (_find-deps19876_
                    (cons (##structure-ref _hd19905_ '1 gx#import-set::t '#f)
                          _rest19904_)
                    _deps19884_)
                   (_find-deps19876_ _rest19904_ _deps19884_))
               (error '"Unexpected module import" _hd19905_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (##pair? _rest1988519893_)
                                (let ((_hd1989019926_ (##car _rest1988519893_))
                                      (_tl1989119928_
                                       (##cdr _rest1988519893_)))
                                  (let ((_hd19931_ _hd1989019926_))
                                    (let ((_rest19933_ _tl1989119928_))
                                      (_K1988919923_ _rest19933_ _hd19931_))))
                                (_else1988719901_)))))))))
          (reverse (filter gx#expander-context-id
                           (_find-deps19876_
                            (let ((_$e19878_
                                   (gx#core-context-prelude__opt-lambda11356
                                    _ctx19873_)))
                              (if _$e19878_
                                  ((lambda (_pre19881_)
                                     (cons _pre19881_
                                           (##structure-ref
                                            _ctx19873_
                                            '8
                                            gx#module-context::t
                                            '#f)))
                                   _$e19878_)
                                  (##structure-ref
                                   _ctx19873_
                                   '8
                                   gx#module-context::t
                                   '#f)))
                            '())))))))
  (define gxc#find-static-module-file
    (lambda (_ctx19812_)
      (let ((_scm19814_
             (string-append
              (gxc#static-module-name
               (##structure-ref _ctx19812_ '1 gx#expander-context::t '#f))
              '".scm")))
        (let ((_dirs19816_ (gx#current-expander-module-library-path)))
          (let ((_dirs19825_
                 (let ((_$e19818_ (gxc#current-compile-output-dir)))
                   (if _$e19818_
                       ((lambda (_g1982019822_)
                          (cons _g1982019822_ _dirs19816_))
                        _$e19818_)
                       _dirs19816_))))
            (let ((_dirs19831_
                   (map (lambda (_g1982619828_)
                          (path-expand '"static" _g1982619828_))
                        _dirs19825_)))
              (let ()
                ((letrec ((_lp19834_
                           (lambda (_rest19836_)
                             (let ((_rest1983719845_ _rest19836_))
                               (let ((_E1984019849_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _rest1983719845_))))
                                 (let ((_else1983919853_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"cannot find static module"
                                           (##structure-ref
                                            _ctx19812_
                                            '1
                                            gx#expander-context::t
                                            '#f)
                                           _scm19814_))))
                                   (let ((_K1984119861_
                                          (lambda (_rest19856_ _dir19857_)
                                            (let ((_path19859_
                                                   (path-expand
                                                    _scm19814_
                                                    _dir19857_)))
                                              (if (file-exists? _path19859_)
                                                  _path19859_
                                                  (_lp19834_ _rest19856_))))))
                                     (if (##pair? _rest1983719845_)
                                         (let ((_hd1984219864_
                                                (##car _rest1983719845_))
                                               (_tl1984319866_
                                                (##cdr _rest1983719845_)))
                                           (let ((_dir19869_ _hd1984219864_))
                                             (let ((_rest19871_
                                                    _tl1984319866_))
                                               (_K1984119861_
                                                _rest19871_
                                                _dir19869_))))
                                         (_else1983919853_)))))))))
                   _lp19834_)
                 _dirs19831_))))))))
  (define gxc#file-empty?
    (lambda (_path19810_)
      (zero? (file-info-size (file-info _path19810_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx19807_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx19807_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx19807_)
               '#!void)
           (gxc#collect-bindings _ctx19807_)
           (gxc#compile-runtime-code _ctx19807_)
           (gxc#compile-meta-code _ctx19807_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx19807_)
               '#!void)))
       gx#current-expander-context
       _ctx19807_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj20139 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj20139) __obj20139))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx19805_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx19805_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx19764_)
      (let ((_generate-runtime-code19767_
             (lambda (_ctx19782_ _code19783_)
               (let ((_runtime-code19786_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code19783_))
                       gx#current-expander-context
                       _ctx19782_)))
                 (let ((_scm019788_
                        (gxc#compile-output-file _ctx19782_ '0 '".scm")))
                   (let ()
                     (if (gxc#current-compile-static)
                         (let ((_scms19791_
                                (gxc#compile-static-output-file _ctx19782_)))
                           (begin
                             (call-with-parameters
                              (lambda ()
                                (gxc#compile-scm-file
                                 _scm019788_
                                 _runtime-code19786_))
                              gxc#current-compile-keep-scm
                              '#t)
                             (if (file-exists? _scms19791_)
                                 (delete-file _scms19791_)
                                 '#!void)
                             (gxc#verbose
                              '"copy static module "
                              _scm019788_
                              '" => "
                              _scms19791_)
                             (copy-file _scm019788_ _scms19791_)
                             (if (gxc#current-compile-keep-scm)
                                 '#!void
                                 (delete-file _scm019788_))))
                         (gxc#compile-scm-file
                          _scm019788_
                          _runtime-code19786_))))))))
        (let ((_generate-loader-code19768_
               (lambda (_ctx19772_ _code19773_ _rt19774_)
                 (let ((_loader-code19777_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code19773_))
                         gx#current-expander-context
                         _ctx19772_)))
                   (let ((_loader-code19779_
                          (if _rt19774_
                              (cons 'begin
                                    (cons _loader-code19777_
                                          (cons (cons 'load-module
                                                      (cons _rt19774_ '()))
                                                '())))
                              _loader-code19777_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx19772_ 'rt '".scm")
                        _loader-code19779_)))))))
          (let ((_compile119766_
                 (lambda (_ctx19794_)
                   (let ((_code19796_
                          (##structure-ref
                           _ctx19794_
                           '11
                           gx#module-context::t
                           '#f)))
                     (let ((_rt19800_
                            (if (gxc#apply-find-runtime-code _code19796_)
                                (let ((_idstr19798_
                                       (symbol->string
                                        (##structure-ref
                                         _ctx19794_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr19798_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt19800_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx19794_
                                  _rt19800_)
                                 (_generate-runtime-code19767_
                                  _ctx19794_
                                  _code19796_))
                               (if (gxc#current-compile-static)
                                   (let ((_path19803_
                                          (gxc#compile-static-output-file
                                           _ctx19794_)))
                                     (with-output-to-file
                                      (cons 'path:
                                            (cons _path19803_
                                                  (cons 'permissions:
                                                        (cons '420 '()))))
                                      void))
                                   '#!void))
                           (_generate-loader-code19768_
                            _ctx19794_
                            _code19796_
                            _rt19800_))))))))
            (let ((_all-modules19770_
                   (cons _ctx19764_ (gxc#lift-nested-modules _ctx19764_))))
              (for-each _compile119766_ _all-modules19770_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx19666_)
      (let ((_compile-ssi19668_
             (lambda (_code19734_)
               (let ((_path19736_
                      (gxc#compile-output-file _ctx19666_ '#f '".ssi")))
                 (let ((_prelude19747_
                        (let ((_super19738_
                               (##structure-ref
                                _ctx19666_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (let ((_$e19740_
                                 (##structure-ref
                                  _super19738_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (if _$e19740_
                                ((lambda (_g1974219744_)
                                   (make-symbol '":" _g1974219744_))
                                 _$e19740_)
                                ':<root>)))))
                   (let ((_ns19749_
                          (##structure-ref
                           _ctx19666_
                           '6
                           gx#module-context::t
                           '#f)))
                     (let ((_idstr19751_
                            (symbol->string
                             (##structure-ref
                              _ctx19666_
                              '1
                              gx#expander-context::t
                              '#f))))
                       (let ((_pkg19758_
                              (let ((_$e19753_
                                     (string-rindex _idstr19751_ '#\/)))
                                (if _$e19753_
                                    ((lambda (_x19756_)
                                       (string->symbol
                                        (substring _idstr19751_ '0 _x19756_)))
                                     _$e19753_)
                                    '#f))))
                         (let ((_rt19760_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx19666_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path19736_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path19736_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude19747_)
                                    (if _pkg19758_
                                        (displayln '"package:" '" " _pkg19758_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns19749_)
                                    (newline)
                                    (pretty-print _code19734_)
                                    (if _rt19760_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt19760_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi19669_
               (lambda (_part19674_)
                 (let ((_part1967519688_ _part19674_))
                   (let ((_E1967719692_
                          (lambda ()
                            (error '"No clause matching" _part1967519688_))))
                     (let ((_K1967819703_
                            (lambda (_code19695_
                                     _n19696_
                                     _phi19697_
                                     _phi-ctx19698_)
                              (let ((_code19701_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code19695_))
                                      gx#current-expander-context
                                      _phi-ctx19698_
                                      gx#current-expander-phi
                                      _phi19697_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx19666_
                                  _n19696_
                                  '".scm")
                                 _code19701_)))))
                       (if (##pair? _part1967519688_)
                           (let ((_hd1967919706_ (##car _part1967519688_))
                                 (_tl1968019708_ (##cdr _part1967519688_)))
                             (let ((_phi-ctx19711_ _hd1967919706_))
                               (if (##pair? _tl1968019708_)
                                   (let ((_hd1968119713_
                                          (##car _tl1968019708_))
                                         (_tl1968219715_
                                          (##cdr _tl1968019708_)))
                                     (let ((_phi19718_ _hd1968119713_))
                                       (if (##pair? _tl1968219715_)
                                           (let ((_hd1968319720_
                                                  (##car _tl1968219715_))
                                                 (_tl1968419722_
                                                  (##cdr _tl1968219715_)))
                                             (let ((_n19725_ _hd1968319720_))
                                               (if (##pair? _tl1968419722_)
                                                   (let ((_hd1968519727_
                                                          (##car _tl1968419722_))
                                                         (_tl1968619729_
                                                          (##cdr _tl1968419722_)))
                                                     (let ((_code19732_
                                                            _hd1968519727_))
                                                       (if (##null? _tl1968619729_)
                                                           (_K1967819703_
                                                            _code19732_
                                                            _n19725_
                                                            _phi19718_
                                                            _phi-ctx19711_)
                                                           (_E1967719692_))))
                                                   (_E1967719692_))))
                                           (_E1967719692_))))
                                   (_E1967719692_))))
                           (_E1967719692_))))))))
          (let ((_g20149_ (gxc#generate-meta-code _ctx19666_)))
            (begin
              (let ((_g20150_ (values-count _g20149_)))
                (if (not (fx= _g20150_ 2))
                    (error "Context expects 2 values" _g20150_)))
              (let ((_ssi-code19671_ (values-ref _g20149_ 0))
                    (_phi-code19672_ (values-ref _g20149_ 1)))
                (begin
                  (_compile-ssi19668_ _ssi-code19671_)
                  (for-each _compile-phi19669_ _phi-code19672_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx19649_)
      (let ((_path19651_ (gxc#compile-output-file _ctx19649_ '#f '".ssxi.ss")))
        (let ((_code19653_
               (gxc#apply-generate-ssxi
                (##structure-ref _ctx19649_ '11 gx#module-context::t '#f))))
          (let ((_idstr19655_
                 (symbol->string
                  (##structure-ref _ctx19649_ '1 gx#expander-context::t '#f))))
            (let ((_pkg19662_
                   (let ((_$e19657_ (string-rindex _idstr19655_ '#\/)))
                     (if _$e19657_
                         ((lambda (_x19660_)
                            (string->symbol
                             (substring _idstr19655_ '0 _x19660_)))
                          _$e19657_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path19651_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path19651_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg19662_
                           (displayln '"package: " _pkg19662_)
                           '#!void)
                       (newline)
                       (pretty-print _code19653_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx19642_)
      (let ((_state19644_
             (let ((__obj20140 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj20140 _ctx19642_)
                 __obj20140))))
        (let ((_ssi-code19646_
               (gxc#apply-generate-meta
                (##structure-ref _ctx19642_ '11 gx#module-context::t '#f)
                _state19644_)))
          (let ()
            (values _ssi-code19646_ (gxc#meta-state-end! _state19644_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx19635_)
      (let ((_lifts19637_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code19640_ (gxc#apply-generate-runtime-phi _stx19635_)))
             (if (null? (unbox _lifts19637_))
                 _code19640_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code19640_ '())
                               (reverse (unbox _lifts19637_)))))))
         gxc#current-compile-lift
         _lifts19637_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx19631_)
      (let ((_modules19633_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx19631_ '11 gx#module-context::t '#f)
           _modules19633_)
          (reverse (unbox _modules19633_))))))
  (define gxc#compile-scm-file
    (lambda (_path19627_ _code19628_)
      (begin
        (gxc#verbose '"compile " _path19627_)
        (with-output-to-file
         (cons 'path: (cons _path19627_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code19628_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path19627_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path19627_)))))
  (define gxc#gsc-compile-file
    (lambda (_path19613_)
      (let ((_gsc-args19620_
             (let ((_$e19615_ (gxc#current-compile-gsc-options)))
               (if _$e19615_
                   ((lambda (_opts19618_)
                      (foldr1 cons (cons _path19613_ '()) _opts19618_))
                    _$e19615_)
                   (cons _path19613_ '())))))
        (let ((_proc19622_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args19620_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status19624_ (process-status _proc19622_)))
            (let ()
              (if (zero? _status19624_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path19613_
                   _status19624_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx19585_ _n19586_ _ext19587_)
      (let ((_module-relative-path19589_
             (lambda (_ctx19611_)
               (path-strip-directory
                (symbol->string
                 (##structure-ref
                  _ctx19611_
                  '1
                  gx#expander-context::t
                  '#f))))))
        (let ((_module-source-directory19590_
               (lambda (_ctx19607_)
                 (path-directory
                  (let ((_mpath19609_
                         (##structure-ref
                          _ctx19607_
                          '7
                          gx#module-context::t
                          '#f)))
                    (if (string? _mpath19609_)
                        _mpath19609_
                        (last _mpath19609_)))))))
          (let ((_section-string19591_
                 (lambda (_n19605_)
                   (if (number? _n19605_)
                       (number->string _n19605_)
                       (if (symbol? _n19605_)
                           (symbol->string _n19605_)
                           (if (string? _n19605_)
                               _n19605_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n19605_)))))))
            (let ((_file-name19592_
                   (lambda (_path19603_)
                     (if _n19586_
                         (string-append
                          _path19603_
                          '"__"
                          (_section-string19591_ _n19586_)
                          _ext19587_)
                         (string-append _path19603_ _ext19587_)))))
              (let ((_file-path19593_
                     (lambda ()
                       (let ((_$e19598_ (gxc#current-compile-output-dir)))
                         (if _$e19598_
                             ((lambda (_outdir19601_)
                                (path-expand
                                 (_file-name19592_
                                  (symbol->string
                                   (##structure-ref
                                    _ctx19585_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                                 _outdir19601_))
                              _$e19598_)
                             (path-expand
                              (_file-name19592_
                               (_module-relative-path19589_ _ctx19585_))
                              (_module-source-directory19590_ _ctx19585_)))))))
                (let ((_path19595_ (_file-path19593_)))
                  (begin
                    (create-directory* (path-directory _path19595_))
                    _path19595_)))))))))
  (define gxc#compile-static-output-file
    (lambda (_ctx19568_)
      (let ((_file-name19570_
             (lambda (_idstr19583_)
               (string-append (gxc#static-module-name _idstr19583_) '".scm"))))
        (let ((_file-path19571_
               (lambda ()
                 (let ((_file19576_
                        (_file-name19570_
                         (symbol->string
                          (##structure-ref
                           _ctx19568_
                           '1
                           gx#expander-context::t
                           '#f)))))
                   (let ((_$e19578_ (gxc#current-compile-output-dir)))
                     (if _$e19578_
                         ((lambda (_outdir19581_)
                            (path-expand
                             _file19576_
                             (path-expand '"static" _outdir19581_)))
                          _$e19578_)
                         (path-expand _file19576_ '"static")))))))
          (let ((_path19573_ (_file-path19571_)))
            (begin
              (create-directory* (path-directory _path19573_))
              _path19573_))))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx19555_ _opts19556_)
      (let ((_$e19558_ (pgetq 'output-file: _opts19556_)))
        (if _$e19558_
            (values _$e19558_)
            (let ((_mod-str19561_
                   (symbol->string
                    (##structure-ref
                     _ctx19555_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let ((_$e19563_ (string-rindex _mod-str19561_ '#\/)))
                (if _$e19563_
                    ((lambda (_ix19566_)
                       (substring
                        _mod-str19561_
                        (fx+ _ix19566_ '1)
                        (string-length _mod-str19561_)))
                     _$e19563_)
                    _mod-str19561_)))))))
  (define gxc#static-module-name
    (lambda (_idstr19551_)
      (if (string? _idstr19551_)
          (let ((_strs19553_ (string-split _idstr19551_ '#\/)))
            (string-join _strs19553_ '"__"))
          (if (symbol? _idstr19551_)
              (gxc#static-module-name (symbol->string _idstr19551_))
              (error '"Bad module id" _idstr19551_))))))
