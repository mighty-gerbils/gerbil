(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708352929)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
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
      (lambda (_path157529_ _fun157530_)
        (with-output-to-file
         (let ((__tmp157623
                (let ()
                  (declare (not safe))
                  (cons _path157529_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp157623))
         _fun157530_)))
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
    (define gxc#gerbil-rpath
      (lambda (_gerbil-libdir157524_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir157524_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/error"
        "gerbil/runtime/interface"
        "gerbil/runtime/hash"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/loader"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir157522_) (delete-file-or-directory _dir157522_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157496_ _opts157497_)
        (if (let () (declare (not safe)) (string? _srcpath157496_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157496_)))
        (let ((_outdir157499_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157497_)))
              (_invoke-gsc?157500_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157497_)))
              (_gsc-options157501_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157497_)))
              (_keep-scm?157502_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157497_)))
              (_verbosity157503_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157497_)))
              (_optimize157504_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157497_)))
              (_debug157505_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157497_)))
              (_gen-ssxi157506_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157497_))))
          (if _outdir157499_
              (let ((__tmp157624
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157499_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157624))
              '#!void)
          (if _optimize157504_
              (let ((__tmp157625
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157625))
              '#!void)
          (let ((__tmp157629
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157496_))
                   (let ((__tmp157630
                          (let ((__tmp157631
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157496_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157631))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp157630))))
                (__tmp157628
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157626
                 (let ((__tmp157627
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157496_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp157627))))
            (declare (not safe))
            (call-with-parameters
             __tmp157629
             gxc#current-compile-output-dir
             _outdir157499_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157500_
             gxc#current-compile-gsc-options
             _gsc-options157501_
             gxc#current-compile-keep-scm
             _keep-scm?157502_
             gxc#current-compile-verbose
             _verbosity157503_
             gxc#current-compile-optimize
             _optimize157504_
             gxc#current-compile-debug
             _debug157505_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157506_
             gxc#current-compile-timestamp
             __tmp157628
             gxc#current-compile-context
             __tmp157626
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath157515_)
        (let ((_opts157517_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath157515_ _opts157517_))))
    (define gxc#compile-module
      (lambda _g157633_
        (let ((_g157632_ (let () (declare (not safe)) (##length _g157633_))))
          (cond ((let () (declare (not safe)) (##fx= _g157632_ 1))
                 (apply (lambda (_srcpath157515_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath157515_)))
                        _g157633_))
                ((let () (declare (not safe)) (##fx= _g157632_ 2))
                 (apply (lambda (_srcpath157519_ _opts157520_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath157519_
                             _opts157520_)))
                        _g157633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g157633_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157472_ _opts157473_)
        (if (let () (declare (not safe)) (string? _srcpath157472_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157472_)))
        (let ((_outdir157475_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157473_)))
              (_invoke-gsc?157476_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157473_)))
              (_gsc-options157477_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157473_)))
              (_keep-scm?157478_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157473_)))
              (_verbosity157479_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157473_)))
              (_debug157480_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157473_))))
          (if _outdir157475_
              (let ((__tmp157634
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157475_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157634))
              '#!void)
          (let ((__tmp157638
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157472_))
                   (let ((__tmp157639
                          (let ((__tmp157640
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157472_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157640))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp157639
                      _opts157473_))))
                (__tmp157637
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157635
                 (let ((__tmp157636
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157472_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp157636))))
            (declare (not safe))
            (call-with-parameters
             __tmp157638
             gxc#current-compile-output-dir
             _outdir157475_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157476_
             gxc#current-compile-gsc-options
             _gsc-options157477_
             gxc#current-compile-keep-scm
             _keep-scm?157478_
             gxc#current-compile-verbose
             _verbosity157479_
             gxc#current-compile-debug
             _debug157480_
             gxc#current-compile-timestamp
             __tmp157637
             gxc#current-compile-context
             __tmp157635
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157488_)
        (let ((_opts157490_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157488_ _opts157490_))))
    (define gxc#compile-exe
      (lambda _g157642_
        (let ((_g157641_ (let () (declare (not safe)) (##length _g157642_))))
          (cond ((let () (declare (not safe)) (##fx= _g157641_ 1))
                 (apply (lambda (_srcpath157488_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157488_)))
                        _g157642_))
                ((let () (declare (not safe)) (##fx= _g157641_ 2))
                 (apply (lambda (_srcpath157492_ _opts157493_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157492_ _opts157493_)))
                        _g157642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g157642_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157468_ _opts157469_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157469_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157468_
               _opts157469_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157468_
               _opts157469_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157351_ _opts157352_)
        (letrec ((_generate-stub157354_
                  (lambda (_builtin-modules157464_)
                    (let ((_mod-main157466_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157351_ 'main))))
                      (write (let ((__tmp157643
                                    (let ((__tmp157644
                                           (let ((__tmp157645
                                                  (let ((__tmp157646
                                                         (let ((__tmp157648
                                                                (let ((__tmp157649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157464_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157649)))
                       (__tmp157647
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp157648 __tmp157647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp157646))))
                                             (declare (not safe))
                                             (cons __tmp157645 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp157644))))
                               (declare (not safe))
                               (cons 'define __tmp157643)))
                      (write (let ((__tmp157650
                                    (let ((__tmp157689
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157651
                                           (let ((__tmp157652
                                                  (let ((__tmp157653
                                                         (let ((__tmp157677
                                                                (let ((__tmp157678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157679
                                      (let ((__tmp157687
                                             (let ((__tmp157688
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp157688)))
                                            (__tmp157680
                                             (let ((__tmp157681
                                                    (let ((__tmp157682
                                                           (let ((__tmp157683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157684
                                 (let ((__tmp157685
                                        (let ((__tmp157686
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp157686 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp157685))))
                            (declare (not safe))
                            (cons __tmp157684 '()))))
                     (declare (not safe))
                     (cons _mod-main157466_ __tmp157683))))
              (declare (not safe))
              (cons 'apply __tmp157682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157681 '()))))
                                        (declare (not safe))
                                        (cons __tmp157687 __tmp157680))))
                                 (declare (not safe))
                                 (cons '() __tmp157679))))
                          (declare (not safe))
                          (cons 'lambda __tmp157678)))
                       (__tmp157654
                        (let ((__tmp157655
                               (let ((__tmp157656
                                      (let ((__tmp157657
                                             (let ((__tmp157668
                                                    (let ((__tmp157669
                                                           (let ((__tmp157670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157671
                                 (let ((__tmp157672
                                        (let ((__tmp157673
                                               (let ((__tmp157674
                                                      (let ((__tmp157675
                                                             (let ((__tmp157676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp157676 '()))))
                (declare (not safe))
                (cons 'force-output __tmp157675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp157674 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp157673))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp157672))))
                            (declare (not safe))
                            (cons __tmp157671 '()))))
                     (declare (not safe))
                     (cons 'void __tmp157670))))
              (declare (not safe))
              (cons 'with-catch __tmp157669)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp157658
                                                    (let ((__tmp157659
                                                           (let ((__tmp157660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157661
                                 (let ((__tmp157662
                                        (let ((__tmp157663
                                               (let ((__tmp157664
                                                      (let ((__tmp157665
                                                             (let ((__tmp157666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp157667
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp157667 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp157666))))
                (declare (not safe))
                (cons __tmp157665 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp157664))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp157663))))
                                   (declare (not safe))
                                   (cons __tmp157662 '()))))
                            (declare (not safe))
                            (cons 'void __tmp157661))))
                     (declare (not safe))
                     (cons 'with-catch __tmp157660))))
              (declare (not safe))
              (cons __tmp157659 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157668
                                                     __tmp157658))))
                                        (declare (not safe))
                                        (cons '() __tmp157657))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp157656))))
                          (declare (not safe))
                          (cons __tmp157655 '()))))
                   (declare (not safe))
                   (cons __tmp157677 __tmp157654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp157653))))
                                             (declare (not safe))
                                             (cons __tmp157652 '()))))
                                      (declare (not safe))
                                      (cons __tmp157689 __tmp157651))))
                               (declare (not safe))
                               (cons 'define __tmp157650)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157355_
                  (lambda (_libgerbil157462_)
                    (call-with-input-file
                     (string-append _libgerbil157462_ '".ldd")
                     read)))
                 (_replace-extension157356_
                  (lambda (_path157459_ _ext157460_)
                    (string-append
                     (path-strip-extension _path157459_)
                     _ext157460_)))
                 (_not-exclude-module?157357_
                  (lambda (_ctx157455_)
                    (let ((_id-str157457_
                           (symbol->string
                            (##structure-ref
                             _ctx157455_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp157691
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157457_))))
                            (declare (not safe))
                            (not __tmp157691))
                          (let ((__tmp157690
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157457_))))
                            (declare (not safe))
                            (not __tmp157690))
                          '#f))))
                 (_not-file-empty?157358_
                  (lambda (_path157453_)
                    (let ((__tmp157692
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157453_))))
                      (declare (not safe))
                      (not __tmp157692))))
                 (_compile-stub157359_
                  (lambda (_output-scm157366_ _output-bin157367_)
                    (let* ((_gerbil-home157369_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157371_
                            (path-expand '"lib" _gerbil-home157369_))
                           (_gerbil-staticdir157373_
                            (path-expand '"static" _gerbil-libdir157371_))
                           (_gxlink157375_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157371_))
                           (_tmp157377_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157381_
                            (lambda (_f157379_)
                              (path-expand
                               (path-strip-directory _f157379_)
                               _tmp157377_)))
                           (_deps157383_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157351_)))
                           (_deps157385_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?157357_
                                      _deps157383_)))
                           (_src-deps-scm157387_
                            (map gxc#find-static-module-file _deps157385_))
                           (_src-deps-scm157389_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?157358_
                                      _src-deps-scm157387_)))
                           (_src-deps-scm157391_
                            (map path-expand _src-deps-scm157389_))
                           (_deps-scm157393_
                            (map _tmp-path157381_ _src-deps-scm157391_))
                           (_deps-c157399_
                            (map (lambda (_g157394157396_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157356_
                                      _g157394157396_
                                      '".c")))
                                 _deps-scm157393_))
                           (_deps-o157405_
                            (map (lambda (_g157400157402_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157356_
                                      _g157400157402_
                                      '".o")))
                                 _deps-scm157393_))
                           (_src-bin-scm157407_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157351_)))
                           (_src-bin-scm157409_
                            (path-expand _src-bin-scm157407_))
                           (_bin-scm157411_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157381_ _src-bin-scm157409_)))
                           (_bin-c157413_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157356_
                               _bin-scm157411_
                               '".c")))
                           (_bin-o157415_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157356_
                               _bin-scm157411_
                               '".o")))
                           (_output-bin157417_
                            (path-expand _output-bin157367_))
                           (_output-scm157419_
                            (path-expand _output-scm157366_))
                           (_output-c157421_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157356_
                               _output-scm157419_
                               '".c")))
                           (_output-o157423_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157356_
                               _output-scm157419_
                               '".o")))
                           (_output_-c157425_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157356_
                               _output-scm157419_
                               '"_.c")))
                           (_output_-o157427_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157356_
                               _output-scm157419_
                               '"_.o")))
                           (_gsc-link-opts157429_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157431_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157433_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157373_)))
                           (_output-ld-opts157435_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157437_
                            (path-expand '"libgerbil.a" _gerbil-libdir157371_))
                           (_libgerbil.so157439_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157371_))
                           (_libgerbil-ld-opts157441_
                            (if (file-exists? _libgerbil.so157439_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157355_
                                   _libgerbil.so157439_))
                                (if (file-exists? _libgerbil.a157437_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157355_
                                       _libgerbil.a157437_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157437_
                                       _libgerbil.so157439_)))))
                           (_rpath157443_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157371_)))
                           (_builtin-modules157447_
                            (map (lambda (_mod157445_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157445_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157351_ _deps157385_)))))
                      (let ((__tmp157693
                             (lambda ()
                               (let ((__tmp157694
                                      (path-directory _output-bin157417_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157694)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157693))
                      (let ((__tmp157695
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157354_
                                  _builtin-modules157447_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157419_
                         __tmp157695))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157696
                                   (lambda () (create-directory _tmp157377_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp157696))
                            (for-each
                             copy-file
                             _src-deps-scm157391_
                             _deps-scm157393_)
                            (copy-file _src-bin-scm157409_ _bin-scm157411_)
                            (let ((__tmp157704
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157697
                                   (let ((__tmp157698
                                          (let ((__tmp157699
                                                 (let ((__tmp157700
                                                        (let ((__tmp157701
                                                               (let ((__tmp157702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157703
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157419_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157411_ __tmp157703))))
                         (declare (not safe))
                         (foldr1 cons __tmp157702 _deps-scm157393_))))
                  (declare (not safe))
                  (foldr1 cons __tmp157701 _gsc-link-opts157429_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157375_
                                                         __tmp157700))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp157699))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157698))))
                              (declare (not safe))
                              (gxc#invoke __tmp157704 __tmp157697))
                            (let ((__tmp157712
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157705
                                   (let ((__tmp157706
                                          (let ((__tmp157707
                                                 (let ((__tmp157708
                                                        (let ((__tmp157709
                                                               (let ((__tmp157710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157711
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157425_ '()))))
                                (declare (not safe))
                                (cons _output-c157421_ __tmp157711))))
                         (declare (not safe))
                         (cons _bin-c157413_ __tmp157710))))
                  (declare (not safe))
                  (foldr1 cons __tmp157709 _deps-c157399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157708
                                                           _gsc-static-opts157433_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157707
                                                    _gsc-cc-opts157431_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157706))))
                              (declare (not safe))
                              (gxc#invoke __tmp157712 __tmp157705))
                            (let ((__tmp157725
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157713
                                   (let ((__tmp157714
                                          (let ((__tmp157715
                                                 (let ((__tmp157716
                                                        (let ((__tmp157717
                                                               (let ((__tmp157718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157719
                                     (let ((__tmp157720
                                            (let ((__tmp157721
                                                   (let ((__tmp157722
                                                          (let ((__tmp157723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp157724
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157441_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp157724))))
                    (declare (not safe))
                    (cons _gerbil-libdir157371_ __tmp157723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp157722))))
                                              (declare (not safe))
                                              (cons _rpath157443_
                                                    __tmp157721))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp157720
                                               _output-ld-opts157435_))))
                                (declare (not safe))
                                (cons _output_-o157427_ __tmp157719))))
                         (declare (not safe))
                         (cons _output-o157423_ __tmp157718))))
                  (declare (not safe))
                  (cons _bin-o157415_ __tmp157717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157716
                                                           _deps-o157405_))))
                                            (declare (not safe))
                                            (cons _output-bin157417_
                                                  __tmp157715))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157714))))
                              (declare (not safe))
                              (gxc#invoke __tmp157725 __tmp157713))
                            (for-each
                             delete-file
                             (let ((__tmp157726
                                    (let ((__tmp157727
                                           (let ((__tmp157728
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157427_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157423_
                                                   __tmp157728))))
                                      (declare (not safe))
                                      (cons _output_-c157425_ __tmp157727))))
                               (declare (not safe))
                               (cons _output-c157421_ __tmp157726)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157377_)))
                          '#!void)))))
          (let* ((_output-bin157361_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157351_ _opts157352_)))
                 (_output-scm157363_
                  (string-append _output-bin157361_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157359_ _output-scm157363_ _output-bin157361_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157363_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx157176_ _opts157177_)
        (letrec ((_reset-declare157179_
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
                 (_generate-stub157180_
                  (lambda (_deps157342_)
                    (let ((_mod-main157344_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157176_ 'main)))
                          (_reset-decl157345_
                           (let ()
                             (declare (not safe))
                             (_reset-declare157179_)))
                          (_user-decl157346_
                           (let ()
                             (declare (not safe))
                             (_user-declare157181_))))
                      (for-each
                       (lambda (_dep157348_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157345_)
                         (newline)
                         (if _user-decl157346_
                             (begin (write _user-decl157346_) (newline))
                             '#!void)
                         (write (let ((__tmp157729
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157348_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp157729)))
                         (newline))
                       _deps157342_)
                      (write (let ((__tmp157730
                                    (let ((__tmp157743
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157731
                                           (let ((__tmp157739
                                                  (let ((__tmp157740
                                                         (let ((__tmp157741
                                                                (let ((__tmp157742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157742))))
                   (declare (not safe))
                   (cons __tmp157741 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp157740)))
                                                 (__tmp157732
                                                  (let ((__tmp157733
                                                         (let ((__tmp157734
                                                                (let ((__tmp157735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157736
                                      (let ((__tmp157737
                                             (let ((__tmp157738
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp157738 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp157737))))
                                 (declare (not safe))
                                 (cons __tmp157736 '()))))
                          (declare (not safe))
                          (cons _mod-main157344_ __tmp157735))))
                   (declare (not safe))
                   (cons 'apply __tmp157734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157733 '()))))
                                             (declare (not safe))
                                             (cons __tmp157739 __tmp157732))))
                                      (declare (not safe))
                                      (cons __tmp157743 __tmp157731))))
                               (declare (not safe))
                               (cons 'define __tmp157730)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157181_
                  (lambda ()
                    (let* ((_gsc-opts157247_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts157177_)))
                           (_gsc-prelude157249_
                            (if _gsc-opts157247_
                                (member '"-prelude" _gsc-opts157247_)
                                '#f))
                           (_gsc-prelude157251_
                            (if _gsc-prelude157249_
                                (read (open-input-string
                                       (cadr _gsc-prelude157249_)))
                                '#f)))
                      (let _lp157254_ ((_rest157256_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude157251_ '())))
                                       (_user-decls157257_ '()))
                        (let* ((_rest157258157266_ _rest157256_)
                               (_else157260157274_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157257_))
                                      '#f
                                      (let ((__tmp157744
                                             (reverse _user-decls157257_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp157744)))))
                               (_K157262157330_
                                (lambda (_rest157277_ _expr157278_)
                                  (let* ((_expr157279157291_ _expr157278_)
                                         (_else157282157299_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157254_
                                               _rest157277_
                                               _user-decls157257_)))))
                                    (let ((_K157287157320_
                                           (lambda (_decls157318_)
                                             (let ((__tmp157745
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls157257_
                                                              _decls157318_))))
                                               (declare (not safe))
                                               (_lp157254_
                                                _rest157277_
                                                __tmp157745))))
                                          (_K157284157305_
                                           (lambda (_exprs157303_)
                                             (let ((__tmp157746
                                                    (append _exprs157303_
                                                            _rest157277_)))
                                               (declare (not safe))
                                               (_lp157254_
                                                __tmp157746
                                                _user-decls157257_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157279157291_))
                                          (let ((_tl157289157325_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157279157291_)))
                                                (_hd157288157323_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157279157291_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157288157323_
                                                         'declare))
                                                (let ((_decls157328_
                                                       _tl157289157325_))
                                                  (declare (not safe))
                                                  (_K157287157320_
                                                   _decls157328_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157288157323_
                                                             'begin))
                                                    (let ((_exprs157313_
                                                           _tl157289157325_))
                                                      (declare (not safe))
                                                      (_K157284157305_
                                                       _exprs157313_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157282157299_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157282157299_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157258157266_))
                              (let ((_hd157263157333_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157258157266_)))
                                    (_tl157264157335_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157258157266_))))
                                (let* ((_expr157338_ _hd157263157333_)
                                       (_rest157340_ _tl157264157335_))
                                  (declare (not safe))
                                  (_K157262157330_ _rest157340_ _expr157338_)))
                              (let ()
                                (declare (not safe))
                                (_else157260157274_))))))))
                 (_compile-stub157182_
                  (lambda (_output-scm157189_ _output-bin157190_)
                    (let* ((_gerbil-home157192_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157194_
                            (path-expand '"lib" _gerbil-home157192_))
                           (_runtime157196_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157198_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157192_))
                           (_include-gambit-sharp157200_
                            (string-append
                             '"(include \""
                             _gambit-sharp157198_
                             '"\")"))
                           (_bin-scm157202_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157176_)))
                           (_deps157204_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157176_)))
                           (_deps157206_
                            (map gxc#find-static-module-file _deps157204_))
                           (_deps157211_
                            (let ((__tmp157747
                                   (lambda (_$obj157208_)
                                     (let ((__tmp157748
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj157208_))))
                                       (declare (not safe))
                                       (not __tmp157748)))))
                              (declare (not safe))
                              (filter __tmp157747 _deps157206_)))
                           (_deps157215_
                            (let ((__tmp157749
                                   (lambda (_f157213_)
                                     (let ((__tmp157750
                                            (member _f157213_
                                                    _runtime157196_)))
                                       (declare (not safe))
                                       (not __tmp157750)))))
                              (declare (not safe))
                              (filter __tmp157749 _deps157211_)))
                           (_output-base157217_
                            (string-append
                             (path-strip-extension _output-scm157189_)))
                           (_output-c157219_
                            (string-append _output-base157217_ '".c"))
                           (_output-o157221_
                            (string-append _output-base157217_ '".o"))
                           (_output-c_157223_
                            (string-append _output-base157217_ '"_.c"))
                           (_output-o_157225_
                            (string-append _output-base157217_ '"_.o"))
                           (_gsc-link-opts157227_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157229_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157231_
                            (let ((__tmp157751
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157194_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp157751)))
                           (_output-ld-opts157233_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157235_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp157753
                                       (let ((__tmp157754
                                              (let ((__tmp157755
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157200_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp157755))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp157754))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157753))
                                (let ((__tmp157752
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157200_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157752))))
                           (_gsc-link-opts157237_
                            (append _gsc-link-opts157227_
                                    _gsc-gx-macros157235_))
                           (_rpath157239_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157194_)))
                           (_default-ld-options157241_
                            (let ((__tmp157756
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp157756))))
                      (let ((__tmp157757
                             (lambda ()
                               (let ((__tmp157758
                                      (path-directory _output-bin157190_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157758)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157757))
                      (let ((__tmp157759
                             (lambda ()
                               (let ((__tmp157760
                                      (let ((__tmp157761
                                             (let ((__tmp157762
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157202_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp157762
                                                       _deps157215_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp157761
                                                _runtime157196_))))
                                 (declare (not safe))
                                 (_generate-stub157180_ __tmp157760)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157189_
                         __tmp157759))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157768
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157763
                                   (let ((__tmp157764
                                          (let ((__tmp157765
                                                 (let ((__tmp157766
                                                        (let ((__tmp157767
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm157189_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp157767 _gsc-link-opts157237_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157223_
                                                         __tmp157766))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp157765))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157764))))
                              (declare (not safe))
                              (gxc#invoke __tmp157768 __tmp157763))
                            (let ((__tmp157774
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157769
                                   (let ((__tmp157770
                                          (let ((__tmp157771
                                                 (let ((__tmp157772
                                                        (let ((__tmp157773
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157223_ '()))))
                  (declare (not safe))
                  (cons _output-c157219_ __tmp157773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157772
                                                           _gsc-static-opts157231_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157771
                                                    _gsc-cc-opts157229_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157770))))
                              (declare (not safe))
                              (gxc#invoke __tmp157774 __tmp157769))
                            (let ((__tmp157784
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157775
                                   (let ((__tmp157776
                                          (let ((__tmp157777
                                                 (let ((__tmp157778
                                                        (let ((__tmp157779
                                                               (let ((__tmp157780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157781
                                     (let ((__tmp157782
                                            (let ((__tmp157783
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157241_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157194_
                                                    __tmp157783))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp157782))))
                                (declare (not safe))
                                (cons _rpath157239_ __tmp157781))))
                         (declare (not safe))
                         (foldr1 cons __tmp157780 _output-ld-opts157233_))))
                  (declare (not safe))
                  (cons _output-o_157225_ __tmp157779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157221_
                                                         __tmp157778))))
                                            (declare (not safe))
                                            (cons _output-bin157190_
                                                  __tmp157777))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157776))))
                              (declare (not safe))
                              (gxc#invoke __tmp157784 __tmp157775)))
                          '#!void)))))
          (let* ((_output-bin157184_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157176_ _opts157177_)))
                 (_output-scm157186_
                  (string-append _output-bin157184_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157182_ _output-scm157186_ _output-bin157184_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157186_))))))
    (define gxc#find-export-binding
      (lambda (_ctx157126_ _id157127_)
        (let ((_$e157173_
               (let ((__tmp157786
                      (lambda (_e157128157130_)
                        (let* ((_g157132157142_ _e157128157130_)
                               (_else157134157150_ (lambda () '#f))
                               (_K157136157154_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g157132157142_
                                 'gx#module-export::t))
                              (let* ((_e157137157157_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157132157142_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e157138157160_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157132157142_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e157139157163_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157132157142_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e157139157163_ '0))
                                    (let ((_e157140157166_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g157132157142_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g157168157170_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g157168157170_
                                                    _id157127_)))
                                           _e157140157166_)
                                          (let ()
                                            (declare (not safe))
                                            (_K157136157154_))
                                          (let ()
                                            (declare (not safe))
                                            (_else157134157150_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else157134157150_))))
                              (let ()
                                (declare (not safe))
                                (_else157134157150_))))))
                     (__tmp157785
                      (##structure-ref
                       _ctx157126_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp157786 __tmp157785))))
          (if _$e157173_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e157173_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx157118_ _id157119_)
        (let ((_$e157121_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx157118_ _id157119_))))
          (if _$e157121_
              ((lambda (_bind157124_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind157124_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id157119_)))
                 (##structure-ref _bind157124_ '1 gx#binding::t '#f))
               _$e157121_)
              (let ((__tmp157787
                     (##structure-ref
                      _ctx157118_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp157787
                 _id157119_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157005_)
        (letrec* ((_ht157007_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157008_
                   (lambda (_in157070_ _phi157071_)
                     (let ((_iphi157073_
                            (fx+ _phi157071_
                                 (##direct-structure-ref
                                  _in157070_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports157074_
                            (##structure-ref
                             (##direct-structure-ref
                              _in157070_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp157076_ ((_rest157078_ _imports157074_)
                                        (_r157079_ '()))
                         (let* ((_rest157080157088_ _rest157078_)
                                (_else157082157096_ (lambda () _r157079_))
                                (_K157084157106_
                                 (lambda (_rest157099_ _in157100_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in157100_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi157073_))
                                           (let ((__tmp157794
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in157100_
                                                          _r157079_))))
                                             (declare (not safe))
                                             (_lp157076_
                                              _rest157099_
                                              __tmp157794))
                                           (let ()
                                             (declare (not safe))
                                             (_lp157076_
                                              _rest157099_
                                              _r157079_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in157100_
                                              'gx#module-import::t))
                                           (let ((_iphi157102_
                                                  (fx+ _phi157071_
                                                       (##direct-structure-ref
                                                        _in157100_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi157102_))
                                                 (let ((__tmp157792
                                                        (let ((__tmp157793
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in157100_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp157793 _r157079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp157076_
                                                    _rest157099_
                                                    __tmp157792))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp157076_
                                                    _rest157099_
                                                    _r157079_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in157100_
                                                  'gx#import-set::t))
                                               (let ((_xphi157104_
                                                      (fx+ _iphi157073_
                                                           (##direct-structure-ref
                                                            _in157100_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi157104_))
                                                     (let ((__tmp157790
                                                            (let ((__tmp157791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in157100_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp157791 _r157079_))))
               (declare (not safe))
               (_lp157076_ _rest157099_ __tmp157790))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi157104_)
                                                         (let ((__tmp157788
                                                                (let ((__tmp157789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157008_
                                  _in157100_
                                  _iphi157073_))))
                          (declare (not safe))
                          (foldl1 cons _r157079_ __tmp157789))))
                   (declare (not safe))
                   (_lp157076_ _rest157099_ __tmp157788))
                 (let ()
                   (declare (not safe))
                   (_lp157076_ _rest157099_ _r157079_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp157076_
                                                  _rest157099_
                                                  _r157079_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest157080157088_))
                               (let ((_hd157085157109_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest157080157088_)))
                                     (_tl157086157111_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest157080157088_))))
                                 (let* ((_in157114_ _hd157085157109_)
                                        (_rest157116_ _tl157086157111_))
                                   (declare (not safe))
                                   (_K157084157106_ _rest157116_ _in157114_)))
                               (let ()
                                 (declare (not safe))
                                 (_else157082157096_))))))))
                  (_find-deps157009_
                   (lambda (_rest157016_ _deps157017_)
                     (let* ((_rest157018157026_ _rest157016_)
                            (_else157020157034_ (lambda () _deps157017_))
                            (_K157022157058_
                             (lambda (_rest157037_ _hd157038_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd157038_
                                      'gx#module-context::t))
                                   (let ((_id157040_
                                          (##structure-ref
                                           _hd157038_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports157041_
                                          (##structure-ref
                                           _hd157038_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157007_ _id157040_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157009_
                                            _rest157037_
                                            _deps157017_))
                                         (let ((_$e157043_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd157038_))))
                                           (if _$e157043_
                                               ((lambda (_pre157046_)
                                                  (let ((_xdeps157048_
                                                         (let ((__tmp157807
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre157046_ _imports157041_))))
                   (declare (not safe))
                   (_find-deps157009_ __tmp157807 _deps157017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157007_
                                                       _id157040_
                                                       _hd157038_))
                                                    (let ((__tmp157808
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd157038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps157048_))))
              (declare (not safe))
              (_find-deps157009_ _rest157037_ __tmp157808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e157043_)
                                               (let ((_xdeps157050_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157009_
                                                         _imports157041_
                                                         _deps157017_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157007_
                                                    _id157040_
                                                    _hd157038_))
                                                 (let ((__tmp157806
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd157038_
                                                                _xdeps157050_))))
                                                   (declare (not safe))
                                                   (_find-deps157009_
                                                    _rest157037_
                                                    __tmp157806)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd157038_
                                          'gx#prelude-context::t))
                                       (let ((_id157052_
                                              (##structure-ref
                                               _hd157038_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157007_
                                                _id157052_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157009_
                                                _rest157037_
                                                _deps157017_))
                                             (let ((_xdeps157054_
                                                    (let ((__tmp157804
                                                           (##structure-ref
                                                            _hd157038_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157009_
                                                       __tmp157804
                                                       _deps157017_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157007_
                                                      _id157052_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157009_
                                                      _rest157037_
                                                      _xdeps157054_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157007_
                                                        _id157052_
                                                        _hd157038_))
                                                     (let ((__tmp157805
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd157038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps157054_))))
               (declare (not safe))
               (_find-deps157009_ _rest157037_ __tmp157805)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd157038_
                                              'gx#module-import::t))
                                           (if (let ((__tmp157803
                                                      (##direct-structure-ref
                                                       _hd157038_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp157803))
                                               (let ((__tmp157801
                                                      (let ((__tmp157802
                                                             (##direct-structure-ref
                                                              _hd157038_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157802
                                                              _rest157037_))))
                                                 (declare (not safe))
                                                 (_find-deps157009_
                                                  __tmp157801
                                                  _deps157017_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157009_
                                                  _rest157037_
                                                  _deps157017_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd157038_
                                                  'gx#module-export::t))
                                               (let ((__tmp157799
                                                      (let ((__tmp157800
                                                             (##direct-structure-ref
                                                              _hd157038_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157800
                                                              _rest157037_))))
                                                 (declare (not safe))
                                                 (_find-deps157009_
                                                  __tmp157799
                                                  _deps157017_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd157038_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp157798
                                                              (##direct-structure-ref
                                                               _hd157038_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp157798))
                                                       (let ((__tmp157796
                                                              (let ((__tmp157797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd157038_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp157797 _rest157037_))))
                 (declare (not safe))
                 (_find-deps157009_ __tmp157796 _deps157017_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd157038_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps157056_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157008_ _hd157038_ '0)))
                          (__tmp157795
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest157037_ _xdeps157056_))))
                     (declare (not safe))
                     (_find-deps157009_ __tmp157795 _deps157017_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157009_ _rest157037_ _deps157017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd157038_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157018157026_))
                           (let ((_hd157023157061_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157018157026_)))
                                 (_tl157024157063_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157018157026_))))
                             (let* ((_hd157066_ _hd157023157061_)
                                    (_rest157068_ _tl157024157063_))
                               (declare (not safe))
                               (_K157022157058_ _rest157068_ _hd157066_)))
                           (let ()
                             (declare (not safe))
                             (_else157020157034_)))))))
          (reverse (let ((__tmp157809
                          (let ((__tmp157810
                                 (let ((_$e157011_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx157005_))))
                                   (if _$e157011_
                                       ((lambda (_pre157014_)
                                          (let ((__tmp157811
                                                 (##structure-ref
                                                  _ctx157005_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre157014_ __tmp157811)))
                                        _$e157011_)
                                       (##structure-ref
                                        _ctx157005_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps157009_ __tmp157810 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp157809))))))
    (define gxc#find-static-module-file
      (lambda (_ctx156936_)
        (let* ((_context-id156938_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx156936_
                       'gx#module-context::t))
                    (##structure-ref _ctx156936_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx156936_)))
               (_scm156940_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id156938_))
                 '".scm"))
               (_dirs156942_ (gx#current-expander-module-library-path))
               (_dirs156948_
                (let ((_user-libpath156944_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath156944_
                      (let ((_user-libpath156946_
                             (path-expand '"lib" _user-libpath156944_)))
                        (if (member _user-libpath156946_ _dirs156942_)
                            _dirs156942_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath156946_ _dirs156942_))))
                      _dirs156942_)))
               (_dirs156957_
                (let ((_$e156950_ (gxc#current-compile-output-dir)))
                  (if _$e156950_
                      ((lambda (_g156952156954_)
                         (let ()
                           (declare (not safe))
                           (cons _g156952156954_ _dirs156948_)))
                       _$e156950_)
                      _dirs156948_)))
               (_dirs156963_
                (map (lambda (_g156958156960_)
                       (path-expand '"static" _g156958156960_))
                     _dirs156957_)))
          (let _lp156966_ ((_rest156968_ _dirs156963_))
            (let* ((_rest156969156977_ _rest156968_)
                   (_else156971156985_
                    (lambda ()
                      (let ((__tmp157812
                             (##structure-ref
                              _ctx156936_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp157812
                         _scm156940_))))
                   (_K156973156993_
                    (lambda (_rest156988_ _dir156989_)
                      (let ((_path156991_
                             (path-expand _scm156940_ _dir156989_)))
                        (if (file-exists? _path156991_)
                            _path156991_
                            (let ()
                              (declare (not safe))
                              (_lp156966_ _rest156988_)))))))
              (if (let () (declare (not safe)) (##pair? _rest156969156977_))
                  (let ((_hd156974156996_
                         (let ()
                           (declare (not safe))
                           (##car _rest156969156977_)))
                        (_tl156975156998_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156969156977_))))
                    (let* ((_dir157001_ _hd156974156996_)
                           (_rest157003_ _tl156975156998_))
                      (declare (not safe))
                      (_K156973156993_ _rest157003_ _dir157001_)))
                  (let () (declare (not safe)) (_else156971156985_))))))))
    (define gxc#file-empty?
      (lambda (_path156934_)
        (let ((__tmp157813 (file-info-size (file-info _path156934_ '#t))))
          (declare (not safe))
          (zero? __tmp157813))))
    (define gxc#compile-top-module
      (lambda (_ctx156923_)
        (let ((__tmp157817
               (lambda ()
                 (let ((__tmp157818
                        (##structure-ref
                         _ctx156923_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp157818))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp157819
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx156923_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp157819))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx156923_))
                 (if (let ((__tmp157822
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx156923_))))
                       (declare (not safe))
                       (null? __tmp157822))
                     (let* ((_thr1156928_
                             (let ((__tmp157820
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx156923_)))))
                               (declare (not safe))
                               (spawn __tmp157820)))
                            (_thr2156931_
                             (let ((__tmp157821
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx156923_)))))
                               (declare (not safe))
                               (spawn __tmp157821))))
                       (let () (declare (not safe)) (gxc#join! _thr1156928_))
                       (let () (declare (not safe)) (gxc#join! _thr2156931_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx156923_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx156923_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx156923_))
                     '#!void)))
              (__tmp157816
               (let ((__obj157621
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj157621)
                 __obj157621))
              (__tmp157815 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157814 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp157817
           gx#current-expander-context
           _ctx156923_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp157816
           gxc#current-compile-runtime-sections
           __tmp157815
           gxc#current-compile-runtime-names
           __tmp157814))))
    (define gxc#collect-bindings
      (lambda (_ctx156921_)
        (let ((__tmp157823
               (##structure-ref _ctx156921_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp157823))))
    (define gxc#compile-runtime-code
      (lambda (_ctx156867_)
        (letrec ((_compile1156869_
                  (lambda (_ctx156910_)
                    (let* ((_code156912_
                            (##structure-ref
                             _ctx156910_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt156916_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code156912_))
                                (let ((_idstr156914_
                                       (let ((__tmp157824
                                              (##structure-ref
                                               _ctx156910_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp157824))))
                                  (string-append _idstr156914_ '"__0"))
                                '#f)))
                      (if _rt156916_
                          (begin
                            (let ((__tmp157825
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp157825 _ctx156910_ _rt156916_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code156871_
                               _ctx156910_
                               _code156912_)))
                          (let ((_path156919_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx156910_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path156919_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code156872_
                         _ctx156910_
                         _code156912_
                         _rt156916_)))))
                 (_context-timestamp156870_
                  (lambda (_ctx156908_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx156908_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code156871_
                  (lambda (_ctx156890_ _code156891_)
                    (let* ((_lifts156893_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code156896_
                            (let ((__tmp157828
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code156891_))))
                                  (__tmp157827
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp157826
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157828
                               gx#current-expander-context
                               _ctx156890_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts156893_
                               gxc#current-compile-marks
                               __tmp157827
                               gxc#current-compile-identifiers
                               __tmp157826)))
                           (_runtime-code156898_
                            (if (let ((__tmp157832 (unbox _lifts156893_)))
                                  (declare (not safe))
                                  (null? __tmp157832))
                                _runtime-code156896_
                                (let ((__tmp157829
                                       (let ((__tmp157831
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code156896_
                                                      '())))
                                             (__tmp157830
                                              (reverse (unbox _lifts156893_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp157831
                                                 __tmp157830))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157829))))
                           (_runtime-code156900_
                            (let ((__tmp157833
                                   (let ((__tmp157835
                                          (let ((__tmp157836
                                                 (let ((__tmp157839
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp156870_
                                                           _ctx156890_)))
                                                       (__tmp157837
                                                        (let ((__tmp157838
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp157838
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp157839
                                                         __tmp157837))))
                                            (declare (not safe))
                                            (cons 'define __tmp157836)))
                                         (__tmp157834
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code156898_ '()))))
                                     (declare (not safe))
                                     (cons __tmp157835 __tmp157834))))
                              (declare (not safe))
                              (cons 'begin __tmp157833)))
                           (_scm0156902_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156890_
                               '0
                               '".scm"))))
                      (let ((_scms156905_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx156890_))))
                        (let ((__tmp157840
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0156902_
                                    _runtime-code156900_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp157840
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms156905_)
                            (delete-file _scms156905_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0156902_
                           '" => "
                           _scms156905_))
                        (copy-file _scm0156902_ _scms156905_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0156902_))))))
                 (_generate-loader-code156872_
                  (lambda (_ctx156879_ _code156880_ _rt156881_)
                    (let* ((_loader-code156884_
                            (let ((__tmp157841
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code156880_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157841
                               gx#current-expander-context
                               _ctx156879_)))
                           (_loader-code156886_
                            (if _rt156881_
                                (let ((__tmp157842
                                       (let ((__tmp157843
                                              (let ((__tmp157844
                                                     (let ((__tmp157845
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt156881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp157845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157844 '()))))
                                         (declare (not safe))
                                         (cons _loader-code156884_
                                               __tmp157843))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157842))
                                _loader-code156884_)))
                      (let ((__tmp157846
                             (lambda ()
                               (let ((__tmp157847
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156879_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp157847
                                  _loader-code156886_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp157846
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules156874_
                 (let ((__tmp157848
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx156867_))))
                   (declare (not safe))
                   (cons _ctx156867_ __tmp157848))))
            (for-each
             (lambda (_ctx156876_)
               (let ((__tmp157849
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1156869_ _ctx156876_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp157849
                  gxc#current-compile-decls
                  '())))
             _all-modules156874_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx156764_)
        (letrec ((_compile-ssi156766_
                  (lambda (_code156837_)
                    (let* ((_path156839_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156764_
                               '#f
                               '".ssi")))
                           (_prelude156850_
                            (let* ((_super156841_
                                    (##structure-ref
                                     _ctx156764_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e156843_
                                    (##structure-ref
                                     _super156841_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e156843_
                                  ((lambda (_g156845156847_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g156845156847_)))
                                   _$e156843_)
                                  ':<root>)))
                           (_ns156852_
                            (##structure-ref
                             _ctx156764_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr156854_
                            (symbol->string
                             (##structure-ref
                              _ctx156764_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg156861_
                            (let ((_$e156856_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr156854_ '#\/))))
                              (if _$e156856_
                                  ((lambda (_x156859_)
                                     (string->symbol
                                      (substring _idstr156854_ '0 _x156859_)))
                                   _$e156856_)
                                  '#f)))
                           (_rt156863_
                            (let ((__tmp157850
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp157850 _ctx156764_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path156839_))
                      (let ((__tmp157851
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude156850_))
                               (if _pkg156861_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg156861_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns156852_))
                               (newline)
                               (pretty-print _code156837_)
                               (if _rt156863_
                                   (pretty-print
                                    (let ((__tmp157852
                                           (let ((__tmp157856
                                                  (let ((__tmp157857
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp157857)))
                                                 (__tmp157853
                                                  (let ((__tmp157854
                                                         (let ((__tmp157855
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt156863_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp157855))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157854 '()))))
                                             (declare (not safe))
                                             (cons __tmp157856 __tmp157853))))
                                      (declare (not safe))
                                      (cons '%#call __tmp157852)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path156839_
                         __tmp157851)))))
                 (_compile-phi156767_
                  (lambda (_part156777_)
                    (let* ((_part156778156791_ _part156777_)
                           (_E156780156795_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part156778156791_))))
                           (_K156781156806_
                            (lambda (_code156798_
                                     _n156799_
                                     _phi156800_
                                     _phi-ctx156801_)
                              (let* ((_code156804_
                                      (let ((__tmp157858
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code156798_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp157858
                                         gx#current-expander-context
                                         _phi-ctx156801_
                                         gx#current-expander-phi
                                         _phi156800_)))
                                     (__tmp157859
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156764_
                                         _n156799_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp157859
                                 _code156804_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part156778156791_))
                          (let ((_hd156782156809_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part156778156791_)))
                                (_tl156783156811_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part156778156791_))))
                            (let ((_phi-ctx156814_ _hd156782156809_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl156783156811_))
                                  (let ((_hd156784156816_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl156783156811_)))
                                        (_tl156785156818_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl156783156811_))))
                                    (let ((_phi156821_ _hd156784156816_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl156785156818_))
                                          (let ((_hd156786156823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl156785156818_)))
                                                (_tl156787156825_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl156785156818_))))
                                            (let ((_n156828_ _hd156786156823_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl156787156825_))
                                                  (let ((_hd156788156830_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl156787156825_)))
                                                        (_tl156789156832_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl156787156825_))))
                                                    (let ((_code156835_
                                                           _hd156788156830_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl156789156832_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K156781156806_
                                                             _code156835_
                                                             _n156828_
                                                             _phi156821_
                                                             _phi-ctx156814_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E156780156795_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E156780156795_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E156780156795_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E156780156795_)))))
                          (let () (declare (not safe)) (_E156780156795_)))))))
          (let ((_g157860_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx156764_))))
            (begin
              (let ((_g157861_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g157860_)
                           (##vector-length _g157860_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g157861_ 2)))
                    (error "Context expects 2 values" _g157861_)))
              (let ((_ssi-code156769_
                     (let () (declare (not safe)) (##vector-ref _g157860_ 0)))
                    (_phi-code156770_
                     (let () (declare (not safe)) (##vector-ref _g157860_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi156766_ _ssi-code156769_))
                  (let ((_threads156775_
                         (map (lambda (_code156772_)
                                (let ((__tmp157862
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi156767_
                                            _code156772_)))))
                                  (declare (not safe))
                                  (spawn __tmp157862)))
                              _phi-code156770_)))
                    (for-each gxc#join! _threads156775_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx156747_)
        (let* ((_path156749_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx156747_ '#f '".ssxi.ss")))
               (_code156751_
                (let ((__tmp157863
                       (##structure-ref
                        _ctx156747_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp157863)))
               (_idstr156753_
                (symbol->string
                 (##structure-ref _ctx156747_ '1 gx#expander-context::t '#f)))
               (_pkg156760_
                (let ((_$e156755_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr156753_ '#\/))))
                  (if _$e156755_
                      ((lambda (_x156758_)
                         (string->symbol
                          (substring _idstr156753_ '0 _x156758_)))
                       _$e156755_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path156749_))
          (let ((__tmp157864
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg156760_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg156760_))
                       '#!void)
                   (newline)
                   (pretty-print _code156751_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path156749_ __tmp157864)))))
    (define gxc#generate-meta-code
      (lambda (_ctx156740_)
        (let* ((_state156742_
                (let ((__obj157622
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj157622 _ctx156740_)
                  __obj157622))
               (_ssi-code156744_
                (let ((__tmp157865
                       (##structure-ref
                        _ctx156740_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp157865 _state156742_))))
          (values _ssi-code156744_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state156742_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx156733_)
        (let ((_lifts156735_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157868
                 (lambda ()
                   (let ((_code156738_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx156733_))))
                     (if (let ((__tmp157872 (unbox _lifts156735_)))
                           (declare (not safe))
                           (null? __tmp157872))
                         _code156738_
                         (let ((__tmp157869
                                (let ((__tmp157871
                                       (let ()
                                         (declare (not safe))
                                         (cons _code156738_ '())))
                                      (__tmp157870
                                       (reverse (unbox _lifts156735_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp157871 __tmp157870))))
                           (declare (not safe))
                           (cons 'begin __tmp157869))))))
                (__tmp157867
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp157866
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp157868
             gxc#current-compile-lift
             _lifts156735_
             gxc#current-compile-marks
             __tmp157867
             gxc#current-compile-identifiers
             __tmp157866)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx156729_)
        (let ((_modules156731_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157873
                 (##structure-ref _ctx156729_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp157873 _modules156731_))
          (reverse (unbox _modules156731_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path156712_ _code156713_ _phi?156714_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path156712_))
        (let ((__tmp157874
               (lambda ()
                 (pretty-print
                  (let ((__tmp157875
                         (let ((__tmp157882
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp157876
                                (let ((__tmp157881
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp157877
                                       (let ((__tmp157880
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp157878
                                              (let ((__tmp157879
                                                     (if _phi?156714_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp157879))))
                                         (declare (not safe))
                                         (cons __tmp157880 __tmp157878))))
                                  (declare (not safe))
                                  (cons __tmp157881 __tmp157877))))
                           (declare (not safe))
                           (cons __tmp157882 __tmp157876))))
                    (declare (not safe))
                    (cons 'declare __tmp157875)))
                 (pretty-print _code156713_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path156712_ __tmp157874))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path156712_ _phi?156714_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path156712_))))
    (define gxc#compile-scm-file__0
      (lambda (_path156720_ _code156721_)
        (let ((_phi?156723_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path156720_ _code156721_ _phi?156723_))))
    (define gxc#compile-scm-file
      (lambda _g157884_
        (let ((_g157883_ (let () (declare (not safe)) (##length _g157884_))))
          (cond ((let () (declare (not safe)) (##fx= _g157883_ 2))
                 (apply (lambda (_path156720_ _code156721_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path156720_
                             _code156721_)))
                        _g157884_))
                ((let () (declare (not safe)) (##fx= _g157883_ 3))
                 (apply (lambda (_path156725_ _code156726_ _phi?156727_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path156725_
                             _code156726_
                             _phi?156727_)))
                        _g157884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g157884_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?156613_)
        (let _lp156615_ ((_rest156617_ (gxc#current-compile-gsc-options))
                         (_opts156618_ '()))
          (let* ((_rest156619156639_ _rest156617_)
                 (_else156623156647_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156613_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157885
                               (let ((__tmp157886 (reverse _opts156618_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp157886))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp157885))
                        (reverse _opts156618_)))))
            (let ((_K156633156690_
                   (lambda (_rest156688_)
                     (let ()
                       (declare (not safe))
                       (_lp156615_ _rest156688_ _opts156618_))))
                  (_K156628156672_
                   (lambda (_rest156670_)
                     (let ()
                       (declare (not safe))
                       (_lp156615_ _rest156670_ _opts156618_))))
                  (_K156625156654_
                   (lambda (_rest156651_ _opt156652_)
                     (let ((__tmp157887
                            (let ()
                              (declare (not safe))
                              (cons _opt156652_ _opts156618_))))
                       (declare (not safe))
                       (_lp156615_ _rest156651_ __tmp157887)))))
              (if (let () (declare (not safe)) (##pair? _rest156619156639_))
                  (let ((_tl156635156695_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156619156639_)))
                        (_hd156634156693_
                         (let ()
                           (declare (not safe))
                           (##car _rest156619156639_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156634156693_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156635156695_))
                            (let* ((_tl156637156698_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156635156695_)))
                                   (_rest156701_ _tl156637156698_))
                              (declare (not safe))
                              (_K156633156690_ _rest156701_))
                            (let ((_opt156662_ _hd156634156693_)
                                  (_rest156664_ _tl156635156695_))
                              (let ()
                                (declare (not safe))
                                (_K156625156654_ _rest156664_ _opt156662_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156634156693_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156635156695_))
                                (let* ((_tl156632156680_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156635156695_)))
                                       (_rest156683_ _tl156632156680_))
                                  (declare (not safe))
                                  (_K156628156672_ _rest156683_))
                                (let ((_opt156662_ _hd156634156693_)
                                      (_rest156664_ _tl156635156695_))
                                  (let ()
                                    (declare (not safe))
                                    (_K156625156654_
                                     _rest156664_
                                     _opt156662_))))
                            (let ((_opt156662_ _hd156634156693_)
                                  (_rest156664_ _tl156635156695_))
                              (let ()
                                (declare (not safe))
                                (_K156625156654_ _rest156664_ _opt156662_))))))
                  (let () (declare (not safe)) (_else156623156647_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?156707_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?156707_))))
    (define gxc#gsc-link-options
      (lambda _g157889_
        (let ((_g157888_ (let () (declare (not safe)) (##length _g157889_))))
          (cond ((let () (declare (not safe)) (##fx= _g157888_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g157889_))
                ((let () (declare (not safe)) (##fx= _g157888_ 1))
                 (apply (lambda (_phi?156709_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?156709_)))
                        _g157889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g157889_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?156514_)
        (let _lp156516_ ((_rest156518_ (gxc#current-compile-gsc-options))
                         (_opts156519_ '()))
          (let* ((_rest156520156540_ _rest156518_)
                 (_else156524156548_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156514_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157890
                               (let ((__tmp157891 (reverse _opts156519_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp157891))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp157890))
                        (reverse _opts156519_)))))
            (let ((_K156534156587_
                   (lambda (_rest156584_ _opt156585_)
                     (let ((__tmp157892
                            (let ((__tmp157893
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts156519_))))
                              (declare (not safe))
                              (cons _opt156585_ __tmp157893))))
                       (declare (not safe))
                       (_lp156516_ _rest156584_ __tmp157892))))
                  (_K156529156568_
                   (lambda (_rest156566_)
                     (let ()
                       (declare (not safe))
                       (_lp156516_ _rest156566_ _opts156519_))))
                  (_K156526156554_
                   (lambda (_rest156552_)
                     (let ()
                       (declare (not safe))
                       (_lp156516_ _rest156552_ _opts156519_)))))
              (if (let () (declare (not safe)) (##pair? _rest156520156540_))
                  (let ((_tl156536156592_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156520156540_)))
                        (_hd156535156590_
                         (let ()
                           (declare (not safe))
                           (##car _rest156520156540_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156535156590_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156536156592_))
                            (let ((_tl156538156597_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl156536156592_)))
                                  (_hd156537156595_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl156536156592_))))
                              (let ((_opt156600_ _hd156537156595_)
                                    (_rest156602_ _tl156538156597_))
                                (let ()
                                  (declare (not safe))
                                  (_K156534156587_ _rest156602_ _opt156600_))))
                            (let ((_rest156560_ _tl156536156592_))
                              (declare (not safe))
                              (_K156526156554_ _rest156560_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156535156590_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156536156592_))
                                (let* ((_tl156533156576_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156536156592_)))
                                       (_rest156579_ _tl156533156576_))
                                  (declare (not safe))
                                  (_K156529156568_ _rest156579_))
                                (let ((_rest156560_ _tl156536156592_))
                                  (declare (not safe))
                                  (_K156526156554_ _rest156560_)))
                            (let ((_rest156560_ _tl156536156592_))
                              (declare (not safe))
                              (_K156526156554_ _rest156560_)))))
                  (let () (declare (not safe)) (_else156524156548_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?156608_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?156608_))))
    (define gxc#gsc-cc-options
      (lambda _g157895_
        (let ((_g157894_ (let () (declare (not safe)) (##length _g157895_))))
          (cond ((let () (declare (not safe)) (##fx= _g157894_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g157895_))
                ((let () (declare (not safe)) (##fx= _g157894_ 1))
                 (apply (lambda (_phi?156610_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?156610_)))
                        _g157895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g157895_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156509_)
        (let* ((_user-staticdir156511_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp157896
                (let ((__tmp157897
                       (string-append
                        '"-I "
                        _staticdir156509_
                        '" -I "
                        _user-staticdir156511_)))
                  (declare (not safe))
                  (cons __tmp157897 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp157896))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156421_ ((_rest156423_ (gxc#current-compile-gsc-options))
                         (_opts156424_ '()))
          (let* ((_rest156425156445_ _rest156423_)
                 (_else156429156453_ (lambda () _opts156424_)))
            (let ((_K156439156496_
                   (lambda (_rest156494_)
                     (let ()
                       (declare (not safe))
                       (_lp156421_ _rest156494_ _opts156424_))))
                  (_K156434156474_
                   (lambda (_rest156471_ _opt156472_)
                     (let ((__tmp157898
                            (append _opts156424_
                                    (let ((__tmp157899
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt156472_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp157899)))))
                       (declare (not safe))
                       (_lp156421_ _rest156471_ __tmp157898))))
                  (_K156431156459_
                   (lambda (_rest156457_)
                     (let ()
                       (declare (not safe))
                       (_lp156421_ _rest156457_ _opts156424_)))))
              (if (let () (declare (not safe)) (##pair? _rest156425156445_))
                  (let ((_tl156441156501_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156425156445_)))
                        (_hd156440156499_
                         (let ()
                           (declare (not safe))
                           (##car _rest156425156445_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156440156499_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156441156501_))
                            (let* ((_tl156443156504_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156441156501_)))
                                   (_rest156507_ _tl156443156504_))
                              (declare (not safe))
                              (_K156439156496_ _rest156507_))
                            (let ((_rest156465_ _tl156441156501_))
                              (declare (not safe))
                              (_K156431156459_ _rest156465_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156440156499_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156441156501_))
                                (let ((_tl156438156484_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156441156501_)))
                                      (_hd156437156482_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156441156501_))))
                                  (let ((_opt156487_ _hd156437156482_)
                                        (_rest156489_ _tl156438156484_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156434156474_
                                       _rest156489_
                                       _opt156487_))))
                                (let ((_rest156465_ _tl156441156501_))
                                  (declare (not safe))
                                  (_K156431156459_ _rest156465_)))
                            (let ((_rest156465_ _tl156441156501_))
                              (declare (not safe))
                              (_K156431156459_ _rest156465_)))))
                  (let () (declare (not safe)) (_else156429156453_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156418_)
        (let ((__tmp157900
               (let () (declare (not safe)) (string-empty? _str156418_))))
          (declare (not safe))
          (not __tmp157900))))
    (define gxc#gsc-compile-file
      (lambda (_path156386_ _phi?156387_)
        (letrec ((_gsc-link-path156389_
                  (lambda (_base-path156410_)
                    (let _lp156412_ ((_n156414_ '1))
                      (let ((_path156416_
                             (string-append
                              _base-path156410_
                              '".o"
                              (number->string _n156414_))))
                        (if (file-exists? _path156416_)
                            (let ((__tmp157901
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156414_ '1))))
                              (declare (not safe))
                              (_lp156412_ __tmp157901))
                            _path156416_))))))
          (let* ((_base-path156391_ (path-strip-extension _path156386_))
                 (_path-c156393_ (string-append _base-path156391_ '".c"))
                 (_path-o156395_ (string-append _base-path156391_ '".o"))
                 (_link-path156397_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156389_ _base-path156391_)))
                 (_link-path-c156399_ (string-append _link-path156397_ '".c"))
                 (_link-path-o156401_ (string-append _link-path156397_ '".o"))
                 (_gsc-link-opts156403_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156387_)))
                 (_gsc-cc-opts156405_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156387_)))
                 (_gcc-ld-opts156407_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp157908 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157902
                   (let ((__tmp157903
                          (let ((__tmp157904
                                 (let ((__tmp157905
                                        (let ((__tmp157906
                                               (let ((__tmp157907
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156386_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp157907
                                                         _gsc-link-opts156403_))))
                                          (declare (not safe))
                                          (cons _link-path-c156399_
                                                __tmp157906))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp157905))))
                            (declare (not safe))
                            (cons '"-flat" __tmp157904))))
                     (declare (not safe))
                     (cons '"-link" __tmp157903))))
              (declare (not safe))
              (gxc#invoke __tmp157908 __tmp157902 'stdout-redirection: '#t))
            (let ((__tmp157915 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157909
                   (let ((__tmp157910
                          (let ((__tmp157911
                                 (let ((__tmp157912
                                        (let ((__tmp157913
                                               (let ((__tmp157914
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156399_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156393_
                                                       __tmp157914))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp157913
                                                  _gsc-cc-opts156405_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp157912))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp157911))))
                     (declare (not safe))
                     (cons '"-obj" __tmp157910))))
              (declare (not safe))
              (gxc#invoke __tmp157915 __tmp157909 'stdout-redirection: '#t))
            (let ((__tmp157921 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp157916
                   (let ((__tmp157917
                          (let ((__tmp157918
                                 (let ((__tmp157919
                                        (let ((__tmp157920
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156401_
                                                       _gcc-ld-opts156407_))))
                                          (declare (not safe))
                                          (cons _path-o156395_ __tmp157920))))
                                   (declare (not safe))
                                   (cons _link-path156397_ __tmp157919))))
                            (declare (not safe))
                            (cons '"-o" __tmp157918))))
                     (declare (not safe))
                     (cons '"-shared" __tmp157917))))
              (declare (not safe))
              (gxc#invoke __tmp157921 __tmp157916))
            (for-each
             delete-file
             (let ((__tmp157922
                    (let ((__tmp157923
                           (let ((__tmp157924
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156401_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156399_ __tmp157924))))
                      (declare (not safe))
                      (cons _path-o156395_ __tmp157923))))
               (declare (not safe))
               (cons _path-c156393_ __tmp157922)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156357_ _n156358_ _ext156359_)
        (letrec ((_module-relative-path156361_
                  (lambda (_ctx156384_)
                    (path-strip-directory
                     (let ((__tmp157925
                            (##structure-ref
                             _ctx156384_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp157925)))))
                 (_module-source-directory156362_
                  (lambda (_ctx156380_)
                    (path-directory
                     (let ((_mpath156382_
                            (##structure-ref
                             _ctx156380_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156382_))
                           _mpath156382_
                           (let ()
                             (declare (not safe))
                             (last _mpath156382_)))))))
                 (_section-string156363_
                  (lambda (_n156378_)
                    (if (let () (declare (not safe)) (number? _n156378_))
                        (number->string _n156378_)
                        (if (let () (declare (not safe)) (symbol? _n156378_))
                            (symbol->string _n156378_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156378_))
                                _n156378_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156378_)))))))
                 (_file-name156364_
                  (lambda (_path156376_)
                    (if _n156358_
                        (string-append
                         _path156376_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156363_ _n156358_))
                         _ext156359_)
                        (string-append _path156376_ _ext156359_))))
                 (_file-path156365_
                  (lambda ()
                    (let ((_$e156371_ (gxc#current-compile-output-dir)))
                      (if _$e156371_
                          ((lambda (_outdir156374_)
                             (path-expand
                              (let ((__tmp157927
                                     (let ((__tmp157928
                                            (##structure-ref
                                             _ctx156357_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp157928))))
                                (declare (not safe))
                                (_file-name156364_ __tmp157927))
                              _outdir156374_))
                           _$e156371_)
                          (path-expand
                           (let ((__tmp157926
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156361_
                                     _ctx156357_))))
                             (declare (not safe))
                             (_file-name156364_ __tmp157926))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156362_
                              _ctx156357_))))))))
          (let ((_path156367_
                 (let () (declare (not safe)) (_file-path156365_))))
            (let ((__tmp157929
                   (lambda ()
                     (let ((__tmp157930 (path-directory _path156367_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157930)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157929))
            _path156367_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156339_)
        (letrec ((_file-name156341_
                  (lambda (_id156355_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156355_))
                     '".scm")))
                 (_file-path156342_
                  (lambda ()
                    (let* ((_file156348_
                            (let ((__tmp157931
                                   (##structure-ref
                                    _ctx156339_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156341_ __tmp157931)))
                           (_$e156350_ (gxc#current-compile-output-dir)))
                      (if _$e156350_
                          ((lambda (_outdir156353_)
                             (path-expand
                              _file156348_
                              (path-expand '"static" _outdir156353_)))
                           _$e156350_)
                          (path-expand _file156348_ '"static"))))))
          (let ((_path156344_
                 (let () (declare (not safe)) (_file-path156342_))))
            (let ((__tmp157932
                   (lambda ()
                     (let ((__tmp157933 (path-directory _path156344_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157933)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157932))
            _path156344_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156333_ _opts156334_)
        (let ((_$e156336_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156334_))))
          (if _$e156336_
              (values _$e156336_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156333_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156326_)
        (if (let () (declare (not safe)) (string? _idstr156326_))
            (let* ((_str156328_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156326_)))
                   (_strs156330_
                    (let ()
                      (declare (not safe))
                      (string-split _str156328_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156330_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156326_))
                (let ((__tmp157934 (symbol->string _idstr156326_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp157934))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156326_))))))
    (define gxc#invoke__%
      (lambda (_g157935_
               _stdout-redirection156287156291_
               _stderr-redirection156288156293_
               _program156295_
               _args156296_)
        (let* ((_stdout-redirection156298_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection156287156291_ absent-value))
                    '#f
                    _stdout-redirection156287156291_))
               (_stderr-redirection156300_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156288156293_ absent-value))
                    '#f
                    _stderr-redirection156288156293_)))
          (let ((__tmp157936
                 (let ()
                   (declare (not safe))
                   (cons _program156295_ _args156296_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp157936))
          (let* ((_proc156302_
                  (open-process
                   (let ((__tmp157937
                          (let ((__tmp157938
                                 (let ((__tmp157939
                                        (let ((__tmp157940
                                               (let ((__tmp157941
                                                      (let ((__tmp157942
                                                             (let ((__tmp157943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156300_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp157943))))
                (declare (not safe))
                (cons _stdout-redirection156298_ __tmp157942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp157941))))
                                          (declare (not safe))
                                          (cons _args156296_ __tmp157940))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp157939))))
                            (declare (not safe))
                            (cons _program156295_ __tmp157938))))
                     (declare (not safe))
                     (cons 'path: __tmp157937))))
                 (_output156307_
                  (if (or _stdout-redirection156298_
                          _stderr-redirection156300_)
                      (read-line _proc156302_ '#f)
                      '#f)))
            (let ((_status156310_ (process-status _proc156302_)))
              (close-port _proc156302_)
              (if (let () (declare (not safe)) (zero? _status156310_))
                  '#!void
                  (begin
                    (display _output156307_)
                    (let ((__tmp157944
                           (let ()
                             (declare (not safe))
                             (cons _program156295_ _args156296_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp157944
                       _status156310_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156286156315_ . _args156317_)
        (apply gxc#invoke__%
               _keys156286156315_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156286156315_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156286156315_
                  'stderr-redirection:
                  absent-value))
               _args156317_)))
    (define gxc#invoke
      (lambda _args156289156323_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156289156323_)))
    (define gxc#join!
      (lambda (_thread156280_)
        (let ((__tmp157946
               (lambda (_exn156282_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156282_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156282_)))
                     (raise _exn156282_))))
              (__tmp157945 (lambda () (thread-join! _thread156280_))))
          (declare (not safe))
          (with-catch __tmp157946 __tmp157945))))))
