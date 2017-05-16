(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda19234
      (lambda (_srcpath19236_ _opts19237_)
        (begin
          (if (string? _srcpath19236_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath19236_))
          (let ((_outdir19239_ (pgetq 'output-dir: _opts19237_))
                (_invoke-gsc?19240_ (pgetq 'invoke-gsc: _opts19237_))
                (_gsc-options19241_ (pgetq 'gsc-options: _opts19237_))
                (_keep-scm?19242_ (pgetq 'keep-scm: _opts19237_))
                (_verbosity19243_ (pgetq 'verbose: _opts19237_))
                (_optimize19244_ (pgetq 'optimize: _opts19237_))
                (_gen-ssxi19245_ (pgetq 'generate-ssxi: _opts19237_))
                (_static19246_ (pgetq 'static: _opts19237_)))
            (begin
              (if _outdir19239_ (create-directory* _outdir19239_) '#!void)
              (if _optimize19244_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath19236_)
                   (gxc#compile-top-module (gx#import-module _srcpath19236_))))
               gxc#current-compile-output-dir
               _outdir19239_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?19240_
               gxc#current-compile-gsc-options
               _gsc-options19241_
               gxc#current-compile-keep-scm
               _keep-scm?19242_
               gxc#current-compile-verbose
               _verbosity19243_
               gxc#current-compile-optimize
               _optimize19244_
               gxc#current-compile-generate-ssxi
               _gen-ssxi19245_
               gxc#current-compile-static
               _static19246_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath19252_)
          (let ((_opts19254_ '()))
            (gxc#compile-file__opt-lambda19234 _srcpath19252_ _opts19254_))))
      (define gxc#compile-file
        (lambda _g19262_
          (let ((_g19261_ (length _g19262_)))
            (cond ((fx= _g19261_ 1) (apply gxc#compile-file__0 _g19262_))
                  ((fx= _g19261_ 2)
                   (apply gxc#compile-file__opt-lambda19234 _g19262_))
                  (else (error "No clause matching arguments" _g19262_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda19220
      (lambda (_srcpath19222_ _opts19223_)
        (gxc#do-compile-exe
         _srcpath19222_
         _opts19223_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath19228_)
          (let ((_opts19230_ '()))
            (gxc#compile-exe-stub__opt-lambda19220
             _srcpath19228_
             _opts19230_))))
      (define gxc#compile-exe-stub
        (lambda _g19264_
          (let ((_g19263_ (length _g19264_)))
            (cond ((fx= _g19263_ 1) (apply gxc#compile-exe-stub__0 _g19264_))
                  ((fx= _g19263_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda19220 _g19264_))
                  (else (error "No clause matching arguments" _g19264_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda19206
      (lambda (_srcpath19208_ _opts19209_)
        (gxc#do-compile-exe
         _srcpath19208_
         _opts19209_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath19214_)
          (let ((_opts19216_ '()))
            (gxc#compile-static-exe__opt-lambda19206
             _srcpath19214_
             _opts19216_))))
      (define gxc#compile-static-exe
        (lambda _g19266_
          (let ((_g19265_ (length _g19266_)))
            (cond ((fx= _g19265_ 1) (apply gxc#compile-static-exe__0 _g19266_))
                  ((fx= _g19265_ 2)
                   (apply gxc#compile-static-exe__opt-lambda19206 _g19266_))
                  (else (error "No clause matching arguments" _g19266_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath19196_ _opts19197_ _compile-e19198_)
      (begin
        (if (string? _srcpath19196_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath19196_))
        (let ((_outdir19200_ (pgetq 'output-dir: _opts19197_))
              (_invoke-gsc?19201_ (pgetq 'invoke-gsc: _opts19197_))
              (_gsc-options19202_ (pgetq 'gsc-options: _opts19197_))
              (_keep-scm?19203_ (pgetq 'keep-scm: _opts19197_))
              (_verbosity19204_ (pgetq 'verbose: _opts19197_)))
          (begin
            (if _outdir19200_ (create-directory* _outdir19200_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath19196_)
                 (_compile-e19198_
                  (gx#import-module _srcpath19196_)
                  _opts19197_)))
             gxc#current-compile-output-dir
             _outdir19200_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?19201_
             gxc#current-compile-gsc-options
             _gsc-options19202_
             gxc#current-compile-keep-scm
             _keep-scm?19203_
             gxc#current-compile-verbose
             _verbosity19204_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx19164_ _opts19165_)
      (let ((_generate-stub19167_
             (lambda ()
               (let ((_mod-str19189_
                      (symbol->string (gx#expander-context-id _ctx19164_))))
                 (let ((_mod-rt19191_ (string-append _mod-str19189_ '"__rt")))
                   (let ((_mod-main19193_
                          (gxc#find-runtime-symbol _ctx19164_ 'main)))
                     (let ()
                       (begin
                         (write '(##namespace ("")))
                         (newline)
                         (write (cons '_gx#start!
                                      (cons _mod-rt19191_
                                            (cons (cons 'quote
                                                        (cons _mod-main19193_
                                                              '()))
                                                  '()))))
                         (newline)))))))))
        (let ((_compile-stub19168_
               (lambda (_output-scm19175_ _output-bin19176_)
                 (let ((_init-stub19178_
                        (path-expand
                         '"lib/gx-init-exe.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gsc-args19180_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin19176_
                                            (cons _init-stub19178_
                                                  (cons _output-scm19175_
                                                        '())))))))
                     (let ((_g19267_
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args19180_))))
                       (let ((_proc19183_
                              (open-process
                               (cons 'path:
                                     (cons '"gsc"
                                           (cons 'arguments:
                                                 (cons _gsc-args19180_
                                                       (cons 'stdout-redirection:
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (let ((_status19185_ (process-status _proc19183_)))
                           (let ()
                             (if (zero? _status19185_)
                                 '#!void
                                 (gxc#raise-compile-error
                                  '"Compilation error; gsc exit with nonzero status"
                                  _output-scm19175_
                                  _output-bin19176_
                                  _status19185_)))))))))))
          (let ((_output-bin19170_
                 (gxc#compile-exe-output-file _ctx19164_ _opts19165_)))
            (let ((_output-scm19172_
                   (string-append _output-bin19170_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm19172_ _generate-stub19167_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub19168_ _output-scm19172_ _output-bin19170_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm19172_))))))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx19122_ _opts19123_)
      (let ((_generate-stub19125_
             (lambda ()
               (let ((_mod-main19162_
                      (gxc#find-runtime-symbol _ctx19122_ 'main)))
                 (begin
                   (write '(##namespace ("")))
                   (newline)
                   (write (cons 'apply
                                (cons _mod-main19162_
                                      (cons (cons 'cdr
                                                  (cons (cons 'command-line
                                                              '())
                                                        '()))
                                            '()))))
                   (newline))))))
        (let ((_compile-stub19126_
               (lambda (_output-scm19133_ _output-bin19134_)
                 (let ((_gx-gambc019136_
                        (path-expand
                         '"lib/static/gx-gambc0.scm"
                         (getenv '"GERBIL_HOME"))))
                   (let ((_gx-gambc-macros19138_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           (getenv '"GERBIL_HOME"))))
                     (let ((_include-gx-gambc-macros19140_
                            (string-append
                             '"(include \""
                             _gx-gambc-macros19138_
                             '"\")")))
                       (let ((_bin-scm19142_
                              (gxc#find-static-module-file _ctx19122_)))
                         (let ((_deps19144_
                                (gxc#find-runtime-module-deps _ctx19122_)))
                           (let ((_deps19146_
                                  (map gxc#find-static-module-file
                                       _deps19144_)))
                             (let ((_deps19151_
                                    (filter (lambda (_$obj19148_)
                                              (not (gxc#file-empty?
                                                    _$obj19148_)))
                                            _deps19146_)))
                               (let ((_gsc-args19153_
                                      (cons '"-exe"
                                            (cons '"-o"
                                                  (cons _output-bin19134_
                                                        (cons '"-e"
                                                              (cons _include-gx-gambc-macros19140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _gx-gambc019136_
                                  (foldr1 cons
                                          (cons _bin-scm19142_
                                                (cons _output-scm19133_ '()))
                                          _deps19151_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_g19268_
                                        (gxc#verbose
                                         '"invoke gsc "
                                         (cons 'gsc _gsc-args19153_))))
                                   (let ((_proc19156_
                                          (open-process
                                           (cons 'path:
                                                 (cons '"gsc"
                                                       (cons 'arguments:
                                                             (cons _gsc-args19153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'stdout-redirection: (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((_status19158_
                                            (process-status _proc19156_)))
                                       (let ()
                                         (if (zero? _status19158_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Compilation error; gsc exit with nonzero status"
                                              _output-scm19133_
                                              _output-bin19134_
                                              _status19158_)))))))))))))))))
          (let ((_output-bin19128_
                 (gxc#compile-exe-output-file _ctx19122_ _opts19123_)))
            (let ((_output-scm19130_
                   (string-append _output-bin19128_ '".scm")))
              (let ()
                (begin
                  (with-output-to-file _output-scm19130_ _generate-stub19125_)
                  (if (gxc#current-compile-invoke-gsc)
                      (_compile-stub19126_ _output-scm19130_ _output-bin19128_)
                      '#!void)
                  (if (gxc#current-compile-keep-scm)
                      '#!void
                      (delete-file _output-scm19130_))))))))))
  (define gxc#find-export-binding
    (lambda (_ctx19072_ _id19073_)
      (let ((_$e19119_
             (find (lambda (_e1907419076_)
                     (let ((_g1907819088_ _e1907419076_))
                       (let ((_E1908119092_
                              (lambda ()
                                (error '"No clause matching" _g1907819088_))))
                         (let ((_else1908019096_ (lambda () '#f)))
                           (let ((_K1908219100_ (lambda () '#t)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _g1907819088_)
                                 (let ((_e1908319103_
                                        (##vector-ref _g1907819088_ '1)))
                                   (let ((_e1908419106_
                                          (##vector-ref _g1907819088_ '2)))
                                     (let ((_e1908519109_
                                            (##vector-ref _g1907819088_ '3)))
                                       (if (##eq? _e1908519109_ '0)
                                           (let ((_e1908619112_
                                                  (##vector-ref
                                                   _g1907819088_
                                                   '4)))
                                             (if ((lambda (_g1911419116_)
                                                    (eq? _g1911419116_
                                                         _id19073_))
                                                  _e1908619112_)
                                                 (_K1908219100_)
                                                 (_else1908019096_)))
                                           (_else1908019096_)))))
                                 (_else1908019096_)))))))
                   (gx#module-context-export _ctx19072_))))
        (if _$e19119_ (gx#core-resolve-module-export _$e19119_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx19064_ _id19065_)
      (let ((_$e19067_ (gxc#find-export-binding _ctx19064_ _id19065_)))
        (if _$e19067_
            ((lambda (_bind19070_)
               (begin
                 (if (gx#runtime-binding? _bind19070_)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id19065_))
                 (gx#binding-id _bind19070_)))
             _$e19067_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (gx#expander-context-id _ctx19064_)
             _id19065_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx19002_)
      (let ((_ht19004_ (make-hash-table-eq)))
        (letrec ((_find-deps19005_
                  (lambda (_rest19012_ _deps19013_)
                    (let ((_rest1901419022_ _rest19012_))
                      (let ((_E1901719026_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest1901419022_))))
                        (let ((_else1901619030_ (lambda () _deps19013_)))
                          (let ((_K1901819052_
                                 (lambda (_rest19033_ _hd19034_)
                                   (if (gx#module-context? _hd19034_)
                                       (let ((_id19036_
                                              (gx#expander-context-id
                                               _hd19034_))
                                             (_imports19037_
                                              (gx#module-context-import
                                               _hd19034_)))
                                         (if (table-ref
                                              _ht19004_
                                              _id19036_
                                              '#f)
                                             (_find-deps19005_
                                              _rest19033_
                                              _deps19013_)
                                             (let ((_$e19039_
                                                    (gx#core-context-prelude
                                                     _hd19034_)))
                                               (if _$e19039_
                                                   ((lambda (_pre19042_)
                                                      (begin
                                                        (table-set!
                                                         _ht19004_
                                                         _id19036_
                                                         _hd19034_)
                                                        (let ((_xdeps19044_
                                                               (_find-deps19005_
                                                                (cons _pre19042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _imports19037_)
                        _deps19013_)))
                  (_find-deps19005_
                   _rest19033_
                   (cons _hd19034_ _xdeps19044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e19039_)
                                                   (begin
                                                     (table-set!
                                                      _ht19004_
                                                      _id19036_
                                                      _hd19034_)
                                                     (let ((_xdeps19046_
                                                            (_find-deps19005_
                                                             _imports19037_
                                                             _deps19013_)))
                                                       (_find-deps19005_
                                                        _rest19033_
                                                        (cons _hd19034_
                                                              _xdeps19046_))))))))
                                       (if (gx#prelude-context? _hd19034_)
                                           (let ((_id19048_
                                                  (gx#expander-context-id
                                                   _hd19034_)))
                                             (if (table-ref
                                                  _ht19004_
                                                  _id19048_
                                                  '#f)
                                                 (_find-deps19005_
                                                  _rest19033_
                                                  _deps19013_)
                                                 (begin
                                                   (table-set!
                                                    _ht19004_
                                                    _id19048_
                                                    _hd19034_)
                                                   (let ((_xdeps19050_
                                                          (_find-deps19005_
                                                           (gx#prelude-context-import
                                                            _hd19034_)
                                                           _deps19013_)))
                                                     (_find-deps19005_
                                                      _rest19033_
                                                      (cons _hd19034_
                                                            _xdeps19050_))))))
                                           (if (gx#module-import? _hd19034_)
                                               (if (fxzero? (gx#module-import-phi
                                                             _hd19034_))
                                                   (_find-deps19005_
                                                    (cons (gx#module-import-source
                                                           _hd19034_)
                                                          _rest19033_)
                                                    _deps19013_)
                                                   (_find-deps19005_
                                                    _rest19033_
                                                    _deps19013_))
                                               (if (gx#module-export?
                                                    _hd19034_)
                                                   (_find-deps19005_
                                                    (cons (gx#module-export-context
                                                           _hd19034_)
                                                          _rest19033_)
                                                    _deps19013_)
                                                   (if (gx#import-set?
                                                        _hd19034_)
                                                       (if (fxzero? (gx#module-import-phi
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd19034_))
                   (_find-deps19005_
                    (cons (gx#import-set-source _hd19034_) _rest19033_)
                    _deps19013_)
                   (_find-deps19005_ _rest19033_ _deps19013_))
               (error '"Unexpected module import" _hd19034_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (##pair? _rest1901419022_)
                                (let ((_hd1901919055_ (##car _rest1901419022_))
                                      (_tl1902019057_
                                       (##cdr _rest1901419022_)))
                                  (let ((_hd19060_ _hd1901919055_))
                                    (let ((_rest19062_ _tl1902019057_))
                                      (_K1901819052_ _rest19062_ _hd19060_))))
                                (_else1901619030_)))))))))
          (reverse (_find-deps19005_
                    (let ((_$e19007_ (gx#core-context-prelude _ctx19002_)))
                      (if _$e19007_
                          ((lambda (_pre19010_)
                             (cons _pre19010_
                                   (gx#module-context-import _ctx19002_)))
                           _$e19007_)
                          (gx#module-context-import _ctx19002_)))
                    '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx18941_)
      (let ((_scm18943_
             (string-append
              (gxc#static-module-name (gx#expander-context-id _ctx18941_))
              '".scm")))
        (let ((_dirs18945_ (gx#current-expander-module-library-path)))
          (let ((_dirs18954_
                 (let ((_$e18947_ (gxc#current-compile-output-dir)))
                   (if _$e18947_
                       ((lambda (_g1894918951_)
                          (cons _g1894918951_ _dirs18945_))
                        _$e18947_)
                       _dirs18945_))))
            (let ((_dirs18960_
                   (map (lambda (_g1895518957_)
                          (path-expand '"static" _g1895518957_))
                        _dirs18954_)))
              (let ()
                ((letrec ((_lp18963_
                           (lambda (_rest18965_)
                             (let ((_rest1896618974_ _rest18965_))
                               (let ((_E1896918978_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _rest1896618974_))))
                                 (let ((_else1896818982_
                                        (lambda ()
                                          (gxc#raise-compile-error
                                           '"cannot find static module"
                                           (gx#expander-context-id _ctx18941_)
                                           _scm18943_))))
                                   (let ((_K1897018990_
                                          (lambda (_rest18985_ _dir18986_)
                                            (let ((_path18988_
                                                   (path-expand
                                                    _scm18943_
                                                    _dir18986_)))
                                              (if (file-exists? _path18988_)
                                                  _path18988_
                                                  (_lp18963_ _rest18985_))))))
                                     (if (##pair? _rest1896618974_)
                                         (let ((_hd1897118993_
                                                (##car _rest1896618974_))
                                               (_tl1897218995_
                                                (##cdr _rest1896618974_)))
                                           (let ((_dir18998_ _hd1897118993_))
                                             (let ((_rest19000_
                                                    _tl1897218995_))
                                               (_K1897018990_
                                                _rest19000_
                                                _dir18998_))))
                                         (_else1896818982_)))))))))
                   _lp18963_)
                 _dirs18960_))))))))
  (define gxc#file-empty?
    (lambda (_path18939_)
      (zero? (file-info-size (file-info _path18939_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx18936_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose '"compile " (gx#expander-context-id _ctx18936_))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx18936_)
               '#!void)
           (gxc#collect-bindings _ctx18936_)
           (gxc#compile-runtime-code _ctx18936_)
           (gxc#compile-meta-code _ctx18936_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx18936_)
               '#!void)))
       gx#current-expander-context
       _ctx18936_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj19259 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj19259) __obj19259))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx18934_)
      (gxc#apply-collect-bindings (gx#module-context-code _ctx18934_))))
  (define gxc#compile-runtime-code
    (lambda (_ctx18893_)
      (let ((_generate-runtime-code18896_
             (lambda (_ctx18911_ _code18912_)
               (let ((_runtime-code18915_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code18912_))
                       gx#current-expander-context
                       _ctx18911_)))
                 (let ((_scm018917_
                        (gxc#compile-output-file _ctx18911_ '0 '".scm")))
                   (let ()
                     (if (gxc#current-compile-static)
                         (let ((_scms18920_
                                (gxc#compile-static-output-file _ctx18911_)))
                           (begin
                             (call-with-parameters
                              (lambda ()
                                (gxc#compile-scm-file
                                 _scm018917_
                                 _runtime-code18915_))
                              gxc#current-compile-keep-scm
                              '#t)
                             (if (file-exists? _scms18920_)
                                 (delete-file _scms18920_)
                                 '#!void)
                             (copy-file _scm018917_ _scms18920_)
                             (if (gxc#current-compile-keep-scm)
                                 '#!void
                                 (delete-file _scm018917_))))
                         (gxc#compile-scm-file
                          _scm018917_
                          _runtime-code18915_))))))))
        (let ((_generate-loader-code18897_
               (lambda (_ctx18901_ _code18902_ _rt18903_)
                 (let ((_loader-code18906_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code18902_))
                         gx#current-expander-context
                         _ctx18901_)))
                   (let ((_loader-code18908_
                          (if _rt18903_
                              (cons 'begin
                                    (cons _loader-code18906_
                                          (cons (cons 'load-module
                                                      (cons _rt18903_ '()))
                                                '())))
                              _loader-code18906_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx18901_ 'rt '".scm")
                        _loader-code18908_)))))))
          (let ((_compile118895_
                 (lambda (_ctx18923_)
                   (let ((_code18925_ (gx#module-context-code _ctx18923_)))
                     (let ((_rt18929_
                            (if (gxc#apply-find-runtime-code _code18925_)
                                (let ((_idstr18927_
                                       (symbol->string
                                        (gx#expander-context-id _ctx18923_))))
                                  (string-append _idstr18927_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt18929_
                               (begin
                                 (table-set!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx18923_
                                  _rt18929_)
                                 (_generate-runtime-code18896_
                                  _ctx18923_
                                  _code18925_))
                               (if (gxc#current-compile-static)
                                   (let ((_path18932_
                                          (gxc#compile-static-output-file
                                           _ctx18923_)))
                                     (with-output-to-file
                                      (cons 'path:
                                            (cons _path18932_
                                                  (cons 'permissions:
                                                        (cons '420 '()))))
                                      void))
                                   '#!void))
                           (_generate-loader-code18897_
                            _ctx18923_
                            _code18925_
                            _rt18929_))))))))
            (let ((_all-modules18899_
                   (cons _ctx18893_ (gxc#lift-nested-modules _ctx18893_))))
              (for-each _compile118895_ _all-modules18899_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx18795_)
      (let ((_compile-ssi18797_
             (lambda (_code18863_)
               (let ((_path18865_
                      (gxc#compile-output-file _ctx18795_ '#f '".ssi")))
                 (let ((_prelude18876_
                        (let ((_super18867_ (gx#phi-context-super _ctx18795_)))
                          (let ((_$e18869_
                                 (gx#expander-context-id _super18867_)))
                            (if _$e18869_
                                ((lambda (_g1887118873_)
                                   (make-symbol '":" _g1887118873_))
                                 _$e18869_)
                                ':<root>)))))
                   (let ((_ns18878_ (gx#module-context-ns _ctx18795_)))
                     (let ((_idstr18880_
                            (symbol->string
                             (gx#expander-context-id _ctx18795_))))
                       (let ((_pkg18887_
                              (let ((_$e18882_
                                     (string-rindex _idstr18880_ '#\/)))
                                (if _$e18882_
                                    ((lambda (_x18885_)
                                       (string->symbol
                                        (substring _idstr18880_ '0 _x18885_)))
                                     _$e18882_)
                                    '#f))))
                         (let ((_rt18889_
                                (table-ref
                                 (gxc#current-compile-runtime-sections)
                                 _ctx18795_
                                 '#f)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path18865_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path18865_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude18876_)
                                    (if _pkg18887_
                                        (displayln '"package:" '" " _pkg18887_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns18878_)
                                    (newline)
                                    (pretty-print _code18863_)
                                    (if _rt18889_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt18889_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi18798_
               (lambda (_part18803_)
                 (let ((_part1880418817_ _part18803_))
                   (let ((_E1880618821_
                          (lambda ()
                            (error '"No clause matching" _part1880418817_))))
                     (let ((_K1880718832_
                            (lambda (_code18824_
                                     _n18825_
                                     _phi18826_
                                     _phi-ctx18827_)
                              (let ((_code18830_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code18824_))
                                      gx#current-expander-context
                                      _phi-ctx18827_
                                      gx#current-expander-phi
                                      _phi18826_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx18795_
                                  _n18825_
                                  '".scm")
                                 _code18830_)))))
                       (if (##pair? _part1880418817_)
                           (let ((_hd1880818835_ (##car _part1880418817_))
                                 (_tl1880918837_ (##cdr _part1880418817_)))
                             (let ((_phi-ctx18840_ _hd1880818835_))
                               (if (##pair? _tl1880918837_)
                                   (let ((_hd1881018842_
                                          (##car _tl1880918837_))
                                         (_tl1881118844_
                                          (##cdr _tl1880918837_)))
                                     (let ((_phi18847_ _hd1881018842_))
                                       (if (##pair? _tl1881118844_)
                                           (let ((_hd1881218849_
                                                  (##car _tl1881118844_))
                                                 (_tl1881318851_
                                                  (##cdr _tl1881118844_)))
                                             (let ((_n18854_ _hd1881218849_))
                                               (if (##pair? _tl1881318851_)
                                                   (let ((_hd1881418856_
                                                          (##car _tl1881318851_))
                                                         (_tl1881518858_
                                                          (##cdr _tl1881318851_)))
                                                     (let ((_code18861_
                                                            _hd1881418856_))
                                                       (if (##null? _tl1881518858_)
                                                           (_K1880718832_
                                                            _code18861_
                                                            _n18854_
                                                            _phi18847_
                                                            _phi-ctx18840_)
                                                           (_E1880618821_))))
                                                   (_E1880618821_))))
                                           (_E1880618821_))))
                                   (_E1880618821_))))
                           (_E1880618821_))))))))
          (let ((_g19269_ (gxc#generate-meta-code _ctx18795_)))
            (begin
              (let ((_g19270_ (values-count _g19269_)))
                (if (not (fx= _g19270_ 2))
                    (error "Context expects 2 values" _g19270_)))
              (let ((_ssi-code18800_ (values-ref _g19269_ 0))
                    (_phi-code18801_ (values-ref _g19269_ 1)))
                (begin
                  (_compile-ssi18797_ _ssi-code18800_)
                  (for-each _compile-phi18798_ _phi-code18801_)))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx18778_)
      (let ((_path18780_ (gxc#compile-output-file _ctx18778_ '#f '".ssxi.ss")))
        (let ((_code18782_
               (gxc#apply-generate-ssxi (gx#module-context-code _ctx18778_))))
          (let ((_idstr18784_
                 (symbol->string (gx#expander-context-id _ctx18778_))))
            (let ((_pkg18791_
                   (let ((_$e18786_ (string-rindex _idstr18784_ '#\/)))
                     (if _$e18786_
                         ((lambda (_x18789_)
                            (string->symbol
                             (substring _idstr18784_ '0 _x18789_)))
                          _$e18786_)
                         '#f))))
              (let ()
                (begin
                  (gxc#verbose '"compile " _path18780_)
                  (with-output-to-file
                   (cons 'path:
                         (cons _path18780_
                               (cons 'permissions: (cons '420 '()))))
                   (lambda ()
                     (begin
                       (displayln '"prelude: :gerbil/compiler/ssxi")
                       (if _pkg18791_
                           (displayln '"package: " _pkg18791_)
                           '#!void)
                       (newline)
                       (pretty-print _code18782_))))))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx18771_)
      (let ((_state18773_
             (let ((__obj19260 (make-object gxc#meta-state::t '4)))
               (begin
                 (gxc#meta-state:::init! __obj19260 _ctx18771_)
                 __obj19260))))
        (let ((_ssi-code18775_
               (gxc#apply-generate-meta
                (gx#module-context-code _ctx18771_)
                _state18773_)))
          (let ()
            (values _ssi-code18775_ (gxc#meta-state-end! _state18773_)))))))
  (define gxc#generate-runtime-phi
    (lambda (_stx18764_)
      (let ((_lifts18766_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code18769_ (gxc#apply-generate-runtime-phi _stx18764_)))
             (if (null? (unbox _lifts18766_))
                 _code18769_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code18769_ '())
                               (reverse (unbox _lifts18766_)))))))
         gxc#current-compile-lift
         _lifts18766_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx18760_)
      (let ((_modules18762_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (gx#module-context-code _ctx18760_)
           _modules18762_)
          (reverse (unbox _modules18762_))))))
  (define gxc#compile-scm-file
    (lambda (_path18756_ _code18757_)
      (begin
        (gxc#verbose '"compile " _path18756_)
        (with-output-to-file
         (cons 'path: (cons _path18756_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code18757_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path18756_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path18756_)))))
  (define gxc#gsc-compile-file
    (lambda (_path18742_)
      (let ((_gsc-args18749_
             (let ((_$e18744_ (gxc#current-compile-gsc-options)))
               (if _$e18744_
                   ((lambda (_opts18747_)
                      (foldr1 cons (cons _path18742_ '()) _opts18747_))
                    _$e18744_)
                   (cons _path18742_ '())))))
        (let ((_proc18751_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args18749_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status18753_ (process-status _proc18751_)))
            (let ()
              (if (zero? _status18753_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path18742_
                   _status18753_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx18714_ _n18715_ _ext18716_)
      (let ((_module-relative-path18718_
             (lambda (_ctx18740_)
               (path-strip-directory
                (symbol->string (gx#expander-context-id _ctx18740_))))))
        (let ((_module-source-directory18719_
               (lambda (_ctx18736_)
                 (path-directory
                  (let ((_mpath18738_ (gx#module-context-path _ctx18736_)))
                    (if (string? _mpath18738_)
                        _mpath18738_
                        (last _mpath18738_)))))))
          (let ((_section-string18720_
                 (lambda (_n18734_)
                   (if (number? _n18734_)
                       (number->string _n18734_)
                       (if (symbol? _n18734_)
                           (symbol->string _n18734_)
                           (if (string? _n18734_)
                               _n18734_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n18734_)))))))
            (let ((_file-name18721_
                   (lambda (_path18732_)
                     (if _n18715_
                         (string-append
                          _path18732_
                          '"__"
                          (_section-string18720_ _n18715_)
                          _ext18716_)
                         (string-append _path18732_ _ext18716_)))))
              (let ((_file-path18722_
                     (lambda ()
                       (let ((_$e18727_ (gxc#current-compile-output-dir)))
                         (if _$e18727_
                             ((lambda (_outdir18730_)
                                (path-expand
                                 (_file-name18721_
                                  (symbol->string
                                   (gx#expander-context-id _ctx18714_)))
                                 _outdir18730_))
                              _$e18727_)
                             (path-expand
                              (_file-name18721_
                               (_module-relative-path18718_ _ctx18714_))
                              (_module-source-directory18719_ _ctx18714_)))))))
                (let ((_path18724_ (_file-path18722_)))
                  (begin
                    (create-directory* (path-directory _path18724_))
                    _path18724_)))))))))
  (define gxc#compile-static-output-file
    (lambda (_ctx18697_)
      (let ((_file-name18699_
             (lambda (_idstr18712_)
               (string-append (gxc#static-module-name _idstr18712_) '".scm"))))
        (let ((_file-path18700_
               (lambda ()
                 (let ((_file18705_
                        (_file-name18699_
                         (symbol->string
                          (gx#expander-context-id _ctx18697_)))))
                   (let ((_$e18707_ (gxc#current-compile-output-dir)))
                     (if _$e18707_
                         ((lambda (_outdir18710_)
                            (path-expand
                             _file18705_
                             (path-expand '"static" _outdir18710_)))
                          _$e18707_)
                         (path-expand _file18705_ '"static")))))))
          (let ((_path18702_ (_file-path18700_)))
            (begin
              (create-directory* (path-directory _path18702_))
              _path18702_))))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx18684_ _opts18685_)
      (let ((_$e18687_ (pgetq 'output-file: _opts18685_)))
        (if _$e18687_
            (values _$e18687_)
            (let ((_mod-str18690_
                   (symbol->string (gx#expander-context-id _ctx18684_))))
              (let ((_$e18692_ (string-rindex _mod-str18690_ '#\/)))
                (if _$e18692_
                    ((lambda (_ix18695_)
                       (substring
                        _mod-str18690_
                        (fx+ _ix18695_ '1)
                        (string-length _mod-str18690_)))
                     _$e18692_)
                    _mod-str18690_)))))))
  (define gxc#static-module-name
    (lambda (_idstr18680_)
      (if (string? _idstr18680_)
          (let ((_strs18682_ (string-split _idstr18680_ '#\/)))
            (string-join _strs18682_ '"__"))
          (if (symbol? _idstr18680_)
              (gxc#static-module-name (symbol->string _idstr18680_))
              (error '"Bad module id" _idstr18680_))))))
