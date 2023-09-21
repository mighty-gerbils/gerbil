(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1695337525)
  (begin
    (define gxc#default-gerbil-gsc (path-expand '"gsc" (path-expand '"~~bin")))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda () (inexact->exact (floor (time->seconds (current-time))))))
    (define gxc#compile-timestamp-nanos
      (lambda () (time->seconds (current-time))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_path69612_ _fun69613_)
        (with-output-to-file
         (let ((__tmp69686
                (let ()
                  (declare (not safe))
                  (cons _path69612_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp69686))
         _fun69613_)))
    (define gxc#+gerbil-gsc+ '#f)
    (define gxc#gerbil-gsc
      (lambda ()
        (if gxc#+gerbil-gsc+
            '#!void
            (set! gxc#+gerbil-gsc+
                  (getenv '"GERBIL_GSC" gxc#default-gerbil-gsc)))
        gxc#+gerbil-gsc+))
    (define gxc#+gerbil-gcc+ '#f)
    (define gxc#gerbil-gcc
      (lambda ()
        (if gxc#+gerbil-gcc+
            '#!void
            (set! gxc#+gerbil-gcc+
                  (getenv '"GERBIL_GCC" gxc#default-gerbil-gcc)))
        gxc#+gerbil-gcc+))
    (define gxc#+gerbil-ar+ '#f)
    (define gxc#gerbil-ar
      (lambda ()
        (if gxc#+gerbil-ar+
            '#!void
            (set! gxc#+gerbil-ar+ (getenv '"GERBIL_AR" gxc#default-gerbil-ar)))
        gxc#+gerbil-ar+))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/system"
        "gerbil/runtime/loader"
        "gerbil/runtime/control"
        "gerbil/runtime/mop"
        "gerbil/runtime/error"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir69607_) (delete-file-or-directory _dir69607_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath69581_ _opts69582_)
        (if (let () (declare (not safe)) (string? _srcpath69581_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath69581_)))
        (let ((_outdir69584_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts69582_)))
              (_invoke-gsc?69585_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts69582_)))
              (_gsc-options69586_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts69582_)))
              (_keep-scm?69587_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts69582_)))
              (_verbosity69588_
               (let () (declare (not safe)) (pgetq 'verbose: _opts69582_)))
              (_optimize69589_
               (let () (declare (not safe)) (pgetq 'optimize: _opts69582_)))
              (_debug69590_
               (let () (declare (not safe)) (pgetq 'debug: _opts69582_)))
              (_gen-ssxi69591_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts69582_))))
          (if _outdir69584_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir69584_))))
              '#!void)
          (if _optimize69589_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let () (declare (not safe)) (gxc#optimizer-info-init!))))
              '#!void)
          (let ((__tmp69688
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath69581_))
                   (let ((__tmp69689
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath69581_))))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp69689))))
                (__tmp69687
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp69688
             gxc#current-compile-output-dir
             _outdir69584_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?69585_
             gxc#current-compile-gsc-options
             _gsc-options69586_
             gxc#current-compile-keep-scm
             _keep-scm?69587_
             gxc#current-compile-verbose
             _verbosity69588_
             gxc#current-compile-optimize
             _optimize69589_
             gxc#current-compile-debug
             _debug69590_
             gxc#current-compile-generate-ssxi
             _gen-ssxi69591_
             gxc#current-compile-timestamp
             __tmp69687
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath69600_)
        (let ((_opts69602_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath69600_ _opts69602_))))
    (define gxc#compile-module
      (lambda _g69691_
        (let ((_g69690_ (let () (declare (not safe)) (##length _g69691_))))
          (cond ((let () (declare (not safe)) (##fx= _g69690_ 1))
                 (apply (lambda (_srcpath69600_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath69600_)))
                        _g69691_))
                ((let () (declare (not safe)) (##fx= _g69690_ 2))
                 (apply (lambda (_srcpath69604_ _opts69605_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath69604_
                             _opts69605_)))
                        _g69691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g69691_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath69558_ _opts69559_)
        (if (let () (declare (not safe)) (string? _srcpath69558_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath69558_)))
        (let ((_outdir69561_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts69559_)))
              (_invoke-gsc?69562_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts69559_)))
              (_gsc-options69563_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts69559_)))
              (_keep-scm?69564_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts69559_)))
              (_verbosity69565_
               (let () (declare (not safe)) (pgetq 'verbose: _opts69559_))))
          (if _outdir69561_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir69561_))))
              '#!void)
          (let ((__tmp69693
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath69558_))
                   (let ((__tmp69694
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath69558_))))))
                     (declare (not safe))
                     (gxc#compile-executable-module __tmp69694 _opts69559_))))
                (__tmp69692
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp69693
             gxc#current-compile-output-dir
             _outdir69561_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?69562_
             gxc#current-compile-gsc-options
             _gsc-options69563_
             gxc#current-compile-keep-scm
             _keep-scm?69564_
             gxc#current-compile-verbose
             _verbosity69565_
             gxc#current-compile-timestamp
             __tmp69692
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath69573_)
        (let ((_opts69575_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath69573_ _opts69575_))))
    (define gxc#compile-exe
      (lambda _g69696_
        (let ((_g69695_ (let () (declare (not safe)) (##length _g69696_))))
          (cond ((let () (declare (not safe)) (##fx= _g69695_ 1))
                 (apply (lambda (_srcpath69573_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath69573_)))
                        _g69696_))
                ((let () (declare (not safe)) (##fx= _g69695_ 2))
                 (apply (lambda (_srcpath69577_ _opts69578_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath69577_ _opts69578_)))
                        _g69696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g69696_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx69554_ _opts69555_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts69555_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx69554_
               _opts69555_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx69554_
               _opts69555_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx69202_ _opts69203_)
        (letrec ((_generate-stub69205_
                  (lambda (_builtin-modules69550_)
                    (let ((_mod-main69552_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx69202_ 'main))))
                      (write (let ((__tmp69697
                                    (let ((__tmp69698
                                           (let ((__tmp69699
                                                  (let ((__tmp69700
                                                         (let ((__tmp69702
                                                                (let ((__tmp69703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules69550_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp69703)))
                       (__tmp69701
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp69702 __tmp69701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp69700))))
                                             (declare (not safe))
                                             (cons __tmp69699 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp69698))))
                               (declare (not safe))
                               (cons 'define __tmp69697)))
                      (write (let ((__tmp69704
                                    (let ((__tmp69715
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp69705
                                           (let ((__tmp69713
                                                  (let ((__tmp69714
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'builtin-modules
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp69714)))
                                                 (__tmp69706
                                                  (let ((__tmp69707
                                                         (let ((__tmp69708
                                                                (let ((__tmp69709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69710
                                      (let ((__tmp69711
                                             (let ((__tmp69712
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp69712 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp69711))))
                                 (declare (not safe))
                                 (cons __tmp69710 '()))))
                          (declare (not safe))
                          (cons _mod-main69552_ __tmp69709))))
                   (declare (not safe))
                   (cons 'apply __tmp69708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69707 '()))))
                                             (declare (not safe))
                                             (cons __tmp69713 __tmp69706))))
                                      (declare (not safe))
                                      (cons __tmp69715 __tmp69705))))
                               (declare (not safe))
                               (cons 'define __tmp69704)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-gsc-link-opts69206_
                  (lambda ()
                    (let ((_opts69460_
                           (let ()
                             (declare (not safe))
                             (pgetq 'gsc-options: _opts69203_))))
                      (let _lp69462_ ((_rest69464_ _opts69460_)
                                      (_opts69465_ '()))
                        (let* ((_rest6946669486_ _rest69464_)
                               (_else6947069494_
                                (lambda () (reverse _opts69465_))))
                          (let ((_K6948069537_
                                 (lambda (_rest69535_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69462_ _rest69535_ _opts69465_))))
                                (_K6947569519_
                                 (lambda (_rest69517_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69462_ _rest69517_ _opts69465_))))
                                (_K6947269501_
                                 (lambda (_rest69498_ _hd69499_)
                                   (let ((__tmp69716
                                          (let ()
                                            (declare (not safe))
                                            (cons _hd69499_ _opts69465_))))
                                     (declare (not safe))
                                     (_lp69462_ _rest69498_ __tmp69716)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6946669486_))
                                (let ((_tl6948269542_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6946669486_)))
                                      (_hd6948169540_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6946669486_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _hd6948169540_ '"-cc-options"))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6948269542_))
                                          (let* ((_tl6948469545_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _tl6948269542_)))
                                                 (_rest69548_ _tl6948469545_))
                                            (declare (not safe))
                                            (_K6948069537_ _rest69548_))
                                          (let ((_hd69509_ _hd6948169540_)
                                                (_rest69511_ _tl6948269542_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6947269501_
                                               _rest69511_
                                               _hd69509_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _hd6948169540_
                                                    '"-ld-options"))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl6948269542_))
                                              (let* ((_tl6947969527_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _tl6948269542_)))
                                                     (_rest69530_
                                                      _tl6947969527_))
                                                (declare (not safe))
                                                (_K6947569519_ _rest69530_))
                                              (let ((_hd69509_ _hd6948169540_)
                                                    (_rest69511_
                                                     _tl6948269542_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_K6947269501_
                                                   _rest69511_
                                                   _hd69509_))))
                                          (let ((_hd69509_ _hd6948169540_)
                                                (_rest69511_ _tl6948269542_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6947269501_
                                               _rest69511_
                                               _hd69509_))))))
                                (let ()
                                  (declare (not safe))
                                  (_else6947069494_)))))))))
                 (_get-gsc-cc-opts69207_
                  (lambda (_gerbil-staticdir69385_)
                    (let* ((_opts69387_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts69203_)))
                           (_base69389_
                            (string-append '"-I " _gerbil-staticdir69385_))
                           (_user-static-dir69391_
                            (path-expand
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil"))))
                           (_base69393_
                            (string-append
                             _base69389_
                             '" -I "
                             _user-static-dir69391_)))
                      (let _lp69396_ ((_rest69398_ _opts69387_)
                                      (_ccflags69399_ _base69393_))
                        (let* ((_rest6940069414_ _rest69398_)
                               (_else6940369422_
                                (lambda ()
                                  (let ((__tmp69717
                                         (let ()
                                           (declare (not safe))
                                           (cons _ccflags69399_ '()))))
                                    (declare (not safe))
                                    (cons '"-cc-options" __tmp69717)))))
                          (let ((_K6940869442_
                                 (lambda (_rest69439_ _opts69440_)
                                   (let ((__tmp69718
                                          (string-append
                                           _ccflags69399_
                                           '" "
                                           _opts69440_)))
                                     (declare (not safe))
                                     (_lp69396_ _rest69439_ __tmp69718))))
                                (_K6940569428_
                                 (lambda (_rest69426_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69396_ _rest69426_ _ccflags69399_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6940069414_))
                                (let ((_tl6941069447_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6940069414_)))
                                      (_hd6940969445_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6940069414_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _hd6940969445_ '"-cc-options"))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6941069447_))
                                          (let ((_tl6941269452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6941069447_)))
                                                (_hd6941169450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6941069447_))))
                                            (let ((_opts69455_ _hd6941169450_)
                                                  (_rest69457_ _tl6941269452_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6940869442_
                                                 _rest69457_
                                                 _opts69455_))))
                                          (let ((_rest69434_ _tl6941069447_))
                                            (declare (not safe))
                                            (_K6940569428_ _rest69434_)))
                                      (let ((_rest69434_ _tl6941069447_))
                                        (declare (not safe))
                                        (_K6940569428_ _rest69434_))))
                                (let ()
                                  (declare (not safe))
                                  (_else6940369422_)))))))))
                 (_get-output-ld-opts69208_
                  (lambda ()
                    (let ((_opts69320_
                           (let ()
                             (declare (not safe))
                             (pgetq 'gsc-options: _opts69203_))))
                      (let _lp69322_ ((_rest69324_ _opts69320_)
                                      (_ldflags69325_ '""))
                        (let* ((_rest6932669340_ _rest69324_)
                               (_else6932969348_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (string-empty? _ldflags69325_))
                                      '()
                                      (filter _not-string-empty?69213_
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _ldflags69325_
                                                 '#\space)))))))
                          (let ((_K6933469368_
                                 (lambda (_rest69365_ _opts69366_)
                                   (let ((__tmp69719
                                          (string-append
                                           _ldflags69325_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (string-empty?
                                                  _ldflags69325_))
                                               '""
                                               '" ")
                                           _opts69366_)))
                                     (declare (not safe))
                                     (_lp69322_ _rest69365_ __tmp69719))))
                                (_K6933169354_
                                 (lambda (_rest69352_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69322_ _rest69352_ _ldflags69325_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6932669340_))
                                (let ((_tl6933669373_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6932669340_)))
                                      (_hd6933569371_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6932669340_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _hd6933569371_ '"-ld-options"))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6933669373_))
                                          (let ((_tl6933869378_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6933669373_)))
                                                (_hd6933769376_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6933669373_))))
                                            (let ((_opts69381_ _hd6933769376_)
                                                  (_rest69383_ _tl6933869378_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6933469368_
                                                 _rest69383_
                                                 _opts69381_))))
                                          (let ((_rest69360_ _tl6933669373_))
                                            (declare (not safe))
                                            (_K6933169354_ _rest69360_)))
                                      (let ((_rest69360_ _tl6933669373_))
                                        (declare (not safe))
                                        (_K6933169354_ _rest69360_))))
                                (let ()
                                  (declare (not safe))
                                  (_else6932969348_)))))))))
                 (_get-libgerbil-ld-opts69209_
                  (lambda (_libgerbil69317_)
                    (call-with-input-file
                     (string-append _libgerbil69317_ '".ldd")
                     read)))
                 (_replace-extension69210_
                  (lambda (_path69314_ _ext69315_)
                    (string-append
                     (path-strip-extension _path69314_)
                     _ext69315_)))
                 (_not-exclude-module?69211_
                  (lambda (_ctx69310_)
                    (let ((_id-str69312_
                           (symbol->string
                            (##structure-ref
                             _ctx69310_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp69721
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"gerbil/" _id-str69312_))))
                            (declare (not safe))
                            (not __tmp69721))
                          (let ((__tmp69720
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str69312_))))
                            (declare (not safe))
                            (not __tmp69720))
                          '#f))))
                 (_not-file-empty?69212_
                  (lambda (_path69308_)
                    (let ((__tmp69722
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path69308_))))
                      (declare (not safe))
                      (not __tmp69722))))
                 (_not-string-empty?69213_
                  (lambda (_str69306_)
                    (let ((__tmp69723
                           (let ()
                             (declare (not safe))
                             (string-empty? _str69306_))))
                      (declare (not safe))
                      (not __tmp69723))))
                 (_compile-stub69214_
                  (lambda (_output-scm69221_ _output-bin69222_)
                    (let* ((_gerbil-home69224_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir69226_
                            (path-expand '"lib" _gerbil-home69224_))
                           (_gerbil-staticdir69228_
                            (path-expand '"static" _gerbil-libdir69226_))
                           (_gxlink69230_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir69226_))
                           (_tmp69232_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path69236_
                            (lambda (_f69234_)
                              (path-expand
                               (path-strip-directory _f69234_)
                               _tmp69232_)))
                           (_deps69238_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx69202_)))
                           (_deps69240_
                            (filter _not-exclude-module?69211_ _deps69238_))
                           (_src-deps-scm69242_
                            (map gxc#find-static-module-file _deps69240_))
                           (_src-deps-scm69244_
                            (filter _not-file-empty?69212_
                                    _src-deps-scm69242_))
                           (_src-deps-scm69246_
                            (map path-expand _src-deps-scm69244_))
                           (_deps-scm69248_
                            (map _tmp-path69236_ _src-deps-scm69246_))
                           (_deps-c69254_
                            (map (lambda (_g6924969251_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension69210_
                                      _g6924969251_
                                      '".c")))
                                 _deps-scm69248_))
                           (_deps-o69260_
                            (map (lambda (_g6925569257_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension69210_
                                      _g6925569257_
                                      '".o")))
                                 _deps-scm69248_))
                           (_src-bin-scm69262_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx69202_)))
                           (_src-bin-scm69264_
                            (path-expand _src-bin-scm69262_))
                           (_bin-scm69266_
                            (let ()
                              (declare (not safe))
                              (_tmp-path69236_ _src-bin-scm69264_)))
                           (_bin-c69268_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69210_ _bin-scm69266_ '".c")))
                           (_bin-o69270_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69210_ _bin-scm69266_ '".o")))
                           (_output-bin69272_ (path-expand _output-bin69222_))
                           (_output-scm69274_ (path-expand _output-scm69221_))
                           (_output-c69276_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69210_
                               _output-scm69274_
                               '".c")))
                           (_output-o69278_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69210_
                               _output-scm69274_
                               '".o")))
                           (_output_69280_
                            (string-append
                             (path-strip-extension _output-scm69274_)
                             '"_"))
                           (_output_-c69282_
                            (string-append _output_69280_ '".c"))
                           (_output_-o69284_
                            (string-append _output_69280_ '".o"))
                           (_gsc-opts69286_
                            (let ()
                              (declare (not safe))
                              (_get-gsc-link-opts69206_)))
                           (_gsc-cc-opts69288_
                            (let ()
                              (declare (not safe))
                              (_get-gsc-cc-opts69207_
                               _gerbil-staticdir69228_)))
                           (_output-ld-opts69290_
                            (let ()
                              (declare (not safe))
                              (_get-output-ld-opts69208_)))
                           (_libgerbil.a69292_
                            (path-expand '"libgerbil.a" _gerbil-libdir69226_))
                           (_libgerbil.so69294_
                            (path-expand '"libgerbil.so" _gerbil-libdir69226_))
                           (_libgerbil-ld-opts69296_
                            (if (file-exists? _libgerbil.so69294_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts69209_
                                   _libgerbil.so69294_))
                                (if (file-exists? _libgerbil.a69292_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts69209_
                                       _libgerbil.a69292_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a69292_
                                       _libgerbil.so69294_)))))
                           (_gerbil-rpath69298_
                            (string-append
                             '"-Wl,-rpath="
                             _gerbil-libdir69226_))
                           (_builtin-modules69302_
                            (map (lambda (_mod69300_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod69300_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx69202_ _deps69240_)))))
                      (let ((__tmp69724 (path-directory _output-bin69272_)))
                        (declare (not safe))
                        (create-directory* __tmp69724))
                      (let ((__tmp69725
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub69205_
                                  _builtin-modules69302_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm69274_
                         __tmp69725))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (create-directory _tmp69232_)
                            (for-each
                             copy-file
                             _src-deps-scm69246_
                             _deps-scm69248_)
                            (copy-file _src-bin-scm69264_ _bin-scm69266_)
                            (let ((__tmp69735
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp69726
                                   (let ((__tmp69727
                                          (let ((__tmp69728
                                                 (let ((__tmp69729
                                                        (let ((__tmp69731
                                                               (let ((__tmp69732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69733
                                     (let ((__tmp69734
                                            (let ()
                                              (declare (not safe))
                                              (cons _output-scm69274_ '()))))
                                       (declare (not safe))
                                       (cons _bin-scm69266_ __tmp69734))))
                                (declare (not safe))
                                (foldr1 cons __tmp69733 _deps-scm69248_))))
                         (declare (not safe))
                         (foldr1 cons __tmp69732 _gsc-opts69286_)))
                      (__tmp69730
                       (let ()
                         (declare (not safe))
                         (gxc#gsc-debug-options__0))))
                  (declare (not safe))
                  (foldr1 cons __tmp69731 __tmp69730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink69230_
                                                         __tmp69729))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp69728))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp69727))))
                              (declare (not safe))
                              (gxc#invoke __tmp69735 __tmp69726))
                            (let ((__tmp69742
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp69736
                                   (let ((__tmp69737
                                          (let ((__tmp69738
                                                 (let ((__tmp69739
                                                        (let ((__tmp69740
                                                               (let ((__tmp69741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _output_-c69282_ '()))))
                         (declare (not safe))
                         (cons _output-c69276_ __tmp69741))))
                  (declare (not safe))
                  (cons _bin-c69268_ __tmp69740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp69739
                                                           _deps-c69254_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp69738
                                                    _gsc-cc-opts69288_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp69737))))
                              (declare (not safe))
                              (gxc#invoke __tmp69742 __tmp69736))
                            (let ((__tmp69755
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp69743
                                   (let ((__tmp69744
                                          (let ((__tmp69745
                                                 (let ((__tmp69746
                                                        (let ((__tmp69747
                                                               (let ((__tmp69748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69749
                                     (let ((__tmp69750
                                            (let ((__tmp69751
                                                   (let ((__tmp69752
                                                          (let ((__tmp69753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69754
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts69296_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp69754))))
                    (declare (not safe))
                    (cons _gerbil-libdir69226_ __tmp69753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L" __tmp69752))))
                                              (declare (not safe))
                                              (cons _gerbil-rpath69298_
                                                    __tmp69751))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp69750
                                               _output-ld-opts69290_))))
                                (declare (not safe))
                                (cons _output_-o69284_ __tmp69749))))
                         (declare (not safe))
                         (cons _output-o69278_ __tmp69748))))
                  (declare (not safe))
                  (cons _bin-o69270_ __tmp69747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp69746
                                                           _deps-o69260_))))
                                            (declare (not safe))
                                            (cons _output-bin69272_
                                                  __tmp69745))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp69744))))
                              (declare (not safe))
                              (gxc#invoke __tmp69755 __tmp69743))
                            (for-each
                             delete-file
                             (let ((__tmp69756
                                    (let ((__tmp69757
                                           (let ((__tmp69758
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o69284_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o69278_
                                                   __tmp69758))))
                                      (declare (not safe))
                                      (cons _output_-c69282_ __tmp69757))))
                               (declare (not safe))
                               (cons _output-c69276_ __tmp69756)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp69232_)))
                          '#!void)))))
          (let* ((_output-bin69216_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx69202_ _opts69203_)))
                 (_output-scm69218_
                  (string-append _output-bin69216_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub69214_ _output-scm69218_ _output-bin69216_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm69218_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx69037_ _opts69038_)
        (letrec ((_reset-declare69040_
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
                 (_generate-stub69041_
                  (lambda (_deps69193_)
                    (let ((_mod-main69195_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx69037_ 'main)))
                          (_reset-decl69196_
                           (let ()
                             (declare (not safe))
                             (_reset-declare69040_)))
                          (_user-decl69197_
                           (let ()
                             (declare (not safe))
                             (_user-declare69043_))))
                      (for-each
                       (lambda (_dep69199_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl69196_)
                         (newline)
                         (if _user-decl69197_
                             (begin (write _user-decl69197_) (newline))
                             '#!void)
                         (write (let ((__tmp69759
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep69199_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp69759)))
                         (newline))
                       _deps69193_)
                      (write (let ((__tmp69760
                                    (let ((__tmp69773
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp69761
                                           (let ((__tmp69769
                                                  (let ((__tmp69770
                                                         (let ((__tmp69771
                                                                (let ((__tmp69772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp69772))))
                   (declare (not safe))
                   (cons __tmp69771 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp69770)))
                                                 (__tmp69762
                                                  (let ((__tmp69763
                                                         (let ((__tmp69764
                                                                (let ((__tmp69765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69766
                                      (let ((__tmp69767
                                             (let ((__tmp69768
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp69768 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp69767))))
                                 (declare (not safe))
                                 (cons __tmp69766 '()))))
                          (declare (not safe))
                          (cons _mod-main69195_ __tmp69765))))
                   (declare (not safe))
                   (cons 'apply __tmp69764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69763 '()))))
                                             (declare (not safe))
                                             (cons __tmp69769 __tmp69762))))
                                      (declare (not safe))
                                      (cons __tmp69773 __tmp69761))))
                               (declare (not safe))
                               (cons 'define __tmp69760)))
                      (write '(gerbil-main))
                      (newline))))
                 (_static-include69042_
                  (lambda (_gsc-opts69186_ _home69187_)
                    (letrec* ((_static-dir69189_
                               (path-expand '"lib/static" _home69187_))
                              (_user-static-dir69190_
                               (path-expand
                                (path-expand
                                 '"lib/static"
                                 (getenv '"GERBIL_PATH" '"~/.gerbil"))))
                              (_cppflags69191_
                               (string-append
                                '"-I "
                                _static-dir69189_
                                '" -I "
                                _user-static-dir69190_)))
                      (append _gsc-opts69186_
                              (let ((__tmp69774
                                     (let ()
                                       (declare (not safe))
                                       (cons _cppflags69191_ '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp69774))))))
                 (_user-declare69043_
                  (lambda ()
                    (let* ((_gsc-opts69091_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts69038_)))
                           (_gsc-prelude69093_
                            (if _gsc-opts69091_
                                (member '"-prelude" _gsc-opts69091_)
                                '#f))
                           (_gsc-prelude69095_
                            (if _gsc-prelude69093_
                                (read (open-input-string
                                       (cadr _gsc-prelude69093_)))
                                '#f)))
                      (let _lp69098_ ((_rest69100_
                                       (let ()
                                         (declare (not safe))
                                         (cons _gsc-prelude69095_ '())))
                                      (_user-decls69101_ '()))
                        (let* ((_rest6910269110_ _rest69100_)
                               (_else6910469118_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls69101_))
                                      '#f
                                      (let ((__tmp69775
                                             (reverse _user-decls69101_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp69775)))))
                               (_K6910669174_
                                (lambda (_rest69121_ _expr69122_)
                                  (let* ((_expr6912369135_ _expr69122_)
                                         (_else6912669143_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp69098_
                                               _rest69121_
                                               _user-decls69101_)))))
                                    (let ((_K6913169164_
                                           (lambda (_decls69162_)
                                             (let ((__tmp69776
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls69101_
                                                              _decls69162_))))
                                               (declare (not safe))
                                               (_lp69098_
                                                _rest69121_
                                                __tmp69776))))
                                          (_K6912869149_
                                           (lambda (_exprs69147_)
                                             (let ((__tmp69777
                                                    (append _exprs69147_
                                                            _rest69121_)))
                                               (declare (not safe))
                                               (_lp69098_
                                                __tmp69777
                                                _user-decls69101_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr6912369135_))
                                          (let ((_tl6913369169_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr6912369135_)))
                                                (_hd6913269167_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr6912369135_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd6913269167_
                                                         'declare))
                                                (let ((_decls69172_
                                                       _tl6913369169_))
                                                  (declare (not safe))
                                                  (_K6913169164_ _decls69172_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd6913269167_
                                                             'begin))
                                                    (let ((_exprs69157_
                                                           _tl6913369169_))
                                                      (declare (not safe))
                                                      (_K6912869149_
                                                       _exprs69157_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else6912669143_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else6912669143_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6910269110_))
                              (let ((_hd6910769177_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6910269110_)))
                                    (_tl6910869179_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6910269110_))))
                                (let* ((_expr69182_ _hd6910769177_)
                                       (_rest69184_ _tl6910869179_))
                                  (declare (not safe))
                                  (_K6910669174_ _rest69184_ _expr69182_)))
                              (let ()
                                (declare (not safe))
                                (_else6910469118_))))))))
                 (_compile-stub69044_
                  (lambda (_output-scm69051_ _output-bin69052_)
                    (let* ((_gerbil-home69054_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_runtime69056_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp69058_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home69054_))
                           (_include-gambit-sharp69060_
                            (string-append
                             '"(include \""
                             _gambit-sharp69058_
                             '"\")"))
                           (_bin-scm69062_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx69037_)))
                           (_deps69064_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx69037_)))
                           (_deps69066_
                            (map gxc#find-static-module-file _deps69064_))
                           (_deps69071_
                            (filter (lambda (_$obj69068_)
                                      (let ((__tmp69778
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty? _$obj69068_))))
                                        (declare (not safe))
                                        (not __tmp69778)))
                                    _deps69066_))
                           (_deps69075_
                            (filter (lambda (_f69073_)
                                      (let ((__tmp69779
                                             (member _f69073_ _runtime69056_)))
                                        (declare (not safe))
                                        (not __tmp69779)))
                                    _deps69071_))
                           (_gsc-opts69080_
                            (let ((_$e69077_
                                   (let ()
                                     (declare (not safe))
                                     (pgetq 'gsc-options: _opts69038_))))
                              (if _$e69077_ _$e69077_ '())))
                           (_gsc-opts69082_
                            (let ()
                              (declare (not safe))
                              (_static-include69042_
                               _gsc-opts69080_
                               _gerbil-home69054_)))
                           (_gsc-gx-macros69084_
                            (if (gerbil-runtime-smp?)
                                (let ((__tmp69781
                                       (let ((__tmp69782
                                              (let ((__tmp69783
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp69060_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp69783))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp69782))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp69781))
                                (let ((__tmp69780
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp69060_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp69780))))
                           (_gsc-args69086_
                            (let ((__tmp69784
                                   (let ((__tmp69785
                                          (let ((__tmp69786
                                                 (let ((__tmp69788
                                                        (let ((__tmp69789
                                                               (let ((__tmp69790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _output-scm69051_ '()))))
                         (declare (not safe))
                         (foldr1 cons __tmp69790 _gsc-gx-macros69084_))))
                  (declare (not safe))
                  (foldr1 cons __tmp69789 _gsc-opts69082_)))
               (__tmp69787
                (let () (declare (not safe)) (gxc#gsc-debug-options__0))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp69788
                                                           __tmp69787))))
                                            (declare (not safe))
                                            (cons _output-bin69052_
                                                  __tmp69786))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp69785))))
                              (declare (not safe))
                              (cons '"-exe" __tmp69784))))
                      (let ((__tmp69791 (path-directory _output-bin69052_)))
                        (declare (not safe))
                        (create-directory* __tmp69791))
                      (let ((__tmp69792
                             (lambda ()
                               (let ((__tmp69793
                                      (let ((__tmp69794
                                             (let ((__tmp69795
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm69062_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp69795
                                                       _deps69075_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp69794
                                                _runtime69056_))))
                                 (declare (not safe))
                                 (_generate-stub69041_ __tmp69793)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm69051_
                         __tmp69792))
                      (if (gxc#current-compile-invoke-gsc)
                          (let ((__tmp69796
                                 (let ()
                                   (declare (not safe))
                                   (gxc#gerbil-gsc))))
                            (declare (not safe))
                            (gxc#invoke __tmp69796 _gsc-args69086_))
                          '#!void)))))
          (let* ((_output-bin69046_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx69037_ _opts69038_)))
                 (_output-scm69048_
                  (string-append _output-bin69046_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub69044_ _output-scm69048_ _output-bin69046_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm69048_))))))
    (define gxc#find-export-binding
      (lambda (_ctx68987_ _id68988_)
        (let ((_$e69034_
               (let ((__tmp69798
                      (lambda (_e6898968991_)
                        (let* ((_g6899369003_ _e6898968991_)
                               (_else6899569011_ (lambda () '#f))
                               (_K6899769015_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g6899369003_
                                 'gx#module-export::t))
                              (let* ((_e6899869018_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6899369003_ '1)))
                                     (_e6899969021_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6899369003_ '2)))
                                     (_e6900069024_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6899369003_ '3))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e6900069024_ '0))
                                    (let ((_e6900169027_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g6899369003_ '4))))
                                      (if ((lambda (_g6902969031_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g6902969031_ _id68988_)))
                                           _e6900169027_)
                                          (let ()
                                            (declare (not safe))
                                            (_K6899769015_))
                                          (let ()
                                            (declare (not safe))
                                            (_else6899569011_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else6899569011_))))
                              (let ()
                                (declare (not safe))
                                (_else6899569011_))))))
                     (__tmp69797
                      (##structure-ref
                       _ctx68987_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp69798 __tmp69797))))
          (if _$e69034_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e69034_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx68979_ _id68980_)
        (let ((_$e68982_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx68979_ _id68980_))))
          (if _$e68982_
              ((lambda (_bind68985_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind68985_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id68980_)))
                 (##structure-ref _bind68985_ '1 gx#binding::t '#f))
               _$e68982_)
              (let ((__tmp69799
                     (##structure-ref
                      _ctx68979_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp69799
                 _id68980_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx68866_)
        (letrec* ((_ht68868_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template68869_
                   (lambda (_in68931_ _phi68932_)
                     (let ((_iphi68934_
                            (fx+ _phi68932_
                                 (##direct-structure-ref
                                  _in68931_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports68935_
                            (##structure-ref
                             (##direct-structure-ref
                              _in68931_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp68937_ ((_rest68939_ _imports68935_)
                                       (_r68940_ '()))
                         (let* ((_rest6894168949_ _rest68939_)
                                (_else6894368957_ (lambda () _r68940_))
                                (_K6894568967_
                                 (lambda (_rest68960_ _in68961_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in68961_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi68934_))
                                           (let ((__tmp69806
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in68961_
                                                          _r68940_))))
                                             (declare (not safe))
                                             (_lp68937_
                                              _rest68960_
                                              __tmp69806))
                                           (let ()
                                             (declare (not safe))
                                             (_lp68937_ _rest68960_ _r68940_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in68961_
                                              'gx#module-import::t))
                                           (let ((_iphi68963_
                                                  (fx+ _phi68932_
                                                       (##direct-structure-ref
                                                        _in68961_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi68963_))
                                                 (let ((__tmp69804
                                                        (let ((__tmp69805
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in68961_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp69805 _r68940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp68937_
                                                    _rest68960_
                                                    __tmp69804))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp68937_
                                                    _rest68960_
                                                    _r68940_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in68961_
                                                  'gx#import-set::t))
                                               (let ((_xphi68965_
                                                      (fx+ _iphi68934_
                                                           (##direct-structure-ref
                                                            _in68961_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi68965_))
                                                     (let ((__tmp69802
                                                            (let ((__tmp69803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in68961_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp69803 _r68940_))))
               (declare (not safe))
               (_lp68937_ _rest68960_ __tmp69802))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi68965_)
                                                         (let ((__tmp69800
                                                                (let ((__tmp69801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template68869_
                                  _in68961_
                                  _iphi68934_))))
                          (declare (not safe))
                          (foldl1 cons _r68940_ __tmp69801))))
                   (declare (not safe))
                   (_lp68937_ _rest68960_ __tmp69800))
                 (let ()
                   (declare (not safe))
                   (_lp68937_ _rest68960_ _r68940_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp68937_
                                                  _rest68960_
                                                  _r68940_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest6894168949_))
                               (let ((_hd6894668970_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest6894168949_)))
                                     (_tl6894768972_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest6894168949_))))
                                 (let* ((_in68975_ _hd6894668970_)
                                        (_rest68977_ _tl6894768972_))
                                   (declare (not safe))
                                   (_K6894568967_ _rest68977_ _in68975_)))
                               (let ()
                                 (declare (not safe))
                                 (_else6894368957_))))))))
                  (_find-deps68870_
                   (lambda (_rest68877_ _deps68878_)
                     (let* ((_rest6887968887_ _rest68877_)
                            (_else6888168895_ (lambda () _deps68878_))
                            (_K6888368919_
                             (lambda (_rest68898_ _hd68899_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd68899_
                                      'gx#module-context::t))
                                   (let ((_id68901_
                                          (##structure-ref
                                           _hd68899_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports68902_
                                          (##structure-ref
                                           _hd68899_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref _ht68868_ _id68901_ '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps68870_
                                            _rest68898_
                                            _deps68878_))
                                         (let ((_$e68904_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd68899_))))
                                           (if _$e68904_
                                               ((lambda (_pre68907_)
                                                  (let ((_xdeps68909_
                                                         (let ((__tmp69819
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre68907_ _imports68902_))))
                   (declare (not safe))
                   (_find-deps68870_ __tmp69819 _deps68878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht68868_
                                                       _id68901_
                                                       _hd68899_))
                                                    (let ((__tmp69820
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd68899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps68909_))))
              (declare (not safe))
              (_find-deps68870_ _rest68898_ __tmp69820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e68904_)
                                               (let ((_xdeps68911_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps68870_
                                                         _imports68902_
                                                         _deps68878_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht68868_
                                                    _id68901_
                                                    _hd68899_))
                                                 (let ((__tmp69818
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd68899_
                                                                _xdeps68911_))))
                                                   (declare (not safe))
                                                   (_find-deps68870_
                                                    _rest68898_
                                                    __tmp69818)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd68899_
                                          'gx#prelude-context::t))
                                       (let ((_id68913_
                                              (##structure-ref
                                               _hd68899_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht68868_
                                                _id68913_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps68870_
                                                _rest68898_
                                                _deps68878_))
                                             (let ((_xdeps68915_
                                                    (let ((__tmp69816
                                                           (##structure-ref
                                                            _hd68899_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps68870_
                                                       __tmp69816
                                                       _deps68878_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht68868_
                                                      _id68913_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps68870_
                                                      _rest68898_
                                                      _xdeps68915_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht68868_
                                                        _id68913_
                                                        _hd68899_))
                                                     (let ((__tmp69817
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd68899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps68915_))))
               (declare (not safe))
               (_find-deps68870_ _rest68898_ __tmp69817)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd68899_
                                              'gx#module-import::t))
                                           (if (let ((__tmp69815
                                                      (##direct-structure-ref
                                                       _hd68899_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp69815))
                                               (let ((__tmp69813
                                                      (let ((__tmp69814
                                                             (##direct-structure-ref
                                                              _hd68899_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp69814
                                                              _rest68898_))))
                                                 (declare (not safe))
                                                 (_find-deps68870_
                                                  __tmp69813
                                                  _deps68878_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps68870_
                                                  _rest68898_
                                                  _deps68878_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd68899_
                                                  'gx#module-export::t))
                                               (let ((__tmp69811
                                                      (let ((__tmp69812
                                                             (##direct-structure-ref
                                                              _hd68899_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp69812
                                                              _rest68898_))))
                                                 (declare (not safe))
                                                 (_find-deps68870_
                                                  __tmp69811
                                                  _deps68878_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd68899_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp69810
                                                              (##direct-structure-ref
                                                               _hd68899_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp69810))
                                                       (let ((__tmp69808
                                                              (let ((__tmp69809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd68899_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp69809 _rest68898_))))
                 (declare (not safe))
                 (_find-deps68870_ __tmp69808 _deps68878_))
               (if (fxpositive?
                    (##direct-structure-ref _hd68899_ '2 gx#import-set::t '#f))
                   (let* ((_xdeps68917_
                           (let ()
                             (declare (not safe))
                             (_import-set-template68869_ _hd68899_ '0)))
                          (__tmp69807
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest68898_ _xdeps68917_))))
                     (declare (not safe))
                     (_find-deps68870_ __tmp69807 _deps68878_))
                   (let ()
                     (declare (not safe))
                     (_find-deps68870_ _rest68898_ _deps68878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd68899_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest6887968887_))
                           (let ((_hd6888468922_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest6887968887_)))
                                 (_tl6888568924_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest6887968887_))))
                             (let* ((_hd68927_ _hd6888468922_)
                                    (_rest68929_ _tl6888568924_))
                               (declare (not safe))
                               (_K6888368919_ _rest68929_ _hd68927_)))
                           (let ()
                             (declare (not safe))
                             (_else6888168895_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp69821
                                  (let ((_$e68872_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx68866_))))
                                    (if _$e68872_
                                        ((lambda (_pre68875_)
                                           (let ((__tmp69822
                                                  (##structure-ref
                                                   _ctx68866_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre68875_ __tmp69822)))
                                         _$e68872_)
                                        (##structure-ref
                                         _ctx68866_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps68870_ __tmp69821 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx68803_)
        (let* ((_context-id68805_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx68803_
                       'gx#module-context::t))
                    (##structure-ref _ctx68803_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx68803_)))
               (_scm68807_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id68805_))
                 '".scm"))
               (_dirs68809_ (gx#current-expander-module-library-path))
               (_dirs68818_
                (let ((_$e68811_ (gxc#current-compile-output-dir)))
                  (if _$e68811_
                      ((lambda (_g6881368815_)
                         (let ()
                           (declare (not safe))
                           (cons _g6881368815_ _dirs68809_)))
                       _$e68811_)
                      _dirs68809_)))
               (_dirs68824_
                (map (lambda (_g6881968821_)
                       (path-expand '"static" _g6881968821_))
                     _dirs68818_)))
          (let _lp68827_ ((_rest68829_ _dirs68824_))
            (let* ((_rest6883068838_ _rest68829_)
                   (_else6883268846_
                    (lambda ()
                      (let ((__tmp69823
                             (##structure-ref
                              _ctx68803_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp69823
                         _scm68807_))))
                   (_K6883468854_
                    (lambda (_rest68849_ _dir68850_)
                      (let ((_path68852_ (path-expand _scm68807_ _dir68850_)))
                        (if (file-exists? _path68852_)
                            _path68852_
                            (let ()
                              (declare (not safe))
                              (_lp68827_ _rest68849_)))))))
              (if (let () (declare (not safe)) (##pair? _rest6883068838_))
                  (let ((_hd6883568857_
                         (let ()
                           (declare (not safe))
                           (##car _rest6883068838_)))
                        (_tl6883668859_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6883068838_))))
                    (let* ((_dir68862_ _hd6883568857_)
                           (_rest68864_ _tl6883668859_))
                      (declare (not safe))
                      (_K6883468854_ _rest68864_ _dir68862_)))
                  (let () (declare (not safe)) (_else6883268846_))))))))
    (define gxc#file-empty?
      (lambda (_path68801_)
        (let ((__tmp69824 (file-info-size (file-info _path68801_ '#t))))
          (declare (not safe))
          (zero? __tmp69824))))
    (define gxc#compile-top-module
      (lambda (_ctx68797_)
        (let ((__tmp69828
               (lambda ()
                 (let ((__tmp69829
                        (##structure-ref
                         _ctx68797_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp69829))
                 (if (gxc#current-compile-optimize)
                     (with-lock
                      gxc#+driver-mutex+
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gxc#optimize! _ctx68797_))))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx68797_))
                 (let ()
                   (declare (not safe))
                   (gxc#compile-runtime-code _ctx68797_))
                 (let ()
                   (declare (not safe))
                   (gxc#compile-meta-code _ctx68797_))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx68797_))
                     '#!void)))
              (__tmp69827
               (let ((__obj69684 (make-object gxc#symbol-table::t '2)))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj69684))
                 __obj69684))
              (__tmp69826
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp69825 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp69828
           gx#current-expander-context
           _ctx68797_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp69827
           gxc#current-compile-runtime-sections
           __tmp69826
           gxc#current-compile-runtime-names
           __tmp69825))))
    (define gxc#collect-bindings
      (lambda (_ctx68795_)
        (let ((__tmp69830
               (##structure-ref _ctx68795_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp69830))))
    (define gxc#compile-runtime-code
      (lambda (_ctx68741_)
        (letrec ((_compile168743_
                  (lambda (_ctx68784_)
                    (let* ((_code68786_
                            (##structure-ref
                             _ctx68784_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt68790_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code68786_))
                                (let ((_idstr68788_
                                       (let ((__tmp69831
                                              (##structure-ref
                                               _ctx68784_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp69831))))
                                  (string-append _idstr68788_ '"__0"))
                                '#f)))
                      (if _rt68790_
                          (begin
                            (let ((__tmp69832
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp69832 _ctx68784_ _rt68790_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code68745_
                               _ctx68784_
                               _code68786_)))
                          (let ((_path68793_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx68784_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file _path68793_ void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code68746_
                         _ctx68784_
                         _code68786_
                         _rt68790_)))))
                 (_context-timestamp68744_
                  (lambda (_ctx68782_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx68782_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code68745_
                  (lambda (_ctx68764_ _code68765_)
                    (let* ((_lifts68767_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code68770_
                            (let ((__tmp69835
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code68765_))))
                                  (__tmp69834
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp69833
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp69835
                               gx#current-expander-context
                               _ctx68764_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts68767_
                               gxc#current-compile-marks
                               __tmp69834
                               gxc#current-compile-identifiers
                               __tmp69833)))
                           (_runtime-code68772_
                            (if (let ((__tmp69839 (unbox _lifts68767_)))
                                  (declare (not safe))
                                  (null? __tmp69839))
                                _runtime-code68770_
                                (let ((__tmp69836
                                       (let ((__tmp69838
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code68770_
                                                      '())))
                                             (__tmp69837
                                              (reverse (unbox _lifts68767_))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp69838 __tmp69837))))
                                  (declare (not safe))
                                  (cons 'begin __tmp69836))))
                           (_runtime-code68774_
                            (let ((__tmp69840
                                   (let ((__tmp69842
                                          (let ((__tmp69843
                                                 (let ((__tmp69846
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp68744_
                                                           _ctx68764_)))
                                                       (__tmp69844
                                                        (let ((__tmp69845
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp69845
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp69846
                                                         __tmp69844))))
                                            (declare (not safe))
                                            (cons 'define __tmp69843)))
                                         (__tmp69841
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code68772_ '()))))
                                     (declare (not safe))
                                     (cons __tmp69842 __tmp69841))))
                              (declare (not safe))
                              (cons 'begin __tmp69840)))
                           (_scm068776_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx68764_
                               '0
                               '".scm"))))
                      (let ((_scms68779_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx68764_))))
                        (let ((__tmp69847
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm068776_
                                    _runtime-code68774_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp69847
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms68779_)
                            (delete-file _scms68779_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm068776_
                           '" => "
                           _scms68779_))
                        (copy-file _scm068776_ _scms68779_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm068776_))))))
                 (_generate-loader-code68746_
                  (lambda (_ctx68753_ _code68754_ _rt68755_)
                    (let* ((_loader-code68758_
                            (let ((__tmp69848
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code68754_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp69848
                               gx#current-expander-context
                               _ctx68753_)))
                           (_loader-code68760_
                            (if _rt68755_
                                (let ((__tmp69849
                                       (let ((__tmp69850
                                              (let ((__tmp69851
                                                     (let ((__tmp69852
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt68755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp69852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69851 '()))))
                                         (declare (not safe))
                                         (cons _loader-code68758_
                                               __tmp69850))))
                                  (declare (not safe))
                                  (cons 'begin __tmp69849))
                                _loader-code68758_)))
                      (let ((__tmp69853
                             (lambda ()
                               (let ((__tmp69854
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx68753_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp69854
                                  _loader-code68760_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp69853
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules68748_
                 (let ((__tmp69855
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx68741_))))
                   (declare (not safe))
                   (cons _ctx68741_ __tmp69855))))
            (for-each
             (lambda (_ctx68750_)
               (let ((__tmp69856
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile168743_ _ctx68750_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp69856
                  gxc#current-compile-decls
                  '())))
             _all-modules68748_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx68643_)
        (letrec ((_compile-ssi68645_
                  (lambda (_code68711_)
                    (let* ((_path68713_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx68643_
                               '#f
                               '".ssi")))
                           (_prelude68724_
                            (let* ((_super68715_
                                    (##structure-ref
                                     _ctx68643_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e68717_
                                    (##structure-ref
                                     _super68715_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e68717_
                                  ((lambda (_g6871968721_)
                                     (make-symbol '":" _g6871968721_))
                                   _$e68717_)
                                  ':<root>)))
                           (_ns68726_
                            (##structure-ref
                             _ctx68643_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr68728_
                            (symbol->string
                             (##structure-ref
                              _ctx68643_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg68735_
                            (let ((_$e68730_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr68728_ '#\/))))
                              (if _$e68730_
                                  ((lambda (_x68733_)
                                     (string->symbol
                                      (substring _idstr68728_ '0 _x68733_)))
                                   _$e68730_)
                                  '#f)))
                           (_rt68737_
                            (let ((__tmp69857
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp69857 _ctx68643_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path68713_))
                      (let ((__tmp69858
                             (lambda ()
                               (displayln '"prelude:" '" " _prelude68724_)
                               (if _pkg68735_
                                   (displayln '"package:" '" " _pkg68735_)
                                   '#!void)
                               (displayln '"namespace:" '" " _ns68726_)
                               (newline)
                               (pretty-print _code68711_)
                               (if _rt68737_
                                   (pretty-print
                                    (let ((__tmp69859
                                           (let ((__tmp69863
                                                  (let ((__tmp69864
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp69864)))
                                                 (__tmp69860
                                                  (let ((__tmp69861
                                                         (let ((__tmp69862
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt68737_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp69862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69861 '()))))
                                             (declare (not safe))
                                             (cons __tmp69863 __tmp69860))))
                                      (declare (not safe))
                                      (cons '%#call __tmp69859)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path68713_
                         __tmp69858)))))
                 (_compile-phi68646_
                  (lambda (_part68651_)
                    (let* ((_part6865268665_ _part68651_)
                           (_E6865468669_
                            (lambda ()
                              (error '"No clause matching" _part6865268665_)))
                           (_K6865568680_
                            (lambda (_code68672_
                                     _n68673_
                                     _phi68674_
                                     _phi-ctx68675_)
                              (let* ((_code68678_
                                      (let ((__tmp69865
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code68672_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp69865
                                         gx#current-expander-context
                                         _phi-ctx68675_
                                         gx#current-expander-phi
                                         _phi68674_)))
                                     (__tmp69866
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx68643_
                                         _n68673_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp69866
                                 _code68678_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part6865268665_))
                          (let ((_hd6865668683_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part6865268665_)))
                                (_tl6865768685_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part6865268665_))))
                            (let ((_phi-ctx68688_ _hd6865668683_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl6865768685_))
                                  (let ((_hd6865868690_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl6865768685_)))
                                        (_tl6865968692_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl6865768685_))))
                                    (let ((_phi68695_ _hd6865868690_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6865968692_))
                                          (let ((_hd6866068697_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6865968692_)))
                                                (_tl6866168699_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6865968692_))))
                                            (let ((_n68702_ _hd6866068697_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl6866168699_))
                                                  (let ((_hd6866268704_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl6866168699_)))
                                                        (_tl6866368706_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl6866168699_))))
                                                    (let ((_code68709_
                                                           _hd6866268704_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl6866368706_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K6865568680_
                                                             _code68709_
                                                             _n68702_
                                                             _phi68695_
                                                             _phi-ctx68688_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E6865468669_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E6865468669_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6865468669_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E6865468669_)))))
                          (let () (declare (not safe)) (_E6865468669_)))))))
          (let ((_g69867_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx68643_))))
            (begin
              (let ((_g69868_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g69867_)
                           (##vector-length _g69867_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g69868_ 2)))
                    (error "Context expects 2 values" _g69868_)))
              (let ((_ssi-code68648_
                     (let () (declare (not safe)) (##vector-ref _g69867_ 0)))
                    (_phi-code68649_
                     (let () (declare (not safe)) (##vector-ref _g69867_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi68645_ _ssi-code68648_))
                  (for-each _compile-phi68646_ _phi-code68649_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx68626_)
        (let* ((_path68628_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx68626_ '#f '".ssxi.ss")))
               (_code68630_
                (let ((__tmp69869
                       (##structure-ref
                        _ctx68626_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp69869)))
               (_idstr68632_
                (symbol->string
                 (##structure-ref _ctx68626_ '1 gx#expander-context::t '#f)))
               (_pkg68639_
                (let ((_$e68634_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr68632_ '#\/))))
                  (if _$e68634_
                      ((lambda (_x68637_)
                         (string->symbol (substring _idstr68632_ '0 _x68637_)))
                       _$e68634_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path68628_))
          (let ((__tmp69870
                 (lambda ()
                   (displayln '"prelude: :gerbil/compiler/ssxi")
                   (if _pkg68639_ (displayln '"package: " _pkg68639_) '#!void)
                   (newline)
                   (pretty-print _code68630_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path68628_ __tmp69870)))))
    (define gxc#generate-meta-code
      (lambda (_ctx68619_)
        (let* ((_state68621_
                (let ((__obj69685 (make-object gxc#meta-state::t '4)))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj69685 _ctx68619_))
                  __obj69685))
               (_ssi-code68623_
                (let ((__tmp69871
                       (##structure-ref
                        _ctx68619_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp69871 _state68621_))))
          (values _ssi-code68623_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state68621_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx68612_)
        (let ((_lifts68614_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp69874
                 (lambda ()
                   (let ((_code68617_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx68612_))))
                     (if (let ((__tmp69878 (unbox _lifts68614_)))
                           (declare (not safe))
                           (null? __tmp69878))
                         _code68617_
                         (let ((__tmp69875
                                (let ((__tmp69877
                                       (let ()
                                         (declare (not safe))
                                         (cons _code68617_ '())))
                                      (__tmp69876
                                       (reverse (unbox _lifts68614_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp69877 __tmp69876))))
                           (declare (not safe))
                           (cons 'begin __tmp69875))))))
                (__tmp69873
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp69872
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp69874
             gxc#current-compile-lift
             _lifts68614_
             gxc#current-compile-marks
             __tmp69873
             gxc#current-compile-identifiers
             __tmp69872)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx68608_)
        (let ((_modules68610_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp69879
                 (##structure-ref _ctx68608_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp69879 _modules68610_))
          (reverse (unbox _modules68610_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path68591_ _code68592_ _phi?68593_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path68591_))
        (let ((__tmp69880
               (lambda ()
                 (pretty-print
                  (let ((__tmp69881
                         (let ((__tmp69888
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp69882
                                (let ((__tmp69887
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp69883
                                       (let ((__tmp69886
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp69884
                                              (let ((__tmp69885
                                                     (if _phi?68593_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons '() __tmp69885))))
                                         (declare (not safe))
                                         (cons __tmp69886 __tmp69884))))
                                  (declare (not safe))
                                  (cons __tmp69887 __tmp69883))))
                           (declare (not safe))
                           (cons __tmp69888 __tmp69882))))
                    (declare (not safe))
                    (cons 'declare __tmp69881)))
                 (pretty-print _code68592_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path68591_ __tmp69880))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path68591_ _phi?68593_))
            '#!void)
        (if (gxc#current-compile-keep-scm) '#!void (delete-file _path68591_))))
    (define gxc#compile-scm-file__0
      (lambda (_path68599_ _code68600_)
        (let ((_phi?68602_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path68599_ _code68600_ _phi?68602_))))
    (define gxc#compile-scm-file
      (lambda _g69890_
        (let ((_g69889_ (let () (declare (not safe)) (##length _g69890_))))
          (cond ((let () (declare (not safe)) (##fx= _g69889_ 2))
                 (apply (lambda (_path68599_ _code68600_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0 _path68599_ _code68600_)))
                        _g69890_))
                ((let () (declare (not safe)) (##fx= _g69889_ 3))
                 (apply (lambda (_path68604_ _code68605_ _phi?68606_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path68604_
                             _code68605_
                             _phi?68606_)))
                        _g69890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g69890_))))))
    (define gxc#gsc-debug-options__%
      (lambda (_phi?68511_)
        (if (gxc#current-compile-debug)
            (if _phi?68511_
                '()
                (let ((__tmp69891
                       (let ((__tmp69892
                              (let ((__tmp69893
                                     (let ()
                                       (declare (not safe))
                                       (cons '"-g" '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp69893))))
                         (declare (not safe))
                         (cons '"-track-scheme" __tmp69892))))
                  (declare (not safe))
                  (cons '"-debug-source" __tmp69891)))
            '())))
    (define gxc#gsc-debug-options__0
      (lambda ()
        (let ((_phi?68586_ '#f))
          (declare (not safe))
          (gxc#gsc-debug-options__% _phi?68586_))))
    (define gxc#gsc-debug-options
      (lambda _g69895_
        (let ((_g69894_ (let () (declare (not safe)) (##length _g69895_))))
          (cond ((let () (declare (not safe)) (##fx= _g69894_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__0)))
                        _g69895_))
                ((let () (declare (not safe)) (##fx= _g69894_ 1))
                 (apply (lambda (_phi?68588_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__% _phi?68588_)))
                        _g69895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-debug-options
                  _g69895_))))))
    (define gxc#gsc-compile-file
      (lambda (_path68497_ _phi?68498_)
        (let* ((_gsc-args68505_
                (let ((_$e68500_ (gxc#current-compile-gsc-options)))
                  (if _$e68500_
                      ((lambda (_opts68503_)
                         (let ((__tmp69896
                                (let ()
                                  (declare (not safe))
                                  (cons _path68497_ '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp69896 _opts68503_)))
                       _$e68500_)
                      (let () (declare (not safe)) (cons _path68497_ '())))))
               (_gsc-args68507_
                (let ((__tmp69897
                       (let ()
                         (declare (not safe))
                         (gxc#gsc-debug-options__% _phi?68498_))))
                  (declare (not safe))
                  (foldr1 cons _gsc-args68505_ __tmp69897))))
          (let ((__tmp69898 (let () (declare (not safe)) (gxc#gerbil-gsc))))
            (declare (not safe))
            (gxc#invoke __tmp69898 _gsc-args68507_)))))
    (define gxc#compile-output-file
      (lambda (_ctx68469_ _n68470_ _ext68471_)
        (letrec ((_module-relative-path68473_
                  (lambda (_ctx68495_)
                    (path-strip-directory
                     (let ((__tmp69899
                            (##structure-ref
                             _ctx68495_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp69899)))))
                 (_module-source-directory68474_
                  (lambda (_ctx68491_)
                    (path-directory
                     (let ((_mpath68493_
                            (##structure-ref
                             _ctx68491_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let () (declare (not safe)) (string? _mpath68493_))
                           _mpath68493_
                           (let ()
                             (declare (not safe))
                             (last _mpath68493_)))))))
                 (_section-string68475_
                  (lambda (_n68489_)
                    (if (let () (declare (not safe)) (number? _n68489_))
                        (number->string _n68489_)
                        (if (let () (declare (not safe)) (symbol? _n68489_))
                            (symbol->string _n68489_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n68489_))
                                _n68489_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n68489_)))))))
                 (_file-name68476_
                  (lambda (_path68487_)
                    (if _n68470_
                        (string-append
                         _path68487_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string68475_ _n68470_))
                         _ext68471_)
                        (string-append _path68487_ _ext68471_))))
                 (_file-path68477_
                  (lambda ()
                    (let ((_$e68482_ (gxc#current-compile-output-dir)))
                      (if _$e68482_
                          ((lambda (_outdir68485_)
                             (path-expand
                              (let ((__tmp69901
                                     (let ((__tmp69902
                                            (##structure-ref
                                             _ctx68469_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp69902))))
                                (declare (not safe))
                                (_file-name68476_ __tmp69901))
                              _outdir68485_))
                           _$e68482_)
                          (path-expand
                           (let ((__tmp69900
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path68473_ _ctx68469_))))
                             (declare (not safe))
                             (_file-name68476_ __tmp69900))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory68474_ _ctx68469_))))))))
          (let ((_path68479_ (let () (declare (not safe)) (_file-path68477_))))
            (let ((__tmp69903 (path-directory _path68479_)))
              (declare (not safe))
              (create-directory* __tmp69903))
            _path68479_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx68452_)
        (letrec ((_file-name68454_
                  (lambda (_id68467_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id68467_))
                     '".scm")))
                 (_file-path68455_
                  (lambda ()
                    (let* ((_file68460_
                            (let ((__tmp69904
                                   (##structure-ref
                                    _ctx68452_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name68454_ __tmp69904)))
                           (_$e68462_ (gxc#current-compile-output-dir)))
                      (if _$e68462_
                          ((lambda (_outdir68465_)
                             (path-expand
                              _file68460_
                              (path-expand '"static" _outdir68465_)))
                           _$e68462_)
                          (path-expand _file68460_ '"static"))))))
          (let ((_path68457_ (let () (declare (not safe)) (_file-path68455_))))
            (let ((__tmp69905 (path-directory _path68457_)))
              (declare (not safe))
              (create-directory* __tmp69905))
            _path68457_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx68439_ _opts68440_)
        (let ((_$e68442_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts68440_))))
          (if _$e68442_
              (values _$e68442_)
              (let* ((_mod-str68445_
                      (symbol->string
                       (##structure-ref
                        _ctx68439_
                        '1
                        gx#expander-context::t
                        '#f)))
                     (_$e68447_
                      (let ()
                        (declare (not safe))
                        (string-rindex _mod-str68445_ '#\/))))
                (if _$e68447_
                    ((lambda (_ix68450_)
                       (substring
                        _mod-str68445_
                        (let () (declare (not safe)) (fx+ _ix68450_ '1))
                        (string-length _mod-str68445_)))
                     _$e68447_)
                    _mod-str68445_))))))
    (define gxc#static-module-name
      (lambda (_idstr68432_)
        (if (let () (declare (not safe)) (string? _idstr68432_))
            (let* ((_str68434_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr68432_)))
                   (_strs68436_
                    (let ()
                      (declare (not safe))
                      (string-split _str68434_ '#\/))))
              (let () (declare (not safe)) (string-join _strs68436_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr68432_))
                (let ((__tmp69906 (symbol->string _idstr68432_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp69906))
                (error '"Bad module id" _idstr68432_)))))
    (define gxc#invoke
      (lambda (_program68424_ _args68425_)
        (let ((__tmp69907
               (let ()
                 (declare (not safe))
                 (cons _program68424_ _args68425_))))
          (declare (not safe))
          (gxc#verbose '"invoke " __tmp69907))
        (let* ((_proc68427_
                (open-process
                 (let ((__tmp69908
                        (let ((__tmp69909
                               (let ((__tmp69910
                                      (let ((__tmp69911
                                             (let ((__tmp69912
                                                    (let ((__tmp69913
                                                           (let ((__tmp69914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons '#f '()))))
                     (declare (not safe))
                     (cons 'stderr-redirection: __tmp69914))))
              (declare (not safe))
              (cons '#f __tmp69913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'stdout-redirection:
                                                     __tmp69912))))
                                        (declare (not safe))
                                        (cons _args68425_ __tmp69911))))
                                 (declare (not safe))
                                 (cons 'arguments: __tmp69910))))
                          (declare (not safe))
                          (cons _program68424_ __tmp69909))))
                   (declare (not safe))
                   (cons 'path: __tmp69908))))
               (_status68429_ (process-status _proc68427_)))
          (close-port _proc68427_)
          (if (let () (declare (not safe)) (zero? _status68429_))
              '#!void
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Compilation error; process exit with nonzero status"
                 _program68424_))))))))
